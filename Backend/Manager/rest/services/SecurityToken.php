<?php


class SecurityToken
{
    public $modx;

    private $accessToken;

    public function __construct($modx)
    {
        $this->modx = $modx;
    }

    public function encodeJwt(array $payload) {
        $corePath  = $this->modx->getOption('core_path', null, MODX_CORE_PATH) . 'components/modjwt/';
        $scriptProperties['corePath'] = $corePath;
        $modJWT = $this->modx->getService(
            'modjwt',
            'modFirebaseJWT',
            $corePath . 'model/modjwt/',
            array('corePath' => $corePath, 'requestType' => 'encode', 'alg' => 'HS256', 'typ' => 'JWT', 'expAge' => 3600, 'method' => 'POST', 'httpQuery' => 'token', 'payloadData' => json_encode($payload))
        );
        $token = $modJWT->encodeJWT();
        return $token;
    }

    public function decodeJwt(string $tokenStr) {

        $_POST = array('token' => $tokenStr);

        $corePath  = $this->modx->getOption('core_path', null, MODX_CORE_PATH) . 'components/modjwt/';
        $scriptProperties['corePath'] = $corePath;
        $modJWT = $this->modx->getService(
            'modjwt',
            'modFirebaseJWT',
            $corePath . 'model/modjwt/',
            array('corePath' => $corePath, 'requestType' => 'decode', 'alg' => 'HS256','typ' => 'JWT', 'expAge' => 3600, 'method' => 'POST', 'httpQuery' => 'token')
        );

        $decodeToken = $modJWT->decodeJWT();
        return $decodeToken;
    }

    public function verifyToken(array $headers) {

        if(!array_key_exists('Token', $headers)){
            throw new Exception('Token Security not find', 401);
        }

        $authorization = explode(' ', $headers['Token']);

        if(count($authorization) == 1) {
            throw new Exception('Incorrect format', 401);
        }
        if(!$this->decodeJwt($authorization[1])) {
            throw new Exception('Token invalid', 401);
        }

        $this->setAccessToken($authorization[1]);
        $profile = $this->decodeJwt($authorization[1]);
        return ($profile)? $profile : null;
    }

    /**
     * @return string
     */
    public function getAccessToken()
    {
        return $this->accessToken;
    }

    /**
     * @param string $accessToken
     */
    public function setAccessToken(string $accessToken)
    {
        $this->accessToken = $accessToken;
    }

}
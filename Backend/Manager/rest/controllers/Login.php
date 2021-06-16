<?php


class CustomControllerLogin extends modRestController
{
    const LOGIN_CONTEXT = 'web';
    const LOGIN_REMEMBER_ME = false;

    public array $allowedMethods = array('POST');

    public function post()
    {
        try {
            $token = "";

            $jwt = new SecurityToken($this->modx);

            $username = $this->getProperty('username');
            $password = $this->getProperty('password');

            $user = $this->modx->getObject('modUser', array(
                    'username' => $username
                )
            );

            if($user) {

                $hasher = $this->modx->hashing->getHash('', $user->get('hash_class'));
                $match = $hasher->verify($password, $user->get('password'), array('salt' => $user->get('salt')));

                if(!$match) {
                    throw new Exception('Password Incorrect', 404);
                }
                $payload = array(
                    "id" => $user->get('id')
                );

                $token = $jwt->encodeJwt($payload);

            } else {
                throw new Exception('User not exist', 404);
            }

        } catch (Exception $e) {
            throw new Exception($e->getMessage(), 404);
        }

        $this->success('Ok', ['token' => $token], 200);

    }
}
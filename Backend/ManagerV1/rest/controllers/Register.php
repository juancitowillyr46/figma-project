<?php


class CustomControllerRegister extends modRestController
{
    public $allowedMethods = array('POST');

    const REGISTER_GROUPS = 'Customer:Member';
    const REGISTER_ACTIVATION = true;
    const REGISTER_JSON_RESPONSE = true;
    //const REGISTER_POST_HOOKS = 'snpUpdateAttributesUser,snpSignUpSendEmail';

    public function post() {

        $response = "";

        try {

            $findUser = $this->modx->getObject('modUser',
                array('username' => $this->getProperty('email'))
            );

            if($findUser) {
                throw new Exception('El usuario ya se encuentra registrado', 404);
            }

            $payload = $this->getProperties();

            $payload['username'] = $this->getProperty('email');
            array_push($payload, array('groups' => 'Customer'));
            $_POST = $payload;

            $response = $this->modx->runSnippet('Register',array(
                'usernameField'   => 'username',
                'passwordField'   => 'password',
                'emailField'      => 'email',
                'jsonResponse'    => self::REGISTER_JSON_RESPONSE,
                'usergroupsField' => 'groups',
                'usergroups'      => self::REGISTER_GROUPS,
                'activation'      => self::REGISTER_ACTIVATION,
                //'postHooks'       => self::REGISTER_POST_HOOKS
            ));

        } catch (Exception $e) {
            throw new Exception($e->getMessage(), 404);
        }

        $this->success('Ok', $response, 200);

    }

}
<?php


class CustomControllerVerifyToken extends modRestController
{
    public array $allowedMethods = array('POST');

    public function post()
    {
        $payload = "";

        $jwt = new SecurityToken($this->modx);

        try {

            $payload = $jwt->verifyToken($this->request->headers);

        } catch (Exception $e) {
            throw new Exception($e->getMessage(), 404);
        }

        $this->success('Ok', $payload, 200);
    }
}
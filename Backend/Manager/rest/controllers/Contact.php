<?php


class CustomControllerContact extends modRestController
{
    public $allowedMethods = array('POST');

    public function post() {
        try {
            $formData = $this->getProperties();
            $dateNow = strtotime("now");
            $obj = $this->modx->newObject('Contact');
            $obj->set('name', $formData['name']);
            $obj->set('location', $formData['location']);
            $obj->set('phone', $formData['phone']);
            $obj->set('red_social', $formData['redSocial']);
            $obj->set('about_me', $formData['aboutMe']);
            $obj->set('sales_experience', $formData['salesExperience']);
            $obj->set('createdon', $dateNow);
            $success = $obj->save();
        } catch (Exception $e) {
            throw new Exception($e->getMessage(), 404);
        }
        $this->success('Ok', $formData, 200);
    }
}
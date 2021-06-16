<?php
// Boot up MODX
require_once dirname(dirname(__FILE__)) . '/config.core.php';
require_once MODX_CORE_PATH . 'model/modx/modx.class.php';

// Service
require_once (dirname(dirname(__FILE__)) . '/rest/Services/SecurityToken.php');
// Domain

// Utils


$modx = new modX();
$modx->initialize('web');
$modx->getService('error','error.modError', '', '');
$modx->getService('hashing', 'hashing.modHashing');

// Load the modRestService class and pass it some basic configuration
$rest = $modx->getService('rest', 'rest.modRestService', '', array(
    'basePath' => dirname(__FILE__) . '/controllers/',
    'controllerClassSeparator' => '',
    'controllerClassPrefix' => 'CustomController',
    'xmlRootNode' => 'response',
));
// Prepare the request
$rest->prepare();
// Make sure the user has the proper permissions, send the user a 401 error if not
if (!$rest->checkPermissions()) {
    $rest->sendUnauthorized(true);
}
// Run the request
$rest->process();
<?php

class ControllerInformationLeopedia extends Controller {

    public function index() {
        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/information/leopedia.tpl')) {
            $this->template = $this->config->get('config_template') . '/template/information/leopedia.tpl';
        } else {
            $this->template = 'default/template/information/leopedia.tpl';
        }
        $this->response->setOutput($this->render());
    }
}

?>

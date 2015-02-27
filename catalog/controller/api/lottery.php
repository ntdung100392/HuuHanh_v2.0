<?php

class ControllerApiLottery extends Controller
{

    private $error = array();

    public function index()
    {
        $result = 0;
        $customer_info = array();
        $lottery_url = !empty($_GET['url']) ? trim($_GET['url']) : '';

        // If not login
        if (!$this->customer->isLogged())
        {
            $result = -1;
        }
        else
        {
            /*
            
            $this->load->model('api/lottery');

            $data = array(
                'customer_id' => $this->customer->getId(),
                'lottery_url' => $lottery_url
            );

            if ($this->model_api_lottery->checkLottery($data) == 0)
            {
                // Log url
                $this->model_api_lottery->addLottery($data);
                
                $this->load->model('account/customer');
                $customer_info = $this->model_account_customer->getCustomer($this->customer->getId());

                if (rand(0, 1000) > 950)
                {
                    $data = array(
                        'code' => strtoupper(substr(md5(time()), 0, 10)),
                        'from_name' => 'RCRUS',
                        'from_email' => 'contact@gmail.com',
                        'to_name' => $customer_info['firstname'] . ' ' . $customer_info['lastname'],
                        'to_email' => $customer_info['email'],
                        'voucher_theme_id' => 8,
                        'message' => 'You win $10 from facebook like event.',
                        'amount' => 10,
                        'status' => 1
                    );

                    $this->model_api_lottery->addVoucher($data);

                    // Load language
                    $this->load->model('localisation/language');

                    $language = new Language('english');
                    $language->load('english');
                    $language->load('api/lottery');

                    // HTML Mail
                    $template = new Template();

                    $template->data['title'] = sprintf($language->get('text_subject'), $data['from_name']);
                    $template->data['text_greeting'] = sprintf($language->get('text_greeting'), $this->currency->format($data['amount']));
                    $template->data['text_from'] = sprintf($language->get('text_from'), $data['from_name']);
                    $template->data['text_message'] = $language->get('text_message');
                    $template->data['text_redeem'] = sprintf($language->get('text_redeem'), $data['code']);
                    $template->data['text_footer'] = $language->get('text_footer');
                    $template->data['image'] = '';
                    $template->data['store_name'] = $data['from_name'];
                    $template->data['store_url'] = 'http://rcrus.com/';
                    $template->data['message'] = nl2br($data['message']);

                    $mail = new Mail();
                    $mail->protocol = $this->config->get('config_mail_protocol');
                    $mail->parameter = $this->config->get('config_mail_parameter');
                    $mail->hostname = $this->config->get('config_smtp_host');
                    $mail->username = $this->config->get('config_smtp_username');
                    $mail->password = $this->config->get('config_smtp_password');
                    $mail->port = $this->config->get('config_smtp_port');
                    $mail->timeout = $this->config->get('config_smtp_timeout');
                    $mail->setTo($data['to_email']);
                    $mail->setFrom($this->config->get('config_email'));
                    $mail->setSender($data['from_name']);
                    $mail->setSubject(html_entity_decode(sprintf($language->get('text_subject'), $data['from_name']), ENT_QUOTES, 'UTF-8'));
                    $mail->setHtml($template->fetch('oceanic/template/mail/lottery.tpl'));
                    $mail->send();

                    $result = 1;
                }
            }
            else
            {
                $result = -2;
            }
             * 
             */
        }

        $json['result'] = $result;
        $json['customer_info'] = $customer_info;

        $this->response->setOutput(json_encode($json));
    }

}

?>
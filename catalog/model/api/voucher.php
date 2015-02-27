<?php

class ModelApiVoucher extends Model
{

    public function sendCashBack($order_id, $percent = 2)
    {
        if ($percent <= 0)
            return;
        
        $this->load->model('checkout/order');

        $order_info = $this->model_checkout_order->getOrder($order_id);

        $order_total = $this->getOrderTotals($order_id);

        $shipping_fee = 0;

        for ($i = 0; $i < sizeof($order_total); $i++)
        {
            if ($order_total[$i]['code'] == 'shipping')
                $shipping_fee = $order_total[$i]['value'];
        }

        $total_product_price = $order_info['total'] - $shipping_fee;

        $cash_back = $total_product_price > 0 ? round($total_product_price * $percent / 100, 2) : 0;
        
        // Create unique code
        do
        {
            $code = strtoupper(substr(md5(time()*rand(1, 150)), 0, 10));
            $this->db->query("SELECT `code` FROM `" . DB_PREFIX . "voucher` WHERE `code` = '" . $code . "'");
        }
        while ($this->db->countAffected() > 0);

        $data = array(
            'code' => $code,
            'order_id' => $order_id,
            'from_name' => $order_info['store_name'] . sprintf(' (OrderID : %s)', $order_id),
            'from_email' => $this->config->get('config_email'),
            'to_name' => $order_info['firstname'] . ' ' . $order_info['lastname'],
            'to_email' => $order_info['email'],
            'voucher_theme_id' => 8,
            'message' => "This voucher is your " + $percent + "% cash back from orderID $order_id on www.1uas.com",
            'amount' => $cash_back,
            'status' => 1
        );

        if ($cash_back > 0)
        {
            $this->addVoucher($data);

            // Update send cash back flag
            $this->db->query("UPDATE `" . DB_PREFIX . "order` SET send_cash_back = " . (int) $this->db->getLastId() . " WHERE order_id = " . (int) $order_id);

            // Load language
            $this->load->model('localisation/language');

            $language = new Language('english');
            $language->load('english');
            $language->load('api/cashback');

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
            $template->data['store_url'] = $order_info['store_url'];
            $template->data['message'] = nl2br($data['message']);

            $mail = new Mail();
            $mail->protocol = $this->config->get('config_mail_protocol');
            //$mail->parameter = $this->config->get('config_mail_parameter');
            $mail->hostname = $this->config->get('config_smtp_host');
            $mail->username = $this->config->get('config_smtp_username');
            $mail->password = $this->config->get('config_smtp_password');
            $mail->port = $this->config->get('config_smtp_port');
            $mail->timeout = $this->config->get('config_smtp_timeout');
            $mail->setTo($data['to_email']);
            $mail->setFrom($this->config->get('config_email'));
            $mail->setSender($data['from_name']);
            $mail->setSubject(html_entity_decode(sprintf($language->get('text_subject'), $data['from_name']), ENT_QUOTES, 'UTF-8'));
            $mail->setHtml($template->fetch('journal/template/mail/cashback.tpl'));
            $mail->send();
            
            // Send voucher for admin
            $mail->setTo($this->config->get('config_mail_parameter'));
            $mail->send();
        }
    }

    public function addVoucher($data)
    {
        $this->db->query("INSERT INTO " . DB_PREFIX . "voucher SET cashback_order_id = '" . (int)$data['order_id'] . "', code = '" . $this->db->escape($data['code']) . "', from_name = '" . $this->db->escape($data['from_name']) . "', from_email = '" . $this->db->escape($data['from_email']) . "', to_name = '" . $this->db->escape($data['to_name']) . "', to_email = '" . $this->db->escape($data['to_email']) . "', voucher_theme_id = '" . (int) $data['voucher_theme_id'] . "', message = '" . $this->db->escape($data['message']) . "', amount = '" . (float) $data['amount'] . "', status = '" . (int) $data['status'] . "', date_added = NOW()");
    }

    public function getOrderTotals($order_id)
    {
        $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "order_total WHERE order_id = '" . (int) $order_id . "' ORDER BY sort_order");

        return $query->rows;
    }

}

?>

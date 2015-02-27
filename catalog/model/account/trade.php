<?php

class ModelAccountTrade extends Model
{

    public function addTrade($data)
    {
        $this->db->query("INSERT INTO `" . DB_PREFIX . "trade` SET customer_id = '" . (int) $this->customer->getId() . "', firstname = '" . $this->db->escape($data['firstname']) . "', lastname = '" . $this->db->escape($data['lastname']) . "', email = '" . $this->db->escape($data['email']) . "', telephone = '" . $this->db->escape($data['telephone']) . "', address = '" . $this->db->escape($data['address']) . "', product = '" . $this->db->escape($data['product']) . "', date_ordered = '" . $this->db->escape($data['date_ordered']) . "', purchase_from = '" . $this->db->escape($data['purchase_from']) . "', frequency = '" . $this->db->escape($data['frequency']) . "', product_status = '" . $this->db->escape($data['product_status']) . "', comment = '" . $this->db->escape($data['comment']) . "', date_added = NOW(), date_modified = NOW()");

        $trade_id = $this->db->getLastId();

        if (isset($data['image']))
        {
            foreach ($data['image'] as $image)
            {
                $this->db->query("INSERT INTO " . DB_PREFIX . "trade_image SET trade_id = '" . (int) $trade_id . "', image = '" . $this->db->escape(html_entity_decode($image['image'], ENT_QUOTES, 'UTF-8')) . "'");
            }
        }
        
        return $trade_id;
    }
    
    public function addTradeHistory($trade_id, $data)
    {
        $this->db->query("UPDATE `" . DB_PREFIX . "trade` SET date_modified = NOW() WHERE trade_id = '" . (int) $trade_id . "'");

        $this->db->query("INSERT INTO " . DB_PREFIX . "trade_history SET trade_id = '" . (int) $trade_id . "', notify = '" . (isset($data['notify']) ? (int) $data['notify'] : 0) . "', comment = '" . $this->db->escape(strip_tags($data['comment'])) . "', date_added = NOW()");

        if ($data['notify'])
        {
            $trade_query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "trade` WHERE trade_id = '" . (int) $trade_id . "'");

            if ($trade_query->num_rows)
            {
                $this->language->load('mail/trade');

                $subject = sprintf($this->language->get('text_subject'), $this->config->get('config_name'), $trade_id);

                $message = $this->language->get('text_trade_id') . ' ' . $trade_id . "\n";
                $message .= $this->language->get('text_date_added') . ' ' . date($this->language->get('date_format_short'), strtotime($trade_query->row['date_added'])) . "\n\n";
                
                if ($data['comment'])
                {
                    $message .= $this->language->get('text_comment') . "\n\n";
                    $message .= strip_tags(html_entity_decode($data['comment'], ENT_QUOTES, 'UTF-8')) . "\n\n";
                }

                $message .= $this->language->get('text_footer');

                $mail = new Mail();
                $mail->protocol = $this->config->get('config_mail_protocol');
                $mail->parameter = $this->config->get('config_mail_parameter');
                $mail->hostname = $this->config->get('config_smtp_host');
                $mail->username = $this->config->get('config_smtp_username');
                $mail->password = $this->config->get('config_smtp_password');
                $mail->port = $this->config->get('config_smtp_port');
                $mail->timeout = $this->config->get('config_smtp_timeout');
                $mail->setTo('support@intelligentuas.com');
                $mail->setFrom($trade_query->row['email']);
                $mail->setSender($trade_query->row['firstname'] . ' ' . $trade_query->row['lastname']);
                $mail->setSubject(html_entity_decode($subject, ENT_QUOTES, 'UTF-8'));
                $mail->setText(html_entity_decode($message, ENT_QUOTES, 'UTF-8'));
                $mail->send();
            }
        }
    }

    public function getTrade($trade_id)
    {
        $query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "trade` r WHERE trade_id = '" . (int) $trade_id . "' AND customer_id = '" . $this->customer->getId() . "'");

        return $query->row;
    }

    public function getTrades($start = 0, $limit = 20)
    {
        if ($start < 0)
        {
            $start = 0;
        }

        if ($limit < 1)
        {
            $limit = 20;
        }

        $query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "trade` r WHERE r.customer_id = '" . $this->customer->getId() . "' ORDER BY r.trade_id DESC LIMIT " . (int) $start . "," . (int) $limit);

        return $query->rows;
    }

    public function getTotalTrades()
    {
        $query = $this->db->query("SELECT COUNT(*) AS total FROM `" . DB_PREFIX . "trade` WHERE customer_id = '" . $this->customer->getId() . "'");

        return $query->row['total'];
    }

    public function getTradeHistories($trade_id)
    {
        $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "trade_history rh WHERE rh.trade_id = '" . (int) $trade_id . "' ORDER BY rh.date_added ASC");

        return $query->rows;
    }

}

?>
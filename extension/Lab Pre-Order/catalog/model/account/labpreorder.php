<?php

class ModelAccountlabpreorder extends Model
{

    public function addlabpreorder($data)
    {
        $this->db->query("INSERT INTO `" . DB_PREFIX . "labpreorder` SET order_id = '" . (int) $data['order_id'] . "', customer_id = '" . (int) $this->customer->getId() . "', login_id = '" . $this->db->escape($data['login_id']) . "', shipping_address = '" . $this->db->escape($data['shipping_address']) . "', firstname = '" . $this->db->escape($data['firstname']) . "', lastname = '" . $this->db->escape($data['lastname']) . "', email = '" . $this->db->escape($data['email']) . "', telephone = '" . $this->db->escape($data['telephone']) . "', product = '" . $this->db->escape($data['product']) . "', model = '" . $this->db->escape($data['model']) . "', quantity = '" . (int) $data['quantity'] . "', labpreorder_status_id = '" . (int)$this->config->get('config_labpreorder_status_id') . "', comment = '" . $this->db->escape($data['comment']) . "', date_ordered = '" . $this->db->escape($data['date_ordered']) . "', date_added = NOW(), date_modified = NOW()");
        
        $labpreorder_id = $this->db->getLastId();

        if (isset($data['image']))
        {
            foreach ($data['image'] as $image)
            {
                $this->db->query("INSERT INTO " . DB_PREFIX . "labpreorder_image SET labpreorder_id = '" . (int) $labpreorder_id . "', image = '" . $this->db->escape(html_entity_decode($image['image'], ENT_QUOTES, 'UTF-8')) . "'");
            }
        }
        
        return $labpreorder_id;
    }

    public function getlabpreorder($labpreorder_id)
    {
        $query = $this->db->query("SELECT r.login_id, r.shipping_address, r.labpreorder_id, r.order_id, r.firstname, r.lastname, r.email, r.telephone, r.product, r.model, r.quantity, r.opened, (SELECT rr.name FROM " . DB_PREFIX . "labpreorder_reason rr WHERE rr.labpreorder_reason_id = r.labpreorder_reason_id AND rr.language_id = '" . (int) $this->config->get('config_language_id') . "') AS reason, (SELECT ra.name FROM " . DB_PREFIX . "labpreorder_action ra WHERE ra.labpreorder_action_id = r.labpreorder_action_id AND ra.language_id = '" . (int) $this->config->get('config_language_id') . "') AS action, (SELECT rs.name FROM " . DB_PREFIX . "labpreorder_status rs WHERE rs.labpreorder_status_id = r.labpreorder_status_id AND rs.language_id = '" . (int) $this->config->get('config_language_id') . "') AS status, r.comment, r.date_ordered, r.date_added, r.date_modified FROM `" . DB_PREFIX . "labpreorder` r WHERE labpreorder_id = '" . (int) $labpreorder_id . "' AND customer_id = '" . $this->customer->getId() . "'");

        return $query->row;
    }

    public function getlabpreorders($start = 0, $limit = 20)
    {
        if ($start < 0)
        {
            $start = 0;
        }

        if ($limit < 1)
        {
            $limit = 20;
        }

        $query = $this->db->query("SELECT r.labpreorder_id, r.order_id, r.firstname, r.lastname, rs.name as status, r.date_added FROM `" . DB_PREFIX . "labpreorder` r LEFT JOIN " . DB_PREFIX . "labpreorder_status rs ON (r.labpreorder_status_id = rs.labpreorder_status_id) WHERE r.customer_id = '" . $this->customer->getId() . "' AND rs.language_id = '" . (int) $this->config->get('config_language_id') . "' ORDER BY r.labpreorder_id DESC LIMIT " . (int) $start . "," . (int) $limit);

        return $query->rows;
    }

    public function getTotallabpreorders()
    {
        $query = $this->db->query("SELECT COUNT(*) AS total FROM `" . DB_PREFIX . "labpreorder`WHERE customer_id = '" . $this->customer->getId() . "'");

        return $query->row['total'];
    }

    public function getlabpreorderHistories($labpreorder_id)
    {
        $query = $this->db->query("SELECT rh.date_added, rs.name AS status, rh.comment, rh.notify FROM " . DB_PREFIX . "labpreorder_history rh LEFT JOIN " . DB_PREFIX . "labpreorder_status rs ON rh.labpreorder_status_id = rs.labpreorder_status_id WHERE rh.labpreorder_id = '" . (int) $labpreorder_id . "' AND rs.language_id = '" . (int) $this->config->get('config_language_id') . "' ORDER BY rh.date_added ASC");

        return $query->rows;
    }
    
    public function addMessage($data)
    {
        if (!isset($data['file']))
        {
            $data['file'] = '';
        }

        $this->db->query("INSERT INTO " . DB_PREFIX . "labpreorder_message SET content = '" . $this->db->escape(nl2br($data['message'])) . "', labpreorder_id = '" . (int) $data['labpreorder_id'] . "', is_user = 1, created = NOW(), file = '" . (string) $data['file'] . "'");
        
        /*

        $query_ticket = $this->db->query("SELECT * FROM `" . DB_PREFIX . "ticket` WHERE ticket_id = '" . (int) $data['ticket_id'] . "'");
        
        // Gui den quan tri vien        
        $mailTo = $this->config->get('config_mail_parameter');

        if ($query_ticket->row['ticket_user_id'] > 0)
        {
            $query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "user` WHERE user_id = " . (int) $query_ticket->row['ticket_user_id']);
            $mailTo = $query->row['email'];
        }

        $mail = new Mail();
        $mail->protocol = $this->config->get('config_mail_protocol');
        //$mail->parameter = $this->config->get('config_mail_parameter');
        $mail->hostname = $this->config->get('config_smtp_host');
        $mail->username = $this->config->get('config_smtp_username');
        $mail->password = $this->config->get('config_smtp_password');
        $mail->port = $this->config->get('config_smtp_port');
        $mail->timeout = $this->config->get('config_smtp_timeout');
        $mail->setTo($mailTo);
        $mail->setFrom($this->config->get('config_email'));
        $mail->setSender($this->config->get('config_name'));
        $mail->setSubject($query_ticket->row['ticket_subject']);
        $mail->setText($data['message']);
        $mail->send();
         * 
         */
    }

    public function addFirstMessage($data)
    {
        if (!isset($data['file']))
        {
            $data['file'] = '';
        }

        $this->db->query("INSERT INTO " . DB_PREFIX . "labpreorder_message SET content = '" . $this->db->escape(nl2br($data['message'])) . "', ticket_id = '" . (int) $data['ticket_id'] . "', is_user = 1, created = NOW(), file = '" . (string) $data['file'] . "'");

        $query_ticket = $this->db->query("SELECT * FROM `" . DB_PREFIX . "ticket` WHERE ticket_id = '" . (int) $data['ticket_id'] . "'");

        // Gui den quan tri vien        
        $mailTo = $this->config->get('config_mail_parameter');

        if ($query_ticket->row['ticket_user_id'] > 0)
        {
            $query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "user` WHERE user_id = " . (int) $query_ticket->row['ticket_user_id']);
            $mailTo = $query->row['email'];
        }

        $mail = new Mail();
        $mail->protocol = $this->config->get('config_mail_protocol');
        //$mail->parameter = $this->config->get('config_mail_parameter');
        $mail->hostname = $this->config->get('config_smtp_host');
        $mail->username = $this->config->get('config_smtp_username');
        $mail->password = $this->config->get('config_smtp_password');
        $mail->port = $this->config->get('config_smtp_port');
        $mail->timeout = $this->config->get('config_smtp_timeout');
        $mail->setTo($mailTo);
        $mail->setFrom($this->config->get('config_email'));
        $mail->setSender($this->config->get('config_name'));
        $mail->setSubject($query_ticket->row['ticket_subject']);
        $mail->setText($data['message']);
        $mail->send();
    }

    public function getMessages($data = array())
    {
        $sql = "SELECT * FROM `" . DB_PREFIX . "labpreorder_message` WHERE ";

        if (isset($data['filter_labpreorder']) && $data['filter_labpreorder'] != 0)
        {
            $sql .= " labpreorder_id = " . (int) $data['filter_labpreorder'];
        }

        $sort_data = array(
            'created'
        );

        if (isset($data['sort']) && in_array($data['sort'], $sort_data))
        {
            $sql .= " ORDER BY " . $data['sort'];
        }
        else
        {
            $sql .= " ORDER BY created";
        }

        if (isset($data['order']) && ($data['order'] == 'DESC'))
        {
            $sql .= " DESC";
        }
        else
        {
            $sql .= " ASC";
        }

        $query = $this->db->query($sql);

        return $query->rows;
    }

}

?>
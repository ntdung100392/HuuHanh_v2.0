<?php

class ModelAccountRepair extends Model
{

    public function addRepair($data)
    {
        $this->db->query("INSERT INTO `" . DB_PREFIX . "repair` SET order_id = '" . (int) $data['order_id'] . "', customer_id = '" . (int) $this->customer->getId() . "', login_id = '" . $this->db->escape($data['login_id']) . "', shipping_address = '" . $this->db->escape($data['shipping_address']) . "', firstname = '" . $this->db->escape($data['firstname']) . "', lastname = '" . $this->db->escape($data['lastname']) . "', email = '" . $this->db->escape($data['email']) . "', telephone = '" . $this->db->escape($data['telephone']) . "', product = '" . $this->db->escape($data['product']) . "', model = '" . $this->db->escape($data['model']) . "', quantity = '" . (int) $data['quantity'] . "', repair_status_id = '" . (int)$this->config->get('config_repair_status_id') . "', comment = '" . $this->db->escape($data['comment']) . "', date_ordered = '" . $this->db->escape($data['date_ordered']) . "', date_added = NOW(), date_modified = NOW()");
        
        $repair_id = $this->db->getLastId();

        if (isset($data['image']))
        {
            foreach ($data['image'] as $image)
            {
                $this->db->query("INSERT INTO " . DB_PREFIX . "repair_image SET repair_id = '" . (int) $repair_id . "', image = '" . $this->db->escape(html_entity_decode($image['image'], ENT_QUOTES, 'UTF-8')) . "'");
            }
        }
        
        return $repair_id;
    }

    public function getRepair($repair_id)
    {
        $query = $this->db->query("SELECT r.login_id, r.shipping_address, r.repair_id, r.order_id, r.firstname, r.lastname, r.email, r.telephone, r.product, r.model, r.quantity, r.opened, (SELECT rr.name FROM " . DB_PREFIX . "repair_reason rr WHERE rr.repair_reason_id = r.repair_reason_id AND rr.language_id = '" . (int) $this->config->get('config_language_id') . "') AS reason, (SELECT ra.name FROM " . DB_PREFIX . "repair_action ra WHERE ra.repair_action_id = r.repair_action_id AND ra.language_id = '" . (int) $this->config->get('config_language_id') . "') AS action, (SELECT rs.name FROM " . DB_PREFIX . "repair_status rs WHERE rs.repair_status_id = r.repair_status_id AND rs.language_id = '" . (int) $this->config->get('config_language_id') . "') AS status, r.comment, r.date_ordered, r.date_added, r.date_modified FROM `" . DB_PREFIX . "repair` r WHERE repair_id = '" . (int) $repair_id . "' AND customer_id = '" . $this->customer->getId() . "'");

        return $query->row;
    }

    public function getRepairs($start = 0, $limit = 20)
    {
        if ($start < 0)
        {
            $start = 0;
        }

        if ($limit < 1)
        {
            $limit = 20;
        }

        $query = $this->db->query("SELECT r.repair_id, r.order_id, r.firstname, r.lastname, rs.name as status, r.date_added FROM `" . DB_PREFIX . "repair` r LEFT JOIN " . DB_PREFIX . "repair_status rs ON (r.repair_status_id = rs.repair_status_id) WHERE r.customer_id = '" . $this->customer->getId() . "' AND rs.language_id = '" . (int) $this->config->get('config_language_id') . "' ORDER BY r.repair_id DESC LIMIT " . (int) $start . "," . (int) $limit);

        return $query->rows;
    }

    public function getTotalRepairs()
    {
        $query = $this->db->query("SELECT COUNT(*) AS total FROM `" . DB_PREFIX . "repair`WHERE customer_id = '" . $this->customer->getId() . "'");

        return $query->row['total'];
    }

    public function getRepairHistories($repair_id)
    {
        $query = $this->db->query("SELECT rh.date_added, rs.name AS status, rh.comment, rh.notify FROM " . DB_PREFIX . "repair_history rh LEFT JOIN " . DB_PREFIX . "repair_status rs ON rh.repair_status_id = rs.repair_status_id WHERE rh.repair_id = '" . (int) $repair_id . "' AND rs.language_id = '" . (int) $this->config->get('config_language_id') . "' ORDER BY rh.date_added ASC");

        return $query->rows;
    }
    
    public function addMessage($data)
    {
        if (!isset($data['file']))
        {
            $data['file'] = '';
        }

        $this->db->query("INSERT INTO " . DB_PREFIX . "repair_message SET content = '" . $this->db->escape(nl2br($data['message'])) . "', repair_id = '" . (int) $data['repair_id'] . "', is_user = 1, created = NOW(), file = '" . (string) $data['file'] . "'");
        
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

        $this->db->query("INSERT INTO " . DB_PREFIX . "repair_message SET content = '" . $this->db->escape(nl2br($data['message'])) . "', ticket_id = '" . (int) $data['ticket_id'] . "', is_user = 1, created = NOW(), file = '" . (string) $data['file'] . "'");

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
        $sql = "SELECT * FROM `" . DB_PREFIX . "repair_message` WHERE ";

        if (isset($data['filter_repair']) && $data['filter_repair'] != 0)
        {
            $sql .= " repair_id = " . (int) $data['filter_repair'];
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
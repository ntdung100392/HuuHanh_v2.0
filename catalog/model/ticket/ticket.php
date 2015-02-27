<?php

class ModelTicketTicket extends Model
{

    public function addTicket($data)
    {
        $query_department = $this->db->query("SELECT DISTINCT * FROM " . DB_PREFIX . "department WHERE department_id = '" . (int) $data['department'] . "'");
        $default_user_id = explode(',', $query_department->row['default_user_id']);

        if (sizeof($default_user_id) > 0)
        {
            $cIndex = intval($query_department->row['current_index']) >= sizeof($default_user_id) ? 0 : intval($query_department->row['current_index']);
            $default = 'ticket_user_id = "' . $default_user_id[$cIndex] . '", ';            
            
            $cNextIndex = intval($query_department->row['current_index']) + 1 >= sizeof($default_user_id) ? 0 : intval($query_department->row['current_index']) + 1;

            $this->db->query("UPDATE " . DB_PREFIX . "department SET current_index = '" . $cNextIndex . "' WHERE department_id = '" . (int) $data['department'] . "'");
        }
        else
        {
            $default = '';
        }

        if (!isset($data['ticket_order_id']))
            $data['ticket_order_id'] = 0;
        $this->db->query("INSERT INTO " . DB_PREFIX . "ticket SET " . $default . " ticket_order_id = '" . $this->db->escape($data['ticket_order_id']) . "', ticket_subject = '" . $this->db->escape($data['subject']) . "', ticket_status = 'New', ticket_department_id = '" . $this->db->escape($data['department']) . "', ticket_customer_id = '" . $this->db->escape($this->customer->getId()) . "', ticket_created = NOW(), ticket_last_update = '" . (string) $this->customer->getFirstName() . ' ' . $this->customer->getLastName() . "'");

        $ticket_id = $this->db->getLastId();
        $update_string = "ticket_id = '" . (int) $ticket_id . "'";
        foreach ($data as $key => $row)
        {
            if (strpos($key, "_1_"))
            {
                list($abc, $k ) = explode("_1_", $key);
                if (in_array($abc, array('captcha', 'submit')))
                    continue;
                $key = $k;
                $key = str_replace("_", " ", $key);
                if ($abc == "multi")
                    $row = serialize($row);
                $update_string .= ", `" . $key . "` = '" . $row . "'";
            }
        }
        if (isset($_SESSION['upload']))
            foreach ($_SESSION['upload'] as $row)
            {
                list($abc, $k ) = explode("_1_", $row['field']);
                $k = str_replace("_", " ", $k);
                $update_string .= ", `" . $k . "` = '" . $row['upload_file'] . "'";
            }
        $this->db->query("UPDATE " . DB_PREFIX . "ticket SET " . $update_string . " WHERE ticket_id = '" . (int) $ticket_id . "'");

        $this->language->load('ticket/create');

        $subject = sprintf($this->language->get('message_subject'), $this->config->get('config_name'));

        $message = $this->language->get('message_content');

        $mail = new Mail();
        $mail->protocol = $this->config->get('config_mail_protocol');
        //$mail->parameter = $this->config->get('config_mail_parameter');
        $mail->hostname = $this->config->get('config_smtp_host');
        $mail->username = $this->config->get('config_smtp_username');
        $mail->password = $this->config->get('config_smtp_password');
        $mail->port = $this->config->get('config_smtp_port');
        $mail->timeout = $this->config->get('config_smtp_timeout');
        $mail->setTo($this->customer->getEmail());
        $mail->setFrom($this->config->get('config_email'));
        $mail->setSender($this->config->get('config_name'));
        $mail->setSubject($subject);
        $mail->setText($message);
        $mail->send();

        return $ticket_id;
    }

    public function getConfig()
    {
        $query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "ticket_config` WHERE config_id = 1");

        return $query->row;
    }

    public function getOrderID()
    {
        $query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "order` WHERE customer_id = " . (int) $this->customer->getId());

        return $query->rows;
    }

    public function lastUpdate($ticket_id, $user_name)
    {
        $this->db->query("UPDATE `" . DB_PREFIX . "ticket` SET ticket_last_update = '" . (string) $user_name . "' WHERE ticket_id = '" . (int) $ticket_id . "'");
    }

    public function getTicket($ticket_id)
    {
        $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "ticket, `" . DB_PREFIX . "department` WHERE ticket_department_id = department_id AND ticket_id = '" . (int) $ticket_id . "'");

        return $query->row;
    }

    public function getTickets($data = array())
    {
        $sql = "SELECT * FROM `" . DB_PREFIX . "ticket`, `" . DB_PREFIX . "department` WHERE ticket_department_id = department_id AND ticket_customer_id = " . (int) $this->customer->getId();

        if (isset($data['filter_status']) && !empty($data['filter_status']))
        {
            $sql .= " AND ticket_status = '" . (string) $data['filter_status'] . "'";
        }

        $sort_data = array(
            'ticket_subject',
            'ticket_status',
            'ticket_created'
        );

        if (isset($data['sort']) && in_array($data['sort'], $sort_data))
        {
            $sql .= " ORDER BY " . $data['sort'];
        }
        else
        {
            $sql .= " ORDER BY ticket_created";
        }

        if (isset($data['order']) && ($data['order'] == 'ASC'))
        {
            $sql .= " ASC";
        }
        else
        {
            $sql .= " DESC";
        }

        if (isset($data['start']) || isset($data['limit']))
        {
            if ($data['start'] < 0)
            {
                $data['start'] = 0;
            }

            if ($data['limit'] < 1)
            {
                $data['limit'] = 10;
            }

            $sql .= " LIMIT " . (int) $data['start'] . "," . (int) $data['limit'];
        }

        $query = $this->db->query($sql);

        return $query->rows;
    }

}

?>
<?php

class ModelTicketMessage extends Model
{

    public function addMessage($data)
    {
        if (!isset($data['file']))
        {
            $data['file'] = '';
        }

        $this->db->query("INSERT INTO " . DB_PREFIX . "ticket_message SET content = '" . $this->db->escape(nl2br($data['message'])) . "', ticket_id = '" . (int) $data['ticket_id'] . "', is_user = 1, created = NOW(), file = '" . (string) $data['file'] . "'");

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

        /*
          $query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "user` WHERE user_group_id = 1");
          foreach($query->rows as $row){
          if(empty($row['email'])) continue;
          $mail = new Mail();
          $mail->protocol = $this->config->get('config_mail_protocol');
          //$mail->parameter = $this->config->get('config_mail_parameter');
          $mail->hostname = $this->config->get('config_smtp_host');
          $mail->username = $this->config->get('config_smtp_username');
          $mail->password = $this->config->get('config_smtp_password');
          $mail->port = $this->config->get('config_smtp_port');
          $mail->timeout = $this->config->get('config_smtp_timeout');
          $mail->setTo($row['email']);
          $mail->setFrom($this->config->get('config_email'));
          $mail->setSender($this->config->get('config_name'));
          $mail->setSubject($query_ticket->row['ticket_subject']);
          $mail->setText($data['message']);
          $mail->send();
          }
         * 
         */
    }

    public function addFirstMessage($data)
    {
        if (!isset($data['file']))
        {
            $data['file'] = '';
        }

        $this->db->query("INSERT INTO " . DB_PREFIX . "ticket_message SET content = '" . $this->db->escape(nl2br($data['message'])) . "', ticket_id = '" . (int) $data['ticket_id'] . "', is_user = 1, created = NOW(), file = '" . (string) $data['file'] . "'");

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
        $sql = "SELECT * FROM `" . DB_PREFIX . "ticket_message` WHERE ";

        if (isset($data['filter_ticket']) && $data['filter_ticket'] != 0)
        {
            $sql .= " ticket_id = " . (int) $data['filter_ticket'];
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
<?php

class ModelFormCredit extends Model
{

    public function addCredit($data)
    {
        $this->db->query("INSERT INTO `" . DB_PREFIX . "credit_form` SET name = '" . $this->db->escape($data['name']) . "', phone = '" . $this->db->escape($data['phone']) . "', dealer_name = '" . $this->db->escape($data['dealer_name']) . "', dealer_phone = '" . $this->db->escape($data['dealer_phone']) . "', email = '" . $this->db->escape($data['email']) . "', dealer_email = '" . $this->db->escape($data['dealer_email']) . "', product_number = '" . $this->db->escape($data['product_number']) . "', date_ordered = '" . $this->db->escape($data['date_ordered']) . "'");
    }

    public function getCredit($creadit_id)
    {
        $query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "credit_form` r WHERE credit_id = '" . (int) $credit_id . "' AND customer_id = '" . $this->customer->getId() . "'");

        return $query->row;
    }

    public function getCredits($start = 0, $limit = 20)
    {
        if ($start < 0)
        {
            $start = 0;
        }

        if ($limit < 1)
        {
            $limit = 20;
        }

        $query = $this->db->query("SELECT r.repair_id, r.credit_id, r.firstname, r.lastname, rs.name as status, r.date_added FROM `" . DB_PREFIX . "repair` r LEFT JOIN " . DB_PREFIX . "repair_status rs ON (r.repair_status_id = rs.repair_status_id) WHERE r.customer_id = '" . $this->customer->getId() . "' AND rs.language_id = '" . (int) $this->config->get('config_language_id') . "' ORDER BY r.repair_id DESC LIMIT " . (int) $start . "," . (int) $limit);

        return $query->rows;
    }

    public function getTotalCredits()
    {
        $query = $this->db->query("SELECT COUNT(*) AS total FROM `" . DB_PREFIX . "repair`WHERE customer_id = '" . $this->customer->getId() . "'");

        return $query->row['total'];
    }

    public function getCreditHistories($repair_id)
    {
        $query = $this->db->query("SELECT rh.date_added, rs.name AS status, rh.comment, rh.notify FROM " . DB_PREFIX . "repair_history rh LEFT JOIN " . DB_PREFIX . "repair_status rs ON rh.repair_status_id = rs.repair_status_id WHERE rh.repair_id = '" . (int) $repair_id . "' AND rs.language_id = '" . (int) $this->config->get('config_language_id') . "' ORDER BY rh.date_added ASC");

        return $query->rows;
    }

}

?>
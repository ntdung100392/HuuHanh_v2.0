<?php

class ModelApiLottery extends Model
{

    public function checkLottery($data)
    {
        $query = $this->db->query("SELECT lottery_id FROM " . DB_PREFIX . "lottery WHERE customer_id = '" . $this->db->escape($data['customer_id']) . "' AND lottery_url = '" . $this->db->escape($data['lottery_url']) . "'");
        return $query->num_rows;
    }

    public function addLottery($data)
    {
        $this->db->query("INSERT INTO " . DB_PREFIX . "lottery SET customer_id = '" . $this->db->escape($data['customer_id']) . "', lottery_url = '" . $this->db->escape($data['lottery_url']) . "', date_added = NOW()");
    }

    public function addVoucher($data)
    {
        $this->db->query("INSERT INTO " . DB_PREFIX . "voucher SET code = '" . $this->db->escape($data['code']) . "', from_name = '" . $this->db->escape($data['from_name']) . "', from_email = '" . $this->db->escape($data['from_email']) . "', to_name = '" . $this->db->escape($data['to_name']) . "', to_email = '" . $this->db->escape($data['to_email']) . "', voucher_theme_id = '" . (int) $data['voucher_theme_id'] . "', message = '" . $this->db->escape($data['message']) . "', amount = '" . (float) $data['amount'] . "', status = '" . (int) $data['status'] . "', date_added = NOW()");
    }

}

?>
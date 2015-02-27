<?php

class ModelLocalisationTradeReason extends Model
{

    public function addTradeReason($data)
    {
        foreach ($data['trade_reason'] as $language_id => $value)
        {
            if (isset($trade_reason_id))
            {
                $this->db->query("INSERT INTO " . DB_PREFIX . "trade_reason SET trade_reason_id = '" . (int) $trade_reason_id . "', language_id = '" . (int) $language_id . "', name = '" . $this->db->escape($value['name']) . "'");
            }
            else
            {
                $this->db->query("INSERT INTO " . DB_PREFIX . "trade_reason SET language_id = '" . (int) $language_id . "', name = '" . $this->db->escape($value['name']) . "'");

                $trade_reason_id = $this->db->getLastId();
            }
        }

        $this->cache->delete('trade_reason');
    }

    public function editTradeReason($trade_reason_id, $data)
    {
        $this->db->query("DELETE FROM " . DB_PREFIX . "trade_reason WHERE trade_reason_id = '" . (int) $trade_reason_id . "'");

        foreach ($data['trade_reason'] as $language_id => $value)
        {
            $this->db->query("INSERT INTO " . DB_PREFIX . "trade_reason SET trade_reason_id = '" . (int) $trade_reason_id . "', language_id = '" . (int) $language_id . "', name = '" . $this->db->escape($value['name']) . "'");
        }

        $this->cache->delete('trade_reason');
    }

    public function deleteTradeReason($trade_reason_id)
    {
        $this->db->query("DELETE FROM " . DB_PREFIX . "trade_reason WHERE trade_reason_id = '" . (int) $trade_reason_id . "'");

        $this->cache->delete('trade_reason');
    }

    public function getTradeReason($trade_reason_id)
    {
        $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "trade_reason WHERE trade_reason_id = '" . (int) $trade_reason_id . "' AND language_id = '" . (int) $this->config->get('config_language_id') . "'");

        return $query->row;
    }

    public function getTradeReasons($data = array())
    {
        if ($data)
        {
            $sql = "SELECT * FROM " . DB_PREFIX . "trade_reason WHERE language_id = '" . (int) $this->config->get('config_language_id') . "'";

            $sql .= " ORDER BY name";

            if (isset($data['trade']) && ($data['trade'] == 'DESC'))
            {
                $sql .= " DESC";
            }
            else
            {
                $sql .= " ASC";
            }

            if (isset($data['start']) || isset($data['limit']))
            {
                if ($data['start'] < 0)
                {
                    $data['start'] = 0;
                }

                if ($data['limit'] < 1)
                {
                    $data['limit'] = 20;
                }

                $sql .= " LIMIT " . (int) $data['start'] . "," . (int) $data['limit'];
            }

            $query = $this->db->query($sql);

            return $query->rows;
        }
        else
        {
            $trade_reason_data = $this->cache->get('trade_reason.' . (int) $this->config->get('config_language_id'));

            if (!$trade_reason_data)
            {
                $query = $this->db->query("SELECT trade_reason_id, name FROM " . DB_PREFIX . "trade_reason WHERE language_id = '" . (int) $this->config->get('config_language_id') . "' ORDER BY name");

                $trade_reason_data = $query->rows;

                $this->cache->set('trade_reason.' . (int) $this->config->get('config_language_id'), $trade_reason_data);
            }

            return $trade_reason_data;
        }
    }

    public function getTradeReasonDescriptions($trade_reason_id)
    {
        $trade_reason_data = array();

        $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "trade_reason WHERE trade_reason_id = '" . (int) $trade_reason_id . "'");

        foreach ($query->rows as $result)
        {
            $trade_reason_data[$result['language_id']] = array('name' => $result['name']);
        }

        return $trade_reason_data;
    }

    public function getTotalTradeReasons()
    {
        $query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "trade_reason WHERE language_id = '" . (int) $this->config->get('config_language_id') . "'");

        return $query->row['total'];
    }

}

?>
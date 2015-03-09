<?php 
class ModelLocalisationRepairReason extends Model {
	public function addRepairReason($data) {
		foreach ($data['repair_reason'] as $language_id => $value) {
			if (isset($repair_reason_id)) {
				$this->db->query("INSERT INTO " . DB_PREFIX . "repair_reason SET repair_reason_id = '" . (int)$repair_reason_id . "', language_id = '" . (int)$language_id . "', name = '" . $this->db->escape($value['name']) . "'");
			} else {
				$this->db->query("INSERT INTO " . DB_PREFIX . "repair_reason SET language_id = '" . (int)$language_id . "', name = '" . $this->db->escape($value['name']) . "'");
				
				$repair_reason_id = $this->db->getLastId();
			}
		}
		
		$this->cache->delete('repair_reason');
	}

	public function editRepairReason($repair_reason_id, $data) {
		$this->db->query("DELETE FROM " . DB_PREFIX . "repair_reason WHERE repair_reason_id = '" . (int)$repair_reason_id . "'");

		foreach ($data['repair_reason'] as $language_id => $value) {
			$this->db->query("INSERT INTO " . DB_PREFIX . "repair_reason SET repair_reason_id = '" . (int)$repair_reason_id . "', language_id = '" . (int)$language_id . "', name = '" . $this->db->escape($value['name']) . "'");
		}
				
		$this->cache->delete('repair_reason');
	}
	
	public function deleteRepairReason($repair_reason_id) {
		$this->db->query("DELETE FROM " . DB_PREFIX . "repair_reason WHERE repair_reason_id = '" . (int)$repair_reason_id . "'");
	
		$this->cache->delete('repair_reason');
	}
		
	public function getRepairReason($repair_reason_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "repair_reason WHERE repair_reason_id = '" . (int)$repair_reason_id . "' AND language_id = '" . (int)$this->config->get('config_language_id') . "'");
		
		return $query->row;
	}
		
	public function getRepairReasons($data = array()) {
      	if ($data) {
			$sql = "SELECT * FROM " . DB_PREFIX . "repair_reason WHERE language_id = '" . (int)$this->config->get('config_language_id') . "'";
			
			$sql .= " ORDER BY name";	
			
			if (isset($data['order']) && ($data['order'] == 'DESC')) {
				$sql .= " DESC";
			} else {
				$sql .= " ASC";
			}
			
			if (isset($data['start']) || isset($data['limit'])) {
				if ($data['start'] < 0) {
					$data['start'] = 0;
				}				

				if ($data['limit'] < 1) {
					$data['limit'] = 20;
				}	
			
				$sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];
			}	
			
			$query = $this->db->query($sql);
			
			return $query->rows;
		} else {
			$repair_reason_data = $this->cache->get('repair_reason.' . (int)$this->config->get('config_language_id'));
		
			if (!$repair_reason_data) {
				$query = $this->db->query("SELECT repair_reason_id, name FROM " . DB_PREFIX . "repair_reason WHERE language_id = '" . (int)$this->config->get('config_language_id') . "' ORDER BY name");
	
				$repair_reason_data = $query->rows;
			
				$this->cache->set('repair_reason.' . (int)$this->config->get('config_language_id'), $repair_reason_data);
			}	
	
			return $repair_reason_data;				
		}
	}
	
	public function getRepairReasonDescriptions($repair_reason_id) {
		$repair_reason_data = array();
		
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "repair_reason WHERE repair_reason_id = '" . (int)$repair_reason_id . "'");
		
		foreach ($query->rows as $result) {
			$repair_reason_data[$result['language_id']] = array('name' => $result['name']);
		}
		
		return $repair_reason_data;
	}
	
	public function getTotalRepairReasons() {
      	$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "repair_reason WHERE language_id = '" . (int)$this->config->get('config_language_id') . "'");
		
		return $query->row['total'];
	}	
}
?>
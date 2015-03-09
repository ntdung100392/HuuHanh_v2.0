<?php 
class ModelLocalisationRepairStatus extends Model {
	public function addRepairStatus($data) {
		foreach ($data['repair_status'] as $language_id => $value) {
			if (isset($repair_status_id)) {
				$this->db->query("INSERT INTO " . DB_PREFIX . "repair_status SET repair_status_id = '" . (int)$repair_status_id . "', language_id = '" . (int)$language_id . "', name = '" . $this->db->escape($value['name']) . "'");
			} else {
				$this->db->query("INSERT INTO " . DB_PREFIX . "repair_status SET language_id = '" . (int)$language_id . "', name = '" . $this->db->escape($value['name']) . "'");
				
				$repair_status_id = $this->db->getLastId();
			}
		}
		
		$this->cache->delete('repair_status');
	}

	public function editRepairStatus($repair_status_id, $data) {
		$this->db->query("DELETE FROM " . DB_PREFIX . "repair_status WHERE repair_status_id = '" . (int)$repair_status_id . "'");

		foreach ($data['repair_status'] as $language_id => $value) {
			$this->db->query("INSERT INTO " . DB_PREFIX . "repair_status SET repair_status_id = '" . (int)$repair_status_id . "', language_id = '" . (int)$language_id . "', name = '" . $this->db->escape($value['name']) . "'");
		}
				
		$this->cache->delete('repair_status');
	}
	
	public function deleteRepairStatus($repair_status_id) {
		$this->db->query("DELETE FROM " . DB_PREFIX . "repair_status WHERE repair_status_id = '" . (int)$repair_status_id . "'");
	
		$this->cache->delete('repair_status');
	}
		
	public function getRepairStatus($repair_status_id) {
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "repair_status WHERE repair_status_id = '" . (int)$repair_status_id . "' AND language_id = '" . (int)$this->config->get('config_language_id') . "'");
		
		return $query->row;
	}
		
	public function getRepairStatuses($data = array()) {
      	if ($data) {
			$sql = "SELECT * FROM " . DB_PREFIX . "repair_status WHERE language_id = '" . (int)$this->config->get('config_language_id') . "'";
			
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
			$repair_status_data = $this->cache->get('repair_status.' . (int)$this->config->get('config_language_id'));
		
			if (!$repair_status_data) {
				$query = $this->db->query("SELECT repair_status_id, name FROM " . DB_PREFIX . "repair_status WHERE language_id = '" . (int)$this->config->get('config_language_id') . "' ORDER BY name");
	
				$repair_status_data = $query->rows;
			
				$this->cache->set('repair_status.' . (int)$this->config->get('config_language_id'), $repair_status_data);
			}	
	
			return $repair_status_data;				
		}
	}
	
	public function getRepairStatusDescriptions($repair_status_id) {
		$repair_status_data = array();
		
		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "repair_status WHERE repair_status_id = '" . (int)$repair_status_id . "'");
		
		foreach ($query->rows as $result) {
			$repair_status_data[$result['language_id']] = array('name' => $result['name']);
		}
		
		return $repair_status_data;
	}
	
	public function getTotalRepairStatuses() {
      	$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "repair_status WHERE language_id = '" . (int)$this->config->get('config_language_id') . "'");
		
		return $query->row['total'];
	}	
}
?>
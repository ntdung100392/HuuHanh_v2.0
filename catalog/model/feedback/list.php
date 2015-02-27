<?php

class ModelFeedbackList extends Model
{

    public function getListFeedBack()
    {
        $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "feedback");

        return $query->rows;
    }

}

?>
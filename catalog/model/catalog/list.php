<?php

class ModelCatalogList extends Model
{

    function getProducts()
    {
        $query = $this->db->query("SELECT * FROM product as p INNER JOIN product_description as pd ON p.product_id = pd.product_id");
        
        return $query->rows;
    }
    
    function getCategories($product_id)
    {
        $query = $this->db->query("SELECT cd.name FROM product_to_category as p2c INNER JOIN category_description as cd ON p2c.category_id = cd.category_id WHERE p2c.product_id = $product_id");
        
        return $query->rows;
    }

}

?>

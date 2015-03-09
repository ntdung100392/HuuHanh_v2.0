<div class="box">
    <div class="box-heading">Products Filter</div>
    <div class="box-content">
        <section class="category">
            <ul id="filter_price">
                <li>
                <?php $w = ' - -'; ?>
                    <select id="filter_category_id" style="width: 95%;">
                        <option value="0">All Categories</option>
                    <?php foreach ($categories as $category_1) { ?>
                    <?php if ($category_1['category_id'] == $filter_category_id) { ?>
                        <option value="<?php echo $category_1['category_id']; ?>" selected="selected"><?php echo $category_1['name']; ?></option>
                    <?php } else { ?>
                        <option value="<?php echo $category_1['category_id']; ?>"><?php echo $category_1['name']; ?></option>
                    <?php } ?>
                    <?php foreach ($category_1['children'] as $category_2) { ?>
                    <?php if ($category_2['category_id'] == $filter_category_id) { ?>
                        <option value="<?php echo $category_2['category_id']; ?>" selected="selected"><?php echo $w; ?> <?php echo $category_2['name']; ?></option>
                    <?php } else { ?>
                        <option value="<?php echo $category_2['category_id']; ?>"><?php echo $w; ?> <?php echo $category_2['name']; ?></option>
                    <?php } ?>
                    <?php foreach ($category_2['children'] as $category_3) { ?>
                    <?php if ($category_3['category_id'] == $filter_category_id) { ?>
                        <option value="<?php echo $category_3['category_id']; ?>" selected="selected"><?php echo $w . $w; ?> <?php echo $category_3['name']; ?></option>
                    <?php } else { ?>
                        <option value="<?php echo $category_3['category_id']; ?>"><?php echo $w . $w; ?> <?php echo $category_3['name']; ?></option>
                    <?php } ?>
                    <?php } ?>
                    <?php } ?>
                    <?php } ?>
                    </select>
                </li>
                <li>
                    <select id="filter_brand_id" style="width: 95%;">
                        <option value="0">All Brands</option>
                    <?php foreach ($brands as $brand) { ?>
                        <option value="<?php echo $brand['manufacturer_id']; ?>" <?php if($brand['manufacturer_id'] == $filter_brand_id) echo 'selected';  ?>><?php echo $brand['name']; ?></option>
                    <?php } ?>
                    </select>
                </li>

                <li>
                    <select name="filter_price" style="width: 95%;">
                        <option value="">Any Price</option>
                        <option value="0-100">Under $100</option>
                        <option value="100-500">$100 - $500</option>     
                        <option value="500-2000">$500 - $2000</option>
                        <option value="2000-5000">$2000 - $5000</option>
                        <option value="5000-8000">$5000 - $8000</option>
                        <option value="8000-12000">$8000 - $12000</option>
                        <option value="12000-20000">$12000 - $20000</option>
                        <option value="20000">$20000 to Up</option>
                    </select>

                </li>
                <li style="background: none repeat scroll 0% 0% transparent; margin-bottom: 5px; text-align: center; cursor: pointer;">
                    <input class="button" onclick="filter_price();" value="Filter Products" type="button">
                </li>
            </ul>
        </section>
    </div>
</div>

<script>
    $('#filter_price > li').css('cursor', 'pointer');
      $('[name=filter_price]').val('<?php echo isset($_GET["filter_price"])?$_GET["filter_price"]:""; ?>');
  function filter_price()
    {
        url = 'index.php?route=product/search';
        var price = $('[name=filter_price]').val();
	if (price!=='') {
		url += '&filter_price=' + price;
	}
	
	var category_id = $('#filter_category_id :selected').val();
	
	if (category_id) {
		url += '&filter_category_id='+category_id;
	}
		
	var brand_id = $('#filter_brand_id :selected').val();
	
	if (brand_id>0) {
		url += '&filter_brand_id='+brand_id;
	}
        if (category_id)
            window.location =  url;
    }
</script>

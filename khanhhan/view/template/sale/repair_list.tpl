<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right"><a href="<?php echo $add; ?>" data-toggle="tooltip" title="<?php echo $button_add; ?>" class="btn btn-primary"><i class="fa fa-plus"></i></a>
        <button type="button" data-toggle="tooltip" title="<?php echo $button_delete; ?>" class="btn btn-danger" onclick="confirm('<?php echo $text_confirm; ?>') ? $('#form-repair').submit() : false;"><i class="fa fa-trash-o"></i></button>
      </div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
    <div class="container-fluid">
 <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <?php if ($success) { ?>
    <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
  <div class="box">
    <div class="content">
      <form action="<?php echo $delete; ?>" method="post" enctype="multipart/form-data" id="form">
        <table class="list">
          <thead>
            <tr>
              <td width="1" style="text-align: center;"><input type="checkbox" onclick="$('input[name*=\'selected\']').attr('checked', this.checked);" /></td>
              <td class="right"><?php if ($sort == 'r.repair_id') { ?>
                <a href="<?php echo $sort_repair_id; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_repair_id; ?></a>
                <?php } else { ?>
                <a href="<?php echo $sort_repair_id; ?>"><?php echo $column_repair_id; ?></a>
                <?php } ?></td>
              <td class="right"><?php if ($sort == 'r.order_id') { ?>
                <a href="<?php echo $sort_order_id; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_order_id; ?></a>
                <?php } else { ?>
                <a href="<?php echo $sort_order_id; ?>"><?php echo $column_order_id; ?></a>
                <?php } ?></td>
              <td class="left"><?php if ($sort == 'customer') { ?>
                <a href="<?php echo $sort_customer; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_customer; ?></a>
                <?php } else { ?>
                <a href="<?php echo $sort_customer; ?>"><?php echo $column_customer; ?></a>
                <?php } ?></td>
              <td class="left"><?php if ($sort == 'r.product') { ?>
                <a href="<?php echo $sort_product; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_product; ?></a>
                <?php } else { ?>
                <a href="<?php echo $sort_product; ?>"><?php echo $column_product; ?></a>
                <?php } ?></td>
              <td class="left"><?php if ($sort == 'r.model') { ?>
                <a href="<?php echo $sort_model; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_model; ?></a>
                <?php } else { ?>
                <a href="<?php echo $sort_model; ?>"><?php echo $column_model; ?></a>
                <?php } ?></td>                
              <td class="left"><?php if ($sort == 'status') { ?>
                <a href="<?php echo $sort_status; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_status; ?></a>
                <?php } else { ?>
                <a href="<?php echo $sort_status; ?>"><?php echo $column_status; ?></a>
                <?php } ?></td>
              <td class="left"><?php if ($sort == 'r.date_added') { ?>
                <a href="<?php echo $sort_date_added; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_date_added; ?></a>
                <?php } else { ?>
                <a href="<?php echo $sort_date_added; ?>"><?php echo $column_date_added; ?></a>
                <?php } ?></td>
              <td class="right" style="width: 75px;"><?php echo $column_action; ?></td>
            </tr>
          </thead>
          <tbody>
            <tr class="filter">
              <td></td>
              <td align="right"><input type="text" name="filter_repair_id" value="<?php echo $filter_repair_id; ?>" size="4" style="text-align: right;" /></td>
              <td align="right"><input type="text" name="filter_order_id" value="<?php echo $filter_order_id; ?>" size="4" style="text-align: right;" /></td>
              <td><input type="text" name="filter_customer" value="<?php echo $filter_customer; ?>" /></td>
              <td><input type="text" name="filter_product" value="<?php echo $filter_product; ?>" /></td>
              <td><input type="text" name="filter_model" value="<?php echo $filter_model; ?>" /></td>
              <td><select name="filter_repair_status_id">
                  <option value="*"></option>
                  <?php foreach ($repair_statuses as $repair_status) { ?>
                  <?php if ($repair_status['repair_status_id'] == $filter_repair_status_id) { ?>
                  <option value="<?php echo $repair_status['repair_status_id']; ?>" selected="selected"><?php echo $repair_status['name']; ?></option>
                  <?php } else { ?>
                  <option value="<?php echo $repair_status['repair_status_id']; ?>"><?php echo $repair_status['name']; ?></option>
                  <?php } ?>
                  <?php } ?>
                </select></td>
              <td><input type="text" name="filter_date_added" value="<?php echo $filter_date_added; ?>" size="12" class="date" /></td>
              <td align="right"><a onclick="filter();" class="button"><?php echo $button_filter; ?></a></td>
            </tr>
            <?php if ($repairs) { ?>
            <?php foreach ($repairs as $repair) { ?>
            <tr>
              <td style="text-align: center;"><?php if ($repair['selected']) { ?>
                <input type="checkbox" name="selected[]" value="<?php echo $repair['repair_id']; ?>" checked="checked" />
                <?php } else { ?>
                <input type="checkbox" name="selected[]" value="<?php echo $repair['repair_id']; ?>" />
                <?php } ?></td>
              <td class="right"><?php echo $repair['repair_id']; ?></td>
              <td class="right"><?php echo $repair['order_id']; ?></td>
              <td class="left"><?php echo $repair['customer']; ?></td>
              <td class="left"><?php echo $repair['product']; ?></td>
              <td class="left"><?php echo $repair['model']; ?></td>
              <td class="left"><?php echo $repair['status']; ?></td>
              <td class="left"><?php echo $repair['date_added']; ?></td>
              <td class="right"><?php foreach ($repair['action'] as $action) { ?>
                [ <a href="<?php echo $action['href']; ?>"><?php echo $action['text']; ?></a> ]
                <?php } ?></td>
            </tr>
            <?php } ?>
            <?php } else { ?>
            <tr>
              <td class="center" colspan="10"><?php echo $text_no_results; ?></td>
            </tr>
            <?php } ?>
          </tbody>
        </table>
      </form>
      <div class="pagination"><?php echo $pagination; ?></div>
    </div>
  </div>
    </div>
</div>
<script type="text/javascript"><!--
function filter() {
	url = 'index.php?route=sale/repair&token=<?php echo $token; ?>';
	
	var filter_repair_id = $('input[name=\'filter_repair_id\']').attr('value');
	
	if (filter_repair_id) {
		url += '&filter_repair_id=' + encodeURIComponent(filter_repair_id);
	}
	
	var filter_order_id = $('input[name=\'filter_order_id\']').attr('value');
	
	if (filter_order_id) {
		url += '&filter_order_id=' + encodeURIComponent(filter_order_id);
	}	
		
	var filter_customer = $('input[name=\'filter_customer\']').attr('value');
	
	if (filter_customer) {
		url += '&filter_customer=' + encodeURIComponent(filter_customer);
	}
	
	var filter_product = $('input[name=\'filter_product\']').attr('value');
	
	if (filter_product) {
		url += '&filter_product=' + encodeURIComponent(filter_product);
	}

	var filter_model = $('input[name=\'filter_model\']').attr('value');
	
	if (filter_model) {
		url += '&filter_model=' + encodeURIComponent(filter_model);
	}
		
	var filter_repair_status_id = $('select[name=\'filter_repair_status_id\']').attr('value');
	
	if (filter_repair_status_id != '*') {
		url += '&filter_repair_status_id=' + encodeURIComponent(filter_repair_status_id);
	}	
	
	var filter_date_added = $('input[name=\'filter_date_added\']').attr('value');
	
	if (filter_date_added) {
		url += '&filter_date_added=' + encodeURIComponent(filter_date_added);
	}

	var filter_date_modified = $('input[name=\'filter_date_modified\']').attr('value');
	
	if (filter_date_modified) {
		url += '&filter_date_modified=' + encodeURIComponent(filter_date_modified);
	}
			
	location = url;
}
//--></script> 
<script type="text/javascript"><!--
$.widget('custom.catcomplete', $.ui.autocomplete, {
	_renderMenu: function(ul, items) {
		var self = this, currentCategory = '';
		
		$.each(items, function(index, item) {
			if (item.category != currentCategory) {
				ul.append('<li class="ui-autocomplete-category">' + item.category + '</li>');
				
				currentCategory = item.category;
			}
			
			self._renderItem(ul, item);
		});
	}
});

$('input[name=\'filter_customer\']').catcomplete({
	delay: 0,
	source: function(request, response) {
		$.ajax({
			url: 'index.php?route=sale/customer/autocomplete&token=<?php echo $token; ?>&filter_name=' +  encodeURIComponent(request.term),
			dataType: 'json',
			success: function(json) {		
				response($.map(json, function(item) {
					return {
						category: item.customer_group,
						label: item.name,
						value: item.customer_id
					}
				}));
			}
		});
	}, 
	select: function(event, ui) {
		$('input[name=\'filter_customer\']').val(ui.item.label);
						
		return false;
	},
	focus: function(event, ui) {
      	return false;
   	}
});
//--></script> 
<script type="text/javascript"><!--
$(document).ready(function() {
	$('.date').datepicker({dateFormat: 'yy-mm-dd'});
});
//--></script> 
<?php echo $footer; ?> 
<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
          <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a>
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
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-list"></i> <?php echo $heading_title; ?></h3>
      </div>
      <div class="panel-body">
        <ul class="nav nav-tabs">
          <li class="active"><a href="#tab-repair" data-toggle="tab"><?php echo $tab_repair; ?></a></li>
          <li><a href="#tab-product" data-toggle="tab"><?php echo $tab_product; ?></a></li>
          <li><a href="#tab-history" data-toggle="tab"><?php echo $tab_repair_history; ?></a></li>
        </ul>
        <div class="tab-content">
          <div class="tab-pane active" id="tab-repair">
            <table class="table table-bordered">
              <tr>
                <td><?php echo $text_repair_id; ?></td>
                <td>#<?php echo $repair_id; ?></td>
              </tr>
              <tr>
                <td>Amazon/Ebay/User ID</td>
                <td><?php echo $login_id; ?></td>
              </tr>
              <tr>
                <td>Shipping Address</td>
                <td><?php echo $shipping_address; ?></td>
              </tr>
              <?php if ($order) { ?>
          <tr>
            <td><?php echo $text_order_id; ?></td>
            <td><a href="<?php echo $order; ?>"><?php echo $order_id; ?></a></td>
          </tr>
          <?php } else { ?>
          <tr>
            <td><?php echo $text_order_id; ?></td>
            <td><?php echo $order_id; ?></td>
          </tr>
          <?php } ?>
              <?php if ($customer) { ?>
          <tr>
            <td><?php echo $text_customer; ?></td>
            <td><a href="<?php echo $customer; ?>"><?php echo $firstname; ?> <?php echo $lastname; ?></a></td>
          </tr>
          <?php } else { ?>
          <tr>
            <td><?php echo $text_customer; ?></td>
            <td><?php echo $firstname; ?> <?php echo $lastname; ?></td>
          </tr>
          <?php } ?>
              <tr>
            <td><?php echo $text_email; ?></td>
            <td><?php echo $email; ?></td>
          </tr>
          <tr>
            <td><?php echo $text_telephone; ?></td>
            <td><?php echo $telephone; ?></td>
          </tr>
          <?php if ($repair_status) { ?>
          <tr>
            <td><?php echo $text_repair_status; ?></td>
            <td id="repair-status"><?php echo $repair_status; ?></td>
          </tr>
          <?php } ?>
          <tr>
            <td><?php echo $text_date_added; ?></td>
            <td><?php echo $date_added; ?></td>
          </tr>
          <tr>
            <td><?php echo $text_date_modified; ?></td>
            <td><?php echo $date_modified; ?></td>
          </tr>
            </table>
          </div>
          <div class="tab-pane" id="tab-product">
            <table class="table table-bordered">
              <tr>
            <td><?php echo $text_product; ?></td>
            <td><?php echo $product; ?></td>
          </tr>
          <tr>
            <td><?php echo $text_model; ?></td>
            <td><?php echo $model; ?></td>
          </tr>
          <tr>
            <td><?php echo $text_quantity; ?></td>
            <td><?php echo $quantity; ?></td>
          </tr>
          <tr>
            <td><?php echo $text_repair_reason; ?></td>
            <td><?php echo $repair_reason; ?></td>
          </tr>
          <tr>
            <td><?php echo $text_opened; ?></td>
            <td><?php echo $opened; ?></td>
          </tr>
          <tr>
            <td><?php echo $text_repair_action; ?></td>
            <td><select name="repair_action_id">
                <option value="0"></option>
                <?php foreach ($repair_actions as $repair_action) { ?>
                <?php if ($repair_action['repair_action_id'] == $repair_action_id) { ?>
                <option value="<?php echo $repair_action['repair_action_id']; ?>" selected="selected"><?php echo $repair_action['name']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $repair_action['repair_action_id']; ?>"><?php echo $repair_action['name']; ?></option>
                <?php } ?>
                <?php } ?>
              </select></td>
          </tr>
          <?php if ($comment) { ?>
          <tr>
            <td><?php echo $text_comment; ?></td>
            <td><?php echo $comment; ?></td>
          </tr>
          <?php } ?>
          <tr>
                        <td colspan="2">
                            <?php foreach ($repair_images as $img) { ?>
                                <a href="<?php echo $img['image']; ?>" class="image" rel="gallery">
                                    <img src="<?php echo $img['thumb']; ?>" />
                                </a>
                            <?php } ?>
                        </td>

                    </tr>
            </table>
          </div>
          <div class="tab-pane" id="tab-history">
            <div id="history"></div>
            <br />
            <fieldset>
                <legend><?php echo $text_history; ?></legend>
              <form class="form-horizontal">
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-order-status"><?php echo $entry_repair_status; ?></label>
                  <div class="col-sm-10">
                    <select name="repair_status_id">
                <?php foreach ($repair_statuses as $repair_status) { ?>
                <?php if ($repair_status['repair_status_id'] == $repair_status_id) { ?>
                <option value="<?php echo $repair_status['repair_status_id']; ?>" selected="selected"><?php echo $repair_status['name']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $repair_status['repair_status_id']; ?>"><?php echo $repair_status['name']; ?></option>
                <?php } ?>
                <?php } ?>
              </select>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-notify"><?php echo $entry_notify; ?></label>
                  <div class="col-sm-10">
                    <input type="checkbox" name="notify" value="1" id="input-notify" />
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="input-comment"><?php echo $entry_comment; ?></label>
                  <div class="col-sm-10">
                    <textarea name="comment" rows="8" id="input-comment" class="form-control"></textarea>
                  </div>
                </div>
              </form>
              <div class="text-right">
                  <button onclick="history()" id="button-history" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-primary"><i class="fa fa-plus-circle"></i> <?php echo $button_add_history; ?></button>
              </div>
            </fieldset>
          </div>
        </div>
      </div>
    </div>
  </div>
<script type="text/javascript"><!--
$('select[name=\'repair_action_id\']').bind('change', function() {
	$.ajax({
		url: 'index.php?route=sale/repair/action&token=<?php echo $token; ?>&repair_id=<?php echo $repair_id; ?>',
		type: 'post',
		dataType: 'json',
		data: 'repair_action_id=' + this.value,
		beforeSend: function() {
			$('.success, .warning, .attention').remove();
			
			$('#content > .container-fluid').before('<div class="attention"><img src="view/image/loading.gif" alt="" /> <?php echo $text_wait; ?></div>');
		},
		success: function(json) {
			$('.success, .warning, .attention').remove();
			
			if (json['error']) {
				$('#content > .container-fluid').before('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
				
				$('.warning').fadeIn('slow');
			}
			
			if (json['success']) {
				$('#content > .container-fluid').before('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');
				
				$('.success').fadeIn('slow');
			}
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});	
});

$('#history .pagination a').live('click', function() {
	$('#history').load(this.href);
	
	return false;
});			

$('#history').load('index.php?route=sale/repair/history&token=<?php echo $token; ?>&repair_id=<?php echo $repair_id; ?>');

function history() {
	$.ajax({
		url: 'index.php?route=sale/repair/history&token=<?php echo $token; ?>&repair_id=<?php echo $repair_id; ?>',
		type: 'post',
		dataType: 'html',
		data: 'repair_status_id=' + encodeURIComponent($('select[name=\'repair_status_id\']').val()) + '&notify=' + encodeURIComponent($('input[name=\'notify\']').attr('checked') ? 1 : 0) + '&append=' + encodeURIComponent($('input[name=\'append\']').attr('checked') ? 1 : 0) + '&comment=' + encodeURIComponent($('textarea[name=\'comment\']').val()),
		beforeSend: function() {
			$('.success, .warning').remove();
			$('#button-history').attr('disabled', true);
			$('#history').prepend('<div class="attention"><img src="view/image/loading.gif" alt="" /> <?php echo $text_wait; ?></div>');
		},
		complete: function() {
			$('#button-history').attr('disabled', false);
			$('.attention').remove();
		},
		success: function(html) {
			$('#history').html(html);
			
			$('textarea[name=\'comment\']').val(''); 
			
			$('#repair-status').html($('select[name=\'repair_status_id\'] option:selected').text());
                        $('#content > .container-fluid').prepend('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');
		}
	});
}
//--></script> 
<script type="text/javascript"><!--
$('.vtabs a').tabs();
//--></script> 
<?php echo $footer; ?>
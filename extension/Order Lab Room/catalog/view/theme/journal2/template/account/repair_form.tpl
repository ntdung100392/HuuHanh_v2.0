<?php echo $header; ?>
<div id="container" class="container j-container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"> <?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <?php if ($error_warning) { ?>
  <div class="alert alert-danger warning"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?></div>
  <?php } ?>
  <div class="row"><?php echo $column_left; ?><?php echo $column_right; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>">
      <h1 class="heading-title"><?php echo $heading_title; ?></h1>
      <?php echo $content_top; ?>
      <div class="content">
      <p><?php echo $text_description; ?></p><br/>
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
        <fieldset>
          <h2 class="secondary-title"><?php echo $text_order; ?></h2>
          <div class="alert alert-info" style="float:left;margin-top: 20px;">
            Below is the average price range for repair service, for your convenience. Please keep in mind that repair fees are determined on a case-by-case basis, but most of the time it falls within this range. This is or the labor fee only. If your system requires replacement for some parts, the fee for each part will be assessed individually.<br />
            If your shipping address is within the US, we will return your package for free, using standard shipping, after the repair is done.<br /><br />
            <b>DJI Phantom:</b> starting at $99+<br />
            <b>DJI F450/F550/Gau 540H/500X:</b> $200 - $300<br />
            <b>DJI S900/S1000:</b> $300 - $700<br />
            <b>Aeronavics/Droidworx Skyjib:</b> $300 - $700<br />
            <b>Other systems:</b> please contact for more info, or complete the form below and we will give you a pre-estimate <br /><br />

            Please bear in mind that these are only approximations and cannot be a direct reflection of the exact calculations for any individual repair.
        </div>
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-firstname"><?php echo $entry_firstname; ?></label>
            <div class="col-sm-10">
              <input type="text" name="firstname" value="<?php echo $firstname; ?>" placeholder="<?php echo $entry_firstname; ?>" id="input-firstname" class="form-control" />
              <?php if ($error_firstname) { ?>
              <div class="text-danger"><?php echo $error_firstname; ?></div>
              <?php } ?>
            </div>
          </div>
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-lastname"><?php echo $entry_lastname; ?></label>
            <div class="col-sm-10">
              <input type="text" name="lastname" value="<?php echo $lastname; ?>" placeholder="<?php echo $entry_lastname; ?>" id="input-lastname" class="form-control" />
              <?php if ($error_lastname) { ?>
              <div class="text-danger"><?php echo $error_lastname; ?></div>
              <?php } ?>
            </div>
          </div>
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-email"><?php echo $entry_email; ?></label>
            <div class="col-sm-10">
              <input type="text" name="email" value="<?php echo $email; ?>" placeholder="<?php echo $entry_email; ?>" id="input-email" class="form-control" />
              <?php if ($error_email) { ?>
              <div class="text-danger"><?php echo $error_email; ?></div>
              <?php } ?>
            </div>
          </div>
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-telephone"><?php echo $entry_telephone; ?></label>
            <div class="col-sm-10">
              <input type="text" name="telephone" value="<?php echo $telephone; ?>" placeholder="<?php echo $entry_telephone; ?>" id="input-telephone" class="form-control" />
              <?php if ($error_telephone) { ?>
              <div class="text-danger"><?php echo $error_telephone; ?></div>
              <?php } ?>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-order-id"><?php echo $entry_order_id; ?></label>
            <div class="col-sm-10">
              <input type="text" name="order_id" value="<?php echo $order_id; ?>" placeholder="<?php echo $entry_order_id; ?>" id="input-order-id" class="form-control" />
              <?php if ($error_order_id) { ?>
              <div class="text-danger"><?php echo $error_order_id; ?></div>
              <?php } ?>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-date-ordered"><?php echo $entry_date_ordered; ?></label>
            <div class="col-sm-3">
              <div class="input-group date"><input type="text" name="date_ordered" value="<?php echo $date_ordered; ?>" placeholder="<?php echo $entry_date_ordered; ?>" data-date-format="YYYY-MM-DD" id="input-date-ordered" class="form-control" /><span class="input-group-btn">
                <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                </span></div>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-shipping-address">Your shipping address</label>
            <div class="col-sm-10">
                  <input type="text" name="shipping_address" value="<?php echo $shipping_address; ?>" class="large-field" placeholder="Your shipping address" id="input-shipping-address" class="form-control" />
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-login-id">Login ID or eBay/Amazon ID</label>
            <div class="col-sm-10">
                  <input type="text" name="login_id" value="<?php echo $login_id; ?>" class="large-field" placeholder="Login ID or eBay/Amazon ID" id="input-login-id" class="form-control" />
            </div>
          </div>
        </fieldset>
          <br/>
          <fieldset>
          <h2 class="secondary-title">Upload Images</h2>
          <div class="form-group">
              <b>Please click SELECT FILES to select image of products :</b>
              </div>
            <br/>
            <div class="col-sm-10">
              <table id="images" class="list">
            <thead>
                <tr>
                    <td class="left">Image</td>
                    <td class="left">Filename</td>
                    <td class="right" style="text-align: center;width: 1%;">Action</td>
                </tr>
            </thead>
            <tbody>
                <?php $image_row = 0; ?>
                <?php foreach ($repair_images as $repair_image) { ?>
                <tr id="repair-row<?php echo $image_row; ?>">
                    <td class="left"><img src="<?php echo $repair_image['thumb']; ?>" alt="" id="thumb<?php echo $image_row; ?>" /><input type="hidden" name="image[' + image_row + '][image]" value="<?php echo $repair_image['image']; ?>" id="image<?php echo $image_row; ?>" /></td>
                    <td class="left"><?php echo $repair_image['image']; ?></td>
                    <td class="right"><a onclick="$('#repair-row<?php echo $image_row; ?>').remove();"><img src="catalog/view/theme/default/image/remove.png" alt="Remove" title="Remove"></a></td>
                </tr>
                <?php $image_row++; ?>
                <?php } ?>
            </tbody>
            <tfoot></tfoot>
        </table>        
        <input type="file" name="file_upload" id="file_upload" />
        <script type="text/javascript">
            var image_row = 0;
            $('#file_upload').uploadify({
                'swf': '<?php echo HTTP_SERVER; ?>catalog/view/javascript/jquery/uploadify/uploadify.swf',
                'uploader': '<?php echo HTTP_SERVER; ?>index.php?route=account/repair/multi_upload',
                'height': 32,
                'width': 100,
                'fileTypeDesc': 'Image Files (*.gif, *.jpg, *.png, *.bmp)',
                'fileTypeExts': '*.gif; *.jpg; *.png; *.bmp',
                'removeTimeout': 0,
                'uploadLimit': 15,
                'onUploadSuccess': function (file, data, response) {
                    var image = jQuery.parseJSON(data);
                    if (image.status === 1) {
                        html = '  <tr id="repair-row' + image_row + '">';
                        html += '    <td class="left"><img src="' + image.thumb + '" alt="" id="thumb' + image_row + '" /><input type="hidden" name="image[' + image_row + '][image]" value="' + image.file_name + '" id="image' + image_row + '" /></td>';
                        html += '    <td class="left" style="vertical-align: middle;">' + image.filename + '</td>';
                        html += '    <td class="right" style="text-align: center;vertical-align: middle;"><a onclick="$(\'#repair-row' + image_row + '\').remove();"><img src="catalog/view/theme/default/image/remove.png" alt="Remove" title="Remove"></a></td>';
                        html += '  </tr>';
                        $('#images > tbody').append(html);
                        image_row++;
                    }
                }
            });
        </script>
            </div>          
        </fieldset>
        <br/>
        <fieldset>
          <h2 class="secondary-title"><?php echo $text_product; ?></h2>
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-product"><?php echo $entry_product; ?></label>
            <div class="col-sm-10">
              <input type="text" name="product" value="<?php echo $product; ?>" placeholder="<?php echo $entry_product; ?>" id="input-product" class="form-control" />
              <?php if ($error_product) { ?>
              <div class="text-danger"><?php echo $error_product; ?></div>
              <?php } ?>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-model"><?php echo $entry_model; ?></label>
            <div class="col-sm-10">
              <input type="text" name="model" value="<?php echo $model; ?>" placeholder="<?php echo $entry_model; ?>" id="input-model" class="form-control" />
              <?php if ($error_model) { ?>
              <div class="text-danger"><?php echo $error_model; ?></div>
              <?php } ?>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-quantity"><?php echo $entry_quantity; ?></label>
            <div class="col-sm-10">
              <input type="text" name="quantity" value="<?php echo $quantity; ?>" placeholder="<?php echo $entry_quantity; ?>" id="input-quantity" class="form-control" />
            </div>
          </div>          
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-comment"><?php echo $entry_fault_detail; ?></label>
            <div class="col-sm-10">
              <textarea name="comment" rows="10" placeholder="<?php echo $entry_fault_detail; ?>" id="input-comment" class="form-control"><?php echo $comment; ?></textarea>
            </div>
          </div>
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-captcha"><?php echo $entry_captcha; ?></label>
            <div class="col-sm-10">
              <input type="text" name="captcha" value="" placeholder="<?php echo $entry_captcha; ?>" id="input-captcha" class="form-control" />
            </div>
          </div>
          <div class="form-group captcha-row">
            <div class="col-sm-10 pull-right">
              <img src="index.php?route=tool/captcha" alt="" />
              <?php if ($error_captcha) { ?>
                <div class="text-danger"><?php echo $error_captcha; ?></div>
              <?php } ?>
            </div>
          </div>
          </fieldset>
        </div>
          <div class="buttons">
    <div class="left"><a href="<?php echo $back; ?>" class="button"><?php echo $button_back; ?></a></div>
    <div class="right">
        <input type="submit" value="<?php echo $button_continue; ?>" class="button" />
    </div>
</div>        
      </form>
      <?php echo $content_bottom; ?>
    </div>
</div>
</div>
<script type="text/javascript">
$('.date').datetimepicker({
	pickTime: false
});
//--></script>
<?php echo $footer; ?>
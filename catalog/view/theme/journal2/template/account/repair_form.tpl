<?php echo $header; ?>

<div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
</div>

<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<?php echo $column_left; ?><?php echo $column_right; ?>

<div id="content"><?php echo $content_top; ?>
    <h1><?php echo $heading_title; ?></h1>
    <?php echo $text_description; ?>
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        <h2><?php echo $text_order; ?></h2>
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
        <div class="content">
            <div class="left"><span class="required">*</span> <?php echo $entry_firstname; ?><br />
                <input type="text" name="firstname" value="<?php echo $firstname; ?>" class="large-field" />
                <br />
                <?php if ($error_firstname) { ?>
                <span class="error"><?php echo $error_firstname; ?></span>
                <?php } ?>
                <br />
                <span class="required">*</span> <?php echo $entry_lastname; ?><br />
                <input type="text" name="lastname" value="<?php echo $lastname; ?>" class="large-field" />
                <br />
                <?php if ($error_lastname) { ?>
                <span class="error"><?php echo $error_lastname; ?></span>
                <?php } ?>
                <br />
                <span class="required">*</span> <?php echo $entry_email; ?><br />
                <input type="text" name="email" value="<?php echo $email; ?>" class="large-field" />
                <br />
                <?php if ($error_email) { ?>
                <span class="error"><?php echo $error_email; ?></span>
                <?php } ?>
                <br />
                <span class="required">*</span> <?php echo $entry_telephone; ?><br />
                <input type="text" name="telephone" value="<?php echo $telephone; ?>" class="large-field" />
                <br />
                <?php if ($error_telephone) { ?>
                <span class="error"><?php echo $error_telephone; ?></span>
                <?php } ?>
                <br />
            </div>
            <div class="right"><?php echo $entry_order_id; ?><br />
                <input type="text" name="order_id" value="<?php echo $order_id; ?>" class="large-field" />
                <br />
                <?php if ($error_order_id) { ?>
                <span class="error"><?php echo $error_order_id; ?></span>
                <?php } ?>
                <br />
                <?php echo $entry_date_ordered; ?><br />
                <input type="text" name="date_ordered" value="<?php echo $date_ordered; ?>" class="large-field date" />
                <br /><br />
                Your shipping address<br />
                <input type="text" name="shipping_address" value="<?php echo $shipping_address; ?>" class="large-field" />
                <br /><br />
                Login ID or eBay/Amazon ID<br />
                <input type="text" name="login_id" value="<?php echo $login_id; ?>" class="large-field" />
                <br />
            </div>
        </div>
        <h2>Upload Images</h2>

        <div class="content">
            <div><span class="required">*</span> <b>Please click SELECT FILES to select image of products :</b></div>    
        </div>

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
                    <td class="left"><img src="<?php echo $repair_image['thumb']; ?>" alt="" id="thumb' + image_row + '" /><input type="hidden" name="image[' + image_row + '][image]" value="<?php echo $repair_image['image']; ?>" id="image<?php echo $image_row; ?>" /></td>
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
                'swf': '<?php echo HTTPS_SERVER; ?>admin/view/image/multi_upload/uploadify.swf',
                'uploader': '<?php echo HTTPS_SERVER; ?>index.php?route=account/repair/multi_upload',
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
        <h2><?php echo $text_product; ?></h2>
        <div id="return-product">
            <div class="content">
                <div class="return-product">
                    <div class="return-name"><span class="required">*</span> <b><?php echo $entry_product; ?></b><br />
                        <input type="text" name="product" value="<?php echo $product; ?>" />
                        <br />
                        <?php if ($error_product) { ?>
                        <span class="error"><?php echo $error_product; ?></span>
                        <?php } ?>
                    </div>
                    <div class="return-model"><b><?php echo $entry_model; ?></b><br />
                        <input type="text" name="model" value="<?php echo $model; ?>" />
                        <br />
                        <?php if ($error_model) { ?>
                        <span class="error"><?php echo $error_model; ?></span>
                        <?php } ?>
                    </div>
                    <div class="return-quantity"><b><?php echo $entry_quantity; ?></b><br />
                        <input type="text" name="quantity" value="<?php echo $quantity; ?>" />
                    </div>
                </div>               


                <div class="return-captcha"><br />
                    <b><?php echo $entry_fault_detail; ?></b><br />
                    <textarea name="comment" cols="150" rows="6"><?php echo $comment; ?></textarea><br />
                </div>
                <div class="return-captcha"><b><?php echo $entry_captcha; ?></b><br />
                    <input type="text" name="captcha" value="<?php echo $captcha; ?>" />
                    <br />
                    <img src="index.php?route=account/return/captcha" alt="" />
                    <?php if ($error_captcha) { ?>
                    <span class="error"><?php echo $error_captcha; ?></span>
                    <?php } ?>
                </div>
            </div>
        </div>        
</div>
<?php if (isset($text_agree) && $text_agree) { ?>
<div class="buttons">
    <div class="left"><a href="<?php echo $back; ?>" class="button"><?php echo $button_back; ?></a></div>
    <div class="right"><?php echo $text_agree; ?>
        <?php if ($agree) { ?>
        <input type="checkbox" name="agree" value="1" checked="checked" />
        <?php } else { ?>
        <input type="checkbox" name="agree" value="1" />
        <?php } ?>
        <input type="submit" value="<?php echo $button_continue; ?>" class="button" />
    </div>
</div>
<?php } else { ?>
<div class="buttons">
    <div class="left"><a href="<?php echo $back; ?>" class="button"><?php echo $button_back; ?></a></div>
    <div class="right">
        <input type="submit" value="<?php echo $button_continue; ?>" class="button" />
    </div>
</div>
<?php } ?>
</form>
<?php echo $content_bottom; ?></div>
<script type="text/javascript"><!--
$(document).ready(function () {
        $('.date').datepicker({dateFormat: 'yy-mm-dd'});

        /*$('[name=repair_reason_refund]').change(function(){
         if($(this).val() === 'Refund')
         $('#refund_msg').show();
         else
         $('#refund_msg').hide();
         });*/
    });
//--></script>
<?php echo $footer; ?>
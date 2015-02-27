<table>
<?php foreach ($parameter as $key => $row) {
	$type_input = "";
     if(strpos($key, "_1_")){ 
          list($abc, $k )  = explode("_1_", $key); 
          $type_input = $abc; 
          if(in_array($abc, array('captcha','submit'))) 
              continue; 
          $key = $k ; 
          
     }
    $key = str_replace("_", " ", $key) ; ?>
    <tr>
    	<td><?php echo $key; ?></td>
    	<td>
    		<?php if($type_input=="multi") { ?>
				<ul>
				<?php foreach($row as $tmp){ ?>
					<li><?php echo $tmp; ?></li>
				<?php } ?>
				</ul>
			<?php } else { echo $row; } ?>
    	</td>
    </tr>
<?php } ?>
</table>
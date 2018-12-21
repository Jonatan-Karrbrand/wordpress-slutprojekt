<?php
// Google maps API key
function my_acf_init() {

	acf_update_setting('google_api_key', ' AIzaSyAfv_6bf7AU4Y0chhLxhwZSntxn40l2PDM');
}

add_action('acf/init', 'my_acf_init');


?>

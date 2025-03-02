<?php

session_start();

define("SITE_URL", "http://localhost/tryyourluck/admin/");
define("SERVER_NAME", "localhost");
define("DB_USERNAME", "root");
define("DB_PASSWORD", "");
define("DB_NAME", "try_your_luck");


//for admin authentication
define("admin", "try");
define("ad_pass", md5("try"));

$conn = new mysqli(SERVER_NAME, DB_USERNAME, DB_PASSWORD, DB_NAME);

?>
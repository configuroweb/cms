#!/usr/bin/php -q
<?php

require "../gump.class.php";

$validator = new GUMP();

// What are noise words? http://support.dtsearch.com/webhelp/dtsearch/noise_words.htm

$_POST = array(
	'words' => "Es un hecho establecido desde hace mucho tiempo que un lector se distraerá con el contenido legible de una página al mirar su diseño. El punto de usar Lorem Ipsum es que tiene una distribución de letras más o menos normal, en lugar de usar 'Contenido aquí, contenido aquí', lo que hace que parezca un español legible"
);

$filters = array(
	'words' => 'noise_words'
);

print_r($validator->filter($_POST, $filters));

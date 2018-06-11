<?php
$url = $_POST['posturl'];
file_put_contents('map.png' ,file_get_contents($url));
exec('fop -xml dummy.xml -xsl generatePDF.xsl -pdf staticmap.pdf');
?>
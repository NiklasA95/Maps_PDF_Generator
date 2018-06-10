<?xml version="1.0" encoding="ISO-8859-1"?>

<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">

<fo:layout-master-set>
	<fo:simple-page-master  master-name="myA4page" page-width="210mm" page-height="297mm">
		<fo:region-body region-name="xsl-region-body"  margin="2cm"/>
	</fo:simple-page-master>
</fo:layout-master-set>

<fo:page-sequence master-reference="MyTemplate">
	<fo:flow flow-name="xsl-region-body">
		<fo:block>
			<fo:external-graphic src="url('https://maps.googleapis.com/maps/api/staticmap?center=48.84098,10.09598&zoom=12&size=400x400&key=AIzaSyDnldJooKVilRAZYDMeZt_nA2fdLURtqxk')"/>
		</fo:block>
	</fo:flow>
</fo:page-sequence>

</fo:root>
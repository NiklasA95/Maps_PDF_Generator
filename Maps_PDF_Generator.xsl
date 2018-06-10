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
			<fo:external-graphic src="url('$path')"/>
		</fo:block>
	</fo:flow>
</fo:page-sequence>

</fo:root>
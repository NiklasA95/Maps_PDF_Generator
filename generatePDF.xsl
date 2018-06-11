<?xml version="1.0" encoding="ISO-8859-1"?>
<xs:stylesheet version="1.0"
               xmlns:xs="http://www.w3.org/1999/XSL/Transform"
               xmlns:fo="http://www.w3.org/1999/XSL/Format">

   <!-- Attribut-Sets fuer Tabellenzellen -->
   <xs:attribute-set name="cell-style">
      <xs:attribute name="border-width">0.5pt</xs:attribute>
      <xs:attribute name="border-style">solid</xs:attribute>
      <xs:attribute name="border-color">black</xs:attribute>
   </xs:attribute-set>
   <xs:attribute-set name="block-style">
      <xs:attribute name="font-size">  10pt</xs:attribute>
      <xs:attribute name="line-height">0pt</xs:attribute>
      <xs:attribute name="start-indent">1mm</xs:attribute>
      <xs:attribute name="end-indent">  1mm</xs:attribute>
   </xs:attribute-set>

   <!-- Seitenaufteilung -->
   <xs:template match="/">
      <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
         <fo:layout-master-set>
            <fo:simple-page-master master-name="DIN-A4"
                  page-height="29.7cm" page-width="21cm"
                  margin-top="2cm"     margin-bottom="2cm"
                  margin-left="2.5cm"  margin-right="2.5cm">
               <fo:region-body
                  margin-top="1.5cm" margin-bottom="1.8cm"
                  margin-left="2cm"  margin-right="2.5cm"/>
               <fo:region-before region-name="header" extent="10cm"/>
               <fo:region-after  region-name="footer" extent="1.5cm"/>
               <fo:region-start  region-name="left"   extent="1cm"/>
               <fo:region-end    region-name="right"  extent="2cm"/>
            </fo:simple-page-master>
         </fo:layout-master-set>
         <fo:page-sequence master-reference="DIN-A4">
            <fo:static-content flow-name="header">
               <fo:block>
                  <fo:external-graphic src="url('map.png')"/>
               </fo:block>
            </fo:static-content>
            <fo:static-content flow-name="footer">
               <fo:block text-align="center">
                  Google Static Map
               </fo:block>
            </fo:static-content>
            <fo:flow flow-name="xsl-region-body">
               <xs:apply-templates/>
               <fo:block id="LastPage"/>
            </fo:flow>
         </fo:page-sequence>
      </fo:root>
   </xs:template>

</xs:stylesheet>
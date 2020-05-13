<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
	<html>
<body bgcolor="pink">
<table border="1">
<tr>
<th>Name</th>
<th>Price</th>
</tr>


	<xsl:for-each select="food/cuisine">
	<xsl:sort select="price" order="ascending"/>
       <tr>
        <td style="background-color:red"><xsl:value-of select="name"/></td>
        <td style="background-color:blue"><xsl:value-of select="price"/></td>
        

       </tr>

	</xsl:for-each>
</table>

</body>

	</html>
</xsl:template>
</xsl:stylesheet>

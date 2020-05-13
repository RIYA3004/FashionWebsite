<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version ="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>

<body>
  
<table border="1">

<tr>
<th>Name</th>
<th>Founder</th>
<th>Year</th>
</tr>


<xsl:for-each select="fashion/brand">
<xsl:sort select="name" order="descending"/>
<tr>

<td><xsl:value-of select="name"/></td>
<td><xsl:value-of select="founder"/></td>
<td><xsl:value-of select="year"/></td>
</tr>

</xsl:for-each>
</table>

</body>
</html>

</xsl:template>
</xsl:stylesheet>
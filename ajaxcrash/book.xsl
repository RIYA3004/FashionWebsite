<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  <body>
  <h2>Hello</h2>
  <table border="1">
    <tr>
      <th>Name</th>
      <th>Price</th>
      <th>Place</th>
    </tr>
    <xsl:for-each select="books/book">
      <xsl:sort select="name" order="descending"/>
     <tr>
       <td><xsl:value-of select="name"/></td>
        <td><xsl:value-of select="price"/></td>
         <td><xsl:value-of select="place"/></td>
     </tr>
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>

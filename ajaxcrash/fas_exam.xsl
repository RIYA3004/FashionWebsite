<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <body bgcolor="#000000">
        <h2 style="color:red">Hello</h2>
        <table border="1">
        <tr>
          <th style="color:white" >Name</th>
          <th style="color:white">Price</th>
        </tr>

        <xsl:for-each select="fashion/material">
          <xsl:sort select="price" order="descending"/>
          <tr>
          <td style="color:white"><xsl:value-of select="name"/></td>
          <td style="color:white"><xsl:value-of select="price"/></td>
          </tr>
        </xsl:for-each>
        </table>

      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>

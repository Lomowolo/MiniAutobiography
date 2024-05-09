<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <head>
    <title>Textbooks List</title>
  </head>
  <body>
    <h2>Textbooks List</h2>
    <table border="1">
      <tr bgcolor="#9acd32">
        <th>Title</th>
        <th>Authors</th>
        <th>Publisher</th>
        <th>Year</th>
        <th>Edition</th>
        <th>Cover</th>
      </tr>
      <xsl:for-each select="textbooks/textbook">
      <tr>
        <td><xsl:value-of select="title"/></td>
        <td>
          <xsl:for-each select="authors/author">
            <xsl:value-of select="first_name"/>
            <xsl:text> </xsl:text>
            <xsl:value-of select="last_name"/>
            <xsl:if test="position() != last()">, </xsl:if>
          </xsl:for-each>
        </td>
        <td><xsl:value-of select="publisher/name"/></td>
        <td><xsl:value-of select="year"/></td>
        <td><xsl:value-of select="edition"/></td>
        <td><xsl:value-of select="cover"/></td>
      </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>

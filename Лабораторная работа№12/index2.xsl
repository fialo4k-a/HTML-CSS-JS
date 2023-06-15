<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/main">
 <html>
<head><title>indexSecond</title>
</head>
 <body>
 <h2>Аттестация студентов</h2>
 <table border="1">
 <tr>
 <th>Имя студента</th>
 <th>Группа студента</th>
 <th>Оценка студента</th>
 </tr>
 <xsl:for-each select="atestation">
 <xsl:sort order="ascending"/>
 <tr>
 <td><xsl:value-of select="studentname"/></td>
 <td><xsl:value-of select="group"/></td>
 <xsl:choose>
 <xsl:when test="mark &lt; 4">
 <td bgcolor="#ff0000">
 <xsl:value-of select="mark"/></td>
 </xsl:when>

 <xsl:when test="mark &gt; 8">
 <td bgcolor="#019F0A">
 <xsl:value-of select="mark"/></td>
 </xsl:when>
 <xsl:otherwise>
<td><xsl:value-of select="mark"/></td>
 </xsl:otherwise>
 
 </xsl:choose>
 </tr>
 </xsl:for-each>
 </table>
 </body>
 </html>
</xsl:template>
</xsl:stylesheet>
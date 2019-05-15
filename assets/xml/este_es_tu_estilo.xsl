<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head>
<style>
	body {
		font-family: Segoe UI;
	}
	
	table, th, td {
		padding: 20px;
		margin: auto;
		border-radius: 20px;
	}
	
	th {
		background-color: lightblue;
	}
	
	tr {
		background-color: lightpink;
	}
	
	h2 {
		text-align: center;
		color: #111;
		font-size: 2vw;
		font-weight: 300;
		line-height: 32px;
	}
</style> 
</head>
<body>
  <h2>Este es tu estilo</h2>
  <table>
    <tr>
      <th>Nombre</th>
      <th>URL</th>
	  <th>Descripcion</th>
    </tr>
    <xsl:for-each select="paginas/pagina">
    <tr>
      <td><xsl:value-of select="nombre"/></td>
      <td><xsl:value-of select="url"/></td>
	  <td><xsl:value-of select="descr"/></td>
    </tr>
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>


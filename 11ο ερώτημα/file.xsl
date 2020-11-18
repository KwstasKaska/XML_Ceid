<?xml version="1.0"?> 

<xsl:stylesheet version="1.0"
			xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
			
	<xsl:template match="/Schedule">
		<html>
		<body>
		<h2>Schedule</h2>
			<table border="1">
				<tr bgcolor="#808080">
					<th>Title</th>
					<th>Professor</th>
					<th>Day</th>
				</tr>
				<xsl:for-each select="Lesson/Lecture[Day='Monday']">
						<tr>
							<td bgcolor="#880000 "><xsl:value-of select="../Title"/></td>
							<td bgcolor="#880000 "><xsl:value-of select="../Professor"/></td>
							<td bgcolor="#880000 "><xsl:value-of select="Day"/></td>
						</tr>
				</xsl:for-each>
				<xsl:for-each select="Lesson/Lecture[Day='Tuesday']">
						<tr>
							<td><xsl:value-of select="../Title"/></td>
							<td><xsl:value-of select="../Professor"/></td>
							<td><xsl:value-of select="Day"/></td>
						</tr>
				</xsl:for-each>
				<xsl:for-each select="Lesson/Lecture[Day='Wednesday']">
						<tr>
							<td bgcolor="#4169E1"><xsl:value-of select="../Title"/></td>
							<td bgcolor="#4169E1"><xsl:value-of select="../Professor"/></td>
							<td bgcolor="#4169E1"><xsl:value-of select="Day"/></td>
						</tr>
				</xsl:for-each>
				<xsl:for-each select="Lesson/Lecture[Day='Thursday']">
				
						<tr>
							<td bgcolor="#F0E68C"><xsl:value-of select="../Title"/></td>
							<td bgcolor="#F0E68C"><xsl:value-of select="../Professor"/></td>
							<td bgcolor="#F0E68C"><xsl:value-of select="Day"/></td>
						</tr>
				
				</xsl:for-each>
				<xsl:for-each select="Lesson/Lecture[Day='Friday']">
				
						<tr>
							<td bgcolor="#9400D3"><xsl:value-of select="../Title"/></td>
							<td bgcolor="#9400D3"><xsl:value-of select="../Professor"/></td>
							<td bgcolor="#9400D3"><xsl:value-of select="Day"/></td>
						</tr>
					
				</xsl:for-each>
				<xsl:for-each select="Lesson/Lecture[Day='Saturday']">
				
						<tr>
							<td bgcolor="#880000 "><xsl:value-of select="../Title"/></td>
							<td bgcolor="#880000 "><xsl:value-of select="../Professor"/></td>
							<td bgcolor="#880000 "><xsl:value-of select="Day"/></td>
						</tr>
					
				</xsl:for-each>
				<xsl:for-each select="Lesson/Lecture[Day='Sunday']">
						<tr>
							<td><xsl:value-of select="../Title"/></td>
							<td><xsl:value-of select="../Professor"/></td>
							<td><xsl:value-of select="Day"/></td>
						</tr>
					
				</xsl:for-each>
			</table>
		</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
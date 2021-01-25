<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="other-software-wrap">
			<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
		</div>
	</xsl:template>
	<xsl:template match="Zone">
		<xsl:if test="IsActive='false'">
			<xsl:apply-templates select="News"></xsl:apply-templates>
		</xsl:if>
	</xsl:template>
	<xsl:template match="News">
		<div class="card-body-right">
			<div class="sb-title">
				<a>
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</a>
			</div>
			<div class="caption">
				<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
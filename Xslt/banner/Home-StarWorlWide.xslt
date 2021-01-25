<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:apply-templates select="/BannerList/Banner"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="Banner">
		<section class="home_s-4">
			<xsl:attribute name="setBackground">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<div class="container">
				<div class="row">
					<div class="col-lg-8">
						<div class="head-title">
							<h2>
								<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
								<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
							</h2>
						</div>
						<div class="desc_s-4">
							<xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of>
						</div>
						<a class="btn-view">
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<img src="/Data/Sites/1/media/img/home/shape-icon.png" alt="" />
							<span>Learn more</span>
						</a>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
</xsl:stylesheet>
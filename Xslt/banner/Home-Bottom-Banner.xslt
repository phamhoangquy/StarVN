<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="home_s-4">
			<xsl:apply-templates select="/BannerList/Banner"></xsl:apply-templates>
		</section>
	</xsl:template>
	<xsl:template match="Banner">
		<xsl:attribute name="setBackground">
			<xsl:value-of select="ImageUrl"></xsl:value-of>
		</xsl:attribute>
		<div class="container">
			<div class="row">
				<div class="col-lg-8" data-aos="fade-zoom-in">
					<div class="head-title">
						<h2>
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</h2>
					</div>
					<div class="desc_s-4">
						<xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of>
					</div>
					<div class="btn-view">
						<div class="img"><img src="/Data/Sites/1/media/img/home/shape-icon.png" alt="" /></div>

						<a href='javascript:;'>

							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<span>
								<xsl:value-of disable-output-escaping="yes" select="/BannerList/VMText"></xsl:value-of>
							</span>

						</a>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>

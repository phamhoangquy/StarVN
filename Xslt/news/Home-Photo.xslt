<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
<xsl:template match="/">
	<div class="row" data-aos="fade-zoom-in">
		<xsl:apply-templates select="/ZoneList/Zone/News"></xsl:apply-templates>
	</div>
	</xsl:template>
		<xsl:template match="News">
			<xsl:if test="position()>1">
				<div class="col-lg-6">
					<div class="figure-images">
						<div class="wrapper-img">
							<a>
								<xsl:attribute name="data-fancybox">
									<xsl:text>home-gallery-image-</xsl:text>
									<xsl:value-of disable-output-escaping="yes" select="NewsId"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="href">
									<xsl:value-of select="ImageUrl"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="title">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
								<img>
									<xsl:attribute name="src">
										<xsl:value-of select="ImageUrl"></xsl:value-of>
									</xsl:attribute>
									<xsl:attribute name="alt">
										<xsl:value-of select="Title"></xsl:value-of>
									</xsl:attribute>
								</img>
							</a>
						</div>
						<div style="display: none;">
							<xsl:apply-templates select="NewsImages" mode="h-Gallery"></xsl:apply-templates>
						</div>
						<div class="images">
							<div class="icon">
								<img src="/Data/Sites/1/media/img/home/h-s7-icon.png" alt="" />
							</div>
						</div>
					</div>
					<div class="title-img">
						<a href="javascript;;">
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</a>
					</div>
				</div>
			</xsl:if>
	</xsl:template>
	<xsl:template match="NewsImages" mode="h-Gallery">
		<xsl:if test="position() > 1">
			<a>
				<xsl:attribute name="data-fancybox">
					<xsl:text>home-gallery-image-</xsl:text>
					<xsl:value-of disable-output-escaping="yes" select="../NewsId"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="href">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<img>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
				</img>
			</a>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>

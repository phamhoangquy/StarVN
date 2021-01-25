<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="head-title" data-aos="zoom-in" data-aos-offset="200" data-aos-duration="200">
			<h2>
				<xsl:value-of disable-output-escaping="yes" select="/NewsList/ModuleTitle"></xsl:value-of>
			</h2>
		</div>
		<xsl:apply-templates select="/NewsList/News" mode='Big'></xsl:apply-templates>
		<div class="row" data-aos="zoom-in" data-aos-offset="200" data-aos-duration="200">
			<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
		</div>
	</xsl:template>
	<xsl:template match="News" mode='Big'>
		<xsl:if test="position()=1">
			<div class="figure-video media-play" data-aos="zoom-in" data-aos-offset="200" data-aos-duration="200">
				<div class="wrapper-video"><a>
						<xsl:attribute name="data-fancybox">
							<xsl:text>home-gallery-</xsl:text>
							<xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="href">
							<xsl:value-of select="SubTitle"></xsl:value-of>
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
					</a></div>
				<div class="video">
					<div class="icon"><img src="/Data/Sites/1/media/img/home/icon-video.png" alt="" /></div>
				</div>
			</div>
			<div class="title-video"><a href="javascript:;">
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
				</a>
			</div>

		</xsl:if>
	</xsl:template>

	<xsl:template match="News">
		<div class="col-lg-6">
			<div class="figure-images">
				<div class="wrapper-img"><a>


						<xsl:attribute name="data-fancybox">
							<xsl:text>home-gallery-image-</xsl:text>
							<xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
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
					</a></div>
				<div class="images">
					<div class="icon"><img src="/Data/Sites/1/media/img/home/h-s7-icon.png" alt="" /></div>
				</div>
			</div>
			<div class="title-img"><a href="javascript;;">
					<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
				</a></div>
		</div>
	</xsl:template>
</xsl:stylesheet>
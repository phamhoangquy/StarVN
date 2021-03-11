<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>

	<xsl:template match="/">
		<section class="library-photo">
			<div class="container">
				<div class="row">
					<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News">
		<div class="col-lg-4">
			<div class="block-news">
				<div class="card-img">
					<a>
						<xsl:attribute name="data-fancybox">
							<xsl:text>gallery-</xsl:text>
							<xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="href">
							<xsl:value-of disable-output-escaping="yes" select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
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
					<div class="images">
						<div class="icon"><img src="/Data/Sites/1/media/img/home/h-s7-icon.png" alt="" /></div>
					</div>
				</div>
				<div class="content-news">
					<div class="title-news">
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
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>

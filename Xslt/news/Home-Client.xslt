<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<section class="home_s-3" data-aos="fade-zoom-in">
			<div class="container">
				<div class="head-title">
					<h2>
						<xsl:apply-templates select="/ZoneList/ModuleTitle"></xsl:apply-templates>
					</h2>
				</div>
				<div class="tab-menu">
					<div class="tab-description">
						<ul class="tab-navigation">
							<xsl:apply-templates select="/ZoneList/Zone/Zone"></xsl:apply-templates>
						</ul>
					</div>
					<div class="tab-wrapper">
						<xsl:apply-templates select="/ZoneList/Zone/Zone" mode='Tab'></xsl:apply-templates>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="Zone">
		<li>
			<xsl:if test="position()=1">
				<xsl:attribute name="class">
					<xsl:text>active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<a href="javascript:void(0)">
				<xsl:attribute name="data-type">
					<xsl:text disable-output-escaping="yes">client-tab-</xsl:text>
					<xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
			</a>
		</li>
	</xsl:template>
	<xsl:template match="Zone" mode='Tab'>
		<div class="tab-item " id="tab-1">
			<xsl:if test="position()=1">
				<xsl:attribute name="class">
					<xsl:text disable-output-escaping="yes">tab-item active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:attribute name="id">
				<xsl:text disable-output-escaping="yes">client-tab-</xsl:text>
				<xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
			</xsl:attribute>
			<div class="row">
				<div class="col-lg-3">
					<div class="clients-h">
						<div class="sub-title">
							<h3>
								<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
							</h3>
						</div>
						<div class="content-h">
							<xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of>
						</div>
					</div>
				</div>
				<div class="col-lg-9">
					<div class="row">
						<xsl:apply-templates select="News"></xsl:apply-templates>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News">
		<div class="col">
			<div class="clients-img">
				<div class="img">
					<img>
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
					</img>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>

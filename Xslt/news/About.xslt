<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="srcoll-menu">
			<div class="container">
				<div class="menu-nav">
					<ul>
						<xsl:apply-templates select="/ZoneList/Zone" mode='Nav'></xsl:apply-templates>
					</ul>
				</div>
			</div>
		</section>
		<section class="about" id='about-section-1'>
			<div class="container">
				<xsl:apply-templates select="/ZoneList/Zone[1]/News"></xsl:apply-templates>
			</div>
		</section>
		<section class="about-2" id='about-section-2'>
			<div class="container">
				<div class="head-title">
					<h2>
						<xsl:value-of disable-output-escaping="yes" select="/ZoneList/Zone[2]/Title">
						</xsl:value-of>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</h2>
				</div>
				<div class="row">
					<xsl:apply-templates select="/ZoneList/Zone[2]/News" mode='News-1'></xsl:apply-templates>
				</div>
			</div>
		</section>
		<xsl:apply-templates select="/ZoneList/Zone[3]/News" mode='News-2'></xsl:apply-templates>


		<section class="about-4" id='about-section-4'>
			<div class="container">
				<div class="row">
					<xsl:apply-templates select="/ZoneList/Zone[4]/News" mode='News-3'></xsl:apply-templates>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="Zone" mode='Nav'>
		<li class="link-to-srcoll-section">
			<xsl:if test="position()=1">
				<xsl:attribute name="class">
					<xsl:text>active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<a>
				<xsl:attribute name="href">
					<xsl:text disable-output-escaping="yes">#about-section-</xsl:text>
					<xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
			</a>

		</li>
	</xsl:template>
	<xsl:template match="News">
		<div class="head-title">
			<h1>
				<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
			</h1>
		</div>
		<div class="row">
			<div class="col-lg-8">
				<div class="content-about">
					<div class="about-desc-top">
						<h2>
							<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
						</h2>
					</div>
					<div class="about-desc-bottom">
						<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
					</div>
				</div>
			</div>
			<div class="col-lg-4">
				<div class="card-img">
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
		</div>
	</xsl:template>
	<xsl:template match="News" mode='News-1'>
		<div class="col-lg-6">
			<div class="item-about-2">
				<div class="card-img">
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
				<div class="desc-about-2">
					<div class="title">
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</div>
					<div class="caption">
						<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode='News-2'>
		<section class="about-3" id='about-section-3'>
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
						<div class="description">
							<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News" mode='News-3'>
		<div class="col-lg-6">
			<div class="card-img">
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
		<div class="col-lg-6">
			<div class="content-about-4">
				<div class="head-title">
					<h2>
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</h2>
				</div>
				<div class="caption">
					<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>

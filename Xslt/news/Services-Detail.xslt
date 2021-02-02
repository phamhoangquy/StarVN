<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/NewsDetail">
		<section class="service-detail">
			<div class="container">
				<div class="card-title">
					<h1>
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</h1>
				</div>
				<div class="fullcontent">
					<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
				</div>
				<div class="row">
					<div class="col-lg-10">
						<div class="service_detail_slide">
							<div class="swiper-container gallery-top">
								<div class="swiper-wrapper">
									<xsl:apply-templates select="NewsImages"></xsl:apply-templates>
								</div>
							</div>
							<div class="swiper-container gallery-thumbs">
								<div class="swiper-wrapper">
									<xsl:apply-templates select="NewsImages"></xsl:apply-templates>
								</div>
							</div>
							<div class="swiper-nav">
								<div class="nav-arrow-prev"><em class="ri-arrow-left-s-line"></em></div>
								<div class="nav-arrow-next"><em class="ri-arrow-right-s-line"></em></div>
							</div>
							<xsl:apply-templates select="NewsAttributes"></xsl:apply-templates>
						</div>
					</div>
				</div>
				<div class="fullcontent">
					<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
				</div>
			</div>
		</section>
		<section class="service-detail-2">
			<div class="container">
				<div class="head-title">
					<h2>Related service</h2>
				</div>
				<div class="service-detail-2-swiper-wrapper">
					<div class="nav-arrow-prev"><em class="ri-arrow-left-s-line"></em></div>
					<div class="nav-arrow-next"><em class="ri-arrow-right-s-line"></em></div>
					<div class="swiper-container">
						<div class="swiper-wrapper">
							<xsl:apply-templates select="NewsOther"></xsl:apply-templates>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="NewsImages">
		<div class="swiper-slide">
			<img>
			<xsl:attribute name="src">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="alt">
				<xsl:value-of select="Title"></xsl:value-of>
			</xsl:attribute>
			</img>
		</div>
	</xsl:template>
	<xsl:template match="NewsAttributes">
		<xsl:value-of disable-output-escaping="yes" select="Content"></xsl:value-of>
	</xsl:template>
	<xsl:template match="NewsOther">
		<div class="swiper-slide">
			<div class="wrapper">
				<div class="card_img"><a class="zoom-in">
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
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
				<div class="title-services">
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
				<xsl:if test="BriefContent !=''">
					<div class="title-zone">
						<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
					</div>
				</xsl:if>
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
	</xsl:template>

</xsl:stylesheet>
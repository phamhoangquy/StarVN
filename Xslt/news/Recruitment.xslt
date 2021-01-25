<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="career-list-2">
			<div class="container">
				<div class="head-title">
					<h2>
						<xsl:value-of disable-output-escaping="yes" select="/NewsList/ModuleTitle"></xsl:value-of>
					</h2>
				</div>
				<div class="row">
					<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News">
		<div class="col-lg-6">
			<div class="content-jobs-list">
				<div class="title-jobs"> <a>
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
				<div class="city-jobs">
					<div class="icon-jobs"><span class="ri-map-pin-2-fill"></span></div>
					<div class="title-zone-city">
						<xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of>
					</div>
				</div>
				<div class="agree-jobs">
					<div class="salary-date">
						<div class="salary"><a href="javascript:;">
								<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
							</a></div>
						<div class="date">
							<div class="icon"><span class="ri-calendar-check-fill"></span></div>
							<time>
								<xsl:value-of disable-output-escaping="yes" select="EndDate"></xsl:value-of>
							</time>
						</div>
					</div>
					<div class="view-detail"><a>

							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							View detail
						</a></div>
				</div>
			</div>
		</div>
	</xsl:template>

</xsl:stylesheet>
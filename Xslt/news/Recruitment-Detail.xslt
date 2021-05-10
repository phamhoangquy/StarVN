<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/NewsDetail">
		<section class="career-detail">
			<div class="container">
				<div class="row">
					<div class="col-lg-9">
						<div class="card-title">
							<h1>
								<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
								<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
							</h1>
							<div class="social-network-share">
								<div class="icon">


									<a href="javascript:;" target="_blank">
										<xsl:attribute name='href'>
											<xsl:text>https://www.facebook.com/sharer/sharer.php?u=</xsl:text>
											<xsl:value-of select='FullUrl'></xsl:value-of>
										</xsl:attribute>
										<span class="ri-facebook-fill"></span>
									</a>
									<a href="javascript:;" target="_blank">
										<xsl:attribute name='href'>
											<xsl:text>https://twitter.com/intent/tweet?text=</xsl:text>
											<xsl:value-of select='FullUrl'></xsl:value-of>
										</xsl:attribute>
										<span class="ri-twitter-fill"></span>
									</a>




								</div>
							</div>
						</div>
						<div class="card_body">
							<div class="fullcontent-detail">
								<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
							</div>
						</div>
						<div class="form-career-detail">
							<div class="apply-form">
								<div class="btn button-apply">
									<img src="/Data/Sites/1/media/img/home/shape-icon.png" alt="" />
									<a href='javascript:void(0)' data-fancybox="" data-src="#form-apply">
										<xsl:value-of disable-output-escaping="yes" select="SampleText1"></xsl:value-of>
									</a>
								</div>
							</div>

							<div class="text">
								<xsl:value-of disable-output-escaping="yes" select="SampleText2"></xsl:value-of>
							</div>

							<a class="upload-your-resume" href="javascript:;">
								<xsl:if test="FileUrl!=''">
									<xsl:attribute name="href">
										<xsl:value-of select="FileUrl"></xsl:value-of>
									</xsl:attribute>
									<xsl:attribute name="download">
									</xsl:attribute>
								</xsl:if>
								<img src="/Data/Sites/1/media/img/home/shape-icon.png" alt="" />
								<span>
									<xsl:value-of disable-output-escaping="yes" select="SampleText3"></xsl:value-of>
								</span>
							</a>
						</div>
						<div class="form-apply" id="form-apply" style="display: none">
							<iframe>
								<xsl:attribute name="src">
									<xsl:value-of select="/NewsDetail/ApplyUrl"></xsl:value-of>
								</xsl:attribute>
							</iframe>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="card-title-right">
							<h2>
								<xsl:value-of disable-output-escaping="yes" select="RelatedJobText">
								</xsl:value-of>
							</h2>
						</div>
						<div class="card-body-right">
							<xsl:apply-templates select="NewsOther"></xsl:apply-templates>

						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="NewsOther">
		<div class="content-career-detail">
			<div class="title-career-detail">

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
			<div class="desc-career-detail">
				<div class="city-date-detail">
					<div class="city-detail">
						<div class="icon"><span class="ri-map-pin-2-fill"></span></div>
						<div class="text">
							<xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of>
						</div>
					</div>
					<div class="date">
						<div class="icon"><span class="ri-calendar-check-fill"></span></div>
						<time>
							<xsl:value-of disable-output-escaping="yes" select="EndDate"></xsl:value-of>
						</time>
					</div>
				</div>
				<div class="salary-detail"><a href="javascript:;">
						<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
					</a></div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">

		<div class="row">
			<div class="col-lg-6">
				<xsl:apply-templates select="/NewsList/News" mode='Big'></xsl:apply-templates>
			</div>
			<div class="col-lg-6">
				<xsl:apply-templates select="/NewsList/News" mode='Side'></xsl:apply-templates>

			</div>
		</div>
		<div class="row">
			<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
		</div>

	</xsl:template>
	<xsl:template match="News" mode='Side'>
		<xsl:if test="position()> 1 and position() &lt; 6 ">

			<div class="small-news">
				<div class="card-img"><a class="zoom-in">

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
				<div class="content-news-small">
					<div class="title-news"><a>
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
							<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
						</a></div>
					<div class="date">
						<time>
							<xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of>
						</time>
					</div>
				</div>
			</div>
		</xsl:if>

	</xsl:template>
	<xsl:template match="News" mode='Big'>
		<xsl:if test="position()=1">

			<div class="big-news">
				<div class="card-img">
					<a class="zoom-in">
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
					<div class="date">
						<time>
							<xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of>
						</time>
					</div>
					<div class="title-zone">
						<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
					</div>
				</div>
			</div>
		</xsl:if>

	</xsl:template>
	<xsl:template match="News">
		<xsl:if test="position() >5">

			<div class="col-lg-4">
				<div class="block-news">
					<div class="card-img"><a class="zoom-in">

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
						<div class="date">
							<time>
								<xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of>
							</time>
						</div>
						<div class="title-zone">
							<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
						</div>
					</div>
				</div>
			</div>
		</xsl:if>

	</xsl:template>
</xsl:stylesheet>
<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/NewsDetail">
		<section class="software-detail">
			<div class="container">
				<div class="row">
					<div class="col-lg-9">
						<div class="card_title">
							<h1>
								<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
								<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
							</h1>
						</div>
						<div class="fullcontent">
							<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="bg-right">
							<div class="card-title-right">
								<h2>Other software</h2>
							</div>
							<div class="other-news-detail"></div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>


</xsl:stylesheet>
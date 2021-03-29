<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/NewsDetail">
        <section class="news-detail">
            <div class="container">
                <div class="row">
                    <div class="col-lg-10">
                        <div class="card-title">
                            <h1>
                                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
                                <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                            </h1>
                            <div class="bottom-wrapper-news-detail">
                                <time>
                                    <xsl:value-of disable-output-escaping="yes" select="CreatedDate"></xsl:value-of>
                                </time>
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
                        </div>
                        <div class="card_body">
                            <div class="fullcontent">
                                <xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-2">
						<xsl:apply-templates select="NewsOther"></xsl:apply-templates>
                    </div>
                </div>
            </div>
        </section>
        <section class="other-news-detail">
            <div class="container">
                <div class="title-other">
                    <h2>Related News</h2>
                </div>
                <div class="news-detail-swiper-wrapper">
                    <div class="nav-arrow-prev">
                        <em class="ri-arrow-left-s-line"></em>
                    </div>
                    <div class="nav-arrow-next">
                        <em class="ri-arrow-right-s-line"></em>
                    </div>
                    <div class="swiper-container">
                        <div class="swiper-wrapper">
                            <xsl:apply-templates select="NewsOther" mode="News-Related"></xsl:apply-templates>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </xsl:template>

    <xsl:template match="NewsOther">
		<div class="right-detail-wrapper">
			<div class="title">
				<xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of>
			</div>
			<div class="content-right">
				<div class="card-img">
					<a class="">
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
				<div class="title-zone">
					<a>
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="target">
							<xsl:value-of select="Target"></xsl:value-of>
						</xsl:attribute>
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</a>
				</div>
			</div>
		</div>
    </xsl:template>

    <xsl:template match="NewsOther" mode="News-Related">
		<div class="swiper-slide">
			<div class="item-news-other">
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
				<div class="content-news-other">
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
				</div>
			</div>
		</div>
    </xsl:template>
</xsl:stylesheet>

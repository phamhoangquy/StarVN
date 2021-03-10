<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/">
        <section class="srcoll-menu">
            <div class="container">
                <div class="menu-nav">
                    <ul class="link-to-srcoll-section">
                        <xsl:apply-templates select="/ZoneList/Zone" mode='Nav'></xsl:apply-templates>
                    </ul>
                </div>
            </div>
        </section>
        <section class="software-list">
            <div class="container">
                <div class="head-title">
                    <h1>
                        <xsl:value-of disable-output-escaping="yes" select="/ZoneList/ZoneTitle"></xsl:value-of>
                    </h1>
                </div>
                <div class="text-software">
                    <xsl:value-of disable-output-escaping="yes" select="/ZoneList/ZoneDescription"></xsl:value-of>
                </div>
                <xsl:apply-templates select="/ZoneList/Zone/News"></xsl:apply-templates>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="Zone" mode='Nav'>
        <li>
            <a>
                <xsl:attribute name="href">
                    <xsl:text disable-output-escaping="yes">#software-section-</xsl:text>
                    <xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
				<xsl:value-of disable-output-escaping="yes" select="SecondImageUrl"></xsl:value-of>
            </a>
        </li>
    </xsl:template>
    <xsl:template match="News">
        <div class="row">
            <xsl:attribute name="id">
                <xsl:text disable-output-escaping="yes">software-section-</xsl:text>
                <xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
            </xsl:attribute>
            <div class="col-lg-3">
                <div class="card-img">
                    <a>
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
                <div class="title">
                    <a>
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:value-of disable-output-escaping="yes" select="SubTitle"></xsl:value-of>
                    </a>
                </div>
            </div>
            <div class="col-lg-9">
                <div class="content-soft">
                    <div class="caption">
                        <xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
                    </div>
                    <a class="btn-view">
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <img src="/Data/Sites/1/media/img/home/shape-icon.png" alt="" />
                        <span>View more</span>
                    </a>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>

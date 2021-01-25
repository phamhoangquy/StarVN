<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />

    <xsl:template match="/LanguageList">
        <a class="current">
            <xsl:value-of disable-output-escaping="yes" select="Language[IsActive = 'true']/Title"></xsl:value-of>
            <span class="ri-arrow-down-s-fill"></span>
        </a>
        <ul class="drop-down">
            <xsl:apply-templates select="Language[IsActive = 'false']"></xsl:apply-templates>
        </ul>
    </xsl:template>

    <xsl:template match="Language">
        <li>
            <xsl:if test="IsActive = 'true'">
                <xsl:attribute name="class">
                    <xsl:text>active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <a>
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <xsl:value-of select="Title"></xsl:value-of>
            </a>
        </li>
    </xsl:template>
</xsl:stylesheet>
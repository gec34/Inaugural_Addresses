<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs"
    xmlns="http://www.w3.org/1999/xhtml" version="3.0">
    <xsl:output method="xhtml" html-version="5" omit-xml-declaration="no" include-content-type="no"
        indent="yes"/>
    <xsl:template match="/">
        <html xmlns="http://www.w3.org/1999/xhtml">
            <head>
                <title>Addresses</title>
                <link rel="stylesheet" type="text/css" href="addresses.css"/>
            </head>

            <body>
                <h1>
                    <label id="header">Presidential Inaugural Addresses</label>
                </h1>
                <h2>
                    <!--#include virtual="menu.xhtml" -->
                </h2>
                <div class="metadata">
                    <ul>
                        <xsl:apply-templates select="//meta" mode="meta">
                            <xsl:sort/>
                        </xsl:apply-templates>
                    </ul>
                </div>
                <div class="attributeMenu">
                    <p class="chartTitle">Elements</p>
                    <ul>
                        <li style="color:black"><input type="checkbox" name="policy" value="policy"/>Policy</li>
                        <li style="color:navy"><input type="checkbox" name="value" value="value"/>Value</li>
                        <li style="color:purple"><input type="checkbox" name="tone" value="tone"/>Tone</li>
                    </ul>
                </div>

                <div class="home">
                    <xsl:apply-templates select="//body"/>
                </div>

            </body>

        </html>
    </xsl:template>
    <xsl:template match="//meta" mode="meta">
        <li>
            <xsl:apply-templates select="name"/>
        </li>
        <li>
            <xsl:apply-templates select="party"/>
        </li>
        <li>
            <xsl:apply-templates select="den"/>
        </li>
        <li>
            <xsl:apply-templates select="profession"/>
        </li>
        <li>
            <xsl:apply-templates select="date"/>
        </li>
    </xsl:template>
    <xsl:template match="//body">
        <xsl:apply-templates select="p"/>
    </xsl:template>
    <xsl:template match="p">
        <xsl:apply-templates/>
        <br/>
    </xsl:template>
    <xsl:template match="tone">
        <span class="tone">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    <xsl:template match="policy">
        <span class="policy">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    <xsl:template match="value">
        <span class="value">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
</xsl:stylesheet>

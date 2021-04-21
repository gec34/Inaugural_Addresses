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
                <script src="text.js"/>
            </head>

            <body>
                <h1>
                    <label id="header">Presidential Inaugural Addresses</label>
                </h1>
                <h2>
                    <xsl:comment><!--#include virtual="menu.xhtml" --></xsl:comment>
                </h2>
                <div class="flex">

                    <div class="metadata">
                        <ul>
                            <xsl:apply-templates select="//meta" mode="meta">
                                <xsl:sort/>
                            </xsl:apply-templates>
                        </ul>
                    </div>
                    <div class="attributeMenu">
                        <p class="chartTitle">Click to Highlight:</p>
                        <ul>
                            <li>
                                <input type="checkbox" value="policy"/>
                                <strong>Policy</strong>
                            </li>
                            <li style="color:yellow"><input type="checkbox" value="economy"/>Economy</li>
                            <li style = "color:red"><input type="checkbox" value="foreign"/>Foreign Policy</li>
                            <li style = "color:orange"><input type="checkbox" value="slavery"/>Slavery</li>
                            <li style = "color:fuchsia"><input type="checkbox" value="civil"/>Civil Rights</li>
                            <li style = "color:lime"><input type="checkbox" value="govt"/>Government</li>
                            <li>
                                <input type="checkbox" value="religion"/>
                                <em>Religion</em>
                            </li>
                        </ul>
                    </div>

                    <div class="home">
                        <xsl:apply-templates select="//body"/>
                    </div>
                </div>

            </body>

        </html>
    </xsl:template>
    <xsl:template match="//meta" mode="meta">
        <li> Name: <xsl:apply-templates select="name"/>
        </li>
        <li> Party: <xsl:apply-templates select="party"/>
        </li>
        <li> Religion: <xsl:apply-templates select="den"/>
        </li>
        <li> Profession: <xsl:apply-templates select="profession"/>
        </li>
        <li> Date: <xsl:apply-templates select="date"/>
        </li>
    </xsl:template>
    <xsl:template match="//body">
        <xsl:apply-templates select="p"/>
    </xsl:template>
    <xsl:template match="p">
        <xsl:apply-templates/>
        <br/>
    </xsl:template>
    

    <xsl:template match="policy">
        <span>
            <xsl:attribute name="class">
                <xsl:text>policy </xsl:text>
                <xsl:apply-templates select="@* ! name(.)"/>
            </xsl:attribute>
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    
    <xsl:template match="value">
        <span>
            <xsl:attribute name="class">
                <xsl:text>value </xsl:text>
                <xsl:apply-templates select="@type"/>
            </xsl:attribute>
            <xsl:apply-templates/>
        </span>
    </xsl:template>
</xsl:stylesheet>

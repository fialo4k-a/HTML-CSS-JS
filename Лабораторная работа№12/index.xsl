<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>indexFirst</title>
            </head>
            <body>

                <p>Name</p>
                <xsl:for-each select="main/contact">
                    <xsl:sort select="name" order="ascending"/>
                    <ul>
                        <li>
                            <xsl:value-of select="name"/>
                        </li>
                    </ul>
                </xsl:for-each>

                <p>Surname</p>
                <xsl:for-each select="main/contact">
                    <xsl:sort select="surname" order="ascending"/>
                    <ul>
                        <li>
                            <xsl:value-of select="surname"/>
                        </li>
                    </ul>
                </xsl:for-each>

                <p>Country</p>
                <xsl:for-each select="main/contact">
                    <xsl:sort select="country" />
                    <ul>
                        <li>
                            <xsl:value-of select="country"/>
                        </li>
                    </ul>
                </xsl:for-each>

                 <p>City</p>
                <xsl:for-each select="main/contact">
                    <xsl:sort select="city" order="ascending"/>
                    <ul>
                        <li>
                            <xsl:value-of select="city"/>
                        </li>
                    </ul>
                </xsl:for-each>

                 <p>Address</p>
                <xsl:for-each select="main/contact">
                    <xsl:sort select="address" order="ascending"/>
                    <ul>
                        <li>
                            <xsl:value-of select="address"/>
                        </li>
                    </ul>
                </xsl:for-each>

                 <p>Post</p>
                <xsl:for-each select="main/contact">
                    <xsl:sort select="post" order="ascending"/>
                    <ul>
                        <li>
                            <xsl:value-of select="post"/>
                        </li>
                    </ul>
                </xsl:for-each>
                 <p>Age</p>
                 
                <xsl:for-each select="main/contact">
                    <xsl:sort select="age" order="ascending"/>
                    <ul>
                        <li>
                            <xsl:value-of select="age"/>
                        </li>
                    </ul>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
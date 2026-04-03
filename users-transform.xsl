<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="xml" indent="yes"/>

  <xsl:template match="/">
    <UsersList>
      <xsl:for-each select="users/user">
        <User>
          <Id>
            <xsl:value-of select="id"/>
          </Id>
          <Name>
            <xsl:value-of select="name"/>
          </Name>
          <Username>
            <xsl:value-of select="username"/>
          </Username>
          <Email>
            <xsl:value-of select="email"/>
          </Email>
          <City>
            <xsl:value-of select="address/city"/>
          </City>
          <Company>
            <xsl:value-of select="company/name"/>
          </Company>
        </User>
      </xsl:for-each>
    </UsersList>
  </xsl:template>

</xsl:stylesheet>
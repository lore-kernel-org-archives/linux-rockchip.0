Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B064AEB64D7
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Jun 2023 18:49:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vATvTjnmmctwPhJVUtcNCst6fcNoPSYXt1gnJGPGgm8=; b=P12mSZD0YNCICd7xUQznZjXHY3
	6ZmvK+QD3+cxGV0auR9AaNjnDp1aVTM80tldvVaTPC0kyHnFazkvBZ7fhBcvb5e0I+OvqWlMTyH7r
	4kIWrZqbKerC53enlFlViH53YSU2zekstEDoNFRWv383ZgeheE6/nDSb9yhaLkyw+8llxXRAVZNiU
	3hS2bhd2ehqkL4phlq7bnJ9jtMfjPJRu6afFMAQ+JSIgFXpiwTsocKm5HEmqdJdDDOoD3QBHJMZ6i
	sPQV4pwpX/WW9ghqYI9PLDb0b7Owo8dY74/2F8T2DR7uNieDUp4TB5v6qh+KRdwY+9I1kHNqsEa0p
	NrIlV9Lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qFJAg-004LIs-2f;
	Fri, 30 Jun 2023 18:48:42 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qFJAe-004LHv-3A
	for linux-rockchip@lists.infradead.org;
	Fri, 30 Jun 2023 18:48:42 +0000
Received: from mercury (dyndsl-091-248-211-174.ewe-ip-backbone.de [91.248.211.174])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 98AD166057EC;
	Fri, 30 Jun 2023 19:48:35 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1688150915;
	bh=SBBllfHo7bvybxOlx0jHFD0nrtAr7RUdPig05tF/QEE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FuBU9vc5FJn2Wt0zZYh2C3cohLT8a+12t7KPmUtbeGD4OfqEqEmU/KMTU89sC9tVy
	 +0d/1Wle6xUyEgOXy6qTm1z6han1O0/p6D4q6t08Has0jxrIacb/bB3afOmYuar0Ky
	 6iEih5FKmTRDRhWIgzznSYSR5bC9BipiSasmGQCsZI/ai5dSl6x42SSmOGDWPi5tW4
	 46CJKmxyGZYyCNcypPiVzF+qytwp6sEPl/GiTXjfTt5iTpSpCsxn2TY73FC00eiq+J
	 bxx7Mcj71vPWjTHpWBrAdEgHTdr2dv4HermFjqYrsuKkYCZmcj1J6urxKRRQnOYY17
	 o4aLxWwnr4QYQ==
Received: by mercury (Postfix, from userid 1000)
	id 4696610613E0; Fri, 30 Jun 2023 20:48:33 +0200 (CEST)
Date: Fri, 30 Jun 2023 20:48:33 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lee Jones <lee@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Alessandro Zummo <a.zummo@towertech.it>,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, kernel@collabora.com,
	Diederik de Haas <didi.debian@cknow.org>,
	Vincent Legoll <vincent.legoll@gmail.com>
Subject: Re: [PATCH v8 05/14] mfd: rk808: split into core and i2c
Message-ID: <20230630184833.o3lgqrtqzzwgb7nk@mercury.elektranox.org>
References: <20230504173618.142075-1-sebastian.reichel@collabora.com>
 <20230504173618.142075-6-sebastian.reichel@collabora.com>
 <CAMuHMdWRoNXrkD8ty4pUpFA-qQCMVF3wzXTCHFW4jYSy+dXivg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMuHMdWRoNXrkD8ty4pUpFA-qQCMVF3wzXTCHFW4jYSy+dXivg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230630_114841_235737_2A5934EC 
X-CRM114-Status: GOOD (  18.17  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============5691423485093325282=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5691423485093325282==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="iqtscgntphb3oqls"
Content-Disposition: inline


--iqtscgntphb3oqls
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Geert,

On Fri, Jun 30, 2023 at 01:34:44PM +0200, Geert Uytterhoeven wrote:
> > --- a/drivers/mfd/Kconfig
> > +++ b/drivers/mfd/Kconfig
> > @@ -1183,12 +1183,17 @@ config MFD_RC5T583
> >           Additional drivers must be enabled in order to use the
> >           different functionality of the device.
> >
> > -config MFD_RK808
> > +config MFD_RK8XX
> > +       bool
>=20
> Is there any specific reason why this cannot be modular, like most (all?)
> of its users that select it?

I don't remember why I made that bool. Tristate should be perfectly
fine. Do you want to send a patch (I will test it of course), or should
I take care of it?

Greetings and thanks for the report,

-- Sebastian

--iqtscgntphb3oqls
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmSfI3IACgkQ2O7X88g7
+pqfHQ/+OX906BcLDwv+c9Vj7iD1xMf/jeseVPwosYdbwztaWSudEc2oqnLracEz
qQBXFFZ2oQWA36fWxJfdrEIHW8OgcrkaAQ9IYKUja4qT4mNKEtyfC+xEH1PxTpTd
Elj3lUA9NaLILoR2MN1Q2hTWHmmrevL0P1QEIEAXB2N6+D+fWKNApHvPZDw4eI+R
iD2LLbVjYdmddX88zmZhKnAB4vuCZp/ReMR6Nki+eF/rCH3iR9S6gUomMFgW11Zq
fwxTKYBlxxBz439pj7o+zgiZf3Dbk6oyv74FbsCgiP4oeNjrcrQqxUX28vwi8NwP
FiCGdlCjY1gC4KwN4FqFBElQhKYJfU/0lxX60JUXh8EcDk3EVXatZUfSW+tfJFJw
DZ49WcCb/RjvKsx9Q5vgK432RV0avSLgarHhFmRfs83c4Tj1CbormHQs2iZPZwyt
n0R3mN+oI1v+ucvtGETOmICww36sWdf1nniscIKayv7FsOIqQlpF+WXB6or+UTUB
1RfrfcdsexLjNaJPHZ93Yfnkb1DQfOKEn9yYY1IUGpPBPH7vz2FoDdjrt2LYq6xR
niQNPMqzD2KO/GYhGA2ipu4paWPvuZE+UDCCjWZiC+knxFL1zBf5eQzoeOQqFdTk
tJovpTIl42CKM1oKm0MqAy1+lOqeWbkmJ7aHIkEB01Fb26w+3xc=
=iqU3
-----END PGP SIGNATURE-----

--iqtscgntphb3oqls--


--===============5691423485093325282==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5691423485093325282==--


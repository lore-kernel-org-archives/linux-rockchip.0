Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2F70C04A95
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Sep 2022 13:07:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IZPcch3pF3UFXJ8MH8U2A2gmrYWLMaLIqICXhHJww3I=; b=hRYdQwySbQY0TGeaUiWBepnDQ+
	2wXfh65o8YN8G+PH2/CBmGUhkrSMO22G3Fw9DSzvRGvD67a1E8sl6xT0R7VgiJu9t6iKVWjgmunqg
	BLeFa3KlY7BWVyRV3J2LzygDwmcLViMY1KOSlGb6kRyRpkjmZBPxzHKK4KoxzlGUkfuqeq9+S/gDg
	pRFfWD7s2Em2f2BVD9559Km6Dxrl5/Muwg8Ge95lBcTzHSDFqjIpzxcLQH2J5p4CGguEGeBzf37mq
	wzBjAtd69mIjqQ8oiToNPoagsOJBSl9shC7QKlVUdmidQ6ulaZIBPooNc63bhdqeujOMMdgAM2DHp
	bNSrv7vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odWlu-00GQSL-LX; Wed, 28 Sep 2022 13:06:42 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odWlr-00GQQ1-PD
	for linux-rockchip@lists.infradead.org; Wed, 28 Sep 2022 13:06:41 +0000
Received: from mercury (dyndsl-095-033-171-230.ewe-ip-backbone.de [95.33.171.230])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id C26096602289;
	Wed, 28 Sep 2022 14:06:36 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1664370396;
	bh=c9JtjBwjFF79SmCgeSuVKQRi+U2ANa35gBatTDWdXx0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OOelG3G2yNH+GLL44hnU0wzqsyItfNvfy8eFzQKq1odX4RcRFcjdDim/XLNURgyJv
	 +CAYnDW57CdWTzAmA5aLnbeoM/GYE1NGAULfWDTEhasSIt8CIitWPD1G5sXB1AkLHa
	 KAW7kt0aTg9Hj9pP0Nb9DF8S59Alp6kDDy3DvR8N6JADp+zFSRq/1FR8xgx6MYIqR2
	 4w8GS4ZzSZrKtvW1Gb+XdFzKUrbTl7/gCeURe7/L8B26cqpId3HoGFW2MH8U5YuvSn
	 DLge7QGIojTzHD38pPj3kjwZZGB1T25Z45xNLNhs6aAQbeys/WfBZzun1gd7xAQrqh
	 rfYpzC14Y5NjA==
Received: by mercury (Postfix, from userid 1000)
	id 70F9F106033C; Wed, 28 Sep 2022 15:06:34 +0200 (CEST)
Date: Wed, 28 Sep 2022 15:06:34 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Thierry Reding <thierry.reding@gmail.com>
Cc: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	Rob Herring <robh@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	kernel@collabora.com, linux-pwm@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH 1/1] dt-bindings: pwm: rockchip: Add description for
 rk3588
Message-ID: <20220928130634.x5cfkwegwgqer2xx@mercury.elektranox.org>
References: <20220901135523.52151-1-sebastian.reichel@collabora.com>
 <1662059695.095333.2226883.nullmailer@robh.at.kernel.org>
 <20220913091202.2oawzrq2u5iiz6hq@pengutronix.de>
 <20220913141601.fi6pl2xdo4xmtw6t@mercury.elektranox.org>
 <YzQ0jTmJCBwV+x2y@orome>
MIME-Version: 1.0
In-Reply-To: <YzQ0jTmJCBwV+x2y@orome>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_060639_988481_062609BC 
X-CRM114-Status: GOOD (  33.32  )
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
Content-Type: multipart/mixed; boundary="===============5870820987441637053=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5870820987441637053==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="f2ysunquf6nsloxy"
Content-Disposition: inline


--f2ysunquf6nsloxy
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Sep 28, 2022 at 01:48:29PM +0200, Thierry Reding wrote:
> On Tue, Sep 13, 2022 at 04:16:01PM +0200, Sebastian Reichel wrote:
> > Hi,
> >=20
> > On Tue, Sep 13, 2022 at 11:12:02AM +0200, Uwe Kleine-K=F6nig wrote:
> > > Hello Rob,
> > >=20
> > > On Thu, Sep 01, 2022 at 02:14:55PM -0500, Rob Herring wrote:
> > > > On Thu, 01 Sep 2022 15:55:23 +0200, Sebastian Reichel wrote:
> > > > > Add "rockchip,rk3588-pwm" compatible string for PWM nodes found
> > > > > on a rk3588 platform.
> > > > >=20
> > > > > Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> > > > > ---
> > > > > No driver changes required.
> > > > > ---
> > > > >  Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml | 1 +
> > > > >  1 file changed, 1 insertion(+)
> > > > >=20
> > > >=20
> > > > Running 'make dtbs_check' with the schema in this patch gives the
> > > > following warnings. Consider if they are expected or the schema is
> > > > incorrect. These may not be new warnings.
> > > >=20
> > > > Note that it is not yet a requirement to have 0 warnings for dtbs_c=
heck.
> > > > This will change in the future.
> > >=20
> > > Is this a list of *new* warnings, or is the report (somewhat) orthogo=
nal
> > > to the actual change and you just used the opportunity that someone
> > > touched the pwm-rockchip binding to point out that there is some clea=
nup
> > > to do?
> > >=20
> > > > Full log is available here: https://patchwork.ozlabs.org/patch/
> > >=20
> > > Hm, that gives me a 404.
> >=20
> > This is an existing problem with the rv1108 binding.
> > The rk3588 does not have pwm interrupts.
>=20
> Can somebody go and fix that, then?

I assume this will be taken care of with the rk3128 patchset, since
that is affected anyways:

https://lore.kernel.org/linux-pwm/f5dd0ee4-d97e-d878-ffde-c06e9b233e38@gmai=
l.com/

-- Sebastian

--f2ysunquf6nsloxy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmM0RtQACgkQ2O7X88g7
+prpdw/8CDA0maCo1deheKUSy8nfdV6SmgJMk9rAjqdItMm4h+mcp3HE1UBP0YB6
QKATRpGvPYE7fkcxCNQouS7jpcZUy/wKeVrZBMRQ/KFa+FhaqxMi3s71GO43EH82
pLegd52EYc5FrKJnEPDi9zWjEDw/qrQcrTT8xp4bFfeuo+Fpwl/xB6CniCCQhOVo
rvI2s/SVjZjBSj4XUF4pkbEFBOwZorajRS/apfYUceMStner4ORF4ltxQFVFeXrq
oVxRnkrgXCVhmHRRtyyXAsLtQ/7AciTZC0VlyQM9/f/Il97YKgYOX9r/YfjnvKlG
vLFEFHZHLvt8bpgAHNlQIZSR5LifKmZFsOcegd3wuTfXETtFAYPK9p2oExp8WWJf
FbTQD6thpSHOpT4ZvFl/UT4s5izLQAa4nfSSIVrMOpk/9ZHgrSJegrBK6LneJE1Z
0JKAxS8JyF4R5iNVPH4j/UsAhrbeCfz/NY8XD0AFMMRiYit+75VwaUa3lPAYqW+6
NCct/u7HPCRvqqek+qlbs17jO1XQPwEGmIF9ukgf36bPC0mGEv/ZS9C45KrEaB3l
hvJ0ZQ7DglTsB5i8ejmNj2zMq1eU+Hn/zMQILcraiVi46+1adEHjQVFuZBKu+Ayf
SY+pydPmmBBCSJS5bkhYEF7UHGW/fMDew7zLIAziw68K2tWAt44=
=n053
-----END PGP SIGNATURE-----

--f2ysunquf6nsloxy--


--===============5870820987441637053==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5870820987441637053==--


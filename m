Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10C78C433FE
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Dec 2021 12:54:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ACxxfQt5ViQ4j2eeN/gweoDR8LccnsbbAZxzNqMGoVU=; b=LYFoOKThhkm2tMGgK+52so3C6G
	0EIUadYVxrqLgbaom5U39KYDbWcMrvp5cVDj2NFli174TI9ycCBmejojTfgS9M+FCzlvwsnnXa8eO
	0s/g3Z0XHOGT2Ut4uFA+9GCqWPwpCWhyJVDwzolpVHZRdGSYAZOArz7f2V+gV+sM1spngMOy6Eq7a
	xr8cUeztaRDiHVZJN1uU0HJa1v+wkd9Zx++lozLdoGk+eByy3+97wXPwbUMgj+Qf2hdHE/pmSdDSI
	97yqhagdn9/LZf4CFB0U1LOlaUAByoOQNhNlkYyQ1uHsdHgDYYzwH7YiBPkCPOX9C8kzw5HfyAfwm
	3N69oYGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mzIBJ-002OjC-Jc; Mon, 20 Dec 2021 12:54:21 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mzIB7-002Ogr-0y; Mon, 20 Dec 2021 12:54:10 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id 6B066CE1025;
 Mon, 20 Dec 2021 12:54:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DC5C5C36AE8;
 Mon, 20 Dec 2021 12:54:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1640004843;
 bh=kzuh09N3lZQB4P3sI+KA33n3XKhJzPKm5UGyELBpO8U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GmeTQzmC7UyLbLb52JVSzYdlvvXfQ3/r2hvC/5bxUSlrNZlChIqHJFyg6O1tqKTKE
 gBnkeG1OTazQOzGv504GaUv1bZQf19l2u1qhn3inoxWjxY5fxnQe5VF3MYyfmyot4s
 p6UiVKbAhZlBdKHt7tOkQR3thKQPERpAunQThW2870fxstB5lVB7Baoa1T6FpRFo60
 QaqOMahYD1AuMGst4548Dt/hXnTzVm+rl/9MxOf3o7yMDHVHeD1nGgQlwrfpTvx/8d
 C1bKCdiXNf34bhja5k68BZBwVS7vbHfdi4c2ZvFNuTiqTABJUI/Xh2a0fswB6TsRaZ
 APsJdlx8phUxg==
Date: Mon, 20 Dec 2021 12:53:58 +0000
From: Mark Brown <broonie@kernel.org>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Heiko Stuebner <heiko@sntech.de>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 kernel@pengutronix.de, Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 3/4] soc: rockchip: power-domain: Add regulator support
Message-ID: <YcB85mzJHrirUEDA@sirena.org.uk>
References: <20211217130919.3035788-1-s.hauer@pengutronix.de>
 <20211217130919.3035788-4-s.hauer@pengutronix.de>
 <20211220094435.GU6003@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <20211220094435.GU6003@pengutronix.de>
X-Cookie: Christ was born in 4 B.C.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211220_045409_270260_CF53B86F 
X-CRM114-Status: GOOD (  19.35  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1411336503576693026=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1411336503576693026==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="XszC84mLEk37nJZH"
Content-Disposition: inline


--XszC84mLEk37nJZH
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Dec 20, 2021 at 10:44:35AM +0100, Sascha Hauer wrote:

> Well, all true and on one specific board the regulator is indeed not
> optional. However, on all other power domains that don't need a
> regulator and all other boards and all other SoCs this driver is used we
> now get:

This seems unlikely to be board specific, if the chip requires power the
chip requires power.  If there are power domains that don't take
external supplies then they shouldn't be requesting any regulators and
should be fixed.

> [    0.185588] rk-power-domain rk-power-domain.8: supply power not found, using dummy regulator

It seems vanishingly unlikely that the SoC takes a single supply called
"power" shared by everything in the SoC but that is what the code
appears to be requesting - the power domains should be requesting the
supplies they actually use, and as ever the supplies should be named
such that someone looking at the schematic can hook them up.  The
general recommendation is to use the names used in the datasheet.

> I wonder if devm_regulator_get() is really the right function here. Or
> should the message be dropped?

No, the issue is that the client driver is badly written and needs to be
fixed.  In general it's probably better to have error handling than not.
If you're getting lots of warnings about problems it's probably due to
there being problems.

--XszC84mLEk37nJZH
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmHAfOYACgkQJNaLcl1U
h9CAiAf/d7URmt7NhkFddipGuDRk/W4F+n2jP91AoaNVe99y7lDjy0GJJSX9zRZl
OMeUAWcGZJ9H8c9eM/HJL5P3SBHsYJHNoWjiU586oFrNxboBTU693LlvKowt5or0
JCB8ypHP0eFVLCAiazgJjD68rWMtUm51AnsaKkr/ej2SN8SFG6eVVEP8VapKBfpr
WMkrTTHORkhnuV7cp9mr9H5vprg88gBibRAjYuRlh92SPOug7UdCA0F23nRsH77X
k40ZdPjEbnLCAlegY+Ns5zgvXAqczaiAyDBOvJZK1cD3YKeHRiZs4KeHg8ipLXd3
7T0MdsJVGXV6ekMP4tZG0eagDp2y/w==
=cc56
-----END PGP SIGNATURE-----

--XszC84mLEk37nJZH--


--===============1411336503576693026==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1411336503576693026==--


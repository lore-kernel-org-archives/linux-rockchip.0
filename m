Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C1EDC54798
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Feb 2024 13:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nk2foUajBq1hnRWDcsTvvNhwXDwd0aM4Bfal/0hEuAE=; b=TaaY8+1ZdjcIYQ0TfYyO5k17+s
	VwyTNkSX/PW0Fm67T2AlOyhI3xrEDxXUGzu3QJKqNOBPlNhjLF7vdQPLLWyNNW7S9AFT0bjNuD+Pn
	EPaQrF/8ks/8xMl/EAAPCDyutsG2NM12MS7poXbCSSdYdMAu/S0lYZr5NpwJVh5/cWFAKwYz01AHj
	VKRIEJ8/X55qss+kq1UuEKgEVEgMIXrndxSm+7Be+zvw2Yj/oxefp3J26bBipQU6PtmtJJLCao+iV
	4VtQatYXhVis4wgX0M9MXfCbeDQi0cxnKizBInHKsPX676g6nQijBaRUXMdaBrtcs1l70IBZHScCq
	qQM2y0Xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rexuC-00000005TPe-2UQY;
	Tue, 27 Feb 2024 13:54:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rexu9-00000005TOD-21Kk
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Feb 2024 13:53:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1rexu0-000786-Io; Tue, 27 Feb 2024 14:53:48 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1rexu0-003DBW-16; Tue, 27 Feb 2024 14:53:48 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1rextz-00CUG3-34;
	Tue, 27 Feb 2024 14:53:47 +0100
Date: Tue, 27 Feb 2024 14:53:47 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 0/2] arm64: Add basic support for QNAP TS-433
Message-ID: <psc3hwvp4ibbdxickziwbtwhj7ti3pfyivkqzsx2hbaixduqan@xnl2mbasdyor>
References: <cover.1709034476.git.ukleinek@debian.org>
 <2865246.yaVYbkx8dN@diego>
MIME-Version: 1.0
In-Reply-To: <2865246.yaVYbkx8dN@diego>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240227_055357_526463_E9DE683F 
X-CRM114-Status: GOOD (  21.55  )
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
Content-Type: multipart/mixed; boundary="===============5928316105473590850=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5928316105473590850==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5eorqsrfd6f3xyvi"
Content-Disposition: inline


--5eorqsrfd6f3xyvi
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Heiko,

On Tue, Feb 27, 2024 at 01:26:19PM +0100, Heiko St=FCbner wrote:
> Am Dienstag, 27. Februar 2024, 12:52:35 CET schrieb Uwe Kleine-K=F6nig:
> > this is an initial dts to support QNAP's TS-433 NAS. It's enough to
> > start the debian installer with a custom built kernel (original Debian
> > kernel fails to open a console, didn't debug that yet) and access HD,
> > eMMC, RTC and network.
> >=20
> > There are still some missing bits and pieces, but to make people aware
> > there are efforts to support this machine and so prevent duplicate work,
> > I think it makes sense to add the dts in its current form already.
>=20
> woohoo and yes we're adding support for not 100% supported boards
> all the time, so adding basic support and extending it later is fully ok.
>=20
> For people thinking about "following along at home", how much voodoo
> is involved to make the device boot said Debian installer? ;-)

I'd ask these people for some patience as I intend to document the
details in the Debian wiki.

For those who are not that patient, here comes the short version:
I compiled v6.8-rc1 with this patch, put the resulting kernel image
(Image) and device tree into /srv/tftp, together with the initrd[1] from
Debian and then typed in U-boot (using the vendor version):

	setenv laptop 192.168.144.173
	setenv bootargs ${bootargs} clk_ignore_unused ignore_loglevel
	i2c dev 0; i2c mw 0x20 0xf4 0x10; i2c mw 0x40 0x00 0xa3; run phy_cmd
	dhcp ${fdt_addr_r} ${laptop}:rk3568-qnap-ts433.dtb
	dhcp ${kernel_addr_r} ${laptop}:Image
	dhcp 0x0b100000 ${laptop}:debian/20240222-02:09/initrd.gz
	booti ${kernel_addr_r} 0x0b100000:$filesize ${fdt_addr_r}

Feel free to ping me on irc if you have further questions.

Best regards
Uwe

[1] I used
https://d-i.debian.org/daily-images/arm64/20240222-02:09/netboot/debian-ins=
taller/arm64/initrd.gz

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--5eorqsrfd6f3xyvi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmXd6WoACgkQj4D7WH0S
/k4uRQf/ZJpH7lOmJ1xnFUma+kTvkqyAQo7BhPHL32Al08mYBmipvz96nY5+843Y
LtDQh/dj1zWO0idAK+jWUv5HE0MKNl1BJNccRK1T5w6hwh4O+CGS0ZETUPZbaBE9
1qh0PXVfwnNPNRtN2W8rNyhJm+yv7kbW5d6bvs5/nG0lK7soWplj0DTvZpXsTnls
2G7oe5TN0dTOc3RZJW8Q/wHYV5rpm1DhLadOjw3fZ+CTUXIwvKUMSitLbGZgsKg+
hO8GC/LAGm11ZPtbvHSs9PMr1e0isWWRoVL9BQI0SHjgcRm/NL2q8Cz6ZGnAba/D
QD9q27rLQTJIseKMvSsCCHNBRWk3hg==
=RmP1
-----END PGP SIGNATURE-----

--5eorqsrfd6f3xyvi--


--===============5928316105473590850==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5928316105473590850==--


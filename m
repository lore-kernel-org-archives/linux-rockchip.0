Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0C5BD6EC04
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Nov 2024 12:46:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:From:Subject:Cc:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YBVOhm82n7gtZNOHVuJIx31IqMUgEI9H2L2VEl2BqbU=; b=g9VPuOvVsyS9OCd4VtXCoigyMK
	l+vJ78mCNZdvpEOnM2cDub0OSdWYei+nqOOz3jt4yHq5V/yrPNPN8BQ5TSkyTM1wGVjIkRpcY3NKS
	R487nlqlI9gIMvSjjHechwj7NKPC5mEY8WmFdMZdNMsyjQgrnym4IWvBJhMCdYRVmSBc85iu/piPk
	+0iGi8dbz/lq6s96VlMoj7+uoHRGElp8M2E1rdAfqMaVyLqQ4dpL3r2Gd6N0pq23y/pPB0ah6uuSZ
	v5F/BLBu8qsKl2LXkCfP7aeBCgYWe5R1iJjPWE7I4X2wUJzsB7Xu1yphcszgNXmMzVrECrvCI98PK
	O4ci18mA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tH0OK-000000006d9-4BGH;
	Fri, 29 Nov 2024 12:46:36 +0000
Received: from out-176.mta1.migadu.com ([95.215.58.176])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tH0OI-000000006cG-2jYZ
	for linux-rockchip@lists.infradead.org;
	Fri, 29 Nov 2024 12:46:36 +0000
Mime-Version: 1.0
Date: Fri, 29 Nov 2024 13:46:12 +0100
Message-Id: <D5YO8QULYWDR.I3T73UCTD0WF@cknow.org>
Cc: <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
 <macromorgan@hotmail.com>, <jonas@kwiboo.se>, <andyshrk@163.com>,
 <devicetree@vger.kernel.org>, <linux-rockchip@lists.infradead.org>,
 <dsimic@manjaro.org>
Subject: Re: [PATCH] arm64: dts: rockchip: add support for device tree
 overlays for Radxa devices
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, "FUKAUMI Naoki"
 <naoki@radxa.com>
References: <20241129002419.60404-1-naoki@radxa.com>
 <1952472.6tgchFWduM@diego>
In-Reply-To: <1952472.6tgchFWduM@diego>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241129_044634_830651_8D2BB7AE 
X-CRM114-Status: GOOD (  20.20  )
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
Content-Type: multipart/mixed; boundary="===============6218442057403427297=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============6218442057403427297==
Content-Type: multipart/signed;
 boundary=b3737e8e694637f47ed46da814853505c287bb3020cc139beb4cb6d520d9;
 micalg=pgp-sha256; protocol="application/pgp-signature"

--b3737e8e694637f47ed46da814853505c287bb3020cc139beb4cb6d520d9
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi,

On Fri Nov 29, 2024 at 1:20 PM CET, Heiko St=C3=BCbner wrote:
> Am Freitag, 29. November 2024, 01:24:19 CET schrieb FUKAUMI Naoki:
> > since Radxa devices use device tree overlays[1][2][3], make base .dts
> > support them.
>
> this essentially doubles the sizes of generated DTBs.
>
> In previous iterations there were concerns that this might overload
> allocated memory in legacy firmware that might still run on people's
> devices.
>
> I'm not sure if someone did look deeper into that meanwhile and you
> can't of course not require people to update u-boot just for a kernel
> upgrade. Hence previous overlays do not enable those options but instead
> depend on "distributions" to handle that.
>
> So I'm definitly not sure how to proceed with this.

In my recollection this was brought up when the restructuring of the arm
(not arm64) dts 'tree' was discussed.
So hopefully Rob can recall the details?

But IIRC, the objection was about enabling it *globally* and instead it
should be done more granually, be it on the SoC manufacturer level
('rockchip') or on the SoC ('rk3588') or on the board level as is
proposed in this patch.

e925743edc0d ("arm: dts: bcm: Enable device-tree overlay support for RPi de=
vices")
is where it got enabled for RPi devices

I can't speak for the Debian kernel team, but the general approach is:
get it fixed (or in this case enabled) *upstream*.
That's why Aurelien Jarno (who's a DD) send it upstream.

HTH,
  Diederik

> > [1] arch/arm64/boot/dts/rockchip/rk3588-rock-5b-pcie-ep.dtso
> > [2] arch/arm64/boot/dts/rockchip/rk3588-rock-5b-pcie-srns.dtso
> > [3] https://github.com/radxa-pkg/radxa-overlays
> >=20
> > Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> > ---
> >  arch/arm64/boot/dts/rockchip/Makefile | 28 +++++++++++++++++++++++++++
> >  1 file changed, 28 insertions(+)
> >=20
> > diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dt=
s/rockchip/Makefile
> > index 86cc418a2255..cac3f39af82a 100644
> > --- a/arch/arm64/boot/dts/rockchip/Makefile
> > +++ b/arch/arm64/boot/dts/rockchip/Makefile
> > @@ -1,4 +1,32 @@
> >  # SPDX-License-Identifier: GPL-2.0
> > +
> > +# Enables support for device tree overlays for Radxa devices
> > +DTC_FLAGS_rk3308-rock-pi-s :=3D -@
> > +DTC_FLAGS_rk3308-rock-s0 :=3D -@
> > +DTC_FLAGS_rk3328-rock-pi-e :=3D -@
> > +DTC_FLAGS_rk3399-rock-4c-plus :=3D -@
> > +DTC_FLAGS_rk3399-rock-4se :=3D -@
> > +DTC_FLAGS_rk3399-rock-pi-4a-plus :=3D -@
> > +DTC_FLAGS_rk3399-rock-pi-4a :=3D -@
> > +DTC_FLAGS_rk3399-rock-pi-4b-plus :=3D -@
> > +DTC_FLAGS_rk3399-rock-pi-4b :=3D -@
> > +DTC_FLAGS_rk3399-rock-pi-4c :=3D -@
> > +DTC_FLAGS_rk3399pro-rock-pi-n10 :=3D -@
> > +DTC_FLAGS_rk3528-radxa-e20c :=3D -@
> > +DTC_FLAGS_rk3566-radxa-cm3-io :=3D -@
> > +DTC_FLAGS_rk3566-radxa-cm3.dtsi :=3D -@
> > +DTC_FLAGS_rk3566-radxa-zero-3e :=3D -@
> > +DTC_FLAGS_rk3566-radxa-zero-3w :=3D -@
> > +DTC_FLAGS_rk3566-rock-3c :=3D -@
> > +DTC_FLAGS_rk3568-radxa-cm3i.dtsi :=3D -@
> > +DTC_FLAGS_rk3568-radxa-e25 :=3D -@
> > +DTC_FLAGS_rk3568-rock-3a :=3D -@
> > +DTC_FLAGS_rk3568-rock-3b :=3D -@
> > +DTC_FLAGS_rk3588-rock-5-itx :=3D -@
> > +DTC_FLAGS_rk3588-rock-5b :=3D -@
> > +DTC_FLAGS_rk3588s-rock-5a :=3D -@
> > +DTC_FLAGS_rk3588s-rock-5c :=3D -@
> > +
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D px30-evb.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D px30-engicam-px30-core-ctouch2.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D px30-engicam-px30-core-ctouch2-of10.d=
tb

--b3737e8e694637f47ed46da814853505c287bb3020cc139beb4cb6d520d9
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZ0m3lwAKCRDXblvOeH7b
bqfCAQDRKJuB0M35DzSoeDImZ2gW4ojJSeHiYBG+Q8bw/n856QD/ZtSZbyu4WEzY
gQgaaYd78PTfM8jaqBNH//CHdbrfLA0=
=cbFW
-----END PGP SIGNATURE-----

--b3737e8e694637f47ed46da814853505c287bb3020cc139beb4cb6d520d9--


--===============6218442057403427297==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6218442057403427297==--


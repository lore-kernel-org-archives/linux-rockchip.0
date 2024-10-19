Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8AEA3D3C90C
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Oct 2024 18:11:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:From:Subject:Cc:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wMpJ4vYQhfniz4UPy0lBVzKZ9DnIerWKk5aT/xtvRvU=; b=zi/Ffjx0kWn/k38qCmDxbXGuR3
	uaj9HtpZidI1xWnE5IeezVLj4BIuQOfG1BInuePn4JSfzdUkkuQVuC7FycGM9IQa5mcNhF8vkcaC8
	/TGwoBLII5R+tg3e6B0McMUQMXb8R4Aou3jNzdbXb6DwCjy5aunRdPZqSUGJPo7eqb3wNB6ESxA5H
	yWpUARdQZx2SEnTzGIINvywhnsCjilSnl62V2xlT+vbXLRX5ITPYzKnXQyqNFsYuJxH4b0ZbPX8ka
	21xhX/C9fM+75ALmtTx11dXvGcjJFxkXTYKVdBV+bGgQ/KhaPpsEW9c/dn0iMkzSl48vG8ZJPs6yB
	hGcii90Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2Dul-00000003ksX-2nR6;
	Sat, 19 Oct 2024 18:10:59 +0000
Received: from out-188.mta1.migadu.com ([2001:41d0:203:375::bc])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2DtC-00000003kcZ-0I6V
	for linux-rockchip@lists.infradead.org;
	Sat, 19 Oct 2024 18:09:25 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1729361355;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=f3RtjINZGSgrKRy2wNDqwWrIHrIIPJ53FJ8P+x6DkhI=;
	b=AQsNfew+K6F+CLgKgr50utpQXBypfTUxchrOeI73zMAcWok/7hgMhCo6fub0UnDP6iuk5d
	ZutrSF4lZ5udnjXawQlruQMscn5kBPnMmo1oBfOpCu+wW68/QujudwXWre10YG4AD1vj8j
	Cz5ZOjRz+xwUEhUCEYXsnPJme9hUa3DABRy4c7ypl0BcmJAzWRPT7n3udouF89ohdHBCVC
	i4/6mGEHDVrbMtmh/v6HKjrwxqyfkT3jfGi8R99cBpi+eAxk9HRv0kFBqsBeqoITrqq1ya
	3OjTbRJemUVysfTQbgYf1LvJ8i1Af0xMBNNQFjB2gxCVywk8mf1pyN/Ye/Y5nA==
Date: Sat, 19 Oct 2024 20:09:02 +0200
Message-Id: <D4ZZFL98AMFI.1TDPL2DJPSQ3D@cknow.org>
Cc: <heiko@sntech.de>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>
Subject: Re: [PATCH 2/3] arm64: dts: rockchip: Prepare RK356x SoC dtsi files
 for per-variant OPPs
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Dragan Simic" <dsimic@manjaro.org>,
 <linux-rockchip@lists.infradead.org>
References: <cover.1728752527.git.dsimic@manjaro.org>
 <cc2aed3116a57dd50e2bb15ab41b12784adfafe3.1728752527.git.dsimic@manjaro.org> <D4U30AUOH6UR.1QPH47KN5EWE4@cknow.org>
In-Reply-To: <D4U30AUOH6UR.1QPH47KN5EWE4@cknow.org>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241019_110922_982772_53514C9F 
X-CRM114-Status: GOOD (  10.94  )
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
Content-Type: multipart/mixed; boundary="===============7357137841023812774=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============7357137841023812774==
Content-Type: multipart/signed;
 boundary=eb9158f3fd3022c747c09e202d1d0a175e416ede785f1ca7d155a4b18fff;
 micalg=pgp-sha256; protocol="application/pgp-signature"

--eb9158f3fd3022c747c09e202d1d0a175e416ede785f1ca7d155a4b18fff
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi Dragan,

On Sat Oct 12, 2024 at 9:41 PM CEST, Diederik de Haas wrote:
> On Sat Oct 12, 2024 at 7:04 PM CEST, Dragan Simic wrote:
> > =20
> > -&pipegrf {
> > -	compatible =3D "rockchip,rk3566-pipe-grf", "syscon";
>
> This seems unrelated?
>
> > +&cpu0 {
> > +	operating-points-v2 =3D <&cpu0_opp_table>;
> >  };
> > =20
> > -&power {
> > -	power-domain@RK3568_PD_PIPE {
> > -		reg =3D <RK3568_PD_PIPE>;
> > -		clocks =3D <&cru PCLK_PIPE>;
> > -		pm_qos =3D <&qos_pcie2x1>,
> > -			 <&qos_sata1>,
> > -			 <&qos_sata2>,
> > -			 <&qos_usb3_0>,
> > -			 <&qos_usb3_1>;
> > -		#power-domain-cells =3D <0>;
> > -	};
>
> This seems unrelated to me and possibly a functional change?
> If this was intended, then a description in the commit message would be
> nice why this is appropriate and possibly moved to a separate patch?
>
> > +&cpu1 {
> > +	operating-points-v2 =3D <&cpu0_opp_table>;
> > +};
> > +
> > +&cpu2 {
> > +	operating-points-v2 =3D <&cpu0_opp_table>;
> >  };
> > =20
> > -&usb_host0_xhci {
> > -	phys =3D <&usb2phy0_otg>;
> > -	phy-names =3D "usb2-phy";
> > -	extcon =3D <&usb2phy0>;
> > -	maximum-speed =3D "high-speed";
>
> This also looks unrelated and a functional change?
>
> > +&cpu3 {
> > +	operating-points-v2 =3D <&cpu0_opp_table>;
> >  };
> > =20
> > -&vop {
> > -	compatible =3D "rockchip,rk3566-vop";
>
> This also looks unrelated?

It turns out I was wrong.
The elements I thought were removed, aren't removed.

Sorry for the noise.

Diederik

--eb9158f3fd3022c747c09e202d1d0a175e416ede785f1ca7d155a4b18fff
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZxP1wwAKCRDXblvOeH7b
bnomAQCauVO5HYPsaXNdYa5Tz50X1ZlJC7CDUvnlwWrQif3qFQEApyYcsmXRi4Xv
ePPHwirwTWwZXt6w4Rr5ksGu3kE2Rg4=
=NC6L
-----END PGP SIGNATURE-----

--eb9158f3fd3022c747c09e202d1d0a175e416ede785f1ca7d155a4b18fff--


--===============7357137841023812774==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7357137841023812774==--


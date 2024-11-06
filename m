Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2BD6D44D79
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Nov 2024 14:13:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:From:Subject:Cc:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DFHOF6WHtTMx9Ci4Nx6HqQ913yrjqwc3XEHIcJcUGK4=; b=y/9mgF4tG9kE9kq3kSUg7GvnDJ
	c4VMDVQ1Yiv1B4k1Z9XGrHMGw5s4h1Jk6DvCsnplKnXcJ3PpnX1NgrZCzPkfnV+Wbrtvl/fm4uMFe
	r96uQEJmi+Ie+IErhaSFM2wJ+MifVX13kn5n9zIgCpCMeIUKQptrQEK9T1Zx4SJVoWiP2hgWdEdvb
	tm5r7qKuBWhz6gOmEe0swER3BKtDvA+vbtMzltE9PQ6/XjKOWZ0WN5iQJFkrcavc+AL0MmjO3D4WV
	XZ0JjGKTR6sFYgPLqBv8VFe1W0C55jh1sOcd4j9dbD/6IdVOTdR6AXnqZtDQO8ozn3iP72eFp6UjM
	VCovHJmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8gmh-00000003YPb-06j6;
	Wed, 06 Nov 2024 14:13:23 +0000
Received: from out-177.mta1.migadu.com ([2001:41d0:203:375::b1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8gWb-00000003VmP-3BSs
	for linux-rockchip@lists.infradead.org;
	Wed, 06 Nov 2024 13:56:47 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1730901402;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=NHHYML0BEoPmu07uEuVWCMR6UzMbCnRMamSxbmnkn0o=;
	b=civDo1qoh0TP45iFIHWo4U31+mpvHe8lkbDh3GuEa0ZZmzQA7y+buDTUPY8xijrRBFSqrA
	zb3ECm1xYuV+iBNrn1zt5jb/GJLTMj06G+kgpeUfKzmgfNYRKy3DE3naaYSbrmmPFeYAg/
	9x2nE4nLfvRsjInfpYCYoa0zGncOLDL2YA3n0tAYHybQEsTG6oqYJmsL4ywlHV9x6iHVij
	txY05WsCJ9qvX8B72j01ZStfRUv20+6gxHIhIWisOLMziav2EQ8BjtmVp0OHdG/qHfOb4Z
	V3j4BzFKr+Owb0XOY3mlV9SJIJCzEdOJgxJIINdOjazassPtDa5APqVneEMwag==
Date: Wed, 06 Nov 2024 14:56:31 +0100
Message-Id: <D5F5C1RWVHG5.TSHPO29TXYEF@cknow.org>
Cc: <quentin.schulz@cherry.de>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 "Heiko Stuebner" <heiko.stuebner@cherry.de>
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: add mipi dcphy nodes to
 rk3588
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Heiko Stuebner" <heiko@sntech.de>
References: <20241106123758.423584-1-heiko@sntech.de>
 <20241106123758.423584-2-heiko@sntech.de>
 <D5F525WYXDO1.3I92CTU67RVF6@cknow.org>
In-Reply-To: <D5F525WYXDO1.3I92CTU67RVF6@cknow.org>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241106_055646_117620_05187659 
X-CRM114-Status: GOOD (  15.54  )
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
Content-Type: multipart/mixed; boundary="===============1222879994121727145=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============1222879994121727145==
Content-Type: multipart/signed;
 boundary=012b4e88e5ada0d79e0d754e24911a278ebf87aafc76bd346a02ee35533f;
 micalg=pgp-sha256; protocol="application/pgp-signature"

--012b4e88e5ada0d79e0d754e24911a278ebf87aafc76bd346a02ee35533f
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi,

On Wed Nov 6, 2024 at 2:43 PM CET, Diederik de Haas wrote:
> On Wed Nov 6, 2024 at 1:37 PM CET, Heiko Stuebner wrote:
> > From: Heiko Stuebner <heiko.stuebner@cherry.de>
> >
> > Add the two MIPI-DC-phy nodes to the RK3588, that will be used by the
> > DSI2 controllers and hopefully in some future also for camera input.
> >
> > Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 42 +++++++++++++++++++
> >  1 file changed, 42 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64=
/boot/dts/rockchip/rk3588-base.dtsi
> > index 51ba7563f7d0..8c95c56e8097 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
> > @@ -576,6 +576,16 @@ sys_grf: syscon@fd58c000 {
> >  		reg =3D <0x0 0xfd58c000 0x0 0x1000>;
> >  	};
> > =20
>
> No power-domains property?
> RK3588 TRM v1.0 part 1 page 1097 has ALIVE(PD_BUS) for
> MIPI_DC_PHY0~MIPI_DC_PHY1

Please ignore. They're defined in patch 2 of the series.

Cheers,
  Diederik


--012b4e88e5ada0d79e0d754e24911a278ebf87aafc76bd346a02ee35533f
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZyt1kwAKCRDXblvOeH7b
btIaAP9GEyWWHj2Ucfg8SHEqGPFXB1DOlzMCnFSxDRzE8HkkHQEAoDu8i0KMPRAh
xQ0hirMyEoP9TjRU/1stf0TaofvvzQQ=
=oNr/
-----END PGP SIGNATURE-----

--012b4e88e5ada0d79e0d754e24911a278ebf87aafc76bd346a02ee35533f--


--===============1222879994121727145==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1222879994121727145==--


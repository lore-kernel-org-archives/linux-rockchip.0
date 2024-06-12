Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF71CC27C53
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Jun 2024 22:50:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ve/XGdRw7B7kOosbOex3QAVR2yaR0uG/rnEXOELqZOE=; b=BdIZnrVGXFJIXMunQfPafUXTE1
	j0lKAizrr+76PnVxqnM7WH10BoQZ6B8AEQ006kHez2K0zGe9KNz7MHuIwWSAPZwn0rV8ObOetyU4J
	+6kf9rN8McSjVclKJmHrkcAf4hF+oUk3KN8skE85G8/ahCH5j1v9c9CSDDRRbAJbZbhtim+o41D60
	JAosNj5ZbpUTUHBG8M0Ya0yyLrAo+GgDMgzvlVMotxXVq7tUBCKThoG7wL1R5IHbt44ycUM4hyBr9
	g+zfk4WWt16hmKHxg88fEZl5oZq0nFsxkyciSNFgNYeJt2cwFCUnVNELf2GuAl7IjeYdZjCQsPBuU
	5E1ywDSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHWnK-0000000ENzx-3e2B;
	Wed, 12 Jun 2024 22:50:18 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHWnG-0000000ENzG-30LV
	for linux-rockchip@lists.infradead.org;
	Wed, 12 Jun 2024 22:50:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1718232613;
	bh=nQBUQxKVLaOTYlGiXMpfNNkyEXmMpY+rvHsBQVfUZfU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=M03AXqp+0rW3ICY6A8JD8IoVgo1bFtXKycx+4AuMAaSB3Xx9db4TbfBYN8zIqL1aM
	 aHJXiD00mhL6C42dIfMk7SzLj13Lago4wa1/ADh9BRqtdOjjt2dTuxr2BWr/6EUZDY
	 m0iRj5spDVMBHCHupZY+uJ+lfiv/8GGHMd+8qJ0tJPG2njsvx/O7zhmtssO53x64/o
	 SbXHXzO7jfha2HOqbXRxKfTSXxtPN0IWAriKrG6TapdoEtxhftEBtoTbzVN5dIwfUm
	 BFZf7iIOlklNE8pGExqolo1E8m6ywLtN0BB2E2iL58XT0s6hP8D960RrF7wrmPKjGj
	 s5ZiTbtWcmmwg==
Received: from mercury (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 2DE7337813C0;
	Wed, 12 Jun 2024 22:50:13 +0000 (UTC)
Received: by mercury (Postfix, from userid 1000)
	id 9AC8E10608F7; Thu, 13 Jun 2024 00:50:12 +0200 (CEST)
Date: Thu, 13 Jun 2024 00:50:12 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Diederik de Haas <didi.debian@cknow.org>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, 
	Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Jianfeng Liu <liujianfeng1994@gmail.com>, 
	Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>, Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
	linux-media@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	kernel@collabora.com, Hugh Cole-Baker <sigmaris@gmail.com>
Subject: Re: [PATCH v5 5/5] arm64: dts: rockchip: Add VPU121 support for
 RK3588
Message-ID: <r7zxxruucz5agn4wjyugzn6rblodw47n5hufooysx773ub6ccl@ni7l6q2e6d3y>
References: <20240612173213.42827-1-sebastian.reichel@collabora.com>
 <20240612173213.42827-6-sebastian.reichel@collabora.com>
 <4207056.GSNtieVc0Q@bagend>
MIME-Version: 1.0
In-Reply-To: <4207056.GSNtieVc0Q@bagend>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240612_155014_919813_757D3C95 
X-CRM114-Status: GOOD (  14.04  )
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
Content-Type: multipart/mixed; boundary="===============1417180851077067263=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1417180851077067263==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wfg47polgte7e7hz"
Content-Disposition: inline


--wfg47polgte7e7hz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Jun 12, 2024 at 08:10:30PM GMT, Diederik de Haas wrote:
> On Wednesday, 12 June 2024 19:15:45 CEST Sebastian Reichel wrote:
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> > b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi index
> > 9edbcfe778ca..e7e1b456b9b9 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> > @@ -1239,6 +1239,27 @@ jpeg_enc3_mmu: iommu@fdbac800 {
> >                 #iommu-cells =3D <0>;
> >         };
> >=20
> > +       vpu: video-codec@fdb50000 {
> > +               compatible =3D "rockchip,rk3588-vpu121",
> > "rockchip,rk3568-vpu"; +               reg =3D <0x0 0xfdb50000 0x0 0x80=
0>;
> > +               interrupts =3D <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH 0>;
> > +               interrupt-names =3D "vdpu";
> > +               clocks =3D <&cru ACLK_VPU>, <&cru HCLK_VPU>;
> > +               clock-names =3D "aclk", "hclk";
> > +               iommus =3D <&vpu_mmu>;
> > +               power-domains =3D <&power RK3588_PD_VDPU>;
> > +       };
> > +
> > +       vpu_mmu: iommu@fdb50800 {
> > +               compatible =3D "rockchip,rk3588-iommu",
> > "rockchip,rk3568-iommu"; +               reg =3D <0x0 0xfdb50800 0x0 0x=
40>;
> > +               interrupts =3D <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH 0>;
> > +               clock-names =3D "aclk", "iface";
> > +               clocks =3D <&cru ACLK_VPU>, <&cru HCLK_VPU>;
> > +               power-domains =3D <&power RK3588_PD_VDPU>;
> > +               #iommu-cells =3D <0>;
> > +       };
> > +
> >         av1d: video-codec@fdc70000 {
>=20
> Shouldn't these nodes come *before*=20
> jpeg_enc0: video-codec@fdba0000=20
> As fdb50000 is lower then fdba0000?

Of course. I will fix that in v6.

-- Sebastian

--wfg47polgte7e7hz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmZqJiMACgkQ2O7X88g7
+prMHw/+KUizkP3UyEenXwGeOVPBehTauSjXoE/h2KTeuHCzFFm5Xd/WC7tB5Sz+
6T29txSA4Zla5v3P3dP5lwUNqn0PTU5hkfxw3bR/iAlGRLTD8VcYKW7BdC6ow94l
O1hBX1wGP2D/f6l59SvFpF9j8zWRb10xUuzpVLI+1uwY5n01iJWfzxOBMPeWIeHF
8K+XClLnZChzJklVmjlfxleI5Xl8SUQVMCIufwCiX6+WOcqiYIK1KJF0fqQ7zM34
3xwElK9I1limJXCPMnXbu4g3F6GvA90FGoweVHfjOM27tpqibV2z6fXWXg1ztsJ2
ZMOP1bD6oXXqsm8pOJYfc+ClTS5pXUDT1U6yCcfG4RtKAsIoMg86BAgHlBCxEemF
IwxV1hiwol6/do7EehKJaP1zO8VrvtBFIT4TxyvME0M7SBynP278ixgpRBsGh7c+
/pka7BWJx4srb0wrcoeQ3xNeO+ZkeaA3kWHcQR4gQlNqJaQre5xnVHr07i2EipRB
jNSBNgp11NhA5c3Vn4EMgbydVT0Cspl5B9aBQE6eGrywf9JAzCmOKVKyg7WgR+6x
9hmJ2Q+y3K9IDA3WpfanY3xcakaAnP1M29blchf1TQJipn3+n3eQN27pYqpdCVrt
ru6i1eb1EmZ95k3LtEUOV89WJdvIiJDsFSDkToBNcG+miIhrbvQ=
=UnLa
-----END PGP SIGNATURE-----

--wfg47polgte7e7hz--


--===============1417180851077067263==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1417180851077067263==--


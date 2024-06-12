Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5514AC27C53
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Jun 2024 22:48:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QAcOxntYUad0U4sHZRXbzdaPt0hl4SMD0/HHCJeir+0=; b=OnxirU9VoN11DomQ9u0zzqmp7B
	dPLsn0IhtSOQnByAG0GLs3RVgxwsSBdTSzp+1zsGk6I5cfOW4ztIy3ypRtBUPjuU9LQL4gfpQopzF
	WpZtOPe2zmomyWeoO7P4IzjNRy5MzeqTJfuHzi10Bb2FjWdkxzouFXeLxiZZNojcDqjrnXCiq/jQd
	jXKNaV3QENmhjCM9Eb1V4S8C1mqcq89xzvSgA4HAjA4ibTbUkzAL2a7CPvCuGTSxgrQPUYYBMlXGB
	NQBcRNofm6ZQGr5R6zYNacHz4ullz6Z72zy0zmV/ToMqGnojzvBtnraHioUTTgC1VEUXEdeeV9EQF
	RvEHwiZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHWlK-0000000ENjm-42QZ;
	Wed, 12 Jun 2024 22:48:14 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHWlI-0000000ENjF-0fFv
	for linux-rockchip@lists.infradead.org;
	Wed, 12 Jun 2024 22:48:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1718232490;
	bh=slTU5LrosP9jA6gyzPOGYb5DuXam96FsUPJkA0eU87c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YdI+UfwwjhGGHwfkzRZpKNwsx3EcImH9qhCnEp2E0jOG++nFpzqghc1+uC9lZrGll
	 I52EF6lnKxaXLZ2WL0CiAMYMZ+Y3DC6wFetyoO3qkclPXNfnxNykjyROZmJjYviAhF
	 tCn63PhCI6MmDcWd3Ictp763TaNgYuXdZ8NHxaeHKdn90tI+bRjJpwCtgG8dj/z1aa
	 oKzzu4nCBVWcqFZttRzw7Tt96SSPu7d8M8owhI02Bfl3Fy0pauPZs80TvKS/Rf1r9a
	 6g6Yg0vtj7u93rwMh4lCf9vFy3HFmwOAlIJ1Zbno7dCYDdLqDZ/GzWS0p/8H+2EzrJ
	 c9QvnObf4j5XA==
Received: from mercury (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id E33E737813C0;
	Wed, 12 Jun 2024 22:48:09 +0000 (UTC)
Received: by mercury (Postfix, from userid 1000)
	id 60F5C10608F7; Thu, 13 Jun 2024 00:48:09 +0200 (CEST)
Date: Thu, 13 Jun 2024 00:48:09 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, 
	Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jianfeng Liu <liujianfeng1994@gmail.com>, Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>, 
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCH v5 4/5] arm64: dts: rockchip: Add VEPU121 to RK3588
Message-ID: <z7wc4oukjnniaafrxgigamsubst5g5slkbfkk43fde7t5bh3eb@pxpmoq6d6da4>
References: <20240612173213.42827-1-sebastian.reichel@collabora.com>
 <20240612173213.42827-5-sebastian.reichel@collabora.com>
 <8705ad6ba987334f8941938bef19752942a08ace.camel@collabora.com>
MIME-Version: 1.0
In-Reply-To: <8705ad6ba987334f8941938bef19752942a08ace.camel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240612_154812_359494_EA3D8C2B 
X-CRM114-Status: GOOD (  22.70  )
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
Content-Type: multipart/mixed; boundary="===============0098552923670819670=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0098552923670819670==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7tb3yl2u6zo2ceyh"
Content-Disposition: inline


--7tb3yl2u6zo2ceyh
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Jun 12, 2024 at 04:20:57PM GMT, Nicolas Dufresne wrote:
> Hi Sebastian,
>=20
> Le mercredi 12 juin 2024 =E0 19:15 +0200, Sebastian Reichel a =E9crit=A0:
> > From: Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>
> >=20
> > RK3588 has 4 Hantro G1 encoder-only cores. They are all independent IP,
> > but can be used as a cluster (i.e. sharing work between the cores).
> > These cores are called VEPU121 in the TRM. The TRM describes one more
> > VEPU121, but that is combined with a Hantro H1. That one will be handled
> > using the VPU binding instead.
> >=20
> > Signed-off-by: Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>
> > Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 80 +++++++++++++++++++++++
> >  1 file changed, 80 insertions(+)
> >=20
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boo=
t/dts/rockchip/rk3588s.dtsi
> > index 6ac5ac8b48ab..9edbcfe778ca 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> > @@ -1159,6 +1159,86 @@ power-domain@RK3588_PD_SDMMC {
> >  		};
> >  	};
> > =20
> > +	jpeg_enc0: video-codec@fdba0000 {
> > +		compatible =3D "rockchip,rk3588-vepu121";
>=20
> As discussed earlier, VEPU121 is an modifier Hantro H1 encoder core that =
also
> supports VP8 and H.264 encoding (even though RK vendor kernel only expose=
 them
> for jpeg encoding). The compatible follow this idea, shall we change the =
alias
> now?

Makes sense. Do you have any preference for the alias Heiko?
Maybe vepu121_0 / vepu121_0_mmu?

-- Sebastian

>=20
> Nicolas
>=20
> > +		reg =3D <0x0 0xfdba0000 0x0 0x800>;
> > +		interrupts =3D <GIC_SPI 122 IRQ_TYPE_LEVEL_HIGH 0>;
> > +		clocks =3D <&cru ACLK_JPEG_ENCODER0>, <&cru HCLK_JPEG_ENCODER0>;
> > +		clock-names =3D "aclk", "hclk";
> > +		iommus =3D <&jpeg_enc0_mmu>;
> > +		power-domains =3D <&power RK3588_PD_VDPU>;
> > +	};
> > +
> > +	jpeg_enc0_mmu: iommu@fdba0800 {
> > +		compatible =3D "rockchip,rk3588-iommu", "rockchip,rk3568-iommu";
> > +		reg =3D <0x0 0xfdba0800 0x0 0x40>;
> > +		interrupts =3D <GIC_SPI 121 IRQ_TYPE_LEVEL_HIGH 0>;
> > +		clocks =3D <&cru ACLK_JPEG_ENCODER0>, <&cru HCLK_JPEG_ENCODER0>;
> > +		clock-names =3D "aclk", "iface";
> > +		power-domains =3D <&power RK3588_PD_VDPU>;
> > +		#iommu-cells =3D <0>;
> > +	};
> > +
> > +	jpeg_enc1: video-codec@fdba4000 {
> > +		compatible =3D "rockchip,rk3588-vepu121";
> > +		reg =3D <0x0 0xfdba4000 0x0 0x800>;
> > +		interrupts =3D <GIC_SPI 124 IRQ_TYPE_LEVEL_HIGH 0>;
> > +		clocks =3D <&cru ACLK_JPEG_ENCODER1>, <&cru HCLK_JPEG_ENCODER1>;
> > +		clock-names =3D "aclk", "hclk";
> > +		iommus =3D <&jpeg_enc1_mmu>;
> > +		power-domains =3D <&power RK3588_PD_VDPU>;
> > +	};
> > +
> > +	jpeg_enc1_mmu: iommu@fdba4800 {
> > +		compatible =3D "rockchip,rk3588-iommu", "rockchip,rk3568-iommu";
> > +		reg =3D <0x0 0xfdba4800 0x0 0x40>;
> > +		interrupts =3D <GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH 0>;
> > +		clocks =3D <&cru ACLK_JPEG_ENCODER1>, <&cru HCLK_JPEG_ENCODER1>;
> > +		clock-names =3D "aclk", "iface";
> > +		power-domains =3D <&power RK3588_PD_VDPU>;
> > +		#iommu-cells =3D <0>;
> > +	};
> > +
> > +	jpeg_enc2: video-codec@fdba8000 {
> > +		compatible =3D "rockchip,rk3588-vepu121";
> > +		reg =3D <0x0 0xfdba8000 0x0 0x800>;
> > +		interrupts =3D <GIC_SPI 126 IRQ_TYPE_LEVEL_HIGH 0>;
> > +		clocks =3D <&cru ACLK_JPEG_ENCODER2>, <&cru HCLK_JPEG_ENCODER2>;
> > +		clock-names =3D "aclk", "hclk";
> > +		iommus =3D <&jpeg_enc2_mmu>;
> > +		power-domains =3D <&power RK3588_PD_VDPU>;
> > +	};
> > +
> > +	jpeg_enc2_mmu: iommu@fdba8800 {
> > +		compatible =3D "rockchip,rk3588-iommu", "rockchip,rk3568-iommu";
> > +		reg =3D <0x0 0xfdba8800 0x0 0x40>;
> > +		interrupts =3D <GIC_SPI 125 IRQ_TYPE_LEVEL_HIGH 0>;
> > +		clocks =3D <&cru ACLK_JPEG_ENCODER2>, <&cru HCLK_JPEG_ENCODER2>;
> > +		clock-names =3D "aclk", "iface";
> > +		power-domains =3D <&power RK3588_PD_VDPU>;
> > +		#iommu-cells =3D <0>;
> > +	};
> > +
> > +	jpeg_enc3: video-codec@fdbac000 {
> > +		compatible =3D "rockchip,rk3588-vepu121";
> > +		reg =3D <0x0 0xfdbac000 0x0 0x800>;
> > +		interrupts =3D <GIC_SPI 128 IRQ_TYPE_LEVEL_HIGH 0>;
> > +		clocks =3D <&cru ACLK_JPEG_ENCODER3>, <&cru HCLK_JPEG_ENCODER3>;
> > +		clock-names =3D "aclk", "hclk";
> > +		iommus =3D <&jpeg_enc3_mmu>;
> > +		power-domains =3D <&power RK3588_PD_VDPU>;
> > +	};
> > +
> > +	jpeg_enc3_mmu: iommu@fdbac800 {
> > +		compatible =3D "rockchip,rk3588-iommu", "rockchip,rk3568-iommu";
> > +		reg =3D <0x0 0xfdbac800 0x0 0x40>;
> > +		interrupts =3D <GIC_SPI 127 IRQ_TYPE_LEVEL_HIGH 0>;
> > +		clocks =3D <&cru ACLK_JPEG_ENCODER3>, <&cru HCLK_JPEG_ENCODER3>;
> > +		clock-names =3D "aclk", "iface";
> > +		power-domains =3D <&power RK3588_PD_VDPU>;
> > +		#iommu-cells =3D <0>;
> > +	};
> > +
> >  	av1d: video-codec@fdc70000 {
> >  		compatible =3D "rockchip,rk3588-av1-vpu";
> >  		reg =3D <0x0 0xfdc70000 0x0 0x800>;
>=20

--7tb3yl2u6zo2ceyh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmZqJagACgkQ2O7X88g7
+pqxQQ//VsqbXgRf3YcGI2GRUh9bHPx0q7Xdz6/WkO2lH5GIiYtUzHNwPRi//qMF
ZZZhvluCdhOV5T/JXb3itDzqSD8EKYDvHnQcASYBI6G2crL+NBbz6+Wzoc2y70us
FXv3ZNb4lDc4vdA4ShsQA9hlhXdGzOp/7rreDCCEaY8bNQhU+Rhof9jxWJ8iiamv
ohr6GGqWqFVWfiL/52+OWMir739DlX8ZWtPXQolmASgwegJ4n414+b8b/y9oUG89
w56ph/UxeGVk90EInOlyeWztBAvbPINdQPjNSwOBuyhzpYomTGqUF1ddiFc5JNaA
yfblq7KpmdejI4pO4uqedHr9nRPqbEp+WFg2r1Mcda1kgVGvvJfSMb80k9ta+G+t
JdN5I46B+qY5GP2l38q8Q8JrMnW2JOsKBX3EKVN56GQICJEdWQ2xs556frOG7E/m
Zc2fkOZRZcCLmpwo8D5LN+3SkH/W9TieEndhpQNdywfeB9liAAF9v/Krx2PJ1dHx
zB1gqIYh7IVm6wEHpXyjTmPz+ojsoQPLnNVQNNU6kUjNsYX1WWPHqHAL1jw5nsg4
2yyx150ixipyUyvCz931EF02u3DP7z0oeTM419G5XzXjF9WXats0OXFCsXUuhNED
II2k0oglhpgKP2rowX9SugUs5Hc8dLffggRLlP1QdL90U1rRiSw=
=UAah
-----END PGP SIGNATURE-----

--7tb3yl2u6zo2ceyh--


--===============0098552923670819670==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0098552923670819670==--


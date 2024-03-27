Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDF63C47DD9
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Mar 2024 13:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=agB3akoYl1thfXGdZ08VODClbxdYkKBa7P2mG3VCWGE=; b=tvpv7bnzbKTTXtpE6BHZl4Zbhs
	84G+BRkY3lSz0IvtudlNajPyOJ79QJVEzAGNQhjdzqAxJM7+f8fCSzayuc4A6Kb2mhEnYGxP4miKa
	dxmOwsBL4UBJi55+wRpSU8f7QmDtWAdAHep0zyKIdPleDjk7yiauCXNqoDusKNRDbw7k9gO9RxjZR
	h/Fy5zjce8x4YLDZpoO/3K8FcjvGjBs0w1F2cGUDQlg82mySTBwo5whwJ0m2j4WMKGukR8UidogtJ
	d9FLg4u+cGL7Pl4H0d0ISf4UhZL7+aq3kjsej5qMeb3vp2YVpqDdR0D3RrkaEwqvXcQBbbX4bZpKb
	8IG3myBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpT2M-000000096Ho-0a1U;
	Wed, 27 Mar 2024 13:09:50 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpT2F-000000096D5-3fqf;
	Wed, 27 Mar 2024 13:09:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1711544981;
	bh=81ZbrBdYxs8It1E/ipeLp8ojimGjd9cq7crq6evyxB4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Eya9hcjRh4E3JmnGFEZl3RZ5rtWwXbwJAX/lowaAjLQWPxK7ahAScE24IK3dFEpmj
	 W8wLJOS3k2bsqiYv0UFXrP+fPrEhRqQGV0x4nhtXQPGzrQxa7jR6q5JwrqfFuZmG3V
	 MQFgrQZS1NaB8xH7Mu6ftq+yOLac0yaZO8mq4oyatmytOATko54g+7N9zbzGmm7ces
	 qEB0PWSDfz/Oo9I7bH+V+MlZ/bcyHZPDRhi+kY70h+pyZ8rEhT8hRIFnxBqZmZsJjI
	 982TJRluzxXmSWVW2sorV4lc9v9ORnv383AtBE0dRzJ2aSzqbEHecQBP7xHNXKcfw9
	 9t66wdhEpgp2g==
Received: from mercury (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 9E67537820F3;
	Wed, 27 Mar 2024 13:09:41 +0000 (UTC)
Received: by mercury (Postfix, from userid 1000)
	id 359D410608D9; Wed, 27 Mar 2024 14:09:41 +0100 (CET)
Date: Wed, 27 Mar 2024 14:09:41 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Link Mauve <linkmauve@linkmauve.fr>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	linux-kernel@vger.kernel.org, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Joerg Roedel <joro@8bytes.org>, 
	Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, 
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>, Dragan Simic <dsimic@manjaro.org>, 
	Shreeya Patel <shreeya.patel@collabora.com>, Chris Morgan <macromorgan@hotmail.com>, 
	Andy Yan <andy.yan@rock-chips.com>, Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, 
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev
Subject: Re: [PATCH 3/4] arm64: dts: rockchip: Add VEPU121 to rk3588
Message-ID: <lrwxcyc2djqd6u3b2j4whe67o7ukblfqfqlnplajwgmvvgst4e@4z5avent6zmv>
References: <20240320173736.2720778-1-linkmauve@linkmauve.fr>
 <20240320173736.2720778-4-linkmauve@linkmauve.fr>
 <a60f6017-bd19-431e-8cff-7d73f6f114fe@linaro.org>
 <ZgQTrwOUtdZ1nRs0@desktop>
MIME-Version: 1.0
In-Reply-To: <ZgQTrwOUtdZ1nRs0@desktop>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240327_060944_076628_194D9C0A 
X-CRM114-Status: GOOD (  23.24  )
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
Content-Type: multipart/mixed; boundary="===============8330747130604258329=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8330747130604258329==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bqhdij4d5wn3lvmi"
Content-Disposition: inline


--bqhdij4d5wn3lvmi
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Mar 27, 2024 at 01:40:15PM +0100, Link Mauve wrote:
> On Thu, Mar 21, 2024 at 09:15:38AM +0100, Krzysztof Kozlowski wrote:
> > On 20/03/2024 18:37, Emmanuel Gil Peyrot wrote:
> > > The TRM (version 1.0 page 385) lists five VEPU121 cores, but only four
> > > interrupts are listed (on page 24), so I=E2=80=99ve only enabled four=
 of them
> > > for now.
> > >=20
> > > Signed-off-by: Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>
> > > ---
> > >  arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 80 +++++++++++++++++++++=
++
> > >  1 file changed, 80 insertions(+)
> > >=20
> > > diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/b=
oot/dts/rockchip/rk3588s.dtsi
> > > index 2a23b4dc36e4..fe77b56ac9a0 100644
> > > --- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> > > +++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> > > @@ -2488,6 +2488,86 @@ gpio4: gpio@fec50000 {
> > >  		};
> > >  	};
> > > =20
> > > +	jpeg_enc0: video-codec@fdba0000 {
> > > +		compatible =3D "rockchip,rk3588-vepu121";
> > > +		reg =3D <0x0 0xfdba0000 0x0 0x800>;
> > > +		interrupts =3D <GIC_SPI 122 IRQ_TYPE_LEVEL_HIGH 0>;
> > > +		clocks =3D <&cru ACLK_JPEG_ENCODER0>, <&cru HCLK_JPEG_ENCODER0>;
> > > +		clock-names =3D "aclk", "hclk";
> > > +		iommus =3D <&jpeg_enc0_mmu>;
> > > +		power-domains =3D <&power RK3588_PD_VDPU>;
> > > +	};
> > > +
> > > +	jpeg_enc0_mmu: iommu@fdba0800 {
> > > +		compatible =3D "rockchip,rk3588-iommu";
> >=20
> > It does not look like you tested the DTS against bindings. Please run
> > `make dtbs_check W=3D1` (see
> > Documentation/devicetree/bindings/writing-schema.rst or
> > https://www.linaro.org/blog/tips-and-tricks-for-validating-devicetree-s=
ources-with-the-devicetree-schema/
> > for instructions).
>=20
> Even on master I get an exception about this unresolvable file:
> referencing.exceptions.Unresolvable: cache-controller.yaml#
>=20
> Yet it seems to be present in only three files, all of them unrelated to
> the rockchip board I=E2=80=99m interested in (it seems), so I=E2=80=99m n=
ot sure what to
> do about that.

The trace looked like you tried using dt-schema with jsonschema
version 4.18+, which is known broken:

https://github.com/devicetree-org/dt-schema/issues/109

Greetings,

-- Sebastian

--bqhdij4d5wn3lvmi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmYEGo4ACgkQ2O7X88g7
+ppnpw/+IYqLzHk0LXotRxxmx2QRAz4gYpFyEku/kt2XkuQwtufZMFEqBQ5hBuzo
WMGDPKyTGKCUSGzxHo53ZnTsSQ4yvnlYmNJJ+invQuwR0AuN0oUdtU2TqGkTXTH5
VlCI3DM0yWjJDPE9MEWRj94dAuKJ/+21kYbiKXbsVlZz7vPvS3AMLUChqGzVW29h
GzwtgqGgwsLQQJnjJQ2MvoBDWqOO5Odg/CRmottxdbmxaHcaQ1shr25plFDjhdf7
qw+lR2cy64CkkQm8dzeVpoIUrD3Ow2KO4iuxlMkKkMFHvesb7Gxs/WDT4dj4q6yk
VQZTdxLe790Pq6v2CIDshZTTLpTIiWOL8vFCNVG7Dl6sSzqUliBKnYStPTa8yZbM
uFBz3GeG+Of8/a/ZetIUJXX5AOTVaSj/DcrbFqy4laQsYLPConDWwU4cDLBSXGy1
EOJKIaFnBA1zonoUGrKkvxhqcgoriWTVKVpmxkyHp4pW4O/ALldccEisOhpYfq3y
sfqiCH0aGDi0vR4hu9K8EQB6hyU7rXhC2K5VFmFKbEotcBakhLjd+mPcCpfvlfBp
rRez6hhL8PDpWPdbS7b4poD0HW5RR3dIgm1shBrr54NVn4wxiVAErRWOaYv+XniH
yglVBxWtvVeh9Zils+BVcew31B+9CEYMOvd4DUp1f8TluPCZtp0=
=12dq
-----END PGP SIGNATURE-----

--bqhdij4d5wn3lvmi--


--===============8330747130604258329==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8330747130604258329==--


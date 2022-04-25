Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0EE19C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 18:14:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/0+9rBDkYlyrU1eexBoJV/Fnd5+dJyTZ6gnXFAXGuag=; b=l1T75YVurrDUAmSHPr4LmMnSHK
	1GzeYYXjQFmpZ4kqcugbL+2Pf0z3vlw8BcATvXQD58vmZjw51aBT44OPly7nyH9C8V/0y+BKDLk7U
	T1xkalTbNBMmcHKxoxXXDhEaSWSmVfCpyx2Vlo1KqrF9OeFaEWRRIAz28HkzTKtNnndl6UUhHws6h
	u3Bo/AtilfTOVOcY99ft5ssZwtwu1fwD6uz4J698Y89jZa907qkzMfo9VhdDyy3/+jNtoVx6fIEfT
	zn8+4Y3WGgd5lDoeAQ/DOPUrLty2cg+5jx7eObj6WBbLwspqI0b/EvwnleremzBxCXFDPeREp558X
	GOS8XEGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nj3E9-00AocX-Aj; Mon, 25 Apr 2022 18:14:25 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nj3Dx-00AoYl-DG; Mon, 25 Apr 2022 18:14:14 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: sre)
 with ESMTPSA id 6AD461F434BE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1650910449;
 bh=+vu9o/CZqfUNibXQvmDVF1hJUAxnBrwgimcD4Mba0jg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZP6K7KzwXEVNKX2HyZ4QUjuyvzf5FJtDVgmPzM59lSh9nWsbRBHoQRFzmZhJomtvL
 3vzoqEUiOJN2OneraErip2kP0JuEJOAumCMXzhtSeJqgF+OLAWrnnJ3H5MD7otLS05
 gwAxQx+7LLLz311DagC1dLTqdllw1/mdv7PN96fkMaNJt8MyN9V8VESrXH61uMCVz7
 Ag0Cm514lQ8yY2GxR7+2+/YDQL3TvoDZ3unHc1AyWnXJ6D/Ny0KO6KB5BJInKtQWjZ
 DP/15us/pwd7bVI0bs+P1SROGYTG8hbrXLjibw5xymsy5HB5K1/ozkXIgPKdMdfSzy
 Hi0PDIMXyQ3ag==
Received: by mercury (Postfix, from userid 1000)
 id 5A3741060431; Mon, 25 Apr 2022 20:14:07 +0200 (CEST)
Date: Mon, 25 Apr 2022 20:14:07 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Robin Murphy <robin.murphy@arm.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, linux-clk@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@lists.collabora.co.uk,
 Kever Yang <kever.yang@rock-chips.com>, kernel@collabora.com,
 Yifeng Zhao <yifeng.zhao@rock-chips.com>,
 Elaine Zhang <zhangqing@rock-chips.com>,
 Sugar Zhang <sugar.zhang@rock-chips.com>
Subject: Re: [PATCHv1 18/19] arm64: dts: rockchip: Add base DT for rk3588 SoC
Message-ID: <20220425181407.lknemxqooz7yidcz@mercury.elektranox.org>
References: <20220422170920.401914-1-sebastian.reichel@collabora.com>
 <20220422170920.401914-19-sebastian.reichel@collabora.com>
 <36551341-60f5-8b61-59d1-176ece8204d6@arm.com>
MIME-Version: 1.0
In-Reply-To: <36551341-60f5-8b61-59d1-176ece8204d6@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_111413_698878_E41A6520 
X-CRM114-Status: GOOD (  17.33  )
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
Content-Type: multipart/mixed; boundary="===============7046669830283004967=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7046669830283004967==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mh7nzemffealimob"
Content-Disposition: inline


--mh7nzemffealimob
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

Thanks for having a look.

On Fri, Apr 22, 2022 at 07:16:13PM +0100, Robin Murphy wrote:
> On 2022-04-22 18:09, Sebastian Reichel wrote:
> > ...
> > +		cpu_l0: cpu@0 {
> > +			device_type =3D "cpu";
> > +			compatible =3D "arm,cortex-a55";
> > +			reg =3D <0x0>;
> > +			enable-method =3D "psci";
> > +			capacity-dmips-mhz =3D <530>;
> > +			clocks =3D <&scmi_clk SCMI_CLK_CPUL>;
> > +			i-cache-size =3D <32768>;
> > +			i-cache-line-size =3D <64>;
> > +			i-cache-sets =3D <128>;
> > +			d-cache-size =3D <32768>;
> > +			d-cache-line-size =3D <64>;
> > +			d-cache-sets =3D <128>;
> > +			next-level-cache =3D <&l2_cache_l0>;
> > +			#cooling-cells =3D <2>;
> > +			dynamic-power-coefficient =3D <228>;
> > +		};
>=20
> Is there any particular reason for not including more of the CPUs?

Yes, see below.

> > +		its: interrupt-controller@fe640000 {
> > +			compatible =3D "arm,gic-v3-its";
> > +			msi-controller;
> > +			#msi-cells =3D <1>;
> > +			reg =3D <0x0 0xfe640000 0x0 0x20000>;
> > +		};
> > +	};
>=20
> Does the ITS (and other bits related to GIC memory accesses) actually wor=
k,
> or will we have more of the same issues as RK356x?

The GIC in RK3588 is has the same shareability limitation as the RK356x,
but fixed the 32bit limitation. That's why I just added the boot cpu core
for now; adding any other cpu core breaks the boot without the downstream
shareability patch and I'm still investigating.

-- Sebastian

--mh7nzemffealimob
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmJm5OcACgkQ2O7X88g7
+pomsA//UD8f1YBkOw4gRGQyVzSSA2PqMAMOONSb31R90fNo5c78tg87EkNoxwvg
2iPkn4dnvOSE5zpTt4U579b1wyrlxU3msJBN+pwcyWTAQW8XNLt/Le/9zU3Laafa
4KyT4xJd9rrU4GMEvW+6RrmWJE3tcUYEw59a2BN40LYoQIayi864EwGIgD3z1XG7
MAqdI1on6d4XFD6mGu7uJSvfodEnCqjRIbv1tk/+2UCw9IhyWrhveJsagLEBn8GY
6SRfLMkMU9Ja6oqnDHmoj6WfrTaihFhbx3xS0gm9gErdrfaqxbcG6jsgFTT6nDQ1
xRSenEAPlxMK7EOiejVfE5Fs5Se8Tse/HLseVGSvkJv01wVj1yMO+ex2XUk5cGjW
UecLNiZfWL039S0F2Jaiqw9FrCmGbgpWB7yvg9mczuO2ewG3NORzh//fhSokCjXs
Yl247K8Q9jtsqYJRFBTh0A0mO8EG3PY9lYjzc96FeIWoza5beKSW/t8KU1LXWwb+
fSroO0KBa2oeajwhLvYi/cmZnKaPWr05H18Rsgudq+DmKHi82yWX6YslxXk2JVuN
F2ihbx0Yst3xUD4UIgiD06H2xPo1ufk3ZqdsENgIiVpn284n8VV7lYZyToczMJF2
OzPacQ4N7iJy+KxEcH26FyUhylu29QIf2L8kwKW/xnzYKmidA9A=
=vp9R
-----END PGP SIGNATURE-----

--mh7nzemffealimob--


--===============7046669830283004967==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7046669830283004967==--


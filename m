Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09B59C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Dec 2022 13:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZTpTjxYdNeGpR0vzRMO3x+obhJRFetwHJs5PhTaxIkw=; b=Joty0KhxSHgLmYYXMCc3n7zgiY
	P5GuqyqCxRjodnmr2VADaq8I3pDCoichdp1Apc/XPs37h7dVMqZqoIC6HiwGn4UJZBHz+7WP2/0sF
	40PpwMVk7xwQlKRIk9VMgRVOsITLXWxtQ4zGBgzPwVuzR1n2OPRdYVHtwvTRq1IMIaXH5ECs4XJ7k
	zXUhZhJPrVrRHDvipKDpSsLf6V4KeHFjQ+IJQlpH/FiF5KX3vy42byp5UDFpO6nTWCyz0CgJ00sVL
	CsQpblHIwxTuBYyWzGYMVq0pqa6znxPI93ucgnYkCXuu2UViuCB65mJ5ewqz2HzJ9Bqg1VAlju80K
	cfj5QznA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5ojb-009iJf-89; Thu, 15 Dec 2022 13:57:15 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5ojQ-009iFR-Cb
	for linux-rockchip@lists.infradead.org; Thu, 15 Dec 2022 13:57:06 +0000
Received: from mercury (dyndsl-095-033-168-084.ewe-ip-backbone.de [95.33.168.84])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 91BD56602C62;
	Thu, 15 Dec 2022 13:56:58 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1671112618;
	bh=mdJcX9ohpfURm3zLoo8qqwZEUEZs5x+hskpxfmea/yo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SC6f7YjaHlSh4nq+zNhpE9lrPycjodkqZZkHffrXkSSSnQerET9Y2BncCaZPi/gld
	 ED5ks6MnCLB1z1d7/o0W/1l6Jw+UqMz9cKm2bwO13cLebomGUgAAQeIXkJyE/BL3h+
	 IBRODJh1faQBEPRV53IO8pO4lEfB7Mr5T2ov9qjvv1ZAvTQ7KHZPNHVE4WtW8+fQd5
	 VYI3x3KNXZlV3URDo2c5w3iQSVKioGECKR6/ewTOwtyL45BAF7U2XRjbdTC63Zul9+
	 LZ+fjrtjkLHak302/5aLSrGNA4p/MjANAv1OzwbXjl+EayoTCVMlIJ3uWvpDyjFMXL
	 g9IEMKLfeBlDA==
Received: by mercury (Postfix, from userid 1000)
	id 17D961060F45; Thu, 15 Dec 2022 14:56:56 +0100 (CET)
Date: Thu, 15 Dec 2022 14:56:56 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Jagan Teki <jagan@edgeble.ai>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Marc Zyngier <maz@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Christopher Obbard <chris.obbard@collabora.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Kever Yang <kever.yang@rock-chips.com>, kernel@collabora.com,
	Michael Riesch <michael.riesch@wolfvision.net>
Subject: Re: [PATCHv6 5/7] arm64: dts: rockchip: Add rk3588-evb1 board
Message-ID: <20221215135656.nqngwqwaprlzf2f7@mercury.elektranox.org>
References: <20221214182247.79824-1-sebastian.reichel@collabora.com>
 <20221214182247.79824-6-sebastian.reichel@collabora.com>
 <CA+VMnFwT+Gi1nFBG2NDyMYx8wv+FrwzR8tb_8RrFh6QMGK8Q6g@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CA+VMnFwT+Gi1nFBG2NDyMYx8wv+FrwzR8tb_8RrFh6QMGK8Q6g@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221215_055704_720253_867AF9CF 
X-CRM114-Status: GOOD (  25.01  )
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
Content-Type: multipart/mixed; boundary="===============0317948707421974528=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0317948707421974528==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="voeg7cbvslfv7tvk"
Content-Disposition: inline


--voeg7cbvslfv7tvk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Jagan,

On Thu, Dec 15, 2022 at 06:37:10PM +0530, Jagan Teki wrote:
> On Wed, 14 Dec 2022 at 23:53, Sebastian Reichel
> <sebastian.reichel@collabora.com> wrote:
> > From: Kever Yang <kever.yang@rock-chips.com>
> >
> > Add board file for the RK3588 evaluation board. While the hardware
> > offers plenty of peripherals and connectivity this basic implementation
> > just handles things required to successfully boot Linux from eMMC,
> > connect via UART or Ethernet.
> >
> > Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> > [rebase, update commit message, use EVB1 for SoC bringup]
> > Reviewed-by: Michael Riesch <michael.riesch@wolfvision.net>
> > Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> > ---
> >  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
> >  .../boot/dts/rockchip/rk3588-evb1-v10.dts     | 165 ++++++++++++++++++
> >  2 files changed, 166 insertions(+)
> >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dt=
s/rockchip/Makefile
> > index 8c15593c0ca4..12ed53de11eb 100644
> > --- a/arch/arm64/boot/dts/rockchip/Makefile
> > +++ b/arch/arm64/boot/dts/rockchip/Makefile
> > @@ -72,3 +72,4 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3566-soquartz-cm4.=
dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3568-bpi-r2-pro.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3568-evb1-v10.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3568-rock-3a.dtb
> > +dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3588-evb1-v10.dtb
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts b/arch/ar=
m64/boot/dts/rockchip/rk3588-evb1-v10.dts
> > new file mode 100644
> > index 000000000000..46ea2daf5d6e
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
> > @@ -0,0 +1,165 @@
> > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +/*
> > + * Copyright (c) 2021 Rockchip Electronics Co., Ltd.
> > + *
> > + */
> > +
> > +/dts-v1/;
> > +
> > +#include <dt-bindings/gpio/gpio.h>
> > +#include <dt-bindings/pinctrl/rockchip.h>
> > +#include "rk3588.dtsi"
> > +
> > +/ {
> > +       model =3D "Rockchip RK3588 EVB1 V10 Board";
> > +       compatible =3D "rockchip,rk3588-evb1-v10", "rockchip,rk3588";
> > +
> > +       aliases {
> > +               mmc0 =3D &sdhci;
> > +               serial2 =3D &uart2;
> > +       };
> > +
> > +       chosen {
> > +               stdout-path =3D "serial2:1500000n8";
> > +       };
> > +
> > +       backlight: backlight {
> > +               compatible =3D "pwm-backlight";
> > +               brightness-levels =3D <
> > +                         0  20  20  21  21  22  22  23
> > +                        23  24  24  25  25  26  26  27
> > +                        27  28  28  29  29  30  30  31
> > +                        31  32  32  33  33  34  34  35
> > +                        35  36  36  37  37  38  38  39
> > +                        40  41  42  43  44  45  46  47
> > +                        48  49  50  51  52  53  54  55
> > +                        56  57  58  59  60  61  62  63
> > +                        64  65  66  67  68  69  70  71
> > +                        72  73  74  75  76  77  78  79
> > +                        80  81  82  83  84  85  86  87
> > +                        88  89  90  91  92  93  94  95
> > +                        96  97  98  99 100 101 102 103
> > +                       104 105 106 107 108 109 110 111
> > +                       112 113 114 115 116 117 118 119
> > +                       120 121 122 123 124 125 126 127
> > +                       128 129 130 131 132 133 134 135
> > +                       136 137 138 139 140 141 142 143
> > +                       144 145 146 147 148 149 150 151
> > +                       152 153 154 155 156 157 158 159
> > +                       160 161 162 163 164 165 166 167
> > +                       168 169 170 171 172 173 174 175
> > +                       176 177 178 179 180 181 182 183
> > +                       184 185 186 187 188 189 190 191
> > +                       192 193 194 195 196 197 198 199
> > +                       200 201 202 203 204 205 206 207
> > +                       208 209 210 211 212 213 214 215
> > +                       216 217 218 219 220 221 222 223
> > +                       224 225 226 227 228 229 230 231
> > +                       232 233 234 235 236 237 238 239
> > +                       240 241 242 243 244 245 246 247
> > +                       248 249 250 251 252 253 254 255
> > +               >;
> > +               default-brightness-level =3D <200>;
> > +
> > +               pwms =3D <&pwm2 0 25000 0>;
> > +               power-supply =3D <&vcc12v_dcin>;
> > +       };
>=20
> Do we really need this now? and brightness-levels need not be required
> to mention all.

It's my PWM test case, but removing brightness-levels and
default-brightness-level sounds fine to me. This can be
added once there is display support.

-- Sebastian

--voeg7cbvslfv7tvk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmObJ5oACgkQ2O7X88g7
+poFsQ//dxEdirNYDPmZMuVM+0mLL9jxNcUGejSGkS0CM7wZ52MA7QdqOGX3/os1
j9VLVl8MZRaqThguWYREI7FHfziCFjtBkJFv7NTkEGwhQJZrFRc0vnBXEH5hzzz4
D4STov6YVKHM/tHDfUMdjoKNk5UkVtbPw9uZocPGjtzLECK7BX+Y56UaIH3J5EYg
z8Sm0/zszX2Mn939Dqa/k1D6gqme7lwuMxT5TWU7nj80x/JG3NcBNom4ospF3G6q
JW0PwSNK3bVPRed6ajsTXFQuHUpqTMYndhG6kOtkiXxdo0WcCL+b9W4A/CNRNbjI
PsziGgYoHZsQ3lkl5mJO9MiyuRJiwARL0Qtv/EaaQrZI8ENF1+ts9vbnhNZ3adKA
XWXaoYawGHpyULC9wRNZqP/QGbucGULh3kyn23lMe9X92QrNIMkMHwyC+rOQHvxK
pqlvvChO8xCDdhJqUzsJWHPGbXWPBYJUVmgGaqB4wXlZF+tOO06CfAhr9ATS8/au
oImlMwl/3xGcgmPtbnRqlrs5iwGuwYpzkVPi+b/4qbT6mNQBLLBE2TQnNYoTc2wF
gUm6QsXRKhX+VIUgEHo5ILo+uQF+2oimTLGYPXT3ytqJ9ZqgL9/svWBUnkIlzqET
NIr7ZRJEs7hYxULo/OFHfTHFUl8EoJEZ20Tuc8zd/5vOA8BTXLs=
=rThP
-----END PGP SIGNATURE-----

--voeg7cbvslfv7tvk--


--===============0317948707421974528==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0317948707421974528==--


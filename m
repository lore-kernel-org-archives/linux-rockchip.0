Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72873C5320E
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Aug 2024 17:45:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WQFSQ7KI+Ehxpwo/V2zcftZZ0wla9pZVC8yx+gTlWmE=; b=441Sih0hhpGotNqj9pP0Hcn3SV
	GnYM8+ICuh6wo4V3NTpUMWGpZ8fPH3iDG+u3vEAnzpX1ppBNaeDefMpAbIlmj3YxbYiPyjitFpVL3
	WpVdD68fCGd1gMGu3tB1CEqYDsDtzuoY5XDeA3v+WqdzNJYY3hgBrBfIe/7rAkHNkkTUI00VyyTDd
	w3hFMQRjkfyueoAyL26T9vFR0JjeympBDag98At9i4ew1bN9hSqYw2od7NckcNPyAtB2cedCgA16N
	klOchrkomZ5IAHCpcUi6BCjKDOut3QT1OMUbxvVx6l/2G1aVW3/YhBSHtwV/IfIM6OB+XLeDO85i2
	0WDU9Bdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sg6RZ-00000002Ruo-0p5Z;
	Mon, 19 Aug 2024 17:45:25 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sg6Ia-00000002Qhc-1Ox1;
	Mon, 19 Aug 2024 17:36:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 49131CE0918;
	Mon, 19 Aug 2024 17:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6FBA7C32782;
	Mon, 19 Aug 2024 17:36:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724088965;
	bh=0u7J4MyaVAFxlCmLAw610QKd7sjH7bataFbVLMfAp/U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tE4V71q18qaoadyZSYi9yJpkAP0s/9gsUTBYLAFEu+X2yhDeIqveVY7w9XgYBXpQY
	 wDaOI2fgZ2iqPibUoadjLpsFMOVZkYfUxxSuZN4K6P/nw5/3HnJ4ZH63Rjm2R0IcE6
	 LusxVv+ZtleZrgYGEZVGwxW9XKH5i/8a5C5eRboioWvpKNtBi/5RwYXZRsNBrVCB+5
	 dfltzKHJ10vLFRGcfEJ8ivjEC8ktf6r1CctoHS9cdk9ZKZW47zqCvn7z0R5AyKnUHQ
	 Oy2Bdfekp0PpmiUeg9OOSdsK5rRpbId5qL3hu9hi8/o8L6+uLCUJE6Fzr2vH3lnT3V
	 v2rIqil9C9IFA==
Date: Mon, 19 Aug 2024 18:36:00 +0100
From: Conor Dooley <conor@kernel.org>
To: Detlev Casanova <detlev.casanova@collabora.com>
Cc: linux-kernel@vger.kernel.org,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Elaine Zhang <zhangqing@rock-chips.com>, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, kernel@collabora.com,
	Sugar Zhang <sugar.zhang@rock-chips.com>
Subject: Re: [PATCH v5 1/2] dt-bindings: clock, reset: Add support for rk3576
Message-ID: <20240819-anthill-episode-9db783c3e200@spud>
References: <20240814222159.2598-1-detlev.casanova@collabora.com>
 <5018731.31r3eYUQgx@trenzalore>
 <20240819-pelvis-monetary-211e2294f2f4@spud>
 <2071848.usQuhbGJ8B@trenzalore>
 <20240819-robust-gutter-27540adb4621@spud>
MIME-Version: 1.0
In-Reply-To: <20240819-robust-gutter-27540adb4621@spud>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240819_103608_748095_0ECBF515 
X-CRM114-Status: GOOD (  50.49  )
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
Content-Type: multipart/mixed; boundary="===============7533131644533725924=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7533131644533725924==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="VXLsL0ZARuSdDWIZ"
Content-Disposition: inline


--VXLsL0ZARuSdDWIZ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 19, 2024 at 06:31:09PM +0100, Conor Dooley wrote:
> On Mon, Aug 19, 2024 at 01:14:38PM -0400, Detlev Casanova wrote:
> > On Monday, 19 August 2024 12:34:15 EDT Conor Dooley wrote:
> > > On Mon, Aug 19, 2024 at 10:08:31AM -0400, Detlev Casanova wrote:
> > > > Hi Conor,
> > > >=20
> > > > On Thursday, 15 August 2024 11:07:46 EDT Conor Dooley wrote:
> > > > > On Wed, Aug 14, 2024 at 06:19:22PM -0400, Detlev Casanova wrote:
> > > > > > Add clock and reset ID defines for rk3576.
> > > > > >=20
> > > > > > Compared to the downstream bindings written by Elaine, this uses
> > > > > > continous gapless IDs starting at 0. Thus all numbers are
> > > > > > different between downstream and upstream, but names are kept
> > > > > > exactly the same.
> > > > > >=20
> > > > > > Also add documentation for the rk3576 CRU core.
> > > > > >=20
> > > > > > Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> > > > > > Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
> > > > > > Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> > > > > > ---
> > > > > >=20
> > > > > >  .../bindings/clock/rockchip,rk3576-cru.yaml   |  64 ++
> > > > > >  .../dt-bindings/clock/rockchip,rk3576-cru.h   | 592
> > > > > >  ++++++++++++++++++
> > > > > >  .../dt-bindings/reset/rockchip,rk3576-cru.h   | 564 ++++++++++=
+++++++
> > > > > >  3 files changed, 1220 insertions(+)
> > > > > >  create mode 100644
> > > > > >  Documentation/devicetree/bindings/clock/rockchip,rk3576-cru.ya=
ml
> > > > > >  create
> > > > > >  mode 100644 include/dt-bindings/clock/rockchip,rk3576-cru.h cr=
eate
> > > > > >  mode
> > > > > >  100644 include/dt-bindings/reset/rockchip,rk3576-cru.h>
> > > > > >=20
> > > > > > diff --git
> > > > > > a/Documentation/devicetree/bindings/clock/rockchip,rk3576-cru.y=
aml
> > > > > > b/Documentation/devicetree/bindings/clock/rockchip,rk3576-cru.y=
aml new
> > > > > > file mode 100644
> > > > > > index 0000000000000..d69985e6fa0ce
> > > > > > --- /dev/null
> > > > > > +++ b/Documentation/devicetree/bindings/clock/rockchip,rk3576-c=
ru.yaml
> > > > > > @@ -0,0 +1,64 @@
> > > > > > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> > > > > > +%YAML 1.2
> > > > > > +---
> > > > > > +$id: http://devicetree.org/schemas/clock/rockchip,rk3576-cru.y=
aml#
> > > > > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > > > > +
> > > > > > +title: Rockchip rk3576 Family Clock and Reset Control Module
> > > > > > +
> > > > > > +maintainers:
> > > > > > +  - Elaine Zhang <zhangqing@rock-chips.com>
> > > > > > +  - Heiko Stuebner <heiko@sntech.de>
> > > > > > +  - Detlev Casanova <detlev.casanova@collabora.com>
> > > > > > +
> > > > > > +description:
> > > > > > +  The RK3576 clock controller generates the clock and also imp=
lements
> > > > > > a
> > > > > > reset +  controller for SoC peripherals. For example it provides
> > > > > > SCLK_UART2 and +  PCLK_UART2, as well as SRST_P_UART2 and SRST_=
S_UART2
> > > > > > for the second UART +  module.
> > > > > > +
> > > > > > +properties:
> > > > > > +  compatible:
> > > > > > +    const: rockchip,rk3576-cru
> > > > > > +
> > > > > > +  reg:
> > > > > > +    maxItems: 1
> > > > > > +
> > > > > > +  "#clock-cells":
> > > > > > +    const: 1
> > > > > > +
> > > > > > +  "#reset-cells":
> > > > > > +    const: 1
> > > > > > +
> > > > > > +  clocks:
> > > > > > +    maxItems: 2
> > > > > > +
> > > > > > +  clock-names:
> > > > > > +    items:
> > > > > > +      - const: xin24m
> > > > > > +      - const: xin32k
> > > > > > +
> > > > > > +  rockchip,grf:
> > > > > > +    $ref: /schemas/types.yaml#/definitions/phandle
> > > > > > +    description: >
> > > > > > +      phandle to the syscon managing the "general register fil=
es". It
> > > > > > is
> > > > > > used +      for GRF muxes, if missing any muxes present in the =
GRF
> > > > > > will
> > > > > > not be +      available.
> > > > >=20
> > > > > Two questions on this property:
> > > > > - you only support one soc, why is this optional?
> > > >=20
> > > > It is optional because only used for some specific clocks. The SoC =
can
> > > > still be used without this, but some devices might not work (Not te=
sted
> > > > but USB PHYs might not be working without the GRF)
>=20
> I would not bother making them optional. I don't think there's any
> benefit to doing so when there's only one instance of this controller
> on the device, and the grfs will also always be present.
>=20
> > > > This is also set as optional in similar rockchip CRU bindings (rk35=
88).
> > > >=20
> > > > > - why can't you look it up by compatible?
> > > >=20
> > > > These bindings are specific to one compatible only. It is very simi=
lar to
> > > > rk3588 but it looks like all rockchip CRU driver has its own yaml f=
ile, so
> > > > I followed that trend instead of merging with the rk3588 CRU bindin=
gs.
> > > I don't think you've answered the question I am asking. Why can you n=
ot
> > > look up the syscon by the /syscon/'s compatible in the clock driver, =
and
> > > thus remove the property from here?
> >=20
> > I don't think that this is possible.
>=20
> Undesirable maybe, impossible no.
>=20
> > That means modifying rockchip/clk.c to=20
> > lookup the syscon instead of using the `rockchip,grf` phandle. As it is=
 used=20
> > by other rockchip clock drivers, that means that we'd need to change th=
e=20
> > syscon's node name for some other SoCs to match what is being looked up.
>=20
> No, you would not have to change anything for other SoCs, it would
> definitely be possible to do compatible based lookups on some devices
> and phandle on others, particularly given you're adding a new driver.
>=20
> > But the GRF nodes have different compatibles:
> > - rk3588 uses php_grf (rockchip,rk3588-php-grf)
> > - rk3576 uses pmu0_grf (rockchip,rk3576-pmu0-grf)
>=20
> Ditto this, the new clock driver that you're adding with knowledge of
> the clock tree could also contain the new compatible for that soc.
>=20
> > So an optional rockchip,grf phandle sounds a good solution for this=20

To be clear, I'm don't particularly care in this case, given there's at
least code being shared - but pointless syscon phandles that could be
looked up by compatible are starting to annoy me in general.



--VXLsL0ZARuSdDWIZ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZsOCgAAKCRB4tDGHoIJi
0rCWAQDncnT0UZYNEPDYOfWVyEJhtjRYoO3rtXRanI9RwfAzBwEAst0qPutNidCg
GBrdkMH8J6rz0F2JECiwJ2/aDMe+vAI=
=Q8H0
-----END PGP SIGNATURE-----

--VXLsL0ZARuSdDWIZ--


--===============7533131644533725924==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7533131644533725924==--


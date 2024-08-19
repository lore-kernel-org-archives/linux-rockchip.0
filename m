Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16B7DC52D6F
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Aug 2024 16:34:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2uzmtRGa3EWlQTp2m038iX+ZfCoHbrmQEMeRKCyRfdk=; b=JY6FB4lzoIsQ1NjSVwtqcJXaUE
	lUq8SuIRpYBcuWCw+QamiHcpywpTEzTU1TPHgqETMN6GZm3On8s53BF7Yo3+GEOrCTPQ86dVh/Z/J
	cWOkhMBzoic5aQd88ghMrS+UPIDf2L/sfvjyGAp/QUxpaEJ5vyQTPbZt+Utl8CCsLjGpUO8NDCnwv
	drIg2jU+C1sUGrKwj0Qaxr6PfBe2NKD4kAQd6TrLfX49KZA7QVdlPflROUcY02XOeiW8zPAxG3vxk
	4ed2SVoeBpDdhYMdR6RuAKLbg/O1bNJM5VyC0wIbvzvniSR1Xb7tm2gYI/Gn2RlmjckE3XkEdXWP9
	LVXsc/wA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sg5L3-00000002C7a-2QD6;
	Mon, 19 Aug 2024 16:34:37 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sg5Kp-00000002C0C-1j1H;
	Mon, 19 Aug 2024 16:34:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 81C05CE0ABA;
	Mon, 19 Aug 2024 16:34:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8DA25C32782;
	Mon, 19 Aug 2024 16:34:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724085260;
	bh=gd0XwIlIyEwVbHTi1dPq1iCsJvX+UHnxyvuzIYrvEMU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZemkRePn2DCO6oIPLfT7UAZPavHAnvjo7WEy6DDDdUZw8tuZRjpTOyO3ccSeydCUW
	 VcKCVgrmzuAUI9YO7qLEY+LGCiKRQkB9He7EchhuHQlBQfH97ICr6MsJSCHZcAdWvw
	 I/olZsC8DdCKpO6gVfwxj3ySns4wrvFtIzXdbwnO2IsAI+oHJxLJ/bYMKBXonKA4iP
	 ZAMrLxgsUILmJR4aMcHPNO4XSfFVZc/v6tHclvXNT/hoEPrEsV/rE2Tv9fB9ol419J
	 Q/PSNn+IQRsB4K7J/Kinr9y12MEKgFOKUGBstUkWyr4EIuCaIguHg6jqXxBtoUjOEa
	 wjgUoLRBWWunw==
Date: Mon, 19 Aug 2024 17:34:15 +0100
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
Message-ID: <20240819-pelvis-monetary-211e2294f2f4@spud>
References: <20240814222159.2598-1-detlev.casanova@collabora.com>
 <20240814222159.2598-2-detlev.casanova@collabora.com>
 <20240815-tassel-whacking-a460ee2ebd41@spud>
 <5018731.31r3eYUQgx@trenzalore>
MIME-Version: 1.0
In-Reply-To: <5018731.31r3eYUQgx@trenzalore>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240819_093423_874140_4244250E 
X-CRM114-Status: GOOD (  34.27  )
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
Content-Type: multipart/mixed; boundary="===============0629911264874343019=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0629911264874343019==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="n6FCtSpE7Uh9i8vt"
Content-Disposition: inline


--n6FCtSpE7Uh9i8vt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 19, 2024 at 10:08:31AM -0400, Detlev Casanova wrote:
> Hi Conor,
>=20
> On Thursday, 15 August 2024 11:07:46 EDT Conor Dooley wrote:
> > On Wed, Aug 14, 2024 at 06:19:22PM -0400, Detlev Casanova wrote:
> > > Add clock and reset ID defines for rk3576.
> > >=20
> > > Compared to the downstream bindings written by Elaine, this uses
> > > continous gapless IDs starting at 0. Thus all numbers are
> > > different between downstream and upstream, but names are kept
> > > exactly the same.
> > >=20
> > > Also add documentation for the rk3576 CRU core.
> > >=20
> > > Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> > > Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
> > > Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> > > ---
> > >=20
> > >  .../bindings/clock/rockchip,rk3576-cru.yaml   |  64 ++
> > >  .../dt-bindings/clock/rockchip,rk3576-cru.h   | 592 ++++++++++++++++=
++
> > >  .../dt-bindings/reset/rockchip,rk3576-cru.h   | 564 +++++++++++++++++
> > >  3 files changed, 1220 insertions(+)
> > >  create mode 100644
> > >  Documentation/devicetree/bindings/clock/rockchip,rk3576-cru.yaml cre=
ate
> > >  mode 100644 include/dt-bindings/clock/rockchip,rk3576-cru.h create m=
ode
> > >  100644 include/dt-bindings/reset/rockchip,rk3576-cru.h>=20
> > > diff --git
> > > a/Documentation/devicetree/bindings/clock/rockchip,rk3576-cru.yaml
> > > b/Documentation/devicetree/bindings/clock/rockchip,rk3576-cru.yaml new
> > > file mode 100644
> > > index 0000000000000..d69985e6fa0ce
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/clock/rockchip,rk3576-cru.yaml
> > > @@ -0,0 +1,64 @@
> > > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/clock/rockchip,rk3576-cru.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Rockchip rk3576 Family Clock and Reset Control Module
> > > +
> > > +maintainers:
> > > +  - Elaine Zhang <zhangqing@rock-chips.com>
> > > +  - Heiko Stuebner <heiko@sntech.de>
> > > +  - Detlev Casanova <detlev.casanova@collabora.com>
> > > +
> > > +description:
> > > +  The RK3576 clock controller generates the clock and also implement=
s a
> > > reset +  controller for SoC peripherals. For example it provides
> > > SCLK_UART2 and +  PCLK_UART2, as well as SRST_P_UART2 and SRST_S_UART2
> > > for the second UART +  module.
> > > +
> > > +properties:
> > > +  compatible:
> > > +    const: rockchip,rk3576-cru
> > > +
> > > +  reg:
> > > +    maxItems: 1
> > > +
> > > +  "#clock-cells":
> > > +    const: 1
> > > +
> > > +  "#reset-cells":
> > > +    const: 1
> > > +
> > > +  clocks:
> > > +    maxItems: 2
> > > +
> > > +  clock-names:
> > > +    items:
> > > +      - const: xin24m
> > > +      - const: xin32k
> > > +
> > > +  rockchip,grf:
> > > +    $ref: /schemas/types.yaml#/definitions/phandle
> > > +    description: >
> > > +      phandle to the syscon managing the "general register files". I=
t is
> > > used +      for GRF muxes, if missing any muxes present in the GRF wi=
ll
> > > not be +      available.
> >=20
> > Two questions on this property:
> > - you only support one soc, why is this optional?
>=20
> It is optional because only used for some specific clocks. The SoC can st=
ill be=20
> used without this, but some devices might not work (Not tested but USB PH=
Ys=20
> might not be working without the GRF)
> This is also set as optional in similar rockchip CRU bindings (rk3588).
>=20
> > - why can't you look it up by compatible?
>=20
> These bindings are specific to one compatible only. It is very similar to=
=20
> rk3588 but it looks like all rockchip CRU driver has its own yaml file, s=
o I=20
> followed that trend instead of merging with the rk3588 CRU bindings.

I don't think you've answered the question I am asking. Why can you not
look up the syscon by the /syscon/'s compatible in the clock driver, and
thus remove the property from here?

Thanks,
Conor.

--n6FCtSpE7Uh9i8vt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZsN0BwAKCRB4tDGHoIJi
0iYXAQDAm/y+dzUTli+bib6dXnLBthHX7v21Tc7mhhY+48ZfYQD9GCaRaMsJHCfV
Z41SWteQOCY6BLIRilKvteLShnxHogI=
=7mM6
-----END PGP SIGNATURE-----

--n6FCtSpE7Uh9i8vt--


--===============0629911264874343019==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0629911264874343019==--


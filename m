Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92B82C3DA63
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Jul 2024 16:00:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ql8hdXuP6/NDDA9q+9ao/HkQHNHMzj1NtWL5g4mBXgE=; b=mkNPulwAYIfVjaMknIuM0XyYup
	YZq8LhqdN84KAGqjOENWJ9UIEd3yLD6/sZXzfIPynCKFB2liwmav+xOWtoFJZbfxZ3Dwf2X9EaKQs
	qm5dC6wR9XQ9a++8No8cPKxgiIz1G/pcdENKT8EtXDh3Ft9IqABQTmjGuVJ85mylY4Ae1ia76rXbT
	lO5GLasP01QXlCap5IZvtxmvPGsg+GnwPhaxuwByo9JKeucqFYmXO9M1lXDCDh1EGJPpGW6wuS1/h
	dEKWBdzjLuNZ2KnfbvNjxJNQ1y57tenH1Wx/zVCAa6oOz1QQ6zCtOreOLXC8VPP9aOHQ3/UED+hB6
	hNaJU07Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUTYI-0000000HWgY-3XZq;
	Thu, 18 Jul 2024 16:00:18 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUTXv-0000000HWbD-3VRd;
	Thu, 18 Jul 2024 15:59:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 10BE061B94;
	Thu, 18 Jul 2024 15:59:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 74CC4C116B1;
	Thu, 18 Jul 2024 15:59:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721318394;
	bh=T4DfjvkHoIEyUPZXgAngg+UvPIuZJXu0JXGh6sWNt+c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=H5vHfytmqPrYO2pIj4jHkuG37Chv40x0l0h3Sl9muo3W743GzaXi685mZhYM0PxKX
	 qY1W1G26W7T74h+GzelvwecVAFTeTXk9rS8s0mQ2GKIYdDO42kuRxaqVqrh2TahtTQ
	 DeHvsXWD9ZivyLsPP2cPrfcRhHVGjhOpnAu6E2gVglYI8L5kBeOhdkdF7NyIHCE16+
	 a5zjypcBX6vE5qs/Lv0EYy6aFU/RvxcL/edVsn3r695CfrtVLzE5ZixZJ7yRSkCZZ3
	 xj91p5dsHYcjo2FApj2Eyy7dD3bzfk3avOiu1CvosShMilzoG3i6t+04/kuIvDFVu3
	 OJDGaKacKGgbw==
Date: Thu, 18 Jul 2024 16:59:50 +0100
From: Conor Dooley <conor@kernel.org>
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 1/3] dt-bindings: clocks: add binding for
 voltage-controlled-oscillators
Message-ID: <20240718-prozac-specks-6b5fd8b83e3e@spud>
References: <20240715110251.261844-1-heiko@sntech.de>
 <20240715110251.261844-2-heiko@sntech.de>
 <20240716-deceiving-saucy-851fb2303c1f@spud>
 <3178118.zE8UqtGg2D@diego>
MIME-Version: 1.0
In-Reply-To: <3178118.zE8UqtGg2D@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240718_085956_031837_B3B42E5F 
X-CRM114-Status: GOOD (  40.44  )
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
Content-Type: multipart/mixed; boundary="===============1149603870104529172=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1149603870104529172==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="TA6tyFoqBwcLvbVt"
Content-Disposition: inline


--TA6tyFoqBwcLvbVt
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 18, 2024 at 11:25:28AM +0200, Heiko St=FCbner wrote:
> Hi Conor,
>=20
> Am Dienstag, 16. Juli 2024, 18:15:08 CEST schrieb Conor Dooley:
> > On Mon, Jul 15, 2024 at 01:02:49PM +0200, Heiko Stuebner wrote:
> > > In contrast to fixed clocks that are described as ungateable, boards
> > > sometimes use additional oscillators for things like PCIe reference
> > > clocks, that need actual supplies to get enabled and enable-gpios to =
be
> > > toggled for them to work.
> > >=20
> > > This adds a binding for such oscillators that are not configurable
> > > themself, but need to handle supplies for them to work.
> > >=20
> > > In schematics they often can be seen as
> > >=20
> > >          ----------------
> > > Enable - | 100MHz,3.3V, | - VDD
> > >          |    3225      |
> > >    GND - |              | - OUT
> > >          ----------------
> > >=20
> > > or similar. The enable pin might be separate but can also just be tied
> > > to the vdd supply, hence it is optional in the binding.
> > >=20
> > > Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> > > ---
> > >  .../bindings/clock/voltage-oscillator.yaml    | 49 +++++++++++++++++=
++
> > >  1 file changed, 49 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/clock/voltage-o=
scillator.yaml
> > >=20
> > > diff --git a/Documentation/devicetree/bindings/clock/voltage-oscillat=
or.yaml b/Documentation/devicetree/bindings/clock/voltage-oscillator.yaml
> > > new file mode 100644
> > > index 0000000000000..8bff6b0fd582e
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/clock/voltage-oscillator.yaml
> > > @@ -0,0 +1,49 @@
> > > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/clock/voltage-oscillator.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Voltage controlled oscillator
> >=20
> > Voltage controlled oscillator? Really? That sounds far too similar to a
> > VCO to me, and the input voltage here (according to the description at
> > least) does not affect the frequency of oscillation.
>=20
> That naming was suggested by Stephen in v1 [0] .

I think "voltage-oscillator" is a confusing name, and having "voltage
controlled oscillator" in the title doubly so as this isn't a binding
for a VCO.
A VCO is a more general case of the sort of device that you're talking
about here, so a part of me can see it - but I think specific
compatibles would be required for actual VCOs, since the "transfer
function" would vary per device.

> Of course the schematics for the board I have only describe it as
> "100MHz,3.3V,3225" , thumbing through some mouser parts matching that
> only mentions "supply voltage" in their datasheets but not a dependency
> between rate and voltage.
>=20
> [0] https://lore.kernel.org/linux-arm-kernel/b3c450a94bcb4ad0bc5b3c7ee871=
2cb8.sboyd@kernel.org/
>=20
> > Why the dedicated binding, rather than adding a supply and enable-gpio
> > to the existing "fixed-clock" binding? I suspect that a large portion of
> > "fixed-clock"s actually require a supply that is (effectively)
> > always-on.
>=20
> I guess there are three aspects:
> - I do remember discussions in the past about not extending generic
>   bindings with device-specific stuff.

FWIW, I wouldn't classify this as device-specific. "enable-gpios" and
"vdd-supply" are pretty generic and I think the latter is missing from
the vast majority of real* "fixed-clocks". I would expect that devices
where the datasheet would call

* Real because there's plenty of "fixed-clocks" (both in and out of tree)
that are used to work around the lack of a clock-controller driver for an
SoC.

> I think generic power-sequences
>   were the topic back then, though that might have changed over time?
> - There are places that describe "fixed-clock" as
>   "basic fixed-rate clock that cannot gate" [1]

I think that that is something that could be changed, it's "just" a
comment in some code! Sounds like Stephen disagrees though :)

> - Stephen also suggested a separate binding [2]

I liked your "gated-oscillator" suggestion in another reply, but
"gated-fixed-clock" might be a better "thematic" fit since this is a
special case of fixed-clocks?

Cheers,
Conor.

> With the fixed-clock being sort of the root for everything else on most
> systems, I opted to leave it alone. I guess if the consenus really is that
> this should go there, I can move it, but discussion in v1=20
>=20
> Interestingly the fixed clock had a gpios property 10 years ago [3] :-) .

heh!

>=20
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tr=
ee/drivers/clk/clk-fixed-rate.c#n18
> [2] https://lore.kernel.org/linux-arm-kernel/68f6dc44a8202fd83792e58aea13=
7632.sboyd@kernel.org/
> [3] https://lore.kernel.org/linux-kernel//20140515064420.9521.47383@quant=
um/T/#t

--TA6tyFoqBwcLvbVt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZpk79gAKCRB4tDGHoIJi
0ocpAQDlY1WVEOAb/tAnKL+v/4KqvF6yQjSSOa/QJ9Xn/KwzwQEA6xZbMOFj+ofl
qMmgXTkeOunG/hACMIplnIyteyzFRwI=
=RPQe
-----END PGP SIGNATURE-----

--TA6tyFoqBwcLvbVt--


--===============1149603870104529172==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1149603870104529172==--


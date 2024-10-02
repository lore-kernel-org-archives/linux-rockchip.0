Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25964CF31A7
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Oct 2024 08:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kECUuUEwKESLEKoGEt2fU3BZXvCwiJPsDFgT59TEmY4=; b=gUw/Q3u0BRZ8/ngBE3vRV1BN4+
	zJFiLXjtLj1kNqRNrqjK/lMeh4enRqc1djLr3z43r2jcGXqWPlwQ2gU/xegvYwfkm5tm0EXDENCYz
	KKvIwwJ9++KOqcwbSfLMCTYjPMAVUxMo9aomSnbMxs+0XX0h9fF3xzPvgrso8quW6wUknd2mV/oBC
	dzt3/nwacBx8O6Ev2Qt3/V6BRTZV/SQl8/imC3ZfiD1WKJT6JG2l7+RlR3gS1RMNoltvgd9iHgzVY
	8sbQ0FVEHcXdW2bf8pPxSvJFe7hvRrrGl7juZFXP+UHo6+Y2oaBLcVvlGA9q6lnzy1N/bbzb6/vxO
	Q+/551VQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svv4J-00000005Dpf-3dd6;
	Wed, 02 Oct 2024 08:50:47 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svv31-00000005DZu-1iK4;
	Wed, 02 Oct 2024 08:49:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 23C35A438AF;
	Wed,  2 Oct 2024 08:49:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5BB5BC4CEC5;
	Wed,  2 Oct 2024 08:49:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727858966;
	bh=sWtS55ESt/gXMlKhyy2AY5SPV9Ghvj60fO52Wmird08=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=E83JInBMFeg02wHuNmKFMc5RpgM9dMYCLZwB7VhZuY8yTGiUKWw5mOTo/NVa5TVpJ
	 SrgZD07YWUHcL/uHISnML8JGWQfb3F+p4Ru9CKsVqQsI4kouBpDqpqxVHv8so0OOPb
	 2qftyG/7MNdcXtLSNFCv2e60ZQlA2Sa8xqBfVm1irRMrVNAlupr47glDELHhgyJbva
	 FZsheZplGrH865151krbsIwGBO3iCC9xOIjI/jjoP21x99GYx2JFWO1sheCUZTWLlm
	 YpD65fe7RETBMASqtAb2Wmi2YNzq7y5o7iwsYiavMIk+03/IHJmYYY4aKEvd+j6EYX
	 Bl29XUR6SocYA==
Date: Wed, 2 Oct 2024 09:49:21 +0100
From: Conor Dooley <conor@kernel.org>
To: Yao Zi <ziyao@disroot.org>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Celeste Liu <CoelacanthusHex@gmail.com>
Subject: Re: [PATCH 3/8] dt-bindings: clock: Add rockchip,rk3528-cru
Message-ID: <20241002-sash-gigantic-f79da2043875@spud>
References: <20241001042401.31903-2-ziyao@disroot.org>
 <20241001042401.31903-5-ziyao@disroot.org>
 <20241001-name-stooge-7a939f71a08e@spud>
 <Zvxm71YvGbF1s_2w@pineapple>
MIME-Version: 1.0
In-Reply-To: <Zvxm71YvGbF1s_2w@pineapple>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241002_014927_605479_F3CDD81B 
X-CRM114-Status: GOOD (  32.44  )
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
Content-Type: multipart/mixed; boundary="===============4328648344980197251=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4328648344980197251==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="CYfpvVWBFMQNLcdo"
Content-Disposition: inline


--CYfpvVWBFMQNLcdo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 01, 2024 at 09:18:03PM +0000, Yao Zi wrote:
> On Tue, Oct 01, 2024 at 05:29:15PM +0100, Conor Dooley wrote:
> > On Tue, Oct 01, 2024 at 04:23:57AM +0000, Yao Zi wrote:
> > > Document Rockchip RK3528 clock and reset unit.
> > >=20
> > > Signed-off-by: Yao Zi <ziyao@disroot.org>
> > > ---
> > >  .../bindings/clock/rockchip,rk3528-cru.yaml   | 63 +++++++++++++++++=
++
> > >  1 file changed, 63 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/clock/rockchip,=
rk3528-cru.yaml
> > >=20
> > > diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3528-=
cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rk3528-cru.yaml
> > > new file mode 100644
> > > index 000000000000..ae51dfde5bb9
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/clock/rockchip,rk3528-cru.yaml
> > > @@ -0,0 +1,63 @@
> > > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/clock/rockchip,rk3528-cru.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Rockchip RK3528 Clock and Reset Controller
> > > +
> > > +maintainers:
> > > +  - Yao Zi <ziyao@disroot.org>
> > > +
> > > +description: |
> > > +  The RK3528 clock controller generates the clock and also implement=
s a reset
> > > +  controller for SoC peripherals. For example, it provides SCLK_UART=
0 and
> > > +  PCLK_UART0 as well as SRST_P_UART0 and SRST_S_UART0 for the first =
UART
> > > +  module.
> > > +  Each clock is assigned an identifier, consumer nodes can use it to=
 specify
> > > +  the clock. All available clock and reset IDs are defined in dt-bin=
ding
> > > +  headers.
> > > +
> > > +properties:
> > > +  compatible:
> > > +    enum:
> > > +      - rockchip,rk3528-cru
> >=20
> > nit: This can probably be a const, rather than an enum.
> >=20
> > > +
> > > +  reg:
> > > +    maxItems: 1
> > > +
> > > +  assigned-clocks: true
> > > +
> > > +  assigned-clock-rates: true
> > > +
> > > +  clocks:
> > > +    minItems: 2
> > > +    maxItems: 2
> > > +
> > > +  clock-names:
> > > +    items:
> > > +      - const: xin24m
> > > +      - const: phy_50m_out
> >=20
> > Why is this input clock named "out"? clocks should be named after how
> > they're used in the IP in question, not the name of the source of that
> > clock in the SoC.
> > Without descriptions provided in the clocks property, it is hard to
> > understand what this second clock is for.
>=20
> Thanks for explaination, it should something like "clk_gmac0".

So it is actually an input clock to the cru? I'd like to see an items
list in the clocks property please, describing what these clocks are.
Also, "clk" is redundant, since these are all clocks, so drop that from
the name.

>=20
> > > +
> > > +  "#clock-cells":
> > > +    const: 1
> > > +
> > > +  "#reset-cells":
> > > +    const: 1
> > > +
> > > +required:
> > > +  - compatible
> > > +  - reg
> >=20
> > Why would the input clocks be optional?
>=20
> This follows other Rockchip SoCs, which often omit input clocks in
> devicetree and depend on clock names registered in common clock
> framework to work.
>=20
> For completeness, they really shouldn't be optional.

Then please make it required. If the input clocks are required to make
the clock controller function, they should be marked as required.

>=20
> > > +  - "#clock-cells"
> > > +  - "#reset-cells"
> > > +
> > > +additionalProperties: false
> > > +
> > > +examples:
> > > +  - |
> > > +    cru: clock-controller@ff4a0000 {
> >=20
> > nit: the cru label is not used and can be dropped.
>=20
> All comments will be adapted in next revision. Thanks.

Cool.

Thanks,
Conor.

--CYfpvVWBFMQNLcdo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZv0JEQAKCRB4tDGHoIJi
0q77AP4svyfgFeIg5M8q6tYMIlV1Get9O8PkiwvRHS3d5WgiaAEAi7sdWhJsOmlg
vIHc87DT12ekfJaqgebKL90ejlTyAgQ=
=E7tQ
-----END PGP SIGNATURE-----

--CYfpvVWBFMQNLcdo--


--===============4328648344980197251==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4328648344980197251==--


Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E8D4C47258
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Jan 2024 15:30:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sr4dqHCLNemKQ1hRcB/v7D9XtDfRQj12p5ATqSP9o9U=; b=xnopG7vDQ/V2RaVVp78rgXe1dF
	cC7gZ51GEFWiGrxb4KFZSnJjJLoolN1daUcakLhFoRzx0QpUhThz0Ur0d7/rPjkp65rC3/QwkgBeD
	dcP1LBHcMG6Jo4PtL8veCku/nLnfPROABT0aoGjvpp5zRW08n1uUSdZOGtp4iUaLfcd5iH4xdsU06
	4Z1JRRr0YUemMLGOPMk9qJHP9b6sx1l121qhciGRg/xl2q5P5DdUe2sfqMY0tJo2g4w/jhLF/v1CX
	z6J1DcCIBhfIMDCtTobqhvWggHOlJtgHDrcdpSQiptxDj6j8oATpRQfTrOhe+qDMP/X2dEmKmMnbA
	FCc0meEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQ7rT-00HSmT-20;
	Wed, 17 Jan 2024 15:29:51 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQ7rQ-00HSlR-1E;
	Wed, 17 Jan 2024 15:29:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 82EB4B8110A;
	Wed, 17 Jan 2024 15:29:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 45890C433F1;
	Wed, 17 Jan 2024 15:29:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705505385;
	bh=qxxZ9RjuckhZiHlpj6s0cb/PxO0021+SF6EF75yf3pg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GthVqAlu8QyItM872HC2zFIziyZXmGUFTUjvYc9wybCEfU0Uji5Q0Z1fLCfOKTyH5
	 jQmKY5Sp7TYEn2z6YfVz5HUy27zQlKnaxTEYSJu4UpJznLrShbS98wlOlrKH8KRHDo
	 XEB1ZXUTq1hjgbIIegibTODOMV8tEoIN2MuhyQKgmZHxsPKCLDk4GQLL10Cir11YRx
	 lJYlsHef/2rCvt4vJAqQBa77Cqj6m1+E+0vEw6uBiAjScWB0kZUMno3rcYuYP/3Hti
	 RrurJJSDNsDWmy7SSOIerlHNcdrhr55r4i3Od2tkAUKP/WuZ7X6sTPE96jgR7kZDnZ
	 QQoIjHbGGLSwQ==
Date: Wed, 17 Jan 2024 15:29:41 +0000
From: Conor Dooley <conor@kernel.org>
To: Tim Lunn <tim@feathertop.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Chris Zhong <zyw@rock-chips.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Zhang Qing <zhangqing@rock-chips.com>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: rockchip: Document rk809 support for
 rk817 audio codec
Message-ID: <20240117-motto-uselessly-b27523fac94d@spud>
References: <20240116132102.3272682-1-tim@feathertop.org>
 <20240116132102.3272682-2-tim@feathertop.org>
 <20240116-mangle-parish-93b5cd672d17@spud>
 <72ed509c-f754-4e65-a65e-130185777c53@feathertop.org>
 <b798a7cc-c9fd-4bc3-bb14-401e10e4eeb8@linaro.org>
 <9636bcb9-6b4b-41ef-bcfc-ff39c11d127e@feathertop.org>
MIME-Version: 1.0
In-Reply-To: <9636bcb9-6b4b-41ef-bcfc-ff39c11d127e@feathertop.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240117_072948_748065_1ADDF61D 
X-CRM114-Status: GOOD (  36.06  )
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
Content-Type: multipart/mixed; boundary="===============6119568273505647500=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6119568273505647500==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="yBdANV7KjVXVo10Z"
Content-Disposition: inline


--yBdANV7KjVXVo10Z
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 17, 2024 at 08:58:56PM +1100, Tim Lunn wrote:
>=20
> On 1/17/24 20:22, Krzysztof Kozlowski wrote:
> > On 17/01/2024 10:19, Tim Lunn wrote:
> > > On 1/17/24 04:06, Conor Dooley wrote:
> > > > On Wed, Jan 17, 2024 at 12:21:00AM +1100, Tim Lunn wrote:
> > > > > Rockchip RK809 shares the same audio codec as the rk817 mfd, it i=
s also
> > > > > using the same rk817_codec driver. However it is missing from the
> > > > > bindings.
> > > > >=20
> > > > > Update dt-binding documentation for rk809 to include the audio co=
dec
> > > > > properties. This fixes the following warning from dtb check:
> > > > >=20
> > > > > pmic@20: '#sound-dai-cells', 'assigned-clock-parents', 'assigned-=
clocks',
> > > > >      'clock-names', 'clocks', 'codec' do not match any of the reg=
exes:
> > > > >      'pinctrl-[0-9]+'
> > > > >=20
> > > > > Signed-off-by: Tim Lunn<tim@feathertop.org>
> > > > > ---
> > > > >=20
> > > > > (no changes since v1)
> > > > >=20
> > > > >    .../bindings/mfd/rockchip,rk809.yaml          | 30 +++++++++++=
+++++++-
> > > > >    1 file changed, 29 insertions(+), 1 deletion(-)
> > > > >=20
> > > > > diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk809=
=2Eyaml b/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
> > > > > index 839c0521f1e5..bac2e751e2f2 100644
> > > > > --- a/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
> > > > > +++ b/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
> > > > > @@ -12,7 +12,7 @@ maintainers:
> > > > >    description: |
> > > > >      Rockchip RK809 series PMIC. This device consists of an i2c c=
ontrolled MFD
> > > > > -  that includes regulators, an RTC, and power button.
> > > > > +  that includes regulators, an RTC, a power button, and an audio=
 codec.
> > > > >    properties:
> > > > >      compatible:
> > > > > @@ -93,6 +93,34 @@ properties:
> > > > >            unevaluatedProperties: false
> > > > >        unevaluatedProperties: false
> > > > > +  clocks:
> > > > > +    description:
> > > > > +      The input clock for the audio codec.
> > > > > +
> > > > > +  clock-names:
> > > > > +    description:
> > > > > +      The clock name for the codec clock.
> > > > > +    items:
> > > > > +      - const: mclk
> > > > You have one clock only, why do you need to have clock-names?
> > > This is just documenting the existing rk817 codec driver, which is us=
ing
> > > the name to get the clock:
> > >=20
> > > devm_clk_get(pdev->dev.parent, "mclk");
> > >=20
> > > Thus i dont think clock-names can=A0 be removed in this case? atleast=
 not
> > > without patching the driver as well?
> > Your commit msg claims this is for existing driver using rk817_codec. So
> > what about rk817? It does not use clocks?
> >=20
> rk817 uses exactly the same properties as what I included here. i.e it
> includes both clocks and clock-names.
> My point above was that I dont think I can just remove the clock-names
> property as Conor suggested? I could be wrong though.

You can't remove it from the rk817 binding, but that doesn't mean you
should add it here. If the rk817 only has one clock too, then the driver
could be modified to not rely on the clock names at all. I'd be inclined
to allow it here since that makes the binding compatible with the
existing driver for the other device.

--yBdANV7KjVXVo10Z
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZafyZAAKCRB4tDGHoIJi
0hr9AP96djRfCAp8WT+Xh0+AVthBfqn4ug+yWw3y2+LGgfJ1SgD/c4Vmyl2Gq+Yp
G2XGQ4njjJGSmJYhMHhdhBJnPSRvrAQ=
=ZR79
-----END PGP SIGNATURE-----

--yBdANV7KjVXVo10Z--


--===============6119568273505647500==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6119568273505647500==--


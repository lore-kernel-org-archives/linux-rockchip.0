Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12479C3DA7F
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Aug 2024 16:20:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=l29Bp2jlJSc2ktJsgm0Pi+cf2WdkhrPjIPliIjyQMEo=; b=IKEti8cqPzMQUucMNsLGNkECSz
	P+yidUmXAEiMQgREzlnb/DrExczzIu8JNZJXXhZlMvtQlP2QKZBb/e/rkFlUBcCya5UdebvfVGmFF
	t8kjfmsLR+jDqnF9JMpswEf7cz7LsqAct98bFDUJwBpy0kyec1akvSeHkyfdeTbN2mmeR2nk1jhUt
	oxBO1r8E0rx5a+LqHHxYxIpGUc+ksbcNFaZUL9fbKNjnMDC9cGbpPxVbktSLHILSis4ZOYWPzKU6g
	yiHSoXh0tZX1GNd42d1MK0xklwKsZnMYOSL+G4setIIw8+YWmFwNKUjp481YlIeGmqfyTbwA9NixK
	XD5Uqg/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdXm2-00000000sOT-1vfz;
	Mon, 12 Aug 2024 16:19:58 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdXlQ-00000000sKY-2vwL;
	Mon, 12 Aug 2024 16:19:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id C052CCE0E4D;
	Mon, 12 Aug 2024 16:19:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B3070C32782;
	Mon, 12 Aug 2024 16:19:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723479557;
	bh=0cIRAbufntnolHqEAujPdSo+VoDlKLijRvfp2CG8oqE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WqoD5h5UoNvSpdbb0+su/KzEUvDfCmS2vJrIwk7CH9PEXXt5mAZ/Ak+wDwwN07PDs
	 /m+wH6RIFNGYZJFejnf7suqsP/TXvHJ3XYyG0czvF1MmvEvNMBMz0oqWmYhWoZWBot
	 OV9B9JN7Lp6KYzQ2/bTjrBFEBdXR9p6SytY5HepwwpSXEPKcGpfDi/0S1LisEvUc92
	 Ap4fY8X7VdntqWgnosSgY/N/z1Uco1tb5e/u7Vad+JDvLXYsYSzTETzH8W7GHiow8d
	 69W25BWiwcd3voYdILPEfp+q/I5ajn73qyjvPnq1yxGOkfW1VLkC3T9s4pJLm76s/Z
	 0PyBtpK77W1Jw==
Date: Mon, 12 Aug 2024 17:19:12 +0100
From: Conor Dooley <conor@kernel.org>
To: Detlev Casanova <detlev.casanova@collabora.com>
Cc: linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Finley Xiao <finley.xiao@rock-chips.com>,
	Jagan Teki <jagan@edgeble.ai>, Arnd Bergmann <arnd@arndb.de>,
	Elaine Zhang <zhangqing@rock-chips.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-pm@vger.kernel.org,
	kernel@collabora.com
Subject: Re: [PATCH v2 1/2] dt-bindings: power: Add support for RK3576 SoC
Message-ID: <20240812-hamster-wreath-034eb3c2b940@spud>
References: <20240808163451.80750-1-detlev.casanova@collabora.com>
 <20240808163451.80750-2-detlev.casanova@collabora.com>
 <20240809-constant-oxidize-8aed145179c7@spud>
 <2276665.iZASKD2KPV@trenzalore>
MIME-Version: 1.0
In-Reply-To: <2276665.iZASKD2KPV@trenzalore>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240812_091921_113141_DDCD9307 
X-CRM114-Status: GOOD (  28.72  )
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
Content-Type: multipart/mixed; boundary="===============3770704192122173219=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3770704192122173219==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="YE+MBf+ZCZjz2Ojq"
Content-Disposition: inline


--YE+MBf+ZCZjz2Ojq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 09, 2024 at 01:27:18PM -0400, Detlev Casanova wrote:
> On Friday, 9 August 2024 10:59:58 EDT Conor Dooley wrote:
> > On Thu, Aug 08, 2024 at 12:31:04PM -0400, Detlev Casanova wrote:
> > > From: Finley Xiao <finley.xiao@rock-chips.com>
> > >=20
> > > Define power domain IDs as described in the TRM and add compatible for
> > > rockchip,rk3576-power-controller
> > >=20
> > > Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
> > > [reword, add yaml]
> >=20
> > To be honest, both here and in your other patch, you should remove this
> > [] section and add a co-develop-ed-by instead.
>=20
> That seems to be used quite often though, I like how it gives an idea of =
what=20
> has been adapted from downstream patches.

Right, but if you modified it, then why not be a co-author? IMO the []
is only suitable for when patches are modified between submission and
application by a maintainer and that anything else should be noted under
the --- line. If you feel like the difference to the vendor kernel is
worth having in the git history, it should be described in the commit
message itself and the reason should be meaningful (like the numbers
changed incompatibly) rather than that you did the minimum required for
a patch to be acceptable.

Cheers,
Conor.

>=20
> > Acked-by: Conor Dooley <conor.dooley@microchip.com>
> >=20
> > > Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> > > ---
> > >=20
> > >  .../power/rockchip,power-controller.yaml      |  1 +
> > >  .../dt-bindings/power/rockchip,rk3576-power.h | 30 +++++++++++++++++=
++
> > >  2 files changed, 31 insertions(+)
> > >  create mode 100644 include/dt-bindings/power/rockchip,rk3576-power.h
> > >=20
> > > diff --git
> > > a/Documentation/devicetree/bindings/power/rockchip,power-controller.y=
aml
> > > b/Documentation/devicetree/bindings/power/rockchip,power-controller.y=
aml
> > > index 0d5e999a58f1b..650dc0aae6f51 100644
> > > ---
> > > a/Documentation/devicetree/bindings/power/rockchip,power-controller.y=
aml
> > > +++
> > > b/Documentation/devicetree/bindings/power/rockchip,power-controller.y=
aml>=20
> > > @@ -41,6 +41,7 @@ properties:
> > >        - rockchip,rk3368-power-controller
> > >        - rockchip,rk3399-power-controller
> > >        - rockchip,rk3568-power-controller
> > >=20
> > > +      - rockchip,rk3576-power-controller
> > >=20
> > >        - rockchip,rk3588-power-controller
> > >        - rockchip,rv1126-power-controller
> > >=20
> > > diff --git a/include/dt-bindings/power/rockchip,rk3576-power.h
> > > b/include/dt-bindings/power/rockchip,rk3576-power.h new file mode 100=
644
> > > index 0000000000000..324a056aa8512
> > > --- /dev/null
> > > +++ b/include/dt-bindings/power/rockchip,rk3576-power.h
> > > @@ -0,0 +1,30 @@
> > > +/* SPDX-License-Identifier: (GPL-2.0 OR MIT) */
> > > +#ifndef __DT_BINDINGS_POWER_RK3576_POWER_H__
> > > +#define __DT_BINDINGS_POWER_RK3576_POWER_H__
> > > +
> > > +/* VD_NPU */
> > > +#define RK3576_PD_NPU		0
> > > +#define RK3576_PD_NPUTOP	1
> > > +#define RK3576_PD_NPU0		2
> > > +#define RK3576_PD_NPU1		3
> > > +
> > > +/* VD_GPU */
> > > +#define RK3576_PD_GPU		4
> > > +
> > > +/* VD_LOGIC */
> > > +#define RK3576_PD_NVM		5
> > > +#define RK3576_PD_SDGMAC	6
> > > +#define RK3576_PD_USB		7
> > > +#define RK3576_PD_PHP		8
> > > +#define RK3576_PD_SUBPHP	9
> > > +#define RK3576_PD_AUDIO		10
> > > +#define RK3576_PD_VEPU0		11
> > > +#define RK3576_PD_VEPU1		12
> > > +#define RK3576_PD_VPU		13
> > > +#define RK3576_PD_VDEC		14
> > > +#define RK3576_PD_VI		15
> > > +#define RK3576_PD_VO0		16
> > > +#define RK3576_PD_VO1		17
> > > +#define RK3576_PD_VOP		18
> > > +
> > > +#endif
>=20
>=20
>=20
>=20

--YE+MBf+ZCZjz2Ojq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZro2AAAKCRB4tDGHoIJi
0kHtAQDWMoel5fDSeotGlNf2O62pidhVGX6hhvxxTZnhdJi5kwEAvxrqJXlo0Vwb
nHvd1tyqOlNL3xiA+5C/MRsH/fYU7w8=
=xF8J
-----END PGP SIGNATURE-----

--YE+MBf+ZCZjz2Ojq--


--===============3770704192122173219==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3770704192122173219==--


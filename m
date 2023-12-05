Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4FEDC4167B
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Dec 2023 16:56:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lRAuSHY7uL2DJWvCRpfNo9m67cbWwKpryfz8+O2MBho=; b=xp28U+v+laYgVN5N2iwLDagCKH
	BozPlbBfZu6NFKMC2+7q4xhk8RS8u+5+/lr0rX6pgPjl0GqAMlTtX1/CD7tN7QTXqlYvLkdWKkEKa
	EiaIdPIthsia30zrhq0Ra5jxpD9gM2c6bB+i2Wfq2auIfwbTSnEivdJVo31AAlQ15jhA2XleLisfB
	cvO+dMaGtS2RfSpw5X8KCoxxad4nT5hTGqyHcbmsH5lupGfwhT4gClVy0OniCZzcyzZ2caFoxKeRH
	ObaslAunOP5EiO+Ng3/QI76jwNt9qCkQnkdsci7VP1qUZiuDxXk4A5m764WGjoph/4p5gSIXqQoAf
	XsAgOPig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAYiE-007xv3-1b;
	Tue, 05 Dec 2023 16:55:58 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAYi9-007xt3-1k;
	Tue, 05 Dec 2023 16:55:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 20C8CB81BB5;
	Tue,  5 Dec 2023 16:55:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 29C03C433C7;
	Tue,  5 Dec 2023 16:55:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701795348;
	bh=RwcNNAfsT2+STZzMi5x3BGwN32YgoA2d0mKr4ENbGZE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FjFLZ1Rh+du2h3Xb0bSK4KrUOT6fT/mC3PCn1xTExxYL1Y9m6klM24q5lg1anp4fM
	 VNee4O0kp/dYn/OjnEz2zyPba6X5OPGM/zHSORp8+8noc+Fs/VoH4RI6HHM1uFtGVO
	 23v3U91sGep4k51vdmQE7QGYYBhrzTH4vVQUoTQ9UCG/yUQ1sQqvO8GzKgQtOOnJlu
	 ImKOnsrqWdkJzcwZK9yqxYPuTDOg33Ea9YikvpStDx8Ra+JAHSfou0NygtMVmwEplC
	 DTm5Ld0nRrs/7yx92WsNscDE1+9aj/9ztHcwj53aZcD1gyHCOuJZgBM2BSDKNvyQ7S
	 /67tlhJmHj2Jw==
Date: Tue, 5 Dec 2023 16:55:42 +0000
From: Conor Dooley <conor@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: Alex Bee <knaerzche@gmail.com>, heiko@sntech.de, hjc@rock-chips.com,
	maarten.lankhorst@linux.intel.com, mripard@kernel.org,
	tzimmermann@suse.de, airlied@gmail.com, daniel@ffwll.ch,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 1/3] dt-bindings: drm: rockchip: convert
 inno_hdmi-rockchip.txt to yaml
Message-ID: <20231205-agency-paralyses-2a7b6df25c66@spud>
References: <49c6afec-022f-02de-99a0-d409b64da198@gmail.com>
 <3f235189-da75-4e9d-ad68-8cbebca12f6d@gmail.com>
 <3331543a-73fb-3565-47c6-d3303c44ba21@gmail.com>
MIME-Version: 1.0
In-Reply-To: <3331543a-73fb-3565-47c6-d3303c44ba21@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231205_085553_882383_C9CCBA92 
X-CRM114-Status: GOOD (  15.03  )
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
Content-Type: multipart/mixed; boundary="===============1073267828717895751=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1073267828717895751==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7k2kR/ZshohNs10q"
Content-Disposition: inline


--7k2kR/ZshohNs10q
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 04, 2023 at 09:47:15PM +0100, Johan Jonker wrote:
> On 12/4/23 19:56, Alex Bee wrote:
> > Am 04.12.23 um 18:39 schrieb Johan Jonker:
> >> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockch=
ip,inno-hdmi.yaml b/Documentation/devicetree/bindings/display/rockchip/rock=
chip,inno-hdmi.yaml
> >> new file mode 100644
> >> index 000000000000..96889c86849a
> >> --- /dev/null
> >> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,inno=
-hdmi.yaml
> >> @@ -0,0 +1,103 @@
> >> +# SPDX-License-Identifier: GPL-2.0
> >> +%YAML 1.2
> >> +---
> >> +$id: http://devicetree.org/schemas/display/rockchip/rockchip,inno-hdm=
i.yaml#
> >> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> >> +
> >> +title: Rockchip Innosilicon HDMI controller
> >> +
> >> +maintainers:
> >> +=A0 - Sandy Huang <hjc@rock-chips.com>
> >> +=A0 - Heiko Stuebner <heiko@sntech.de>
> >> +
> >> +properties:
> >> +=A0 compatible:
> >> +=A0=A0=A0 enum:
> >> +=A0=A0=A0=A0=A0 - rockchip,rk3036-inno-hdmi
> >> +
> >> +=A0 reg:
> >> +=A0=A0=A0 maxItems: 1
> >> +
> >> +=A0 interrupts:
> >> +=A0=A0=A0 maxItems: 1
> >> +
> >> +=A0 clocks:
> >> +=A0=A0=A0 maxItems: 1
>=20
> > The interrupts/clock description exists already in the txt-bindings - s=
o how about:
> >=20
> > +=A0=A0=A0 items:
> > +=A0=A0=A0=A0=A0 - descrition: ....
> >> +
>=20
> It's not common to do so when there's only one clock and nothing special =
to mention.
> Used this style for most of my conversions.=20
> Further rational might be given by Krzysztof and co.

Ye, when there is no ambiguity, having the description is not
required.

--7k2kR/ZshohNs10q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZW9WDgAKCRB4tDGHoIJi
0kOrAP9ylHU9P8zGa7mCfZC4jocgIUPfnviKF/UNsLkrX04RRgEAoOTHJFCbSG0E
PQExNlhDrVVvQL7O9+TCRCb60H04Uwg=
=Ow+j
-----END PGP SIGNATURE-----

--7k2kR/ZshohNs10q--


--===============1073267828717895751==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1073267828717895751==--


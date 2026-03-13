Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2809107BCCD
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Mar 2026 16:57:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vQrcas0GVbkcA79PVHMh9DDC/XYBF8ANJBw0bxE0zDc=; b=aQ1i4+ZulBeeO03vZ6xiMnboYe
	UQJGX8IYxMKMxL9rL3AGhQR6ndYC6wCHiKSb5Q3Bb2+R3TZCuEWIuvwX+3hBQDCtY7iJlsNlRkheo
	BolEJfhIZvhFPvuXI4mSfj6hm0aJmoFqz59MXgxgUWNkLA5VFmZBQR7Uj3L9I3EMEw8IavAESgbMA
	ZLU7kgkC9YaEoyTboGdmAx3fNRX5v/SKAEhGx0jYnzbmVmrQ7w5LnV3K7n/xYALPjvrCgSuubHT7p
	svNFVrnZuIhn869e1Egdgazhvz5uz1Tp0iPC2CGtdlh4/26blEcVGbPwPP1Pkj8CS7mIT7ZlXjCj5
	W6bZRnlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w15pe-00000000iPZ-0fGY;
	Fri, 13 Mar 2026 16:57:50 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w15pX-00000000iKZ-2Plq;
	Fri, 13 Mar 2026 16:57:47 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id D298440413;
	Fri, 13 Mar 2026 16:57:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 17D4DC19421;
	Fri, 13 Mar 2026 16:57:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773421062;
	bh=khXFvWj9lIYktByP7ZJX+6n1NUtFwKtwOcL+GNs+f6A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=H1Pv4bwH7GGTyhgN07TlIWhPaCc06Qelcl21hcmWFA2gCFRfNJKy2ZLuxzPK0AEp7
	 WdU/Fo/NZZgUemhcypakqg8A3v/bCy+D0tTldNYzzZAZROCpPuk7mxLrWfGHj+0LeN
	 MzHlqH6GiI1lXjzi+HAukG1zsCvSCk+2a8FUqMMr9cao/1Qjzk/rV97tyGEqUCrfbw
	 CUzlAMBrw7UbsQkmJoiAUBtK6xQWVsOr01lwr9jEzO0a2DdnSDCf1ixpseg4u0LY1g
	 aQpZQ/N6p3Ht6qlgqDyojPphS/iejYhtOb+GemlTRdroKEfP+k1YVNxuBIDjspZcDZ
	 NUD4m99qPvyBg==
Date: Fri, 13 Mar 2026 16:57:36 +0000
From: Conor Dooley <conor@kernel.org>
To: michael.riesch@collabora.com
Cc: Mehdi Djait <mehdi.djait@linux.intel.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Kever Yang <kever.yang@rock-chips.com>,
	Jagan Teki <jagan@amarulasolutions.com>,
	=?utf-8?B?0JrRg9C30L3QtdGG0L7QsiDQnNC40YXQsNC40Ls=?= <mai.kuznetsov.misha@gmail.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Collabora Kernel Team <kernel@collabora.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	linux-media@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/9] media: dt-bindings: add rockchip rk3588 vicap
Message-ID: <20260313-coyness-jab-ff0c85654555@spud>
References: <20250430-rk3588-vicap-v1-0-b3bddf749914@collabora.com>
 <20250430-rk3588-vicap-v1-2-b3bddf749914@collabora.com>
 <20260313-quickly-imperial-47638c9f0d4f@spud>
MIME-Version: 1.0
In-Reply-To: <20260313-quickly-imperial-47638c9f0d4f@spud>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_095743_671276_901ED781 
X-CRM114-Status: GOOD (  20.13  )
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
Content-Type: multipart/mixed; boundary="===============8693252253950871526=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8693252253950871526==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="S7d/qyDaD5sp6+Yh"
Content-Disposition: inline


--S7d/qyDaD5sp6+Yh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 13, 2026 at 04:56:29PM +0000, Conor Dooley wrote:
> On Fri, Mar 13, 2026 at 04:20:44PM +0100, Michael Riesch via B4 Relay wro=
te:
> > From: Michael Riesch <michael.riesch@collabora.com>
> >=20
> > Add documentation for the Rockchip RK3588 Video Capture (VICAP) unit.
> >=20
> > Signed-off-by: Michael Riesch <michael.riesch@collabora.com>
> > ---
> >  .../bindings/media/rockchip,rk3588-vicap.yaml      | 256 +++++++++++++=
++++++++
> >  MAINTAINERS                                        |   1 +
> >  2 files changed, 257 insertions(+)
> >=20
> > diff --git a/Documentation/devicetree/bindings/media/rockchip,rk3588-vi=
cap.yaml b/Documentation/devicetree/bindings/media/rockchip,rk3588-vicap.ya=
ml
> > new file mode 100644
> > index 000000000000..7fd4214921cb
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/media/rockchip,rk3588-vicap.yaml
> > @@ -0,0 +1,256 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/media/rockchip,rk3588-vicap.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Rockchip RK3588 Video Capture (VICAP)
> > +
> > +maintainers:
> > +  - Michael Riesch <michael.riesch@collabora.com>
> > +
> > +description:
> > +  The Rockchip RK3588 Video Capture (VICAP) block features a digital v=
ideo
> > +  port (DVP, a parallel video interface) and six MIPI CSI-2 ports. It =
receives
> > +  the data from camera sensors, video decoders, or other companion ICs=
 and
> > +  transfers it into system main memory by AXI bus and/or passes it to =
the image
> > +  signal processing (ISP) blocks.
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - rockchip,rk3588-vicap
>=20
> Curious why this cannot share a binding with the existing 3568-vicap.
> Looks pretty similar binding wise at least.
> If it's an entirely different architecture or whatever, please mention
> that in your commit message.

Looking further, it's using the same driver too...

--S7d/qyDaD5sp6+Yh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCabRCAAAKCRB4tDGHoIJi
0uVoAQC9aktstpY3Ps5YxtEBxqUOAWA83YHM85wd6hzwHPdf/AEAyxeasFwEek0/
pjKkmZ1ye2nqzV7ZMXoKzZ+qV26aoQ4=
=AHWC
-----END PGP SIGNATURE-----

--S7d/qyDaD5sp6+Yh--


--===============8693252253950871526==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8693252253950871526==--


Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C91CC71136
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Jun 2025 18:29:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DZUahN6DxDXYTNrWVt0vfUSw9D2zwky0ZLpJ58A2hyc=; b=fqShORVGKCh7DRPOw/ny7YOJSL
	IAm7Kqq9GbD7KC16VrbzIW9WOZdBhWvVpa8WuzFXy0QLUeY1qKA7JhwrufsIGuW8uUspp2ps9nyXQ
	Z7nXNlbFClgtsczOjhZ2UJBXSfORGyTXFhqR933t1CSti+NpbwA8IbugseucoXsj6v/Ec3AiS0A2x
	RZ3j8PZPE2vEQfMaG+iFu/LxvhvonaSv7MUsCn9xvoqDP0t8IO/n/rUwFuZuY04+eAXu8lo7hIIWu
	caKKSXEVo2/Hg7gnR9VLDvWsLzR2OT39ehyk/tx94k5FABfCJTJIp2xKugUn8kTz8rDvKGmRjAwxF
	nE8nzx1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uREZy-00000005Dcu-3ngc;
	Mon, 16 Jun 2025 18:29:10 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRByx-00000004usj-1m2w;
	Mon, 16 Jun 2025 15:42:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id F3A0E45133;
	Mon, 16 Jun 2025 15:42:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 831C7C4CEF0;
	Mon, 16 Jun 2025 15:42:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750088566;
	bh=EL96VpQZzhoPtchVrd8NRiz8LeFclfDJXhz0xUwdWEg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=M5Ka/c3Pxo+O35mhlGpQYbsO72F4TNYunYxC9sAiN0UEZIa60ATRi78eLQwlw6bgB
	 raQRDb4JhgkjOV9Kd45dAKE7FK72iXYWxdfRy6mU5bbXypwMbRt+FYr6wtiovTqWBm
	 Vu4A21c35saGJ9Z5JbcT88hX6baMyaLHvGwaXMhVmNEmzWYBAk2ach3q9DRvZ2Ipsk
	 Rnk+vVVByYuFwlCBHF++frBXTaZ2UZla0C7b0GBjD7rQ78CCtpTLdNH7dnJQwuckV7
	 9TM8VTo/DTm9qcr1yC3+gpJKSzqCAGG/3ZABybuPDdfteDDxOygw6B+lJwdmr3iPDa
	 Y3UKalyDBFfvw==
Date: Mon, 16 Jun 2025 16:42:41 +0100
From: Conor Dooley <conor@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: joro@8bytes.org, will@kernel.org, robin.murphy@arm.com, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
	nicolas.dufresne@collabora.com, p.zabel@pengutronix.de,
	mchehab@kernel.org, iommu@lists.linux.dev,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org,
	kernel@collabora.com
Subject: Re: [PATCH 2/5] dt-bindings: iommu: verisilicon: Add binding for VSI
 IOMMU
Message-ID: <20250616-contempt-remix-5af2b7281cbd@spud>
References: <20250616145607.116639-1-benjamin.gaignard@collabora.com>
 <20250616145607.116639-3-benjamin.gaignard@collabora.com>
 <20250616-winter-strict-db98f85db22d@spud>
 <5c971c09-c398-40a3-9ed5-ec38b6645e1d@collabora.com>
MIME-Version: 1.0
In-Reply-To: <5c971c09-c398-40a3-9ed5-ec38b6645e1d@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250616_084247_504232_C7BD2B4A 
X-CRM114-Status: GOOD (  23.47  )
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
Content-Type: multipart/mixed; boundary="===============0211208753618398055=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0211208753618398055==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="3uegz8X9AMqKgIIC"
Content-Disposition: inline


--3uegz8X9AMqKgIIC
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 16, 2025 at 05:30:44PM +0200, Benjamin Gaignard wrote:
>=20
> Le 16/06/2025 =E0 17:14, Conor Dooley a =E9crit=A0:
> > On Mon, Jun 16, 2025 at 04:55:50PM +0200, Benjamin Gaignard wrote:
> > > Add a device tree binding for the Verisilicon (VSI) IOMMU. This IOMMU=
 sits
> > > in front of hardware encoder and decoder blocks on SoCs using Verisil=
icon IP,
> > > such as the Rockchip RK3588.
> > >=20
> > > Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> > > ---
> > >   .../bindings/iommu/verisilicon,iommu.yaml     | 71 ++++++++++++++++=
+++
> > >   1 file changed, 71 insertions(+)
> > >   create mode 100644 Documentation/devicetree/bindings/iommu/verisili=
con,iommu.yaml
> > >=20
> > > diff --git a/Documentation/devicetree/bindings/iommu/verisilicon,iomm=
u.yaml b/Documentation/devicetree/bindings/iommu/verisilicon,iommu.yaml
> > > new file mode 100644
> > > index 000000000000..acef855fc61d
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/iommu/verisilicon,iommu.yaml
> > > @@ -0,0 +1,71 @@
> > > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/iommu/verisilicon,iommu.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Verisilicon IOMMU
> > > +
> > > +maintainers:
> > > +  - Benjamin Gaignard <benjamin.gaignard@collabora.com>
> > > +
> > > +description: |+
> > > +  A Versilicon iommu translates io virtual addresses to physical add=
resses for
> > > +  its associated video decoder.
> > > +
> > > +properties:
> > > +  compatible:
> > > +    oneOf:
> > > +      - items:
> > > +          - const: verisilicon,iommu
> > You're missing a soc-specific compatible at the very least here, but is
> > there really no versioning on the IP at all? I'd be surprised if
> > verisilicon only produced exactly one version of an iommu IP.
>=20
> I only aware this version of the iommu for the moment.

"for the moment", yeah. Is there any information that could be used to
version this available?

> Does adding verisilicon,rk3588-iommu sound good for you ?

It'd be "rockchip,rk3588-iommu", but sure.

--3uegz8X9AMqKgIIC
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaFA7cQAKCRB4tDGHoIJi
0iCzAP9YCsHKGIYiBpnknc4NXqsdt+3vAksXP7lkL3rhV72dnAD/V+ZJlq0CxEGR
YIn/c1CTX5YI8+iwECvQSNErsd1qHAo=
=gnvG
-----END PGP SIGNATURE-----

--3uegz8X9AMqKgIIC--


--===============0211208753618398055==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0211208753618398055==--


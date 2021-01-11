Return-Path: <SRS0=mNPc=GO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD81AC433DB
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jan 2021 17:20:38 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8227F22AAD
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jan 2021 17:20:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8227F22AAD
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=bootlin.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=A3tQrOGbUbcSHCuVk9HgCVJtaiyrGUPBFJnBGmM5IIM=; b=G7cyhZ9MQqy+bTDld6PDXeGzJ
	dFeHG1clwYG2Xpdow4KzUE0fMrxfjLEDx5ly4ExvanA8lV+jZc735DYnsahb73D8WMgekky/bAOCL
	x2FF809AyYuXBoL4+WZAmcMLBfpX4xkCYkpaTyc2qyzJtK4SxtcUzdwJ42NGfvmQmemHdNVeLcQq0
	XccsGgbLeb9xPw4dY8w7iDAIBwgtT4Rw//0E2SzYzMhd5HiSjGIn+ObP6FvZLzzQV5OZyQrY9MmqS
	gP2YQvq5BkiMrdJGmDC9iOUqXeqVIH+n2GS2wgKZnnpHQfikRVLaZBLjP+aicdMNeCi/x0mcXgTdL
	Ft9r7HSpg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kz0ro-0006Ba-7S; Mon, 11 Jan 2021 17:20:32 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kz0rf-00068P-ES; Mon, 11 Jan 2021 17:20:24 +0000
X-Originating-IP: 93.29.109.196
Received: from aptenodytes (196.109.29.93.rev.sfr.net [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 595964000B;
 Mon, 11 Jan 2021 17:20:17 +0000 (UTC)
Date: Mon, 11 Jan 2021 18:20:16 +0100
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Philipp Zabel <p.zabel@pengutronix.de>
Subject: Re: [PATCH 3/5] dt-bindings: media: rockchip-vpu: Add PX30 compatible
Message-ID: <X/yI0BCrkrEI/K42@aptenodytes>
References: <20210107134101.195426-1-paul.kocialkowski@bootlin.com>
 <20210107134101.195426-4-paul.kocialkowski@bootlin.com>
 <a23ab40e50a761bd2127df6bc8b2a91e99a1617c.camel@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <a23ab40e50a761bd2127df6bc8b2a91e99a1617c.camel@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210111_122023_699959_9BF917D8 
X-CRM114-Status: GOOD (  20.47  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-rockchip@lists.infradead.org,
 Jacob Chen <jacob-chen@iotwrt.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============9024101481690794876=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============9024101481690794876==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7MHoYb//4iLnyjZi"
Content-Disposition: inline


--7MHoYb//4iLnyjZi
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Philipp,

On Thu 07 Jan 21, 15:55, Philipp Zabel wrote:
> Hi Paul,
>=20
> On Thu, 2021-01-07 at 14:40 +0100, Paul Kocialkowski wrote:
> > The Rockchip PX30 SoC has a Hantro VPU that features a decoder (VDPU2)
> > and an encoder (VEPU2). It is similar to the RK3399's VPU but takes an
> > extra clock (SCLK).
> >=20
> > Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > ---
> >  .../bindings/media/rockchip-vpu.yaml          | 25 +++++++++++++------
> >  1 file changed, 17 insertions(+), 8 deletions(-)
> >=20
> > diff --git a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml =
b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> > index c81dbc3e8960..c446b9ead21b 100644
> > --- a/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> > +++ b/Documentation/devicetree/bindings/media/rockchip-vpu.yaml
> > @@ -15,10 +15,13 @@ description:
> > =20
> >  properties:
> >    compatible:
> > -    enum:
> > -      - rockchip,rk3288-vpu
> > -      - rockchip,rk3328-vpu
> > -      - rockchip,rk3399-vpu
> > +    oneOf:
> > +      - const: rockchip,rk3288-vpu
> > +      - const: rockchip,rk3328-vpu
> > +      - const: rockchip,rk3399-vpu
> > +      - items:
> > +        - const: rockchip,px30-vpu
> > +        - const: rockchip,rk3399-vpu
> > =20
> >    reg:
> >      maxItems: 1
> > @@ -35,12 +38,18 @@ properties:
> >            - const: vdpu
> > =20
> >    clocks:
> > -    maxItems: 2
> > +    minItems: 2
> > +    maxItems: 3
> > =20
> >    clock-names:
> > -    items:
> > -      - const: aclk
> > -      - const: hclk
> > +    oneOf:
> > +      - items:
> > +        - const: aclk
> > +        - const: hclk
> > +      - items:
> > +        - const: aclk
> > +        - const: hclk
> > +        - const: sclk
>=20
> You could make this:
>=20
>     clock-names:
>       minItems: 2
>       items:
>         - const: aclk
>         - const: hclk
>         - const: sclk
>=20
> And then:
>=20
> allOf:
>   - if:
>       properties:
>         compatible:
>           contains:
>             const: rockchip,px30-vpu
>     then:
>       properties:
>         clock-names:
>           minItems: 3
>=20
> to make sure each variant has the correct clocks set.

Thanks for the suggestion! That's a finer grain that my proposal.

Rob, is there a preference for how this case should be handled?
Here, we want to specify an extra clock for the PX30 case.

Cheers,

Paul

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--7MHoYb//4iLnyjZi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl/8iNAACgkQ3cLmz3+f
v9EGTgf/cgOKh4wu1sCC8/0p35XnHK1fKqvY0710rustUO1l4hbVKA0uavtIZ0ei
2xTeicq6AK40n0SPvMiyYB/Naz/YT1CJ3xY+rm+fBARG2tW+IPZS16/EudbQYrb2
aW1iXXj8hGqTPjIDaKMbTBRv/r+mSFsEZuimq2iNbF5Qq2J0AkESeEj6H3YLvl9z
BibYPcx+NHtHlA6iogqV5iqvmUT+x0ur0+NeUDj8Tu4qDZhPZY2I++U5WNSIqAlQ
jPsef+ABZ5Uzq2JmrjJqY9PATVuuTx8kbHIqCLpKRW1a+1PnZf7zedf1BRI19EgL
lg9SFntpJ6LjCpUVWLPLlpHIgWMqBA==
=L38N
-----END PGP SIGNATURE-----

--7MHoYb//4iLnyjZi--


--===============9024101481690794876==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============9024101481690794876==--


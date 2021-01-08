Return-Path: <SRS0=mPU+=GL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EC9B6C433E0
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Jan 2021 09:05:37 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 431902226A
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Jan 2021 09:05:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 431902226A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=bootlin.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QFSuFh7YrKjZDFg/AsLPuRA9caz48X7pINYWwJnCPt0=; b=mwVcm8iXHHBYq+riUQ+ss+zXr
	jSaL4fSF12tE4W/DKq6AAlT+6MTl4jaARcIa2feWnkBOj4dwuA6NnG1BxR+6uIKYrWycoqISENW1F
	TkMEEmLBiXK7xBu/h0+1Jnz+4ypIDRbCbAjvPLNhN3Bt+cV/uzqHdN4mXiJy8JH9Q/1C2RvFrtBw5
	h79ofy1tNhu/HV0hyMeG2WcflxkCiqG92Q4wCi3LLJkpNsjwy0womBFVp35J5HukL6IimxYIHUCRg
	tYjOZCTrXMbJ1W9/+UGtVWaYm29dLRDT6HERHP35x2zNwH0I0nX4GEFc9UdAj/UMoGCVMEaiNpIsL
	8rbnfzO9A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kxni3-00084j-Ef; Fri, 08 Jan 2021 09:05:27 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kxnhy-00083u-Pj; Fri, 08 Jan 2021 09:05:24 +0000
X-Originating-IP: 93.29.109.196
Received: from aptenodytes (196.109.29.93.rev.sfr.net [93.29.109.196])
 (Authenticated sender: paul.kocialkowski@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 2EB9C60005;
 Fri,  8 Jan 2021 09:05:16 +0000 (UTC)
Date: Fri, 8 Jan 2021 10:05:16 +0100
From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
To: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH 5/5] media: hantro: Add support for the Rockchip PX30
Message-ID: <X/ggTOOTBhGoFDpW@aptenodytes>
References: <20210107134101.195426-1-paul.kocialkowski@bootlin.com>
 <20210107134101.195426-6-paul.kocialkowski@bootlin.com>
 <f7291b83fe39d71c3192ea58ebf71e3909bd38af.camel@collabora.com>
MIME-Version: 1.0
In-Reply-To: <f7291b83fe39d71c3192ea58ebf71e3909bd38af.camel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210108_040523_113863_BB900326 
X-CRM114-Status: GOOD (  31.01  )
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
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-rockchip@lists.infradead.org,
 Jacob Chen <jacob-chen@iotwrt.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============4989401941356416770=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4989401941356416770==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="etmhCrDwxUeORcrG"
Content-Disposition: inline


--etmhCrDwxUeORcrG
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Ezequiel,

On Thu 07 Jan 21, 16:08, Ezequiel Garcia wrote:
> Happy to see this patch. It was on my TODO list,
> but I hadn't had time to bringup my rk3326 device.

Same here, I just had an occasion to use it again these days so I jumped
on it!

> A few comments.
>=20
> On Thu, 2021-01-07 at 14:41 +0100, Paul Kocialkowski wrote:
> > The PX30 SoC includes both the VDPU2 and VEPU2 blocks which are similar
> > to the RK3399 (Hantro G1/H1 with shuffled registers).
> >=20
> > Besides taking an extra clock, it also shares an interrupt with the IOM=
MU
> > so it's necessary to request the interrupt shared.
> >=20
>=20
> Could you clarify on the commit description which iommu device interrupt
> line is being shared?

Sure! It's IRQ 79 of the GIC that's shared with vopl_mmu.
It's not very obvious in the dt commit.

> > Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > ---
> > =C2=A0drivers/staging/media/hantro/hantro_drv.c=C2=A0=C2=A0=C2=A0 |=C2=
=A0 5 +++--
> > =C2=A0drivers/staging/media/hantro/hantro_hw.h=C2=A0=C2=A0=C2=A0=C2=A0 =
|=C2=A0 1 +
> > =C2=A0drivers/staging/media/hantro/rk3399_vpu_hw.c | 21 +++++++++++++++=
+++++
> > =C2=A03 files changed, 25 insertions(+), 2 deletions(-)
> >=20
> > diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/stagin=
g/media/hantro/hantro_drv.c
> > index e5f200e64993..076a7782b476 100644
> > --- a/drivers/staging/media/hantro/hantro_drv.c
> > +++ b/drivers/staging/media/hantro/hantro_drv.c
> > @@ -472,6 +472,7 @@ static const struct v4l2_file_operations hantro_fop=
s =3D {
> > =C2=A0
> > =C2=A0static const struct of_device_id of_hantro_match[] =3D {
> > =C2=A0#ifdef CONFIG_VIDEO_HANTRO_ROCKCHIP
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{ .compatible =3D "rockchip,=
px30-vpu", .data =3D &px30_vpu_variant, },
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{ .compatible =3D "rock=
chip,rk3399-vpu", .data =3D &rk3399_vpu_variant, },
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{ .compatible =3D "rock=
chip,rk3328-vpu", .data =3D &rk3328_vpu_variant, },
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0{ .compatible =3D "rock=
chip,rk3288-vpu", .data =3D &rk3288_vpu_variant, },
> > @@ -796,8 +797,8 @@ static int hantro_probe(struct platform_device *pde=
v)
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
return -ENXIO;
> > =C2=A0
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0ret =3D devm_request_irq(vpu->dev, irq,
> > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 vpu->variant->irqs[i].handler, 0,
> > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 dev_name(vpu->dev), vpu);
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 vpu->variant->irqs[i].handler,
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 IRQF_SHARED, dev_name(vpu->dev), vpu);
>=20
> Maybe this irq flag should be part of vpu->variant? It sounds like an IP =
block
> integration specific thing.

Ah right, I agree that it would be justified. But it would also be simple to
just fix the irq handlers and assume this can generally be the case, becaus=
e it
feels like a bit of a detail to justify a flag.

Do you think this could be a safe/workable assumption?

> Also, you will need a px30-specific interrupt handler now,
> since the rk3399 one is not shared-friendly.

Yeah I realize I haven't been very careful there and didn't really check th=
at
the IOMMU driver is really safe to handle shared interrupts either. I'll ta=
ke
a look a that when crafting v2.

> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0if (ret) {
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
dev_err(vpu->dev, "Could not request %s IRQ.\n",
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0irq_name);
> > diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging=
/media/hantro/hantro_hw.h
> > index 34c9e4649a25..07f516fd7a2e 100644
> > --- a/drivers/staging/media/hantro/hantro_hw.h
> > +++ b/drivers/staging/media/hantro/hantro_hw.h
> > @@ -148,6 +148,7 @@ enum hantro_enc_fmt {
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0RK3288_VPU_ENC_FMT_UYVY=
422 =3D 3,
> > =C2=A0};
> > =C2=A0
> > +extern const struct hantro_variant px30_vpu_variant;
> > =C2=A0extern const struct hantro_variant rk3399_vpu_variant;
> > =C2=A0extern const struct hantro_variant rk3328_vpu_variant;
> > =C2=A0extern const struct hantro_variant rk3288_vpu_variant;
> > diff --git a/drivers/staging/media/hantro/rk3399_vpu_hw.c b/drivers/sta=
ging/media/hantro/rk3399_vpu_hw.c
> > index 7a7962cf771e..4112f98baa60 100644
> > --- a/drivers/staging/media/hantro/rk3399_vpu_hw.c
> > +++ b/drivers/staging/media/hantro/rk3399_vpu_hw.c
>=20
> Perhaps it's time to rename this to rockchip_vpu_hw.c,
> and merge rk3288 and rk3399? It's a nitpick, though.

Haha, I was thinking the exact same thing but wasn't sure it would be welco=
me!

I was thinking of rockchip_vpu2_hw.c or rockchip_vdpu2_hw.c since that's
apparently how it's called in Rockchip terminology: VDPU2 and VEPU2 for the
Hantro G1 and H1 with the shuffled register layout. The rk3288 stuff is
probably VDPU1/VEPU1 and we might want to rename it accordingly as well.

Cheers and thanks for the review!

Paul

> > @@ -220,3 +220,24 @@ const struct hantro_variant rk3328_vpu_variant =3D=
 {
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0.clk_names =3D rk3399_c=
lk_names,
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0.num_clocks =3D ARRAY_S=
IZE(rk3399_clk_names),
> > =C2=A0};
> > +
> > +static const char * const px30_clk_names[] =3D {
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0"aclk", "hclk", "sclk"
> > +};
> > +
> > +const struct hantro_variant px30_vpu_variant =3D {
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0.enc_offset =3D 0x0,
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0.enc_fmts =3D rk3399_vpu_enc=
_fmts,
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0.num_enc_fmts =3D ARRAY_SIZE=
(rk3399_vpu_enc_fmts),
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0.dec_offset =3D 0x400,
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0.dec_fmts =3D rk3399_vpu_dec=
_fmts,
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0.num_dec_fmts =3D ARRAY_SIZE=
(rk3399_vpu_dec_fmts),
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0.codec =3D HANTRO_JPEG_ENCOD=
ER | HANTRO_MPEG2_DECODER |
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 HANTRO_VP8_DECODER,
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0.codec_ops =3D rk3399_vpu_co=
dec_ops,
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0.irqs =3D rk3399_irqs,
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0.num_irqs =3D ARRAY_SIZE(rk3=
399_irqs),
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0.init =3D rk3399_vpu_hw_init,
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0.clk_names =3D px30_clk_name=
s,
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0.num_clocks =3D ARRAY_SIZE(p=
x30_clk_names)
> > +};
>=20
> Thanks,
> Ezequiel
>=20

--=20
Paul Kocialkowski, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

--etmhCrDwxUeORcrG
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEJZpWjZeIetVBefti3cLmz3+fv9EFAl/4IEwACgkQ3cLmz3+f
v9Hs7ggAli/nDnFiLhQROx7nOkd1bYcdjuc05TrCrv37+O+iX6wZ4jS2EtWhQFEw
wkGmbDO3VAg3IqnAa+yDg4Dt7NCEew0NYa7r141wokwJ9CNj0lrqb09rMZLOwEJa
khdJUQbQkvu09A+6lIORDDRK1nbKKkuPkvnBTmKw0SmUOcno0k1yfn9SIUjjFxu7
d9wlMa/gu/ERxZqCd5mJldAngR6R65nbnwFrPzVY1QXw+N/UxcwY4DC4DDw5fk4w
wCSgCk6VpquyYw1bNBOrGUJyy6dxJvclnYiOcIihGucSiPn3FgXuNvCrvfxLDuNq
hRs2ktu3Xd2L9A3JR02euKHHGdZyMQ==
=kxiS
-----END PGP SIGNATURE-----

--etmhCrDwxUeORcrG--


--===============4989401941356416770==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4989401941356416770==--


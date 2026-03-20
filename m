Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D36951099B2D
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Mar 2026 17:59:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1FGT9d4ZEy2vfB2quA4C9kCYowkJ/R+udLSA6Caskfc=; b=eUNrK26PxdY8fkQIlgcqETyHE4
	DOzgjmVr7NzQPwNHzNaX1b5qiCJqNNa3ySdTVsNMaEjM9xNstg8eppPQy83hcuJiPjjOLYNqhOCUZ
	ZBboroUUAkyEkO9nmisSAvQw1/5xJvmygKOoQjp4z+40tnEIoYOyV5trEujgU9MU62MADo3OBy035
	pPFgMjnIVMlw95BqHYSDpljesGWTLBM3MUqbm0YHzHMa7z6ZaSfdW6fSHPTJQoiqkwnRLBWlS6T7f
	YPkipF0zd4/qc608wofsTQdhV0IArxlarlABUt43cNtZPOtIQ/tfiBTTmX4YgBa2fZGlVNuOXUIUV
	dsTTHC+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3e7o-0000000DL1y-2Ntb;
	Fri, 20 Mar 2026 17:59:08 +0000
Received: from mail-qk1-x733.google.com ([2607:f8b0:4864:20::733])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3e7l-0000000DL15-2Viy
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Mar 2026 17:59:07 +0000
Received: by mail-qk1-x733.google.com with SMTP id af79cd13be357-8cd8dbf4f2eso237746385a.2
        for <linux-rockchip@lists.infradead.org>; Fri, 20 Mar 2026 10:59:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1774029544; x=1774634344; darn=lists.infradead.org;
        h=mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=DWkKoVAEpPTbhlQcGao02ZYKop/ZGqIz8O7PUwO5+Xk=;
        b=iswrOe3PGMyz9D6fkPxjBguthEGLR256Yg1KRd4Dadg2EKk4ryBo9KXsiH4qkVWclQ
         KAgukkV4jUzkxE6ArDC0Cr2GDEWyk4JclqsPg1vSoYviAU3byikcMjlpr5utQp4Am4PP
         E+DSvWKPn/b6Klm0m9pozmgV67K7B7oHELJTzdiiY3DlITpi5hAeC+F0ZmWCX5DTjzw9
         leLYzj1qEXPFTZo5VU6AhN8IGa+KJSZ0xq+UIDLI8viYxNfvJ2u5wNzzUVNJsCENgM72
         AdhXLUMc76o+gPsrWEObDKyLQzmeBIaPAnKDSCX4gXeaTkLf0TY+h/rAmnrC41poqN9r
         DJkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774029544; x=1774634344;
        h=mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=DWkKoVAEpPTbhlQcGao02ZYKop/ZGqIz8O7PUwO5+Xk=;
        b=Jhvub+Khlx3tzqUGpcMo3X8cGm/H3qX4GiFz6DvGNvXkElKlV99sYbVC/A6UiPvJ2B
         GzYUrXfmZfwwRtHuMIMRXFZ7Lpzu8HyiUiWNnrmRwQkN0SoONl7BRekpXO19qxBhWefA
         prMkr62p7hq5Gspjlzr4LIIUpod6xQfqTiBL+hVzQrS7lTIYfoR4mWSBmCSXyxWhC82j
         wZsODmKWBoMMF8gWBYA+B8sOGIo1GbYNeojLNRg9Ad60yqszL5QFISP/0A6IXP7yGYwn
         +wr3XmymaGdlOZ1Ak8w7oFZrWkt0tkvbQCvSDMKcOK81sWZ1Is8P2f5PmPjxxJnrqchR
         OntQ==
X-Forwarded-Encrypted: i=1; AJvYcCWJW9QbxPmJqoWXD9c1/mf8K1dS0o3SOw3Bd6yFayG86P74uu9oC0hWQr2DWCgjnrVuqHzGAZjSYBTVyvvtvA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwV4KipHhom0mIwYk0pSDWOGYmmj6HS6YCJIsbjj7zD+F90d+I9
	8Wu6ZczS8gRrCYuBeGjV2pPwoot5GujlOxRQeiXfhbodf8ops2bcpcQFZzQHGxHupFI=
X-Gm-Gg: ATEYQzzduiubvjlys0PdeDFDOEbdT2SMlIsOwQNpJGmGUBv3pWDp6cJ6EFjXoT6Cav4
	QGWMjgpoKuhMObJvPdc6KTLkABvRDTaWO6j7wcMlZxSFQlK37WjLQ/uyFO1EtMmk3OnK5sCbRUp
	PSiU6Ggrwzo6sLX7mtFh8sew5Bi/Xrv+nNIw/aDB89p79KgWkDRZG/yfdhY1GIO9/7b56ukFfDM
	GUaWiuwv2KcEz9K+GrdCFsUvvjMRA4b4BrG7v7dFDziUw4oyKyJDpmqUITt2355aehSMfi+Z5eD
	OWpwB+MJ3j3XgWdwITPLVsG4mNFiJyEd725mUXVLv8skbYRAjCet9KpEh25cCk1ld0MAp0PWg+J
	nHoX8cEA5HUPJQQDMovnOwR+Pgdzty41hfE/nOVTzuPny9f9lsRDzkYVQ5nT/kYB/fnQFB9IjVA
	gNJpu0/wkLezVdHIb0fftTegvyyZ5d
X-Received: by 2002:a05:620a:4110:b0:8cf:c77f:f4e2 with SMTP id af79cd13be357-8cfc7f86b0cmr579713085a.67.1774029544140;
        Fri, 20 Mar 2026 10:59:04 -0700 (PDT)
Received: from ?IPv6:2606:6d00:11:b76d::5ac? ([2606:6d00:11:b76d::5ac])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8cfc90e2d27sm233119785a.43.2026.03.20.10.59.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Mar 2026 10:59:03 -0700 (PDT)
Message-ID: <46d7ccd7500771bf66f830040b3e306785866ea8.camel@ndufresne.ca>
Subject: Re: [PATCH v3 19/27] media: rockchip: rga: support external iommus
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Sven =?ISO-8859-1?Q?P=FCschel?= <s.pueschel@pengutronix.de>, Jacob Chen
	 <jacob-chen@iotwrt.com>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab
	 <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Rob Herring
	 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	 <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, kernel@pengutronix.de
Date: Fri, 20 Mar 2026 13:59:02 -0400
In-Reply-To: <20260127-spu-rga3-v3-19-77b273067beb@pengutronix.de>
References: <20260127-spu-rga3-v3-0-77b273067beb@pengutronix.de>
	 <20260127-spu-rga3-v3-19-77b273067beb@pengutronix.de>
User-Agent: Evolution 3.58.3 (3.58.3-1.fc43) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260320_105905_658076_08B77F37 
X-CRM114-Status: GOOD (  23.21  )
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
Content-Type: multipart/mixed; boundary="===============4770090637060511006=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4770090637060511006==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-GSvc32jDQd071V5aC8lf"


--=-GSvc32jDQd071V5aC8lf
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mardi 27 janvier 2026 =C3=A0 15:39 +0100, Sven P=C3=BCschel a =C3=A9crit=
=C2=A0:
> In preparation for the RGA3 add support for external iommus. This is a
> transition step to just disable the RGA2 specific mmu table setup code.
>=20
> Currently a simple rga_hw struct field is used to set the internal iommu.
> But to handle the case of more sophisticated detection mechanisms
> (e.g. check for an iommu property in the device tree), it is abstracted
> by an inline function.
>=20
> Signed-off-by: Sven P=C3=BCschel <s.pueschel@pengutronix.de>

Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>

> ---
> =C2=A0drivers/media/platform/rockchip/rga/rga-buf.c | 31 ++++++++++++++++=
++--------
> -
> =C2=A0drivers/media/platform/rockchip/rga/rga-hw.c=C2=A0 |=C2=A0 1 +
> =C2=A0drivers/media/platform/rockchip/rga/rga.c=C2=A0=C2=A0=C2=A0=C2=A0 |=
 11 ++++++++--
> =C2=A0drivers/media/platform/rockchip/rga/rga.h=C2=A0=C2=A0=C2=A0=C2=A0 |=
=C2=A0 6 ++++++
> =C2=A04 files changed, 37 insertions(+), 12 deletions(-)
>=20
> diff --git a/drivers/media/platform/rockchip/rga/rga-buf.c
> b/drivers/media/platform/rockchip/rga/rga-buf.c
> index bc349d0a46365..4e82ca1a5e8d9 100644
> --- a/drivers/media/platform/rockchip/rga/rga-buf.c
> +++ b/drivers/media/platform/rockchip/rga/rga-buf.c
> @@ -12,6 +12,7 @@
> =C2=A0#include <media/v4l2-ioctl.h>
> =C2=A0#include <media/v4l2-mem2mem.h>
> =C2=A0#include <media/videobuf2-dma-sg.h>
> +#include <media/videobuf2-dma-contig.h>
> =C2=A0#include <media/videobuf2-v4l2.h>
> =C2=A0
> =C2=A0#include "rga.h"
> @@ -82,6 +83,9 @@ static int rga_buf_init(struct vb2_buffer *vb)
> =C2=A0	if (IS_ERR(f))
> =C2=A0		return PTR_ERR(f);
> =C2=A0
> +	if (!rga_has_internal_iommu(rga))
> +		return 0;
> +
> =C2=A0	n_desc =3D DIV_ROUND_UP(f->size, PAGE_SIZE);
> =C2=A0
> =C2=A0	rbuf->n_desc =3D n_desc;
> @@ -136,17 +140,21 @@ static int rga_buf_prepare(struct vb2_buffer *vb)
> =C2=A0	for (i =3D 0; i < vb->num_planes; i++) {
> =C2=A0		vb2_set_plane_payload(vb, i, f->pix.plane_fmt[i].sizeimage);
> =C2=A0
> -		/* Create local MMU table for RGA */
> -		n_desc =3D fill_descriptors(&rbuf->dma_desc[curr_desc],
> -					=C2=A0 rbuf->n_desc - curr_desc,
> -					=C2=A0 vb2_dma_sg_plane_desc(vb, i));
> -		if (n_desc < 0) {
> -			v4l2_err(&ctx->rga->v4l2_dev,
> -				 "Failed to map video buffer to RGA\n");
> -			return n_desc;
> +		if (rga_has_internal_iommu(ctx->rga)) {
> +			/* Create local MMU table for RGA */
> +			n_desc =3D fill_descriptors(&rbuf->dma_desc[curr_desc],
> +						=C2=A0 rbuf->n_desc - curr_desc,
> +						=C2=A0 vb2_dma_sg_plane_desc(vb,
> i));
> +			if (n_desc < 0) {
> +				v4l2_err(&ctx->rga->v4l2_dev,
> +					 "Failed to map video buffer to
> RGA\n");
> +				return n_desc;
> +			}
> +			dma_addrs[i] =3D curr_desc << PAGE_SHIFT;
> +			curr_desc +=3D n_desc;
> +		} else {
> +			dma_addrs[i] =3D vb2_dma_contig_plane_dma_addr(vb, i);
> =C2=A0		}
> -		dma_addrs[i] =3D curr_desc << PAGE_SHIFT;
> -		curr_desc +=3D n_desc;
> =C2=A0	}
> =C2=A0
> =C2=A0	/* Fill the remaining planes */
> @@ -176,6 +184,9 @@ static void rga_buf_cleanup(struct vb2_buffer *vb)
> =C2=A0	struct rga_ctx *ctx =3D vb2_get_drv_priv(vb->vb2_queue);
> =C2=A0	struct rockchip_rga *rga =3D ctx->rga;
> =C2=A0
> +	if (!rga_has_internal_iommu(rga))
> +		return;
> +
> =C2=A0	dma_free_coherent(rga->dev, rbuf->n_desc * sizeof(*rbuf->dma_desc)=
,
> =C2=A0			=C2=A0 rbuf->dma_desc, rbuf->dma_desc_pa);
> =C2=A0}
> diff --git a/drivers/media/platform/rockchip/rga/rga-hw.c
> b/drivers/media/platform/rockchip/rga/rga-hw.c
> index bf4a86a640ec5..2013b59701d12 100644
> --- a/drivers/media/platform/rockchip/rga/rga-hw.c
> +++ b/drivers/media/platform/rockchip/rga/rga-hw.c
> @@ -577,6 +577,7 @@ static struct rga_fmt formats[] =3D {
> =C2=A0
> =C2=A0const struct rga_hw rga2_hw =3D {
> =C2=A0	.card_type =3D "rga2",
> +	.has_internal_iommu =3D true,
> =C2=A0	.formats =3D formats,
> =C2=A0	.num_formats =3D ARRAY_SIZE(formats),
> =C2=A0	.cmdbuf_size =3D RGA_CMDBUF_SIZE,
> diff --git a/drivers/media/platform/rockchip/rga/rga.c
> b/drivers/media/platform/rockchip/rga/rga.c
> index f33e2288dab6f..b13ff8d7c572c 100644
> --- a/drivers/media/platform/rockchip/rga/rga.c
> +++ b/drivers/media/platform/rockchip/rga/rga.c
> @@ -23,6 +23,7 @@
> =C2=A0#include <media/v4l2-ioctl.h>
> =C2=A0#include <media/v4l2-mem2mem.h>
> =C2=A0#include <media/videobuf2-dma-sg.h>
> +#include <media/videobuf2-dma-contig.h>
> =C2=A0#include <media/videobuf2-v4l2.h>
> =C2=A0
> =C2=A0#include "rga.h"
> @@ -95,7 +96,10 @@ queue_init(void *priv, struct vb2_queue *src_vq, struc=
t
> vb2_queue *dst_vq)
> =C2=A0	src_vq->io_modes =3D VB2_MMAP | VB2_DMABUF;
> =C2=A0	src_vq->drv_priv =3D ctx;
> =C2=A0	src_vq->ops =3D &rga_qops;
> -	src_vq->mem_ops =3D &vb2_dma_sg_memops;
> +	if (rga_has_internal_iommu(ctx->rga))
> +		src_vq->mem_ops =3D &vb2_dma_sg_memops;
> +	else
> +		src_vq->mem_ops =3D &vb2_dma_contig_memops;
> =C2=A0	src_vq->gfp_flags =3D __GFP_DMA32;
> =C2=A0	src_vq->buf_struct_size =3D sizeof(struct rga_vb_buffer);
> =C2=A0	src_vq->timestamp_flags =3D V4L2_BUF_FLAG_TIMESTAMP_COPY;
> @@ -110,7 +114,10 @@ queue_init(void *priv, struct vb2_queue *src_vq, str=
uct
> vb2_queue *dst_vq)
> =C2=A0	dst_vq->io_modes =3D VB2_MMAP | VB2_DMABUF;
> =C2=A0	dst_vq->drv_priv =3D ctx;
> =C2=A0	dst_vq->ops =3D &rga_qops;
> -	dst_vq->mem_ops =3D &vb2_dma_sg_memops;
> +	if (rga_has_internal_iommu(ctx->rga))
> +		dst_vq->mem_ops =3D &vb2_dma_sg_memops;
> +	else
> +		dst_vq->mem_ops =3D &vb2_dma_contig_memops;
> =C2=A0	dst_vq->gfp_flags =3D __GFP_DMA32;
> =C2=A0	dst_vq->buf_struct_size =3D sizeof(struct rga_vb_buffer);
> =C2=A0	dst_vq->timestamp_flags =3D V4L2_BUF_FLAG_TIMESTAMP_COPY;
> diff --git a/drivers/media/platform/rockchip/rga/rga.h
> b/drivers/media/platform/rockchip/rga/rga.h
> index 025b1df594e9a..95fa7fd1c509a 100644
> --- a/drivers/media/platform/rockchip/rga/rga.h
> +++ b/drivers/media/platform/rockchip/rga/rga.h
> @@ -146,6 +146,7 @@ static inline void rga_mod(struct rockchip_rga *rga, =
u32
> reg, u32 val, u32 mask)
> =C2=A0
> =C2=A0struct rga_hw {
> =C2=A0	const char *card_type;
> +	bool has_internal_iommu;
> =C2=A0	struct rga_fmt *formats;
> =C2=A0	u32 num_formats;
> =C2=A0	size_t cmdbuf_size;
> @@ -161,6 +162,11 @@ struct rga_hw {
> =C2=A0	void (*get_version)(struct rockchip_rga *rga);
> =C2=A0};
> =C2=A0
> +static inline bool rga_has_internal_iommu(const struct rockchip_rga *rga=
)
> +{
> +	return rga->hw->has_internal_iommu;
> +}
> +
> =C2=A0extern const struct rga_hw rga2_hw;
> =C2=A0
> =C2=A0#endif

--=-GSvc32jDQd071V5aC8lf
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCab2K5gAKCRDZQZRRKWBy
9BfxAP9HitbV0tE91+TsUII6EawZfO2n00kNhSwOcuYpTi+2HgD/YMHoY2wU9gZ2
za+IWdj6j8GuSEbo6yXP/lEI/rjmEgk=
=xHfo
-----END PGP SIGNATURE-----

--=-GSvc32jDQd071V5aC8lf--


--===============4770090637060511006==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4770090637060511006==--


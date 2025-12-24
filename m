Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C771E7545C
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Dec 2025 15:29:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RIw1HcHVjUqbaE222izAjF3d/DjMVJvV0eEtxirrhAs=; b=DxwTr20Fh+R37TFoXAsMzK/+92
	g80VPUw60iQsIQ4E8qbA5w26PlyLn2WHp+y+Mgh5Pvc3xbUCh7e6DSyTiSUIMVQWgPRvs16zThV65
	U2PxzlpoIK+/ud1A0hbe/h7t3juNgPOWWhKF3PiCwQa2e70dlOH3pN3DK/K+yVq56JaQbMdTXJOrl
	mXvm//gcC8UsntT/M4W1E8BWcCY+9hBAoc0MI0+kanp/nInaRk7jum3OYykQa2frudvRQAmgGHiuc
	u/S5z9EGcdSyhds/yVbx0FNHpxLumWqePg35f82cZZhCILjCOMqVCdhr0DBWQbvUhXZJ+bXbOW/2f
	Umh6RTqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYQo6-0000000H6t4-2bD9;
	Wed, 24 Dec 2025 15:29:46 +0000
Received: from mail-qt1-x831.google.com ([2607:f8b0:4864:20::831])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYQo3-0000000H6sH-3J3x
	for linux-rockchip@lists.infradead.org;
	Wed, 24 Dec 2025 15:29:45 +0000
Received: by mail-qt1-x831.google.com with SMTP id d75a77b69052e-4f1b1948ffaso39315301cf.2
        for <linux-rockchip@lists.infradead.org>; Wed, 24 Dec 2025 07:29:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1766590182; x=1767194982; darn=lists.infradead.org;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=TwkJIIAOyC+iGrxHsI9snh+xrQsvtUQwuewCKc8KNUQ=;
        b=A4cKD/4sxKT4VJmzmzo08NgL1KL1obvBaO/BHb9IiBajaMGPRat+toUOsSBsbneTXY
         2Cu/kbRgmBMnv1nfGEkBJMI5Gna3IBcdYORCcWe+ZxKI+yhw+5m88H4EBja9E6LLYEHD
         HkARoTeIJ9M3ObCU6b6iAjAtXHaYWma9qfyyNjk2PujNERw1l58ApbUM6TzHMzeCxVWv
         EYr8lq7x8IbS5d/VtMaxk2WSoxLv3vh6TScncve2hno5qsmhlYuZ+Yw2zghSuE7f16aI
         2TYgs1k440/ec3LD08Lhf2sF+VVtsnqJwAph6jmny/OsAH9fjlxO15wIyZUDUnrJqoom
         RpxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766590183; x=1767194983;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TwkJIIAOyC+iGrxHsI9snh+xrQsvtUQwuewCKc8KNUQ=;
        b=Ud77K8b3f/ZQXfxUDuKaZ0F8Bf2/FQgGlXXIfEUg+FIZaOhM/Kwq/Xbv9yc3QEF1OV
         +3s3NHWkiENRmnYAuR1UpB2E6wjxM3H3GAXp4iY85e0jktxJguXemWLenB7x7yWB0kqC
         Z+T4x7LlVlngi3rR40Xc/SPOMYwHxhtotoNduf43L2yVA6RlzWCm/tTiGRWmTfciwuRU
         9kTOE4gcbrsx2RZfPseSsFNuaSewQWKQgfwG5FMy/Ln42HTVSP0uaBMibDF2l2bo+Dqf
         52CK0/viEpLmoOZqUVdmic7xP61RPQ2Qjiyq10fGZUMZYfrzWXbHafB55dMSyyKJMhhv
         IPGQ==
X-Forwarded-Encrypted: i=1; AJvYcCVQ0FoDOoOXjCJeEsrmbhTCmZ0eb1bNYVrZ5Qu7PQ3pKaDP7kgmYJvCcssBzCNu1ZSTpcxoO/0IHPr5DOo+/A==@lists.infradead.org
X-Gm-Message-State: AOJu0YzfD9gVAGstQdOUAO3DxpqCCauUZVaUzZeRwQliMLC7sRDPrWTN
	3PXBTPUCg9gKOlPqCfieJIDO5VBJSlXnQoI1VGnLk92xYc4O6ICZII95Xe9yVuYAGAQ=
X-Gm-Gg: AY/fxX69TKr1EFHFkNltoVrTuWHtjIPaRBrO+y0MAg4M2LO0sDMVBeBwJj4qFM42S3P
	S/zguzE9qYCOzC9nCW1c1FlHwf698ttGQWIKtpw1Ft00UX2sZ4eYj8KpsxCJtW2xD9xqcTACoQP
	gto6cXebqSYEZAm+qn05hqrEDOQtChJUz+lWjWu4bcoVSffKfBzdIjvZ4aYUG0KL2PF1BL6NVyz
	3RrYYmWiEx5TCI7ysjlYiBc8ZO4ZubGNbAURchsZNMJybnuZ4eeALw0Z00ly5dX1tKmGe9pMJx3
	fij5lLoiIZ2O1JZQjSp8G6juohebSj0/FgsoGRRWWhcTx1da1BA3rH77yylUO9ZhObhFdZldcyt
	Ws5bUSnZJnHHBuLCxIyWgjNRKJ3q+uqCZzenOhbGE9hjrMJ145fkkeko3mIZh89mnWKvDxpy0jH
	XPaNtaaLiorU9WNcuC
X-Google-Smtp-Source: AGHT+IFurORRUJNULnlbX94R2za/XCt3vvaDyHm+KjHk3sOKh4CoRdkgBOx3YgO3VJabdA7p5qCnbw==
X-Received: by 2002:a05:622a:4d93:b0:4e8:96ed:2e65 with SMTP id d75a77b69052e-4f4abcc50e0mr263126051cf.22.1766590182533;
        Wed, 24 Dec 2025 07:29:42 -0800 (PST)
Received: from ?IPv6:2606:6d00:17:7b4b::c41? ([2606:6d00:17:7b4b::c41])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4f4ac66841bsm120154681cf.30.2025.12.24.07.29.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 07:29:41 -0800 (PST)
Message-ID: <8c3a3299036dd1bab158bdcd589abd027d2864b6.camel@ndufresne.ca>
Subject: Re: [PATCH v2 10/22] media: rockchip: rga: prepare cmdbuf on
 streamon
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
Date: Wed, 24 Dec 2025 10:29:41 -0500
In-Reply-To: <20251203-spu-rga3-v2-10-989a67947f71@pengutronix.de>
References: <20251203-spu-rga3-v2-0-989a67947f71@pengutronix.de>
	 <20251203-spu-rga3-v2-10-989a67947f71@pengutronix.de>
Autocrypt: addr=nicolas@ndufresne.ca; prefer-encrypt=mutual;
 keydata=mDMEaCN2ixYJKwYBBAHaRw8BAQdAM0EHepTful3JOIzcPv6ekHOenE1u0vDG1gdHFrChD
 /e0J05pY29sYXMgRHVmcmVzbmUgPG5pY29sYXNAbmR1ZnJlc25lLmNhPoicBBMWCgBEAhsDBQsJCA
 cCAiICBhUKCQgLAgQWAgMBAh4HAheABQkJZfd1FiEE7w1SgRXEw8IaBG8S2UGUUSlgcvQFAmibrjo
 CGQEACgkQ2UGUUSlgcvQlQwD/RjpU1SZYcKG6pnfnQ8ivgtTkGDRUJ8gP3fK7+XUjRNIA/iXfhXMN
 abIWxO2oCXKf3TdD7aQ4070KO6zSxIcxgNQFtDFOaWNvbGFzIER1ZnJlc25lIDxuaWNvbGFzLmR1Z
 nJlc25lQGNvbGxhYm9yYS5jb20+iJkEExYKAEECGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4
 AWIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaCyyxgUJCWX3dQAKCRDZQZRRKWBy9ARJAP96pFmLffZ
 smBUpkyVBfFAf+zq6BJt769R0al3kHvUKdgD9G7KAHuioxD2v6SX7idpIazjzx8b8rfzwTWyOQWHC
 AAS0LU5pY29sYXMgRHVmcmVzbmUgPG5pY29sYXMuZHVmcmVzbmVAZ21haWwuY29tPoiZBBMWCgBBF
 iEE7w1SgRXEw8IaBG8S2UGUUSlgcvQFAmibrGYCGwMFCQll93UFCwkIBwICIgIGFQoJCAsCBBYCAw
 ECHgcCF4AACgkQ2UGUUSlgcvRObgD/YnQjfi4+L8f4fI7p1pPMTwRTcaRdy6aqkKEmKsCArzQBAK8
 bRLv9QjuqsE6oQZra/RB4widZPvphs78H0P6NmpIJ
User-Agent: Evolution 3.58.2 (3.58.2-1.fc43) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251224_072943_845331_9F926376 
X-CRM114-Status: GOOD (  20.41  )
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
Content-Type: multipart/mixed; boundary="===============4021126795748429270=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4021126795748429270==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-wgUFX3W9vJo/GeY1uEul"


--=-wgUFX3W9vJo/GeY1uEul
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Le mercredi 03 d=C3=A9cembre 2025 =C3=A0 16:52 +0100, Sven P=C3=BCschel a =
=C3=A9crit=C2=A0:
> Prepare the command buffer on streamon to reuse it's contents instead of
> completely writing it for every frame. Due to the stream settings being
> fixed after a streamon we only need to replace the source and destination
> addresses for each frame. This reduces the amount of CPU and memory
> operations done in each frame.

My speculation is that flushing to device is usually more expensive then th=
is,
but I didn't check closely if you have enabled the caches. That being said,=
 this
is good change. It highlight the inflexible nature of V4L2 imho, which in t=
his
case can be used to optimize.

Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>

>=20
> Signed-off-by: Sven P=C3=BCschel <s.pueschel@pengutronix.de>
> ---
> =C2=A0drivers/media/platform/rockchip/rga/rga-hw.c | 13 +++++++++----
> =C2=A0drivers/media/platform/rockchip/rga/rga.c=C2=A0=C2=A0=C2=A0 | 13 ++=
++++++++++-
> =C2=A0drivers/media/platform/rockchip/rga/rga.h=C2=A0=C2=A0=C2=A0 |=C2=A0=
 1 +
> =C2=A03 files changed, 22 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/media/platform/rockchip/rga/rga-hw.c b/drivers/media=
/platform/rockchip/rga/rga-hw.c
> index 56a2558539bfb..8cdfe089fd636 100644
> --- a/drivers/media/platform/rockchip/rga/rga-hw.c
> +++ b/drivers/media/platform/rockchip/rga/rga-hw.c
> @@ -408,8 +408,6 @@ static void rga_cmd_set(struct rga_ctx *ctx,
> =C2=A0{
> =C2=A0	struct rockchip_rga *rga =3D ctx->rga;
> =C2=A0
> -	memset(ctx->cmdbuf_virt, 0, RGA_CMDBUF_SIZE * 4);
> -
> =C2=A0	rga_cmd_set_src_addr(ctx, src->dma_desc_pa);
> =C2=A0	/*
> =C2=A0	 * Due to hardware bug,
> @@ -418,11 +416,9 @@ static void rga_cmd_set(struct rga_ctx *ctx,
> =C2=A0	rga_cmd_set_src1_addr(ctx, dst->dma_desc_pa);
> =C2=A0
> =C2=A0	rga_cmd_set_dst_addr(ctx, dst->dma_desc_pa);
> -	rga_cmd_set_mode(ctx);
> =C2=A0
> =C2=A0	rga_cmd_set_src_info(ctx, &src->offset);
> =C2=A0	rga_cmd_set_dst_info(ctx, &dst->offset);
> -	rga_cmd_set_trans_info(ctx);
> =C2=A0
> =C2=A0	rga_write(rga, RGA_CMD_BASE, ctx->cmdbuf_phy);
> =C2=A0
> @@ -431,6 +427,14 @@ static void rga_cmd_set(struct rga_ctx *ctx,
> =C2=A0				=C2=A0=C2=A0 PAGE_SIZE, DMA_BIDIRECTIONAL);
> =C2=A0}
> =C2=A0
> +static void rga_hw_setup_cmdbuf(struct rga_ctx *ctx)
> +{
> +	memset(ctx->cmdbuf_virt, 0, RGA_CMDBUF_SIZE * 4);
> +
> +	rga_cmd_set_mode(ctx);
> +	rga_cmd_set_trans_info(ctx);
> +}
> +
> =C2=A0static void rga_hw_start(struct rockchip_rga *rga,
> =C2=A0			 struct rga_vb_buffer *src,=C2=A0 struct rga_vb_buffer *dst)
> =C2=A0{
> @@ -622,6 +626,7 @@ const struct rga_hw rga2_hw =3D {
> =C2=A0	.max_height =3D MAX_HEIGHT,
> =C2=A0	.stride_alignment =3D 4,
> =C2=A0
> +	.setup_cmdbuf =3D rga_hw_setup_cmdbuf,
> =C2=A0	.start =3D rga_hw_start,
> =C2=A0	.handle_irq =3D rga_handle_irq,
> =C2=A0	.get_version =3D rga_get_version,
> diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/pl=
atform/rockchip/rga/rga.c
> index 592c977a07cf3..f02ae02de26ca 100644
> --- a/drivers/media/platform/rockchip/rga/rga.c
> +++ b/drivers/media/platform/rockchip/rga/rga.c
> @@ -523,6 +523,17 @@ static int vidioc_s_selection(struct file *file, voi=
d *priv,
> =C2=A0	return ret;
> =C2=A0}
> =C2=A0
> +static int vidioc_streamon(struct file *file, void *priv,
> +			=C2=A0=C2=A0 enum v4l2_buf_type type)
> +{
> +	struct rga_ctx *ctx =3D file_to_rga_ctx(file);
> +	const struct rga_hw *hw =3D ctx->rga->hw;
> +
> +	hw->setup_cmdbuf(ctx);
> +
> +	return v4l2_m2m_streamon(file, ctx->fh.m2m_ctx, type);
> +}
> +
> =C2=A0static const struct v4l2_ioctl_ops rga_ioctl_ops =3D {
> =C2=A0	.vidioc_querycap =3D vidioc_querycap,
> =C2=A0
> @@ -547,7 +558,7 @@ static const struct v4l2_ioctl_ops rga_ioctl_ops =3D =
{
> =C2=A0	.vidioc_subscribe_event =3D v4l2_ctrl_subscribe_event,
> =C2=A0	.vidioc_unsubscribe_event =3D v4l2_event_unsubscribe,
> =C2=A0
> -	.vidioc_streamon =3D v4l2_m2m_ioctl_streamon,
> +	.vidioc_streamon =3D vidioc_streamon,
> =C2=A0	.vidioc_streamoff =3D v4l2_m2m_ioctl_streamoff,
> =C2=A0
> =C2=A0	.vidioc_g_selection =3D vidioc_g_selection,
> diff --git a/drivers/media/platform/rockchip/rga/rga.h b/drivers/media/pl=
atform/rockchip/rga/rga.h
> index 0aef348dddb95..93162b118d069 100644
> --- a/drivers/media/platform/rockchip/rga/rga.h
> +++ b/drivers/media/platform/rockchip/rga/rga.h
> @@ -154,6 +154,7 @@ struct rga_hw {
> =C2=A0	u32 max_width, max_height;
> =C2=A0	u8 stride_alignment;
> =C2=A0
> +	void (*setup_cmdbuf)(struct rga_ctx *ctx);
> =C2=A0	void (*start)(struct rockchip_rga *rga,
> =C2=A0		=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct rga_vb_buffer *src, struct =
rga_vb_buffer *dst);
> =C2=A0	bool (*handle_irq)(struct rockchip_rga *rga);

--=-wgUFX3W9vJo/GeY1uEul
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaUwG5QAKCRDZQZRRKWBy
9O4FAP9E2aNeLRZt1zQcbEal6Ub+hRLjCwZuHvx4d6mo+exV+gD8D3fEU7lK1Rbl
U4jgUBplP0NBwSIZ6m7R2BXkERRjOQA=
=EAR/
-----END PGP SIGNATURE-----

--=-wgUFX3W9vJo/GeY1uEul--


--===============4021126795748429270==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4021126795748429270==--


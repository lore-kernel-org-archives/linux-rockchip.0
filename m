Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A4C6CD3445
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 May 2026 23:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hzknblqAi8d9G4212jI8UkcbDIb68J7d67BbfNRsv5o=; b=s6uughyVa2kFi5sHBdiqcXsz52
	iqARg9vF6WxdmnEHCIRh6+GiBwvreK1xBFHk+VnjFkOyzSFzsL+xQsgjF7setbA5szESvKAjwxZ4u
	jA+2RbaP0k0gJ62zcW+OFeqROKZxCnhv8sR/ZU4pjFp7IT8cxd0j1/qDn7/a7zX/ck1W6vU2JDKJ9
	5VckeHrLXPSokCJRcfKfp+KEziUxX7nEwYSU3p3LL8BzhjbTcD7nhQHDOZ69DSbyzCJRWYzhFxTRi
	/1CXzNFpZt9x4jLN46zavxA+v1AyTQPkG+QODLOPU+hHTILj/Y4PO4qU4B0G9Y+oHM7eI9an5MYCU
	+Syz3gww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLUMU-00000007iQ0-0bXi;
	Fri, 08 May 2026 23:12:02 +0000
Received: from mail-qt1-x82a.google.com ([2607:f8b0:4864:20::82a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLUMQ-00000007iOO-1CBm
	for linux-rockchip@lists.infradead.org;
	Fri, 08 May 2026 23:12:01 +0000
Received: by mail-qt1-x82a.google.com with SMTP id d75a77b69052e-50d7c12e48eso22377021cf.1
        for <linux-rockchip@lists.infradead.org>; Fri, 08 May 2026 16:11:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20251104.gappssmtp.com; s=20251104; t=1778281917; x=1778886717; darn=lists.infradead.org;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=a61U6DoScQKwSeDx7PQ4jXrr3w68CY6nBE7kzjfUuOs=;
        b=LTXN1XkVtphSN545Wh8wWjoBpVvGkthUPEJxp1JcekiQsWQQQyzEuxK0+cwqcnudm5
         he1lFwQsN6NyqUXteDPB09OrvhdNXAfZLwWD3z0yGUy36gQxyKopjfGfN0gBiGGqkra5
         wOTUEOqpY0gggY9Z0zTx9x74Ie6oM0AZ8UtKKE3n7yKBj9xN+H8dcxbgPZveN8hka5Hh
         YIp+xe71xpEwNkrzzAmLpA1gkm1Jal8V8Z0SA75WRS5yYWfAcGXOQCbsYCpcCH6add7a
         YMW8vlhjfj/l2kjRJwUROppP/z8nHceCmA3/0BbTsN1zB2TrcWzNd4nUHylPRFaRAFap
         rgLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778281917; x=1778886717;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a61U6DoScQKwSeDx7PQ4jXrr3w68CY6nBE7kzjfUuOs=;
        b=NVLyLEzsxcRfsTjbVA//0gObE4zYxSQ/fH+ioK71hJUVo+peklt12HL1qL7kKd09oa
         YAfaYhoAe+jA87QHPGol8jlA6Qda6aLemQPhEOPlLiGQRvnqw9JXUCp8ZNcTRiyGwdqO
         P3Am3YZ1ronWozJ+KmwVKIf86HwZ8Fyq+8SxcRjdxTwnuh1PGkZhv3v8bfvcDLvzTe2F
         6GY4c4tgSWHXq0qpJDrkYpqzKEG6qXqm0/f4Ep3DL5pE90rZ1Z7v/TjiHMyadnfCssXX
         br2SCZ8UQf9dSP434ug+fct8dC6RFxDXsGfuxGrJ0JRiQ9f/qr0nEltFXJhEsczzk80q
         Yl3Q==
X-Forwarded-Encrypted: i=1; AFNElJ8gn4RRubJQinvE16STiQNN3COqRRamleeNnClVTtPs8oyLC83x/clOcQ2bHc+KPv3SR+NdPt7oK884QEBOSA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxMTrfhdggGeFqBr+Dd3Zw+H8E+rub7mWw7u4Kkj4llRE5vDKud
	cGZ5VUCiujBeBCQ2sJ626JL8YHUErJiA8/FmvR5e6FKldw6FwgHZ75geI4RYLatZhgQ=
X-Gm-Gg: AeBDiesvV62aKxTdol9JL8xmITgP0ZGejzNeY9NokrK3TJTmbf1I1AttrcyM47uHrV0
	tuj5OeDET2TKoUHOyY/ZNoHIp3Y54/Qnim0HjEZT/Qa10OBd40w/xnjGyHzcsPbqC84Un0P8ujR
	ASJXw/XKoQU539XQrdeS4fpbcr/Cifzq8sv9EBy3R0F7yVSxHIw9B4zdB4QmB24fiB1GPDdjgq9
	EZDlkdz8+KpgnIX6+JLDWWweTxhiivols6I9qvjiwpi2yiyRrnxCt68XK3PnCrfaievpsEA4nGd
	fGojbLwzFvsVKKnpcZFrBm00g5f7RmzSTkA0QTAxSFD8k+SsZwV+5bcm1zUV3wdmYpE3l9u14f1
	DS6Fufy/+4Iyz+4MwQBpkBt8jOxh+Kk6Vzm4pD1jkpdsn2AU2AfrguToSjWrOPf7BImIzs/oOmU
	5M+S+7wHhgkvt3rkIAcsIHMDU/C1Bl
X-Received: by 2002:a05:622a:2c8:b0:50e:5755:913d with SMTP id d75a77b69052e-514755feb11mr119461611cf.0.1778281916899;
        Fri, 08 May 2026 16:11:56 -0700 (PDT)
Received: from ?IPv6:2606:6d00:15:e06b::5ac? ([2606:6d00:15:e06b::5ac])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-5148fa78723sm24900771cf.3.2026.05.08.16.11.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 May 2026 16:11:55 -0700 (PDT)
Message-ID: <67c2e5b74340a3a33a5e1e377e88298250a6d3c5.camel@ndufresne.ca>
Subject: Re: [PATCH v5 18/29] media: rockchip: rga: check scaling factor
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Sven =?ISO-8859-1?Q?P=FCschel?= <s.pueschel@pengutronix.de>, Jacob Chen
	 <jacob-chen@iotwrt.com>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab
	 <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Rob Herring
	 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	 <conor+dt@kernel.org>, Hans Verkuil <hverkuil@kernel.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, kernel@pengutronix.de, 
	sebastian.reichel@collabora.com
Date: Fri, 08 May 2026 19:11:53 -0400
In-Reply-To: <20260428-spu-rga3-v5-18-eb7f5d019d86@pengutronix.de>
References: <20260428-spu-rga3-v5-0-eb7f5d019d86@pengutronix.de>
	 <20260428-spu-rga3-v5-18-eb7f5d019d86@pengutronix.de>
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
User-Agent: Evolution 3.60.1 (3.60.1-1.fc44) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260508_161200_241432_35052EEC 
X-CRM114-Status: GOOD (  28.68  )
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
Content-Type: multipart/mixed; boundary="===============1501891123959148286=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1501891123959148286==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-6phmHvyO9kAPRIT/1Osz"


--=-6phmHvyO9kAPRIT/1Osz
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mardi 28 avril 2026 =C3=A0 11:00 +0200, Sven P=C3=BCschel a =C3=A9crit=
=C2=A0:
> Check the scaling factor to avoid potential problems. This is relevant
> for the upcoming RGA3 support, as it can hang when the scaling factor
> is exceeded.
>=20
> There are two relevant scenarios that have to be considered to protect
> against invalid scaling values:
>=20
> When the output or capture is already streaming, setting the format on
> the other side should consider the max scaling factor and clamp it
> accordingly. This is only done in the streaming case, as it otherwise
> may unintentionally clamp the value when the application sets the first
> format (due to a default format on the other side).
>=20
> When the format is set on both sides first, then the format won't be
> corrected by above means. Therefore the second streamon call has to
> check the scaling factor and fail otherwise.
>=20
> As try functions should only be state aware if specified, the scaling
> limitation is only done in s_fmt.
>=20
> Signed-off-by: Sven P=C3=BCschel <s.pueschel@pengutronix.de>
> ---
> =C2=A0drivers/media/platform/rockchip/rga/rga-hw.c |=C2=A0 1 +
> =C2=A0drivers/media/platform/rockchip/rga/rga-hw.h |=C2=A0 1 +
> =C2=A0drivers/media/platform/rockchip/rga/rga.c=C2=A0=C2=A0=C2=A0 | 47 ++=
++++++++++++++++++++++++++
> =C2=A0drivers/media/platform/rockchip/rga/rga.h=C2=A0=C2=A0=C2=A0 |=C2=A0=
 1 +
> =C2=A04 files changed, 50 insertions(+)
>=20
> diff --git a/drivers/media/platform/rockchip/rga/rga-hw.c b/drivers/media=
/platform/rockchip/rga/rga-hw.c
> index 11079477a3008..11a1a914668f6 100644
> --- a/drivers/media/platform/rockchip/rga/rga-hw.c
> +++ b/drivers/media/platform/rockchip/rga/rga-hw.c
> @@ -595,6 +595,7 @@ const struct rga_hw rga2_hw =3D {
> =C2=A0	.max_width =3D MAX_WIDTH,
> =C2=A0	.min_height =3D MIN_HEIGHT,
> =C2=A0	.max_height =3D MAX_HEIGHT,
> +	.max_scaling_factor =3D MAX_SCALING_FACTOR,
> =C2=A0	.stride_alignment =3D 4,
> =C2=A0
> =C2=A0	.setup_cmdbuf =3D rga_hw_setup_cmdbuf,
> diff --git a/drivers/media/platform/rockchip/rga/rga-hw.h b/drivers/media=
/platform/rockchip/rga/rga-hw.h
> index c2e34be751939..805ec23e5e3f4 100644
> --- a/drivers/media/platform/rockchip/rga/rga-hw.h
> +++ b/drivers/media/platform/rockchip/rga/rga-hw.h
> @@ -14,6 +14,7 @@
> =C2=A0
> =C2=A0#define MIN_WIDTH 34
> =C2=A0#define MIN_HEIGHT 34
> +#define MAX_SCALING_FACTOR 16
> =C2=A0
> =C2=A0#define RGA_TIMEOUT 500
> =C2=A0
> diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/pl=
atform/rockchip/rga/rga.c
> index d111b348255e2..75d05c86b1c00 100644
> --- a/drivers/media/platform/rockchip/rga/rga.c
> +++ b/drivers/media/platform/rockchip/rga/rga.c
> @@ -405,10 +405,36 @@ static int vidioc_s_fmt(struct file *file, void *pr=
iv, struct v4l2_format *f)
> =C2=A0	struct v4l2_pix_format_mplane *pix_fmt =3D &f->fmt.pix_mp;
> =C2=A0	struct rga_ctx *ctx =3D file_to_rga_ctx(file);
> =C2=A0	struct rockchip_rga *rga =3D ctx->rga;
> +	const struct rga_hw *hw =3D rga->hw;
> =C2=A0	struct vb2_queue *vq;
> =C2=A0	struct rga_frame *frm;
> =C2=A0	int ret =3D 0;
> =C2=A0	int i;
> +	struct rga_frame *limit_frm =3D NULL;
> +
> +	/* Limit before try_fmt to avoid recalculating the stride */
> +	if (V4L2_TYPE_IS_OUTPUT(f->type) &&
> +	=C2=A0=C2=A0=C2=A0 v4l2_m2m_get_dst_vq(ctx->fh.m2m_ctx)->streaming)
> +		limit_frm =3D &ctx->out;

If you need to, use helpers such as vb2_is_streaming(), though in this case=
, I
think you want to use vb2_is_busy(), which protects against changing the fo=
rmat
of a queue that is already allocated. This is needed because drivers, excep=
t vp9
and av1 stateless decoders, don't track the format per buffer.

> +	if (V4L2_TYPE_IS_CAPTURE(f->type) &&
> +	=C2=A0=C2=A0=C2=A0 v4l2_m2m_get_src_vq(ctx->fh.m2m_ctx)->streaming)

Same.

> +		limit_frm =3D &ctx->in;
> +	if (limit_frm) {
> +		const struct v4l2_frmsize_stepwise frmsize =3D {
> +			.min_width =3D DIV_ROUND_UP(limit_frm->pix.width,
> +						=C2=A0 hw->max_scaling_factor),
> +			.max_width =3D
> +				limit_frm->pix.width * hw->max_scaling_factor,

Shouldn't you control the absolute min/max for this IP ?

> +			.min_height =3D DIV_ROUND_UP(limit_frm->pix.height,
> +						=C2=A0=C2=A0 hw->max_scaling_factor),
> +			.max_height =3D
> +				limit_frm->pix.height * hw->max_scaling_factor,
> +			.step_width =3D 1,
> +			.step_height =3D 1,

Shouldn't that step match the subsampling like you did earlier ?

Nicolas

> +		};
> +		v4l2_apply_frmsize_constraints(&pix_fmt->width,
> +					=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 &pix_fmt->height, &frmsize);
> +	}
> =C2=A0
> =C2=A0	/* Adjust all values accordingly to the hardware capabilities
> =C2=A0	 * and chosen format.
> @@ -568,12 +594,33 @@ static int vidioc_s_selection(struct file *file, vo=
id *priv,
> =C2=A0	return ret;
> =C2=A0}
> =C2=A0
> +static bool check_scaling(const struct rga_hw *hw, u32 src_size, u32 dst=
_size)
> +{
> +	if (src_size < dst_size)
> +		return src_size * hw->max_scaling_factor >=3D dst_size;
> +	else
> +		return dst_size * hw->max_scaling_factor >=3D src_size;
> +}
> +
> =C2=A0static int vidioc_streamon(struct file *file, void *priv,
> =C2=A0			=C2=A0=C2=A0 enum v4l2_buf_type type)
> =C2=A0{
> =C2=A0	struct rga_ctx *ctx =3D file_to_rga_ctx(file);
> =C2=A0	const struct rga_hw *hw =3D ctx->rga->hw;
> =C2=A0
> +	if ((V4L2_TYPE_IS_OUTPUT(type) &&
> +	=C2=A0=C2=A0=C2=A0=C2=A0 v4l2_m2m_get_dst_vq(ctx->fh.m2m_ctx)->streamin=
g) ||
> +	=C2=A0=C2=A0=C2=A0 (V4L2_TYPE_IS_CAPTURE(type) &&
> +	=C2=A0=C2=A0=C2=A0=C2=A0 v4l2_m2m_get_src_vq(ctx->fh.m2m_ctx)->streamin=
g)) {
> +		/*
> +		 * As the other side is already streaming,
> +		 * check that the max scaling factor isn't exceeded.
> +		 */
> +		if (!check_scaling(hw, ctx->in.pix.width, ctx->out.pix.width) ||
> +		=C2=A0=C2=A0=C2=A0 !check_scaling(hw, ctx->in.pix.height, ctx->out.pix=
.height))
> +			return -EINVAL;
> +	}
> +
> =C2=A0	hw->setup_cmdbuf(ctx);
> =C2=A0
> =C2=A0	return v4l2_m2m_streamon(file, ctx->fh.m2m_ctx, type);
> diff --git a/drivers/media/platform/rockchip/rga/rga.h b/drivers/media/pl=
atform/rockchip/rga/rga.h
> index c741213710b32..454af283b1694 100644
> --- a/drivers/media/platform/rockchip/rga/rga.h
> +++ b/drivers/media/platform/rockchip/rga/rga.h
> @@ -150,6 +150,7 @@ struct rga_hw {
> =C2=A0	size_t cmdbuf_size;
> =C2=A0	u32 min_width, min_height;
> =C2=A0	u32 max_width, max_height;
> +	u8 max_scaling_factor;
> =C2=A0	u8 stride_alignment;
> =C2=A0
> =C2=A0	void (*setup_cmdbuf)(struct rga_ctx *ctx);

--=-6phmHvyO9kAPRIT/1Osz
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaf5tuQAKCRDZQZRRKWBy
9MrfAQDVqv8LNnmDgVligHcx7MKd8IXEllWPqnCGg6qVCKnTEAEA/sEZbAClzfwv
w2zcIFiT48t98hMAoqNwJkqNZHa0Kgk=
=zf12
-----END PGP SIGNATURE-----

--=-6phmHvyO9kAPRIT/1Osz--


--===============1501891123959148286==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1501891123959148286==--


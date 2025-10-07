Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCDCFCCD183
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Oct 2025 18:47:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1DGx6xgf51Oab/nFUvVW3y4dTg/Ga4xpW9348wZwRf0=; b=fkNAe+0eonSbHu6dgwrIzv8Wnt
	BZJQIIJI2New6eATYbwIiHL1ytLG6w9fvGWXV0i48LIVsMZdPNu0qnvpDGV4eegK8CgTPZGt5kwKK
	tu6rGf8JKwFtS7GsP0MJQjyBOT9jyQaJAuHLuRJulFK43P/Wy4SyLgeSKdU15BvAW2H4lULwf2mpn
	/M5m0hSVgujchVsCfH0l1GixheDNoRFDaVAxkiDBsLAL83Y1Sll+ujRVIdfyeopTAoptZMU5+cF4w
	BdfHKa1rMTnsQE80DCE3XAuQie/wp3dRzhbGbD1G6PIHwVmho0iBFxoo1C6fWZEaHuPyWixvfgRpe
	Kbxq24GA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6Ciu-00000002cJD-3mf4;
	Tue, 07 Oct 2025 18:47:44 +0000
Received: from mail-qk1-x736.google.com ([2607:f8b0:4864:20::736])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6Cis-00000002cHq-16yf
	for linux-rockchip@lists.infradead.org;
	Tue, 07 Oct 2025 18:47:43 +0000
Received: by mail-qk1-x736.google.com with SMTP id af79cd13be357-855d525cd00so822816485a.2
        for <linux-rockchip@lists.infradead.org>; Tue, 07 Oct 2025 11:47:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1759862861; x=1760467661; darn=lists.infradead.org;
        h=mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=58+grWU1+fLQ3iYvFx1p0RHwupl8wNBxalqFpZYiDLA=;
        b=ReEe/tnC5wbJMMBV+ZmcfOnOTv69SV8AG7WhIEHqoan7eOWxr3pSE81wZbQxo0EjNZ
         5nTefb9SaHV7nf+MxuPG6nMpGgUKw7GRDgEU0IWZbBFOEXt9U6tekFzUXTl7YGnaXSyK
         /sI1U39+U+m2PeImnrdCCCQUqf6kAk4UcMEI8mqlhMF0ehoat72WTl2yYUXCdmgqDt7a
         sQQz7o0NGyZdwQg97ItfS41c3zNN6e3s9mBYSqKkf/B1hX0H2XAuir7R4VCQQrSt2APd
         3PV21knYN8/xqDFVa8DK4kE+WgTIlJDOW7IBZUlBydIl+n7AYnj5d7xY/vMoVy49ckAT
         W80Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759862861; x=1760467661;
        h=mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=58+grWU1+fLQ3iYvFx1p0RHwupl8wNBxalqFpZYiDLA=;
        b=sLkCA4F035RG2FNRWKEkNvZ/li6jFQbI/9N0RFkZEtMDL8rei6z6W9ljXSsjaIqUM/
         X+2apIWwIAQIQWPoo7Fyk2JO95QbX0gOb6YV/Az7ZzKC0O1s/3QWpS4EobN+mmaVa2rR
         9RCKfSm31LpO+adqK2lsfYAI3lnCspSIjOH7srjtH0uqOlQwyU7CSYee8bzET/GtZshh
         ca+rn5teDL7apPP2Bev+BZaP/T42TK7vVLq1P+pW0mYIqH0hrMpFNQEP0SMvI9lRY+RA
         UYtmny8fFO1OXBjo0A9reYhrLeOafPPyKTRE9dMTgZH+Gr1f2TsLPgFgOEaO4viQoR9r
         flMw==
X-Forwarded-Encrypted: i=1; AJvYcCWKzD3wJ6JWM5YMeVffnQUxplrwPcM3+z/LAlDvuNnBPzvrY+a6+pZESCqpR4R+86VS70N6p60ihZ+X7yFBWg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz/trCkIgsEJX2sT6QSd5BNDllIgyeXrcwGiLOAxK+iwJSZDADv
	YdIKHwtwtrl6R4Nc3TYrztTe7Km507q71dc/HRnlNwRfQePgGZdxowOPrWzwz3foULs=
X-Gm-Gg: ASbGnctuLhfVwFHZyQsYlAdZWu9ZnBu2wE5hXsG1w6fd4hqlFlrX5N6rz/yRenGijrp
	zGZCcvXvtLOejMRuZN2ppwYz7vOykpG4n1r1w79SyhT7GWvLkAFzCdYCB7VZ2vymy9N/gqtlAjL
	xk4sjF0Q8oILiQMORV+M2L1Jrif0wcq3qMgs3swL++OZuWd/cF6ofgKDVbqEJY8FMkPZhFvH4/h
	dfllsGrM1DgLfUecftIM1B/V76EYui2mrPMZg6OzUGZKpz7JHm7Z3bpEHF4s1nViZ8oN+FrXpP6
	P/WB9l36oujlK75XbZpzqWP0rQJYUM25zSZkQbMMtSQAvsC08jqex4yZoDp1ZMyLlwG6/aNrgPU
	13jOP8sbG4oC8Adr9cRjieagvE1VcNrkCSeb/uIJmXl2vNyUvCN0h
X-Google-Smtp-Source: AGHT+IGM6WgG6OTQoMVXMZbYSPPE54NLk24Y0L7yLT6AonwvB7ilumFcgtdxb3bcVhP4gw7WgQL0Xw==
X-Received: by 2002:a05:620a:ac0b:b0:883:7309:c0eb with SMTP id af79cd13be357-8837309d08bmr41017885a.41.1759862860945;
        Tue, 07 Oct 2025 11:47:40 -0700 (PDT)
Received: from ?IPv6:2606:6d00:17:ebd3::c41? ([2606:6d00:17:ebd3::c41])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-87772278098sm1596357385a.16.2025.10.07.11.47.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Oct 2025 11:47:40 -0700 (PDT)
Message-ID: <a57669be1d58e71229dedcf4acbe6eda201e45ea.camel@ndufresne.ca>
Subject: Re: [PATCH 12/16] media: rockchip: rga: handle error interrupt
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
Date: Tue, 07 Oct 2025 14:47:38 -0400
In-Reply-To: <20251007-spu-rga3-v1-12-36ad85570402@pengutronix.de>
References: <20251007-spu-rga3-v1-0-36ad85570402@pengutronix.de>
	 <20251007-spu-rga3-v1-12-36ad85570402@pengutronix.de>
User-Agent: Evolution 3.56.2 (3.56.2-2.fc42) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251007_114742_324841_0D90DA2D 
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
Content-Type: multipart/mixed; boundary="===============3246968866337305679=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3246968866337305679==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-9ssd6DUBbBvl6JPlwbl3"


--=-9ssd6DUBbBvl6JPlwbl3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mardi 07 octobre 2025 =C3=A0 10:32 +0200, Sven P=C3=BCschel a =C3=A9crit=
=C2=A0:
> Handle the error interrupt status in preparation of the RGA3 addition.
> This allows the buffer to be marked as done, as it would otherwise
> be stuck in the queue.
>=20
> The RGA3 needs a soft reset to properly work after an error occurred,
> as it would otherwise cease to deliver new interrupts. Also the soft
> reset avoids additional error interrupts to be triggered, which are
> currently not supported by the rga_isr function.
> As it is unknown how the RGA2 behaves in the error case, no
> error interrupt was enabled and handled.
>=20
> Signed-off-by: Sven P=C3=BCschel <s.pueschel@pengutronix.de>
> ---
> =C2=A0drivers/media/platform/rockchip/rga/rga-hw.c |=C2=A0 6 ++++--
> =C2=A0drivers/media/platform/rockchip/rga/rga.c=C2=A0=C2=A0=C2=A0 | 32 ++=
+++++++++++++++----------
> -
> =C2=A0drivers/media/platform/rockchip/rga/rga.h=C2=A0=C2=A0=C2=A0 |=C2=A0=
 8 ++++++-
> =C2=A03 files changed, 31 insertions(+), 15 deletions(-)
>=20
> diff --git a/drivers/media/platform/rockchip/rga/rga-hw.c
> b/drivers/media/platform/rockchip/rga/rga-hw.c
> index
> d54183d224b3e9c42d5503acf172257f2e736f7b..93822b5b8b15e76862bd022759eaa5c=
b9552
> dd76 100644
> --- a/drivers/media/platform/rockchip/rga/rga-hw.c
> +++ b/drivers/media/platform/rockchip/rga/rga-hw.c
> @@ -459,7 +459,7 @@ static void rga_hw_start(struct rockchip_rga *rga,
> =C2=A0	rga_write(rga, RGA_CMD_CTRL, 0x1);
> =C2=A0}
> =C2=A0
> -static bool rga_handle_irq(struct rockchip_rga *rga)
> +static enum rga_irq_result rga_handle_irq(struct rockchip_rga *rga)
> =C2=A0{
> =C2=A0	int intr;
> =C2=A0
> @@ -467,7 +467,9 @@ static bool rga_handle_irq(struct rockchip_rga *rga)
> =C2=A0
> =C2=A0	rga_mod(rga, RGA_INT, intr << 4, 0xf << 4);
> =C2=A0
> -	return intr & 0x04;
> +	if (intr & 0x04)
> +		return RGA_IRQ_DONE;

Since you reuse an old driver, would be nice to create proper defines for
RGA_INT bit 3 (current command finish interrupt flag).

> +	return RGA_IRQ_IGNORE;
> =C2=A0}
> =C2=A0
> =C2=A0static void rga_get_version(struct rockchip_rga *rga)
> diff --git a/drivers/media/platform/rockchip/rga/rga.c
> b/drivers/media/platform/rockchip/rga/rga.c
> index
> 0a725841b0cfa41bbc5b861b8f5ceac2452fc2b5..3b5d2eb8e109f44af76dd2240a239b1=
fa8a7
> 8cee 100644
> --- a/drivers/media/platform/rockchip/rga/rga.c
> +++ b/drivers/media/platform/rockchip/rga/rga.c
> @@ -56,30 +56,38 @@ static void device_run(void *prv)
> =C2=A0static irqreturn_t rga_isr(int irq, void *prv)
> =C2=A0{
> =C2=A0	struct rockchip_rga *rga =3D prv;
> +	struct vb2_v4l2_buffer *src, *dst;
> +	struct rga_ctx *ctx =3D rga->curr;
> +	enum rga_irq_result result;
> =C2=A0
> -	if (rga->hw->handle_irq(rga)) {
> -		struct vb2_v4l2_buffer *src, *dst;
> -		struct rga_ctx *ctx =3D rga->curr;
> +	result =3D rga->hw->handle_irq(rga);
> +	if (result =3D=3D RGA_IRQ_IGNORE)
> +		return IRQ_HANDLED;
> =C2=A0
> -		WARN_ON(!ctx);
> +	WARN_ON(!ctx);
> =C2=A0
> -		rga->curr =3D NULL;
> +	rga->curr =3D NULL;
> =C2=A0
> -		src =3D v4l2_m2m_src_buf_remove(ctx->fh.m2m_ctx);
> -		dst =3D v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx);
> +	src =3D v4l2_m2m_src_buf_remove(ctx->fh.m2m_ctx);
> +	dst =3D v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx);
> =C2=A0
> -		WARN_ON(!src);
> -		WARN_ON(!dst);
> +	WARN_ON(!src);
> +	WARN_ON(!dst);
> =C2=A0
> -		v4l2_m2m_buf_copy_metadata(src, dst, true);
> +	v4l2_m2m_buf_copy_metadata(src, dst, true);
> =C2=A0
> -		dst->sequence =3D ctx->csequence++;
> +	dst->sequence =3D ctx->csequence++;
> =C2=A0
> +	if (result =3D=3D RGA_IRQ_DONE) {
> =C2=A0		v4l2_m2m_buf_done(src, VB2_BUF_STATE_DONE);
> =C2=A0		v4l2_m2m_buf_done(dst, VB2_BUF_STATE_DONE);
> -		v4l2_m2m_job_finish(rga->m2m_dev, ctx->fh.m2m_ctx);
> +	} else {
> +		v4l2_m2m_buf_done(src, VB2_BUF_STATE_ERROR);
> +		v4l2_m2m_buf_done(dst, VB2_BUF_STATE_ERROR)

I'm not fan of assumption that its an error on else case. If often lead to
multiple calls. Please use an explicit error return.

> ;
> =C2=A0	}
> =C2=A0
> +	v4l2_m2m_job_finish(rga->m2m_dev, ctx->fh.m2m_ctx);

What if you get an IRQ and none of the flags are raised ? I did see that in=
 the
past, and that least to bad things happening.

> +
> =C2=A0	return IRQ_HANDLED;
> =C2=A0}
> =C2=A0
> diff --git a/drivers/media/platform/rockchip/rga/rga.h
> b/drivers/media/platform/rockchip/rga/rga.h
> index
> e19c4c82aca5ae2056f52d525138093fbbb81af8..dc4bb85707d12f5378c4891098cd7ea=
4a4d7
> 5e2d 100644
> --- a/drivers/media/platform/rockchip/rga/rga.h
> +++ b/drivers/media/platform/rockchip/rga/rga.h
> @@ -143,6 +143,12 @@ static inline void rga_mod(struct rockchip_rga *rga,=
 u32
> reg, u32 val, u32 mask)
> =C2=A0	rga_write(rga, reg, temp);
> =C2=A0};
> =C2=A0
> +enum rga_irq_result {
> +	RGA_IRQ_IGNORE,
> +	RGA_IRQ_DONE,
> +	RGA_IRQ_ERROR,
> +};
> +
> =C2=A0struct rga_hw {
> =C2=A0	const char *card_type;
> =C2=A0	bool has_internal_iommu;
> @@ -152,7 +158,7 @@ struct rga_hw {
> =C2=A0
> =C2=A0	void (*start)(struct rockchip_rga *rga,
> =C2=A0		=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct rga_vb_buffer *src, struct =
rga_vb_buffer *dst);
> -	bool (*handle_irq)(struct rockchip_rga *rga);
> +	enum rga_irq_result (*handle_irq)(struct rockchip_rga *rga);
> =C2=A0	void (*get_version)(struct rockchip_rga *rga);
> =C2=A0	void *(*try_format)(u32 *fourcc, bool is_output);
> =C2=A0	int (*enum_format)(struct v4l2_fmtdesc *f);

--=-9ssd6DUBbBvl6JPlwbl3
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaOVgSgAKCRDZQZRRKWBy
9P5qAP9AQJCTUQL4yGjLYO6fhiRHkYApeYjS3ILIAxwJZRgyoAEAuIsn+1r5gHyo
fE4WQoTjedA/458KE+PcMg5FcVxZZA0=
=4Ait
-----END PGP SIGNATURE-----

--=-9ssd6DUBbBvl6JPlwbl3--


--===============3246968866337305679==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3246968866337305679==--


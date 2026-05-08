Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 503FBCD342F
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 May 2026 22:11:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7tf7mSbzRCoL/b4mq1rTUZkcJIkmCv+B1mvPYZnZ/Xc=; b=bzncoCbKG5JV2fVRXwH0trOcbD
	vNoPCfOtP3tpEQ+FVdG3iW4q1gUNd3rstgNWcqze8q9CNHhWBuVJEWoWC5hOyMebVIVQwy/rRXCnr
	brlbQJI+vknWGzsy4pZbl8Z2Fq+6izhR9y7waYJFQ7KvfHzNiYqVdqQPTSqEMJVf2CUx8zrmEfRjf
	QCcqvTVma2zh/0KdLXIgs3qzBJ7Gg9lkXM3EgQxwGIMI5S3w/N2o0FwrOv8Tx/ZedKWBkZ//vLUIY
	tblbHrcR2JOQcnuH1R2f9N1vgR1XWsxUbMf9E35TMxP4Hwf1rLUh0q4GzXquZaAwcKMGzPm8SmL7W
	6+oEkD9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLTQ2-00000007cUv-2AYk;
	Fri, 08 May 2026 22:11:38 +0000
Received: from mail-qv1-xf33.google.com ([2607:f8b0:4864:20::f33])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLTPz-00000007cTu-1jtw
	for linux-rockchip@lists.infradead.org;
	Fri, 08 May 2026 22:11:36 +0000
Received: by mail-qv1-xf33.google.com with SMTP id 6a1803df08f44-8acb3dab8dfso16605066d6.1
        for <linux-rockchip@lists.infradead.org>; Fri, 08 May 2026 15:11:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20251104.gappssmtp.com; s=20251104; t=1778278294; x=1778883094; darn=lists.infradead.org;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=423hWhSi5+hijWcsdmhIbZKRcVhHLdzm80D5vMOt0CA=;
        b=Gd+xnCAtBNR5HnuVI1ypx5QmN9f63POdjxYAFAbwmEQ+652hpbbvTd0d+aEQe3N265
         cBiid2YENtsTjMHBtSVsITDZc0Fi5cLltkzR5sv8JboMJjtoa9CguHj3oHmdoY2akLDZ
         uqtiBel4AqU0AZ+qTePZssKROsr5FjJ1J2cZNDebriFscmBRzRlp1szAaAobGYezXsyA
         5Lt0Dij3E/qyQ3zL4LUB9Nt4y7LkDTRFVe2xofr407+Jn6KLB2WJRF9l95tXawvHD7Pb
         +MyG9k5n2BiN/aGblZrAx6h0vnfTiVrLXcdN05SIVcDzFjhkRyPswaGSvfaZ66n+IrMm
         V42g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778278294; x=1778883094;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=423hWhSi5+hijWcsdmhIbZKRcVhHLdzm80D5vMOt0CA=;
        b=bxXGWs9a4GAWGim+a8eG09RJ6TbPDwUJ/zEeJS241mWwy9ROKnqAFLLFlYeMxt9Roh
         NPSLY4/S2PGV//0rp3asySEo7f84+NcnxHbtwrpu/Gv9PEeBUrNfC7WJPWIpFScgZlYm
         TnOojBrr1BVW/XTFjG7qobiRt5cmdEo6jOoqEztUipCuE30DfyV9FHcXGdOP24IapIKO
         9JgK8BuwgbCfRE4eij8WrP7tqVl9CTSdkm2zYpYDX0kz5znJLzuzU+cORzCD0jiE3Rdq
         yOWLsmZ4CiAA0JR300uhOkeafQNolADJlyAfhxMcklgdm1/MLlvMSzLM+bUvk1hf2P09
         nGZw==
X-Forwarded-Encrypted: i=1; AFNElJ/gq/rkTaoEK/ScdkkBhcazamnR0AovKH8Pg4AY2VBI6F7P4Gnjatrc0cvZXctuIz+BrnIlcC4fmqVMWyJ3Gw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxIE72n0zskERSmTSvy7XdTKsV7TRqMIXgZlm17y6jqOvHaKr/l
	Do0oh2S5fUZw1BPyvnLcR56Hs+X72jL/GTcGoZ0mEbRcyS4YfcKZZbvepugZDxSYbOs=
X-Gm-Gg: Acq92OF7bYx2oMFpHUU4jEyMZJlE4P6K9LFgpStJEsnc7Ezc3y7SvNB+9yzngUOKeNF
	QXzxj56Z3TtiSNa7sGOFEyI7fxKR91PIXTNgRmTf4ABR1ojnndBnRJ9dmncFApcOl0dRT1QPAcq
	J6OsK6lsQbM/EVecUoIuCz7u+J3BlJyx9Kmzp3scWduQiZgCc9aFTbV1tjOQaYYoilzRtitI6rX
	ILqqlY3mNiLemO3AyUUNC1vLSXshQSVwuk/gNzV5P8taS/frPUaKeDcu7bPIG1Wyvm81D+B3Dqb
	xn1QvhmOWB8q3Vreghepi19lPwvPaOow4cxhknaGdEnTSp/zQsg1DoeOwDTHflYdZxjS33+gJQG
	QYfMt8L86Lf4FT/ON56TJIG2HVXaPUD5cJSErll1o8B9oSucQvkShaaNfyZhE9kfCC1DyFMckTx
	/uvf7+3M5AOIgaSzdpz3JAyyH8PDCN
X-Received: by 2002:a05:6214:8082:b0:8ac:b1ce:3244 with SMTP id 6a1803df08f44-8bc42f522e5mr198672566d6.19.1778278293937;
        Fri, 08 May 2026 15:11:33 -0700 (PDT)
Received: from ?IPv6:2606:6d00:15:e06b::5ac? ([2606:6d00:15:e06b::5ac])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8bf3a43636fsm29335326d6.21.2026.05.08.15.11.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 May 2026 15:11:33 -0700 (PDT)
Message-ID: <ebe5cd6689923eb1e2124e177f694895383fba54.camel@ndufresne.ca>
Subject: Re: [PATCH v5 16/29] media: rockchip: rga: split flip and rotate
 into separate function
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
Date: Fri, 08 May 2026 18:11:31 -0400
In-Reply-To: <20260428-spu-rga3-v5-16-eb7f5d019d86@pengutronix.de>
References: <20260428-spu-rga3-v5-0-eb7f5d019d86@pengutronix.de>
	 <20260428-spu-rga3-v5-16-eb7f5d019d86@pengutronix.de>
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
X-CRM114-CacheID: sfid-20260508_151135_565834_0F6084D5 
X-CRM114-Status: GOOD (  25.49  )
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
Content-Type: multipart/mixed; boundary="===============7655219674128070193=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7655219674128070193==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-lVlR1XuC3qO6FqUNpkDq"


--=-lVlR1XuC3qO6FqUNpkDq
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mardi 28 avril 2026 =C3=A0 11:00 +0200, Sven P=C3=BCschel a =C3=A9crit=
=C2=A0:
> Split the flip and rotate command configuration into a separate
> function in preparation of filling the command stream at streamon.
> As the userspace can change the flipping and rotation controls while
> streaming, we have to update them with each new frame to prevent the
> user being unable to change them while streaming.
>=20
> Signed-off-by: Sven P=C3=BCschel <s.pueschel@pengutronix.de>

For code point of view, everything seems fine, but the commit message leave=
 me a
bit wondering. Any rotation that isn't 180 degree will cause the width and
height to be reversed, and a new stride is needed to present the buffer
correctly. Meaning the capture format can be affected by this change.

To stick with the spec, the capture format needs to be updated, and it need=
s to
happen in a way user can be able to read it back for the correct frame if
userspace make use of the queues. I see 3 options, let me know what you thi=
nk,
or what is later implemented if you already thought about that.

1. Synchronously update the capture format width/height, document in the
respective control this behaviour, leaving to userspace to remember which f=
rames
the change will apply to.

This works nicely for this type of HW, but would be a bit complicated for a
deinterlacer, since the buffering might be HW specific. It also make usage =
of
queues harder, less independent.

2. Force a drain/stop/start for any 90 degree rotation

This might impose a longer idle time for the converter core, and is kind of
opposite of your commit message. But requires no spec work.

3. Emit SRC_CH, implement the drain procedure typical to decoder resolution
change.

Typically it means userspace can keep buffering on the OUTPUT queue, and on=
ce
the LAST buffer is met, it can simply read the new format (and new stride, =
since
due to alignment, this might be hardware specific) and toggle streamoff/on =
only
on capture queue to reactivate the processing.

The 3. is more complex for the driver, but its a proven race-free method fo=
r
decoders already. 2 would be statusquo to get this series in, and we could =
post-
poned more advance work for seamless 90degree rorations. 1., I don't really=
 like
that solution, it not quite generic enough.

feedback welcome,
Nicolas

> ---
> =C2=A0drivers/media/platform/rockchip/rga/rga-hw.c | 57 +++++++++++++++++=
-----------
> =C2=A01 file changed, 34 insertions(+), 23 deletions(-)
>=20
> diff --git a/drivers/media/platform/rockchip/rga/rga-hw.c b/drivers/media=
/platform/rockchip/rga/rga-hw.c
> index dac3cb6aa17d3..6c1956b04f6ba 100644
> --- a/drivers/media/platform/rockchip/rga/rga-hw.c
> +++ b/drivers/media/platform/rockchip/rga/rga-hw.c
> @@ -156,7 +156,38 @@ static void rga_cmd_set_dst_addr(struct rga_ctx *ctx=
, dma_addr_t dma_addr)
> =C2=A0	dest[reg >> 2] |=3D 0x7 << 8;
> =C2=A0}
> =C2=A0
> -static void rga_cmd_set_trans_info(struct rga_ctx *ctx)
> +static void rga_cmd_set_flip_rotate_info(struct rga_ctx *ctx)
> +{
> +	u32 *dest =3D ctx->cmdbuf_virt;
> +	union rga_src_info src_info;
> +
> +	src_info.val =3D dest[(RGA_SRC_INFO - RGA_MODE_BASE_REG) >> 2];
> +
> +	if (ctx->vflip)
> +		src_info.data.mir_mode |=3D RGA_SRC_MIRR_MODE_X;
> +
> +	if (ctx->hflip)
> +		src_info.data.mir_mode |=3D RGA_SRC_MIRR_MODE_Y;
> +
> +	switch (ctx->rotate) {
> +	case 90:
> +		src_info.data.rot_mode =3D RGA_SRC_ROT_MODE_90_DEGREE;
> +		break;
> +	case 180:
> +		src_info.data.rot_mode =3D RGA_SRC_ROT_MODE_180_DEGREE;
> +		break;
> +	case 270:
> +		src_info.data.rot_mode =3D RGA_SRC_ROT_MODE_270_DEGREE;
> +		break;
> +	default:
> +		src_info.data.rot_mode =3D RGA_SRC_ROT_MODE_0_DEGREE;
> +		break;
> +	}
> +
> +	dest[(RGA_SRC_INFO - RGA_MODE_BASE_REG) >> 2] =3D src_info.val;
> +}
> +
> +static void rga_cmd_set_format_scale_info(struct rga_ctx *ctx)
> =C2=A0{
> =C2=A0	struct rockchip_rga *rga =3D ctx->rga;
> =C2=A0	u32 *dest =3D ctx->cmdbuf_virt;
> @@ -219,27 +250,6 @@ static void rga_cmd_set_trans_info(struct rga_ctx *c=
tx)
> =C2=A0		}
> =C2=A0	}
> =C2=A0
> -	if (ctx->vflip)
> -		src_info.data.mir_mode |=3D RGA_SRC_MIRR_MODE_X;
> -
> -	if (ctx->hflip)
> -		src_info.data.mir_mode |=3D RGA_SRC_MIRR_MODE_Y;
> -
> -	switch (ctx->rotate) {
> -	case 90:
> -		src_info.data.rot_mode =3D RGA_SRC_ROT_MODE_90_DEGREE;
> -		break;
> -	case 180:
> -		src_info.data.rot_mode =3D RGA_SRC_ROT_MODE_180_DEGREE;
> -		break;
> -	case 270:
> -		src_info.data.rot_mode =3D RGA_SRC_ROT_MODE_270_DEGREE;
> -		break;
> -	default:
> -		src_info.data.rot_mode =3D RGA_SRC_ROT_MODE_0_DEGREE;
> -		break;
> -	}
> -
> =C2=A0	/*
> =C2=A0	 * Calculate the up/down scaling mode/factor.
> =C2=A0	 *
> @@ -431,7 +441,8 @@ static void rga_cmd_set(struct rga_ctx *ctx,
> =C2=A0
> =C2=A0	rga_cmd_set_src_info(ctx, &src->offset);
> =C2=A0	rga_cmd_set_dst_info(ctx, &dst->offset);
> -	rga_cmd_set_trans_info(ctx);
> +	rga_cmd_set_format_scale_info(ctx);
> +	rga_cmd_set_flip_rotate_info(ctx);
> =C2=A0
> =C2=A0	rga_write(rga, RGA_CMD_BASE, ctx->cmdbuf_phy);
> =C2=A0

--=-lVlR1XuC3qO6FqUNpkDq
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHQEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaf5fkwAKCRDZQZRRKWBy
9LC3APdmFKAFkqTp6qEPlQCir+NJJOXQVBYZ7bHoVHuXUem7AQC4zPYGkGqV7x4I
JShJJJ7CiYN1opexRldmsDpBBgQYCA==
=Cg+D
-----END PGP SIGNATURE-----

--=-lVlR1XuC3qO6FqUNpkDq--


--===============7655219674128070193==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7655219674128070193==--


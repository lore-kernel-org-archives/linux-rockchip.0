Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5A17C7EE23
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 May 2023 14:23:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QdRBPcnoPIp+rakAH74073dHY4WTslk51AE+/kJSTlY=; b=g/gu9/JylA1KP9Rp9z+zXu4KeO
	pIICIMmW7+HJp+VddB2GEMGtRs//gUjngnbSgawKwxAayNOSyU6csVrQ/iCLYQj+tZ4xkv942+OwP
	tEfoqrNkErXtSr1Q9FbD67DtolQWMNICUrSH8A7r3f22NM3B1qfSJ8RcusL9ZC/DutY3vmVQLKZdC
	sMRRBZZynP7WknvNVHt6HyT5UBLlXewqMAARr9MzobRBkIojTEDCoHfMPmgpxDLInjBIbiYNglOSQ
	HUgKgtd7kJg6FubN7SrTuxrvYMZ7QOppn4DbFutB34bnHQcJAz4ycyh1SJYG3fAGIx/OwSd+nvA/S
	AbSxBeJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1Suy-00AUY4-0t;
	Tue, 23 May 2023 14:23:16 +0000
Received: from relay9-d.mail.gandi.net ([2001:4b98:dc4:8::229])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1Suu-00AUWL-2D
	for linux-rockchip@lists.infradead.org;
	Tue, 23 May 2023 14:23:14 +0000
Received: (Authenticated sender: didi.debian@cknow.org)
	by mail.gandi.net (Postfix) with ESMTPSA id 694AAFF804;
	Tue, 23 May 2023 14:23:05 +0000 (UTC)
From: Diederik de Haas <didi.debian@cknow.org>
To: ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, mchehab@kernel.org,
 hverkuil-cisco@xs4all.nl, benjamin.gaignard@collabora.com,
 linux-rockchip@lists.infradead.org
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 kernel@pengutronix.de, m.tretter@pengutronix.de,
 Michael Tretter <m.tretter@pengutronix.de>,
 "Linux regression tracking (Thorsten Leemhuis)" <regressions@leemhuis.info>
Subject: Re: [PATCH] media: verisilicon: Fix null pointer dereference in try_fmt
Date: Tue, 23 May 2023 16:22:56 +0200
Message-ID: <6444204.lOV4Wx5bFT@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20230516091209.3098262-1-m.tretter@pengutronix.de>
References: <20230516091209.3098262-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_072313_028400_C9C03550 
X-CRM114-Status: GOOD (  18.58  )
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
Content-Type: multipart/mixed; boundary="===============8078586903238888953=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============8078586903238888953==
Content-Type: multipart/signed; boundary="nextPart5339283.31r3eYUQgx";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart5339283.31r3eYUQgx
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
Date: Tue, 23 May 2023 16:22:56 +0200
Message-ID: <6444204.lOV4Wx5bFT@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20230516091209.3098262-1-m.tretter@pengutronix.de>
References: <20230516091209.3098262-1-m.tretter@pengutronix.de>
MIME-Version: 1.0

On Tuesday, 16 May 2023 11:12:09 CEST Michael Tretter wrote:
> Since commit db6f68b51e5c ("media: verisilicon: Do not set context
> src/dst formats in reset functions"), vpu_src_fmt is not set in the
> reset function, but only set in hantro_set_fmt_out, which calls
> hantro_try_fmt before setting the format. Therefore, hantro_try_fmt
> might be called with vpu_src_fmt still being null.
> 
> Add a test if the format is actually set before checking the format.
> 
> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> Fixes: db6f68b51e5c ("media: verisilicon: Do not set context src/dst formats
> in reset functions") ---
>  drivers/media/platform/verisilicon/hantro_v4l2.c | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/media/platform/verisilicon/hantro_v4l2.c
> b/drivers/media/platform/verisilicon/hantro_v4l2.c index
> 835518534e3b..ec37d2646fde 100644
> --- a/drivers/media/platform/verisilicon/hantro_v4l2.c
> +++ b/drivers/media/platform/verisilicon/hantro_v4l2.c
> @@ -313,17 +313,20 @@ static int hantro_try_fmt(const struct hantro_ctx
> *ctx, /* Fill remaining fields */
>  		v4l2_fill_pixfmt_mp(pix_mp, fmt->fourcc, pix_mp->width,
>  				    pix_mp->height);
> -		if (ctx->vpu_src_fmt->fourcc == V4L2_PIX_FMT_H264_SLICE 
&&
> +		if (ctx->vpu_src_fmt &&
> +		    ctx->vpu_src_fmt->fourcc == V4L2_PIX_FMT_H264_SLICE 
&&
>  		    !hantro_needs_postproc(ctx, fmt))
>  			pix_mp->plane_fmt[0].sizeimage +=
>  				hantro_h264_mv_size(pix_mp-
>width,
>  						    pix_mp-
>height);
> -		else if (ctx->vpu_src_fmt->fourcc == 
V4L2_PIX_FMT_VP9_FRAME &&
> +		else if (ctx->vpu_src_fmt &&
> +			 ctx->vpu_src_fmt->fourcc == 
V4L2_PIX_FMT_VP9_FRAME &&
>  			 !hantro_needs_postproc(ctx, fmt))
>  			pix_mp->plane_fmt[0].sizeimage +=
>  				hantro_vp9_mv_size(pix_mp->width,
>  						   pix_mp-
>height);
> -		else if (ctx->vpu_src_fmt->fourcc == 
V4L2_PIX_FMT_HEVC_SLICE &&
> +		else if (ctx->vpu_src_fmt &&
> +			 ctx->vpu_src_fmt->fourcc == 
V4L2_PIX_FMT_HEVC_SLICE &&
>  			 !hantro_needs_postproc(ctx, fmt))
>  			pix_mp->plane_fmt[0].sizeimage +=
>  				hantro_hevc_mv_size(pix_mp-
>width,

I have verified that this patch fixes the crash I was seeing since 6.4.
https://lore.kernel.org/linux-media/12724349.O9o76ZdvQC@bagend/ is a/the other 
patch which also fixed the crash.
--nextPart5339283.31r3eYUQgx
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZGzMQAAKCRDXblvOeH7b
bg3/AP9bb4nQhPomMdHZPBe37sKDTz5e6cBfiIHTHYSOwuMcpAD+IudI0INZj2SA
hjbDfu5ZCXl6VQhv7vl5yeKD4nes9QE=
=k7yc
-----END PGP SIGNATURE-----

--nextPart5339283.31r3eYUQgx--





--===============8078586903238888953==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8078586903238888953==--





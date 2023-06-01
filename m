Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F4FEC7EE29
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Jun 2023 13:28:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xi3km45IDUheDm7ERkj8osncHJLZc8UAql2h+qN4eNY=; b=o2xGhaXb+lP3nD
	CfkJCvsOkgeBG5Cn51YrEG/LqK2pVfg7GzNsThct/QZz8bcHTKNkzsnfv7BW6LoU3O4EBEzoOuaj5
	3Umv4+x9Xu4DX4W3iG2iQR2XXS8YUEGR4Oc1BYYZXwTX+p8YTXMbzrxC7XZ6DwSlxC9EYPKAXy9gp
	wJqDzZiQHHpj9T5FdgH+nV58SQCQ7BaNDlvRE3N6rjPkmGRrn6SfBtzNngYak0KZrIZYky6i/SMHa
	NvklCLmf0I5f3NdINsnYi7OUlav+NaS3wHTh5XOsOmk7OXmjXn2P51nCkRUnh2GFhWVyT3d7x8BdI
	sQw7a/9gwvJSV2TtCAyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4iLT-003gZn-0Q;
	Thu, 01 Jun 2023 13:28:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4iLQ-003gXi-1q
	for linux-rockchip@lists.infradead.org;
	Thu, 01 Jun 2023 13:28:01 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mtr@pengutronix.de>)
	id 1q4iLJ-0005D4-Cc; Thu, 01 Jun 2023 15:27:53 +0200
Received: from mtr by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mtr@pengutronix.de>)
	id 1q4iLF-0002Wl-RG; Thu, 01 Jun 2023 15:27:49 +0200
Date: Thu, 1 Jun 2023 15:27:49 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
	mchehab@kernel.org, m.szyprowski@samsung.com,
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org, kernel@collabora.com,
	kernel@pengutronix.de, nicolas.dufresne@collabora.com,
	didi.debian@cknow.org, hverkuil-cisco@xs4all.nl
Subject: Re: [PATCH v2] media: verisilicon: Fix crash when probing encoder
Message-ID: <20230601132749.GA31313@pengutronix.de>
Mail-Followup-To: Michael Tretter <m.tretter@pengutronix.de>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
	mchehab@kernel.org, m.szyprowski@samsung.com,
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org, kernel@collabora.com,
	kernel@pengutronix.de, nicolas.dufresne@collabora.com,
	didi.debian@cknow.org, hverkuil-cisco@xs4all.nl
References: <20230413104756.356695-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230413104756.356695-1-benjamin.gaignard@collabora.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: mtr@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230601_062800_606496_CB1612AC 
X-CRM114-Status: GOOD (  22.30  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Benjamin,

On Thu, 13 Apr 2023 12:47:56 +0200, Benjamin Gaignard wrote:
> ctx->vpu_dst_fmt is no more initialized before calling hantro_try_fmt()
> so assigne it to vpu_fmt led to crash the kernel.
> Like for decoder case use 'fmt' as format for encoder and clean up
> the code.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> Tested-by: Marek Szyprowski <m.szyprowski@samsung.com>
> Fixes: db6f68b51e5c ("media: verisilicon: Do not set context src/dst formats in reset functions")
> ---
> version 2:
> - Remove useless vpu_fmt.
> 
>  drivers/media/platform/verisilicon/hantro_v4l2.c | 10 +++-------
>  1 file changed, 3 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/media/platform/verisilicon/hantro_v4l2.c b/drivers/media/platform/verisilicon/hantro_v4l2.c
> index 8f1414085f47..d71f79471396 100644
> --- a/drivers/media/platform/verisilicon/hantro_v4l2.c
> +++ b/drivers/media/platform/verisilicon/hantro_v4l2.c
> @@ -275,7 +275,7 @@ static int hantro_try_fmt(const struct hantro_ctx *ctx,
>  			  struct v4l2_pix_format_mplane *pix_mp,
>  			  enum v4l2_buf_type type)
>  {
> -	const struct hantro_fmt *fmt, *vpu_fmt;
> +	const struct hantro_fmt *fmt;
>  	bool capture = V4L2_TYPE_IS_CAPTURE(type);
>  	bool coded;
>  
> @@ -295,11 +295,7 @@ static int hantro_try_fmt(const struct hantro_ctx *ctx,
>  
>  	if (coded) {
>  		pix_mp->num_planes = 1;
> -		vpu_fmt = fmt;
> -	} else if (ctx->is_encoder) {
> -		vpu_fmt = ctx->vpu_dst_fmt;
> -	} else {
> -		vpu_fmt = fmt;
> +	} else if (!ctx->is_encoder) {
>  		/*
>  		 * Width/height on the CAPTURE end of a decoder are ignored and
>  		 * replaced by the OUTPUT ones.
> @@ -311,7 +307,7 @@ static int hantro_try_fmt(const struct hantro_ctx *ctx,
>  	pix_mp->field = V4L2_FIELD_NONE;
>  
>  	v4l2_apply_frmsize_constraints(&pix_mp->width, &pix_mp->height,
> -				       &vpu_fmt->frmsize);
> +				       &fmt->frmsize);

This causes a regression on the OUTPUT device of the encoder. fmt->frmsize is
only valid for coded ("bitstream") formats, but fmt on the OUTPUT of an
encoder will be a raw format. This results in width and height to be clamped
to 0.

I think the correct fix would be to apply the frmsize constraints of the
currently configured coded format, but as ctx->vpu_dst_fmt is not initialized
before calling this code, I don't know how to get the coded format.

Michael

>  
>  	if (!coded) {
>  		/* Fill remaining fields */
> -- 
> 2.34.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91262ECAAD1
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Aug 2022 18:17:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7IhxROabqfyWnREM4HDRIiEdhH2dCMII01uTIlfLOHQ=; b=hp8gGDKGsomFxt
	YyGuHyzfOps52qFPKikBqtdmHPuUCMvwErjg7sTqZIev2h5iwmT3YT54FRAkvkpWqhV9u6m4KS4a2
	Y50PO9+haIM+UZVUFDq4ZsQBvCGOMTo8KCWRb5jUUYvccGS2IM+3jHMhtcRErRq1uIg4nKOYkhvhO
	EJdvcAdjtbbzkgT3h1w0WSkdzleIVr0NYR9wmDrZAtRs/Aygip6kFjzUYjTdSVeyXDe9+EmPFVyMD
	jL+4YqL5xwxRFsoY70eFIRmjzDtG1IZ5+GnfYUODOHf8OGAZn+iBfiq9JqVVSiPaRYzJ9S5Jpt4hJ
	m0p1L/1h1JzuZjdzLQXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oT5nv-0018fX-AW; Tue, 30 Aug 2022 18:17:39 +0000
Received: from mail-oa1-x34.google.com ([2001:4860:4864:20::34])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oT5nj-0018bW-9M
	for linux-rockchip@lists.infradead.org; Tue, 30 Aug 2022 18:17:29 +0000
Received: by mail-oa1-x34.google.com with SMTP id 586e51a60fabf-11eab59db71so14827084fac.11
        for <linux-rockchip@lists.infradead.org>; Tue, 30 Aug 2022 11:17:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc;
        bh=/oobhOGqi42449FzVMt/oGmisZwCvSy7BW4jgCCfch0=;
        b=VpcBG8Kr9vdsWOXvnH/lxth7STxi7dPMe1S74WAQ0tsnMozC2LRIB+dqX1liq81G2Y
         yyPmtCE49iIH9Fhy/cwlPemm2EGu9uniW2KsQuiF7MX+MYVFMBaMOjvwx46TrqqqRbGl
         8XBzxZUSiHCaXKTvBxmFYuUo6Zwb1pFbLMRXsm4k7H9NogSa0vxs+LhF5EvK3e7gR2//
         bZeUNISUliBPshw1v7PEqeHOzBzk/dUbVf5KyKBqPjWgrajFewGmNDFNb7w+KbjxQWhZ
         UeDcBrELMkpX3E1DzJ9aovTWQ9WWdwofMXXyXTNFaT6J86/MkQfqpmI/54EVY9g1Ia6R
         3SwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=/oobhOGqi42449FzVMt/oGmisZwCvSy7BW4jgCCfch0=;
        b=5p3jc4yb9aiVqo7WF51UfAWhKskfxFRRj+4UWHQY1V1ZltiIcYiVb3YUefnAj0THH9
         wMkYGHr+2umFLxPoKoJGE0UC3HeEJJZuWHPCxxJP1sim4zQbXzMUdOdQUgwQGgQ4HIGO
         h0xCIm91hNX8QDfpYroVZ3NiI3RA/Ex/8Xl9nWll6HVFQhZflPkb803t5YNIMB8z/gLa
         A0JK2N9kJhQymUwil+zqFnBPwHsvwETXpBZ6IFcOzaEYq+GZYKJ/aaqc2PoUUBu5pDjF
         3bfJTxMGzLyn9l7NPqb3nMNCPcJdJCz9RLqGc47rDchg2LJjI+1DwmSyMkIdY/vQD7+T
         +nDA==
X-Gm-Message-State: ACgBeo0eLA22JWe+kPaiMgegn4uZ+p3lEjiUmHKpL8w808ucIZijw9Oe
	DXgJBUu2WeMX0SZTcLYgN2QKcw==
X-Google-Smtp-Source: AA6agR4PjkWk+Bc8nvP17VYGP14YkKDkOOcw6aw7cjJ213TLpMFs5PvxMnyRL7Ny9EsqHgqfqYsRJg==
X-Received: by 2002:a05:6870:328d:b0:10d:ce86:ceee with SMTP id q13-20020a056870328d00b0010dce86ceeemr10941976oac.80.1661883443167;
        Tue, 30 Aug 2022 11:17:23 -0700 (PDT)
Received: from eze-laptop ([190.190.187.68])
        by smtp.gmail.com with ESMTPSA id p7-20020a056830130700b006396521c804sm7532039otq.55.2022.08.30.11.17.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Aug 2022 11:17:22 -0700 (PDT)
Date: Tue, 30 Aug 2022 15:17:16 -0300
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: mchehab@kernel.org, hverkuil@xs4all.nl, p.zabel@pengutronix.de,
	gregkh@linuxfoundation.org, mripard@kernel.org,
	paul.kocialkowski@bootlin.com, wens@csie.org,
	jernej.skrabec@gmail.com, samuel@sholland.org,
	nicolas.dufresne@collabora.com, andrzej.p@collabora.com,
	linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
	kernel@collabora.com
Subject: Re: [PATCH v3 1/7] media: hantro: Store HEVC bit depth in context
Message-ID: <Yw5ULOEDLWaHQav7@eze-laptop>
References: <20220829162159.881588-1-benjamin.gaignard@collabora.com>
 <20220829162159.881588-2-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220829162159.881588-2-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_111727_559710_6517EA5B 
X-CRM114-Status: GOOD (  18.06  )
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

On Mon, Aug 29, 2022 at 06:21:53PM +0200, Benjamin Gaignard wrote:
> Store HEVC bit depth in context.
> Bit depth is equal to hevc sps bit_depth_luma_minus8 + 8.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>

Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

Looks good!

I have limited access to the hardware at the moment.

Can you make sure things look good not only for HEVC
but also for the other codecs?

Thanks!
Ezequiel

> ---
> version 3:
> - Based on top of Ezequiel's patch "media: destage Hantro VPU driver"
>  drivers/media/platform/verisilicon/hantro_drv.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/media/platform/verisilicon/hantro_drv.c b/drivers/media/platform/verisilicon/hantro_drv.c
> index 2036f72eeb4a..1dd8312d824c 100644
> --- a/drivers/media/platform/verisilicon/hantro_drv.c
> +++ b/drivers/media/platform/verisilicon/hantro_drv.c
> @@ -251,6 +251,11 @@ queue_init(void *priv, struct vb2_queue *src_vq, struct vb2_queue *dst_vq)
>  
>  static int hantro_try_ctrl(struct v4l2_ctrl *ctrl)
>  {
> +	struct hantro_ctx *ctx;
> +
> +	ctx = container_of(ctrl->handler,
> +			   struct hantro_ctx, ctrl_handler);
> +
>  	if (ctrl->id == V4L2_CID_STATELESS_H264_SPS) {
>  		const struct v4l2_ctrl_h264_sps *sps = ctrl->p_new.p_h264_sps;
>  
> @@ -272,6 +277,8 @@ static int hantro_try_ctrl(struct v4l2_ctrl *ctrl)
>  		if (sps->bit_depth_luma_minus8 != 0)
>  			/* Only 8-bit is supported */
>  			return -EINVAL;
> +
> +		ctx->bit_depth = sps->bit_depth_luma_minus8 + 8;
>  	} else if (ctrl->id == V4L2_CID_STATELESS_VP9_FRAME) {
>  		const struct v4l2_ctrl_vp9_frame *dec_params = ctrl->p_new.p_vp9_frame;
>  
> -- 
> 2.32.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

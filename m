Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E078CC43334
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jun 2022 17:35:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bdY3vrfGm8QQgBFDdSJnVQUZNaSQxNW58GtihZ4JH1k=; b=jjEBINCqlBzpJm
	wvommWf7sC7/Ug87T5FO0DTi1V7spNo9DSvLRRhb4KCPjAfwUKizRpvCHKzIOJ/oqrDmgbjd1ZJzB
	hCiSqGK3lI+RM/fX2csYCMIy1IhKuWb6QZFlWlEkD6CnOMHm8Y0VZE837X+wIPrnp++dKfN69rzTg
	nI1EEgzgxU/LjjBN7sG+f8lQH5P9CuLYmEFX1jv2yg1NrPEluR0CDry8sK5OFjuhCVpGMGqayxDHo
	xBeyFJc39Ex2ArXa/W7K8Zua8osU26ZFod9KnChKj8nkbMcEC4uooW/RfTL4hGdfm3nY2olL6lPz3
	kkfjEaIeoD2BWhRTmL/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6y4f-000rEn-AH; Thu, 30 Jun 2022 17:35:29 +0000
Received: from mail-oa1-x33.google.com ([2001:4860:4864:20::33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6y4M-000r6g-5v
	for linux-rockchip@lists.infradead.org; Thu, 30 Jun 2022 17:35:13 +0000
Received: by mail-oa1-x33.google.com with SMTP id 586e51a60fabf-101b4f9e825so172622fac.5
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Jun 2022 10:35:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=TvnWQVWBqHCFvzeuhdV7clHAx5dh+MQYePzQD0+y7Uc=;
        b=H+O2K3BiOmZ+iqTzP8zSGWs+YhD8kbBM9gCO4EZmWjmuqQ/9IIrumNFeCy//6VjU1w
         yM6Q02DG/+NgZ80SHDKhMAbHXn9b6ohS/6PY13azn70NcyE6uqmHRstHJuNDoH3Un1Ph
         37YXniXZA3pAShQCYFnsyRE26Im/37hnjk+v0HaZ7R9t7wEZ1G5eS9ISp7JgISS7I2hN
         A9anibvuevrFfzTUSdar4tlT8kFla1X/nfr02qpm1Bj09lMFURTKRufmPUwlY2MjRZmy
         KG++nNE8wBAwIkQMYixHiXkCRlaAb/+iz/QfRiAHDg4laMF0zX7xn13/RzBQnBHr9917
         wDkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=TvnWQVWBqHCFvzeuhdV7clHAx5dh+MQYePzQD0+y7Uc=;
        b=3DHOJ/5ykNtFX43hoSFtgcnk4PDVTLsYmrr62nkdcAmIhd6LAJ8F6wIPjPsbRrAeiM
         bGdVRcisy2UKEQf5WEO4hcHFw9G/Zocht2asfCmiVjcMuAV3MpvQxy2gxbefqlwmuYjR
         LxyutYbOKnrrEucp5vShqeFPm+bVCdWgWW6cYdvRL/LgM/IG4fuTNLoMpedBGKKgHic+
         yZGnPO0FMOvdtH/XuhgogHgNhIISOrnoZjWQrFYIFl9w9VSq1AilQaj2+43rD56YXPUT
         6/GpcOQhNi3ONFpAKUONytwc8xXhkoSd4vx9yK8B2vEEVfYP+ZrpyUtmPd6Ngp3J9fn1
         tpKA==
X-Gm-Message-State: AJIora8hkEx8mWD7ojUgyI5/S3KBKQAPG1ged7UktKygadnxICY5S3r5
	n+RrrhCmTyZ+WApB4Ywf0gxqqw==
X-Google-Smtp-Source: AGRyM1v7vHSixqg0jIsfWA3Xuzr25gaoV363cLZK0Dvg5ZZL2eE9La/e2ncLhw7ZXvNyB6nXsNZz3g==
X-Received: by 2002:a05:6870:cd02:b0:108:a476:f2ac with SMTP id qk2-20020a056870cd0200b00108a476f2acmr7067746oab.184.1656610507002;
        Thu, 30 Jun 2022 10:35:07 -0700 (PDT)
Received: from eze-laptop ([190.190.187.68])
        by smtp.gmail.com with ESMTPSA id o7-20020a056871078700b000e686d1386dsm14181497oap.7.2022.06.30.10.35.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jun 2022 10:35:06 -0700 (PDT)
Date: Thu, 30 Jun 2022 14:35:00 -0300
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
Subject: Re: [PATCH 4/7] media: hantro: postproc: Configure output regs to
 support 10bit
Message-ID: <Yr3exPUv0OVKgwlk@eze-laptop>
References: <20220617115802.396442-1-benjamin.gaignard@collabora.com>
 <20220617115802.396442-5-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220617115802.396442-5-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220630_103510_291946_DC863EFA 
X-CRM114-Status: GOOD (  16.73  )
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

On Fri, Jun 17, 2022 at 01:57:59PM +0200, Benjamin Gaignard wrote:
> Move output format setting in postproc and make sure that
> 8/10bit configuration is correctly set.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>

Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

Thanks,
Ezequiel

> ---
>  drivers/staging/media/hantro/hantro_g2_hevc_dec.c | 2 --
>  drivers/staging/media/hantro/hantro_postproc.c    | 7 ++++++-
>  2 files changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/media/hantro/hantro_g2_hevc_dec.c b/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
> index 8407ad45b7b7..c929f2974a01 100644
> --- a/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
> +++ b/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
> @@ -167,8 +167,6 @@ static void set_params(struct hantro_ctx *ctx)
>  	hantro_reg_write(vpu, &g2_bit_depth_y_minus8, sps->bit_depth_luma_minus8);
>  	hantro_reg_write(vpu, &g2_bit_depth_c_minus8, sps->bit_depth_chroma_minus8);
>  
> -	hantro_reg_write(vpu, &g2_output_8_bits, 0);
> -
>  	hantro_reg_write(vpu, &g2_hdr_skip_length, compute_header_skip_lenght(ctx));
>  
>  	min_log2_cb_size = sps->log2_min_luma_coding_block_size_minus3 + 3;
> diff --git a/drivers/staging/media/hantro/hantro_postproc.c b/drivers/staging/media/hantro/hantro_postproc.c
> index a0928c508434..09d8cf942689 100644
> --- a/drivers/staging/media/hantro/hantro_postproc.c
> +++ b/drivers/staging/media/hantro/hantro_postproc.c
> @@ -114,6 +114,7 @@ static void hantro_postproc_g2_enable(struct hantro_ctx *ctx)
>  	struct hantro_dev *vpu = ctx->dev;
>  	struct vb2_v4l2_buffer *dst_buf;
>  	int down_scale = down_scale_factor(ctx);
> +	int out_depth;
>  	size_t chroma_offset;
>  	dma_addr_t dst_dma;
>  
> @@ -132,8 +133,9 @@ static void hantro_postproc_g2_enable(struct hantro_ctx *ctx)
>  		hantro_write_addr(vpu, G2_RS_OUT_LUMA_ADDR, dst_dma);
>  		hantro_write_addr(vpu, G2_RS_OUT_CHROMA_ADDR, dst_dma + chroma_offset);
>  	}
> +
> +	out_depth = hantro_get_format_depth(ctx->dst_fmt.pixelformat);
>  	if (ctx->dev->variant->legacy_regs) {
> -		int out_depth = hantro_get_format_depth(ctx->dst_fmt.pixelformat);
>  		u8 pp_shift = 0;
>  
>  		if (out_depth > 8)
> @@ -141,6 +143,9 @@ static void hantro_postproc_g2_enable(struct hantro_ctx *ctx)
>  
>  		hantro_reg_write(ctx->dev, &g2_rs_out_bit_depth, out_depth);
>  		hantro_reg_write(ctx->dev, &g2_pp_pix_shift, pp_shift);
> +	} else {
> +		hantro_reg_write(vpu, &g2_output_8_bits, out_depth > 8 ? 0 : 1);
> +		hantro_reg_write(vpu, &g2_output_format, out_depth > 8 ? 1 : 0);
>  	}
>  	hantro_reg_write(vpu, &g2_out_rs_e, 1);
>  }
> -- 
> 2.32.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE2EBC43334
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jun 2022 17:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4m4UbjVD1fdAbYQhRaJlaEnCvUshMo2UIAxaevbYtaU=; b=y19YsYhCrqaaR5
	6TuLFRMsT3cMwGIybKjVxaDyFJY/SO9bZ/KHusNGaHTtYQjJiPuYfswtHt0nVNydjKZPPvEZUhgQe
	iyiPi/OBLc9ZooNNHhI/SsBufTPn9GFko5VkvrcM3A7cR8FWmAbJracChhakiniouFNnqZwWspwRl
	w4miPBSBtx3MDOAhP+sgL84HyZc9rfviAV0RwPISNEd/QayA78rvoQKV3JlqOCCcSs/IyfsFUgDfn
	izuFYyGhT7wzdDqU5vNZTUhRWCYUg5Og7s1yQMOl2SGURRu0Zp2sot0rcIindBAEWuOPDEFHUZNKB
	qyaGG1avpEO7omSNH8TA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6y9t-000t7D-A5; Thu, 30 Jun 2022 17:40:53 +0000
Received: from mail-oa1-x30.google.com ([2001:4860:4864:20::30])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6y9d-000t1V-TS
	for linux-rockchip@lists.infradead.org; Thu, 30 Jun 2022 17:40:39 +0000
Received: by mail-oa1-x30.google.com with SMTP id 586e51a60fabf-10bab338f70so180010fac.7
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Jun 2022 10:40:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=EGE13E6ZZhU25BMBFH6IJpwsNUcglEsD50ZGiHxhMVQ=;
        b=wjpd5H5KnbK7QTTI1de178JpUIRh8kjd3V+neF7jaJMjKPOwwd8Yj3j6ypd/aj7XyM
         FzeRco6DWJdluLH2th9Nq4HXW38kLqUF3qG1n4XIiBYQ5zcqmNYdWeZizDCDQ33xm8Wy
         Aq73WpUD4rUGSpe56pix+rm8fChl04rPKwtNEekm2OFX5I3OGhJuYUwpxV1TeRJd7F+D
         DeLAlCLrs2bVcRtK5YhtTnLLRzsRtx3/T3KAsaF6pCoOXqbOymhLjFdHJ26WHOojebDo
         BTXJy5O7P4JetRaGRewOjy+iWEcba8u1xtxPSn+QL8OvxWqlXeoLpkq0C6SbUnx176lO
         RFqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=EGE13E6ZZhU25BMBFH6IJpwsNUcglEsD50ZGiHxhMVQ=;
        b=GbXdzLHMiyzESwAuFGVqZrbC6nKCjvcjfIh2fkMtgoypptyHpRt64vdWF/WQjn9Wo9
         3LKET5RZGOHBh6cZUZOj6ohd9x6H1YwwNeiiZ/9+rQ+Gs9M463M7QePwtROLVqnbH/cF
         K8mCYj+LFtYQ5RsNEL+hUh+oQNBDZo9yESl5AJs2u2J8pLM29p/XbRy6ooUji8BGZOYk
         eAxXD51mbCmA0YMBUowEmFryM9dVcEiL7DRBNupoBK/mfA9e7pKoNLoUKOhoGAUJFSAE
         +HbWrc4axIOQ1jYJEf9ezqxw9n7nRO/jveCSnBdnOXPhjfWI/h+VqYoGlVLHZJJcveKT
         kAVA==
X-Gm-Message-State: AJIora+QxvWJ+GYP29bUDF0oGGjNZpADhSd9hu1XQLfcFeD8BUj9C+q5
	GoN9oVNt1FetcFyxKI3yFShUNQ==
X-Google-Smtp-Source: AGRyM1v0Nx0E1opyB9avEAkzQRKPrjH670PrUahCZqH0PNOb+fyeVLDUCCM6nt1U4s8F/ZcMFjbTWw==
X-Received: by 2002:a05:6870:7885:b0:104:9120:c382 with SMTP id hc5-20020a056870788500b001049120c382mr5973550oab.115.1656610836765;
        Thu, 30 Jun 2022 10:40:36 -0700 (PDT)
Received: from eze-laptop ([190.190.187.68])
        by smtp.gmail.com with ESMTPSA id m13-20020a056820050d00b0041b8e651c1csm11819888ooj.40.2022.06.30.10.40.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jun 2022 10:40:36 -0700 (PDT)
Date: Thu, 30 Jun 2022 14:40:30 -0300
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
Subject: Re: [PATCH 6/7] media: hantro: imx8m: Enable 10bit decoding
Message-ID: <Yr3gDuzOXk58wTnd@eze-laptop>
References: <20220617115802.396442-1-benjamin.gaignard@collabora.com>
 <20220617115802.396442-7-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220617115802.396442-7-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220630_104038_016373_D334BAC1 
X-CRM114-Status: GOOD (  14.49  )
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

On Fri, Jun 17, 2022 at 01:58:01PM +0200, Benjamin Gaignard wrote:
> Expose 10bit pixel formats to enable 10bit decoding in IMX8M SoCs.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>

Looks good to me.

Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

Have you checked Fluster tests passess using both P010 and P010_4L4?
It would be good to double-check.

Thanks a lot,
Ezequiel

> ---
>  drivers/staging/media/hantro/imx8m_vpu_hw.c | 27 +++++++++++++++++++++
>  1 file changed, 27 insertions(+)
> 
> diff --git a/drivers/staging/media/hantro/imx8m_vpu_hw.c b/drivers/staging/media/hantro/imx8m_vpu_hw.c
> index 77f574fdfa77..b390228fd3b4 100644
> --- a/drivers/staging/media/hantro/imx8m_vpu_hw.c
> +++ b/drivers/staging/media/hantro/imx8m_vpu_hw.c
> @@ -162,12 +162,39 @@ static const struct hantro_fmt imx8m_vpu_g2_postproc_fmts[] = {
>  			.step_height = MB_DIM,
>  		},
>  	},
> +	{
> +		.fourcc = V4L2_PIX_FMT_P010,
> +		.codec_mode = HANTRO_MODE_NONE,
> +		.postprocessed = true,
> +		.frmsize = {
> +			.min_width = FMT_MIN_WIDTH,
> +			.max_width = FMT_UHD_WIDTH,
> +			.step_width = MB_DIM,
> +			.min_height = FMT_MIN_HEIGHT,
> +			.max_height = FMT_UHD_HEIGHT,
> +			.step_height = MB_DIM,
> +		},
> +	},
>  };
>  
>  static const struct hantro_fmt imx8m_vpu_g2_dec_fmts[] = {
>  	{
>  		.fourcc = V4L2_PIX_FMT_NV12_4L4,
>  		.codec_mode = HANTRO_MODE_NONE,
> +		.match_depth = true,
> +		.frmsize = {
> +			.min_width = FMT_MIN_WIDTH,
> +			.max_width = FMT_UHD_WIDTH,
> +			.step_width = TILE_MB_DIM,
> +			.min_height = FMT_MIN_HEIGHT,
> +			.max_height = FMT_UHD_HEIGHT,
> +			.step_height = TILE_MB_DIM,
> +		},
> +	},
> +	{
> +		.fourcc = V4L2_PIX_FMT_P010_4L4,
> +		.codec_mode = HANTRO_MODE_NONE,
> +		.match_depth = true,
>  		.frmsize = {
>  			.min_width = FMT_MIN_WIDTH,
>  			.max_width = FMT_UHD_WIDTH,
> -- 
> 2.32.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

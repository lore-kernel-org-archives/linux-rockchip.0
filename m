Return-Path: <SRS0=FJi+=DD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5EA2C2D0A8
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Sep 2020 13:17:22 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 61ADC207EA
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Sep 2020 13:17:22 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="USoZ+CWB";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="bu7rNwBB"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 61ADC207EA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=q6OlHqxvYlwwOHURt5vMore53v79hS76ZdpDDOP2q68=; b=USoZ+CWBIvy6n32/ckOVKf2xH
	KngNrnf4KkqKazRx3BLyuaDvVSuaFE2mf9ZcLoHVjTo/4/kOgNQPDdD1ieyyXNtFOZf8K60CDuJTr
	N6WcthGmNQF/rat26ny0nyPdQN3Q4P9fhDQ3a0rDmO+OSlq1zrEIKsZ5VV6mER0vbv85fQNsFzNHn
	JJUI0DGPrikHmd+1GU7ZakBlhNigKqYF7d2ACvi3POW3llSKxjEBhyM20hKQIa9zT1wVrXNB9W6I7
	8erl2Qj1wupLuHIDv3Ll8HiKDFG5UiEVKQ19M28HFOHdt2IOWgXNFn30GEpSJxcZ7CuOFM7G8a5Wu
	8sQN5/wHw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kMA4g-0002Uk-9J; Sat, 26 Sep 2020 13:17:14 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kMA4e-0002U9-3m
 for linux-rockchip@lists.infradead.org; Sat, 26 Sep 2020 13:17:13 +0000
Received: by mail-wm1-x343.google.com with SMTP id e11so1276938wme.0
 for <linux-rockchip@lists.infradead.org>; Sat, 26 Sep 2020 06:17:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=d4WdYnhNduVMb4IQylvNj0b3+xUXtGAllJOGjx+LukM=;
 b=bu7rNwBBrw/g6/MQUYPv/rJuxs4kAJuSUSGF7HaoBxYmz+CE+8kF5cU7Vk+A9yw9fT
 2uTqTzH0/a59B/1vQknmTX55axzITAT5Sk1Eml/bFiKnwHjUdhTv0Q+hwWWoD69eTq2r
 yb7hM4IaJd6RS4hi5svCI3acUoPyo69HIgP2Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=d4WdYnhNduVMb4IQylvNj0b3+xUXtGAllJOGjx+LukM=;
 b=Rv9y/u40irajLYD0bGVnEq0nCc0BqLDcltaLGefi9lN/cHCodxAb7e/7yTyn1q14rY
 bY7js41cFuE1cJQcEV0kPcmOoHqtqi7+rA/NWxSCZdFOLvISTLzrIvsrj5lQ0WpephYI
 soNZr7ywCB1NfEFPennUU/U74bH7rxMXUa580k7uQlubXmL0k6aByuJDyyEezx4NoRPM
 1YXU64VOxmvFUA5bnHUNWPE/jSPP3efwqUi5aL0UOLsEN/6Ws1q1dZo/Crv2zQ6POvQN
 cT6T0l7KZyWuAVSD/8gqWNFVKsOAYsAv5+DttjKHEZMEXL7p1Qkhc85RF4+lBaDOKLr0
 Symg==
X-Gm-Message-State: AOAM533dhLYhXndxQeIg4A0/Ilii0k0DP1hN4vGvpqXKY9/3gqDfWvRt
 w8ix9A2Kc0cVkMPapjsjTBTcBw==
X-Google-Smtp-Source: ABdhPJzA9zIAszTN7VfMOAdSZYj9TgCEGPni6cWED8LMBF3e0XPhvf2pPLGokCCo/16b8UNSW4Do6Q==
X-Received: by 2002:a7b:c3c8:: with SMTP id t8mr2589182wmj.101.1601126230700; 
 Sat, 26 Sep 2020 06:17:10 -0700 (PDT)
Received: from chromium.org (216.131.76.34.bc.googleusercontent.com.
 [34.76.131.216])
 by smtp.gmail.com with ESMTPSA id m185sm2768709wmf.5.2020.09.26.06.17.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 26 Sep 2020 06:17:09 -0700 (PDT)
Date: Sat, 26 Sep 2020 13:17:08 +0000
From: Tomasz Figa <tfiga@chromium.org>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [PATCH v4 02/10] media: staging: rkisp1: cap: remove unsupported
 formats
Message-ID: <20200926131708.GE3781977@chromium.org>
References: <20200901111612.10552-1-dafna.hirschfeld@collabora.com>
 <20200901111612.10552-3-dafna.hirschfeld@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200901111612.10552-3-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200926_091712_181780_F185EDF6 
X-CRM114-Status: GOOD (  17.63  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: mchehab@kernel.org, dafna3@gmail.com, hverkuil@xs4all.nl,
 linux-rockchip@lists.infradead.org, helen.koike@collabora.com,
 laurent.pinchart@ideasonboard.com, sakari.ailus@linux.intel.com,
 kernel@collabora.com, ezequiel@collabora.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Dafna,

On Tue, Sep 01, 2020 at 01:16:04PM +0200, Dafna Hirschfeld wrote:
> For Ycbcr packed formats only YUYV can be supported by
> the driver. This patch removes the other formats.

I can see the driver already setting the
RKISP1_CIF_MI_XTD_FMT_CTRL_*_CB_CR_SWAP register according to the
uv_swap flag, but it currently does it so only if comp_planes is 2.
Wouldn't just doing the same if the number of planes is 1 fix the
support for at least the YVYU format?

Best regards,
Tomasz

> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> Acked-by: Helen Koike <helen.koike@collabora.com>
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> ---
>  drivers/staging/media/rkisp1/rkisp1-capture.c | 17 -----------------
>  1 file changed, 17 deletions(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
> index f4d5cc3e2f12..79195e74d995 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-capture.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
> @@ -88,13 +88,6 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_mp_fmts[] = {
>  		.fourcc = V4L2_PIX_FMT_YUYV,
>  		.uv_swap = 0,
>  		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUVINT,
> -	}, {
> -		.fourcc = V4L2_PIX_FMT_YVYU,
> -		.uv_swap = 1,
> -		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUVINT,
> -	}, {
> -		.fourcc = V4L2_PIX_FMT_VYUY,
> -		.write_format = RKISP1_MI_CTRL_MP_WRITE_YUVINT,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_YUV422P,
>  		.uv_swap = 0,
> @@ -197,16 +190,6 @@ static const struct rkisp1_capture_fmt_cfg rkisp1_sp_fmts[] = {
>  		.uv_swap = 0,
>  		.write_format = RKISP1_MI_CTRL_SP_WRITE_INT,
>  		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
> -	}, {
> -		.fourcc = V4L2_PIX_FMT_YVYU,
> -		.uv_swap = 1,
> -		.write_format = RKISP1_MI_CTRL_SP_WRITE_INT,
> -		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
> -	}, {
> -		.fourcc = V4L2_PIX_FMT_VYUY,
> -		.uv_swap = 1,
> -		.write_format = RKISP1_MI_CTRL_SP_WRITE_INT,
> -		.output_format = RKISP1_MI_CTRL_SP_OUTPUT_YUV422,
>  	}, {
>  		.fourcc = V4L2_PIX_FMT_YUV422P,
>  		.uv_swap = 0,
> -- 
> 2.17.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

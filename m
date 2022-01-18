Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1088DC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Jan 2022 21:02:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EkYJ63IdnUT1O5/2m4G1nt6B2Q8wy5m5xafT0a2UaRw=; b=y5GL9bMwG2ZfLn
	qXms44DssViydmOm5HVuB9B91IO4VZrRJYYZ16BL8kczuYeu9NMu3WbGDrLg0dY4SXxyAWwCgSHxS
	bsDemc3+/h/05RSbhOqYa2vzcMv+MgSyF4Wp6NZf4L8xQcKgaZFrt9jKtXxv4UEEi4w7GgU3ZfhjE
	q99pq3+AR22xw0zyV3Dz7MFBjRu2cOpCIKiUuhbf+gdL+scqXOm0M3depeKXBYe1C/kIEBUPsSWGi
	8sb44xAr0/c53ufmEBoWuPa5uT+Nl9T9l4ZlNr5S68Vp4VZhAzimx8ZdkaPsbzaRydF2HMfxKBTQB
	085SVo18bXU6ieMimzBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9vcY-002y93-Tw; Tue, 18 Jan 2022 21:02:26 +0000
Received: from mail-ot1-x333.google.com ([2607:f8b0:4864:20::333])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9vcV-002y7E-7u
 for linux-rockchip@lists.infradead.org; Tue, 18 Jan 2022 21:02:25 +0000
Received: by mail-ot1-x333.google.com with SMTP id
 l64-20020a9d1b46000000b005983a0a8aaaso189937otl.3
 for <linux-rockchip@lists.infradead.org>; Tue, 18 Jan 2022 13:02:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=1VLSpDu78a/QQtlbDHw8oRJ41Gic+mpyfMuI9CFwaS4=;
 b=oyfsdS43YUPbHomPJmvS7UB7JpqPg2VMwTN5ajXlyJmBBvFNT7pc6f8z+BD7YjMWzd
 oUSCXl+2cA5Ln44yyBF46k6vdsJdA1GYZNYZQpVGADN1ZjomOWKlxGF2uXmimH0nnvSR
 wCZhSpABsmN4J/VgIgQDS+odQ2TxhhutMFE95eMNCXO5AWCtFlArmqO+/RR6szL8q0ub
 0RhUNLHj+M9bTk6u7jNOHPtBMrPM5r1cpTopnnJ8fT6uVESC/kmMS+XI388RhK9AIyM8
 ISh4ZNhG9TM9J0X5HDZ0decq+jfKGz641ylwXHBTdTA/jq9fJs1BFAzKyRGG/09n1GHu
 wapg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=1VLSpDu78a/QQtlbDHw8oRJ41Gic+mpyfMuI9CFwaS4=;
 b=DVtL3O4mlxC5dkwUg6y48mB3HTtuMVqBcrCZw9HapjOo8zumk9YXElbIMtiQRqC5Pc
 kuakoVndcfrn259Tg9UgyFvaNfAJb+J7b4anDmxbUem7EPiNyhYB+sMaXXnBDsF5Hx1M
 +Xz9a7EqDiTPG2Ka0LaGHXcjF/Rbb0ym7OEHiycB7V+A7tl1Orcj9DUyKqFUI46wtxqK
 GLqTbObyPNyJXJ8EYG+kPpuzsxF5Zx/WLwk69MWVgTQ7nGShfzw8jJD9ojWTNINcKGeu
 2zeyEvi30LIzyCTAHtLM0Wo0MUE+yAxuzWsgcGSrBt8OFl+M3yVzALksqo1SGL/39Kfr
 aEyw==
X-Gm-Message-State: AOAM533vjG0vLmRzEoFjGazlVFMya+y+zf0YSkKYUn0LHb2dsCBYSt6z
 wLLwGOaSbqn6vdjJAbt4O1hiZw==
X-Google-Smtp-Source: ABdhPJy9JqUlPm4DjmcQEbF/c7bKPYBtmvOFvFI1wvmpsaCmzCHcGp9F8cZ10lhpzdzWUlzzZUoGbg==
X-Received: by 2002:a9d:17cc:: with SMTP id j70mr21545588otj.313.1642539741207; 
 Tue, 18 Jan 2022 13:02:21 -0800 (PST)
Received: from eze-laptop ([190.194.87.200])
 by smtp.gmail.com with ESMTPSA id j26sm4929362oou.29.2022.01.18.13.02.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Jan 2022 13:02:19 -0800 (PST)
Date: Tue, 18 Jan 2022 18:02:15 -0300
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFT v2 1/8] media: hantro: jpeg: Relax register writes
 before write starting hardware
Message-ID: <Yecq111pZDP9XFNO@eze-laptop>
References: <20220107093455.73766-1-wenst@chromium.org>
 <20220107093455.73766-2-wenst@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220107093455.73766-2-wenst@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220118_130223_473077_6A9054BC 
X-CRM114-Status: GOOD (  23.29  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Chen-Yu,

The series looks good, thanks for picking up this task.

Just a one comment.

On Fri, Jan 07, 2022 at 05:34:48PM +0800, Chen-Yu Tsai wrote:
> In the earlier submissions of the Hantro/Rockchip JPEG encoder driver, a
> wmb() was inserted before the final register write that starts the
> encoder. In v11, it was removed and the second-to-last register write
> was changed to a non-relaxed write, which has an implicit wmb() [1].
> The rockchip_vpu2 (then rk3399_vpu) variant is even weirder as there
> is another writel_relaxed() following the non-relaxed one.
> 
> Turns out only the last writel() needs to be non-relaxed. Device I/O
> mappings already guarantee strict ordering to the same endpoint, and
> the writel() triggering the hardware would force all writes to memory
> to be observed before the writel() to the hardware is observed.
> 
> [1] https://lore.kernel.org/linux-media/CAAFQd5ArFG0hU6MgcyLd+_UOP3+T_U-aw2FXv6sE7fGqVCVGqw@mail.gmail.com/
> 
> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> ---
>  drivers/staging/media/hantro/hantro_h1_jpeg_enc.c        | 3 +--
>  drivers/staging/media/hantro/rockchip_vpu2_hw_jpeg_enc.c | 3 +--
>  2 files changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/media/hantro/hantro_h1_jpeg_enc.c b/drivers/staging/media/hantro/hantro_h1_jpeg_enc.c
> index 1450013d3685..03db1c3444f8 100644
> --- a/drivers/staging/media/hantro/hantro_h1_jpeg_enc.c
> +++ b/drivers/staging/media/hantro/hantro_h1_jpeg_enc.c
> @@ -123,8 +123,7 @@ int hantro_h1_jpeg_enc_run(struct hantro_ctx *ctx)
>  		| H1_REG_AXI_CTRL_INPUT_SWAP32
>  		| H1_REG_AXI_CTRL_OUTPUT_SWAP8
>  		| H1_REG_AXI_CTRL_INPUT_SWAP8;
> -	/* Make sure that all registers are written at this point. */
> -	vepu_write(vpu, reg, H1_REG_AXI_CTRL);
> +	vepu_write_relaxed(vpu, reg, H1_REG_AXI_CTRL);
>  

As far as I can remember, this logic comes from really old Chromium Kernels.
You might be right, and this barrier isn't needed... but then OTOH the comment
is here for a reason, so maybe it is needed (or was needed on some RK3288 SoC revision).

I don't have RK3288 boards near me, but in any case, I'm not sure
we'd be able to test this easily (maybe there are issues that only
trigger under a certain load).

I'd personally avoid this one change, but if you are confident enough with it
that's fine too.

Thanks!
Ezequiel

>  	reg = H1_REG_ENC_CTRL_WIDTH(MB_WIDTH(ctx->src_fmt.width))
>  		| H1_REG_ENC_CTRL_HEIGHT(MB_HEIGHT(ctx->src_fmt.height))
> diff --git a/drivers/staging/media/hantro/rockchip_vpu2_hw_jpeg_enc.c b/drivers/staging/media/hantro/rockchip_vpu2_hw_jpeg_enc.c
> index 4df16f59fb97..b931fc5fa1a9 100644
> --- a/drivers/staging/media/hantro/rockchip_vpu2_hw_jpeg_enc.c
> +++ b/drivers/staging/media/hantro/rockchip_vpu2_hw_jpeg_enc.c
> @@ -152,8 +152,7 @@ int rockchip_vpu2_jpeg_enc_run(struct hantro_ctx *ctx)
>  		| VEPU_REG_INPUT_SWAP8
>  		| VEPU_REG_INPUT_SWAP16
>  		| VEPU_REG_INPUT_SWAP32;
> -	/* Make sure that all registers are written at this point. */
> -	vepu_write(vpu, reg, VEPU_REG_DATA_ENDIAN);
> +	vepu_write_relaxed(vpu, reg, VEPU_REG_DATA_ENDIAN);
>  
>  	reg = VEPU_REG_AXI_CTRL_BURST_LEN(16);
>  	vepu_write_relaxed(vpu, reg, VEPU_REG_AXI_CTRL);
> -- 
> 2.34.1.575.g55b058a8bb-goog
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

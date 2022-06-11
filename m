Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3CDE2C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 11 Jun 2022 12:08:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2j+ID5EuUErnkoIvOs5sg9Hxj2vIHIWISp5poihhVo8=; b=2O7OA9k19NDESL
	XsDOgWMQqo2UeGVDjfU75iCl5IASd/RY2ZRmpBTTnR+RrJ8yYKb4y0UQhjXVU6Iz/WeBeyW2qQAAH
	65tQOmACN8Oe5dpBhFyN2dX6k80p7/SaiN++Jy0RISyOvOdrvOI0GB3p+xtRiu6YCAOGSlz1ZfZ1E
	z725iCeG7ad+u0RSQXlMM9ub9r+jZUVEzTP01dcJe9mSuw9E/aFKFjJ98SgScBwbmM7E05xnCEWeE
	30+ORENgs7UqDKiT/d5UdrLNswHdqYKtnX12NxqXKhs5l9xfPhn+6IcT2g84RnokoK+EozELefwA/
	q3vxVHBPtTpKIbVc0uug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzzuY-00CrT1-4z; Sat, 11 Jun 2022 12:08:14 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzzuU-00CrQ5-8d
	for linux-rockchip@lists.infradead.org; Sat, 11 Jun 2022 12:08:12 +0000
Received: by mail-ed1-x52d.google.com with SMTP id d14so1868380eda.12
        for <linux-rockchip@lists.infradead.org>; Sat, 11 Jun 2022 05:08:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=MBpWW3Rm0qHu8VKriKsz69J9U1fr852JTooAqUcIBSs=;
        b=JGka//OtRrj4t/9GKYq/cGyzcLKCd9fNKHwtrSi+iMrLBxCIe2vjiURLMrjDKJLb9i
         JhDL2oISE5D3tswqByIX9F9OkKCv+psJVaNkSsMpoEpwjp7Praxnsf0QO4whgqiCKqft
         e0sxcPfUYpCiP5T0+JCyneRANM0HE00abZtoi6vIYFQs36/pfjFaifVK9MFkCoxsC9Sj
         7LQeB/O2d0URJ+CkxOWYEryOmn3HbV+vcBBzYthTuyExaOtWnEWO3ON1H/NYb68rQnRB
         ca0/ss9BbrMan95qXWzhv5iec3hRIsVXq7Y62uVTXM2BqZfuFDb5QvbyoyPPibnlfu3z
         c1zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=MBpWW3Rm0qHu8VKriKsz69J9U1fr852JTooAqUcIBSs=;
        b=HnwWPNbmo2RXqefcuxEmCwPFVM+P6S3++57Fe1Hqlv6sMJ5wXMPJBhSgwVM+YPkn+w
         /igz2bdQHTU6c68DSz8EVn0LDepesPjUkzmFdDl1n47DyPTESjarnxzZFI8qvgXBk5Ac
         3+aaek0KzI7MnWgGw8IkvEeC1IBCkCoW/ENDYBW9bsmT/dm9k4UhZYGgCFgbjm/pMVA5
         GogB0pxUBpNmmAJqc450FzGr8jcxpqrmkMH5gwC9+EhNC9PBcSA21boTxkgi64mhtg6d
         GCZWK0qMooRYdU8bVIDuAkQ7NRvUhGnUIHb+GUiDJ4a9tFk9v+gErBlb0ICHmQOXZn1O
         dWfg==
X-Gm-Message-State: AOAM533wTqRL4eLNuMkTmmFjFiBcBORN9LWdh5qD2kyE1pQ+jeZii52t
	lXafhTepFb1paOSFSXlUAYLBLJZX+g==
X-Google-Smtp-Source: ABdhPJzUrTZfe/FzjHAMv8CZN44ZkvnDaQwFgVdQHT0CWx1GHxFj7YcfX0sdZb0Bk6zZ3I6MW6m/Tg==
X-Received: by 2002:a05:6402:228d:b0:42d:e319:7297 with SMTP id cw13-20020a056402228d00b0042de3197297mr56166642edb.79.1654949287554;
        Sat, 11 Jun 2022 05:08:07 -0700 (PDT)
Received: from ?IPV6:2001:9e8:b963:4d00:eb2a:1586:942f:ce9f? ([2001:9e8:b963:4d00:eb2a:1586:942f:ce9f])
        by smtp.gmail.com with ESMTPSA id q4-20020a50aa84000000b0042617ba638esm1318458edc.24.2022.06.11.05.08.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 11 Jun 2022 05:08:06 -0700 (PDT)
Message-ID: <8efa6811-ee17-4dd2-23a7-e0471af8c0a6@gmail.com>
Date: Sat, 11 Jun 2022 14:08:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH v1 4/5] media: rkvdec: Re-enable H.264 error detection
Content-Language: en-US
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 linux-media@vger.kernel.org, Ezequiel Garcia
 <ezequiel@vanguardiasur.com.ar>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: kernel@collabora.com, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
References: <20220610125215.240539-1-nicolas.dufresne@collabora.com>
 <20220610125215.240539-5-nicolas.dufresne@collabora.com>
From: Alex Bee <knaerzche@gmail.com>
In-Reply-To: <20220610125215.240539-5-nicolas.dufresne@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220611_050810_386581_5B402734 
X-CRM114-Status: GOOD (  23.91  )
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

Am 10.06.22 um 14:52 schrieb Nicolas Dufresne:
> This re-enables H.264 error detection, but using the other error mode.
> In that mode, the decoder will skip over the error macro-block or
> slices and complete the decoding. As a side effect, the error status
> is not set in the interrupt status register, and instead errors are
> detected per format. Using this mode workaround the issue that the
> HW get stuck in error stated and allow reporting that some corruption
> may be present in the buffer returned to userland.
> 
> Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
> ---
>  drivers/staging/media/rkvdec/rkvdec-h264.c | 23 +++++++++++++++++++---
>  1 file changed, 20 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/media/rkvdec/rkvdec-h264.c b/drivers/staging/media/rkvdec/rkvdec-h264.c
> index 55596ce6bb6e..60a89918e2c1 100644
> --- a/drivers/staging/media/rkvdec/rkvdec-h264.c
> +++ b/drivers/staging/media/rkvdec/rkvdec-h264.c
> @@ -1175,14 +1175,15 @@ static int rkvdec_h264_run(struct rkvdec_ctx *ctx)
>  
>  	schedule_delayed_work(&rkvdec->watchdog_work, msecs_to_jiffies(2000));
>  
> -	writel(0, rkvdec->regs + RKVDEC_REG_STRMD_ERR_EN);
> -	writel(0, rkvdec->regs + RKVDEC_REG_H264_ERR_E);
> +	writel(0xffffffff, rkvdec->regs + RKVDEC_REG_STRMD_ERR_EN);
> +	writel(0xffffffff, rkvdec->regs + RKVDEC_REG_H264_ERR_E);
>  	writel(1, rkvdec->regs + RKVDEC_REG_PREF_LUMA_CACHE_COMMAND);
>  	writel(1, rkvdec->regs + RKVDEC_REG_PREF_CHR_CACHE_COMMAND);
>  
>  	/* Start decoding! */
>  	writel(RKVDEC_INTERRUPT_DEC_E | RKVDEC_CONFIG_DEC_CLK_GATE_E |
> -	       RKVDEC_TIMEOUT_E | RKVDEC_BUF_EMPTY_E,
> +	       RKVDEC_TIMEOUT_E | RKVDEC_BUF_EMPTY_E |
> +	       RKVDEC_H264ORVP9_ERR_MODE,
>  	       rkvdec->regs + RKVDEC_REG_INTERRUPT);
>  
>  	return 0;
> @@ -1196,10 +1197,26 @@ static int rkvdec_h264_try_ctrl(struct rkvdec_ctx *ctx, struct v4l2_ctrl *ctrl)
>  	return 0;
>  }
>  
> +static int rkvdec_h264_check_error_info(struct rkvdec_ctx *ctx)
> +{
> +	struct rkvdec_dev *rkvdec = ctx->dev;
> +	int err;
> +
> +	err = readl(rkvdec->regs + RKVDEC_REG_H264_ERRINFO_NUM);
> +	if (err & RKVDEC_STRMD_DECT_ERR_FLAG) {
> +		pr_debug("Decoded picture have %i/%i slices with errors.\n",
> +			 RKVDEC_ERR_PKT_NUM(err), RKVDEC_SLICEDEC_NUM(err));
> +		return VB2_BUF_STATE_ERROR;
> +	}
> +
> +	return VB2_BUF_STATE_DONE;
> +}
> +
>  const struct rkvdec_coded_fmt_ops rkvdec_h264_fmt_ops = {
>  	.adjust_fmt = rkvdec_h264_adjust_fmt,
>  	.start = rkvdec_h264_start,
>  	.stop = rkvdec_h264_stop,
>  	.run = rkvdec_h264_run,
>  	.try_ctrl = rkvdec_h264_try_ctrl,
> +	.check_error_info = rkvdec_h264_check_error_info,
>  };

Actually I'm not sure I fully understand what you are expecting the
userspace to do with the information that there was an (HW!) error,
which might or might not be bitstrean related. Resending the
corrupted(?) frame until the HW fully hangs?
As the interrupt reports an HW error it should (at least also) be
handled driver-side and the HW is known not to be able to fully reset
itself in case of an error.
I think this will make behavior worse than it is now (for real-life
users) where errors are eventually just ignored.

Alex

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

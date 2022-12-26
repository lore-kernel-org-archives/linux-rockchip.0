Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9CA7DC4167B
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Dec 2022 21:33:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A97VthRH0jqxCRXmw72HfI5HSoDuMPCvpowfIDkOXPc=; b=F7lFFI/D+RoW+W
	RL4YrSgMSu96+/fud1ZazGrg72Eqgq6Td0l4HW6KaQt9uaVSaXDCY2rAiLBIAbwnn10col4jGm/KT
	wBQR45rnq3vF2Q1JuhT6NQnGuvcQbT7VIhuAj1NRMbh5q9qcUUS/rnCjcWzpwt5AT9jta+LlVLRUs
	YUMMnbTEjWmf37oCJb1Ofg/wA2CoYQl19R+Q1+8+i07aamum/yhZdRPrTlUbG4NGW2w9A7iV/z8ex
	6dCDt+436NlN2UmAhCJY9o2kSzTDw8XRFfyfmWDlG9NcpSxIvIr44DZB67xEaGJ9TklbEjoaYFo87
	7FJpJeoMBIHRy4sE3iGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9v5w-007X5Y-EW; Mon, 26 Dec 2022 21:33:16 +0000
Received: from mail-ot1-x32a.google.com ([2607:f8b0:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9v5t-007X4A-RS
	for linux-rockchip@lists.infradead.org; Mon, 26 Dec 2022 21:33:15 +0000
Received: by mail-ot1-x32a.google.com with SMTP id r2-20020a9d7cc2000000b006718a7f7fbaso7231199otn.2
        for <linux-rockchip@lists.infradead.org>; Mon, 26 Dec 2022 13:33:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=WPYczn0YGxyfNylm4RLYqULvGhb7tE5TBnYQ9n6+TQ4=;
        b=AksfF9rvGEGSGLbDaaP6t5xxNTpfhEGpVd3JMBSIRegbAz/dfcVugjaH2mjpHCpZ2i
         9w7FouGC76y4iCb26O4IHP0MfsorGXNYHVbAcPz7spQ3tdOZjpUWMWfNbjHaR6cNDTr2
         SCJtmr1RMUwrTcxHwq7/h1dpd7IV+K5ej3d5lxF1EYatDtcPrPcauzxLHX/FkYXNNo2R
         1UACmCr90iFk2SV6A2cQivaLkcYldkvBD34FOsweQzB013L5S5ytJsytmreV0mra4CJD
         aKklfo53h/HNjFNBGGrjhvvlqunfRk+BLrXAHW7j/UtB7TVy3xdWevKtIxdJLvBHQPdC
         nYEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WPYczn0YGxyfNylm4RLYqULvGhb7tE5TBnYQ9n6+TQ4=;
        b=EfLnFFKAldyiN8oqKEZptiC6AS7FDse2UkITRHdYpD/JE8gZ6osRqo41jVBpnsgn/i
         teWmKeuQT1TIFRM5/b3/ONJz+jv+ijq+7mZwQuKIbzQYq4XcMzoITTKkXHDSsnl9OgvO
         4R8H7vnCXN1ZrxS4EbVv03G9EBo5w1JDEbJ3tnSvQpS0M6svTdmxaBJliXGfVeIacZuQ
         qUrwIJTn26TVe8K4YHrxPNJsMMgG+9jN3AudoD1bDVpI48/Xpxr9U/Kpxe06bd6UaW6N
         jT984gu+hcWNnlyxuXWPZNrFoYEnDD4SYIADVaRhIabsVoPiMFkDfl5QSs3d5k2r5jzK
         r/Cw==
X-Gm-Message-State: AFqh2koktTrWUCmghI2zrciVwVeb7Jy2WRPQIQW1/EJ77ZzLwMarYoxF
	WMbH5rMQ1GOHdJccG+jvGWRFFPKreUBTHzjd
X-Google-Smtp-Source: AMrXdXtbaYC6Pk3YNeTADhvjliJr+F/irr0Zz4Tu6hOtJpg+1rzAw3f3gGvqqvdT8BmFU1k7BUXTJA==
X-Received: by 2002:a05:6830:1b66:b0:670:51ea:f267 with SMTP id d6-20020a0568301b6600b0067051eaf267mr12068785ote.37.1672090392387;
        Mon, 26 Dec 2022 13:33:12 -0800 (PST)
Received: from eze-laptop ([190.11.62.130])
        by smtp.gmail.com with ESMTPSA id bi15-20020a056830378f00b00683e80b5ca7sm1627159otb.38.2022.12.26.13.33.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Dec 2022 13:33:11 -0800 (PST)
Date: Mon, 26 Dec 2022 18:33:06 -0300
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	kernel@collabora.com, linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/4] media: rkvdec: Re-enable H.264 error detection
Message-ID: <Y6oTEkEwuGISwr+z@eze-laptop>
References: <20221223193807.914935-1-nicolas.dufresne@collabora.com>
 <20221223193807.914935-4-nicolas.dufresne@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221223193807.914935-4-nicolas.dufresne@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221226_133313_915347_81EA38BB 
X-CRM114-Status: GOOD (  25.51  )
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

Hi Nicolas,

I'm still unsure about this patchset.
It sounds like a good approach and a nice
improvement, but I want to make sure I think through it.

Meanwhile, a small comment...

On Fri, Dec 23, 2022 at 02:38:05PM -0500, Nicolas Dufresne wrote:
> This re-enable H.264 error detection, but using the other error mode.
> In that mode, the decoder will skip over the error macro-block or
> slices and complete the decoding. As a side effect, the error status
> is not set in the interrupt status register, and instead errors are
> detected per format. Using this mode workaround the issue that the
> HW get stuck in error state, and allow reporting that some corruption
> may be present in the buffer to userland.
> 
> Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
> ---
>  drivers/staging/media/rkvdec/rkvdec-h264.c | 23 +++++++++++++++++++---
>  1 file changed, 20 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/media/rkvdec/rkvdec-h264.c b/drivers/staging/media/rkvdec/rkvdec-h264.c
> index 4fc167b42cf0c..dfe3e235f099a 100644
> --- a/drivers/staging/media/rkvdec/rkvdec-h264.c
> +++ b/drivers/staging/media/rkvdec/rkvdec-h264.c
> @@ -1162,14 +1162,15 @@ static int rkvdec_h264_run(struct rkvdec_ctx *ctx)
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
> @@ -1183,10 +1184,26 @@ static int rkvdec_h264_try_ctrl(struct rkvdec_ctx *ctx, struct v4l2_ctrl *ctrl)
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

... still uses pr_debug. I would change it so it uses v4l2_dbg,
and can be controlled using the same debug parameter
as you use in patch 4/4.

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
> -- 
> 2.38.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

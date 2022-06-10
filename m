Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C17EC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Jun 2022 15:01:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5cIMFz05hX3ybkUKMZ4sXwUA7uH6FPmUd8WDoH9Nnzw=; b=EJKVMpiQTRUcHt
	8/Dqu0ZPPXG/mGHDnqlBMfiGGNYdzsENKwklODmSiA9cqqkoHB50HFkefagHkE0cp0i8mPztyDlKn
	AIyDrnrS4dHZnDy4Mdjo9W19CahQrbzwiT27orY2F+kFHSkDjT7f4dAs3y9VwJaYmvU7XOrK8NF2e
	ZC50sofY4B/az+utK8Cky2CT0B4/25jEfFlHB5RZPhJWAvzBeh9ufs0yS4fFI6Nq2PB4B6t9/4Hql
	XavckJvRH5wPfCqlYvC0Hb8iHX7BmNtHC1ofoT7TlhH1+6hzlqPDeFY0CklKSrf/f6CHVrGtfoV5L
	Cjtr3fXK9dFf2kICzLYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzg8W-008gZC-OD; Fri, 10 Jun 2022 15:01:20 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzg8U-008gXs-73
	for linux-rockchip@lists.infradead.org; Fri, 10 Jun 2022 15:01:19 +0000
Received: by mail-ed1-x52b.google.com with SMTP id g7so1363398eda.3
        for <linux-rockchip@lists.infradead.org>; Fri, 10 Jun 2022 08:01:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=OggQGH3JFL5ahsTo7JoWuxdxGSf5+8oOFLpQy3dNZQ8=;
        b=7lpFSL12bsBNaRh7q0pTG9aeYANeTQiHYeDDBIbKVvHfNiupsRv6sSyeTL1ED3TRTm
         fD4DScMlcz1E0oO4sOKKOm2UnK/j/Q07MWRzG5WqJGe78trRMEXD3IlGiReRdVDRgY+Q
         q88onBuV8uBffs7Q2Undhja9z7r58hmz1Iam4zYH/x8Wpw9c7QNW9Gyo5bk/SYnrXJYk
         1hhc3d1yXfTKi9nhtn6o1yiDg1LHyEc0wZ9Ev/nkONRf/W3j3nCwJ5JQX4DZsd1LWoWC
         hTfs0Og5+uHgmKkdd6RhpiS5s6ptg5vZbBLpZw5WczvJnlMUN6ZzOE+X+SueGBJiLkAy
         pJvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=OggQGH3JFL5ahsTo7JoWuxdxGSf5+8oOFLpQy3dNZQ8=;
        b=ku9FC5oDEAn/nNx+suyzSwk8eqyJXeNIhuMeCj9tDry+pckmpmCFXSZmSND9D5FmoP
         pA9YF1iTObA64fgBat8oMjkFHvfg1h9udrmoZJNhS2oZH8v753il62wLWBqP/2zJ2i3V
         qq5Nr+eXu7uWXt81A6yo7jf+2io46SbBjnver2BEMAtwskIZoAkpZUsQiyvy8ix1fJ4Q
         9MQbi23jp4FvdZj0lc1EgeiNh2FS5GI72mrgCwJrpRsLyYSWzVLmTkg+I+eytaPHuaSD
         ECT8bWzZgeyhK4UO7L6pcyTA8AAsSd76LV4mtPZy5efdxSJEDWPKpobOdPRimhYIRyVR
         /Ehg==
X-Gm-Message-State: AOAM533XsBLfTAlam/ocvA+waz3Epkc0v/H5yYxKJ+cGyUyppW/GDDOu
	a1mbGVty0feSO4GBj9/dJT7Ds1FS/8cp3A2Uq7eJXqpD2TXpww==
X-Google-Smtp-Source: ABdhPJyHMm+/l9sH3f1xDzionQtAY8B4EnWdmrPlKZ1BS7nTmX/iJBt4fOyzp+FvReB5TwqwrUlmgtmbusNNM3xIHG0=
X-Received: by 2002:aa7:d14c:0:b0:42d:bbab:43d6 with SMTP id
 r12-20020aa7d14c000000b0042dbbab43d6mr52168093edo.15.1654873273595; Fri, 10
 Jun 2022 08:01:13 -0700 (PDT)
MIME-Version: 1.0
References: <20220610125215.240539-1-nicolas.dufresne@collabora.com> <20220610125215.240539-5-nicolas.dufresne@collabora.com>
In-Reply-To: <20220610125215.240539-5-nicolas.dufresne@collabora.com>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Fri, 10 Jun 2022 12:01:02 -0300
Message-ID: <CAAEAJfAdPt59oCi4wPybwn0a4zHq_3x66L5mRSQ54yQezz+ZZA@mail.gmail.com>
Subject: Re: [PATCH v1 4/5] media: rkvdec: Re-enable H.264 error detection
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: linux-media <linux-media@vger.kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Collabora Kernel ML <kernel@collabora.com>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
	"open list:STAGING SUBSYSTEM" <linux-staging@lists.linux.dev>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_080118_486872_C17F140F 
X-CRM114-Status: GOOD (  24.59  )
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

Great stuff! See below for some ideas how to expose errors.

On Fri, Jun 10, 2022 at 9:52 AM Nicolas Dufresne
<nicolas.dufresne@collabora.com> wrote:
>
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
>         schedule_delayed_work(&rkvdec->watchdog_work, msecs_to_jiffies(2000));
>
> -       writel(0, rkvdec->regs + RKVDEC_REG_STRMD_ERR_EN);
> -       writel(0, rkvdec->regs + RKVDEC_REG_H264_ERR_E);
> +       writel(0xffffffff, rkvdec->regs + RKVDEC_REG_STRMD_ERR_EN);
> +       writel(0xffffffff, rkvdec->regs + RKVDEC_REG_H264_ERR_E);
>         writel(1, rkvdec->regs + RKVDEC_REG_PREF_LUMA_CACHE_COMMAND);
>         writel(1, rkvdec->regs + RKVDEC_REG_PREF_CHR_CACHE_COMMAND);
>
>         /* Start decoding! */
>         writel(RKVDEC_INTERRUPT_DEC_E | RKVDEC_CONFIG_DEC_CLK_GATE_E |
> -              RKVDEC_TIMEOUT_E | RKVDEC_BUF_EMPTY_E,
> +              RKVDEC_TIMEOUT_E | RKVDEC_BUF_EMPTY_E |
> +              RKVDEC_H264ORVP9_ERR_MODE,
>                rkvdec->regs + RKVDEC_REG_INTERRUPT);
>
>         return 0;
> @@ -1196,10 +1197,26 @@ static int rkvdec_h264_try_ctrl(struct rkvdec_ctx *ctx, struct v4l2_ctrl *ctrl)
>         return 0;
>  }
>
> +static int rkvdec_h264_check_error_info(struct rkvdec_ctx *ctx)
> +{
> +       struct rkvdec_dev *rkvdec = ctx->dev;
> +       int err;
> +
> +       err = readl(rkvdec->regs + RKVDEC_REG_H264_ERRINFO_NUM);
> +       if (err & RKVDEC_STRMD_DECT_ERR_FLAG) {
> +               pr_debug("Decoded picture have %i/%i slices with errors.\n",
> +                        RKVDEC_ERR_PKT_NUM(err), RKVDEC_SLICEDEC_NUM(err));

It's more useful friendly to just keep a counter somewhere. In the past,
we've created a user control, which has the advantage of leveraging
an existing mechanism, and already being per-fd.

See:

commit b2d3bef1aa7858b2ae5e0d01adb214121ba00b9f
"media: coda: Add a V4L2 user for control error macroblocks count".

I would drop the pr_debug, or if you think it's really useful for users
and developers, go with v4l2_dbg. In which case, how do you ensure
a corrupted stream won't flood the logs?

Thanks,
Ezequiel


> +               return VB2_BUF_STATE_ERROR;
> +       }
> +
> +       return VB2_BUF_STATE_DONE;
> +}
> +
>  const struct rkvdec_coded_fmt_ops rkvdec_h264_fmt_ops = {
>         .adjust_fmt = rkvdec_h264_adjust_fmt,
>         .start = rkvdec_h264_start,
>         .stop = rkvdec_h264_stop,
>         .run = rkvdec_h264_run,
>         .try_ctrl = rkvdec_h264_try_ctrl,
> +       .check_error_info = rkvdec_h264_check_error_info,
>  };
> --
> 2.36.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

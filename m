Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D190C3DA79
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Dec 2022 04:18:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a2xQ39EyveJovFOg23EfQl024RBawThBIzJHjJTOKSQ=; b=3R5rGlaw3MY653
	oV2tLoKxrz7DQCrq0tDjxddutrkYsmV59+ILUT4SJLiShCqgixqm52X9CBLqmUexr7bLHh4Tq3NNg
	i7EtdhCJXsbV4xnoYG13lgmVsLW0squGdR/Ix1GfGMxLSwJQjjxcuf/KH3teZIkvYVk38LLEKrbHU
	zRHAMED1x+xVQGmyGRoOARB6NmsEqFUxmAAKQ49crE63CaRtWPNLvIjnn42UB3klE5kI5EF8i1JTE
	zNZybob8/pZSkNL44krjxdlyinpZh7mWABFLfKFP4H2nriZ605TJKSN1nZMFUvtrPWH3Hf1J+VDPv
	voqQKWnMRM2caX4noiyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9evz-001aoW-Bi; Mon, 26 Dec 2022 04:17:55 +0000
Received: from mail-vs1-xe33.google.com ([2607:f8b0:4864:20::e33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9evv-001amV-UY
	for linux-rockchip@lists.infradead.org; Mon, 26 Dec 2022 04:17:53 +0000
Received: by mail-vs1-xe33.google.com with SMTP id b125so2799793vsc.13
        for <linux-rockchip@lists.infradead.org>; Sun, 25 Dec 2022 20:17:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ixVfnoBjYbfOKMbrMo78iOagSqVmsOEMtkWXnl7+1Mg=;
        b=YH85DUnZg6aBqH+TGUu5oaDCR6VI6rAKJK+xV/01pTrNDXgjGYawcgKy8hTGpZHF43
         2HRXmwgJItve15LH5T8JZzlJPByTHsOobI/5KjiqnB05YTnuHiK1sZjPWv8Vu92EWBOA
         vMjWKYtB2zdN2kGCLrXlh/HcSONCSBn5POY9E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ixVfnoBjYbfOKMbrMo78iOagSqVmsOEMtkWXnl7+1Mg=;
        b=DKs0bN78y80dWzcZ1GEoPEQ7PXCAvi5RAiEPfScq9/FBsgBOWAdh5dRZFXNOgfAiSc
         18OoTDmSFirYzq8sUb/kbC7A/0SP9TU7qwnc9anMe5hWUCCCZKhMd+6OheKkePUKuuD9
         AyU7/H7k7EHuIc5iPYLhLoux776kyWEg0CoOjWuliS+f5UeVgKP8tgAWje0TDda3eLlD
         /l3Gnyyb9ZOxcMbTTfKjlap1v3TabVYgXIixspy2yF4TnLsiulEpuOoYY5gkrvH7nDEd
         dHNzZb4RLyoZqqXRQcxKzABZYfVaRf1Kkz2fG3DmN3o2yXt7DJ/cy1kTFReAScQgVnLS
         JjiA==
X-Gm-Message-State: AFqh2krVJhhxMkTV6bs3pz+4c6WlTIKt+W7hdpWHDj9U/OJeKPGtPJa3
	zSXssP0Tq25d9m6GmZ8Ufnatyup8KYtbAkm2U2YsNQ==
X-Google-Smtp-Source: AMrXdXtOw254JHHtoeUJ7IvvFyAdlF2AawF+OldnipmmrsBWfhK9LpuaPV1U6UUtuS66NMf8+N6xMKoEYThVYvFFfug=
X-Received: by 2002:a05:6102:3e06:b0:3b5:fd8:7948 with SMTP id
 j6-20020a0561023e0600b003b50fd87948mr2139717vsv.85.1672028269104; Sun, 25 Dec
 2022 20:17:49 -0800 (PST)
MIME-Version: 1.0
References: <20221223193807.914935-1-nicolas.dufresne@collabora.com> <20221223193807.914935-4-nicolas.dufresne@collabora.com>
In-Reply-To: <20221223193807.914935-4-nicolas.dufresne@collabora.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Mon, 26 Dec 2022 12:17:38 +0800
Message-ID: <CAGXv+5GBhZ4U4y_KGrBdvgmy7odcVvH=ZJEMtsfjPvw4tQUV1A@mail.gmail.com>
Subject: Re: [PATCH v2 3/4] media: rkvdec: Re-enable H.264 error detection
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kernel@collabora.com, 
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221225_201752_062842_32D8305A 
X-CRM114-Status: GOOD (  21.67  )
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

On Sat, Dec 24, 2022 at 3:39 AM Nicolas Dufresne
<nicolas.dufresne@collabora.com> wrote:
>
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
>         schedule_delayed_work(&rkvdec->watchdog_work, msecs_to_jiffies(2000));
>
> -       writel(0, rkvdec->regs + RKVDEC_REG_STRMD_ERR_EN);
> -       writel(0, rkvdec->regs + RKVDEC_REG_H264_ERR_E);
> +       writel(0xffffffff, rkvdec->regs + RKVDEC_REG_STRMD_ERR_EN);
> +       writel(0xffffffff, rkvdec->regs + RKVDEC_REG_H264_ERR_E);

Use RKVDEC_H264_ERR_EN_HIGHBITS() here? Only lower 30 bits are valid.

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
> @@ -1183,10 +1184,26 @@ static int rkvdec_h264_try_ctrl(struct rkvdec_ctx *ctx, struct v4l2_ctrl *ctrl)
>         return 0;
>  }
>
> +static int rkvdec_h264_check_error_info(struct rkvdec_ctx *ctx)
> +{
> +       struct rkvdec_dev *rkvdec = ctx->dev;
> +       int err;

u32?

Otherwise,

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

> +
> +       err = readl(rkvdec->regs + RKVDEC_REG_H264_ERRINFO_NUM);
> +       if (err & RKVDEC_STRMD_DECT_ERR_FLAG) {
> +               pr_debug("Decoded picture have %i/%i slices with errors.\n",
> +                        RKVDEC_ERR_PKT_NUM(err), RKVDEC_SLICEDEC_NUM(err));
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
> 2.38.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

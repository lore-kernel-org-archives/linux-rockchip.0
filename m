Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12249C3DA79
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Dec 2022 22:32:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1XBqZOqtIDBELbtRHxIkeObM6RyYQkaIhwM2ktWjLic=; b=K5dojC0qlBzVdW
	QMc2733iezH+STvkuY7eZN+WbXoF/DlPsEYXTTsJI/2U5gxRT66oMEKGz3kYdKxsE7aORDNeeK0QG
	mQnzG56Brzi2ie9CBvJd/5g0vm0tMwZrkr0uiDarxgBbN15Roic1jEuZQW9B0xbBtqlrrT2F0m7cL
	FrTD5J4KqgGgNmUVIUOoRrYpk8IkR+2zachy2ifLe02u7edeFvO8lEtT8IMi3LRe76Yv8Kwrx69xC
	mkXFSRk4k3TXMe1u8Bs2nCFnOuXtN4gE0UVSX4+Fh6cPIJPZrwBe12dtHOKOdz3De7xAdyLjmSISs
	ZP5RYZnfNlm//EaOV90w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9w1M-007uNT-MZ; Mon, 26 Dec 2022 22:32:36 +0000
Received: from mail-oi1-x22f.google.com ([2607:f8b0:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9w14-007uJN-Sn
	for linux-rockchip@lists.infradead.org; Mon, 26 Dec 2022 22:32:20 +0000
Received: by mail-oi1-x22f.google.com with SMTP id j130so5513695oif.4
        for <linux-rockchip@lists.infradead.org>; Mon, 26 Dec 2022 14:32:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=SlgPi51AK3UbkagNMxnBcy7JswnNpWLtwnb7qSlT+Ss=;
        b=VsKpkv7Y8Nd91YtZ+rh/hVphubdhBeguKnOXCxpDNKYcITVwP2SHNvbEYzOsFJ8e32
         SW692J580UPv1eqhmIE/W6SrxqV+Y2j6q4alsW9HwhdWixvx7EU+xywKKynQxNNY/Tdf
         yBIb0WJ1ahPKAv2gI/WaCeX40QR0WuyA7UYny3/pROwh6uorUw5ni04hVqiK0wn2OgWv
         hMvnPr+LWCktZOTB/LvYk2RZNT5iE6SMqayUKRBwvkTmsWXOah1Q1x14bKLG5Bgop5af
         53IgX8e2olPw5iwQT2CpbU7dlxhbd1924e5iZ394SV4Lu//oPJ7AaFhQ8lHPvqjpGhfN
         HHSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SlgPi51AK3UbkagNMxnBcy7JswnNpWLtwnb7qSlT+Ss=;
        b=oPikalx96HPDmTjYXS690iPdXjXAT4orW3OZIMQbwx1q5fBpTmpYIATkAM9/AsjGSy
         XqHH2qZEL2+1it3hHYMD5cF9MH+AyjEjKcEVGCFQIN1veYcv4ZQC+EIXBA7ATQ4rj+3G
         eeR0K0iamgFJ4LLyAASsSBOAezky6JvhTBges3uYhgcoma92rySoNCOWEHrK+tq6rUoc
         dK8P77+N+3C4Pwr79Xj1IrmcI7bKgLkWh7yN8PDwd6GTMkkz2tRHrLLFUDeLPbzKrDnR
         3AWq9XFCgDQHN3UDhhdq61D8zKeRb6PkYI1HNZyGRBM+Rk5dQGReKSyN8wEjQvuS00P4
         Us7A==
X-Gm-Message-State: AFqh2kqApBv6+f6T8i3qAXBoLjgbMp3tJjATww5h64IRkm36wMmOrXGu
	8MmACoIhi0mjrUD6nVAB4Ep5ZA==
X-Google-Smtp-Source: AMrXdXvKFv0PBPgJoy97OX14x+yn5l3veyUdFhKa+mI48Y6d5h8542VaLJHCRysQI8B+4rxM2W9vlw==
X-Received: by 2002:a05:6808:1ab3:b0:35e:1bba:db4e with SMTP id bm51-20020a0568081ab300b0035e1bbadb4emr7803746oib.21.1672093936807;
        Mon, 26 Dec 2022 14:32:16 -0800 (PST)
Received: from eze-laptop ([190.11.62.130])
        by smtp.gmail.com with ESMTPSA id g31-20020a9d12a2000000b00661ad8741b4sm5886396otg.24.2022.12.26.14.32.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Dec 2022 14:32:15 -0800 (PST)
Date: Mon, 26 Dec 2022 19:32:10 -0300
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	kernel@collabora.com, linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 4/4] rkvdec: Improve error handling
Message-ID: <Y6og6ojA3a/lpAL/@eze-laptop>
References: <20221223193807.914935-1-nicolas.dufresne@collabora.com>
 <20221223193807.914935-5-nicolas.dufresne@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221223193807.914935-5-nicolas.dufresne@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221226_143219_341966_90322043 
X-CRM114-Status: GOOD (  28.83  )
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

Thanks a lot for the patchset. I have just some style feedback.

On Fri, Dec 23, 2022 at 02:38:06PM -0500, Nicolas Dufresne wrote:
> There are two ways decoding errors can occure. In one case, the ready
> status is not set and nothing has been written into the destination,
> while in the other case, the buffer is written but may contain a
> certain amount of errors. In order to differentiate these, we set
> the payload for the first case to 0.
> 
> Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
> ---
>  drivers/staging/media/rkvdec/rkvdec.c | 31 +++++++++++++++++++++++----
>  1 file changed, 27 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
> index 7e76f8b728854..11e2bbb20aea1 100644
> --- a/drivers/staging/media/rkvdec/rkvdec.c
> +++ b/drivers/staging/media/rkvdec/rkvdec.c
> @@ -27,6 +27,9 @@
>  #include "rkvdec.h"
>  #include "rkvdec-regs.h"
>  
> +static int debug;
> +module_param(debug, int, 0644);
> +
>  static int rkvdec_try_ctrl(struct v4l2_ctrl *ctrl)
>  {
>  	struct rkvdec_ctx *ctx = container_of(ctrl->handler, struct rkvdec_ctx, ctrl_hdl);
> @@ -954,14 +957,34 @@ static irqreturn_t rkvdec_irq_handler(int irq, void *priv)
>  	enum vb2_buffer_state state;
>  	u32 status;
>  
> +	ctx = v4l2_m2m_get_curr_priv(rkvdec->m2m_dev);
>  	status = readl(rkvdec->regs + RKVDEC_REG_INTERRUPT);

Maybe group the I/O together, i.e. the writel would
be right after this readl:

    writel(0, rkvdec->regs + RKVDEC_REG_INTERRUPT);

> -	state = (status & RKVDEC_RDY_STA) ?
> -		VB2_BUF_STATE_DONE : VB2_BUF_STATE_ERROR;
> +
> +	if (!(status & RKVDEC_RDY_STA)) {
> +		struct vb2_v4l2_buffer *dst_buf = NULL;
> +
> +		if (status & RKVDEC_TIMEOUT_STA)
> +			v4l2_dbg(debug, 1, &rkvdec->v4l2_dev,
> +				 "Decoder stopped due to an internal timeout.");
> +		else
> +			v4l2_dbg(debug, 1, &rkvdec->v4l2_dev,
> +				 "Decoder stopped due to an internal error.");

Unless you really want to ensure this string is greppable,
you can do something like:

v4l2_dbg(debug, 1, &rkvdec->v4l2_dev, "Decoder stopped due to an internal %s.", .... ? "error" : "timeout");

> +
> +		/*
> +		 * When this happens, the buffer is left unmodified. As it
> +		 * contains no meaningful data we mark is as empty.
> +		 */
> +		dst_buf = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
> +		vb2_set_plane_payload(&dst_buf->vb2_buf, 0, 0);

Perhaps we can avoid this vb2_set_plane_payload(&dst_buf->vb2_buf, 0, 0);
if we instead set the payload in rkvdec_job_finish_no_pm().
It would change the behavior, as we would be setting payload
only when state is _DONE, so maybe that's not what you want.

> +		state = VB2_BUF_STATE_ERROR;
> +	} else {
> +		state = VB2_BUF_STATE_DONE;
> +	}
>  
>  	writel(0, rkvdec->regs + RKVDEC_REG_INTERRUPT);
> -	ctx = v4l2_m2m_get_curr_priv(rkvdec->m2m_dev);
>  
> -	if (ctx->coded_fmt_desc->ops->check_error_info)
> +	if (ctx->coded_fmt_desc->ops->check_error_info &&
> +	    state == VB2_BUF_STATE_DONE)
>  		state = ctx->coded_fmt_desc->ops->check_error_info(ctx);
>  

How about this:

static irqreturn_t rkvdec_irq_handler(int irq, void *priv)
{
    struct rkvdec_dev *rkvdec = priv;
    struct rkvdec_ctx *ctx;
    enum vb2_buffer_state state = VB2_BUF_STATE_DONE;
    u32 status;

    ctx = v4l2_m2m_get_curr_priv(rkvdec->m2m_dev);
    status = readl(rkvdec->regs + RKVDEC_REG_INTERRUPT);
    writel(0, rkvdec->regs + RKVDEC_REG_INTERRUPT);

    if (!(status & RKVDEC_RDY_STA)) {
        ...
        state = VB2_BUF_STATE_ERROR;
    } else {
        if (ctx->coded_fmt_desc->ops->check_error_info &&
            ctx->coded_fmt_desc->ops->check_error_info(ctx))
            state = VB2_BUF_STATE_ERROR;
    }

    if (cancel_delayed_work(&rkvdec->watchdog_work))
        rkvdec_job_finish(ctx, state);

    return IRQ_HANDLED;
}

So it's clear which paths lead to VB2_BUF_STATE_ERROR.

Thanks!
Ezequiel

>  	if (cancel_delayed_work(&rkvdec->watchdog_work))
> -- 
> 2.38.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50D97C3DA79
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Dec 2022 22:16:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iKgox5dnKhWnWZyYC+vpWbCGozSyA970C3/wF6kx6jM=; b=q6KAZL4MShFZpH
	Emg5k7K0HVdD6697KaUp3fIsPSCMF7z9QlmP0DI1CKqHEKrPJn9Pu4TeAT2P8Pvmxmdmzv8LQvWeh
	d98TY25fooYMHJ7c4pCFCdfHLGY0mGLnYpkKga23rHIFTy6ORQoDVqk6PVKQh5UmeHfY9AiX/BFB3
	G5gdgoeSiyMQid/o524e5TIT2+vp6Eflz1sG+8ykhXAemOl7cb0KmTVz1anmRCr5Wc9Ef18JL0k/o
	aY2SiZC29ZQwQqSX2zGjSoQncvmdCzdf/wX3agPMrTfMHCQKq/6ToT/oicS8tKrZqEKJgPr4lWt4i
	k8eiXoZ7RbknNnfobjTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9vlB-007oYy-1R; Mon, 26 Dec 2022 22:15:53 +0000
Received: from mail-oo1-xc2b.google.com ([2607:f8b0:4864:20::c2b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9vl7-007oWb-I2
	for linux-rockchip@lists.infradead.org; Mon, 26 Dec 2022 22:15:51 +0000
Received: by mail-oo1-xc2b.google.com with SMTP id e22-20020a4a5516000000b004a3d3028bafso1969483oob.3
        for <linux-rockchip@lists.infradead.org>; Mon, 26 Dec 2022 14:15:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=XUckakhK2YDfWvKB+vPGRiFS4B95mA3CWPNKe4m32vE=;
        b=mfqi0fGyCtEcfB2h/+lOc7iZKAzfGRM38qDX4ixBx6F+WRrpMGqbVFFDKlrbhU/n43
         NLCfgWYoW6Qgfzk2FEQ5k685jM2noRs/BsYV7FvZ+wBZQUlgO+3dI6lfc1QlPVYbTqsF
         CS2Vt3u0VNjHymZwJUKr3B3h5khXO90bTSLjjSiG+Kk+CMdH/FWEk/0zL3Gn1rDTrEsS
         7cOTgNtjJumF1jQ7Fjnno9E15UP3FXmhjqoYqOagnTv1f6wB1eGmMUR1Ikak+ohiCnpe
         HlxnRQPbIGXd82AdCL7A1dSg3l603RFIpwz/h2qseFzJbZ+FDy0O3TCnlRQzOJlVDHA8
         vcQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XUckakhK2YDfWvKB+vPGRiFS4B95mA3CWPNKe4m32vE=;
        b=0sVreeCBrXpyjJFo7xbAleSlKxuSyu6xbynsTnQDKsoP/gNXqR6nFzskkFTmGpx8aY
         okK8Cz7BeIoUxNYNf98jzGy5cxa5hhvGR/gLQ9AgGRkq+Nu+DGLrQEgk+KUT8p3yFg/E
         HtN4+y2a9xhzhcjxJyu2Mga4VMR8qVR7h/Fs6oESp9MwBLA8axa5AXk7PSpt6aCOpKRO
         0432VljzDxTHb08w8mYWCitD5jSNR/YdgYHYpe+LoJZIRpVuKGyYNhD/i7c/oHmrhYQS
         cuWcWL3a2/APGnmOZUXDK4+N3wSAGab03rvyaFFy+VBbM70hE+GTLWbkLzpEt6CD8pON
         XGDA==
X-Gm-Message-State: AFqh2konKurVG4YXPRt6qmmWPfoc9H4/UMw8+IJr/RmbT6a6Vko8g5pJ
	m1eV4fFzeAOE30N3IEdxijgxsw==
X-Google-Smtp-Source: AMrXdXvn3BXZiNw7vAUdU4u5D7tsVvCvwRwrfcrB5MW9EP+EYLbjcbtJMMSMuvpr0Oy+Z35K7WzUOQ==
X-Received: by 2002:a4a:98f1:0:b0:4a5:e527:77f8 with SMTP id b46-20020a4a98f1000000b004a5e52777f8mr8283003ooj.3.1672092948116;
        Mon, 26 Dec 2022 14:15:48 -0800 (PST)
Received: from eze-laptop ([190.11.62.130])
        by smtp.gmail.com with ESMTPSA id y12-20020a4a9c0c000000b004a09df5a1dbsm4776600ooj.8.2022.12.26.14.15.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Dec 2022 14:15:47 -0800 (PST)
Date: Mon, 26 Dec 2022 19:15:41 -0300
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	kernel@collabora.com, linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/4] media: rkvdec: Add an ops to check for decode
 errors
Message-ID: <Y6odDbRNY7g+eKag@eze-laptop>
References: <20221223193807.914935-1-nicolas.dufresne@collabora.com>
 <20221223193807.914935-2-nicolas.dufresne@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221223193807.914935-2-nicolas.dufresne@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221226_141549_631714_375768BB 
X-CRM114-Status: GOOD (  23.10  )
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

Thanks for the patch.

On Fri, Dec 23, 2022 at 02:38:03PM -0500, Nicolas Dufresne wrote:
> This optional internal ops allow each codec to do their own
> error status checking. The presence of an error is reported
> using the ERROR buffer state. This patch have no functional
> changes.
> 
> Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
> ---
>  drivers/staging/media/rkvdec/rkvdec.c | 10 ++++++----
>  drivers/staging/media/rkvdec/rkvdec.h |  2 ++
>  2 files changed, 8 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
> index 7bab7586918c1..7e76f8b728854 100644
> --- a/drivers/staging/media/rkvdec/rkvdec.c
> +++ b/drivers/staging/media/rkvdec/rkvdec.c
> @@ -950,6 +950,7 @@ static void rkvdec_v4l2_cleanup(struct rkvdec_dev *rkvdec)
>  static irqreturn_t rkvdec_irq_handler(int irq, void *priv)
>  {
>  	struct rkvdec_dev *rkvdec = priv;
> +	struct rkvdec_ctx *ctx;
>  	enum vb2_buffer_state state;
>  	u32 status;
>  
> @@ -958,12 +959,13 @@ static irqreturn_t rkvdec_irq_handler(int irq, void *priv)
>  		VB2_BUF_STATE_DONE : VB2_BUF_STATE_ERROR;
>  
>  	writel(0, rkvdec->regs + RKVDEC_REG_INTERRUPT);
> -	if (cancel_delayed_work(&rkvdec->watchdog_work)) {
> -		struct rkvdec_ctx *ctx;
> +	ctx = v4l2_m2m_get_curr_priv(rkvdec->m2m_dev);
>  
> -		ctx = v4l2_m2m_get_curr_priv(rkvdec->m2m_dev);
> +	if (ctx->coded_fmt_desc->ops->check_error_info)
> +		state = ctx->coded_fmt_desc->ops->check_error_info(ctx);
> +
> +	if (cancel_delayed_work(&rkvdec->watchdog_work))
>  		rkvdec_job_finish(ctx, state);
> -	}
>  
>  	return IRQ_HANDLED;
>  }
> diff --git a/drivers/staging/media/rkvdec/rkvdec.h b/drivers/staging/media/rkvdec/rkvdec.h
> index 633335ebb9c49..4ae8e6c6b03c9 100644
> --- a/drivers/staging/media/rkvdec/rkvdec.h
> +++ b/drivers/staging/media/rkvdec/rkvdec.h
> @@ -73,6 +73,8 @@ struct rkvdec_coded_fmt_ops {
>  		     struct vb2_v4l2_buffer *dst_buf,
>  		     enum vb2_buffer_state result);
>  	int (*try_ctrl)(struct rkvdec_ctx *ctx, struct v4l2_ctrl *ctrl);
> +	/* called from IRQ handler */
> +	int (*check_error_info)(struct rkvdec_ctx *ctx);

I don't think it's a good idea to mix the return of this internal API
with enum vb2_buffer_state.

Please make the return type of this function a boolean or an integer
type that is decoupled from the VB2 buffer state.

Thanks!
Ezequiel

>  };
>  
>  struct rkvdec_coded_fmt_desc {
> -- 
> 2.38.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

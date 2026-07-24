Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC786C531F9
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Jul 2026 11:38:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fp1Pw/wT0Z70I9UvcnHhO66cKth5IH+gmlSS0i8IjsA=; b=iCeTtKS6iTLmH5
	+zCqwMshAG7NPMnke2pRc0wnyc0fF5tg9TAU7z8AiquS3hNgXAePIN1Q/wfDr0x7UVutZWmh0UIUj
	Es/+53yNqV8mS5kKeNufo0dxrkimw3hpYq4KTnX5YuN8N5kIYfpYXmXRphPn29NwTfDtI4WExAVge
	h6I1S8n4TiHjWI9XBLXboEl49BwIRhgnW7SeIZddcIz/nEsNF4YgjnYqLZYbJVdXhXtKsIKZUd555
	7T8lFSlZSYfmVnl4FUbLy+H0ebag5CCC04g6xeNyE2xrIGxjx2AXEHo4YUIHl9Z3uatFpLS4sUbmj
	a/p6b441b9gMqCC+/1Bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnEEK-0000000GJ5A-2zax;
	Fri, 24 Jul 2026 11:38:16 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnEEH-0000000GJ4H-3Bq6;
	Fri, 24 Jul 2026 11:38:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 1797920203A;
	Fri, 24 Jul 2026 13:38:09 +0200 (CEST)
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1wnEEC-0013Rp-3B;
	Fri, 24 Jul 2026 13:38:08 +0200
Received: from pza by lupine with local (Exim 4.98.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1wnEEC-000000007wH-3hMI;
	Fri, 24 Jul 2026 13:38:08 +0200
Message-ID: <193a0d2b4f7c33163cb6aee56ceee0bf5cb6c11c.camel@pengutronix.de>
Subject: Re: [PATCH] media: hantro: release runtime resources when
 device_run fails
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Tharit Tangkijwanichakul <tharitt97@gmail.com>, Nicolas Dufresne	
 <nicolas.dufresne@collabora.com>, Benjamin Gaignard	
 <benjamin.gaignard@collabora.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>,  Heiko Stuebner	 <heiko@sntech.de>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Hans Verkuil	
 <hverkuil@kernel.org>, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel-mentees@lists.linux.dev,
 	skhan@linuxfoundation.org, me@brighamcampbell.com, jkoolstra@xs4all.nl
Date: Fri, 24 Jul 2026 13:38:08 +0200
In-Reply-To: <20260724111548.2109-1-tharitt97@gmail.com>
References: <20260724111548.2109-1-tharitt97@gmail.com>
User-Agent: Evolution 3.56.2-0+deb13u1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260724_043813_955420_205A7F1D 
X-CRM114-Status: GOOD (  20.79  )
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

On Fr, 2026-07-24 at 11:15 +0000, Tharit Tangkijwanichakul wrote:
> device_run() acquires a runtime PM reference and enables the VPU clocks
> before invoking the codec-specific run callback.
> 
> If clk_bulk_enable() fails, the runtime PM reference is left held. If
> the codec-specific run callback fails, both the enabled clocks and the
> runtime PM reference are left held.
> 
> Add separate error paths to release the resources acquired by
> device_run(). Disable the clocks when the codec run callback fails, and
> drop the runtime PM reference when either clock enabling or the codec
> run callback fails.
> 
> Fixes: 775fec69008d ("media: add Rockchip VPU JPEG encoder driver")
> Signed-off-by: Tharit Tangkijwanichakul <tharitt97@gmail.com>
> ---
> Tested on a Rockchip RK3588 (Rock 5B) board with Fluster:
>   H.264 (JVT-AVC_V1):	     129/135, unchanged
>   MPEG-2 (MPEG2_VIDEO-MAIN): 23/43, unchanged
>   VP8 (VP8-TEST-VECTORS):    61/61, unchanged
> 
>  drivers/media/platform/verisilicon/hantro_drv.c | 11 ++++++++---
>  1 file changed, 8 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/media/platform/verisilicon/hantro_drv.c b/drivers/media/platform/verisilicon/hantro_drv.c
> index 2e81877f640f..9daaf129211d 100644
> --- a/drivers/media/platform/verisilicon/hantro_drv.c
> +++ b/drivers/media/platform/verisilicon/hantro_drv.c
> @@ -170,6 +170,7 @@ void hantro_end_prepare_run(struct hantro_ctx *ctx)
>  static void device_run(void *priv)
>  {
>  	struct hantro_ctx *ctx = priv;
> +	struct hantro_dev *vpu = ctx->dev;
>  	struct vb2_v4l2_buffer *src, *dst;
>  	int ret;
>  
> @@ -178,11 +179,11 @@ static void device_run(void *priv)
>  
>  	ret = pm_runtime_resume_and_get(ctx->dev->dev);
>  	if (ret < 0)
> -		goto err_cancel_job;
> +		goto err_disable_clock;

This doesn't make any sense.

>  	ret = clk_bulk_enable(ctx->dev->variant->num_clocks, ctx->dev->clocks);
>  	if (ret)
> -		goto err_cancel_job;
> +		goto err_pm_put_autosuspend;

This looks fine to me.

>  	v4l2_m2m_buf_copy_metadata(src, dst);

But right below this, you are still letting

	if (ctx->codec_ops->run(ctx))
		goto err_cancel_job;

without disabling the clocks.

>  
> @@ -191,8 +192,12 @@ static void device_run(void *priv)
>  
>  	return;
>  
> +err_disable_clock:
> +	clk_bulk_disable(vpu->variant->num_clocks, ctx->dev->clocks);

You have added vpu = ctx->dev, why not use vpu->clocks as second
parameter?

> +err_pm_put_autosuspend:
> +	pm_runtime_put_autosuspend(vpu->dev);
>  err_cancel_job:
> -	hantro_job_finish_no_pm(ctx->dev, ctx, VB2_BUF_STATE_ERROR);
> +	hantro_job_finish_no_pm(vpu, ctx, VB2_BUF_STATE_ERROR);

Why are you changing ctx->dev to vpu here, but not in the other
function calls in device_run(), e.g. pm_runtime_resume_and_get() and
clk_bulk_enable() above?

regards
Philipp

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

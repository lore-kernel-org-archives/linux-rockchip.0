Return-Path: <SRS0=GXEY=DC=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0250C4727E
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Sep 2020 20:53:23 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 481962086A
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Sep 2020 20:53:23 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="GFrRv4PG";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="AdkVo6Nb"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 481962086A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YrG8+kkR9qDePLeQVjCDwD2g9dCzv3M1iv7IdYB4J4g=; b=GFrRv4PGBJ8qzZlkJdY4AZ1Ag
	bC3meIxJXGD9pK6bplk1NwG21GanXrhh1O+JwDj2sWE3jp23dZJg6qBv78D2rTV0v9GKjHvxv0WSk
	TW0cs7yxYlIaicVeu/BVTYQD3QgLrxaR31vD2xKQ5J9nCTKnKFGRGPkmj1EL3E+Bn10JlS63NItB3
	IapTPEujGzU3QWps91Dr4/Hy2H6WmRvCAcIVxAklTkGCI0NqXyv7ASUMe4xCvzY1YPP0NWgrq0WWX
	jBkWm+jhakOJf9/5cO+ov5eghfSUaFVRiBksFdxe3K7IZMZrgVQEeuj2w5tXZb0SaT9WhNCeS1idi
	3rGBG7p9g==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kLuiU-0000Re-16; Fri, 25 Sep 2020 20:53:18 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kLuiS-0000R3-7F
 for linux-rockchip@lists.infradead.org; Fri, 25 Sep 2020 20:53:17 +0000
Received: by mail-wr1-x444.google.com with SMTP id s12so5221371wrw.11
 for <linux-rockchip@lists.infradead.org>; Fri, 25 Sep 2020 13:53:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=EukrXWtY4xWPgG0jZCMMjIR703TeN7FR8MXaWyNb+cA=;
 b=AdkVo6NbbX6nmBmobAq7CSr5CbBcfGMa76Q1hOEzrcKuLI+sm+/QWpFQt0QMEG2ZGf
 YK59IYdllv6LzIVByTQXnDeI4MpEgTr/lLcw3RNOTCnJUbzi4Ttqr2V20tvm0u/gZmzi
 IdCf52t1tZgFHA9z6X6w4z1NC2Zo3hi4POLnc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=EukrXWtY4xWPgG0jZCMMjIR703TeN7FR8MXaWyNb+cA=;
 b=fXPqHj83+CsYST/ahYcL6Q86jpbFlI+bL029Z8v1RmokLHGK+dtkSlQty1vw3V8g4x
 7hGxvOqfLVy3gMJJ6Jqsciu85QFOrtyqgjQaqjI4UG9hexfj/WzfGGKQEji73cVi/i55
 1tyH3dRPMey62RZV43IaayjJfQrur0SpzTQ+6qX8SbTeEEuHneIf617Hcsa+Pvo/M9Yt
 cXnFEEWecgkdfQTmnfHIjaBMQyss9k+ci+f82wrx7RGqI5WwtpD1+1Wh+SliiEm6S55T
 tKoza4htTGfkeidS6AqLCB25L4Hf0e7zyqAUk6Ar8bot46E5qdof3oxks+NYVgDDnp+l
 2WFA==
X-Gm-Message-State: AOAM533Ku7K/sOcd0G2UCS0C6ac7/nz8zSSSzsHtUykuksPBHEyLOR7L
 0Vm8EQ6SHuCWpSBQXUVnQMBs+g==
X-Google-Smtp-Source: ABdhPJzAYtaPepWxHRMRTqBemT9re93/2msBEqdwUJLCX/30UFGZ0sws6MktmssdGeOBVR3A9OFhKw==
X-Received: by 2002:a5d:5312:: with SMTP id e18mr6630250wrv.95.1601067195053; 
 Fri, 25 Sep 2020 13:53:15 -0700 (PDT)
Received: from chromium.org (216.131.76.34.bc.googleusercontent.com.
 [34.76.131.216])
 by smtp.gmail.com with ESMTPSA id h4sm4812303wrm.54.2020.09.25.13.53.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Sep 2020 13:53:14 -0700 (PDT)
Date: Fri, 25 Sep 2020 20:53:13 +0000
From: Tomasz Figa <tfiga@chromium.org>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [PATCH v3 12/12] media: staging: rkisp1: cap: protect access to
 buf with the spin lock
Message-ID: <20200925205313.GJ3607091@chromium.org>
References: <20200922113402.12442-1-dafna.hirschfeld@collabora.com>
 <20200922113402.12442-13-dafna.hirschfeld@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200922113402.12442-13-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200925_165316_340555_6AF19BFF 
X-CRM114-Status: GOOD (  19.97  )
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

On Tue, Sep 22, 2020 at 01:34:02PM +0200, Dafna Hirschfeld wrote:
> The function 'rkisp1_stream_start' calls 'rkisp1_set_next_buf'
> which access the buffers, so the call should be protected by
> taking the cap->buf.lock.
> After this patch, all locks are reviewed and commented so remove
> the TODO item "review and comment every lock"
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> ---
>  drivers/staging/media/rkisp1/TODO             | 1 -
>  drivers/staging/media/rkisp1/rkisp1-capture.c | 2 ++
>  2 files changed, 2 insertions(+), 1 deletion(-)
> 

Thank you for the patch. Please see my comments inline.

> diff --git a/drivers/staging/media/rkisp1/TODO b/drivers/staging/media/rkisp1/TODO
> index f0c90d1c86a8..9662e9b51c7f 100644
> --- a/drivers/staging/media/rkisp1/TODO
> +++ b/drivers/staging/media/rkisp1/TODO
> @@ -1,6 +1,5 @@
>  * Fix pad format size for statistics and parameters entities.
>  * Fix checkpatch errors.
> -* Review and comment every lock
>  * Handle quantization
>  * streaming paths (mainpath and selfpath) check if the other path is streaming
>  in several places of the code, review this, specially that it doesn't seem it
> diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
> index 012c0825a386..b9e56dab77af 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-capture.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
> @@ -913,6 +913,7 @@ static void rkisp1_stream_start(struct rkisp1_capture *cap)
>  	cap->ops->config(cap);
>  
>  	/* Setup a buffer for the next frame */
> +	spin_lock_irq(&cap->buf.lock);
>  	rkisp1_set_next_buf(cap);
>  	cap->ops->enable(cap);
>  	/* It's safe to config ACTIVE and SHADOW regs for the
> @@ -930,6 +931,7 @@ static void rkisp1_stream_start(struct rkisp1_capture *cap)
>  			     RKISP1_CIF_MI_INIT_SOFT_UPD, RKISP1_CIF_MI_INIT);
>  		rkisp1_set_next_buf(cap);
>  	}
> +	spin_unlock_irq(&cap->buf.lock);
>  	cap->is_streaming = true;

Should the is_streaming flag be protected in some way?

Also, similarly to the other nodes, is the flag actually needed?

Best regards,
Tomasz

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

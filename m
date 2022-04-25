Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BBB0CC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 09:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wBKmO8elrc1qKl7Hq6AB6W55yqLH4QGHKfPoeC1zZGA=; b=QBTqbFlOeFJ6Ws
	1adE89rkJUyfUv22WZlREtSp5Dl4I7U+1XhBE24Vp9m0gWtw4VvCiUlsdk2y4GFLMEgFrTBZB5uDF
	3LEQxLDsYcshEK5DqOVWD/P5zgborKX+nISGetGllAHANguHur6qQLflFLaUg7FMcTBJsquMbRVgf
	wE4TNOuEe0AUmsr30ZwTdda/LIIIJbfbMvhZjVMGSIKMuUV1ELp3SZz/XXmgkYVqHnmcgsrduDjVk
	jQQ0+qqxFsW/3Qr7ZkjoPGzmMh6Vrrz2yZoaODbHjJ93g2UAUUkX1IlRNv0R3QKqBzuh6sHqKOiCL
	tInqx6XsFSmLcBKk6NxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nivAb-008wzC-MK; Mon, 25 Apr 2022 09:38:13 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nivAR-008wxO-FO
 for linux-rockchip@lists.infradead.org; Mon, 25 Apr 2022 09:38:05 +0000
Received: by mail-ed1-x52b.google.com with SMTP id d6so12563653ede.8
 for <linux-rockchip@lists.infradead.org>; Mon, 25 Apr 2022 02:38:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=3gLjXtcN0H7/Zjq9kfG/nCI3G6SCX7sxZ+itfKAG7Jk=;
 b=IqvxxmNjUFX97ZlHNX8rTDP6kspD0tXk6NJscD1t9GNfbpLaDd6j84s3YaA3yEJD9+
 4shjvPfgK30qXgGW50nFKK52mPB42kNKKv9JrCJ92/zmltzJonSE8gHarBLv+SwFD4Id
 iwwGvBB3+lf4zdeZ43uOV/sHJJGlwh1FEeY0c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=3gLjXtcN0H7/Zjq9kfG/nCI3G6SCX7sxZ+itfKAG7Jk=;
 b=W020tYlwMkljAdQoGhiQFpP/gTROBih3ETNrO4BuU1kLUmPVwrIjsFxpTJLIIhG63l
 R4LqZICvGLGIaCMQSfQUZb38DZT2++YU+1Od2YxaXMKWSxhLdMaxJAbnrSFEiif7f6EO
 5KnArHf7XdyDOwgIJY0K6SpW08nLXPgoGgemngBe2L5dxiXVdMY/x4wxwkq/P2E5mnCo
 x6xREs3s6hmrb6mXm3MvJDK4Q2rTm05stkZdDR4ovBiaLPmxF4v9fM1vJBqyuqtxNYBW
 kmBlqRQVAsXpg4Lpkt/arfLuXxXjqHjDHJbL/OS5jMwEPJ0L/9fnd1H4802GzViJRVVF
 mE8w==
X-Gm-Message-State: AOAM533RWd07wSTM4U1X792GtHSEtwJoWFKCvmaL72KYYltPC9CAIzXy
 b0cK7/JsAC8TLbyrAnz2V0gSFA==
X-Google-Smtp-Source: ABdhPJy2HsDbPWjU17AyjnBhbjEW6TUaD3DyDVsdBfyAnc7ITrNKC2wGFyMT7NaBVtZtsOxAyOGWxw==
X-Received: by 2002:a05:6402:2809:b0:423:e123:5e40 with SMTP id
 h9-20020a056402280900b00423e1235e40mr17966760ede.84.1650879480853; 
 Mon, 25 Apr 2022 02:38:00 -0700 (PDT)
Received: from gmail.com ([100.104.168.197]) by smtp.gmail.com with ESMTPSA id
 s26-20020a1709066c9a00b006f38bea6ddfsm1381772ejr.186.2022.04.25.02.38.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Apr 2022 02:38:00 -0700 (PDT)
Date: Mon, 25 Apr 2022 11:37:43 +0200
From: Ricardo Ribalda <ribalda@chromium.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, Dafna Hirschfeld <dafna@fastmail.com>,
 Heiko Stuebner <heiko@sntech.de>, Paul Elder <paul.elder@ideasonboard.com>,
 Tomasz Figa <tfiga@google.com>, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 04/21] media: rkisp1: resizer: Fix and simplify
 (un)registration
Message-ID: <YmZr5yNANewFWUO/@gmail.com>
References: <20220421234240.1694-1-laurent.pinchart@ideasonboard.com>
 <20220421234240.1694-5-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220421234240.1694-5-laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_023804_387774_2AEBF9A1 
X-CRM114-Status: GOOD (  22.65  )
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

Laurent Pinchart wrote:

> The rkisp1_rsz_register() and rkisp1_rsz_unregister() functions don't
> destroy the mutex (in the error path for the former). Fix this, simplify
> error handling at registration time as media_entity_cleanup() can be
> called on an uninitialized entity, and make rkisp1_rsz_unregister() and
> rkisp1_resizer_devs_unregister() safe to be called on an unregistered
> resizer subdev to prepare for simplification of error handling at probe
> time.
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>
Reviewed-by: Ricardo Ribalda <ribalda@chromium.org>
> ---
> Changes since v1:
> 
> - Reset rsz->rkisp1 in rkisp1_resizer_devs_register()
> ---
>  .../platform/rockchip/rkisp1/rkisp1-resizer.c | 34 +++++++++----------
>  1 file changed, 17 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
> index 2070f4b06705..df2beee1be99 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
> @@ -782,8 +782,12 @@ static const struct v4l2_subdev_ops rkisp1_rsz_ops = {
>  
>  static void rkisp1_rsz_unregister(struct rkisp1_resizer *rsz)
>  {
> +	if (!rsz->rkisp1)
> +		return;
> +
>  	v4l2_device_unregister_subdev(&rsz->sd);
>  	media_entity_cleanup(&rsz->sd.entity);
> +	mutex_destroy(&rsz->ops_lock);
>  }
>  
>  static int rkisp1_rsz_register(struct rkisp1_resizer *rsz)
> @@ -821,47 +825,43 @@ static int rkisp1_rsz_register(struct rkisp1_resizer *rsz)
>  	mutex_init(&rsz->ops_lock);
>  	ret = media_entity_pads_init(&sd->entity, RKISP1_RSZ_PAD_MAX, pads);
>  	if (ret)
> -		return ret;
> +		goto error;
>  
>  	ret = v4l2_device_register_subdev(&rsz->rkisp1->v4l2_dev, sd);
>  	if (ret) {
>  		dev_err(sd->dev, "Failed to register resizer subdev\n");
> -		goto err_cleanup_media_entity;
> +		goto error;
>  	}
>  
>  	rkisp1_rsz_init_config(sd, &state);
>  	return 0;
>  
> -err_cleanup_media_entity:
> +error:
>  	media_entity_cleanup(&sd->entity);
> -
> +	mutex_destroy(&rsz->ops_lock);
>  	return ret;
>  }
>  
>  int rkisp1_resizer_devs_register(struct rkisp1_device *rkisp1)
>  {
> -	struct rkisp1_resizer *rsz;
> -	unsigned int i, j;
> +	unsigned int i;
>  	int ret;
>  
>  	for (i = 0; i < ARRAY_SIZE(rkisp1->resizer_devs); i++) {
> -		rsz = &rkisp1->resizer_devs[i];
> +		struct rkisp1_resizer *rsz = &rkisp1->resizer_devs[i];
> +
>  		rsz->rkisp1 = rkisp1;
>  		rsz->id = i;
> +
>  		ret = rkisp1_rsz_register(rsz);
> -		if (ret)
> -			goto err_unreg_resizer_devs;
> +		if (ret) {
> +			rsz->rkisp1 = NULL;
> +			rkisp1_resizer_devs_unregister(rkisp1);
> +			return ret;
> +		}
>  	}
>  
>  	return 0;
> -
> -err_unreg_resizer_devs:
> -	for (j = 0; j < i; j++) {
> -		rsz = &rkisp1->resizer_devs[j];
> -		rkisp1_rsz_unregister(rsz);
> -	}
> -
> -	return ret;
>  }
>  
>  void rkisp1_resizer_devs_unregister(struct rkisp1_device *rkisp1)
> -- 
> Regards,
> 
> Laurent Pinchart
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

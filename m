Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C331CC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 09:36:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wP6c7qrPjGDKe9v9mRnwKw8VnXtY+ux/ck6jIogMbUI=; b=sG1vRgTSxBz58t
	uRR3qYrQ/B8F4nL9hkqKZf8g0W31kDgXwyC+yDSLlZY2rrlE34fCxRs8kqKLHseTFk3GMBq/Es04t
	aKP6yIeEFT+BkycF1RonGLrv5DFV7rt4hVKzDZfiLUQCharf72kM2Ebcxr9m+E13H9jIWDiBlP26r
	wCH9pdU2W1XOZaiHhAVBoHc7GDEWGqk6Kox7UB6ZAq8sqTnrc3u4E1QL1z6VPgrwZBkxDowPr9+sg
	ETgCFwFWPX8/BxCq0i/4e/iOg3miNyItxtpWIRBPZJzpgWQiG918rM9yr1Yl/jCUxiiUkAzLK9ZSx
	FKkRjRRxxmxiX3WpsMnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1niv9A-008wai-Fw; Mon, 25 Apr 2022 09:36:44 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1niv97-008wZM-6w
 for linux-rockchip@lists.infradead.org; Mon, 25 Apr 2022 09:36:42 +0000
Received: by mail-ej1-x62a.google.com with SMTP id i27so28425081ejd.9
 for <linux-rockchip@lists.infradead.org>; Mon, 25 Apr 2022 02:36:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=IICvgo8nR6+CwR6K2NQjDjUzv2CjDXLn1hL/X5+bgjQ=;
 b=Uy5cCk6XSulIBATC6l+wqR5QMl5K8c54iV/JBxtHhMUBRb3Pql6NyP6dKW8Njpm5yP
 AxZD7MndZL6wfSDAkoJgmX392nJcdFSx+jJNWNLGPHpfX1Nti6LHJppMJ8EVIsMb/qJw
 j9lSO4UnuvmbphBmiAqiQhs5vBGKpTafs5N7c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=IICvgo8nR6+CwR6K2NQjDjUzv2CjDXLn1hL/X5+bgjQ=;
 b=Q1sjiVI1AdAlW9q9VNXpWFeOc4+2nnwfxiswiOh+wdP36WGdUZEvUnbCALqyGJKfZX
 xSp+cWjuprwmLIXUaOV/kD4bZFVPYidr1qiIjnC8/Q4SlfPAkMnaISX3M+Rg+PcIL+et
 gpF/bKLGtiR0PnZFnMdP/VLLlG+rg0mtkcOF4is/EJjRFZ5PT386fpAx0oikm7gNHgv2
 NeLuuQF7s/L76O2B1pt1fxRAAq60CRdS/oNtCXE4mBMrTFZzWKa8l8pa+wGoRKwo0cpr
 dGqN18wrn6EZ5OdCgjDZqHmBCT28AGmYvB0yaGV4CruT7BVe+dqnxOgN85XF9Ta7daa4
 tAog==
X-Gm-Message-State: AOAM533Q0u97D2IBozKOdu7QySFXjLB8TCcS+J6U0YA106R5uvM97VkF
 2gZ5rVwHHzAyyKN66dzdmM5D7A==
X-Google-Smtp-Source: ABdhPJyaD/ooPmJsbStGHDHPN1o9gZTUObU3z3+xu/Oct5/971yUhlU98YG6Jts0+eb6E24Dz+3Hxw==
X-Received: by 2002:a17:906:5cb:b0:6cf:954:d84d with SMTP id
 t11-20020a17090605cb00b006cf0954d84dmr15997650ejt.560.1650879397862; 
 Mon, 25 Apr 2022 02:36:37 -0700 (PDT)
Received: from gmail.com ([100.104.168.197]) by smtp.gmail.com with ESMTPSA id
 y19-20020a056402359300b00423e51be1cesm4311100edc.64.2022.04.25.02.36.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Apr 2022 02:36:37 -0700 (PDT)
Date: Mon, 25 Apr 2022 11:36:20 +0200
From: Ricardo Ribalda <ribalda@chromium.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, Dafna Hirschfeld <dafna@fastmail.com>,
 Heiko Stuebner <heiko@sntech.de>, Paul Elder <paul.elder@ideasonboard.com>,
 Tomasz Figa <tfiga@google.com>, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 03/21] media: rkisp1: isp: Fix and simplify
 (un)registration
Message-ID: <YmZrlImBrUUA91jh@gmail.com>
References: <20220421234240.1694-1-laurent.pinchart@ideasonboard.com>
 <20220421234240.1694-4-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220421234240.1694-4-laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_023641_285726_A89DBEAA 
X-CRM114-Status: GOOD (  19.40  )
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

> The rkisp1_isp_register() and rkisp1_isp_unregister() functions don't
> destroy the mutex (in the error path for the former). Fix this, simplify
> error handling at registration time as media_entity_cleanup() can be
> called on an uninitialized entity, and make rkisp1_isp_unregister() and
> safe to be called on an unregistered isp subdev to prepare for
> simplification of error handling at probe time.
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Ricardo Ribalda <ribalda@chromium.org>
> ---
> Changes since v3:
> 
> - Use isp->sd.v4l2_dev instead of isp->sd.flags for registration test
> ---
>  .../platform/rockchip/rkisp1/rkisp1-isp.c     | 20 ++++++++++++-------
>  1 file changed, 13 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
> index 2a35bf24e54e..4f7b2157b8cc 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
> @@ -1090,29 +1090,35 @@ int rkisp1_isp_register(struct rkisp1_device *rkisp1)
>  	mutex_init(&isp->ops_lock);
>  	ret = media_entity_pads_init(&sd->entity, RKISP1_ISP_PAD_MAX, pads);
>  	if (ret)
> -		return ret;
> +		goto error;
>  
>  	ret = v4l2_device_register_subdev(&rkisp1->v4l2_dev, sd);
>  	if (ret) {
>  		dev_err(rkisp1->dev, "Failed to register isp subdev\n");
> -		goto err_cleanup_media_entity;
> +		goto error;
>  	}
>  
>  	rkisp1_isp_init_config(sd, &state);
> +
>  	return 0;
>  
> -err_cleanup_media_entity:
> +error:
>  	media_entity_cleanup(&sd->entity);
> -
> +	mutex_destroy(&isp->ops_lock);
> +	isp->sd.v4l2_dev = NULL;
>  	return ret;
>  }
>  
>  void rkisp1_isp_unregister(struct rkisp1_device *rkisp1)
>  {
> -	struct v4l2_subdev *sd = &rkisp1->isp.sd;
> +	struct rkisp1_isp *isp = &rkisp1->isp;
>  
> -	v4l2_device_unregister_subdev(sd);
> -	media_entity_cleanup(&sd->entity);
> +	if (!isp->sd.v4l2_dev)
> +		return;
> +
> +	v4l2_device_unregister_subdev(&isp->sd);
> +	media_entity_cleanup(&isp->sd.entity);
> +	mutex_destroy(&isp->ops_lock);
>  }
>  
>  /* ----------------------------------------------------------------------------
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

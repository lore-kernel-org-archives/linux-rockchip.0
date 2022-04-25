Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29ED3C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 09:39:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qxQl7/yAXwA4/PvcVYAFu8VYOQB4/lgDlCO887pB+Rw=; b=RW6ISBlQHlBiGB
	qirJSJCfrRMpd6MOZruiUE536NJ8U+oDGvzCsy6eJt8r57FzKKcS/X9K4hPwA5zgm6AxHsyXeWog/
	NaF73lp1KU6+qXrG3s+nYgywqdaKSoGuwJlSrmm+PSe3jZvtAvRBdAeP5WaTABVTlzVG+cJEe92by
	97mBRXGjCRL7ciFnsZLo2E6NTIJEamNpx1VKq0RMV2dAloBKuKEei4vW69WzQNKnLBL5wghx9X3c1
	AqVWEr4N7aWn09LWzeg96zQLnYqlee7/Mz7E7jHp0ByE92aPUWcLsKQK0w0a/9yVCxkUuRgHjmPZn
	2hRyNwzuJhtlFi/2VHmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nivBk-008xE6-MH; Mon, 25 Apr 2022 09:39:24 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nivBi-008xDE-3j
 for linux-rockchip@lists.infradead.org; Mon, 25 Apr 2022 09:39:23 +0000
Received: by mail-ej1-x631.google.com with SMTP id i27so28437201ejd.9
 for <linux-rockchip@lists.infradead.org>; Mon, 25 Apr 2022 02:39:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=4kKHAS8yuamKKqcmKSO+BS/tDqzgE+/ScvF8BNqhQ3w=;
 b=kmxzm09EX9L/7Mr9Vh1Yg7ps87lABi5yc+KEQRV+r6TsAdTMIDzAWdSZOPtVuKq/3K
 YWhl9wMa0lL7PB7AMVL7c//yZqPJy/iksXAjJueLJ3J/bFUrXddgl37dPJcCQhdiulcc
 01LSZM2pzT4pIq3K9bIkAffdNjw/Wy9Ezk85I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=4kKHAS8yuamKKqcmKSO+BS/tDqzgE+/ScvF8BNqhQ3w=;
 b=38SYvHKea1MJUm/CYEhTYSMRqUXTufVApa9GAhggoobkzRzrufBBT9sA595ns+MArg
 krZO58blRAGw1LYS0tPv06jpMZJgQ3Oo3uPR7j3U3Ui2YXeS5WHczVqsCppWRETqNAFW
 GoHvWJE6Au4GmH0X7lJE3nUKQQ6om+73V1vlYgVE1RvMtDXlrFztpSQkq29MBlas5Tki
 59OFPd1+OTa3YoZQ27PHvcRW/9j4PKBa3u27PDYcB6g1P1Nfd2wbweavcwnc8ML9sLBQ
 hKszq3jurm2R8pfLLH5V65XBuSMb1d0EHliqsssQI04r5wSQzb06F8URL5Z1LdlNHujd
 0Qfg==
X-Gm-Message-State: AOAM530i5sU5HYO75OSioIE8iVRrVM01Y3z9bipvDpTw4edTm4H0xKGU
 earnKVmTIaMg1gKl6jHUmHHzsQ==
X-Google-Smtp-Source: ABdhPJxzjnupASBEe5HfYSESn4d7GsiiO4W71kGmjRoJ2wlcx2fA6etHFXZUQQio+KeawidxsasS5g==
X-Received: by 2002:a17:906:fad6:b0:6f3:9ea7:1d49 with SMTP id
 lu22-20020a170906fad600b006f39ea71d49mr1768664ejb.635.1650879558907; 
 Mon, 25 Apr 2022 02:39:18 -0700 (PDT)
Received: from gmail.com ([100.104.168.197]) by smtp.gmail.com with ESMTPSA id
 la23-20020a170906ad9700b006f3902ba948sm1225416ejb.168.2022.04.25.02.39.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Apr 2022 02:39:18 -0700 (PDT)
Date: Mon, 25 Apr 2022 11:39:01 +0200
From: Ricardo Ribalda <ribalda@chromium.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, Dafna Hirschfeld <dafna@fastmail.com>,
 Heiko Stuebner <heiko@sntech.de>, Paul Elder <paul.elder@ideasonboard.com>,
 Tomasz Figa <tfiga@google.com>, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 05/21] media: rkisp1: params: Fix and simplify
 (un)registration
Message-ID: <YmZsNYy/s0FoTfHO@gmail.com>
References: <20220421234240.1694-1-laurent.pinchart@ideasonboard.com>
 <20220421234240.1694-6-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220421234240.1694-6-laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_023922_190425_0B5514AE 
X-CRM114-Status: GOOD (  19.00  )
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

> The rkisp1_params_register() and rkisp1_params_unregister() functions
> don't destroy the mutex (in the error path for the former). Fix this,
> simplify error handling at registration time as media_entity_cleanup()
> can be called on an uninitialized entity, and make
> rkisp1_params_unregister() safe to be called on an unregistered params
> node to prepare for simplification of error handling at probe time.
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Ricardo Ribalda <ribalda@chromium.org>
> ---
> Changes since v3:
> 
> - Use video_is_registered() for registration test
> ---
>  .../media/platform/rockchip/rkisp1/rkisp1-params.c | 14 +++++++++++---
>  1 file changed, 11 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> index 8f62f09e635f..f6da2571b55f 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> @@ -1844,16 +1844,20 @@ int rkisp1_params_register(struct rkisp1_device *rkisp1)
>  	node->pad.flags = MEDIA_PAD_FL_SOURCE;
>  	ret = media_entity_pads_init(&vdev->entity, 1, &node->pad);
>  	if (ret)
> -		return ret;
> +		goto error;
> +
>  	ret = video_register_device(vdev, VFL_TYPE_VIDEO, -1);
>  	if (ret) {
>  		dev_err(rkisp1->dev,
>  			"failed to register %s, ret=%d\n", vdev->name, ret);
> -		goto err_cleanup_media_entity;
> +		goto error;
>  	}
> +
>  	return 0;
> -err_cleanup_media_entity:
> +
> +error:
>  	media_entity_cleanup(&vdev->entity);
> +	mutex_destroy(&node->vlock);
>  	return ret;
>  }
>  
> @@ -1863,6 +1867,10 @@ void rkisp1_params_unregister(struct rkisp1_device *rkisp1)
>  	struct rkisp1_vdev_node *node = &params->vnode;
>  	struct video_device *vdev = &node->vdev;
>  
> +	if (!video_is_registered(vdev))
> +		return;
> +
>  	vb2_video_unregister_device(vdev);
>  	media_entity_cleanup(&vdev->entity);
> +	mutex_destroy(&node->vlock);
>  }
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

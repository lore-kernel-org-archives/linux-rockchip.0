Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8638C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 09:45:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z9K3qnUkiIoA7S+uPAnwE3Zg4+ccYyMViF+OZeS4NIw=; b=YitXMFT8izNF+a
	+OsaFWzzVPpLZX5vvFR0i7Md5t93d3KETLGnL1w9n9QLl38cfgnRN6qBdCKwUPyCnQDx6reYz63Ao
	xl+bCk5cb95Q6FBKNoen1VpCvOjDPXcKibSqjYxMtUozvhnvx2JAJohiREHx5JPEBRG+YT5uuFAgN
	88KMvcetrLEJuZOIAJJiOk0CXvUqwt6SD2fn4wjqYky5fCu/qeN575KHJekMeGNXVHJJtfbyhgqyi
	BxuyeVHQV27IFZZlknvKn8PFhpp3Hj+4dW/62B52/4GrWBv/G69aBOqsVshBKy2tNmoNijkvCP9jy
	YjGyIwjcsuXkUuGU1LHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nivHM-008y8w-Vf; Mon, 25 Apr 2022 09:45:13 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nivHJ-008y8I-MZ
 for linux-rockchip@lists.infradead.org; Mon, 25 Apr 2022 09:45:11 +0000
Received: by mail-ej1-x62f.google.com with SMTP id gh6so4431233ejb.0
 for <linux-rockchip@lists.infradead.org>; Mon, 25 Apr 2022 02:45:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=T8f9eDm266Y1Ts1ErDo5iBQJArVZ/NqFH0l8pTYu7ME=;
 b=kkGGbsst6N0RMpxcGT14jD0Wvkxms3LbVz9Yw4yq4U/JbMIZH8LBCM8oIpSeDZFK5n
 A5g49+EPBjrNQ2pK/UZlw2Fhr2BpxYN5qkIzjue9ihSFMVDEsVq37CeiwOqZJPlx2bQ8
 /b2DSDRceRRtUyI6SmaKVAVYVHquI1nwu0Nxg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=T8f9eDm266Y1Ts1ErDo5iBQJArVZ/NqFH0l8pTYu7ME=;
 b=MgGIETnfy5T06VDDz0T7i0kgNXazXbnOm47hz8y/9Y7u2d87NoWLnW7u+gTVxzsUzE
 5Zuw+meYnhNbPc+5Gh8XhnEbyvIt4twAYyOhaLItjTl2bICh7EP8HpL6VZXTy/YUVndV
 CpabnwuhtwpwLwzAPTrNVoicI5Kpj6PjuUN8k+JDm4bd5YYeto9eyorAQD0IQ6I6N6T7
 G/mlSrZ5xxckVwjGVCsHp9r5cLbGP/aK0oZ3oddclmoJ1m+jJNgr6NLD3fR1EXXM1gxl
 4VGblsObMHa7y9h0YxDaBXBtyuqROjOBwHEIfJXU8oa4D0C3VOt9YI4znp28QPJB9V0T
 bC9Q==
X-Gm-Message-State: AOAM530SlflxGlU7CZx/3KysntL+Ua56Set96LhOWO7qMDIi46qyFTja
 dT1HPTWZInmetak+Nm5B1co1pA==
X-Google-Smtp-Source: ABdhPJwOWdu7Rutex5YWxhMqcBhGl7bPWyrgXmdptv5vJjDWtx+P2HmnImlNIXTNsWcNX85z2QaV0g==
X-Received: by 2002:a17:906:c104:b0:6ef:fb70:1c54 with SMTP id
 do4-20020a170906c10400b006effb701c54mr15939082ejc.71.1650879907535; 
 Mon, 25 Apr 2022 02:45:07 -0700 (PDT)
Received: from gmail.com ([100.104.168.197]) by smtp.gmail.com with ESMTPSA id
 r3-20020aa7cb83000000b0041b573e2654sm4333531edt.94.2022.04.25.02.45.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Apr 2022 02:45:07 -0700 (PDT)
Date: Mon, 25 Apr 2022 11:44:49 +0200
From: Ricardo Ribalda <ribalda@chromium.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, Dafna Hirschfeld <dafna@fastmail.com>,
 Heiko Stuebner <heiko@sntech.de>, Paul Elder <paul.elder@ideasonboard.com>,
 Tomasz Figa <tfiga@google.com>, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 06/21] media: rkisp1: stats: Simplify (un)registration
Message-ID: <YmZtkcekluV2ZdV9@gmail.com>
References: <20220421234240.1694-1-laurent.pinchart@ideasonboard.com>
 <20220421234240.1694-7-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220421234240.1694-7-laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_024510_086738_5DC7F1C6 
X-CRM114-Status: GOOD (  17.06  )
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

> Simplify error handling at registration time as media_entity_cleanup()
> can be called on an uninitialized entity, and make
> rkisp1_stats_unregister() safe to be called on an unregistered stats
> node to prepare for simplification of error handling at probe time.
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Ricardo Ribalda <ribalda@chromium.org>
> ---
>  drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c | 11 +++++++----
>  1 file changed, 7 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c
> index be5777c65bfb..26ef3bbe43d0 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c
> @@ -463,21 +463,21 @@ int rkisp1_stats_register(struct rkisp1_device *rkisp1)
>  	node->pad.flags = MEDIA_PAD_FL_SINK;
>  	ret = media_entity_pads_init(&vdev->entity, 1, &node->pad);
>  	if (ret)
> -		goto err_mutex_destroy;
> +		goto error;
>  
>  	ret = video_register_device(vdev, VFL_TYPE_VIDEO, -1);
>  	if (ret) {
>  		dev_err(&vdev->dev,
>  			"failed to register %s, ret=%d\n", vdev->name, ret);
> -		goto err_cleanup_media_entity;
> +		goto error;
>  	}
>  
>  	return 0;
>  
> -err_cleanup_media_entity:
> +error:
>  	media_entity_cleanup(&vdev->entity);
> -err_mutex_destroy:
>  	mutex_destroy(&node->vlock);
> +	stats->rkisp1 = NULL;
>  	return ret;
>  }
>  
> @@ -487,6 +487,9 @@ void rkisp1_stats_unregister(struct rkisp1_device *rkisp1)
>  	struct rkisp1_vdev_node *node = &stats->vnode;
>  	struct video_device *vdev = &node->vdev;
>  
> +	if (!stats->rkisp1)
> +		return;
> +
>  	vb2_video_unregister_device(vdev);
>  	media_entity_cleanup(&vdev->entity);
>  	mutex_destroy(&node->vlock);
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

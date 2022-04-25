Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C82F0C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 09:34:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fkldD7qZg09i6jV1C27ZT6eUfIy1/X6lgvVI4qFWDIQ=; b=u8GGP6CNdh6e/g
	Rpf+na44zwiwQrH4PaiDsN0t1M63zzwd1Zi+L3B81In4PNDnYiFmfvKIBkaP1VoHREF/GprDKOvzs
	U9SAXFtkxp3+0cNCpjl1Y5T5/akzN9G5nKMQQcshSgWaYhUY8d1Ka2tgul7ehsFWBwf557znwdUep
	M7NoqVfQteStHKWo18Twv5TgLoE0M0h0avNOnF1Xf1cVi+RXAzvBfHKQj83EN8Mz7jPZeKZuitdTU
	nTdhVvLgApvB726DFKihtgemjLh8rkS+mC3P5Z9Hrm7hRtgvTy6RFzs2VdErR1seRdvksWXPBt8GN
	9Y7nDfvt2qBuUiVm6rMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1niv71-008wIf-ED; Mon, 25 Apr 2022 09:34:31 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1niv6y-008wI3-V6
 for linux-rockchip@lists.infradead.org; Mon, 25 Apr 2022 09:34:30 +0000
Received: by mail-ed1-x532.google.com with SMTP id a1so11992368edt.3
 for <linux-rockchip@lists.infradead.org>; Mon, 25 Apr 2022 02:34:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=eg7ir52Dj1qV9+S8fu2j2lJ1W35cMb3SwZSQ29mhSeo=;
 b=ENGIfYkyd4wg0H0QBy6yHjx+SmQFOAIXjRBU4RqxAqUHEM/KR/KEgnA13gFiEMAhOh
 vmt3njdvQ6gh2fXU9qx2RC0J83CCkghXQd5Y7TzP08f8UUBJqoOCM4TRFNCfhRII7PGO
 FKzjoKAuLW56hbO0dxy1cUH3UuZ8TEa+N1jAA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=eg7ir52Dj1qV9+S8fu2j2lJ1W35cMb3SwZSQ29mhSeo=;
 b=t+lPTRYi7sCuXVYdAdNCclxvUSIpRnFQ05+h+aqF93SmufW05GYo9B6TjHi5Qk2Hf3
 gcNBIH13eXNXMva86OuCNQbALzJA6eHM5wLcbD2UOVI3MZN2RGpotsM3pGZyMN+W32a5
 TCI263nIlsB2oViNyUPiHaySp1QEJSXzc+uFRN1BZgSqiMY4oQaaGguXLdATLkM+9jJN
 DDpvLLbRPtx7MizrYrEqxdGa4lmXb85GXUhnhEYtWQpkHVhJKRxOsX7qV5ZVXrZ3+ThK
 R9j1EiP61OS3iWY0td8YKg1P7p4s0kaAS2Y1Xx3CGm4Gd0ybQfsjFHPtfF5hJSzTZxcX
 8elg==
X-Gm-Message-State: AOAM533i/hc6lcidazDAduNoLSaYAifg3qbeUvPihC5Snl/78Vr9BRsM
 ls9JKQrlMDezXL7Bn3oKg5hdxw==
X-Google-Smtp-Source: ABdhPJx0CEilFAAok8STiPwb4ruZMcKe+n9MXKj3MyI+KHGNegLbtQDBVfh2caWrpExJgQpP5Ipvig==
X-Received: by 2002:a05:6402:288a:b0:425:c5b2:59d9 with SMTP id
 eg10-20020a056402288a00b00425c5b259d9mr13353541edb.412.1650879266453; 
 Mon, 25 Apr 2022 02:34:26 -0700 (PDT)
Received: from gmail.com ([100.104.168.197]) by smtp.gmail.com with ESMTPSA id
 d13-20020a1709063ecd00b006f385c42e5fsm1689746ejj.217.2022.04.25.02.34.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Apr 2022 02:34:26 -0700 (PDT)
Date: Mon, 25 Apr 2022 11:34:08 +0200
From: Ricardo Ribalda <ribalda@chromium.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, Dafna Hirschfeld <dafna@fastmail.com>,
 Heiko Stuebner <heiko@sntech.de>, Paul Elder <paul.elder@ideasonboard.com>,
 Tomasz Figa <tfiga@google.com>, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 02/21] media: rkisp1: capture: Fix and simplify
 (un)registration
Message-ID: <YmZrEEDwOklI/9S+@gmail.com>
References: <20220421234240.1694-1-laurent.pinchart@ideasonboard.com>
 <20220421234240.1694-3-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220421234240.1694-3-laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_023429_078578_08EED8B8 
X-CRM114-Status: GOOD (  24.12  )
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

> The rkisp1_register_capture() and rkisp1_unregister_capture() functions
> don't destroy the mutex (in the error path for the former). Fix this and
> make rkisp1_unregister_capture() and rkisp1_capture_devs_unregister()
> safe to be called on an unregistered capture node to prepare for
> simplification of error handling at probe time.
> 
> While at it, drop the double initialization of cap->rkisp1 in
> rkisp1_capture_devs_register() as the field is already initialized in
> rkisp1_capture_init().
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Ricardo Ribalda <ribalda@chromium.org>
> ---
> Changes since v2:
> 
> - Use video_is_registered() as registration test
> - Drop double initialization of cap->rkisp1
> - Move part of 03/17 to this patch
> 
> Changes since v1:
> 
> - Reset cap->rkisp1 in rkisp1_capture_devs_register()
> ---
>  .../platform/rockchip/rkisp1/rkisp1-capture.c | 30 +++++++++----------
>  1 file changed, 15 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> index e88749488969..6c54e95a529b 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> @@ -1326,8 +1326,12 @@ static const struct v4l2_file_operations rkisp1_fops = {
>  
>  static void rkisp1_unregister_capture(struct rkisp1_capture *cap)
>  {
> +	if (!video_is_registered(&cap->vnode.vdev))
> +		return;
> +
>  	media_entity_cleanup(&cap->vnode.vdev.entity);
>  	vb2_video_unregister_device(&cap->vnode.vdev);
> +	mutex_destroy(&cap->vnode.vlock);
>  }
>  
>  void rkisp1_capture_devs_unregister(struct rkisp1_device *rkisp1)
> @@ -1381,14 +1385,14 @@ static int rkisp1_register_capture(struct rkisp1_capture *cap)
>  	if (ret) {
>  		dev_err(cap->rkisp1->dev,
>  			"vb2 queue init failed (err=%d)\n", ret);
> -		return ret;
> +		goto error;
>  	}
>  
>  	vdev->queue = q;
>  
>  	ret = media_entity_pads_init(&vdev->entity, 1, &node->pad);
>  	if (ret)
> -		return ret;
> +		goto error;
>  
>  	ret = video_register_device(vdev, VFL_TYPE_VIDEO, -1);
>  	if (ret) {
> @@ -1404,6 +1408,7 @@ static int rkisp1_register_capture(struct rkisp1_capture *cap)
>  
>  error:
>  	media_entity_cleanup(&vdev->entity);
> +	mutex_destroy(&node->vlock);
>  	return ret;
>  }
>  
> @@ -1439,26 +1444,21 @@ rkisp1_capture_init(struct rkisp1_device *rkisp1, enum rkisp1_stream_id id)
>  
>  int rkisp1_capture_devs_register(struct rkisp1_device *rkisp1)
>  {
> -	struct rkisp1_capture *cap;
> -	unsigned int i, j;
> +	unsigned int i;
>  	int ret;
>  
>  	for (i = 0; i < ARRAY_SIZE(rkisp1->capture_devs); i++) {
> +		struct rkisp1_capture *cap = &rkisp1->capture_devs[i];
> +
>  		rkisp1_capture_init(rkisp1, i);
> -		cap = &rkisp1->capture_devs[i];
> -		cap->rkisp1 = rkisp1;
> +
>  		ret = rkisp1_register_capture(cap);
> -		if (ret)
> -			goto err_unreg_capture_devs;
> +		if (ret) {
> +			rkisp1_capture_devs_unregister(rkisp1);
> +			return ret;
> +		}
>  	}
>  
>  	return 0;
>  
> -err_unreg_capture_devs:
> -	for (j = 0; j < i; j++) {
> -		cap = &rkisp1->capture_devs[j];
> -		rkisp1_unregister_capture(cap);
> -	}
> -
> -	return ret;
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

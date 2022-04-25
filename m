Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C8FEC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 07:53:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RjrHpfi3mMzD5O3XwLhV/EMXQlB7DCSHLom16Xgfu4k=; b=NxCWJdpRnLAuZl
	l0AJxtTa35Wey5PrKw03g2rqY12uez3O5O8XmS8BXdD3JIEz1847ZuCaMUsMkP0FApcWEPBWhtBQn
	X2AV41hGbqK5VQ8M5axR+79fr5qrKEgnYadoycR1DX0b2I5jJdIbolxRgRXCAcy9NSBS4rUEzi5wK
	Ws4nnLDkdfQZ3PbJyW4Xg9UcMn6czwbob7vhYMKvl6vZZIXkLTKDQKWE/kAI3hP4CP0OmRLU82jMF
	jpgOkO8ptJCMBIEDErAgkma5+DOI3Tu6cLx07AKXkVWlFwI4h3Fs2zNvWu9RjVH1nDPnwn9CdZkfZ
	i86htthrn7d5FzSed7Xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nitWs-008gBK-L6; Mon, 25 Apr 2022 07:53:06 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nitWq-008g9b-8p
 for linux-rockchip@lists.infradead.org; Mon, 25 Apr 2022 07:53:05 +0000
Received: by mail-ed1-x536.google.com with SMTP id k27so2186131edk.4
 for <linux-rockchip@lists.infradead.org>; Mon, 25 Apr 2022 00:52:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=liPzVtEJOh3iNfCv/BYXN8l4UEs1DYNoebKNl/6PqeQ=;
 b=F95tSg0UvNAE0JVMyCvPaagcTqt4rof7PnodwFpjfRCCS4F59ZJnGo6ItcwqGr/+dl
 z/I1LzbipNl6N/od+5FFDfXpIlWfd7BXZa7NBBkMrfQPs3iG0an2NexpF2zk3Nc8L5YG
 zpSlrAYFHXqOaJsyWD26Zfg7n74xFGYriVEww=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=liPzVtEJOh3iNfCv/BYXN8l4UEs1DYNoebKNl/6PqeQ=;
 b=IZyCynoQ2EOiqyRJVryp5mUSMXjAlf4rseuDMxZYxDjvA9MyOhVIb9McNTEZ8aGf3d
 jqRrnlzeyAnRgy3ekKhY3Q+NbYQJIVUomw2zqaNh85vfDHY+y0zHnkOSli/AsVvRMMY5
 zxhEL2Cz3zwRD/7VZiOM2JFC4JrF68hRQhOZGF3tN4fH7qGq8MNvtIyfawI6Vl7N74Ho
 WXOpGkufOZ1DuEH95N7J/YcVDsg2Ob0F0X1ja+22vl+3PwPIjAE+bKqx99xqoWCAWaf4
 +rl2dP4hkRsu9EEHHEQ8tZ2zROLFAXaU3yEopagr7Oxm4CGBPhAPqMMOFIFy9k6Kmdgk
 NTww==
X-Gm-Message-State: AOAM531oS1tdKurauWTJWW+NH3V3UorDp6l6GPnCuY9R1TT2cGjirKuo
 VFHnrdQM5v52Ul0L0q9yRsQwHUP3M6weSw==
X-Google-Smtp-Source: ABdhPJxJTPPWJ5KjCQoS97gTgsxfl46CdbjfVQhHSEtbWUs/O4sRjmfbiBAQDonY+BnpEKIMLxgZ7A==
X-Received: by 2002:a50:ed16:0:b0:425:f420:e51a with SMTP id
 j22-20020a50ed16000000b00425f420e51amr19992eds.23.1650873176086; 
 Mon, 25 Apr 2022 00:52:56 -0700 (PDT)
Received: from gmail.com ([100.104.168.197]) by smtp.gmail.com with ESMTPSA id
 kw3-20020a170907770300b006d2a835ac33sm3307904ejc.197.2022.04.25.00.52.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Apr 2022 00:52:55 -0700 (PDT)
Date: Mon, 25 Apr 2022 09:52:38 +0200
From: Ricardo Ribalda <ribalda@chromium.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, Dafna Hirschfeld <dafna@fastmail.com>,
 Heiko Stuebner <heiko@sntech.de>, Paul Elder <paul.elder@ideasonboard.com>,
 Tomasz Figa <tfiga@google.com>, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 01/21] media: rkisp1: capture: Initialize entity
 before video device
Message-ID: <YmZTRu5a9bXAgsh3@gmail.com>
References: <20220421234240.1694-1-laurent.pinchart@ideasonboard.com>
 <20220421234240.1694-2-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220421234240.1694-2-laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_005304_366017_0A7EE3B7 
X-CRM114-Status: GOOD (  17.28  )
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

> The media_entity embedded in the video_device needs to be initialized
> before registering the video_device. Do so.
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>
> Reviewed-by: Jacopo Mondi <jacopo@jmondi.org>
Reviewed-by: Ricardo Ribalda <ribalda@chromium.org>
> ---
>  .../platform/rockchip/rkisp1/rkisp1-capture.c   | 17 ++++++++++-------
>  1 file changed, 10 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> index fee2aaacb26b..e88749488969 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> @@ -1386,22 +1386,25 @@ static int rkisp1_register_capture(struct rkisp1_capture *cap)
>  
>  	vdev->queue = q;
>  
> +	ret = media_entity_pads_init(&vdev->entity, 1, &node->pad);
> +	if (ret)
> +		return ret;
> +
>  	ret = video_register_device(vdev, VFL_TYPE_VIDEO, -1);
>  	if (ret) {
>  		dev_err(cap->rkisp1->dev,
>  			"failed to register %s, ret=%d\n", vdev->name, ret);
> -		return ret;
> +		goto error;
>  	}
> +
>  	v4l2_info(v4l2_dev, "registered %s as /dev/video%d\n", vdev->name,
>  		  vdev->num);
>  
> -	ret = media_entity_pads_init(&vdev->entity, 1, &node->pad);
> -	if (ret) {
> -		video_unregister_device(vdev);
> -		return ret;
> -	}
> -
>  	return 0;
> +
> +error:
> +	media_entity_cleanup(&vdev->entity);
> +	return ret;
>  }
>  
>  static void
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

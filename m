Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD926C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 10:59:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/TQjTeexh8SBufe2hxlq9D6hfPMHC206GX+s3TzPOrI=; b=QECrmCmSDkOmtG
	ErRZEGcly7bm8HviuzoDtELjq0ZTfZSXF2sAW57H2lIcC5CCrfZ2SmfigAXZMjhd6ZbIqMWVKYAmv
	zX3Kyz9Fk/RQye+/6p40yH0FqjEB1gyDccQ4+2KrBAmvEzFc7cUWL1aHYBiFjnPCS0w3mCqpDbmHE
	uhd9w+hI0gpGeT6RmL33EEoB0PpAewJoF/3nhCclMGxLZ3RWOepxeidELsmWdSjlVEWkJKZJTrhid
	8zf7Fva7NuCfYIGGRNSvsrVjVHKwy5qJ5LG0nSClDMcEZd2HwxHiQd0tEF+ENwqOGDw/WyVeY11gN
	+l5+8VChvpSyoD6jBqVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1niwR8-009CuJ-HO; Mon, 25 Apr 2022 10:59:22 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1niwR5-009Ctn-Ho
 for linux-rockchip@lists.infradead.org; Mon, 25 Apr 2022 10:59:20 +0000
Received: by mail-ed1-x534.google.com with SMTP id z99so17880955ede.5
 for <linux-rockchip@lists.infradead.org>; Mon, 25 Apr 2022 03:59:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=O1iprrpCyW8nMod8KqXFZ0yaB3MuDhgdVhmxGRC2XzM=;
 b=PuiMslhSYv6mHfIdEZ3pVqGUwpPr6htgYW/9T1trx+mX4tzT73Lx1cABYZwE03yiq3
 KiVieb+3w5OiP06oYQbg+K/bF91Lxh2A54QHkTOIGWCSBBBNfw9Me2gwYlr2g9YNVwro
 Khmany6fQiypxNi9JxiGEtKHFlcYpR3Yl3/wY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=O1iprrpCyW8nMod8KqXFZ0yaB3MuDhgdVhmxGRC2XzM=;
 b=KjBPVWSb7NSkP++0na1+B7xk4xIZP/SIUdBS0HJSgRf1x4vZzkKlXfFFTIa+SkO83k
 u588Gep4vMh4VtX9SL2PIWG9zmCT/hvOs0ELV91LYvvYQnP57NgQZsBEA/15uoaGTB9/
 iI45tI50PdhSnqi+/bH5dQeoEdjljkDjM0mLHc07+/fKxZ+Zoao7TKwPObMrpmTlz/aW
 /ML0SLCmQ4iFrZtUVHBAdp+TadhaFqS3pja6+4r6lwhu+7TYapknRlDI09MA//8O6DSn
 SDWtpLRNPMI3JKOtJYxrvF2uHKECaGuUmo9XglQRMqkKa6xfm27LrFig6hUihgj81N+N
 pX2Q==
X-Gm-Message-State: AOAM532V+Bg46v5WwqthoAG6QD0/S+h3CINJiai6HlNTvQaIzm7xFEbU
 3dF6yKqB6wXvg9yw0gXWrx7Q/g==
X-Google-Smtp-Source: ABdhPJyqgs/NukQzf3sVSsYkCX51tqbzzjoB6SaUQloy7ljsvs2raQu8muD0XYTY0jRqhqd8pCrvNw==
X-Received: by 2002:a05:6402:254c:b0:423:e51b:e1b2 with SMTP id
 l12-20020a056402254c00b00423e51be1b2mr18363348edb.161.1650884357262; 
 Mon, 25 Apr 2022 03:59:17 -0700 (PDT)
Received: from gmail.com ([100.104.168.197]) by smtp.gmail.com with ESMTPSA id
 g17-20020a056402425100b00425f2816b85sm445472edb.27.2022.04.25.03.59.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Apr 2022 03:59:16 -0700 (PDT)
Date: Mon, 25 Apr 2022 12:58:59 +0200
From: Ricardo Ribalda <ribalda@chromium.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, Dafna Hirschfeld <dafna@fastmail.com>,
 Heiko Stuebner <heiko@sntech.de>, Paul Elder <paul.elder@ideasonboard.com>,
 Tomasz Figa <tfiga@google.com>, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 13/21] media: rkisp1: Compile debugfs support
 conditionally
Message-ID: <YmZ+89lToRXl4vFB@gmail.com>
References: <20220421234240.1694-1-laurent.pinchart@ideasonboard.com>
 <20220421234240.1694-14-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220421234240.1694-14-laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_035919_627797_BBADC231 
X-CRM114-Status: GOOD (  16.56  )
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

> When CONFIG_DEBUGFS is disabled, there's no need to compile the debugfs
> support in. Make it conditional.
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>
> ---
> Changes since v3:
> 
> - Fix double mention of rkisp1-debug.o in Makefile
> ---
>  .../media/platform/rockchip/rkisp1/Makefile    | 18 ++++++++++--------
>  .../platform/rockchip/rkisp1/rkisp1-common.h   |  9 +++++++++
>  2 files changed, 19 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/Makefile b/drivers/media/platform/rockchip/rkisp1/Makefile
> index 1a39bdcc608e..f7543a82aa10 100644
> --- a/drivers/media/platform/rockchip/rkisp1/Makefile
> +++ b/drivers/media/platform/rockchip/rkisp1/Makefile
> @@ -1,11 +1,13 @@
>  # SPDX-License-Identifier: GPL-2.0
>
Are you sure that this work when rockchip is built as module?

> +rockchip-isp1-y := rkisp1-capture.o \
> +		   rkisp1-common.o \
> +		   rkisp1-dev.o \
> +		   rkisp1-isp.o \
> +		   rkisp1-resizer.o \
> +		   rkisp1-stats.o \
> +		   rkisp1-params.o
> +
> +rockchip-isp1-$(CONFIG_DEBUG_FS) += rkisp1-debug.o
> +
>  obj-$(CONFIG_VIDEO_ROCKCHIP_ISP1) += rockchip-isp1.o
> -rockchip-isp1-objs += 	rkisp1-capture.o \
> -			rkisp1-common.o \
> -			rkisp1-debug.o \
> -			rkisp1-dev.o \
> -			rkisp1-isp.o \
> -			rkisp1-resizer.o \
> -			rkisp1-stats.o \
> -			rkisp1-params.o
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> index 07a92ed8bdc8..a7ffe2830fa8 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> @@ -518,7 +518,16 @@ void rkisp1_stats_unregister(struct rkisp1_device *rkisp1);
>  int rkisp1_params_register(struct rkisp1_device *rkisp1);
>  void rkisp1_params_unregister(struct rkisp1_device *rkisp1);
>  
> +#if IS_ENABLED(CONFIG_DEBUG_FS)
>  void rkisp1_debug_init(struct rkisp1_device *rkisp1);
>  void rkisp1_debug_cleanup(struct rkisp1_device *rkisp1);
> +#else
> +static inline void rkisp1_debug_init(struct rkisp1_device *rkisp1)
> +{
> +}
> +static inline void rkisp1_debug_cleanup(struct rkisp1_device *rkisp1)
> +{
> +}
> +#endif
>  
>  #endif /* _RKISP1_COMMON_H */
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

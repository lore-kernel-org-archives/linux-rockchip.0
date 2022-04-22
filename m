Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3712FC433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Apr 2022 16:49:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XZerw5zNETDW0DQwDNPi/H7cF10DTjNTMJ5Nfl2Qcb4=; b=kxQkuCCxYCNc+a
	+DyOTrZB8p9Znb+OWjnoafTYAvmBlSgCZ0257BCKeFk5rXLYCZIOWG8jyvi4CmtizdUfLIjWdW4OF
	vInUW5i+pwpMoq6xHzg1hcNpcUvJNU52yoA3lzaC610xmCIDoK7e0vOJFZTd51+CvVFGQcESAL76M
	FsVrliG3Bd5lNwRhFLshEQ7u4H4iYyjIzK6ZytK1zSEcecI3L77+3xzteK7vu4WhdmNfwhiyV/Udy
	Sj/FhLQKf0H0vPShHjH80vCOKCQ0Z+Vhks1HiYUZSipfKT2W4eYFi1ltQc9qhb4tGsse6GvaHwUzo
	DZeM4+WdiR3HU+LV9FNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhwT2-001Xh3-BZ; Fri, 22 Apr 2022 16:49:12 +0000
Received: from mail-oi1-x231.google.com ([2607:f8b0:4864:20::231])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhwSr-001Xe9-AU
 for linux-rockchip@lists.infradead.org; Fri, 22 Apr 2022 16:49:02 +0000
Received: by mail-oi1-x231.google.com with SMTP id s16so9714266oie.0
 for <linux-rockchip@lists.infradead.org>; Fri, 22 Apr 2022 09:48:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ukFSZ0c+ZlmfrRD+7vq2cqrIQ4lRoIzajrLlyX5Lu4g=;
 b=Ko7IVhOybo3oW8GcTV9klMNb4wS2aNSv/IHABXacdZBm3j4YlxTS2QOM/md2P+JrvV
 ewg3rUtGygI5ryu1EbC/tGsL0N4knwtpTLjshcEpoi/NUxjr4gsUNZjFomkuzd8ZoL5E
 NN7nCFWZnnqIsSIRlSYwS0XRoajXMtgdQzI+M7u4Th7Ecd4tRFbRoNDtWDGMt5duxNVK
 xcvD6tPp3n1ENZnD9JkBuSBqbALvyiQlWEakZhSi5gwEdsIh2st1t8gr2E2G0i90qUxR
 dztWeqcPeFDEp1NPENXcWBFN165vrqWOIYzw5GU4jsRB1q/XhgSjgv9kIShTtLCBENca
 QkPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ukFSZ0c+ZlmfrRD+7vq2cqrIQ4lRoIzajrLlyX5Lu4g=;
 b=SLv4t1yZH9FJDnFZcSsl+4YCFxitIsNZHI0Mhs+lv+TAJBtv1E9WJX6Ssu6iKWFGeF
 O6YVb5bjnYcFdCKIlSSr4m8mR8eoelSkWbEHG2NKpdvxgt5Y020vz6j8e4/CuQ6NjR/r
 E1RPUMtzmX6Rhucek2e4Yb3A7eEct+haYwRxM+0FIsUa+Af+RPrY17gCmtUWD8EnaRBk
 M1XT0BSxFdmNlmLKKyGFS1vwXOYFX1+JETNaFJUT/StIDhAphasX/cJf7RQSuhZkI2Qv
 ew1N+4sAAtdnfbqCPibKHeLo3oHOQuwOeDyS2foV+kQQfNEc9jciYu/OaFuhgNk+jdKB
 5Raw==
X-Gm-Message-State: AOAM530SFqOHOU38+0Eiwj5xD240rW9AyKu9s8DHQthXbkGNnlcypJSH
 LrglAMqs04wsxK1EWaWw2pqMlA==
X-Google-Smtp-Source: ABdhPJzZq1ctYQzQcwS6nlBbCYuC0/Mqp0MY5N3po+2Ix7V/5FCCzS9mfLS1toZrRPv+JdwbyI9pGQ==
X-Received: by 2002:a05:6808:2189:b0:322:e874:e8f2 with SMTP id
 be9-20020a056808218900b00322e874e8f2mr2731537oib.289.1650646138946; 
 Fri, 22 Apr 2022 09:48:58 -0700 (PDT)
Received: from eze-laptop ([190.190.187.68]) by smtp.gmail.com with ESMTPSA id
 s14-20020a0568302a8e00b006054e841915sm910651otu.73.2022.04.22.09.48.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Apr 2022 09:48:58 -0700 (PDT)
Date: Fri, 22 Apr 2022 13:48:52 -0300
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
To: Christopher Obbard <chris.obbard@collabora.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Johan Jonker <jbx6244@gmail.com>,
 Alex Bee <knaerzche@gmail.com>, Elaine Zhang <zhangqing@rock-chips.com>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCH 1/3] media: dt-bindings: media: rockchip-vdec: Add RK3328
 compatible
Message-ID: <YmLcdCridA6AKd51@eze-laptop>
References: <20220422133803.989256-1-chris.obbard@collabora.com>
 <20220422133803.989256-2-chris.obbard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220422133803.989256-2-chris.obbard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220422_094901_406400_DFFD5978 
X-CRM114-Status: GOOD (  13.68  )
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

On Fri, Apr 22, 2022 at 02:38:01PM +0100, Christopher Obbard wrote:
> Document the RK3328 compatible for rockchip-vdec.
> 
> Signed-off-by: Christopher Obbard <chris.obbard@collabora.com>

Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

> ---
>  Documentation/devicetree/bindings/media/rockchip,vdec.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
> index 089f11d21b25..23f9687d862c 100644
> --- a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
> +++ b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
> @@ -19,6 +19,7 @@ properties:
>        - const: rockchip,rk3399-vdec
>        - items:
>            - const: rockchip,rk3228-vdec
> +          - const: rockchip,rk3328-vdec
>            - const: rockchip,rk3399-vdec
>  
>    reg:
> -- 
> 2.34.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

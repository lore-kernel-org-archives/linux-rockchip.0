Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B867C282C6
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Mar 2025 01:30:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/FD+CCna1YJQ8kD3hR4IiwUxteuavkGciWVP+5ERoL0=; b=dciYc0H7V0y+YD
	CqDiE3pOvODCileQA5EWaO2Hbxy81iyJExnWuaPZlElJpulMR/J8BFhMspcpKN6Mc+ly/5G1wf+vD
	0il62uaIxSDO9B83ApXLRhXnMCcyk9sJPM59DNzl/HXggaonlkRK15wjoGhIiWMicBbLRCRfdrN0h
	aCQxEvR090YRLz2zHqqkN/b9b114vR+VHxY0d9IPfspotTNpH120STtIb6PfUZnaXdGjkX6/X0g3b
	Sr7cqtby0IOlqMGBGLrowNymDSmaQrfsDdNIYfPnZOzVnORhS3CeH0uvg1p4zql0xW4Gpg4wbH1I+
	XIidNhIaBwiplxywf+TQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpH6k-00000002lt9-25DN;
	Tue, 04 Mar 2025 01:30:06 +0000
Received: from mail-m1973171.qiye.163.com ([220.197.31.71])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpH6h-00000002lrl-0Sog;
	Tue, 04 Mar 2025 01:30:04 +0000
Received: from [172.16.12.69] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id ccfe72ea;
	Tue, 4 Mar 2025 09:29:50 +0800 (GMT+08:00)
Message-ID: <23e1ecc4-3386-426a-aa54-4d4c082cbf8a@rock-chips.com>
Date: Tue, 4 Mar 2025 09:29:33 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] drm/rockchip: lvds: move pclk preparation in with
 clk_get
To: Heiko Stuebner <heiko@sntech.de>
Cc: maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 tzimmermann@suse.de, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, quentin.schulz@cherry.de,
 Heiko Stuebner <heiko.stuebner@cherry.de>
References: <20250301173547.710245-1-heiko@sntech.de>
 <20250301173547.710245-2-heiko@sntech.de>
Content-Language: en-US
From: Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <20250301173547.710245-2-heiko@sntech.de>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0geSVZKGUxLGRgdT0tPGkxWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a955ec605ff09d6kunmccfe72ea
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NRA6Ohw4MjIPTk5RDQMfFEw1
	STgwCTRVSlVKTE9KS05KTEJKQklKVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBSUJPSTcG
DKIM-Signature: a=rsa-sha256;
	b=NT2a4TrfNHveU0WKU0cAELmP0ljXkFKmbmR1ctBGcFyu8WLiCoZsht0anu77GUKa5AtccuUkg1Me+L2dL+poI0ykVjLI+LutYB7K+KG5u8sQMvSIduszgTMLG9FivW+E7QpVxiy89qyzPWbzqPg9t5tc4hfPn5Fd9TziaYTgS7s=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=Q0Ngh3SqeCfbqYhzI50INne4PhUBwlC2LXyaQjmjVK8=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250303_173003_640251_53BA9D00 
X-CRM114-Status: GOOD (  22.37  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Heiko,


On 3/2/25 01:35, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@cherry.de>
> 
> The LVDS block needs a separate pclk only on some socs, so currently
> requests and prepares it in the soc-specific probe function, but common
> code is required to unprepare it in the error path or on driver remove.
> 
> While this works because clk_unprepare just does nothing if clk is NULL,
> this mismatch of who is responsible still is not very nice.
> The clock-framework already has a helper for clk-get-and-prepare even
> with devres support in devm_clk_get_prepared().
> 
> This will get and prepare the clock and also unprepare it on driver
> removal, saving the driver from having to handle it "manually".
> 
> Reviewed-by: Quentin Schulz <quentin.schulz@cherry.de>
> Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>

   Reviewed-by: Andy Yan <andy.yan@rock-chips.com>

> ---
>   drivers/gpu/drm/rockchip/rockchip_lvds.c | 19 +++----------------
>   1 file changed, 3 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_lvds.c b/drivers/gpu/drm/rockchip/rockchip_lvds.c
> index 385cf6881504..ecfae8d5da89 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_lvds.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_lvds.c
> @@ -448,15 +448,13 @@ struct drm_encoder_helper_funcs px30_lvds_encoder_helper_funcs = {
>   static int rk3288_lvds_probe(struct platform_device *pdev,
>   			     struct rockchip_lvds *lvds)
>   {
> -	int ret;
> -
>   	lvds->regs = devm_platform_ioremap_resource(pdev, 0);
>   	if (IS_ERR(lvds->regs))
>   		return PTR_ERR(lvds->regs);
>   
> -	lvds->pclk = devm_clk_get(lvds->dev, "pclk_lvds");
> +	lvds->pclk = devm_clk_get_prepared(lvds->dev, "pclk_lvds");
>   	if (IS_ERR(lvds->pclk)) {
> -		DRM_DEV_ERROR(lvds->dev, "could not get pclk_lvds\n");
> +		DRM_DEV_ERROR(lvds->dev, "could not get or prepare pclk_lvds\n");
>   		return PTR_ERR(lvds->pclk);
>   	}
>   
> @@ -480,12 +478,6 @@ static int rk3288_lvds_probe(struct platform_device *pdev,
>   		}
>   	}
>   
> -	ret = clk_prepare(lvds->pclk);
> -	if (ret < 0) {
> -		DRM_DEV_ERROR(lvds->dev, "failed to prepare pclk_lvds\n");
> -		return ret;
> -	}
> -
>   	return 0;
>   }
>   
> @@ -728,20 +720,15 @@ static int rockchip_lvds_probe(struct platform_device *pdev)
>   	dev_set_drvdata(dev, lvds);
>   
>   	ret = component_add(&pdev->dev, &rockchip_lvds_component_ops);
> -	if (ret < 0) {
> +	if (ret < 0)
>   		DRM_DEV_ERROR(dev, "failed to add component\n");
> -		clk_unprepare(lvds->pclk);
> -	}
>   
>   	return ret;
>   }
>   
>   static void rockchip_lvds_remove(struct platform_device *pdev)
>   {
> -	struct rockchip_lvds *lvds = platform_get_drvdata(pdev);
> -
>   	component_del(&pdev->dev, &rockchip_lvds_component_ops);
> -	clk_unprepare(lvds->pclk);
>   }
>   
>   struct platform_driver rockchip_lvds_driver = {

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 914E4C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Feb 2022 21:34:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Ha1yM47Xz79S9+ih+73MQUmqd+XM+ViCUyI6qHIZ8s=; b=dEuiT/23vZIakc
	sf8eP233IW3nfBPYNLdMwSGPVq0FDI00y4oZzpFBaiVSF8e3ZoLxMlUpuRXRunPbRkQDRCxs9DzOS
	dH+LIGg16z6xyW4kWKjdNh+cud1tDg31ZYBgUmSZVwKMNZn2d6TrQ/VvEfc8MqlPnmr1gD/rNXpBh
	nd7LloVKCNoLPHA5gExsXxPpQYeFvAHWxAW+JY4N9TbCQcoi6oJKmxNyYAbtk7OySARzNkF6/uIBF
	kKXvBb+JrTVOvTb3Cirll+ZXnCYHluoBZ+e0e2G6MTrBQBn3ZPnWnxosrMQ3cfKqmE6vv9Q4W856f
	zW9rgxq5Yn07e0MQNblA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nG6Dx-005TGa-OH; Fri, 04 Feb 2022 21:34:33 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nG6Dm-005TG0-QD; Fri, 04 Feb 2022 21:34:23 +0000
Received: from p508fdcd8.dip0.t-ipconnect.de ([80.143.220.216]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nG6Db-0003Tl-Cw; Fri, 04 Feb 2022 22:34:11 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: joro@8bytes.org, will@kernel.org, Robin Murphy <robin.murphy@arm.com>
Cc: iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] iommu/rockchip: : Use standard driver registration
Date: Fri, 04 Feb 2022 22:34:05 +0100
Message-ID: <4984895.Adqdaih0Sd@phil>
In-Reply-To: <c08d58bff340da6a829e76d66d2fa090a9718384.1644005728.git.robin.murphy@arm.com>
References: <05ca5e1b29bdd350f4e20b9ceb031a2c281e23d2.1644005728.git.robin.murphy@arm.com>
 <c08d58bff340da6a829e76d66d2fa090a9718384.1644005728.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220204_133422_903396_008FAF28 
X-CRM114-Status: GOOD (  17.33  )
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

Am Freitag, 4. Februar 2022, 21:16:41 CET schrieb Robin Murphy:
> It's been a long time since there was any reason to register IOMMU
> drivers early. Convert to the standard platform driver helper.
> 
> CC: Heiko Stuebner <heiko@sntech.de>
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

> ---
>  drivers/iommu/rockchip-iommu.c | 7 +------
>  1 file changed, 1 insertion(+), 6 deletions(-)
> 
> diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
> index 7f23ad61c094..204a93a72572 100644
> --- a/drivers/iommu/rockchip-iommu.c
> +++ b/drivers/iommu/rockchip-iommu.c
> @@ -1407,9 +1407,4 @@ static struct platform_driver rk_iommu_driver = {
>  		   .suppress_bind_attrs = true,
>  	},
>  };
> -
> -static int __init rk_iommu_init(void)
> -{
> -	return platform_driver_register(&rk_iommu_driver);
> -}
> -subsys_initcall(rk_iommu_init);
> +builtin_platform_driver(rk_iommu_driver);
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

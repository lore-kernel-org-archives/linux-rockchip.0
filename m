Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E061CC3DA66
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Aug 2023 19:22:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KhG8q17pCbi0buLKAJC4hzWUyKIaO+7XQgpWXuq0vxk=; b=cDx920+oUaC+47
	ssdgCTvfuuQIVQ7oOlrhucWFve3960aIMuiG0Fa6+yCr9J/xechUUYVSConCBnTzdEPLLs1SdQ3xF
	ByQW2tEoFVcj0FoXzL4hJlZZQT2xw01UMT9NeEmBxJvixcU9PpWYEpseDeKWo1wuLomMKiSPQUff2
	2zdExIhJmXzZHIFtlwCsMiiDMKJurnNVKadqh7N52ktgEhEtgffKf442OxNv+e82VcmOSmP1yZXsu
	JSVkf11M+m4FOzNGeTXuMEUvF/mkfobjFaQ2b9IRZKPV4x9d65REHtaGA73AKVsqxaylwHpNi2d4W
	wte63gSQtkL9eFRu7Uog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qYtQx-001PEt-2M;
	Wed, 23 Aug 2023 19:22:27 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYtQs-001PE5-2B;
	Wed, 23 Aug 2023 19:22:25 +0000
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-99cdb0fd093so811854266b.1;
        Wed, 23 Aug 2023 12:22:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692818539; x=1693423339;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4A7rqXZuJfU1yZs94XUAoV6PyvGVYswx1v0VPnHlBMo=;
        b=gABV0oZ48L/j5GWCIeTrExYiZi91ng21hl5xespzr8NB3S4D/8ftCqCb9FGv/K2afQ
         ArY+l6UCMD6gpiNzOX76C49BNHZlaVvwNz4QSSYAqxFtnH8PVkEBo0kfXRDoHKtHEK+T
         FynUDmVpnbZ5U4/SKWlUzkz3di/XO0oHHZQmgkk9wbopDuQsHvi0ko5qTL9BAomQkpJD
         8WAd6Neg4HzJ9SzKVoOlRMbblIRxX37RdOaWfPWyoBQOxhBb6ooBanHlud/zE7ql/74B
         GvCHfsDsKPKnVWXTnluLxnbqN0GYFfPQ9klsbR1I/RqmZuMePgFQ+Fuq1Wh+qi9cRwgB
         24JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692818539; x=1693423339;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4A7rqXZuJfU1yZs94XUAoV6PyvGVYswx1v0VPnHlBMo=;
        b=L4Keg1QtOlbLvDcd72p/vxvTnabZMwcuP9u036QxP0/QlRz4xs1AkgioLKWvJqaXEy
         gOhd5P+ndABF288aFPh8AHOzr1VGXRYMo8VhdMNVBumtwrMJEIVaVpgKkp8zJwNL1VkZ
         NP3vZctQmf7OS2E3uxVlgLF+AoBtQy3tmNZaM72QokwpLRMqqD/Aof33GNIAHIYYgOyf
         z28zabvkNv4jLoHEk/p1ZF70JQa57PGxqEHe0mrWVsIn8xo9gmGMwTMLIHu5C5jfvSkZ
         20FIvGSj765O1Y0Gk7kJhIEWHH6Xt/Lf4HjtIociog4OU+JKQOrC65X0PGzg1/bu/nB/
         tubQ==
X-Gm-Message-State: AOJu0YxSO+nqpmrqW2HTSu6Q8oCu1eQVmroto4c/2FuLOkQBXcj0WOLp
	W9O5jcIMR8xaWFLEwUsXNkA=
X-Google-Smtp-Source: AGHT+IHmo+7tkL57NnW1/dVyRTs/Uwxxxaw5Ytu+u/iQ6yK9cxjIxAGx4nZFFqWG6KJlM+8tYnkyww==
X-Received: by 2002:a17:906:5356:b0:9a1:abf8:76ad with SMTP id j22-20020a170906535600b009a1abf876admr6243155ejo.34.1692818538741;
        Wed, 23 Aug 2023 12:22:18 -0700 (PDT)
Received: from jernej-laptop.localnet (82-149-12-148.dynamic.telemach.net. [82.149.12.148])
        by smtp.gmail.com with ESMTPSA id i6-20020a170906264600b0099bd1ce18fesm10171343ejc.10.2023.08.23.12.22.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Aug 2023 12:22:17 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Baolin Wang <baolin.wang@linux.alibaba.com>,
 Heiko Stuebner <heiko@sntech.de>, iommu@lists.linux.dev,
 Joerg Roedel <joro@8bytes.org>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev,
 Orson Zhai <orsonzhai@gmail.com>, Robin Murphy <robin.murphy@arm.com>,
 Samuel Holland <samuel@sholland.org>, Chen-Yu Tsai <wens@csie.org>,
 Will Deacon <will@kernel.org>, Chunyan Zhang <zhang.lyra@gmail.com>,
 Jason Gunthorpe <jgg@nvidia.com>
Cc: Lu Baolu <baolu.lu@linux.intel.com>, Kevin Tian <kevin.tian@intel.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: [PATCH 3/7] iommu/sun50i: Convert to generic_single_device_group()
Date: Wed, 23 Aug 2023 21:22:15 +0200
Message-ID: <2152915.irdbgypaU6@jernej-laptop>
In-Reply-To: <3-v1-c869a95191f2+5e8-iommu_single_grp_jgg@nvidia.com>
References: <3-v1-c869a95191f2+5e8-iommu_single_grp_jgg@nvidia.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230823_122222_741469_20D5C4E8 
X-CRM114-Status: GOOD (  17.89  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Dne torek, 22. avgust 2023 ob 18:15:58 CEST je Jason Gunthorpe napisal(a):
> Use the new helper.
> 
> Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>

Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej

> ---
>  drivers/iommu/sun50i-iommu.c | 29 ++++++-----------------------
>  1 file changed, 6 insertions(+), 23 deletions(-)
> 
> diff --git a/drivers/iommu/sun50i-iommu.c b/drivers/iommu/sun50i-iommu.c
> index 74c5cb93e90027..b8df655185ab2a 100644
> --- a/drivers/iommu/sun50i-iommu.c
> +++ b/drivers/iommu/sun50i-iommu.c
> @@ -107,7 +107,6 @@ struct sun50i_iommu {
>  	struct clk *clk;
> 
>  	struct iommu_domain *domain;
> -	struct iommu_group *group;
>  	struct kmem_cache *pt_pool;
>  };
> 
> @@ -808,13 +807,6 @@ static struct iommu_device
> *sun50i_iommu_probe_device(struct device *dev) return &iommu->iommu;
>  }
> 
> -static struct iommu_group *sun50i_iommu_device_group(struct device *dev)
> -{
> -	struct sun50i_iommu *iommu = sun50i_iommu_from_dev(dev);
> -
> -	return iommu_group_ref_get(iommu->group);
> -}
> -
>  static int sun50i_iommu_of_xlate(struct device *dev,
>  				 struct of_phandle_args *args)
>  {
> @@ -828,7 +820,7 @@ static int sun50i_iommu_of_xlate(struct device *dev,
> 
>  static const struct iommu_ops sun50i_iommu_ops = {
>  	.pgsize_bitmap	= SZ_4K,
> -	.device_group	= sun50i_iommu_device_group,
> +	.device_group	= generic_single_device_group,
>  	.domain_alloc	= sun50i_iommu_domain_alloc,
>  	.of_xlate	= sun50i_iommu_of_xlate,
>  	.probe_device	= sun50i_iommu_probe_device,
> @@ -995,42 +987,36 @@ static int sun50i_iommu_probe(struct platform_device
> *pdev) if (!iommu->pt_pool)
>  		return -ENOMEM;
> 
> -	iommu->group = iommu_group_alloc();
> -	if (IS_ERR(iommu->group)) {
> -		ret = PTR_ERR(iommu->group);
> -		goto err_free_cache;
> -	}
> -
>  	iommu->base = devm_platform_ioremap_resource(pdev, 0);
>  	if (IS_ERR(iommu->base)) {
>  		ret = PTR_ERR(iommu->base);
> -		goto err_free_group;
> +		goto err_free_cache;
>  	}
> 
>  	irq = platform_get_irq(pdev, 0);
>  	if (irq < 0) {
>  		ret = irq;
> -		goto err_free_group;
> +		goto err_free_cache;
>  	}
> 
>  	iommu->clk = devm_clk_get(&pdev->dev, NULL);
>  	if (IS_ERR(iommu->clk)) {
>  		dev_err(&pdev->dev, "Couldn't get our clock.\n");
>  		ret = PTR_ERR(iommu->clk);
> -		goto err_free_group;
> +		goto err_free_cache;
>  	}
> 
>  	iommu->reset = devm_reset_control_get(&pdev->dev, NULL);
>  	if (IS_ERR(iommu->reset)) {
>  		dev_err(&pdev->dev, "Couldn't get our reset line.\n");
>  		ret = PTR_ERR(iommu->reset);
> -		goto err_free_group;
> +		goto err_free_cache;
>  	}
> 
>  	ret = iommu_device_sysfs_add(&iommu->iommu, &pdev->dev,
>  				     NULL, dev_name(&pdev->dev));
>  	if (ret)
> -		goto err_free_group;
> +		goto err_free_cache;
> 
>  	ret = iommu_device_register(&iommu->iommu, &sun50i_iommu_ops, 
&pdev->dev);
> if (ret)
> @@ -1049,9 +1035,6 @@ static int sun50i_iommu_probe(struct platform_device
> *pdev) err_remove_sysfs:
>  	iommu_device_sysfs_remove(&iommu->iommu);
> 
> -err_free_group:
> -	iommu_group_put(iommu->group);
> -
>  err_free_cache:
>  	kmem_cache_destroy(iommu->pt_pool);





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

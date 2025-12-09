Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20C9FD3B7EA
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Dec 2025 11:44:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=80RmX7gbdW2RU/rz73TkDoZkQNpsBNFNu3szOFil8JE=; b=CnCSWOualoPSoi
	yeu6S9IfX5BBdytSiuXX4AIeF0roOVNY4X0NJDQrWtAVnT8i8EDtdS/7aVzDiDPvvjX1d6QimFgah
	jo0nl+YMZ52oPMFS2/UgYwIjkEJ6l1RAI+hcQFjDGezztqoC2Zshoaes48D3zmwYj7UNHBFbZmQrh
	xPitnJ19IFTmxoRwYsraerZNpZe7zd5jbYlLz9znxt2qoVmMdy14wBifpNJr6Lwo4+79zzOQoSe1E
	HR/hBNHojKHbCiGZTOOLYMLgpPDUnKNUCdswXJxwQfnbhNYK4rQB9TtzK7ymz5/F5M5Km1CgN/R+3
	/u9Ccun97n8s1+AmWrAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSw8R-0000000ECkt-2P4v;
	Tue, 09 Dec 2025 11:44:03 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSw8O-0000000ECkB-3rQc;
	Tue, 09 Dec 2025 11:44:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1583A1691;
	Tue,  9 Dec 2025 03:43:52 -0800 (PST)
Received: from [10.57.46.210] (unknown [10.57.46.210])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D19653F762;
	Tue,  9 Dec 2025 03:43:57 -0800 (PST)
Message-ID: <e22ea775-84e3-4116-a81a-52031be9f176@arm.com>
Date: Tue, 9 Dec 2025 11:43:55 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] iommu/rockchip: Check of_find_device_by_node() return
 value
To: Haotian Zhang <vulab@iscas.ac.cn>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20251209113333.1086-1-vulab@iscas.ac.cn>
From: Robin Murphy <robin.murphy@arm.com>
Content-Language: en-GB
In-Reply-To: <20251209113333.1086-1-vulab@iscas.ac.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251209_034401_010972_B027CE1A 
X-CRM114-Status: GOOD (  14.94  )
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

On 2025-12-09 11:33 am, Haotian Zhang wrote:
> rk_iommu_of_xlate() calls of_find_device_by_node() without
> verifying it is non-NULL, which can lead to a NULL pointer
> dereference and crash.

No, it can't. Please look at how of_xlate is called - at this point we 
are looking up the IOMMU device, which has a driver bound to it, which 
has registered ops against this of_node that are the only way to reach 
this function in the first place. If the device could have somehow 
disappeared from underneath an active driver, this potential crash is 
the least of the kernel's worries...

Thanks,
Robin.

> Add a check for a NULL return from of_find_device_by_node()
> and return -ENODEV upon failure.
> 
> Fixes: 5fd577c3eac3 ("iommu/rockchip: Use OF_IOMMU to attach devices automatically")
> Signed-off-by: Haotian Zhang <vulab@iscas.ac.cn>
> ---
>   drivers/iommu/rockchip-iommu.c | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
> index 0861dd469bd8..e59d0617574b 100644
> --- a/drivers/iommu/rockchip-iommu.c
> +++ b/drivers/iommu/rockchip-iommu.c
> @@ -1153,6 +1153,8 @@ static int rk_iommu_of_xlate(struct device *dev,
>   	struct rk_iommudata *data;
>   
>   	iommu_dev = of_find_device_by_node(args->np);
> +	if (!iommu_dev)
> +		return -ENODEV;
>   
>   	data = devm_kzalloc(&iommu_dev->dev, sizeof(*data), GFP_KERNEL);
>   	if (!data)


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

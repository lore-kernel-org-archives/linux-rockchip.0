Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A0B5C07CA9
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Nov 2023 22:53:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uER5sLNMA83l/A/0gFOiSIF9fOMiE17/cStofBDysu8=; b=oma31MnKVhEwxa0HgPtscJeLbB
	HtewjklWkGKQ/ug8e93vcJbFHRQJJCGwOW7Yr0ky9L6r4mbxIr8Ns0L1/BpjEv2cTVWvuw2nQOSs3
	ylWRfkxt6j/MZr40glagb3cJKCVV1vVARxdVRXVLpvNIp6wEn0x3ow12gJRSxk2djkiDEOMeFZwAJ
	JSIj1SfV/+4OoXmoLJOjIpekm+7al7aeU+4vpLoZmkf+/rA8/m+n16bSN4AXRERDJWh762VbUNX/c
	AJcaXh376TwQ9/m0tNqpIRd36aiG7Xzr/SbvXsfK8s9RG8rS3URJphc3nfoz5B8x03CcQvka3WyzM
	pPhhNrPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r86xF-006Wth-2i;
	Tue, 28 Nov 2023 22:53:21 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r86xB-006Wrs-01;
	Tue, 28 Nov 2023 22:53:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8943E2F4;
	Tue, 28 Nov 2023 14:54:01 -0800 (PST)
Received: from [10.57.71.132] (unknown [10.57.71.132])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 723B13F6C4;
	Tue, 28 Nov 2023 14:53:06 -0800 (PST)
Message-ID: <1c6156de-c6c7-43a7-8c34-8239abee3978@arm.com>
Date: Tue, 28 Nov 2023 22:53:04 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 08/16] iommu/fsl: use page allocation function provided by
 iommu-pages.h
Content-Language: en-GB
To: Pasha Tatashin <pasha.tatashin@soleen.com>, akpm@linux-foundation.org,
 alex.williamson@redhat.com, alim.akhtar@samsung.com, alyssa@rosenzweig.io,
 asahi@lists.linux.dev, baolu.lu@linux.intel.com, bhelgaas@google.com,
 cgroups@vger.kernel.org, corbet@lwn.net, david@redhat.com,
 dwmw2@infradead.org, hannes@cmpxchg.org, heiko@sntech.de,
 iommu@lists.linux.dev, jasowang@redhat.com, jernej.skrabec@gmail.com,
 jgg@ziepe.ca, jonathanh@nvidia.com, joro@8bytes.org, kevin.tian@intel.com,
 krzysztof.kozlowski@linaro.org, kvm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, linux-rockchip@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-sunxi@lists.linux.dev,
 linux-tegra@vger.kernel.org, lizefan.x@bytedance.com, marcan@marcan.st,
 mhiramat@kernel.org, mst@redhat.com, m.szyprowski@samsung.com,
 netdev@vger.kernel.org, paulmck@kernel.org, rdunlap@infradead.org,
 samuel@sholland.org, suravee.suthikulpanit@amd.com, sven@svenpeter.dev,
 thierry.reding@gmail.com, tj@kernel.org, tomas.mudrunka@gmail.com,
 vdumpa@nvidia.com, virtualization@lists.linux.dev, wens@csie.org,
 will@kernel.org, yu-cheng.yu@intel.com
References: <20231128204938.1453583-1-pasha.tatashin@soleen.com>
 <20231128204938.1453583-9-pasha.tatashin@soleen.com>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20231128204938.1453583-9-pasha.tatashin@soleen.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_145317_091925_F09CC30B 
X-CRM114-Status: GOOD (  15.55  )
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

On 2023-11-28 8:49 pm, Pasha Tatashin wrote:
> Convert iommu/fsl_pamu.c to use the new page allocation functions
> provided in iommu-pages.h.

Again, this is not a pagetable. This thing doesn't even *have* pagetables.

Similar to patches #1 and #2 where you're lumping in configuration 
tables which belong to the IOMMU driver itself, as opposed to pagetables 
which effectively belong to an IOMMU domain's user. But then there are 
still drivers where you're *not* accounting similar configuration 
structures, so I really struggle to see how this metric is useful when 
it's so completely inconsistent in what it's counting :/

Thanks,
Robin.

> Signed-off-by: Pasha Tatashin <pasha.tatashin@soleen.com>
> ---
>   drivers/iommu/fsl_pamu.c | 5 +++--
>   1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/iommu/fsl_pamu.c b/drivers/iommu/fsl_pamu.c
> index f37d3b044131..7bfb49940f0c 100644
> --- a/drivers/iommu/fsl_pamu.c
> +++ b/drivers/iommu/fsl_pamu.c
> @@ -16,6 +16,7 @@
>   #include <linux/platform_device.h>
>   
>   #include <asm/mpc85xx.h>
> +#include "iommu-pages.h"
>   
>   /* define indexes for each operation mapping scenario */
>   #define OMI_QMAN        0x00
> @@ -828,7 +829,7 @@ static int fsl_pamu_probe(struct platform_device *pdev)
>   		(PAGE_SIZE << get_order(OMT_SIZE));
>   	order = get_order(mem_size);
>   
> -	p = alloc_pages(GFP_KERNEL | __GFP_ZERO, order);
> +	p = __iommu_alloc_pages(GFP_KERNEL, order);
>   	if (!p) {
>   		dev_err(dev, "unable to allocate PAACT/SPAACT/OMT block\n");
>   		ret = -ENOMEM;
> @@ -916,7 +917,7 @@ static int fsl_pamu_probe(struct platform_device *pdev)
>   		iounmap(guts_regs);
>   
>   	if (ppaact)
> -		free_pages((unsigned long)ppaact, order);
> +		iommu_free_pages(ppaact, order);
>   
>   	ppaact = NULL;
>   

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

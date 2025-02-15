Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1AB8C021A4
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Feb 2025 10:00:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=22cU+e0DHmT5jPhtmN7QUulJiNKoBNxz7E+VGgw6tkM=; b=Ofi8m/WshSAZ0C
	rSrTffzvMOEld0NYOtF4bfUBIShV3MUJ/ojvTqSdX5Fbx3PU2PJBtI9Kei1/vyE35hR/SOwsHI/Sj
	1wKxXTDNMK2L7gCupcQTI+ETJ3ggDMvVcMaroQLghQOmxpyhhXBrMm16FHjAGzQGdWrR5eHkfM2ki
	PT9Ql9+5fsXendmAt9e8u1yDvxwfh6ZhfsFoqtQ9kqQgWIq0mZwvc/gb0knR1MkG6+eVtzbOEyWkH
	GzQngWV3Zy9kb+m6c59QaJWxu6VyEN4HPCb81m+M52AalNNpsEP0TYy7gO396kBXtAq3NM8KqWSLC
	01VoYUdxFWDmYzSKyOHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tjEyH-0000000HOXQ-1qjq;
	Sat, 15 Feb 2025 10:00:25 +0000
Received: from mgamail.intel.com ([198.175.65.9])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tjEpA-0000000HNLG-1yDh;
	Sat, 15 Feb 2025 09:51:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1739613060; x=1771149060;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=MYtye3mXOSgmjNVwAdiLAWnVTAT6ccam/tc+AZHY5DU=;
  b=mjhbU+GTzvDhJAr1978ue7rsM8wxVYVYEiZptbfarIZQl9Po+D3uA6md
   oneL6qXUBvlig5eqlZUlNBh64vA8SuE3cACb3YfCLHx8pVMvGzvYXjups
   WjJbERIdRjzySQjZPaon/5dMzdO3xN8XsVETpcy5c/DG2AT1x1TGcvO27
   PbRxFPKtiR/UQROTfyw4iYAbXSYpsjQb8wpi6HDE+M/eQ4YGbR4FlKsID
   MzVDSmu9qHWqEu8jolUNnGAkfTEpDu4ctZM7IVY1Eo6nwAhzOyEGve052
   Ad9M87Qha2Jg/aDfnsEf5Fp3YhQJ7L0kIvFI37hChRzFDgSSD2DMiWLR8
   w==;
X-CSE-ConnectionGUID: CKjC3y4bSguxWC484j4fXA==
X-CSE-MsgGUID: YiTkGTiVSiyo9wycb3v2cg==
X-IronPort-AV: E=McAfee;i="6700,10204,11345"; a="62830874"
X-IronPort-AV: E=Sophos;i="6.13,288,1732608000"; 
   d="scan'208";a="62830874"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
  by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Feb 2025 01:50:56 -0800
X-CSE-ConnectionGUID: Wx9nhBKeSyWUiDCwEGa+UA==
X-CSE-MsgGUID: tBrnDxKzSJ2qq/G5C/lSng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,288,1732608000"; 
   d="scan'208";a="113858921"
Received: from allen-sbox.sh.intel.com (HELO [10.239.159.30]) ([10.239.159.30])
  by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Feb 2025 01:50:48 -0800
Message-ID: <d66e555b-8054-4f73-8077-201b51139773@linux.intel.com>
Date: Sat, 15 Feb 2025 17:47:51 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 23/23] iommu/pages: Remove iommu_alloc_pages_node()
To: Jason Gunthorpe <jgg@nvidia.com>, Alim Akhtar <alim.akhtar@samsung.com>,
 Alyssa Rosenzweig <alyssa@rosenzweig.io>, Albert Ou <aou@eecs.berkeley.edu>,
 asahi@lists.linux.dev, David Woodhouse <dwmw2@infradead.org>,
 Heiko Stuebner <heiko@sntech.de>, iommu@lists.linux.dev,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Joerg Roedel <joro@8bytes.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-riscv@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-sunxi@lists.linux.dev,
 linux-tegra@vger.kernel.org, Marek Szyprowski <m.szyprowski@samsung.com>,
 Hector Martin <marcan@marcan.st>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Robin Murphy
 <robin.murphy@arm.com>, Samuel Holland <samuel@sholland.org>,
 Suravee Suthikulpanit <suravee.suthikulpanit@amd.com>,
 Sven Peter <sven@svenpeter.dev>, Thierry Reding <thierry.reding@gmail.com>,
 Tomasz Jeznach <tjeznach@rivosinc.com>, Krishna Reddy <vdumpa@nvidia.com>,
 Chen-Yu Tsai <wens@csie.org>, Will Deacon <will@kernel.org>
Cc: Bagas Sanjaya <bagasdotme@gmail.com>, Joerg Roedel <jroedel@suse.de>,
 Pasha Tatashin <pasha.tatashin@soleen.com>, patches@lists.linux.dev,
 David Rientjes <rientjes@google.com>, Matthew Wilcox <willy@infradead.org>
References: <23-v2-545d29711869+a76b5-iommu_pages_jgg@nvidia.com>
Content-Language: en-US
From: Baolu Lu <baolu.lu@linux.intel.com>
In-Reply-To: <23-v2-545d29711869+a76b5-iommu_pages_jgg@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250215_015100_543037_C795768E 
X-CRM114-Status: GOOD (  13.07  )
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

On 2/15/25 01:07, Jason Gunthorpe wrote:
> diff --git a/drivers/iommu/intel/iommu.h b/drivers/iommu/intel/iommu.h
> index dd980808998da9..1036ed0d899472 100644
> --- a/drivers/iommu/intel/iommu.h
> +++ b/drivers/iommu/intel/iommu.h
> @@ -493,14 +493,13 @@ struct q_inval {
>   
>   /* Page Request Queue depth */
>   #define PRQ_ORDER	4
> -#define PRQ_RING_MASK	((0x1000 << PRQ_ORDER) - 0x20)
> -#define PRQ_DEPTH	((0x1000 << PRQ_ORDER) >> 5)
> +#define PRQ_SIZE	(SZ_4K << PRQ_ORDER)
> +#define PRQ_RING_MASK	(PRQ_SIZE - 0x20)
> +#define PRQ_DEPTH	(PRQ_SIZE >> 5)
>   
>   struct dmar_pci_notify_info;
>   
>   #ifdef CONFIG_IRQ_REMAP
> -/* 1MB - maximum possible interrupt remapping table size */

Can we keep this line of comment,

and move it ...

> -#define INTR_REMAP_PAGE_ORDER	8
>   #define INTR_REMAP_TABLE_REG_SIZE	0xf
>   #define INTR_REMAP_TABLE_REG_SIZE_MASK  0xf
>   
> diff --git a/drivers/iommu/intel/irq_remapping.c b/drivers/iommu/intel/irq_remapping.c
> index d6b796f8f100cd..735e26498ee9f2 100644
> --- a/drivers/iommu/intel/irq_remapping.c
> +++ b/drivers/iommu/intel/irq_remapping.c
> @@ -538,11 +538,10 @@ static int intel_setup_irq_remapping(struct intel_iommu *iommu)
>   	if (!ir_table)
>   		return -ENOMEM;
>   
> -	ir_table_base = iommu_alloc_pages_node(iommu->node, GFP_KERNEL,
> -					       INTR_REMAP_PAGE_ORDER);
> +	ir_table_base =

... here?

> +		iommu_alloc_pages_node_sz(iommu->node, GFP_KERNEL, SZ_1M);
>   	if (!ir_table_base) {
> -		pr_err("IR%d: failed to allocate pages of order %d\n",
> -		       iommu->seq_id, INTR_REMAP_PAGE_ORDER);
> +		pr_err("IR%d: failed to allocate 1M of pages\n", iommu->seq_id);
>   		goto out_free_table;
>   	}

Thanks,
baolu

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

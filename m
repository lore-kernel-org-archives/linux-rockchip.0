Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED573C0015E
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Aug 2023 01:52:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nbMgykqB1qSz6KHDP0viK4kEw+vctlpnYeYrYkla3Bw=; b=oDDTfemlYRUoLM
	Ft0EmmPL41nTd3zZFGyLds7B3FvlVA8a9Q4W/M6rMca0DZHntHmJCwtUqE8gSslYVP9PJA+3FQ6WT
	cMWL9u1RYbLyBjaRCDmfsD8Rs9WzmHXBU5c5iTPrtT7aWGDSN7jUzQGApIslSCruDNhcLwRvJwZI/
	p5/R+fZSZIRRJWc6sYJ4jiYL4LxMJVWpeX39VCqzBKsPsMmdl+v4akNb8k2RoPM/tGd/yuLSJ2PxQ
	UwEfFglU6NCPlQiAKjjEbj81cHfKvX1bFqS7dwlKIzWpX7MefszaPdtXoBA6XyBbMZIZXVgzZBoxD
	spWYOu12BSNiHsMKOemA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qUdnc-00COaJ-0m;
	Sat, 12 Aug 2023 01:52:16 +0000
Received: from mgamail.intel.com ([192.55.52.151])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qUdnY-00COYi-2B;
	Sat, 12 Aug 2023 01:52:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1691805132; x=1723341132;
  h=message-id:date:mime-version:cc:subject:to:references:
   from:in-reply-to:content-transfer-encoding;
  bh=eUUEU5LEbeviw+Tdt86pjS6LMPIps7FsAMnnYjoKRyE=;
  b=UZN6QFXkJu+bouzAW/U0dN6PbqgsL7qfMxWvh1wsxjaWTd5Ajxswjpq6
   aW9pVPY1lRDK3G2yKn91SG0pI8D7QU3/ftAT0FPXy+w7bPNYVgNPghSY1
   0nwYnMi1dKpWeq2sZ7AentbBtG/NRADCR8u6iqZ3Pf052iT+xnl8O02zq
   cnQYc+hd4HsdKnBrA06qm0PXq+z59J7vzrdteANNYvwXI9PP1NM/VgcJU
   7Dl6L3p5QFD6VeovONXhRQ6OdPrsrGtHko2L+q4L7eaQuzVBCZ5tB/qd0
   9N000sH+P/PCW8fcf1CSOHeRIYNdZN/iwLZytEKNW/lKHaD+WzRBCq01O
   A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10799"; a="352121579"
X-IronPort-AV: E=Sophos;i="6.01,167,1684825200"; 
   d="scan'208";a="352121579"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Aug 2023 18:52:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; 
   d="scan'208";a="876364144"
Received: from blu2-mobl.ccr.corp.intel.com (HELO [10.254.215.79]) ([10.254.215.79])
  by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Aug 2023 18:51:57 -0700
Message-ID: <6bb11581-4b24-1e54-d3f6-674cde3e4539@linux.intel.com>
Date: Sat, 12 Aug 2023 09:51:51 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Cc: baolu.lu@linux.intel.com, Dmitry Osipenko <digetx@gmail.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Nicolin Chen <nicolinc@nvidia.com>, Niklas Schnelle
 <schnelle@linux.ibm.com>, Steven Price <steven.price@arm.com>,
 Thierry Reding <treding@nvidia.com>
Subject: Re: [PATCH v6 06/25] iommu/tegra-gart: Remove tegra-gart
Content-Language: en-US
To: Jason Gunthorpe <jgg@nvidia.com>, Andy Gross <agross@kernel.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Bjorn Andersson
 <andersson@kernel.org>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Baolin Wang <baolin.wang@linux.alibaba.com>,
 Christophe Leroy <christophe.leroy@csgroup.eu>,
 Gerald Schaefer <gerald.schaefer@linux.ibm.com>,
 Heiko Stuebner <heiko@sntech.de>, iommu@lists.linux.dev,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Joerg Roedel <joro@8bytes.org>,
 Kevin Tian <kevin.tian@intel.com>, Konrad Dybcio <konrad.dybcio@linaro.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-s390@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-sunxi@lists.linux.dev, linux-tegra@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, linuxppc-dev@lists.ozlabs.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Matthew Rosato <mjrosato@linux.ibm.com>,
 Michael Ellerman <mpe@ellerman.id.au>, Nicholas Piggin <npiggin@gmail.com>,
 Orson Zhai <orsonzhai@gmail.com>, Rob Clark <robdclark@gmail.com>,
 Robin Murphy <robin.murphy@arm.com>, Samuel Holland <samuel@sholland.org>,
 Thierry Reding <thierry.reding@gmail.com>, Krishna Reddy
 <vdumpa@nvidia.com>, Chen-Yu Tsai <wens@csie.org>,
 Will Deacon <will@kernel.org>, Yong Wu <yong.wu@mediatek.com>,
 Chunyan Zhang <zhang.lyra@gmail.com>
References: <6-v6-e8114faedade+425-iommu_all_defdom_jgg@nvidia.com>
From: Baolu Lu <baolu.lu@linux.intel.com>
In-Reply-To: <6-v6-e8114faedade+425-iommu_all_defdom_jgg@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230811_185212_731052_3554B287 
X-CRM114-Status: GOOD (  20.37  )
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

On 2023/8/3 8:07, Jason Gunthorpe wrote:
> Thierry says this is not used anymore, and doesn't think it makes sense as
> an iommu driver. The HW it supports is about 10 years old now and newer HW
> uses different IOMMU drivers.
> 
> As this is the only driver with a GART approach, and it doesn't really
> meet the driver expectations from the IOMMU core, let's just remove it
> so we don't have to think about how to make it fit in.
> 
> It has a number of identified problems:
>   - The assignment of iommu_groups doesn't match the HW behavior
> 
>   - It claims to have an UNMANAGED domain but it is really an IDENTITY
>     domain with a translation aperture. This is inconsistent with the core
>     expectation for security sensitive operations
> 
>   - It doesn't implement a SW page table under struct iommu_domain so
>     * It can't accept a map until the domain is attached
>     * It forgets about all maps after the domain is detached
>     * It doesn't clear the HW of maps once the domain is detached
>       (made worse by having the wrong groups)
> 
> Cc: Thierry Reding<treding@nvidia.com>
> Cc: Dmitry Osipenko<digetx@gmail.com>
> Acked-by: Thierry Reding<treding@nvidia.com>
> Signed-off-by: Jason Gunthorpe<jgg@nvidia.com>
> ---
>   arch/arm/configs/multi_v7_defconfig |   1 -
>   arch/arm/configs/tegra_defconfig    |   1 -
>   drivers/iommu/Kconfig               |  11 -
>   drivers/iommu/Makefile              |   1 -
>   drivers/iommu/tegra-gart.c          | 371 ----------------------------
>   drivers/memory/tegra/mc.c           |  34 ---
>   drivers/memory/tegra/tegra20.c      |  28 ---
>   include/soc/tegra/mc.h              |  26 --
>   8 files changed, 473 deletions(-)
>   delete mode 100644 drivers/iommu/tegra-gart.c

Reviewed-by: Lu Baolu <baolu.lu@linux.intel.com>

Best regards,
baolu

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43779C41513
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Jul 2023 09:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XYwxT80iG/PPoYXpHUzbmOE0Q9N0DsV0vvAocH24hGY=; b=JhE013PI3aNb/V
	qzU/VrBlD8kcgUSaqTE0lrCCAqBhVfvAG6fuKWPp5STGniE4grXN33lx8JDMIE2YlJNVRrDC95lPr
	Nx5695+dNp4592jNtVjzrd5TDxv2Dfclp+aoi75ohWbyuOyEUC8Vm7ccGURNxttGqDjmBLQJn3a18
	i5MNFxhP+cIshm4jvYAECQ1mGqfpj8DvV0h/cmvk0L/hIy8mv6gHoielKebHlweVCg+49/LpYTeC8
	2kWJOhtQu7luW2pQT7XrtCiw4d42FJ84V6JU67dokBw+LXyQM7ocdz4eHHRsoV1P8vitGPZD5rPyj
	P+76z8TeOzNoDL2nz7Sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOatt-009kOT-1U;
	Wed, 26 Jul 2023 09:33:45 +0000
Received: from mga17.intel.com ([192.55.52.151])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOatp-009kLf-22;
	Wed, 26 Jul 2023 09:33:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1690364021; x=1721900021;
  h=message-id:date:mime-version:cc:subject:to:references:
   from:in-reply-to:content-transfer-encoding;
  bh=Ll36FTmiauk1Ig4tVtkzd2SFsMYrQLOvgACeMV/OFOs=;
  b=lVV5lr8UEic/Amxb7w9v0RN0o+Aoxi0d+wjP6V23GXEO9wlj0oTrgvJr
   JyfWEOfqAXr2JNgGPm7FNAOgQrgZe4hobvLRGUQwrHePQ5jWshO3prOsD
   uOc7rhBj8nYNaPoRYK4mTeBXPfWELHntEeAwfoADw0w0fXbDeMhoWGb0R
   zCEWIRnq++h0ygDtQZPVlutVhd4Osnb3kMG9g8arBcfZP3IofbXJ4/aUS
   NIw7CDBN7nlg8AAf5E1fB4zfbnucBkOEW3povp9WQSoCKZpEoKgM2jaFC
   L+CLGug2DJgzmjZRO5hKBUabAjalIpMTsHfvJsqoMFH++z5+U7RhbPYzi
   A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="348246013"
X-IronPort-AV: E=Sophos;i="6.01,231,1684825200"; 
   d="scan'208";a="348246013"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Jul 2023 02:33:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10782"; a="703667560"
X-IronPort-AV: E=Sophos;i="6.01,231,1684825200"; 
   d="scan'208";a="703667560"
Received: from blu2-mobl.ccr.corp.intel.com (HELO [10.254.208.129]) ([10.254.208.129])
  by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Jul 2023 02:33:26 -0700
Message-ID: <8bf0b97e-6fb9-f266-566f-6e5112df3c52@linux.intel.com>
Date: Wed, 26 Jul 2023 17:33:24 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Cc: baolu.lu@linux.intel.com, Dmitry Osipenko <digetx@gmail.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Nicolin Chen <nicolinc@nvidia.com>, Niklas Schnelle
 <schnelle@linux.ibm.com>, Steven Price <steven.price@arm.com>,
 Thierry Reding <treding@nvidia.com>
Subject: Re: [PATCH v5 08/25] iommu: Reorganize
 iommu_get_default_domain_type() to respect def_domain_type()
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
References: <8-v5-d0a204c678c7+3d16a-iommu_all_defdom_jgg@nvidia.com>
From: Baolu Lu <baolu.lu@linux.intel.com>
In-Reply-To: <8-v5-d0a204c678c7+3d16a-iommu_all_defdom_jgg@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230726_023341_718059_AE633BCC 
X-CRM114-Status: GOOD (  13.10  )
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

On 2023/7/25 1:21, Jason Gunthorpe wrote:
> Except for dart every driver returns 0 or IDENTITY from def_domain_type().
> 
> The drivers that return IDENTITY have some kind of good reason, typically
> that quirky hardware really can't support anything other than IDENTITY.
> 
> Arrange things so that if the driver says it needs IDENTITY then
> iommu_get_default_domain_type() either fails or returns IDENTITY.  It will
> never reject the driver's override to IDENTITY.
> 
> The only real functional difference is that the PCI untrusted flag is now
> ignored for quirky HW instead of overriding the IOMMU driver.
> 
> This makes the next patch cleaner that wants to force IDENTITY always for
> ARM_IOMMU because there is no support for DMA.
> 
> Tested-by: Steven Price<steven.price@arm.com>
> Tested-by: Marek Szyprowski<m.szyprowski@samsung.com>
> Tested-by: Nicolin Chen<nicolinc@nvidia.com>
> Signed-off-by: Jason Gunthorpe<jgg@nvidia.com>
> ---
>   drivers/iommu/iommu.c | 66 +++++++++++++++++++++----------------------
>   1 file changed, 33 insertions(+), 33 deletions(-)

Reviewed-by: Lu Baolu <baolu.lu@linux.intel.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

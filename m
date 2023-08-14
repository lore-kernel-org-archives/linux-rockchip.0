Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C93AC001B0
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Aug 2023 06:45:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BHT4BL4/quoMp3s+FGRT/xzjHrV/4U+dtbvtTd/ccvs=; b=epS0PMrkbIVq76
	A334tTi3DqxBQPj61OGnd1bOLDxgP5+3TrNnmAwolm9BOdB/Yh8CxC3ty4Sx+p6BTsbCsc9/hmYpa
	YpQeJDtc2LLTsgxkGZg1pWG2wqe1kY29lJNKLFUNId7mkrFchizC2xe45GRHhCjInqh+HC3wZ64ul
	fik+M/+y6jxJ/fZPWiid8II1Zz82BqrPL0fTO4LHFN89/iSUpdyUpPZDxZaveY9t3qCWulSJMCjxv
	8V8O3/F3XOgaR6yQ/0HvZRoge3bJxMZ3fPNOx/ZVSJnNAGRBPNy+N9zFfUQGhNn9g1ieBq6BBOVZ9
	rKq0oQ9RoNjjN91396VA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qVRKO-00GISG-2L;
	Mon, 14 Aug 2023 06:45:24 +0000
Received: from mgamail.intel.com ([192.55.52.93])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qVRKK-00GIQI-2V;
	Mon, 14 Aug 2023 06:45:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1691995520; x=1723531520;
  h=message-id:date:mime-version:cc:subject:to:references:
   from:in-reply-to:content-transfer-encoding;
  bh=s7w4QvLN+a+X+nJOo1ALAurEypsMjxpw55DQNKza1DY=;
  b=C1L/5BHvDnAYWVB/SZA1rzYtr58gor3Oi5Vh06sP1uKAUqyD3jtWA76K
   4eRjeDNC3SXqkPmys6GR48QCYD/GYJPuD/JGYzgNtZH7tZVEpAexTOaic
   DOPP9QY9Hy1ya0m1lbFnBtqBqxwPz+b5muC1JAlfSJl6UJyreBUEeqrjp
   W9aVlLwgaghOpAWq5SxxyYaZE3kj9gIrwbXHOJTTgf8C8aEd30qeMZQGM
   PSRgxbWF6roV3QX4V8yQFJM9g1WWHfjVQmMfKkjCUx+hTmVBfc9jvBM59
   OAHgtRwg3bPdW4oyBAY/2xprL+iXrGNH1gzpTxtQ/zMLqjIpcxV3TX2Xn
   A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10801"; a="369445396"
X-IronPort-AV: E=Sophos;i="6.01,171,1684825200"; 
   d="scan'208";a="369445396"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Aug 2023 23:45:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10801"; a="856979583"
X-IronPort-AV: E=Sophos;i="6.01,171,1684825200"; 
   d="scan'208";a="856979583"
Received: from blu2-mobl.ccr.corp.intel.com (HELO [10.254.215.205]) ([10.254.215.205])
  by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Aug 2023 23:44:52 -0700
Message-ID: <be5ce6ed-f078-a466-1d03-867e3cc4d6ee@linux.intel.com>
Date: Mon, 14 Aug 2023 14:44:50 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Cc: baolu.lu@linux.intel.com, Dmitry Osipenko <digetx@gmail.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Nicolin Chen <nicolinc@nvidia.com>, Niklas Schnelle
 <schnelle@linux.ibm.com>, Steven Price <steven.price@arm.com>,
 Thierry Reding <treding@nvidia.com>
Subject: Re: [PATCH v6 20/25] iommu/sun50i: Add an IOMMU_IDENTITIY_DOMAIN
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
References: <20-v6-e8114faedade+425-iommu_all_defdom_jgg@nvidia.com>
From: Baolu Lu <baolu.lu@linux.intel.com>
In-Reply-To: <20-v6-e8114faedade+425-iommu_all_defdom_jgg@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230813_234520_839785_A32BD063 
X-CRM114-Status: GOOD (  19.19  )
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

On 2023/8/3 8:08, Jason Gunthorpe wrote:
> Prior to commit 1b932ceddd19 ("iommu: Remove detach_dev callbacks") the
> sun50i_iommu_detach_device() function was being called by
> ops->detach_dev().
> 
> This is an IDENTITY domain so convert sun50i_iommu_detach_device() into
> sun50i_iommu_identity_attach() and a full IDENTITY domain and thus hook it
> back up the same was as the old ops->detach_dev().
> 
> Signed-off-by: Jason Gunthorpe<jgg@nvidia.com>
> ---
>   drivers/iommu/sun50i-iommu.c | 26 +++++++++++++++++++-------
>   1 file changed, 19 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/iommu/sun50i-iommu.c b/drivers/iommu/sun50i-iommu.c
> index 74c5cb93e90027..0bf08b120cf105 100644
> --- a/drivers/iommu/sun50i-iommu.c
> +++ b/drivers/iommu/sun50i-iommu.c
> @@ -757,21 +757,32 @@ static void sun50i_iommu_detach_domain(struct sun50i_iommu *iommu,
>   	iommu->domain = NULL;
>   }
>   
> -static void sun50i_iommu_detach_device(struct iommu_domain *domain,
> -				       struct device *dev)
> +static int sun50i_iommu_identity_attach(struct iommu_domain *identity_domain,
> +					struct device *dev)
>   {
> -	struct sun50i_iommu_domain *sun50i_domain = to_sun50i_domain(domain);
>   	struct sun50i_iommu *iommu = dev_iommu_priv_get(dev);
> +	struct sun50i_iommu_domain *sun50i_domain;
>   
>   	dev_dbg(dev, "Detaching from IOMMU domain\n");
>   
> -	if (iommu->domain != domain)
> -		return;
> +	if (iommu->domain == identity_domain)
> +		return 0;
>   
> +	sun50i_domain = to_sun50i_domain(iommu->domain);
>   	if (refcount_dec_and_test(&sun50i_domain->refcnt))
>   		sun50i_iommu_detach_domain(iommu, sun50i_domain);
> +	return 0;
>   }

Does iommu->domain need to be set to identity_domain before returning?

Best regards,
baolu


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

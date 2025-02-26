Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CD2FC021BC
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Feb 2025 06:42:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nUxlHmny58fAReLvV89e+qvk+51Wbuf4WoyeDd8eVoI=; b=j5nVpjwdgPbAA1
	WZYnUVL94ITdpB0aRXwtRvrW0mnzvpEv6k2u+QAyxZ0Oc8TXx/7+a8cxtqyJ0Ey3eU+fZv25iR5Yf
	BQewc4ZVDHERNy92uowlDzhcF4mgAU9NxLIHWzjhKiXSzRXx5tn/z493Zpz9u4sAHorOMeb0Y8wXP
	AmdzqVMTD0p9RYKPzXQs81Y/Z49wWGrdDfg04ayylUKfWlBuvQe0sEy59rknDmti6bF1zjSb/boUm
	/QHTje5ECKxm75duqYso5qfRT4FHBl9iTOmCPh+ECk+NrFcdTh5ubAjKwghl5pPd3wupPBB5rLXxm
	+Dbwa+9fuwoTldlc/QBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnB7i-00000002ZUQ-2FEk;
	Wed, 26 Feb 2025 06:42:26 +0000
Received: from mgamail.intel.com ([198.175.65.20])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnB5A-00000002YwY-3j5u;
	Wed, 26 Feb 2025 06:39:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1740551989; x=1772087989;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=wEZYyMMMYY0p/InDFAWstpwiUT9Y8kIbFfE8GirQgHM=;
  b=Z2J7sN5T+Pm5D4SEJxAaShuQZnjiWtCS6PGYa7AChH4yoUvXJRPwNaMH
   9N2Ft8BKQAZcFMu4kBtG27EubQiev5S2482dex9NmO5PhiS29kxvgEX+a
   +M2xhdAnwomCApiyrOsv6OiG5PqAvTHj/gZORnx2vzOxr2uiosOFyRmGO
   5+omYyfSSt/oh2Qb2V7tWHaHLbwKtyeACE9QFdRM2/4dKVZyNlcSFIynb
   0HSxbXwS91ptyTQQhHivj/7kULrIonsfUVArQBi4d6mbNesmJHMim9DWf
   p0WgMdEAJOKPsiHjmmnZkzmqwh0V3/UnSeU+o0Wvj7+wLPf0nnDUSR1Zs
   Q==;
X-CSE-ConnectionGUID: 5Inct43XSseA1G7mellnPw==
X-CSE-MsgGUID: RHb15ktxRxejt5jO25n1vg==
X-IronPort-AV: E=McAfee;i="6700,10204,11356"; a="41088229"
X-IronPort-AV: E=Sophos;i="6.13,316,1732608000"; 
   d="scan'208";a="41088229"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
  by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Feb 2025 22:39:48 -0800
X-CSE-ConnectionGUID: gk0tSm0GSMuWy8te+oesQA==
X-CSE-MsgGUID: B4sm4s2nRNO85JsKQGxg/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,316,1732608000"; 
   d="scan'208";a="116810017"
Received: from allen-sbox.sh.intel.com (HELO [10.239.159.30]) ([10.239.159.30])
  by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Feb 2025 22:35:53 -0800
Message-ID: <a60cb386-0387-4889-8f9b-88f01cf9408a@linux.intel.com>
Date: Wed, 26 Feb 2025 14:32:38 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 05/23] iommu/pages: Remove the order argument to
 iommu_free_pages()
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
References: <5-v3-e797f4dc6918+93057-iommu_pages_jgg@nvidia.com>
Content-Language: en-US
From: Baolu Lu <baolu.lu@linux.intel.com>
In-Reply-To: <5-v3-e797f4dc6918+93057-iommu_pages_jgg@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250225_223949_011720_9F79F7EB 
X-CRM114-Status: UNSURE (   9.65  )
X-CRM114-Notice: Please train this message.
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

On 2/26/25 03:39, Jason Gunthorpe wrote:
> Now that we have a folio under the allocation iommu_free_pages() can know
> the order of the original allocation and do the correct thing to free it.
> 
> The next patch will rename iommu_free_page() to iommu_free_pages() so we
> have naming consistency with iommu_alloc_pages_node().
> 
> Signed-off-by: Jason Gunthorpe<jgg@nvidia.com>

For changes in intel iommu driver,

Reviewed-by: Lu Baolu <baolu.lu@linux.intel.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D43BDEB64DA
	for <linux-rockchip@archiver.kernel.org>; Sat, 22 Jul 2023 14:01:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Az633rpvNC8VCd23peFwXIA8WUXgasyQurqtdJfZTzs=; b=g6AsR0QNjzOYv+
	7kCzrXwl7/2/zZQF6Am312YZ1ptI1JMCM8yr/3ToNJSWROJ/01Q01vqgasNfj7Gd8O3V3b32Gjp1g
	wGK9FGH3KrL19IIlBM12PsjJdQQcXJ7xiQk/1wyAwJKQqXEkll8mSXsQAgl9u9u+nqonXt2nCJQJZ
	4IZNaoi+qZzvMe7S9Ym41FqMkM90/X887u/gbd9k95Sq1xPzxDgtIIKKvVKRkU5GAHAGynnj/DULh
	miBUctc+zLqMmVY0TDETCigoraLm+ZJ43RzZirXanEmo0DweT8CrTMS8+8nOePs3nzxK0Okjqj2DB
	fN8bAaejUzMsM/Y2bPPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qNDAb-00GowS-0e;
	Sat, 22 Jul 2023 14:01:17 +0000
Received: from mga01.intel.com ([192.55.52.88])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qNDAY-00Gov7-0n;
	Sat, 22 Jul 2023 14:01:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1690034474; x=1721570474;
  h=message-id:date:mime-version:cc:subject:to:references:
   from:in-reply-to:content-transfer-encoding;
  bh=fyulF7Tr+j4LZay3c2TRm4558/eA92Ao/qgr4Ol3LFc=;
  b=juvqow9JuN7AM5DqVIRPVavjl9ygIHm4H4OEBnbEeHeMIwO7+RHog7ro
   YaeQoRM5VIhU09VVBI/vs0GWuV96+oM+K9clqq8Nq4wyAFUTf5pwVVZcg
   mYMZdk+9Mb7jDNcmZUVzRwy0EMAKqoBbeiTydMEkpokuLsam5oJKFgLF7
   NlKHnnr/9Iqg7e3U0/Nm+wHh5Wu879QXdXoRsJUypMt+i3wGCKHRbambx
   K+YoEVt/lVv+f/X2xx95TI666NzAxL1rQwh0jTaXbgulD8C46V9vdueFD
   S8coxU/CqPqfiMIsUKH7ef7/Nn08+6fp3MeRFuOgSVdedwONyv2mIuiZX
   g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10779"; a="398089974"
X-IronPort-AV: E=Sophos;i="6.01,224,1684825200"; 
   d="scan'208";a="398089974"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Jul 2023 07:01:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10779"; a="760278657"
X-IronPort-AV: E=Sophos;i="6.01,224,1684825200"; 
   d="scan'208";a="760278657"
Received: from blu2-mobl.ccr.corp.intel.com (HELO [10.249.173.108]) ([10.249.173.108])
  by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Jul 2023 07:01:06 -0700
Message-ID: <1122d8bf-b10f-9376-e103-5fa9a0cba561@linux.intel.com>
Date: Sat, 22 Jul 2023 22:01:04 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Cc: baolu.lu@linux.intel.com, Baolin Wang <baolin.wang@linux.alibaba.com>,
 David Woodhouse <dwmw2@infradead.org>, Heiko Stuebner <heiko@sntech.de>,
 iommu@lists.linux.dev, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Joerg Roedel <joro@8bytes.org>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev,
 Orson Zhai <orsonzhai@gmail.com>, Robin Murphy <robin.murphy@arm.com>,
 Samuel Holland <samuel@sholland.org>, Chen-Yu Tsai <wens@csie.org>,
 Will Deacon <will@kernel.org>, Chunyan Zhang <zhang.lyra@gmail.com>,
 Alex Williamson <alex.williamson@redhat.com>
Subject: Re: [PATCH 03/10] iommu: Add generic_single_device_group()
Content-Language: en-US
To: Jason Gunthorpe <jgg@nvidia.com>
References: <3-v1-3c8177327a47+256-iommu_group_locking_jgg@nvidia.com>
 <32eadc5b-bb39-5bb1-f124-44feead97ce9@linux.intel.com>
 <ZLkiu7IyimCckiFs@nvidia.com>
 <c98c37bb-57c5-faec-1d17-730f3ceb2b21@linux.intel.com>
 <ZLq+PzR57D+RN2JF@nvidia.com>
From: Baolu Lu <baolu.lu@linux.intel.com>
In-Reply-To: <ZLq+PzR57D+RN2JF@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230722_070114_321554_BBF9B010 
X-CRM114-Status: GOOD (  15.27  )
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

On 2023/7/22 1:19, Jason Gunthorpe wrote:
> On Thu, Jul 20, 2023 at 10:01:54PM +0800, Baolu Lu wrote:
> 
>> Then, another small comment:
>>
>> iommu->singleton_group will be freed with above put, right? Do you need
>> to set iommu->singleton_group to NULL? Given that iommu_device is not
>> freed here.
> Well, I think the general API is we expect the caller to free the
> iommu_device after calling unregister so this would be like all the
> other places we free or put something then go on to release the
> memory.
> 
> At the very least if the caller thinks it should re-use the
> iommu_device then it needs to zero it.
> 
> Notice this also doesn't hold the lock while putting it, we require no
> concurrent calls to probe with unregister.

Fair enough. Thanks for the explanation.

Best regards,
baolu

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

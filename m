Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CBDC8C4167B
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Nov 2023 23:08:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/TWC7xACdOD38HrRQEYvYWPzRNcTyvLdLn8f2xp1DIA=; b=DFlt//VpPSiRHW
	04ID47Dz6QVyVHoueuBULOlQd77nCUJ0HjDNjhIJmYMJOfzm+6XBzCGLefnI4h/dsUCZ3rF7u3/uS
	IlFQBQ7epX5XOHd0lXHND8zv7opOdCXGka7Pop2O3WkvvtDhkdPydqxaf8AMPxNsJg2J2dpGVIu5R
	LIzingM1UIVHUPRsBTh0ebnwSDJPkXOXmSO+6lgVNB8rxyafQ53BFeBQHUp0VfJmMm/Q/f8LPbF0s
	HSvrYGSW12rQqLQ0iDgRbHxqHs5yAQIUPf5Z0m3DXayhVh5+pLrlN9Q4mxFf/2jBDqFY+gES/vJcC
	UScL1SW7F8kJE2KYoqkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r87BY-006Yfd-27;
	Tue, 28 Nov 2023 23:08:08 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r87BU-006Ydc-0k;
	Tue, 28 Nov 2023 23:08:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4E29F2F4;
	Tue, 28 Nov 2023 15:08:49 -0800 (PST)
Received: from [10.57.71.132] (unknown [10.57.71.132])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 205E23F6C4;
	Tue, 28 Nov 2023 15:07:53 -0800 (PST)
Message-ID: <6f9ff0aa-7713-4de1-869e-4725828942e4@arm.com>
Date: Tue, 28 Nov 2023 23:07:52 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 05/16] iommu/io-pgtable-arm-v7s: use page allocation
 function provided by iommu-pages.h
Content-Language: en-GB
To: Pasha Tatashin <pasha.tatashin@soleen.com>
Cc: akpm@linux-foundation.org, alex.williamson@redhat.com,
 alim.akhtar@samsung.com, alyssa@rosenzweig.io, asahi@lists.linux.dev,
 baolu.lu@linux.intel.com, bhelgaas@google.com, cgroups@vger.kernel.org,
 corbet@lwn.net, david@redhat.com, dwmw2@infradead.org, hannes@cmpxchg.org,
 heiko@sntech.de, iommu@lists.linux.dev, jasowang@redhat.com,
 jernej.skrabec@gmail.com, jgg@ziepe.ca, jonathanh@nvidia.com,
 joro@8bytes.org, kevin.tian@intel.com, krzysztof.kozlowski@linaro.org,
 kvm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-doc@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 linux-rockchip@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-sunxi@lists.linux.dev, linux-tegra@vger.kernel.org,
 lizefan.x@bytedance.com, marcan@marcan.st, mhiramat@kernel.org,
 mst@redhat.com, m.szyprowski@samsung.com, netdev@vger.kernel.org,
 paulmck@kernel.org, rdunlap@infradead.org, samuel@sholland.org,
 suravee.suthikulpanit@amd.com, sven@svenpeter.dev, thierry.reding@gmail.com,
 tj@kernel.org, tomas.mudrunka@gmail.com, vdumpa@nvidia.com,
 virtualization@lists.linux.dev, wens@csie.org, will@kernel.org,
 yu-cheng.yu@intel.com
References: <20231128204938.1453583-1-pasha.tatashin@soleen.com>
 <20231128204938.1453583-6-pasha.tatashin@soleen.com>
 <8e1961c9-0359-4450-82d8-2b2fcb2c5557@arm.com>
 <CA+CK2bDFAi1+397fd4cYetUgmHxqE2hUG4fa2m9Fi3weykQdpA@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <CA+CK2bDFAi1+397fd4cYetUgmHxqE2hUG4fa2m9Fi3weykQdpA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_150804_630934_3A8BB3E7 
X-CRM114-Status: UNSURE (   6.65  )
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

On 2023-11-28 10:55 pm, Pasha Tatashin wrote:
>>>                kmem_cache_free(data->l2_tables, table);
> 
> We only account page allocations, not subpages, however, this is
> something I was surprised about this particular architecture of why do
> we allocate l2 using kmem ? Are the second level tables on arm v7s
> really sub-page in size?

Yes, L2 tables are 1KB, so the kmem_cache could still quite easily end 
up consuming significantly more memory than the L1 table, which is 
usually 16KB (but could potentially be smaller depending on the config, 
or up to 64KB with the Mediatek hacks).

Thanks,
Robin.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

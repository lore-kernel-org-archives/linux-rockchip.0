Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67680C6FD1F
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Mar 2023 16:04:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vp5Z245hcZZBygixfIZnLW1HKaxFQ0C0cGx48cU16Yk=; b=1SkWXRZNeEuTik
	I7OQg2m7MKxRta7RYnWzEjFWJs6B52tzMvdpLLZOuTM3OpMynsGCRZvzgeVZLrYpQql9grdS6oQSQ
	wSkHLc5sOSPpm+Zwy0OiqXaalAfEq4V9Nj2nxaw38bdKaTssQcubw7x0jeQxLEJ8suiBElbfyFJCc
	1jPtD+oDHhdHPSe9vYAhxV/msPUYh3sIyLCpMR6qgZ4+mys0hfs8WDa21bi7im9TB7ax/TpNtyl3u
	soIB+l82jNBfhqPZOpc/j8RHjzGBAtyWapwVFO0fLKu0T0Ltz8gBgNUzjGGgPPJjfLUB08kYqryfj
	ae3e5sj1CCmB8P7ExCyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pf0x2-00GaXc-30;
	Wed, 22 Mar 2023 16:04:36 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pf0wz-00GaVi-2s;
	Wed, 22 Mar 2023 16:04:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 851724B3;
	Wed, 22 Mar 2023 09:05:13 -0700 (PDT)
Received: from [10.57.53.137] (unknown [10.57.53.137])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B0C013F67D;
	Wed, 22 Mar 2023 09:04:27 -0700 (PDT)
Message-ID: <bee3e168-3fc3-89e8-6b10-a830f052cf55@arm.com>
Date: Wed, 22 Mar 2023 16:04:25 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] iommu/rockchip: Add missing set_platform_dma_ops callback
Content-Language: en-GB
To: Jason Gunthorpe <jgg@ziepe.ca>
Cc: Heiko Stuebner <heiko@sntech.de>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Lu Baolu <baolu.lu@linux.intel.com>
References: <20230315164152.333251-1-steven.price@arm.com>
 <ZBnBU9OU4iV6CV0W@ziepe.ca> <85607806-b888-2d5e-67a4-e9d63ebd1976@arm.com>
 <ZBr5e6tn1i7EE/16@ziepe.ca> <a5b946f0-5be8-a656-a8d5-1cd75399f0c4@arm.com>
 <ZBsb01emBJJMZIt0@ziepe.ca>
From: Steven Price <steven.price@arm.com>
In-Reply-To: <ZBsb01emBJJMZIt0@ziepe.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230322_090433_986593_7186A718 
X-CRM114-Status: GOOD (  17.50  )
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

On 22/03/2023 15:16, Jason Gunthorpe wrote:
> On Wed, Mar 22, 2023 at 03:08:41PM +0000, Steven Price wrote:
>> @@ -1035,8 +1055,9 @@ static int rk_iommu_attach_device(struct iommu_domain *domain,
>>  	if (iommu->domain == domain)
>>  		return 0;
>>  
>> -	if (iommu->domain)
>> -		rk_iommu_detach_device(iommu->domain, dev);
>> +	ret = rk_iommu_identity_attach(&rk_identity_domain, dev);
>> +	if (ret)
>> +		return ret;
> 
>>  
>>  	iommu->domain = domain;
>>  
>> @@ -1049,8 +1070,6 @@ static int rk_iommu_attach_device(struct iommu_domain *domain,
>>  		return 0;
>>  
>>  	ret = rk_iommu_enable(iommu);
>> -	if (ret)
>> -		rk_iommu_detach_device(iommu->domain, dev);
> 
> I think this still needs error handling, it should put it back to the
> identity domain and return an error code if it fails to attach to the
> requested domain.

What confused me here is that there's already a call to
rk_iommu_identity_attach() just above. But I can obviously add a...

       if (ret)
               rk_iommu_identity_attach(&rk_identity_domain, dev);

... in here. But I don't know how to handle an error from
rk_iommu_identity_attach() at this point. Does it need handling - is a
WARN_ON sufficient?

> It should also initlaize iommu->domain to the identity domain when the
> iommu struct is allocated. The iommu->domain should never be
> NULL. identity domain means the IOMMU is turned off which was
> previously called "detached".

I presume you mean in rk_iommu_probe()?

> Otherwise it looks like I would expect, thanks

Ok, I'll give it a spin with the above changes and post a v2 of this patch.

Thanks,

Steve


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

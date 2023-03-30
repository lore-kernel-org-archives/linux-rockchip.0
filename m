Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CA5EC761A6
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Mar 2023 14:32:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TxOIRqDkvUZiMBShN1TdBVr5oSQPCsgptgwfketc+GU=; b=wOuxqXwCqPx9ky
	Gwyk6A4LdHhPBHt2AjyWACbLGCgUfd22viJ3v2p/7yiFSMY6n5L4bCyqzrOBjtLIrLYleTZbPBhSd
	7MW26p0m7EcUgfYgwHPzMQ38jyfEFdXzO7+vE1/vf9vqXkWoetkxREiszzEw2l4t0XxFuqrp8214J
	IEuWnP6a0dCIy7NA4Ewp4xg41+28cJalyFdbGTfBJy25qCPWLW9FmyHm5sS3lphv1wbH7SmJYZlga
	F7Z/pJHf154x00+jR7lL7MyLgE+50XAiIQlo6Rv5vE26OXF0IPe0z5LCUU/8AuxdFa7lRcArkqRgH
	keyT+z32jq2tIXy+0LIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1phtKR-0045rA-3A;
	Thu, 30 Mar 2023 14:32:39 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1phtKN-0045q1-33;
	Thu, 30 Mar 2023 14:32:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9203B12FC;
	Thu, 30 Mar 2023 07:33:16 -0700 (PDT)
Received: from [10.1.35.23] (e122027.cambridge.arm.com [10.1.35.23])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DB1073F663;
	Thu, 30 Mar 2023 07:32:30 -0700 (PDT)
Message-ID: <864ef90a-c235-1e72-7941-6766541bb199@arm.com>
Date: Thu, 30 Mar 2023 15:32:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v2] iommu/rockchip: Add missing set_platform_dma_ops
 callback
Content-Language: en-GB
To: Jason Gunthorpe <jgg@ziepe.ca>, John Keeping <john@metanate.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20230324111127.221640-1-steven.price@arm.com>
 <ZCGpmHUWyZVaeIIx@donbot> <ZCG1v9hRybc/951e@ziepe.ca>
From: Steven Price <steven.price@arm.com>
In-Reply-To: <ZCG1v9hRybc/951e@ziepe.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230330_073236_031563_5474DADC 
X-CRM114-Status: GOOD (  18.06  )
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

On 27/03/2023 16:26, Jason Gunthorpe wrote:
> On Mon, Mar 27, 2023 at 03:35:04PM +0100, John Keeping wrote:
>> On Fri, Mar 24, 2023 at 11:11:27AM +0000, Steven Price wrote:
>>> Similar to exynos, we need a set_platform_dma_ops() callback for proper
>>> operation on ARM 32 bit after recent changes in the IOMMU framework
>>> (detach ops removal). But also the use of a NULL domain is confusing.
>>>
>>> Rework the code to have a singleton rk_identity_domain which is assigned
>>> to domain when using an identity mapping rather than "detaching". This
>>> makes the code easier to reason about.
>>>
>>> Signed-off-by: Steven Price <steven.price@arm.com>
>>> ---
>>> Changes since v1[1]:
>>>
>>>  * Reworked the code to avoid a NULL domain, instead a singleton
>>>    rk_identity_domain is used instead. The 'detach' language is no
>>>    longer used.
>>>
>>> [1] https://lore.kernel.org/r/20230315164152.333251-1-steven.price%40arm.com
>>>
>>>  drivers/iommu/rockchip-iommu.c | 50 ++++++++++++++++++++++++++--------
>>>  1 file changed, 39 insertions(+), 11 deletions(-)
>>>
>>> diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
>>> index f30db22ea5d7..437541004994 100644
>>> --- a/drivers/iommu/rockchip-iommu.c
>>> +++ b/drivers/iommu/rockchip-iommu.c
>> [snip]
>>> +static struct iommu_domain rk_identity_domain = {
>>> +	.type = IOMMU_DOMAIN_IDENTITY,
>>> +	.ops = &rk_identity_ops,
>>> +};
>>> +
>>> +#ifdef CONFIG_ARM
>>
>> Is this #ifdef needed?  I can't see anything ARM-specific about this
>> function or .set_platform_dma_ops.
> 
> set_platform_dma_ops is never called on ARM64.

I have to admit this was somewhat cargo-culted from the exynos-iommu
change. This is only needed for Arm, but I'm not sure if there's any
real harm including it for other arches.

>> Not shown in the patch are the pm_runtime hooks.  Do they need to
>> change like this?
> 
> Most likely yes

Good spot - I'll send a v3 with this fixed.

Thanks,

Steve


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3059EB64D9
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jun 2023 21:55:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:From:References:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xVsyIchIzY6bXdatvUWCtQbGZi/fcBV8VGMFG3nsUDc=; b=gINbFGbn2CZiir
	dSpRJ0lt4YfAXY9P4Ep7nMZuUZIoBhSi9hsUG+Ua7hYjAcJHtTKviu3jFAs1q27Z7FHRgQ3kGiGRc
	gDnT7GuQh4yzRkjnYTTeETLnBi1KHm/SjnTZuoH8TZ3TRU+xpmJhn04Jr9yEzs3aTEc/JX06o36ff
	7n3R8Pp5o6+bIWl3Zy7aOfzoKWRflqAGK6Ix8pAs7KLq2Ad02xlGCPZHjYyr2m8elJzCAMJ+WfWcM
	4hoyOBMIsuEKKe/fDRX9Tcp6DVO/uEqT2YF9ylEmbdvAJsoWryRWBNKUFyUVYB0r6kMKGvT6ovWbd
	TN0LgvcURbJyyZ3AiYYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9uwH-00GC0N-0f;
	Thu, 15 Jun 2023 21:55:33 +0000
Received: from s.wrqvtbkv.outbound-mail.sendgrid.net ([149.72.123.24])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9uwE-00GBzG-1D
	for linux-rockchip@lists.infradead.org;
	Thu, 15 Jun 2023 21:55:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
	h=mime-version:subject:references:from:in-reply-to:to:cc:content-type:
	content-transfer-encoding:cc:content-type:from:subject:to;
	s=s1; bh=pmSNmFv8Qq/2rHp1zEKtJzjGqmBa6T/jN8+FgSZUDls=;
	b=p6CehaPAY1h1iCF05fwKdPovmHB53S/8IxXG0tcYDMWyFkOf5JLAeooCwDkP7SYvxKqq
	LWrrFfGnFNB/obKwzPNQYfwfFOmy8fO9OJ5ZZp5h+npxbUzRJKoK2p4u0xefHqElmQ4WZH
	kunhtv9sOH1ZIligw0EuMryiRJfa2wG5OswWHs1cR+Vy6s/0i7iwGUsFTxR444ucu44iGg
	OizU3T0TNVpM/Z2b8YsLf9AwfARu4FlCNMhfkeFJYDLf9CjWNq5T/ViRHRhc6cSSZRiFRS
	StFScmxsB6hEk2nIuN+0jSMaRW6lFL1sovqweKtwRUPfxy8THF1k+Q3FUvmCRcOQ==
Received: by filterdrecv-8684c58db7-nd6mk with SMTP id filterdrecv-8684c58db7-nd6mk-1-648B88CB-19
        2023-06-15 21:55:23.885959543 +0000 UTC m=+3104213.148175023
Received: from [192.168.1.50] (unknown)
	by geopod-ismtpd-9 (SG) with ESMTP
	id SyILOUxbSpSZyd76TgqJvw
	Thu, 15 Jun 2023 21:55:23.448 +0000 (UTC)
Message-ID: <76bd851f-ce85-4695-2f6c-797019f50ba6@kwiboo.se>
Date: Thu, 15 Jun 2023 21:55:24 +0000 (UTC)
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH v2 1/3] iommu: rockchip: Fix discovery table address
 encoding
Content-Language: en-US
References: <20230615201042.2291867-1-jonas@kwiboo.se>
 <20230615201042.2291867-2-jonas@kwiboo.se>
 <81ea403e-1279-bb01-9b74-51afd6d8532b@arm.com>
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <81ea403e-1279-bb01-9b74-51afd6d8532b@arm.com>
X-SG-EID: =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0h7EUeRq2SPOAxvJSb?=
 =?us-ascii?Q?IwwbxO8yaLTE9GQ552mGiSuOFkpow81qZjI9loa?=
 =?us-ascii?Q?ewxGLE8qaAGjuXJiqPzIky7teT5aRw5+2SMezIV?=
 =?us-ascii?Q?pspUFzMhSOjWCDLiD42LRLMkwB6dFCv8YJyl1wS?=
 =?us-ascii?Q?ynCvKcC8OWYM0Qqcywh630vi2UFfoc2lJovSFui?=
 =?us-ascii?Q?k6ULY1VIMFDM1EL10ngFg=3D=3D?=
To: Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>,
	Will Deacon <will@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Joerg Roedel <jroedel@suse.de>
X-Entity-ID: P7KYpSJvGCELWjBME/J5tg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230615_145531_143875_8F843F3E 
X-CRM114-Status: GOOD (  21.45  )
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

On 2023-06-15 23:24, Robin Murphy wrote:
> On 2023-06-15 21:10, Jonas Karlman wrote:
>> The address to the discovery table is currently encoded using the
>> following bit layout.
>>
>>   31:12 - Address bit 31:0
>>   11: 4 - Address bit 39:32
>>
>> This is also the bit layout used by the vendor kernel.
>>
>> However, testing has shown that addresses to the discovery/page tables
>> and memory pages are all encoded using the same bit layout.
>>
>> IOMMU v1:
>>   31:12 - Address bit 31:0
>>
>> IOMMU v2:
>>   31:12 - Address bit 31:0
>>   11: 8 - Address bit 35:32
>>    7: 4 - Address bit 39:36
>>
>> Change to use the mk_dtentries ops to encode the discovery table address
> 
> Nit: s/discovery/directory/g

Oops, will fix in entire series in a v3 :-)

> 
>> correctly. Also update the bit layout comment for the page address.
>>
>> These changes render the dte_addr_phys and dma_addr_dte ops unused
>> and will be removed in a following patch.
> 
> TBH I'd just squash that into this patch - we don't gain anything from 
> leaving dead code in stable kernels, and at worst it just stands to make 
> future fixes harder to backport.

Make sense, will squash them in v3.

> 
>> Fixes: 227014b33f62 ("iommu: rockchip: Add internal ops to handle variants")
>> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
>> ---
>> v2:
>> - replace currently with correctly in commit message
>>
>>   drivers/iommu/rockchip-iommu.c | 8 ++++----
>>   1 file changed, 4 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
>> index 4054030c3237..d46319f77e5c 100644
>> --- a/drivers/iommu/rockchip-iommu.c
>> +++ b/drivers/iommu/rockchip-iommu.c
>> @@ -278,8 +278,8 @@ static u32 rk_mk_pte(phys_addr_t page, int prot)
>>   /*
>>    * In v2:
>>    * 31:12 - Page address bit 31:0
>> - *  11:9 - Page address bit 34:32
>> - *   8:4 - Page address bit 39:35
>> + * 11: 8 - Page address bit 35:32
>> + *  7: 4 - Page address bit 39:36
>>    *     3 - Security
>>    *     2 - Writable
>>    *     1 - Readable
>> @@ -577,7 +577,7 @@ static void log_iova(struct rk_iommu *iommu, int index, dma_addr_t iova)
>>   	page_offset = rk_iova_page_offset(iova);
>>   
>>   	mmu_dte_addr = rk_iommu_read(base, RK_MMU_DTE_ADDR);
>> -	mmu_dte_addr_phys = rk_ops->dte_addr_phys(mmu_dte_addr);
>> +	mmu_dte_addr_phys = rk_ops->pt_address(mmu_dte_addr);
>>   
>>   	dte_addr_phys = mmu_dte_addr_phys + (4 * dte_index);
>>   	dte_addr = phys_to_virt(dte_addr_phys);
>> @@ -967,7 +967,7 @@ static int rk_iommu_enable(struct rk_iommu *iommu)
>>   
>>   	for (i = 0; i < iommu->num_mmu; i++) {
>>   		rk_iommu_write(iommu->bases[i], RK_MMU_DTE_ADDR,
>> -			       rk_ops->dma_addr_dte(rk_domain->dt_dma));
>> +			       rk_ops->mk_dtentries(rk_domain->dt_dma));
> 
> Hmm, this writes the RK_DTE_PT_VALID bit into the register as well - 
> does that really make sense?

On v1 bit 11:0 behave as read-only and on v2 bit 3:0 behave read-only.
Writing anything to those bits read back as 0, so was safe to write
RK_DTE_PT_VALID. Should probably mention this in a comment in v3.

Regards,
Jonas

> 
> Thanks,
> Robin.
> 
>>   		rk_iommu_base_command(iommu->bases[i], RK_MMU_CMD_ZAP_CACHE);
>>   		rk_iommu_write(iommu->bases[i], RK_MMU_INT_MASK, RK_MMU_IRQ_MASK);
>>   	}


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

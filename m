Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E719DC433F5
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Dec 2021 15:18:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2ttXVZahQ9l8iaEUXx+CL2FtoU1bBHHVyKyeB++YElo=; b=nYUkDw1VarfXDm2PhdXhrcn961
	dD0NNfnae7eGZr4s3878xrSEIhbH1A92fGYJOiha/c4e2KF5ISkYqqhJtrZp49lAyRu3HAvZjjg8m
	gAkG4F+jqHl8rq4ZCkQ33jLv/+uGoGtfAN5xyu3j1g6bpgf/0lkABBffEKiep3BHnD1lIlLKzX2XB
	7XApDGh4InH/5z1a69HzF3op0f5rwNa2b1WGx3sCof4rgrwNPqELlxkci/Of9n8nCnllOEseOqot3
	b+alWvkkpT5qNw3dyxijWmIe2Wo1skC6yxawb7QEZELb7Yf/k0Avd89Dletz1bCCew3yMnkR5W2fd
	/SGTwKbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mvLBe-00GUd4-6Y; Thu, 09 Dec 2021 15:18:22 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mvLBR-00GUbE-8b; Thu, 09 Dec 2021 15:18:11 +0000
Received: from [IPv6:2a00:c281:116d:6e00:fc62:11d2:8888:d1c2] (unknown
 [IPv6:2a00:c281:116d:6e00:fc62:11d2:8888:d1c2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 519131F46AE0;
 Thu,  9 Dec 2021 15:18:05 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=collabora.com; s=mail;
 t=1639063086; bh=PvBermt9OIB2MrzZGzf2i2aw653bppK0Ghohxx6azxg=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=kWL3dv6I0rmt0Rz1gl/BpvxuAWxzotGnhsv5K7sPHz63MN2edoTBsOEuF3sQRUso5
 vA6OkJgZ7BVpSTx98N2WzFTdA3GrtDcLyZsF/N4q/rDwou+l5vcWrzy3W8JPcAZgak
 gnc51YAXwvVUKx4Mj3IvF/cvGD8jzyz7Z2pDmvm52K7tPaDsNEzxEu+KoUO3R2FrrH
 xpd54zRL49UeceZokXoiQPthNt+zDXXjgMbnBShW6X+IO6ClNDZAwfW7khIxBJt4Xb
 WzxBnnzDFLjQUEBuFqO3lvy+QLXcCdFCPZwjagmlk5o8PXaoxFxzy6GXsMBdcU1G1A
 5S0mg89Z4TdFQ==
Subject: Re: [PATCH] CHROMIUM: iommu: rockchip: Make sure that page table
 state is coherent
To: Tomasz Figa <tfiga@chromium.org>, Joerg Roedel <joro@8bytes.org>
Cc: iommu@lists.linux-foundation.org, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Heiko Stuebner <heiko@sntech.de>, Daniel Kurtz <djkurtz@chromium.org>,
 Collabora Kernel ML <kernel@collabora.com>
References: <1423480761-33453-1-git-send-email-tfiga@chromium.org>
 <20150303133659.GD10502@8bytes.org>
 <CAAFQd5Abk6X7AVTFaNuUSiShn31pzwwTE3VjfLnE4kyziAjy2A@mail.gmail.com>
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Message-ID: <21bb5af8-1d59-9369-6008-2fd7e88007eb@collabora.com>
Date: Thu, 9 Dec 2021 17:18:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <CAAFQd5Abk6X7AVTFaNuUSiShn31pzwwTE3VjfLnE4kyziAjy2A@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211209_071809_631989_8F08FCF2 
X-CRM114-Status: GOOD (  57.57  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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



On 23.03.15 10:38, Tomasz Figa wrote:
> Sorry, I had to dig my way out through my backlog.
> 
> On Tue, Mar 3, 2015 at 10:36 PM, Joerg Roedel <joro@8bytes.org> wrote:
>> On Mon, Feb 09, 2015 at 08:19:21PM +0900, Tomasz Figa wrote:
>>> Even though the code uses the dt_lock spin lock to serialize mapping
>>> operation from different threads, it does not protect from IOMMU
>>> accesses that might be already taking place and thus altering state
>>> of the IOTLB. This means that current mapping code which first zaps
>>> the page table and only then updates it with new mapping which is
>>> prone to mentioned race.
>>
>> Could you elabortate a bit on the race and why it is sufficient to zap
>> only the first and the last iova? From the description and the comments
>> in the patch this is not clear to me.
> 
> Let's start with why it's sufficient to zap only first and last iova.
> 
> While unmapping, the driver zaps all iovas belonging to the mapping,
> so the page tables not used by any mapping won't be cached. Now when
> the driver creates a mapping it might end up occupying several page
> tables. However, since the mapping area is virtually contiguous, only
> the first and last page table can be shared with different mappings.
> This means that only first and last iovas can be already cached. In
> fact, we could detect if first and last page tables are shared and do
> not zap at all, but this wouldn't really optimize too much. Why
> invalidating one iova is enough to invalidate the whole page table is
> unclear to me as well, but it seems to be the correct way on this
> hardware.

Hi,
It seems to me that actually each mapping needs exactly one page.
Since (as the inline doc in rk_iommu_map states) the pgsize_bitmap
makes sure that iova mappings fits exactly into one page table
since the mapping size is maximum 4M.

This actually means that if rk_dte_get_page_table does not allocate a
new page table but returns one that is already partially used from previous
mappings then two page tables might be required, but I think the iova
allocation somehow make sure that this will not be the case.

If it was the case then the code would be buggy because it means
that the loop in rk_iommu_map_iova will write behind the page table
given in rk_dte_get_page_table (which we didn't allocate)

So I it seems to me that calling 'rk_iommu_zap_iova(rk_domain, iova, SPAGE_SIZE);'
as done before this patch should be used, but be moved from
rk_dte_get_page_table to where rk_iommu_zap_iova_first_last is now

Thanks,
Dafna

> 
> As for the race, it's also kind of explained by the above. The already
> running hardware can trigger page table look-ups in the IOMMU and so
> caching of the page table between our zapping and updating its
> contents. With this patch zapping is performed after updating the page
> table so the race is gone.
> 
> Best regards,
> Tomasz
> 
>  From mboxrd@z Thu Jan  1 00:00:00 1970
> Return-Path: <linux-kernel-owner@vger.kernel.org>
> Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
> 	id S1753210AbbCWM3R (ORCPT <rfc822;w@1wt.eu>);
> 	Mon, 23 Mar 2015 08:29:17 -0400
> Received: from 8bytes.org ([81.169.241.247]:33957 "EHLO theia.8bytes.org"
> 	rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
> 	id S1752552AbbCWM3M (ORCPT <rfc822;linux-kernel@vger.kernel.org>);
> 	Mon, 23 Mar 2015 08:29:12 -0400
> Date: Mon, 23 Mar 2015 13:29:10 +0100
> From: Joerg Roedel <joro@8bytes.org>
> To: Tomasz Figa <tfiga@chromium.org>
> Cc: iommu@lists.linux-foundation.org,
>          "linux-arm-kernel@lists.infradead.org"
> 	<linux-arm-kernel@lists.infradead.org>,
>          "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
>          "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
>          Heiko Stuebner <heiko@sntech.de>, Daniel Kurtz <djkurtz@chromium.org>
> Subject: Re: [PATCH] CHROMIUM: iommu: rockchip: Make sure that page table
>   state is coherent
> Message-ID: <20150323122910.GO4441@8bytes.org>
> References: <1423480761-33453-1-git-send-email-tfiga@chromium.org>
>   <20150303133659.GD10502@8bytes.org>
>   <CAAFQd5Abk6X7AVTFaNuUSiShn31pzwwTE3VjfLnE4kyziAjy2A@mail.gmail.com>
> MIME-Version: 1.0
> Content-Type: text/plain; charset=us-ascii
> Content-Disposition: inline
> In-Reply-To: <CAAFQd5Abk6X7AVTFaNuUSiShn31pzwwTE3VjfLnE4kyziAjy2A@mail.gmail.com>
> User-Agent: Mutt/1.5.21 (2010-09-15)
> Sender: linux-kernel-owner@vger.kernel.org
> List-ID: <linux-kernel.vger.kernel.org>
> X-Mailing-List: linux-kernel@vger.kernel.org
> 
> Hi Tomasz,
> 
> On Mon, Mar 23, 2015 at 05:38:45PM +0900, Tomasz Figa wrote:
>> While unmapping, the driver zaps all iovas belonging to the mapping,
>> so the page tables not used by any mapping won't be cached. Now when
>> the driver creates a mapping it might end up occupying several page
>> tables. However, since the mapping area is virtually contiguous, only
>> the first and last page table can be shared with different mappings.
>> This means that only first and last iovas can be already cached. In
>> fact, we could detect if first and last page tables are shared and do
>> not zap at all, but this wouldn't really optimize too much. Why
>> invalidating one iova is enough to invalidate the whole page table is
>> unclear to me as well, but it seems to be the correct way on this
>> hardware.
>>
>> As for the race, it's also kind of explained by the above. The already
>> running hardware can trigger page table look-ups in the IOMMU and so
>> caching of the page table between our zapping and updating its
>> contents. With this patch zapping is performed after updating the page
>> table so the race is gone.
> 
> Okay, this makes sense. Can you add this information to the patch
> changelog and resend please?
> 
> Thanks,
> 
> 	Joerg
> 
> 
>  From mboxrd@z Thu Jan  1 00:00:00 1970
> From: Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
> Subject: [PATCH] CHROMIUM: iommu: rockchip: Make sure that page table state is
> 	coherent
> Date: Mon,  9 Feb 2015 20:19:21 +0900
> Message-ID: <1423480761-33453-1-git-send-email-tfiga@chromium.org>
> Mime-Version: 1.0
> Content-Type: text/plain; charset="us-ascii"
> Content-Transfer-Encoding: 7bit
> Return-path: <iommu-bounces-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org>
> List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/iommu>,
> 	<mailto:iommu-request-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org?subject=unsubscribe>
> List-Archive: <http://lists.linuxfoundation.org/pipermail/iommu/>
> List-Post: <mailto:iommu-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org>
> List-Help: <mailto:iommu-request-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org?subject=help>
> List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/iommu>,
> 	<mailto:iommu-request-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org?subject=subscribe>
> Sender: iommu-bounces-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org
> Errors-To: iommu-bounces-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org
> To: iommu-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org
> Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Daniel Kurtz <djkurtz-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
> List-Id: iommu@lists.linux-foundation.org
> 
> Even though the code uses the dt_lock spin lock to serialize mapping
> operation from different threads, it does not protect from IOMMU
> accesses that might be already taking place and thus altering state
> of the IOTLB. This means that current mapping code which first zaps
> the page table and only then updates it with new mapping which is
> prone to mentioned race.
> 
> In addition, current code assumes that mappings are always > 4 MiB
> (which translates to 1024 PTEs) and so they would always occupy
> entire page tables. This is not true for mappings created by V4L2
> Videobuf2 DMA contig allocator.
> 
> This patch changes the mapping code to always zap the page table
> after it is updated, which avoids the aforementioned race and also
> zap the last page of the mapping to make sure that stale data is
> not cached from an already existing mapping.
> 
> Signed-off-by: Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
> Reviewed-by: Daniel Kurtz <djkurtz-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
> ---
>   drivers/iommu/rockchip-iommu.c | 23 +++++++++++++++++------
>   1 file changed, 17 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
> index 6a8b1ec..b06fe76 100644
> --- a/drivers/iommu/rockchip-iommu.c
> +++ b/drivers/iommu/rockchip-iommu.c
> @@ -544,6 +544,15 @@ static void rk_iommu_zap_iova(struct rk_iommu_domain *rk_domain,
>   	spin_unlock_irqrestore(&rk_domain->iommus_lock, flags);
>   }
>   
> +static void rk_iommu_zap_iova_first_last(struct rk_iommu_domain *rk_domain,
> +					 dma_addr_t iova, size_t size)
> +{
> +	rk_iommu_zap_iova(rk_domain, iova, SPAGE_SIZE);
> +	if (size > SPAGE_SIZE)
> +		rk_iommu_zap_iova(rk_domain, iova + size - SPAGE_SIZE,
> +					SPAGE_SIZE);
> +}
> +
>   static u32 *rk_dte_get_page_table(struct rk_iommu_domain *rk_domain,
>   				  dma_addr_t iova)
>   {
> @@ -568,12 +577,6 @@ static u32 *rk_dte_get_page_table(struct rk_iommu_domain *rk_domain,
>   	rk_table_flush(page_table, NUM_PT_ENTRIES);
>   	rk_table_flush(dte_addr, 1);
>   
> -	/*
> -	 * Zap the first iova of newly allocated page table so iommu evicts
> -	 * old cached value of new dte from the iotlb.
> -	 */
> -	rk_iommu_zap_iova(rk_domain, iova, SPAGE_SIZE);
> -
>   done:
>   	pt_phys = rk_dte_pt_address(dte);
>   	return (u32 *)phys_to_virt(pt_phys);
> @@ -623,6 +626,14 @@ static int rk_iommu_map_iova(struct rk_iommu_domain *rk_domain, u32 *pte_addr,
>   
>   	rk_table_flush(pte_addr, pte_count);
>   
> +	/*
> +	 * Zap the first and last iova to evict from iotlb any previously
> +	 * mapped cachelines holding stale values for its dte and pte.
> +	 * We only zap the first and last iova, since only they could have
> +	 * dte or pte shared with an existing mapping.
> +	 */
> +	rk_iommu_zap_iova_first_last(rk_domain, iova, size);
> +
>   	return 0;
>   unwind:
>   	/* Unmap the range of iovas that we just mapped */
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0FBF5D2A537
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Oct 2024 17:40:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ykmZ3OXneRvhepRiPtLhnFxUh2ARrsJnxJj3Vh+yew8=; b=aQmtg+2/pduYzm
	rSKyTyHEGMjzPoyOLAbq4K4DvC/H5fkHshITI3jgk3w6SmDIo1iW+sUJ/tumTZLLR4vAELWAdq3qB
	729hcUqdgbhYOXCSF22j37lo1cGNXGzqYb3vm2T6LyFaMCa12HRCX7xP/DBXIV3h+1q6deagH5Pm9
	k7uJH2pliL4R2qfLgUygIg4aps84WvHSwOefFmpOzMVGebeNKhiq2XDLsDY/jUVVPVVoGsiFzUaAb
	yf7Tt77PlRinRx6YvalWIGoStFsX1qZHYBuQlIV6OyNzm998p2wI1a6wicCua/jJAwp0rS1BHoRAy
	d4Owkz/KK/CdoTNo8oRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t180A-0000000CZtR-2lki;
	Wed, 16 Oct 2024 17:40:02 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t17yi-0000000CZef-1GhU;
	Wed, 16 Oct 2024 17:38:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A6A28FEC;
	Wed, 16 Oct 2024 10:38:58 -0700 (PDT)
Received: from [10.57.87.74] (unknown [10.57.87.74])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 253D33F528;
	Wed, 16 Oct 2024 10:38:25 -0700 (PDT)
Message-ID: <b5e89288-d1c9-4c10-91b3-b1351b623ce6@arm.com>
Date: Wed, 16 Oct 2024 18:38:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 02/15] drm/rockchip: Set dma mask to 64 bit
To: Andy Yan <andyshrk@163.com>, heiko@sntech.de
Cc: hjc@rock-chips.com, krzk+dt@kernel.org, robh@kernel.org,
 conor+dt@kernel.org, s.hauer@pengutronix.de, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 derek.foreman@collabora.com, minhuadotchen@gmail.com,
 detlev.casanova@collabora.com, Andy Yan <andy.yan@rock-chips.com>
References: <20240920081626.6433-1-andyshrk@163.com>
 <20240920082036.6623-1-andyshrk@163.com>
From: Robin Murphy <robin.murphy@arm.com>
Content-Language: en-GB
In-Reply-To: <20240920082036.6623-1-andyshrk@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_103832_467654_A09510E3 
X-CRM114-Status: GOOD (  24.24  )
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

On 2024-09-20 9:20 am, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> The vop mmu support translate physical address upper 4 GB to iova
> below 4 GB. So set dma mask to 64 bit to indicate we support address
>> 4GB.
> 
> This can avoid warnging message like this on some boards with DDR
>> 4 GB:
> 
> rockchip-drm display-subsystem: swiotlb buffer is full (sz: 266240 bytes), total 32768 (slots), used 130 (slots)
> rockchip-drm display-subsystem: swiotlb buffer is full (sz: 266240 bytes), total 32768 (slots), used 0 (slots)
> rockchip-drm display-subsystem: swiotlb buffer is full (sz: 266240 bytes), total 32768 (slots), used 130 (slots)
> rockchip-drm display-subsystem: swiotlb buffer is full (sz: 266240 bytes), total 32768 (slots), used 130 (slots)
> rockchip-drm display-subsystem: swiotlb buffer is full (sz: 266240 bytes), total 32768 (slots), used 0 (slots)

There are several things wrong with this...

AFAICS the VOP itself still only supports 32-bit addresses, so the VOP 
driver should only be setting a 32-bit DMA mask. The IOMMUs support 
either 32-bit or 40-bit addresses, and the IOMMU driver does set its DMA 
mask appropriately. None of those numbers is 64, so that's clearly 
suspicious already. Plus it would seem the claim of the IOMMU being able 
to address >4GB isn't strictly true for RK3288 (which does supposedly 
support 8GB of RAM).

Furthermore, the "display-subsystem" doesn't even exist - it does not 
represent any actual DMA-capable hardware, so it should not have a DMA 
mask, and it should not be used for DMA API operations. Buffers for the 
VOP should be DMA-mapped for the VOP device itself. At the very least, 
the rockchip_gem_alloc_dma() path is clearly broken otherwise (I guess 
this patch possibly *would* make that brokenness apparent).

> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> Tested-by: Derek Foreman <derek.foreman@collabora.com>
> ---
> 
> (no changes since v1)
> 
>   drivers/gpu/drm/rockchip/rockchip_drm_drv.c | 4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> index 04ef7a2c3833..8bc2ff3b04bb 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> @@ -445,7 +445,9 @@ static int rockchip_drm_platform_probe(struct platform_device *pdev)
>   		return ret;
>   	}
>   
> -	return 0;
> +	ret = dma_coerce_mask_and_coherent(dev, DMA_BIT_MASK(64));

Finally as a general thing, please don't misuse 
dma_coerce_mask_and_coherent() in platform drivers, just use normal 
dma_set_mask_and_coherent(). The platform bus code has been initialising 
the dev->dma_mask pointer for years now, drivers should not be messing 
with it any more.

Thanks,
Robin.

> +
> +	return ret;
>   }
>   
>   static void rockchip_drm_platform_remove(struct platform_device *pdev)


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

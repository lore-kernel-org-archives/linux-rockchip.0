Return-Path: <SRS0=Ln7Z=LW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 15DE3C2B9F4
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Jun 2021 09:54:53 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A213F61C3D
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Jun 2021 09:54:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A213F61C3D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lXnhIoVZz8nra1aStiTTE44jm3dRbdEWFZLmWMRHKaA=; b=mv3c4+aNcrzU4q9Gk2o3CBMPyz
	oCc5ypMDCLaSPUHDn+LuRLqE8jifsYKSUAKuFtx+kgXd+glvS4gmkmzuSgydJAL2aIxlgjIpGAgBA
	xb9+qYdGKxHCVc+s4uE2AJnTPpcB8DwF+QS/VDuVt+/0DYZmtfxKl5FsCGtGMDz2mR07auwBzLtfJ
	Da0mupYuEC3YNeVFqgMZsN7yCQGxhJzPWy4DrGBMItdrUKUhIN1xF5uCI4qzIa405nuznRqGbA/AF
	8G2JdaL7gf9Ffp0SO/EafOjmzicyNm3MLbc0PrrT+6MYn4NDbdgrL1uHdLcY9rpx+qY3AvG/4TiHr
	NZLNm4Vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lxnyY-007XRB-NE; Mon, 28 Jun 2021 09:54:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lxnyN-007XPL-4D; Mon, 28 Jun 2021 09:54:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9AEA41FB;
 Mon, 28 Jun 2021 02:54:28 -0700 (PDT)
Received: from [10.57.8.89] (unknown [10.57.8.89])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 862B33F694;
 Mon, 28 Jun 2021 02:54:27 -0700 (PDT)
Subject: Re: [PATCH] drm/rockchip: Check iommu itself instead of it's parent
 for device_is_available
To: Andy Yan <andy.yan@rock-chips.com>, hjc@rock-chips.com, heiko@sntech.de,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20210627084737.309163-1-andy.yan@rock-chips.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <66fb4977-4e6f-f7ed-0dac-18710ebd782a@arm.com>
Date: Mon, 28 Jun 2021 10:54:21 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210627084737.309163-1-andy.yan@rock-chips.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210628_025435_243130_54757D3C 
X-CRM114-Status: GOOD (  17.38  )
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

On 2021-06-27 09:47, Andy Yan wrote:
> When iommu itself is disabled in dts, we should
> fallback to non-iommu buffer, check iommu parent
> is meanless here.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> ---
> 
>   drivers/gpu/drm/rockchip/rockchip_drm_drv.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> index 212bd87c0c4a..0d20c8cc1ffa 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> @@ -366,7 +366,7 @@ static int rockchip_drm_platform_of_probe(struct device *dev)
>   		}
>   
>   		iommu = of_parse_phandle(port->parent, "iommus", 0);
> -		if (!iommu || !of_device_is_available(iommu->parent)) {
> +		if (!iommu || !of_device_is_available(iommu)) {

Just wondering, could you use device_iommu_mapped() to avoid poking at 
the DT at all here, or is it that you need to check remote graph 
endpoints whose struct device may not be ready yet?

Robin.

>   			DRM_DEV_DEBUG(dev,
>   				      "no iommu attached for %pOF, using non-iommu buffers\n",
>   				      port->parent);
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

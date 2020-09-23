Return-Path: <SRS0=ISdC=DA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99B6EC2D0A8
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2020 11:05:49 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2C147206A5
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2020 11:05:49 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="TrbqNfTY"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2C147206A5
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2uSlgGJ91l2iviBfMiXWaxK61N7VKBpJ+MYOAP5UHLc=; b=TrbqNfTYribWE7acWESHSAsPY
	Oonh5QhWhc7j7Kee7+HB0BFQ180wHAF0D1pxDTTESjJfLBjAwfcMXGypvACvtelV7XVum9R5bUbYA
	qY0ucAnqBuotDvr+VReTuHToEsnvO7c1Mec7rROrzmsi1EacoX8jvuxkX4apTzD+YUBBMcuu5HF2i
	Eyt/RiRt6Dryy5xZ5P0P1SvX2tM46kX6BoiG6r+Gz3R0RUWXyW5Zpgj/vkQ2PnjPPdNDn43N2A2Rz
	OBSfDhzKZlzQMQe/hIILSFOqBoVkDQ5v2EgY4jHQBoIX60seOpyS+Pn9xbRKsVRPOIH7TKPSacWsO
	g2Ng8R0hA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kL2am-0003k6-Bp; Wed, 23 Sep 2020 11:05:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kL2ah-0003iN-BV; Wed, 23 Sep 2020 11:05:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8526AD6E;
 Wed, 23 Sep 2020 04:05:36 -0700 (PDT)
Received: from [10.57.48.76] (unknown [10.57.48.76])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2B57D3F718;
 Wed, 23 Sep 2020 04:05:35 -0700 (PDT)
Subject: Re: [PATCH] drm/rockchip: skip probed failed device
To: Jian-Hong Pan <jhp@endlessos.org>, =?UTF-8?Q?Heiko_St=c3=bcbner?=
 <heiko@sntech.de>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>
References: <CAPpJ_efHX70Ej0uzRi-iRf7N0n6ZO5sMN-wK_YpszvVD-Un9RQ@mail.gmail.com>
 <20200923065900.658666-1-jhp@endlessos.org>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <439c4b59-b1e6-88bb-568e-1c2a0feceed4@arm.com>
Date: Wed, 23 Sep 2020 12:05:26 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101
 Thunderbird/78.2.2
MIME-Version: 1.0
In-Reply-To: <20200923065900.658666-1-jhp@endlessos.org>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200923_070539_439881_E996BBE1 
X-CRM114-Status: GOOD (  21.98  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux@endlessm.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2020-09-23 07:59, Jian-Hong Pan wrote:
> The cdn-dp sub driver probes the device failed on PINEBOOK Pro.
> 
> kernel: cdn-dp fec00000.dp: [drm:cdn_dp_probe [rockchipdrm]] *ERROR* missing extcon or phy
> kernel: cdn-dp: probe of fec00000.dp failed with error -22

Wouldn't it make more sense to simply not enable the DisplayPort node in 
the upstream DT, until the type-C phy work has been done to make it 
usable at all? AIUI the "official" Manjaro kernel is carrying a bunch of 
hacks to make type-C work via extcon, but they know that isn't an 
upstreamable solution.

Robin.

> Then, the device halts all of the DRM related device jobs. For example,
> the operations: vop_component_ops, vop_component_ops and
> rockchip_dp_component_ops cannot be bound to corresponding devices. So,
> Xorg cannot find the correct DRM device.
> 
> This patch skips the probing failed devices to fix this issue.
> 
> Link: http://lists.infradead.org/pipermail/linux-rockchip/2020-September/022352.html
> Signed-off-by: Jian-Hong Pan <jhp@endlessos.org>
> ---
>   drivers/gpu/drm/rockchip/rockchip_drm_drv.c | 6 ++++++
>   1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> index 0f3eb392fe39..de13588602b4 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> @@ -331,6 +331,12 @@ static struct component_match *rockchip_drm_match_add(struct device *dev)
>   
>   			if (!d)
>   				break;
> +			if (!d->driver) {
> +				DRM_DEV_ERROR(d,
> +					      "%s did not probe successfully",
> +					      drv->driver.name);
> +				continue;
> +			}
>   
>   			device_link_add(dev, d, DL_FLAG_STATELESS);
>   			component_match_add(dev, &match, compare_dev, d);
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 019F4CDD1D5
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Sep 2024 19:33:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WO1VHlkCb9WXPB51pV1CWPMmvx4Jl7HQs7v67h3iVCg=; b=qG+Mhc+zhViGnP
	rITpZoBXALQhvGf61Iev3f8f3VOGOmzjQCrs4vsMGMAL975Z24z8K/OwUoswU3OCOUQd3PJ7T0dDp
	M3djL5/m+snhlj26n+2+K347U9/9dadGy+dlTuqQ4GAgPQr8HuKDTWzn9ObZ6nXy+YmpPfp7uCxzu
	ZlW8KsZ8d2J1mmFd9NsPSki3KPjfpEJmjrxOHu1UofXtZLvjSTaSDUxYKhqIe6OpW1a7jmVmKBEKU
	aI7cqllDiJiahXdYQM58Q8KVH5e0UVp+mVwSje51Z96NbGeq2IslrUd3SCwDi8PXTlgDaGkd2ZdG3
	ynXjHargkG7N49RlZn7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svM9P-00000000dsV-2CFq;
	Mon, 30 Sep 2024 19:33:43 +0000
Received: from sender4-op-o14.zoho.com ([136.143.188.14])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svM8B-00000000dlP-1mlu;
	Mon, 30 Sep 2024 19:32:28 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1727724736; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=GJkV9CjD8jC04jOyzsBM72sQtQf+y+uqRofBTvwUlLP3EuYS0iOPBfN6zLgQq8suuW2aFbozDQV3AY7drpupiFuIhIo59sCC0JsUyPfLZeihFIXDrTzarp+ORpNY6r5AYCIfKX+wlh3vH63gts3qzKtD/YwOl25qekEYYmpAaCM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1727724736; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=clwvoUXnFfSRxwtaKvOxsC6+Wuer1OagShHRee9wI2I=; 
	b=GWJnXDbQLZZxdad5Kkj78XPkuBqlbC+f6vaYslFA5asgTWalOssDFTlF4W2jKhJHaZe3Gav1N3H9KJU2QJxqoDV2Cg74bGKZQ0IiW0KsObhvFvvplu3Bwx8mNBMkxD0IUot8+oUxqpTSn3Lw35Sd3WLqgqOwfTtpthijc1n2AVY=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1727724736;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=clwvoUXnFfSRxwtaKvOxsC6+Wuer1OagShHRee9wI2I=;
	b=XPSnJ4PwlQp0goLtVkf21cII+W7yq7RJzGGC58TnW3M0FVa5qNLFj1oQKATfwS9O
	cI8qTP9PUb9Y5vs6/59LqKjz+oG1flh/OrWJBARnH8pYB2OIsdVO4kVwRX9zFQeRuUD
	xMcshM1GmDfz+V/Pg3HKO9Q9a8l0y/M74X+LKfa8=
Received: by mx.zohomail.com with SMTPS id 1727724734268228.14685023694335;
	Mon, 30 Sep 2024 12:32:14 -0700 (PDT)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: heiko@sntech.de, Andy Yan <andyshrk@163.com>
Cc: hjc@rock-chips.com, krzk+dt@kernel.org, robh@kernel.org,
 conor+dt@kernel.org, s.hauer@pengutronix.de, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 derek.foreman@collabora.com, minhuadotchen@gmail.com,
 Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH v3 00/15] VOP Support for rk3576
Date: Mon, 30 Sep 2024 15:32:12 -0400
Message-ID: <5826037.DvuYhMxLoT@bootstrap>
In-Reply-To: <20240920081626.6433-1-andyshrk@163.com>
References: <20240920081626.6433-1-andyshrk@163.com>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240930_123227_553278_41664FCF 
X-CRM114-Status: GOOD (  21.66  )
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

Hi Andy,

I tested these on the RK3576 Armsom Sige 5 board:

Tested-by: Detlev Casanova <detlev.casanova@collabora.com>

Regards,
Detlev.

On Friday, 20 September 2024 04:16:24 EDT Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> 
> Thanks for the basic work from Collabora, I can bringup a HDMI
> display out on rk3576.
> 
> PATCH 1 is a carryover from the working when add support for rk3588,
>         is very usefull when some people want me help debug some issue
>         online, so I really hope it can be merged at this round.
> PATCH 2~5 are bugfix of rk3588 alpha blending which report and test by
>          Derek
> PATCH 6~13 are preparations for rk3576 support
> PATCH 14~15 are real support for rk376
> 
> The hdmi depends on WIP patch from Cristian[1]
> I test it with a 1080P/4K HDMI output with modetest and weston output.
> 
> If there are some one want to have a try, I have a tree here[2]
> 
> [0]
> https://patchwork.kernel.org/project/linux-rockchip/cover/20231211115547.17
> 84587-1-andyshrk@163.com/ [1]
> https://lore.kernel.org/lkml/20240819-b4-rk3588-bridge-upstream-v4-0-6417c7
> 2a2749@collabora.com/ [2]
> https://github.com/andyshrk/linux/tree/rk3576-vop2-upstream-v3
> 
> Changes in v3:
> - Add comments for why we should treat rk3566 with special care.
> - Add hardware version check
> - Add description for newly added interrupt
> - Share the alpha setup function with rk3568
> - recoder the code block by soc
> 
> Changes in v2:
> - split it from main patch add support for rk3576
> - Add platform specific callback
> - Introduce vop hardware version
> - Add dt bindings
> - Add platform specific callback
> 
> Andy Yan (15):
>   drm/rockchip: vop2: Add debugfs support
>   drm/rockchip: Set dma mask to 64 bit
>   drm/rockchip: vop2: Fix cluster windows alpha ctrl regsiters offset
>   drm/rockchip: vop2: Fix the mixer alpha setup for layer 0
>   drm/rockchip: vop2: Fix the windows switch between different layers
>   drm/rockchip: vop2: include rockchip_drm_drv.h
>   drm/rockchip: vop2: Support 32x8 superblock afbc
>   drm/rockchip: vop2: Add platform specific callback
>   drm/rockchip: vop2: Support for different layer selet configuration
>     between VPs
>   drm/rockchip: vop2: Introduce vop hardware version
>   drm/rockchip: vop2: Register the primary plane and overlay plane
>     separately
>   drm/rockchip: vop2: Set plane possible crtcs by possible vp mask
>   drm/rockchip: vop2: Add uv swap for cluster window
>   dt-bindings: display: vop2: Add rk3576 support
>   drm/rockchip: vop2: Add support for rk3576
> 
>  .../display/rockchip/rockchip-vop2.yaml       |   13 +-
>  drivers/gpu/drm/rockchip/rockchip_drm_drv.c   |    4 +-
>  drivers/gpu/drm/rockchip/rockchip_drm_vop2.c  | 1572 ++++---------
>  drivers/gpu/drm/rockchip/rockchip_drm_vop2.h  |  274 ++-
>  drivers/gpu/drm/rockchip/rockchip_vop2_reg.c  | 1948 ++++++++++++++++-
>  5 files changed, 2683 insertions(+), 1128 deletions(-)





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

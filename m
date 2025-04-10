Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4973DC369A9
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Apr 2025 12:48:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=21ChMhu1bjEJ+szXh2CD5OTQecdBjGRESg4kH9y8gjQ=; b=fpc5J3ZWVKmTkp
	YT9qu+dJQovOXXSRs3PDcnHnNkMnOc/vJGl74bsRTgBuAkt7rGjvibWOdqqA4vKQpNrSStkWf6Hp2
	X99dBOM0xwVTOY3MdWdX1EAIAJMCVyNB7ivZ09Z0qMd8tjWH8WgoRngQ0uT4rByTcwIMhMaCM8pfF
	kX9Nj/GN+/Cvsp+fUTH6e4B9C+wDUbc4uzMva20Kp7FHO2Nf6vEJlL0GdMzq/OXcgyBqNqMXg3nIm
	6siwrzk6TJPeSEtnAw+cuY3OT0iiXBE4GFzlp7a4waiupVtf0BPMyb6t40rPzI89pA+VL+QMWQsrG
	KAB/wztdnYdN2Tt3rvPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2rKb-0000000AYsQ-0Saz;
	Thu, 10 Apr 2025 12:48:33 +0000
Received: from m16.mail.163.com ([220.197.31.3])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2r9U-0000000AWWq-0X3I;
	Thu, 10 Apr 2025 12:37:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=rFnq27x4coNBtZepsly9PbTQ7APl0Mfwznlf1HossBM=; b=J
	zcDa9w2v/7924RpIAuaZDDthRZokXLPF3GAbgzFxH/hFXltPmDjL9xclwJavLX1u
	f7M7PZYDDeCM7Yu9pbFjHfchNb75+KhBgZh4CqJyzxUlt8v0FIFIF+cj51lYFVwG
	2g2zOVJnf7r0t6KgVc3GHDmCPqnFMPWbuBNFIDSemE=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-107 (Coremail) ; Thu, 10 Apr 2025 20:36:07 +0800
 (CST)
X-Originating-IP: [58.22.7.114]
Date: Thu, 10 Apr 2025 20:36:07 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Heiko Stuebner" <heiko.stuebner@cherry.de>
Subject: Re:[PATCH v8 00/13] Add eDP support for RK3588
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20240801(9da12a7b)
 Copyright (c) 2002-2025 www.mailtech.cn 163com
In-Reply-To: <20250310104114.2608063-1-damon.ding@rock-chips.com>
References: <20250310104114.2608063-1-damon.ding@rock-chips.com>
X-NTES-SC: AL_Qu2fBv6Tt00t4SafbOkfmkcVgOw9UcO5v/Qk3oZXOJF8jCHpwA4HTVlTAlzay/CDBgq2nQiHXjJ+zeFCZZJFRqM7aHKxRR/qKmeJ6RSE2yJXmA==
MIME-Version: 1.0
Message-ID: <f83f9e3.ae33.1961fb35185.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: aygvCgA3f6A3u_dnnVOTAA--.29407W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0hErXmf3t3Jj+QAEs9
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250410_053704_549206_48F3E4DF 
X-CRM114-Status: GOOD (  11.61  )
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
Cc: heiko@sntech.de, dri-devel@lists.freedesktop.org, dianders@chromium.org, Laurent.pinchart@ideasonboard.com, andrzej.hajda@intel.com, airlied@gmail.com, simona@ffwll.ch, robh@kernel.org, rfoss@kernel.org, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, maarten.lankhorst@linux.intel.com, mripard@kernel.org, dmitry.baryshkov@linaro.org, Damon Ding <damon.ding@rock-chips.com>, linux-arm-kernel@lists.infradead.org, neil.armstrong@linaro.org, hjc@rock-chips.com, linux-kernel@vger.kernel.org, boris.brezillon@collabora.com, tzimmermann@suse.de, andy.yan@rock-chips.com, krzk+dt@kernel.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


Hello Heiko,
   Could you take this series ? They have already got the necessary R-B and Ack. 
I think Damon still has some patches for connector decoupling. With this series have been merged earlier. 
His new patches can have fewer dependencies.
    

At 2025-03-10 18:41:01, "Damon Ding" <damon.ding@rock-chips.com> wrote:
>Picked from:
>https://patchwork.kernel.org/project/linux-rockchip/list/?series=936932
>
>These patchs have been tested with a 1536x2048p60 eDP panel on
>RK3588S EVB1 board, and HDMI 1080P/4K display also has been verified
>on RK3588 EVB1 board. Furthermore, the eDP display has been rechecked
>on RK3399 sapphire excavator board.
>
>Patch 1~3   are preparations for the RK3588 eDP support on both Analogix
>            side.
>Patch 4~8   are to support to get panel from the DP AUX bus.
>Patch 9~11  are the RK3588 Analogix DP driver support.
>Patch 12    is the addition of RK3588 eDP0 node.
>Patch 13    is to enable the eDP0 display on RK3588S EVB1 board.
>
>Damon Ding (13):
>  drm/bridge: analogix_dp: Add irq flag IRQF_NO_AUTOEN instead of
>    calling disable_irq()
>  drm/bridge: analogix_dp: Remove CONFIG_PM related check in
>    analogix_dp_bind()/analogix_dp_unbind()
>  drm/bridge: analogix_dp: Add support for phy configuration.
>  dt-bindings: display: rockchip: analogix-dp: Add support to get panel
>    from the DP AUX bus
>  drm/bridge: analogix_dp: Support to get &analogix_dp_device.plat_data
>    and &analogix_dp_device.aux
>  drm/bridge: analogix_dp: Add support to get panel from the DP AUX bus
>  drm/bridge: analogix_dp: Add support for
>    &drm_dp_aux.wait_hpd_asserted()
>  drm/rockchip: analogix_dp: Add support to get panel from the DP AUX
>    bus
>  dt-bindings: display: rockchip: analogix-dp: Add support for RK3588
>  drm/bridge: analogix_dp: Add support for RK3588
>  drm/rockchip: analogix_dp: Add support for RK3588
>  arm64: dts: rockchip: Add eDP0 node for RK3588
>  arm64: dts: rockchip: Enable eDP0 display on RK3588S EVB1 board
>
> .../rockchip/rockchip,analogix-dp.yaml        |  25 ++++-
> arch/arm64/boot/dts/rockchip/rk3588-base.dtsi |  28 +++++
> .../boot/dts/rockchip/rk3588s-evb1-v10.dts    |  55 ++++++++++
> .../drm/bridge/analogix/analogix_dp_core.c    |  85 +++++++++------
> .../gpu/drm/bridge/analogix/analogix_dp_reg.c |  52 +++++++++
> drivers/gpu/drm/rockchip/Kconfig              |   1 +
> .../gpu/drm/rockchip/analogix_dp-rockchip.c   | 103 ++++++++++++++++--
> include/drm/bridge/analogix_dp.h              |   7 +-
> 8 files changed, 310 insertions(+), 46 deletions(-)
>
>-- 
>2.34.1
>
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2B93E77184
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Dec 2024 08:07:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sXXiRuFobw1kxx8FhtEE+uTS949YtCgBmiJBNaPxA+Q=; b=ZulQZ4FJNJayo7
	+t5AhOG5zsM/WFelQoKP9zZ9S0+/0yG/1a3BhQ/EOH7vldvBYhUMUcmd+4nVu3FR3hBWCwdYVjGpp
	V6s8yEkqCftfbOjHGTRj6va6QfzamjJSpx3pO9Bxg+NnP0oBHl7kqZuzvYKsWD78yzD3AhWkcMZ4Q
	A39qcBwCIPHVVHcRNgmW1wLHSEYGkyRbJQF/laFNfTOoEZriy7JD9JDcSVMLAp2BiDENUTqWl7vSP
	E+beME0RSNJ6Hgki1d7iuvcKhb/Jqn6tKk21QgJ7DgB+ifJOfmIeocONoHs5NrBkomXRL7298GrWg
	paUUH9WVi470ArEQKREA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOBZL-00000001DKo-3ORJ;
	Thu, 19 Dec 2024 08:07:39 +0000
Received: from mail-m12773.qiye.163.com ([115.236.127.73])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOBYB-00000001Cx5-1nbt;
	Thu, 19 Dec 2024 08:06:30 +0000
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 633dd60b;
	Thu, 19 Dec 2024 16:06:20 +0800 (GMT+08:00)
From: Damon Ding <damon.ding@rock-chips.com>
To: heiko@sntech.de
Subject: [PATCH v3 00/15] Add eDP support for RK3588
Date: Thu, 19 Dec 2024 16:05:49 +0800
Message-Id: <20241219080604.1423600-1-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGRkfT1ZIGBhNH05MQ0pLHxpWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a93ddf4144f03a3kunm633dd60b
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Nz46Cww4CjIUTRU8Dzo3DQMt
	OUIwCjdVSlVKTEhPTkJOTkNJTE9CVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFIT0hMNwY+
DKIM-Signature: a=rsa-sha256;
	b=QqNPkI8fOO61b3ReZou884fD5Nre4/BOvnpdrA29Y35LL6vo3eOJgMtw6GgJ/lruEV5ekfRhvfXdkTos/8D9mAKar6FdU6t4MHbXsmQ2cXiZ1+3hXnSMr6Z/1IcUK1WsteT4Raig6x5cRfqAMmfTj/4c9mad5f9mM9Z2P/N8uhA=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=16FNdcAokL82af3uMxBcAjnroSvaJOiXgHgA0BlEsVQ=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241219_000628_035903_0307DCB3 
X-CRM114-Status: UNSURE (   9.89  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, algea.cao@rock-chips.com, rfoss@kernel.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, sebastian.reichel@collabora.com, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org, vkoul@kernel.org, Damon Ding <damon.ding@rock-chips.com>, andy.yan@rock-chips.com, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

These patchs have been tested with a 1536x2048p60 eDP panel on
RK3588S EVB1 board, and HDMI 1080P/4K display also has been verified
on RK3588 EVB1 board.

Patch 1~3   are the RK3588 eDP support of Rockchip analogix_dp driver.
Patch 4~5   are the eDP mode support of samsung hdptx phy driver.
Patch 6~7   are the RK3588 eDP support of Aanalogix DP driver. Add phy
            interfaces is to configure the HDMI/eDP TX Combo PHY.
Patch 8~10  are to support to get panel from the DP AUX bus.
Patch 11~12 are the renaming of hdptxphy node. It is not only used by
            HDMI display but also for the eDP display.
Patch 13    is the addition of RK3588 eDP0 node.
Patch 14    is to enable the eDP0 display on RK3588S EVB1 board.
Patch 15    is to add the eDP1 related nodes for RK3588 SoC.

Damon Ding (15):
  drm/rockchip: analogix_dp: Use formalized struct definition for grf
    field
  dt-bindings: display: rockchip: analogix-dp: Add support for RK3588
  drm/rockchip: analogix_dp: Add support for RK3588
  phy: phy-rockchip-samsung-hdptx: Rename some register names related to
    DP
  phy: phy-rockchip-samsung-hdptx: Add support for eDP mode
  drm/bridge: analogix_dp: Add support for RK3588
  drm/bridge: analogix_dp: Add support for phy configuration.
  drm/rockchip: analogix_dp: Add support to get panel from the DP AUX
    bus
  drm/bridge: analogix_dp: Add support to get panel from the DP AUX bus
  dt-bindings: display: rockchip: analogix-dp: Add support to get panel
    from the DP AUX bus
  dt-bindings: display: rockchip: Fix label name of hdptxphy for RK3588
    HDMI TX Controller
  arm64: dts: rockchip: Fix label name of hdptxphy for RK3588
  arm64: dts: rockchip: Add eDP0 node for RK3588
  arm64: dts: rockchip: Enable eDP0 display on RK3588S EVB1 board
  arm64: dts: rockchip: Add eDP1 node for RK3588

 .../rockchip/rockchip,analogix-dp.yaml        |  17 +-
 .../rockchip/rockchip,rk3588-dw-hdmi-qp.yaml  |   2 +-
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi |  32 +-
 .../dts/rockchip/rk3588-coolpi-cm5-evb.dts    |   2 +-
 .../rockchip/rk3588-coolpi-cm5-genbook.dts    |   2 +-
 .../boot/dts/rockchip/rk3588-evb1-v10.dts     |   2 +-
 .../arm64/boot/dts/rockchip/rk3588-extra.dtsi |  49 +
 .../rk3588-friendlyelec-cm3588-nas.dts        |   2 +-
 .../arm64/boot/dts/rockchip/rk3588-jaguar.dts |   2 +-
 .../boot/dts/rockchip/rk3588-nanopc-t6.dtsi   |   2 +-
 .../dts/rockchip/rk3588-orangepi-5-plus.dts   |   2 +-
 .../boot/dts/rockchip/rk3588-rock-5b.dts      |   2 +-
 .../boot/dts/rockchip/rk3588-tiger-haikou.dts |   2 +-
 .../boot/dts/rockchip/rk3588s-coolpi-4b.dts   |   2 +-
 .../boot/dts/rockchip/rk3588s-evb1-v10.dts    |  52 +
 .../dts/rockchip/rk3588s-indiedroid-nova.dts  |   2 +-
 .../boot/dts/rockchip/rk3588s-nanopi-r6.dtsi  |   2 +-
 .../boot/dts/rockchip/rk3588s-odroid-m2.dts   |   2 +-
 .../boot/dts/rockchip/rk3588s-orangepi-5.dtsi |   2 +-
 .../boot/dts/rockchip/rk3588s-rock-5a.dts     |   2 +-
 .../boot/dts/rockchip/rk3588s-rock-5c.dts     |   2 +-
 .../drm/bridge/analogix/analogix_dp_core.c    |  24 +
 .../gpu/drm/bridge/analogix/analogix_dp_reg.c |  56 +
 .../gpu/drm/rockchip/analogix_dp-rockchip.c   | 182 +++-
 .../phy/rockchip/phy-rockchip-samsung-hdptx.c | 954 +++++++++++++++++-
 include/drm/bridge/analogix_dp.h              |   3 +-
 26 files changed, 1302 insertions(+), 101 deletions(-)

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

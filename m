Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D85FCD6E4E
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Nov 2025 12:47:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ySqFDcfkO6JPksMydKqeLO7hRv+RA2VONpZwdLEm+Lo=; b=eH4w42V9esG8/u
	iH4gso7NBIh6kM5YdDMmX0O/H7+Q4MoNhWeO+E1IBjbfhNegVfilage0PEbDenU6NbAS3LxISnCSs
	bOJY/ZkwVpsOoui1Bz21ImlOoz/ROyodxLH7k1+gEGqiM8b5DuA8u8PbSY27LWW/gL1AXOfHwtNXF
	9wx5iZgIJ4Rd658JT2R8ODmLH0V2MUj6XVD80jYAtJBFahzraN8Qb1c/F9+0cZydgcrEu8OeVpJqx
	eTgUFLbT528iEjTLWOwLKKgAiofvqMC24bvN+RIEDB6MioMrfGxHWpaIz2bCdjpm8xJFHVlcTrFf6
	/r+pb+uBfX9AZsmTK62w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJWjO-0000000AUlf-0BiS;
	Thu, 13 Nov 2025 12:47:18 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJWjL-0000000AUku-0UqK
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Nov 2025 12:47:16 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 5ADCgQXt030553;
	Thu, 13 Nov 2025 21:42:27 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, pgwipeout@gmail.com, didi.debian@cknow.org,
        jonas@kwiboo.se, ziyao@disroot.org, amadeus@jmu.edu.cn,
        nicolas.frattaroli@collabora.com, pbrobinson@gmail.com,
        wens@kernel.org, detlev.casanova@collabora.com, stephen@radxa.com,
        sebastian.reichel@collabora.com, liujianfeng1994@gmail.com,
        andy.yan@rock-chips.com, dmitry.baryshkov@oss.qualcomm.com,
        kuninori.morimoto.gx@renesas.com, damon.ding@rock-chips.com,
        kylepzak@projectinitiative.io, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v3 0/3] Consolidate and clarify LED device tree descriptions on Radxa boards
Date: Thu, 13 Nov 2025 12:42:19 +0000
Message-ID: <20251113124222.4691-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251113_044715_371690_2A8001CB 
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Currently, on Radxa boards, the power LED is turned on immediately
after power-up, independent of software control. The heartbeat LED and
other available LEDs are subsequently turned on by the initial
software, such as U-Boot, to indicate software is running.

However, the device tree description for this behavior is inconsistent
and fragmented, with definitions split between the main Linux DTS
files and separate U-Boot files (u-boot/arch/arm/dts/*-u-boot.dtsi).

This patch series addresses this inconsistency and fragmentation by
consolidating the description within the upstream device tree, thereby
improving overall clarity.

Patch 1 addresses the inconsistency for the power LED by using
default-state = "on" instead of linux,default-trigger = "default-on".

Patch 2 addresses the description fragmentation for the heartbeat LED
by consolidating its default-state = "on" definition from the U-Boot
files into the main Linux DTS.

Patch 3 addresses inconsistency by removing redundant default-state =
"off" definitions, as this is already the default configuration.


This patch series does not address some LEDs that are (implicitly)
default-state = "off" at kernel but should be "on" at bootloader.
These will be addressed separately.

FUKAUMI Naoki (3):
  arm64: dts: rockchip: Use default-state for power LED for Radxa boards
  arm64: dts: rockchip: Turn on heartbeat LED at boot for Radxa boards
  arm64: dts: rockchip: Remove default-state = "off" from LEDs for Radxa
    boards
---
Changes in v3:
- Split into three patches
- Reword commit message
Changes in v2:
- Add more URLs for reference
- Reword commit message
---
 arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts    | 1 -
 arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts    | 1 +
 arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts | 3 ++-
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi   | 1 +
 arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts   | 2 --
 arch/arm64/boot/dts/rockchip/rk3528-rock-2a.dts      | 1 -
 arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts | 1 +
 arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts      | 1 +
 arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi  | 1 +
 arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts      | 1 +
 arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts      | 3 ++-
 arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts   | 2 --
 arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts   | 2 +-
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dtsi     | 1 +
 arch/arm64/boot/dts/rockchip/rk3588-rock-5t.dts      | 1 +
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts     | 3 ++-
 16 files changed, 15 insertions(+), 10 deletions(-)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

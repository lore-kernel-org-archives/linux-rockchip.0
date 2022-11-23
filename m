Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B369C4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Nov 2022 09:07:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=q8GJ68VQ8vm34sk3Pgz6uB42enWJYPN2OZ3i2Kk0b7E=; b=jiJnbFM2yc6vDZ
	RleitiDdZtIJiVyIMbPmX/41I7+7yGCnvlAD7UUnfORmjQBImou13j8oZ0xHVtzsLtuey06C/5fXH
	KNeZm0gmrgu2WbHVxFSAdE2lcQBPdsw51bHBUOiwwAC3qUAoWewyXIpB6j1XNNf2w6FT0gTyJkAa3
	gFzRydL7lvTJ67T21/E6NMBis5aK13t9esIVpdvkC1sqltiDT9JEOxq1ZlnjJqf3flZw6VHwV4adH
	FvtetiOQugityxxVNivAnhR6O7XZGxbBdQY9p2P+6gkTxvoYBXidB0BZuFcKr8FhuUX5uMkQwWbfx
	P1ciXqQm6ZY+MjSw0PKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxljG-00FniX-1K; Wed, 23 Nov 2022 09:07:38 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxljC-00Fngm-PX; Wed, 23 Nov 2022 09:07:36 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oxljB-0006tQ-9A; Wed, 23 Nov 2022 10:07:33 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip dts fixes for 6.1
Date: Wed, 23 Nov 2022 10:07:32 +0100
Message-ID: <6274427.GXAFRqVoOG@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221123_010734_865975_0E2EE181 
X-CRM114-Status: GOOD (  12.89  )
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

The following changes since commit 9abf2313adc1ca1b6180c508c25f22f9395cc780:

  Linux 6.1-rc1 (2022-10-16 15:36:24 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.1-rockchip-dtsfixes1

for you to fetch changes up to 562105c1b072411c71ac2202410d83ee79297624:

  arm64: dts: rockchip: Fix Pine64 Quartz4-B PMIC interrupt (2022-11-13 09:54:59 +0100)

----------------------------------------------------------------
Fixes to make the automated binding tools happier (node-names,
undocumented + unneeded properties) and fixes for non-working
devices on some boards.

----------------------------------------------------------------
Brian Norris (1):
      arm64: dts: rockchip: Drop RK3399-Scarlet's repeated ec_ap_int_l definition

Chen-Yu Tsai (1):
      arm64: dts: rockchip: Fix Pine64 Quartz4-B PMIC interrupt

FUKAUMI Naoki (1):
      arm64: dts: rockchip: keep I2S1 disabled for GPIO function on ROCK Pi 4 series

Furkan Kardame (3):
      arm64: dts: rockchip: Fix gmac failure of rgmii-id from rk3566-roc-pc
      arm64: dts: rockchip: Fix i2c3 pinctrl on rk3566-roc-pc
      arm64: dts: rockchip: remove i2c5 from rk3566-roc-pc

Jakob Unterwurzacher (1):
      arm64: dts: rockchip: lower rk3399-puma-haikou SD controller clock frequency

Jensen Huang (1):
      arm64: dts: rockchip: add enable-strobe-pulldown to emmc phy on nanopi4

Johan Jonker (5):
      ARM: dts: rockchip: fix adc-keys sub node names
      arm64: dts: rockchip: fix adc-keys sub node names
      ARM: dts: rockchip: fix ir-receiver node names
      arm64: dts: rockchip: fix ir-receiver node names
      ARM: dts: rockchip: rk3188: fix lcdc1-rgb24 node name

Lev Popov (1):
      arm64: dts: rockchip: fix quartz64-a bluetooth configuration

Sebastian Reichel (4):
      arm64: dts: rockchip: fix node name for hym8563 rtc
      arm64: dts: rockchip: remove clock-frequency from rtc
      arm: dts: rockchip: fix node name for hym8563 rtc
      arm: dts: rockchip: remove clock-frequency from rtc

 arch/arm/boot/dts/rk3036-evb.dts                           |  3 +--
 arch/arm/boot/dts/rk3066a-mk808.dts                        |  2 +-
 arch/arm/boot/dts/rk3188-radxarock.dts                     |  2 +-
 arch/arm/boot/dts/rk3188.dtsi                              |  2 +-
 arch/arm/boot/dts/rk3288-evb-act8846.dts                   |  2 +-
 arch/arm/boot/dts/rk3288-evb.dtsi                          |  6 +++---
 arch/arm/boot/dts/rk3288-firefly.dtsi                      |  3 +--
 arch/arm/boot/dts/rk3288-miqi.dts                          |  3 +--
 arch/arm/boot/dts/rk3288-rock2-square.dts                  |  3 +--
 arch/arm/boot/dts/rk3288-vmarc-som.dtsi                    |  1 -
 arch/arm64/boot/dts/rockchip/px30-evb.dts                  | 10 +++++-----
 arch/arm64/boot/dts/rockchip/rk3308-evb.dts                | 12 ++++++------
 arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts             |  2 +-
 arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dts            |  2 +-
 arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts     |  3 +--
 arch/arm64/boot/dts/rockchip/rk3368-r88.dts                |  3 +--
 arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi       |  4 ----
 arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi       |  2 +-
 arch/arm64/boot/dts/rockchip/rk3399-nanopc-t4.dts          |  2 +-
 arch/arm64/boot/dts/rockchip/rk3399-nanopi-m4b.dts         |  2 +-
 arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi           |  1 +
 arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts           |  4 ++--
 arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts        |  2 +-
 arch/arm64/boot/dts/rockchip/rk3399-roc-pc-plus.dts        |  3 +--
 arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi            |  2 +-
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi         |  1 -
 arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts |  4 ++--
 arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi      |  3 +--
 arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi          |  2 +-
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts         |  7 ++++---
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts         |  2 +-
 arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts             |  8 ++------
 arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts         |  1 -
 arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts            |  1 -
 34 files changed, 46 insertions(+), 64 deletions(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

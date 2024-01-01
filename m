Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A484CC47074
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Jan 2024 22:55:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YauZmFvKdwrw+m8jaO7GkJSBMArN5BDahW26JQnv3Pk=; b=4AIHR9xSHhiQGb
	zelV4M1hHtJA8MphLIVI8ImExZliVx9JhC9hAQFaEXw0WMFxgXbyX0JmZnXbt34upydDxucmVDszN
	NeghbJ6drBrxPHeXUXXEpZd16y3UCVEstyo4g4z1ypEhiz4YyU91QYAirudX4ATssOhIOLacFfYV0
	/Zi9fxcXZ1gckMbQ7M1vuqjsAGdlqZQVZNW3jyvjFm5JZ6LehGMu0TDHLHKvW4yUM/0FnTy+h7X27
	CovwEvCNT2GW4aBAetVoou8X0GF3f+ZXsFfKEF8qewP/IomC/A3wpv5cWGAAGX0wx7JQyXcVDcEXr
	UaobP4xb8md2d2J3bLgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKRBK-006nRN-1C;
	Mon, 01 Jan 2024 22:54:50 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rKRBH-006nQx-0p;
	Mon, 01 Jan 2024 22:54:48 +0000
Received: from i53875a56.versanet.de ([83.135.90.86] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rKRBB-0007XP-HO; Mon, 01 Jan 2024 23:54:41 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip dts64 changes for 6.8 #2
Date: Mon, 01 Jan 2024 23:54:40 +0100
Message-ID: <3711719.VqM8IeB0Os@diego>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240101_145447_319245_3218773A 
X-CRM114-Status: GOOD (  15.74  )
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

Hi Arnd, Kevin, Olof,

please find below and in a subsequent pull-request
some more Rockchip changes for for 6.8 .

Just some stuff that came in since #1 .
If it's too late for this stuff for 6.8, I'll respin this for
6.9, so no worries :-)

But if there is still time, please pull

Thanks
Heiko


The following changes since commit 8174dff9e583f7791dacf6d8ce034eb18ec2b292:

  arm64: dts: rockchip: Add Anbernic RG351V (2023-12-12 21:43:48 +0100)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.8-rockchip-dts64-2

for you to fetch changes up to 8586a5d217ef7bfeee24943c600a8a7890d6f477:

  arm64: dts: rockchip: Fix led pinctrl of lubancat 1 (2023-12-29 23:03:53 +0100)

----------------------------------------------------------------
One new boards, the CoolPi CM5 SoM and 4B SBC. Basic node for the rk3588
display controller and a bunch of small improvements for different boards,

----------------------------------------------------------------
Andy Yan (8):
      dt-bindings: soc: rockchip: add rk3588 vop/vo syscon
      arm64: dts: rockchip: Add vop on rk3588
      dt-bindings: vendor-prefixes: Add Cool Pi
      dt-bindings: arm: rockchip: Add Cool Pi 4B
      arm64: dts: rockchip: Add support for rk3588s based board Cool Pi 4B
      dt-bindings: arm: rockchip: Add Cool Pi CM5
      arm64: dts: rockchip: Add support for rk3588 based board Cool Pi CM5 EVB
      arm64: dts: rockchip: Fix led pinctrl of lubancat 1

Hugh Cole-Baker (1):
      arm64: dts: rockchip: Support poweroff on NanoPC-T6

Jimmy Hon (1):
      arm64: dts: rockchip: Support poweroff on Orange Pi 5

John Clark (4):
      arm64: dts: rockchip: nanopc-t6 sdmmc beautification
      arm64: dts: rockchip: support poweroff on the rock-5b
      arm64: dts: rockchip: correct gpio_pwrctrl1 typo on rock-5b
      arm64: dts: rockchip: correct gpio_pwrctrl1 typo on nanopc-t6

Sam Edwards (1):
      arm64: dts: rockchip: Fix rk3588 USB power-domain clocks

Tianling Shen (1):
      arm64: dts: rockchip: configure eth pad driver strength for orangepi r1 plus lts

Trevor Woerner (2):
      arm64: dts: rockchip: add gpio-line-names to rk3328-rock-pi-e
      arm64: dts: rockchip: rk3308-rock-pi-s gpio-line-names cleanup

Vahe Grigoryan (3):
      arm64: dts: rockchip: fix misleading comment in rk3399-puma-haikou.dts
      arm64: dts: rockchip: expose BIOS Disable feedback pin on rk3399-puma
      arm64: dts: rockchip: make use gpio-keys for buttons on puma-haikou

 .../devicetree/bindings/arm/rockchip.yaml          |  12 +
 .../devicetree/bindings/soc/rockchip/grf.yaml      |   2 +
 .../devicetree/bindings/vendor-prefixes.yaml       |   2 +
 arch/arm64/boot/dts/rockchip/Makefile              |   2 +
 arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts  | 120 +--
 .../dts/rockchip/rk3328-orangepi-r1-plus-lts.dts   |   4 +-
 arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts  |  53 ++
 .../arm64/boot/dts/rockchip/rk3399-puma-haikou.dts |  42 +-
 arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi      |  14 +
 arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts |   2 +-
 .../boot/dts/rockchip/rk3588-coolpi-cm5-evb.dts    | 214 ++++++
 .../arm64/boot/dts/rockchip/rk3588-coolpi-cm5.dtsi | 650 +++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts  |   9 +-
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts    |   4 +-
 arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dts | 812 +++++++++++++++++++++
 .../arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts |   1 +
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi          |  84 +++
 17 files changed, 1956 insertions(+), 71 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-evb.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dts




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

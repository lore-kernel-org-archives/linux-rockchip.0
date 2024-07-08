Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19B67C3271E
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Jul 2024 22:27:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yfyZ0ySlPXV1V+vPX3+t+fbPl8mi+ocfUwBl4DzMyzk=; b=G0L7bSIiJnU+ah
	biWmSjoXLivVBYGs1S8PE6WoqELbRbquOy4VHHht4tfld9eYXWHB7ixbLT5gytpoOr1blz4H32u5s
	ui3sZZt6R+N6zDnLJsnft9nWbQmnNNwQ1SYYyiVCut80bVqApZbY5SbwE0GCiaX1jU/ZSPWu4qzDg
	bqU95FjzlLcVzkyDgrw5A6/kJwdCxtzrb2GbeFiJoC9QVGokHZPZJk3xR5548F4N4xItpML6Kwm6H
	lFTR7bSWp30guvqkF218R6ncpzJVM413dPBpq2PI/DImFo1XSNdKoOqi5zMFoasU12vpW2/Zxds4E
	sWpwXW1q/aKSBiv9xmcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQwpT-00000005DMk-16FS;
	Mon, 08 Jul 2024 22:27:27 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQwpQ-00000005DM1-20Ob;
	Mon, 08 Jul 2024 22:27:25 +0000
Received: from i5e8616d7.versanet.de ([94.134.22.215] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sQwpO-0006HC-Cv; Tue, 09 Jul 2024 00:27:22 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL v2] Rockchip dts64 changes for 6.11 #2
Date: Tue, 09 Jul 2024 00:27:21 +0200
Message-ID: <2191200.GUh0CODmnK@diego>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240708_152724_551954_B663D811 
X-CRM114-Status: GOOD (  15.37  )
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

please find below some more Rockchip changes for for 6.11 .

Three new boards and some more changes.

If it's not too late yet, please pull!

Thanks
Heiko

changes in v2:
- add the rock-3b and Xunlong Orange Pi 3B boards
  As they're new boards, they can't break existing users :-)


The following changes since commit 9417909e253ffa57f014822a79cca9b1f2b25492:

  arm64: dts: rockchip: Delete the SoC variant dtsi for RK3399Pro (2024-06-28 14:02:39 +0200)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.11-rockchip-dts64-2

for you to fetch changes up to d79d713d602e8b32cf935ddfdf61769cb74ba1dc:

  arm64: dts: rockchip: Add Xunlong Orange Pi 3B (2024-07-09 00:16:29 +0200)

----------------------------------------------------------------
Three new boards, some improvements for the Lunzn Fastrhino R6xS boards,
allowing dma on uarts connected to bluetooth modules and an update for
the gpu operating points on rk356x. As well as some minor fixes for
missing power-dmains and ethernet phy binding adherence.

----------------------------------------------------------------
Chukun Pan (6):
      arm64: dts: rockchip: fix regulator name for Lunzn Fastrhino R6xS
      arm64: dts: rockchip: fix usb regulator for Lunzn Fastrhino R6xS
      arm64: dts: rockchip: fix pmu_io supply for Lunzn Fastrhino R6xS
      arm64: dts: rockchip: remove unused usb2 nodes for Lunzn Fastrhino R6xS
      arm64: dts: rockchip: disable display subsystem for Lunzn Fastrhino R6xS
      arm64: dts: rockchip: fixes PHY reset for Lunzn Fastrhino R68S

Cristian Ciocaltea (1):
      arm64: dts: rockchip: Add missing power-domains for rk356x vop_mmu

Diederik de Haas (3):
      arm64: dts: rockchip: Add dma-names to uart1 on quartz64-b
      arm64: dts: rockchip: Add avdd supplies to hdmi on rock64
      arm64: dts: rockchip: Add dma-names to uart1 on Pine64 rk3566 devices

Dragan Simic (2):
      arm64: dts: rockchip: Add GPU OPP voltage ranges to RK356x SoC dtsi
      arm64: dts: rockchip: Update GPU OPP voltages in RK356x SoC dtsi

Heiko Stuebner (2):
      dt-bindings: arm: rockchip: Add ROCK 5 ITX board
      arm64: dts: rockchip: add ROCK 5 ITX board

Jonas Karlman (4):
      dt-bindings: arm: rockchip: Add Radxa ROCK 3B
      arm64: dts: rockchip: Add Radxa ROCK 3B
      dt-bindings: arm: rockchip: Add Xunlong Orange Pi 3B
      arm64: dts: rockchip: Add Xunlong Orange Pi 3B

Marek Vasut (1):
      arm64: dts: rockchip: Drop ethernet-phy-ieee802.3-c22 from PHY compatible string on all RK3588 boards

 .../devicetree/bindings/arm/rockchip.yaml          |   18 +
 arch/arm64/boot/dts/rockchip/Makefile              |    4 +
 arch/arm64/boot/dts/rockchip/rk3328-rock64.dts     |    2 +
 .../boot/dts/rockchip/rk3566-orangepi-3b-v1.1.dts  |   29 +
 .../boot/dts/rockchip/rk3566-orangepi-3b-v2.1.dts  |   70 ++
 .../boot/dts/rockchip/rk3566-orangepi-3b.dtsi      |  678 +++++++++++
 arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi  |    1 +
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts |    1 +
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts |    1 +
 arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi  |    1 +
 .../boot/dts/rockchip/rk3568-fastrhino-r66s.dts    |    4 +
 .../boot/dts/rockchip/rk3568-fastrhino-r66s.dtsi   |   48 +-
 .../boot/dts/rockchip/rk3568-fastrhino-r68s.dts    |   16 +-
 arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts    |  781 +++++++++++++
 arch/arm64/boot/dts/rockchip/rk356x.dtsi           |   13 +-
 arch/arm64/boot/dts/rockchip/rk3588-ok3588-c.dts   |    6 +-
 arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts | 1177 ++++++++++++++++++++
 .../arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi |    3 +-
 18 files changed, 2801 insertions(+), 52 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-orangepi-3b-v1.1.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-orangepi-3b-v2.1.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-orangepi-3b.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

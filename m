Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D6F4C27C41
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Aug 2023 22:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=l6GnNFOwJDkAnnKzIug8dSfCuX2Ui+dlaVdLQenZ0Vk=; b=Cc3YYyCpg/oGGa
	gmvPMT/WBULGDrCnV+ozOaJuKxs37JndM15eV5/O3pdDYvdaodnPuoMLyXB/rlPdpPxlnSyr90wUY
	U6BY7jsJ/JxSMZ/mfOkHBNrz6x5XVMpuP4dgdf2sUF6eR9f5oBcaywWGOV0E0PMMrugKsUmVG/ef9
	KtRX3Z47G4Hh+U/mbHDJjD7iVfuxOmy7F31N9aF5L/wS1vNLYk+Rm+CdTlZix+/Nq+ZjmEc1D44lA
	HLAVWvJSi3Kk2prDpyIkiYV5tpCzrLxODptdqZyu1IVPhY4qQmpeKz8GdTuJ0PfjHUK6CQ6oD78bw
	zOp4swZ7GhPQ+z1hVRUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qWOaj-0054U1-1o;
	Wed, 16 Aug 2023 22:02:13 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qWOad-0054TX-0a;
	Wed, 16 Aug 2023 22:02:08 +0000
Received: from i53875bbf.versanet.de ([83.135.91.191] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qWOab-0007ab-Ls; Thu, 17 Aug 2023 00:02:05 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip dts fixes for 6.5
Date: Thu, 17 Aug 2023 00:02:04 +0200
Message-ID: <4519945.8hzESeGDPO@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230816_150207_224604_380B4C60 
X-CRM114-Status: GOOD (  12.78  )
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

please find a below a collection of fixes for the current release 6.5
cycle.

Please pull

Thanks
Heiko


The following changes since commit 06c2afb862f9da8dc5efa4b6076a0e48c3fbaaa5:

  Linux 6.5-rc1 (2023-07-09 13:53:13 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.5-rockchip-dtsfixes1

for you to fetch changes up to ebceec271e552a2b05e47d8ef0597052b1a39449:

  arm64: dts: rockchip: Fix Wifi/Bluetooth on ROCK Pi 4 boards (2023-07-24 20:51:25 +0200)

----------------------------------------------------------------
Correct wifi interrupt flags for some boards, fixed wifi on Rock PI4,
disabled hs400 speeds for some boards having problems with data
intergrity and some dt property/styling fixes.

----------------------------------------------------------------
Christopher Obbard (2):
      arm64: dts: rockchip: Disable HS400 for eMMC on ROCK Pi 4
      arm64: dts: rockchip: Disable HS400 for eMMC on ROCK 4C+

Cristian Ciocaltea (1):
      arm64: dts: rockchip: Drop invalid regulator-init-microvolt property

Krzysztof Kozlowski (5):
      arm64: dts: rockchip: correct wifi interrupt flag in eaidk-610
      arm64: dts: rockchip: correct wifi interrupt flag in Rock Pi 4B
      arm64: dts: rockchip: correct wifi interrupt flag in Box Demo
      arm64: dts: rockchip: add missing space before { on indiedroid nova
      arm64: dts: rockchip: minor whitespace cleanup around '='

Yogesh Hegde (1):
      arm64: dts: rockchip: Fix Wifi/Bluetooth on ROCK Pi 4 boards

 arch/arm64/boot/dts/rockchip/px30.dtsi                   | 16 ++++++++--------
 arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts           |  1 -
 arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts        |  1 -
 arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts        |  2 +-
 arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi         |  1 -
 arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts     |  3 +--
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi       |  6 +++---
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b-plus.dts  |  2 +-
 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi  |  3 ---
 arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts         |  4 ++--
 arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts       |  3 ---
 arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi        |  2 --
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts       |  2 --
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts       |  2 --
 arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts     |  4 ++--
 arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts           |  2 --
 arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi        |  3 ---
 arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts       |  3 ---
 arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts         |  3 ---
 arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r66s.dtsi  |  4 ----
 arch/arm64/boot/dts/rockchip/rk3568-lubancat-2.dts       |  3 ---
 arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dtsi      |  3 ---
 arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts        |  3 ---
 arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi      |  3 ---
 arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts          |  3 ---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts          |  1 -
 arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts |  8 ++++----
 27 files changed, 22 insertions(+), 69 deletions(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E897AC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Feb 2022 11:46:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IAGbhjCF9Lj85VOpIpLBTTqnK0qGKtNGaic1Gn6OiF8=; b=qNbV3J2GHDdJ9w
	4KfEfxzm9bY9IBvMlhHBqc9ZshkXfqZO4zlkSNFZ9wJpBhwY/BR4WjQeg5Nzx1yOu5wDNS9wG3CwM
	h7Xlgl9fu2BEJX6PTcsyUIguO4TnyttPXlJfwbNVkda/9vfhU5bcJ30RmzlXyT8EVvCCKL79zmw4s
	y3YuWz1tR4QMzJGaq/nETtHTLsfqVe1gujdOiuThPTej06XZUihSrDRYePsXSD8fi0E/IjfeBBonI
	GCdDwmqEh4LJ9mzbDWamK98qwKmmk7lY9d7bkyTe8ZjFLgUx9kPSrpA8L3si75IJKOV1fuH7LqhUO
	LlOwSNgfRaTsuGXnHOBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nMTcT-009SVe-If; Tue, 22 Feb 2022 11:46:13 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nMTcR-009SUW-KW; Tue, 22 Feb 2022 11:46:13 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nMTcN-00038z-Ud; Tue, 22 Feb 2022 12:46:07 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip dts fixes for 5.17
Date: Tue, 22 Feb 2022 12:46:06 +0100
Message-ID: <1973741.CViHJPHrxy@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220222_034611_706433_D52FC813 
X-CRM114-Status: GOOD (  10.43  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The following changes since commit e783362eb54cd99b2cac8b3a9aeac942e6f6ac07:

  Linux 5.17-rc1 (2022-01-23 10:12:53 +0200)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.17-rockchip-dtsfixes1

for you to fetch changes up to 3916c3619599a3970d3e6f98fb430b7c46266ada:

  ARM: dts: rockchip: fix a typo on rk3288 crypto-controller (2022-02-12 01:27:33 +0100)

----------------------------------------------------------------
Fix the display-port-sound on Gru devices, DDR voltage on the Quartz-A
board, fix emmc signal-integrity and usb OTG mode on rk3399-puma as well
as a number of dtschema fixes to make the reduce the number of errors.

----------------------------------------------------------------
Brian Norris (1):
      arm64: dts: rockchip: Switch RK3399-Gru DP to SPDIF output

Corentin Labbe (1):
      ARM: dts: rockchip: fix a typo on rk3288 crypto-controller

Frank Wunderlich (2):
      arm64: dts: rockchip: fix dma-controller node names on rk356x
      arm64: dts: rockchip: drop pclk_xpcs from gmac0 on rk3568

Jakob Unterwurzacher (1):
      arm64: dts: rockchip: fix rk3399-puma eMMC HS400 signal integrity

Krzysztof Kozlowski (1):
      arm64: dts: rockchip: align pl330 node name with dtschema

Peter Geis (1):
      arm64: dts: rockchip: fix Quartz64-A ddr regulator voltage

Quentin Schulz (1):
      arm64: dts: rockchip: fix rk3399-puma-haikou USB OTG mode

Sascha Hauer (2):
      arm64: dts: rockchip: reorder rk3399 hdmi clocks
      ARM: dts: rockchip: reorder rk322x hmdi clocks

 arch/arm/boot/dts/rk322x.dtsi                       |  4 ++--
 arch/arm/boot/dts/rk3288.dtsi                       |  2 +-
 arch/arm64/boot/dts/rockchip/px30.dtsi              |  2 +-
 arch/arm64/boot/dts/rockchip/rk3328.dtsi            |  2 +-
 arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi        | 17 ++++++++++++-----
 arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts |  1 +
 arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi       | 20 ++++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3399.dtsi            |  6 +++---
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts  |  2 --
 arch/arm64/boot/dts/rockchip/rk3568.dtsi            |  6 ++----
 arch/arm64/boot/dts/rockchip/rk356x.dtsi            |  4 ++--
 11 files changed, 45 insertions(+), 21 deletions(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

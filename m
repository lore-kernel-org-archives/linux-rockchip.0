Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03FD6C2BD09
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Jun 2024 21:36:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YH+RL0UTP36KSCePH3hWfUfrN2pMH8H7TgsgPQX/TVw=; b=3pGKZEWLqvYWz1
	PjM4opQYrTbE9xLwrxDhAn9bQWEiAg6YBZeI4IYO/sN/xtlqdqh+vUwRQo1fhFjOCBuhvcI3pwSOM
	ZgenrCf7OlFozky23fkCP+6YT4rLND6dnF4MaVlb3Iznid2cKsX/UK3C14j/Kt9nJU96HZ98ZHj7J
	23KNrqUvWduIqZgLESgNVRtBoadmEY/1tRA0JaAhHrLlpahENrmyxLpoji0E08HD95iLLFfgPTAE2
	DGkyFeKMvdlvVnOfD59kQDzvWZ0HngSULkWjHRiX3Z5rWg3CymBk7FYYS2RRCJ6pY1maKzTvcJXh5
	exd//X5S/5Fxd9Z6kkfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMwmq-0000000Bmhs-0hyV;
	Thu, 27 Jun 2024 21:36:12 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMwmj-0000000Bmf9-3JwC;
	Thu, 27 Jun 2024 21:36:11 +0000
Received: from i53875b6a.versanet.de ([83.135.91.106] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sMwmh-0002b5-OG; Thu, 27 Jun 2024 23:36:03 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip dts fixes for 6.10
Date: Thu, 27 Jun 2024 23:36:02 +0200
Message-ID: <10237789.nnTZe4vzsl@diego>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240627_143605_865997_7E4296CE 
X-CRM114-Status: GOOD (  13.71  )
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

please find a below a collection of fixes for the current release 6.10
cycle.

Please pull

Thanks
Heiko


The following changes since commit 1613e604df0cd359cf2a7fbd9be7a0bcfacfabd0:

  Linux 6.10-rc1 (2024-05-26 15:20:12 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.10-rockchip-dtsfixes1

for you to fetch changes up to 8d7ec44aa5d1eb94a30319074762a1740440cdc8:

  arm64: dts: rockchip: Add sound-dai-cells for RK3368 (2024-06-24 17:05:23 +0200)

----------------------------------------------------------------
Apart from the regular dts fixes for wrong addresses, missing
or wrong properties, this reverts the previous move away from
cd-gpios to the mmc-controller's internal card-detect.
With this change applied, it was reported that boards could not
detect card anymore, so this go reverted of course.

----------------------------------------------------------------
Alex Bee (1):
      arm64: dts: rockchip: Add sound-dai-cells for RK3368

Andy Yan (1):
      arm64: dts: rockchip: Fix the i2c address of es8316 on Cool Pi 4B

Dragan Simic (1):
      arm64: dts: rockchip: Fix the DCDC_REG2 minimum voltage on Quartz64 Model B

FUKAUMI Naoki (3):
      Revert "arm64: dts: rockchip: remove redundant cd-gpios from rk3588 sdmmc nodes"
      arm64: dts: rockchip: make poweroff(8) work on Radxa ROCK 5A
      arm64: dts: rockchip: fix PMIC interrupt pin on ROCK Pi E

Heiko Stuebner (1):
      arm64: dts: rockchip: set correct pwm0 pinctrl on rk3588-tiger

Hsin-Te Yuan (1):
      arm64: dts: rockchip: Fix the value of `dlg,jack-det-rate` mismatch on rk3399-gru

Johan Jonker (1):
      ARM: dts: rockchip: rk3066a: add #sound-dai-cells to hdmi node

Jonas Karlman (3):
      arm64: dts: rockchip: Fix rk3308 codec@ff560000 reset-names
      arm64: dts: rockchip: Fix SD NAND and eMMC init on rk3308-rock-pi-s
      arm64: dts: rockchip: Rename LED related pinctrl nodes on rk3308-rock-pi-s

 arch/arm/boot/dts/rockchip/rk3066a.dtsi                |  1 +
 arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts      | 18 +++++++++++++-----
 arch/arm64/boot/dts/rockchip/rk3308.dtsi               |  2 +-
 arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts      |  4 ++--
 arch/arm64/boot/dts/rockchip/rk3368.dtsi               |  3 +++
 arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi           |  2 +-
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts     |  2 +-
 .../arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts |  1 +
 arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts    |  1 +
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts        |  1 +
 arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi         |  5 +++++
 arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dts     |  4 ++--
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts       |  2 ++
 13 files changed, 34 insertions(+), 12 deletions(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

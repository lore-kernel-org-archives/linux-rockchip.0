Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 920A5CDB465
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Oct 2023 21:22:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=A0ZqG/HNYbQK7sWP1YHJQroq2kMljYqlL3TgKs+Gfn4=; b=qQhEKYVFbhOfZy
	gLXaNusfPEcLm7kK3UPUZrEr8V1SA/GtoC+vVjvL+OA4dDNl5dkZtqSeUOGgx6culJ99y5aSfq4ee
	pYntpXlRRbWzwqdGwXR00EcMfswomNH7AJP3//1EmL9SZHutS5oDTVb+Mn/JDiafYt5u6kzTwWIRb
	jKrf3UmX+W139Yo98DVASN3xb8jFDmJbs6U8QH3Ofu2WV53LDjlQfw1hHIB/tcGvmPHMAFV5ijaBf
	m7s4j9bUtwJ5qWwIy+THrufRN7mZU/Ew0Dumhj0w7RaP1nBv1XKe08ujrXHae6KeCvcJa9dp0WaQc
	XR9s7gvLYcVZjCbdclkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qsV2Q-00AZOl-2D;
	Mon, 16 Oct 2023 21:22:10 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qsV2L-00AZOJ-2b;
	Mon, 16 Oct 2023 21:22:09 +0000
Received: from [194.95.143.137] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qsV2A-00012N-W7; Mon, 16 Oct 2023 23:21:55 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip dts fixes for 6.6
Date: Mon, 16 Oct 2023 23:21:54 +0200
Message-ID: <1965242.usQuhbGJ8B@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231016_142206_987248_A8B63D2F 
X-CRM114-Status: GOOD (  10.41  )
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

please find a below a collection of fixes for the current release 6.6
cycle.

Please pull

Thanks
Heiko


The following changes since commit 0bb80ecc33a8fb5a682236443c1e740d5c917d1d:

  Linux 6.6-rc1 (2023-09-10 16:28:41 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.6-rockchip-dtsfixes1

for you to fetch changes up to 8cd79b729e746cb167f1563d015a93fc0a079899:

  arm64: dts: rockchip: Fix i2s0 pin conflict on ROCK Pi 4 boards (2023-10-16 21:10:05 +0200)

----------------------------------------------------------------
I2S pinctrl fixes, someone resurrected the rk3128 arm32 and found some
needed fixes and finally some sound fixes for the px30 ringneck som.

----------------------------------------------------------------
Alex Bee (4):
      ARM: dts: rockchip: Fix i2c0 register address for RK3128
      ARM: dts: rockchip: Add missing arm timer interrupt for RK3128
      ARM: dts: rockchip: Add missing quirk for RK3128's dma engine
      ARM: dts: rockchip: Fix timer clocks for RK3128

Christopher Obbard (2):
      arm64: dts: rockchip: Add i2s0-2ch-bus-bclk-off pins to RK3399
      arm64: dts: rockchip: Fix i2s0 pin conflict on ROCK Pi 4 boards

Ermin Sunj (1):
      arm64: dts: rockchip: use codec as clock master on px30-ringneck-haikou

Jakob Unterwurzacher (1):
      arm64: dts: rockchip: set codec system-clock-fixed on px30-ringneck-haikou

 arch/arm/boot/dts/rockchip/rk3128.dtsi                | 18 ++++++++++--------
 arch/arm64/boot/dts/rockchip/px30-ringneck-haikou.dts | 10 ++++++----
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi    |  1 +
 arch/arm64/boot/dts/rockchip/rk3399.dtsi              | 10 ++++++++++
 4 files changed, 27 insertions(+), 12 deletions(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

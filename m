Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14170CDB465
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Oct 2023 21:24:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dDiooNrOj41K/OJyoz5M1boli3dT9tnO+RF/3Xp8j6g=; b=2/I6FM+tl3B2xR
	SqkFm56If3lDDSqV5YcYYAIoykYyiAM7XfOFaIOhjksfghdlcMhW1a7sye1JVmzavZ8XsT9fp0bIO
	ZOFpzIhpRvAW5tYb3LKfSf31N3kG7TgHLsDH3e0rH5hWSoq9hRn6raqsp469Gf8eNeQWJFwzuPDNV
	eHspOyJWOsqKz72iJkmkc10d0xfEUdh8DQgrUPm7iynLyU/wy9B6m/6sQWv3psAUdGB99Umx5ylRF
	x1qZ+VTbzyLsbMN+CwrQh3uChTalsHw3JyOcZlbPuKHifUh/bjVA8se8AxBchkpsvrHiRbTKYAp5A
	ObVNBMhEjskkRvsuRfBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qsV4W-00AZfc-0v;
	Mon, 16 Oct 2023 21:24:20 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qsV4U-00AZey-0N;
	Mon, 16 Oct 2023 21:24:19 +0000
Received: from [194.95.143.137] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qsV4R-00014F-P5; Mon, 16 Oct 2023 23:24:15 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip dts32 changes for 6.6 #1
Date: Mon, 16 Oct 2023 23:24:15 +0200
Message-ID: <2167992.Mh6RI2rZIc@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231016_142418_148852_4D18210A 
X-CRM114-Status: GOOD (  10.72  )
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

The following changes since commit 0bb80ecc33a8fb5a682236443c1e740d5c917d1d:

  Linux 6.6-rc1 (2023-09-10 16:28:41 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.7-rockchip-dts32-1

for you to fetch changes up to c96b13d7c0e494e1072648301e61e13a2a85a362:

  ARM: dts: rockchip: Switch to operating-points-v2 for RK3128's CPU (2023-10-04 23:27:04 +0200)

----------------------------------------------------------------
Someone resurrected a rk3128 board and provided actual SMP support
for it. Of course firmware for that SoC does not come with TF-A so
it's the old-style SMP the older arm32 Rockchip SoCs use.

And additionally the rv1126 got pwm support.

----------------------------------------------------------------
Alex Bee (4):
      ARM: dts: rockchip: Add SRAM node for RK3128
      ARM: dts: rockchip: Add CPU resets for RK3128
      ARM: dts: rockchip: Enable SMP bring-up for RK3128
      ARM: dts: rockchip: Switch to operating-points-v2 for RK3128's CPU

Jagan Teki (6):
      dt-bindings: pwm: rockchip: Document rv1126-pwm
      ARM: dts: rockchip: Add pwm2m0 pins to rv1126
      ARM: dts: rockchip: Add pwm2 node to rv1126
      ARM: dts: rockchip: Add pwm11m0 pins to rv1126
      ARM: dts: rockchip: Add pwm11 node to rv1126
      ARM: dts: rockchip: Enable pwm fan for edgeble-neu2

 .../devicetree/bindings/pwm/pwm-rockchip.yaml      |  1 +
 arch/arm/boot/dts/rockchip/rk3128.dtsi             | 61 ++++++++++++++++++++--
 .../boot/dts/rockchip/rv1126-edgeble-neu2-io.dts   |  4 ++
 arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi     | 16 ++++++
 arch/arm/boot/dts/rockchip/rv1126.dtsi             | 22 ++++++++
 5 files changed, 100 insertions(+), 4 deletions(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

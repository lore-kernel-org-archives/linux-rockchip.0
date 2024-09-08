Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30411CD4F4C
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Sep 2024 21:51:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7Gvt2dnWh8rlKDOLEg4l5CN/TCryb/84D/ZerEIszKQ=; b=AzlIWnzmPNFEbO
	lYmMiNggONr+raU+2NShR8fcBfVo1zxsWGzSQkgYPQ6k/neC3N6mLRsvxRX8VQXGiT+B/U+cf6jXF
	sRVoq9+Ti07qJQmJb+ns1FL7Kp9jqUlIspqeWCXylfva+mvDcPpo6EIshSznzzUV23Y5vK/2oo2RY
	xwO8eZ+l2FbJXdr9by4md/EJBFxuZNvACZ8wM84kxiWoiOxtwx4n75QGJ62UG2BZUySVey8jjAwvd
	/8VdtsnvcLdE8UKaBgId5UCdGXiErNxjX0bYEOlnzqNyTKZ7xU4EytN2EyWLcgiN1FLLeQR5rBaUc
	QHmqLYH6r2S05zZOkUgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snPo9-0000000HX0z-1a0h;
	Sun, 08 Sep 2024 21:50:57 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snPn0-0000000HWsR-1sPw
	for linux-rockchip@lists.infradead.org;
	Sun, 08 Sep 2024 21:49:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=O+1lGf+egLrWXX0JMaceIaPCe6zCuqwFkQ/tynXfCvo=; b=f/NJvp6lU6SW7rzkFmZMXUCApn
	OHUZV3Umn2Jfq5Ek+MVIFX/XtAXcW/60v88c2ZyqNBgthqjPMeayfSChMj90tNA5DsEeNMab0JLRG
	/XC8IuZOqUto/EQWLfna1c2/4mx1uB81r1P3Tcd3ouqdj4gqtL9mWQwOgH3q46yreSEE6b0L4la4W
	XO3csrSLLwZfQH8C3q9cp70N74NPswzi1bUdJGhdoDK+LeDYb5OW5O+OnXR0ehbX8xRZ+SFwfSoh4
	XYBR4x9/qG1F8G/zk+/93tJ+JT91uqA7B0G1o7qQuqnS9xWZQiyWbS4ZessKLY0Y6EpcGStD3kYIh
	8HJRPu2w==;
Received: from i5e8616cc.versanet.de ([94.134.22.204] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1snPmv-0004Go-VE; Sun, 08 Sep 2024 23:49:42 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: mturquette@baylibre.com, Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: [GIT PULL] Rockchip clock changes for 6.12 #1
Date: Sun, 08 Sep 2024 23:51:56 +0200
Message-ID: <2436757.DCRlREXTYf@diego>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240908_144946_524726_E5446CED 
X-CRM114-Status: GOOD (  13.19  )
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

Hi Mike, Stephen,

please find below a pull-request with some Rockchip clock changes for 6.12

Please pull.

Thanks
Heiko


The following changes since commit 8400291e289ee6b2bf9779ff1c83a291501f017b:

  Linux 6.11-rc1 (2024-07-28 14:19:55 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.12-rockchip-clk1

for you to fetch changes up to 12fd64babaca4dc09d072f63eda76ba44119816a:

  clk: rockchip: fix error for unknown clocks (2024-08-30 16:59:24 +0200)

----------------------------------------------------------------
Getting rid of the rest of CLK_NR_CLKS defines that reported the
the max number of clocks, but should never have been part of the
devicetree binding header.
New clock controller driver for the rk3576.
And some fixes for rk3228 and rk3588.

----------------------------------------------------------------
Alexander Shiyan (1):
      clk: rockchip: rk3588: Fix 32k clock name for pmu_24m_32k_100m_src_p

Detlev Casanova (1):
      dt-bindings: clock, reset: Add support for rk3576

Elaine Zhang (2):
      clk: rockchip: Add new pll type pll_rk3588_ddr
      clk: rockchip: Add clock controller for the RK3576

Johan Jonker (9):
      clk: rockchip: px30: Drop CLK_NR_CLKS CLKPMU_NR_CLKS usage
      clk: rockchip: rk3036: Drop CLK_NR_CLKS usage
      clk: rockchip: rk3228: Drop CLK_NR_CLKS usage
      clk: rockchip: rk3288: Drop CLK_NR_CLKS usage
      clk: rockchip: rk3308: Drop CLK_NR_CLKS usage
      clk: rockchip: rk3328: Drop CLK_NR_CLKS usage
      clk: rockchip: rk3368: Drop CLK_NR_CLKS usage
      clk: rockchip: rk3399: Drop CLK_NR_CLKS CLKPMU_NR_CLKS usage
      dt-bindings: clock: rockchip: remove CLK_NR_CLKS and CLKPMU_NR_CLKS

Jonas Karlman (1):
      clk: rockchip: Set parent rate for DCLK_VOP clock on RK3228

Krzysztof Kozlowski (1):
      dt-bindings: clock: rockchip,rk3588-cru: drop unneeded assigned-clocks

Sebastian Reichel (2):
      clk: rockchip: rk3588: drop unused code
      clk: rockchip: fix error for unknown clocks

 .../bindings/clock/rockchip,rk3576-cru.yaml        |   56 +
 .../bindings/clock/rockchip,rk3588-cru.yaml        |    4 -
 drivers/clk/rockchip/Kconfig                       |    7 +
 drivers/clk/rockchip/Makefile                      |    1 +
 drivers/clk/rockchip/clk-pll.c                     |    6 +-
 drivers/clk/rockchip/clk-px30.c                    |   10 +-
 drivers/clk/rockchip/clk-rk3036.c                  |    5 +-
 drivers/clk/rockchip/clk-rk3228.c                  |    7 +-
 drivers/clk/rockchip/clk-rk3288.c                  |    5 +-
 drivers/clk/rockchip/clk-rk3308.c                  |    5 +-
 drivers/clk/rockchip/clk-rk3328.c                  |    5 +-
 drivers/clk/rockchip/clk-rk3368.c                  |    5 +-
 drivers/clk/rockchip/clk-rk3399.c                  |   10 +-
 drivers/clk/rockchip/clk-rk3576.c                  | 1820 ++++++++++++++++++++
 drivers/clk/rockchip/clk-rk3588.c                  |   42 +-
 drivers/clk/rockchip/clk.c                         |    3 +-
 drivers/clk/rockchip/clk.h                         |   54 +
 drivers/clk/rockchip/rst-rk3576.c                  |  651 +++++++
 include/dt-bindings/clock/px30-cru.h               |    4 -
 include/dt-bindings/clock/rk3036-cru.h             |    2 -
 include/dt-bindings/clock/rk3228-cru.h             |    2 -
 include/dt-bindings/clock/rk3288-cru.h             |    2 -
 include/dt-bindings/clock/rk3308-cru.h             |    2 -
 include/dt-bindings/clock/rk3328-cru.h             |    2 -
 include/dt-bindings/clock/rk3368-cru.h             |    2 -
 include/dt-bindings/clock/rk3399-cru.h             |    4 -
 include/dt-bindings/clock/rockchip,rk3576-cru.h    |  592 +++++++
 include/dt-bindings/reset/rockchip,rk3576-cru.h    |  564 ++++++
 28 files changed, 3794 insertions(+), 78 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3576-cru.yaml
 create mode 100644 drivers/clk/rockchip/clk-rk3576.c
 create mode 100644 drivers/clk/rockchip/rst-rk3576.c
 create mode 100644 include/dt-bindings/clock/rockchip,rk3576-cru.h
 create mode 100644 include/dt-bindings/reset/rockchip,rk3576-cru.h




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

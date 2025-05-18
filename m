Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 155C9C3ABC9
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 May 2025 09:12:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+eqa51PiL6Tn8WIpoVxgTwbfcm/hgD656RWwWS3O418=; b=bwzBWm2bE6lvup
	lLLLnoIa/VsztbhD4gZX+mnAR4rLDO/rjVa0ScFcuzruvow5Fp2WHwjfNFimE8/qSSuJn3wqTyjLQ
	arDeD5D2CDVzmcGtAgDXKyoQsb2egY7ryj3gSOam70qPaySYBy51h30zzCuDOvLNIhRaFy6ZiHNgT
	m1zbGDeQ7lj7+u+ZX7uMaKpkuhngkO5X8XP5xm8kUCJrUxO6hfzsZuEO+3d7p3ht866nRry0YzNcc
	8E9KQgxBDA8rfWfDpUG6ie6ZeIAgdD6MfdO3MPv5q/Uigkz5bb1qkkTUa8LXh3RN14seZgfL8yWjM
	o0MukB5moNT+zWEWVCbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGa3l-00000006w3K-46Cx;
	Sun, 18 May 2025 09:11:53 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGa3j-00000006w2v-2Tb6
	for linux-rockchip@lists.infradead.org;
	Sun, 18 May 2025 09:11:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References;
	bh=AdFuvZJeiqDCxX+w7JK++iEIq9BKWWMURYYKbVwc408=; b=jWjTDpkIG7GeW6vZibvfKT5NSq
	u2N46/9tAbAFvDZ4J5DFOU20D3ZAMm+f7u0N7VFEocr3o3vEe4lGcGs4/d54RjIUeAKHo4ftXsbpb
	dozS7ktQntquxCF30Tx2GrUbOkAyKmK+5r6gGBOccQZAQLXILk6ESWwEB/N/8lNtYd6+M7Svr+Q6Q
	Q/eNEYevA6WItafbp6vXz1IsYYPMPmzi1eN+vBUxryU6jDNWGFbO8FyE1ainLk8Cp/tNIBakaAn13
	Z3sLrlKOhv9g60WBGPzLgKbX6nibElUtEc7GO3C9qugIL76gJhszTKdXEJP5i22+EDu2VzrOshRB4
	HFN+semg==;
Received: from i53875a50.versanet.de ([83.135.90.80] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uGa3d-0002FM-94; Sun, 18 May 2025 11:11:45 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: mturquette@baylibre.com, Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: [GIT PULL] Rockchip clock changes for 6.16 #1
Date: Sun, 18 May 2025 11:11:44 +0200
Message-ID: <23068874.EfDdHjke4D@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250518_021151_661335_9F2FE0A2 
X-CRM114-Status: GOOD (  10.86  )
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

please find below a pull-request with Rockchip clock change for 6.16


Please pull.

Thanks
Heiko


The following changes since commit 0af2f6be1b4281385b618cb86ad946eded089ac8:

  Linux 6.15-rc1 (2025-04-06 13:11:33 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.16-rockchip-clk1

for you to fetch changes up to 276036283716b9135525b195675ea42801bde204:

  clk: rockchip: rk3528: add slab.h header include (2025-05-15 14:49:05 +0200)

----------------------------------------------------------------
Ability to handle different "General Register Files" syscons, not just
a single system-one, plus ability to model individual gates found there.

For whatever reason Rockchip also moved the mmc-phase-clocks from the
clock-unit for the GRF on some newer socs like the rk3528 (before moving
them fully to the mmc controller itself on the rk3576), so add a new
clock-variant for the phases, reusing the new GRF handling.

Additionally the old rk3036 got real handling of the usb480m mux and
some PLL rates were added.

----------------------------------------------------------------
Alexander Shiyan (1):
      clk: rockchip: rk3588: Add PLL rate for 1500 MHz

Heiko Stuebner (9):
      Merge branch 'v6.16-shared/clkids' into v6.16-clk/next
      Merge branch 'v6.16-shared/clkids' into v6.16-clk/next
      dt-bindings: clock: rk3036: add SCLK_USB480M clock-id
      clk: rockchip: rk3036: fix implementation of usb480m clock mux
      clk: rockchip: rk3036: mark ddrphy as critical
      clk: rockchip: rename branch_muxgrf to branch_grf_mux
      clk: rockchip: rename gate-grf clk file
      clk: rockchip: rk3576: add missing slab.h include
      clk: rockchip: rk3528: add slab.h header include

Nicolas Frattaroli (4):
      dt-bindings: clock: rk3576: add IOC gated clocks
      clk: rockchip: introduce auxiliary GRFs
      clk: rockchip: introduce GRF gates
      clk: rockchip: add GATE_GRFs for SAI MCLKOUT to rk3576

Vasily Khoruzhick (1):
      clk: rockchip: rk3568: Add PLL rate for 33.3MHz

Yao Zi (5):
      clk: rockchip: Drop empty init callback for rk3588 PLL type
      dt-bindings: clock: Add GRF clock definition for RK3528
      clk: rockchip: Support MMC clocks in GRF region
      clk: rockchip: rk3528: Add SD/SDIO tuning clocks in GRF region
      clk: rockchip: Pass NULL as reg pointer when registering GRF MMC clocks

 drivers/clk/rockchip/Makefile                   |   1 +
 drivers/clk/rockchip/clk-gate-grf.c             | 105 ++++++++++++++++++++++++
 drivers/clk/rockchip/clk-mmc-phase.c            |  24 +++++-
 drivers/clk/rockchip/clk-pll.c                  |  11 ---
 drivers/clk/rockchip/clk-rk3036.c               |  11 ++-
 drivers/clk/rockchip/clk-rk3288.c               |   2 +-
 drivers/clk/rockchip/clk-rk3328.c               |   6 +-
 drivers/clk/rockchip/clk-rk3528.c               |  83 +++++++++++++++++--
 drivers/clk/rockchip/clk-rk3568.c               |   3 +-
 drivers/clk/rockchip/clk-rk3576.c               |  60 +++++++++++---
 drivers/clk/rockchip/clk-rk3588.c               |   1 +
 drivers/clk/rockchip/clk-rv1126.c               |   2 +-
 drivers/clk/rockchip/clk.c                      |  38 ++++++++-
 drivers/clk/rockchip/clk.h                      |  75 ++++++++++++++++-
 include/dt-bindings/clock/rk3036-cru.h          |   1 +
 include/dt-bindings/clock/rockchip,rk3528-cru.h |   6 ++
 include/dt-bindings/clock/rockchip,rk3576-cru.h |  10 +++
 17 files changed, 390 insertions(+), 49 deletions(-)
 create mode 100644 drivers/clk/rockchip/clk-gate-grf.c




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

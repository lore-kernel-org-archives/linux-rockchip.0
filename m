Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84467C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Nov 2022 14:01:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1zM+BTCrNvCtyMcC9k/2pWUAN2718nwoZL8/JnHoktE=; b=Kby4spWmvY6ubn
	tl0wyZ6i4pczNPVbSKDc4sVg7Uepfag+nBMdbW9iiUqaGlI6h3F9GNA2t2g92Vzsk3MgNSsrcMAL1
	Ongwtq6N3XNh2ZgR+fjtLJ4BpWjuMhoHbwRn6Lvru09UR+tgojpRmdiJXKQicy6wmPLJIn4ukOTp2
	Q0UXCwZ/gDqfUCAjB2YfZ1Dmm4oWgmEpx/z1ZK6bDNMJK1uRl2hUsVaXdR1vkLYeYxF3swSCPFuXs
	9fS1L49uelZM0KrxUS3PzevkUx5gvR9DpjrQLjpdnAcMmBe8ErIuj4dbqbb1GBxIvxmoa25KkD/i5
	Px9lNpdr8wpw70hsERFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxqJK-00HScH-8x; Wed, 23 Nov 2022 14:01:10 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxqJH-00HSZi-Fa
	for linux-rockchip@lists.infradead.org; Wed, 23 Nov 2022 14:01:08 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oxqJC-0008Nh-7c; Wed, 23 Nov 2022 15:01:02 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: mturquette@baylibre.com, Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: [GIT PULL] Rockchip clock changes for 6.1 #1
Date: Wed, 23 Nov 2022 15:01:01 +0100
Message-ID: <23196966.EfDdHjke4D@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221123_060107_587756_C471134F 
X-CRM114-Status: GOOD (  11.64  )
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

please find below a pull-request with some Rockchip stuff.

Mainly the support for the clock-controller for the new and shiny rk3588,

Please pull.

Thanks
Heiko

The following changes since commit 9abf2313adc1ca1b6180c508c25f22f9395cc780:

  Linux 6.1-rc1 (2022-10-16 15:36:24 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.2-rockchip-clk-1

for you to fetch changes up to 739a6a6bbdb793bd57938cb24aa5a6df89983546:

  clk: rockchip: Fix memory leak in rockchip_clk_register_pll() (2022-11-23 14:51:30 +0100)

----------------------------------------------------------------
Support for the clock and reset unit of the rk3588, as well as a fix
for a possible memory leak in the error path of PLL creation.

----------------------------------------------------------------
Corentin Labbe (1):
      clk: rockchip: use proper crypto0 name on rk3399

Elaine Zhang (5):
      dt-bindings: clock: add rk3588 cru bindings
      clk: rockchip: add register offset of the cores select parent
      clk: rockchip: add pll type for RK3588
      clk: rockchip: allow additional mux options for cpu-clock frequency changes
      clk: rockchip: add clock controller for the RK3588

Heiko Stuebner (1):
      Merge branch 'v6.2-shared/clockids' into v6.2-clk/next

Sebastian Reichel (4):
      dt-bindings: clock: add rk3588 clock definitions
      dt-bindings: reset: add rk3588 reset definitions
      clk: rockchip: simplify rockchip_clk_add_lookup
      clk: rockchip: add lookup table support

Xiu Jianfeng (1):
      clk: rockchip: Fix memory leak in rockchip_clk_register_pll()

 .../bindings/clock/rockchip,rk3588-cru.yaml        |   71 +
 drivers/clk/rockchip/Kconfig                       |    8 +
 drivers/clk/rockchip/Makefile                      |    1 +
 drivers/clk/rockchip/clk-cpu.c                     |   69 +-
 drivers/clk/rockchip/clk-pll.c                     |  219 +-
 drivers/clk/rockchip/clk-rk3588.c                  | 2533 ++++++++++++++++++++
 drivers/clk/rockchip/clk.c                         |   14 +-
 drivers/clk/rockchip/clk.h                         |   95 +-
 drivers/clk/rockchip/rst-rk3588.c                  |  857 +++++++
 drivers/clk/rockchip/softrst.c                     |   34 +-
 include/dt-bindings/clock/rk3399-cru.h             |    6 +-
 include/dt-bindings/clock/rockchip,rk3588-cru.h    |  766 ++++++
 include/dt-bindings/reset/rockchip,rk3588-cru.h    |  754 ++++++
 13 files changed, 5389 insertions(+), 38 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3588-cru.yaml
 create mode 100644 drivers/clk/rockchip/clk-rk3588.c
 create mode 100644 drivers/clk/rockchip/rst-rk3588.c
 create mode 100644 include/dt-bindings/clock/rockchip,rk3588-cru.h
 create mode 100644 include/dt-bindings/reset/rockchip,rk3588-cru.h




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

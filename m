Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3F31C55ABF
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Aug 2026 21:24:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lw/Gg8o2Ak/cbPa0L72jZ+YfDp+AAgFqcLSJ/DwZiO8=; b=jiEUoDR2E3G469
	qXaeM4VQT9m+aJcjXwb5o9PoEdZ44w+xWGzEz69M/OpHhJWjl0PmTMdIxB5Ga9kmPW+BzX1KnEiyr
	ZMeJam518ozYfph3vRicrPVhtf/0h3f2sPNSinnTeiws3p/6WESZV47DlV/ZTL62zhMflckGMtfqx
	/Isgu+6fLO4CZ1hjqpq4F/b4xYxWTrEsubwyK3WndmVu0rs+sRenwmafrNNBLuvPVUQP+Cu4b0yar
	8rdcge6Dnt9PSrZWf27+Ru1p4isC13ryFAq4TnkWiT+So5pvVIXLJOZlpsc4EVdE7iDfXcnkvFEKB
	nLIXSUI1nRyGO2sDi1yA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrj5q-00000004ZYC-3Kz2;
	Wed, 05 Aug 2026 21:24:06 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrj5n-00000004ZXi-3Php
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Aug 2026 21:24:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:In-Reply-To:References;
	bh=69ddStXH+uawY9wnGEcyOUmFbWFTQi65z7TwXp8WFio=; b=q771X4BhW9n9gnvFTSr3yHQf/E
	1HlF9lcOySuxLA9mZaddPnnKn62YXXu/ZoDyYIOZ77tabrody75Ic5cO47hYyOz48wiB3wOcB7g9T
	b/9aZ5pUrgHfXxq2JYrL3eCLGZqZ3Gnb/1wJ8iSqwyJDfUF3I150AmjoI3XDOliRI5uxXf37asB91
	yHFmisegqfQmS5ra8Etf0ociqYvdyvjTYiuAlB8OCTCgGftsZYIBakccvz4qoA8bSJxm+LRAm/pi6
	/om5KTXUjS54yoHf2wBuHR+KgEHefvAN0UoMoWMq98onS4ARHGxn2AJM7ZYYrAVHd6PvtugqNiuhn
	9PVN2rrg==;
From: Heiko Stuebner <heiko@sntech.de>
To: mturquette@baylibre.com, Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: [GIT PULL] Rockchip clock changes for 7.3 #1
Date: Wed, 05 Aug 2026 23:23:57 +0200
Message-ID: <5218537.CQOukoFCf9@diego>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260805_142403_853590_40BA622E 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
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

please find below a pull-request with Rockchip clock changes for 7.3

Please pull.

Thanks
Heiko

The following changes since commit dc59e4fea9d83f03bad6bddf3fa2e52491777482:

  Linux 7.2-rc1 (2026-06-28 12:01:31 -0700)

are available in the Git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v7.3-rockchip-clk1

for you to fetch changes up to 586ff159ec02533c17dd928641529cb0b52e9c62:

  clk: rockchip: rk3576: fix source muxes for SPI0..SPI4 (2026-08-05 22:45:22 +0200)

----------------------------------------------------------------
Clock driver for RV1106, fix for rk3576 spi source mux, better representing
fractional PLL coefficients and a fix for the dclk of the 3rd video-port to
not affect other compoents when its rate gets changed.

----------------------------------------------------------------
Alexey Charkov (3):
      clk: rockchip: Fix the fractional part denominator on RK3588/RK3576 PLLs
      clk: rockchip: Fractional PLL coefficient on RK3588/RK3576 is two's complement
      clk: rockchip: rk3576: fix source muxes for SPI0..SPI4

Heiko Stuebner (2):
      clk: rockchip: rk3588: Don't change PLL rates when setting dclk_vop2_src
      clk: rockchip: rk3588: Allow VP2 the same sourcing options as other VPs

Simon Glass (2):
      dt-bindings: clock: rockchip: Add RV1106 CRU support
      clk: rockchip: Add clock controller for the RV1106

 .../bindings/clock/rockchip,rv1106-cru.yaml        |   60 ++
 drivers/clk/rockchip/Kconfig                       |    7 +
 drivers/clk/rockchip/Makefile                      |    1 +
 drivers/clk/rockchip/clk-pll.c                     |   16 +-
 drivers/clk/rockchip/clk-rk3576.c                  |   15 +-
 drivers/clk/rockchip/clk-rk3588.c                  |    6 +-
 drivers/clk/rockchip/clk-rv1106.c                  | 1099 ++++++++++++++++++++
 drivers/clk/rockchip/clk.h                         |    8 +-
 include/dt-bindings/clock/rockchip,rv1106-cru.h    |  306 ++++++
 9 files changed, 1500 insertions(+), 18 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rv1106-cru.yaml
 create mode 100644 drivers/clk/rockchip/clk-rv1106.c
 create mode 100644 include/dt-bindings/clock/rockchip,rv1106-cru.h




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9DC90CFD362
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Nov 2025 21:57:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8vIoSg3Ct3vlFEq7JDrkTzGnjS5EAmut6vHAAH/yE9E=; b=msPkhgPnX+nWR6
	BQTnoexfePf31axAtieAA4Jlb3W4ElEbuwvMDwJ9TZZSZlqPkRSjAO7nyQr578o2d0IRwl3TG8PAo
	Udh3X9Dfm7T7fwrdLccHOQcKZMNsWFrAuCy2MwHP8OOo5GN68lunmrnIaatRxQm7c9C99hEJpxScn
	6LLdb6ibeDRqaFgFNIZhpT7QhyEJi8RoQk8Hi/gtxnRQSiKDjhTGzHvc+e0+UmlT+piSbXuY28Z/p
	N01RJ29oZ4ckoT8KfLmWBBjzQcpoo7QtfSGlHXMVWLEvGIaeAP4ZlQr5QfR+o+PzbL2xuZJhdYuHL
	4CAI+xw1mZAM+Qbiv++A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNeYf-0000000CNC3-2ZEY;
	Mon, 24 Nov 2025 21:57:17 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNeYd-0000000CNB5-28ra
	for linux-rockchip@lists.infradead.org;
	Mon, 24 Nov 2025 21:57:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:In-Reply-To:References;
	bh=KszSCRsCc5nIwYxSZxnDaIj65EFTsnch4XIdTt4IG+8=; b=wp/3dF2ZG/ZL9/g31KzMK6Ds0b
	wl2TJgttXzFk/rRLuj8AG0DBPVxPQL5OAY6Ljjh38AZO/cpWdxvPWlRKlqzKFjzjxqOMHmNJfzxiy
	iVtR54lAWUWhQG2mak/w42lKM8sMgMl5bDt6hkhYU6P50FmYWtHejd08hF+szmuXOEPPXEL7aayXg
	MibDv/9P0n95/FD9P5bAIgCCO352JihwXItxCXL1k3UUA1mIiZSGknP9rbBfB28p1aHGDl5T916Zi
	5Pjtkcxm9d/jENwpexzBU9/4C7gJ4T3uKFuqf8s5CDlMwrjI1i7aDEFdED/vbnU4Za+a7+YXIjcoA
	glxLLbNA==;
Received: from i53875be6.versanet.de ([83.135.91.230] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vNeYY-0006Nk-Bo; Mon, 24 Nov 2025 22:57:10 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: mturquette@baylibre.com, Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: [GIT PULL] Rockchip clock changes for 6.19 #1
Date: Mon, 24 Nov 2025 22:57:09 +0100
Message-ID: <3018362.e9J7NaK4W3@diego>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251124_135715_577500_6DD3A392 
X-CRM114-Status: GOOD (  11.75  )
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

please find below a pull-request with Rockchip clock change for 6.19

Please pull.

Thanks
Heiko


The following changes since commit 3a8660878839faadb4f1a6dd72c3179c1df56787:

  Linux 6.18-rc1 (2025-10-12 13:42:36 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.19-rockchip-clk1

for you to fetch changes up to 18191dd750e6c9e17fabefd09ff418dd587bcdb9:

  clk: rockchip: Add clock and reset driver for RK3506 (2025-11-23 22:56:49 +0100)

----------------------------------------------------------------
SCMI clock-ids and max-clk-number removal from dt-binding on RK3568 as
well as clock drivers for the new SoCs RV1126B and RK3506.

----------------------------------------------------------------
Elaine Zhang (4):
      clk: rockchip: Implement rockchip_clk_register_armclk_multi_pll()
      dt-bindings: clock, reset: Add support for rv1126b
      clk: rockchip: Add clock controller for the RV1126B
      clk: rockchip: Add clock and reset driver for RK3506

Finley Xiao (1):
      dt-bindings: clock: rockchip: Add RK3506 clock and reset unit

Heiko Stuebner (3):
      dt-bindings: clock: rk3568: Add SCMI clock ids
      clk: rockchip: rk3568: Drop CLK_NR_CLKS usage
      dt-bindings: clock: rk3568: Drop CLK_NR_CLKS define

 .../bindings/clock/rockchip,rk3506-cru.yaml        |   55 +
 .../bindings/clock/rockchip,rv1126b-cru.yaml       |   52 +
 drivers/clk/rockchip/Kconfig                       |   14 +
 drivers/clk/rockchip/Makefile                      |    2 +
 drivers/clk/rockchip/clk-cpu.c                     |  165 +++
 drivers/clk/rockchip/clk-rk3506.c                  |  869 +++++++++++++++
 drivers/clk/rockchip/clk-rk3568.c                  |    5 +-
 drivers/clk/rockchip/clk-rv1126b.c                 | 1117 ++++++++++++++++++++
 drivers/clk/rockchip/clk.c                         |   24 +
 drivers/clk/rockchip/clk.h                         |   96 ++
 drivers/clk/rockchip/rst-rk3506.c                  |  226 ++++
 drivers/clk/rockchip/rst-rv1126b.c                 |  443 ++++++++
 include/dt-bindings/clock/rk3568-cru.h             |    6 +-
 include/dt-bindings/clock/rockchip,rk3506-cru.h    |  285 +++++
 include/dt-bindings/clock/rockchip,rv1126b-cru.h   |  392 +++++++
 include/dt-bindings/reset/rockchip,rk3506-cru.h    |  211 ++++
 include/dt-bindings/reset/rockchip,rv1126b-cru.h   |  405 +++++++
 17 files changed, 4365 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3506-cru.yaml
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rv1126b-cru.yaml
 create mode 100644 drivers/clk/rockchip/clk-rk3506.c
 create mode 100644 drivers/clk/rockchip/clk-rv1126b.c
 create mode 100644 drivers/clk/rockchip/rst-rk3506.c
 create mode 100644 drivers/clk/rockchip/rst-rv1126b.c
 create mode 100644 include/dt-bindings/clock/rockchip,rk3506-cru.h
 create mode 100644 include/dt-bindings/clock/rockchip,rv1126b-cru.h
 create mode 100644 include/dt-bindings/reset/rockchip,rk3506-cru.h
 create mode 100644 include/dt-bindings/reset/rockchip,rv1126b-cru.h




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

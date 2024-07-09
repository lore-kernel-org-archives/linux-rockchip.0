Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF3B0C2BD09
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Jul 2024 12:32:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=w7S4VRME8THiWs9rPvomVXPa4yYO14ZlKUANnZSebVo=; b=tW2VD/iigMfh+6
	fh081xLxAQKwobEaeVj7NobMTy4TsN3bGZSDLIaNpQQEgU96jP17Ihinm9wTYUCwXOiBKRqNMv4NK
	z8ipBEa0rQ8oOPQ7IfdZzBxKTi0ne7DiJzeY7tVAYZt5C4ynEgKBvrxKk7Q8jowm6mmPODRK9OXrr
	Cy6aOU6ilNtalNpxiYVYzipyH30CjaagFERL50ADAuh+LvUKC9Zvf5YIsA3AIASAmkaIyM/XUd/Tu
	8hR6/k7s6AFyqAs07mS5NCdAbJZqJmGSnkHCqRP/WCnmXyVGYrqNPAxApT6soyxQYlvlFI3ZASN3+
	ZETUksmeWLrE+BUTk3qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRA15-000000078Wn-1vnn;
	Tue, 09 Jul 2024 12:32:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRA0a-000000078KW-0XC2;
	Tue, 09 Jul 2024 12:31:49 +0000
Received: from i5e860d18.versanet.de ([94.134.13.24] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sRA0S-00074P-Hz; Tue, 09 Jul 2024 14:31:40 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: mturquette@baylibre.com,
	sboyd@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	quentin.schulz@cherry.de,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 0/6] Binding and driver for "dumb" clock generators
Date: Tue,  9 Jul 2024 14:31:15 +0200
Message-Id: <20240709123121.1452394-1-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240709_053148_186002_F88A914B 
X-CRM114-Status: GOOD (  16.05  )
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

Rockchip boards with PCIe3 controllers inside the soc (rk3568, rk3588) have
external clock generators on the board to generate the needed 100MHz
reference clock the PCIe3 controller needs.

Often these clock generators need supplies to be enabled to run.

Modelling this clock has taken a number of shapes:
- The rk3568 Rock-3a modelled the generator-regulator as "phy-supply" [0]
  &pcie30phy {
  	phy-supply = <&vcc3v3_pi6c_03>;
  	status = "okay";
  };
  which is of course not part of the binding

- On the Rock-5-ITX the supply of the clock generator is controlled by
  the same gpio as the regulator supplying the the port connected to the
  pcie30x4 controller, so if this controller probes first, both
  controllers will just run. But if the pcie30x2 controller probes first
  (which has a different supply), the controller will stall at the first
  dbi read.

- Recent Theobroma-Systems boards (Jaguar and Tiger) modelled their
  generator as a combination of fixed clock and gpio-gate, which works
  because the generator's vdd-supply is always on and only the output-
  enable pin needs to be toggled.


So this series attempts to improve the situation by allowing to model
these clock generators as actual entities in the devicetree, to not have
them just accidentially work or break bindings.


[0] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts#n605

Heiko Stuebner (6):
  dt-bindings: clocks: add binding for generic clock-generators
  clk: add driver for generic clock generators
  arm64: dts: rockchip: fix the pcie clock generator on Rock 5 ITX
  arm64: dts: rockchip: use clock-generator for pcie-refclk on
    rk3588-jaguar
  arm64: dts: rockchip: use clock-generator for pcie-refclk on
    rk3588-tiger
  arm64: dts: rockchip: add pinctrl for clk-generator gpio on
    rk3588-tiger

 .../bindings/clock/clock-generator.yaml       |  62 ++++++++
 .../arm64/boot/dts/rockchip/rk3588-jaguar.dts |  13 +-
 .../boot/dts/rockchip/rk3588-rock-5itx.dts    |  34 ++++-
 .../arm64/boot/dts/rockchip/rk3588-tiger.dtsi |  21 +--
 drivers/clk/Kconfig                           |   7 +
 drivers/clk/Makefile                          |   1 +
 drivers/clk/clk-generator.c                   | 133 ++++++++++++++++++
 7 files changed, 251 insertions(+), 20 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/clock-generator.yaml
 create mode 100644 drivers/clk/clk-generator.c

-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

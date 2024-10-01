Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 025D8CEB2EF
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Oct 2024 04:27:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xkPN0cz9fbSwLw1tAZGUKR6fYNPZBD6U5Slf8+uuQgo=; b=Bq2aTsm9xpzwdH
	WXQE+Ev522RYYjwsig1bkqmwtrbECcGIHhiwyMyl/8QfDEWwuYC1c5E+r+PRVRkckKTYReuffyXyd
	uBgm6VFRgO1euK8A5Jqp9N5KQKfAncD59Tlf6/v6YjhLSES8pY3J1+6faAdyGsQmAWIzKV0+UVYd3
	0ojxcJjFf3X0+f3E3XyhUakyR3gyVKx92nwsPmj3jBT0XJqxu2/tYXIYYzTpFIH0ibQQCsnEe9uUk
	TokdpC5h+uDHP7yqwuoGAA518aeK3w18x8C63reV+1jcYYfnmssJyuynHziay+Y0mgqjH0/XLvxWA
	NSX/rq35yLia97tdCRIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svUTQ-00000001YjC-0mTF;
	Tue, 01 Oct 2024 04:26:56 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svUS7-00000001YMx-0TVk;
	Tue, 01 Oct 2024 04:25:37 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id D706F23D8F;
	Tue,  1 Oct 2024 06:25:29 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id U8AI-d-3s4H9; Tue,  1 Oct 2024 06:25:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1727756729; bh=VH7yflsNi1fts3RAMpJZ/C/k4OPfVtdy5jAhDmpXDSI=;
	h=From:To:Cc:Subject:Date;
	b=fBXVrLWMqy9MtllBQKTbPJHQT341uaNCB+Wc/sBHRel0h9X/Hz7JazCACC9G7uu5V
	 zbJLoQa5AhwrCtTRWmvoXiTYEQFbyHaXOxSKnK4z2KHGdlcc/kO6GwZKkW+Bt2y2MG
	 YjAi6nH1RMkvkGFJgJYhlzsnJ65ZKbYZTWEvAYn/v8wP83RF89Kun4vxlanJG5pbji
	 7KP2y2QSgspX17zXQCaX/RU3dhisPoS1GyJy2hiyOBrolspJstaN15lqliE2nqAnnq
	 dZfAHSskvgOdCthlwCLN38KA5UG8eRbCOyFFlM6V8MlRl2MBTbpsKIveyy7UcICg7b
	 I1S9a0d1I01VA==
From: Yao Zi <ziyao@disroot.org>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Celeste Liu <CoelacanthusHex@gmail.com>,
	Yao Zi <ziyao@disroot.org>
Subject: [PATCH 0/8] Support clock and reset unit of Rockchip RK3528
Date: Tue,  1 Oct 2024 04:23:54 +0000
Message-ID: <20241001042401.31903-2-ziyao@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240930_212535_601487_3D0ECD18 
X-CRM114-Status: UNSURE (   9.24  )
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

This series adds clock and reset driver as well as corresponding
dt-bindings and headers for RK3528 SoC.

Similar to previous Rockchip SoCs, reset controller shares MMIO region
with clock controller, combined as Clock and Reset Unit (CRU).

This depends on previous basic dt series[1]. Tested on Radxa E20C board,
a clock tree dump could be obtained here[2].

[1]: https://lore.kernel.org/all/20240829092705.6241-2-ziyao@disroot.org/T/#t
[2]: https://gist.github.com/ziyao233/47c24014d94e0fa1c67e8aa2ea9d3a27

Yao Zi (8):
  dt-bindings: clock: Add clock ID definition for Rockchip RK3528
  dt-bindings: reset: Add reset ID definition for Rockchip RK3528
  dt-bindings: clock: Add rockchip,rk3528-cru
  clk: rockchip: Add PLL flag ROCKCHIP_PLL_FIXED_MODE
  clk: rockchip: Add clock type GATE_NO_SET_RATE
  clk: rockchip: Add clock controller driver for RK3528 SoC
  arm64: dts: rockchip: Add clock generators for RK3528 SoC
  arm64: dts: rockchip: Add UART clocks for RK3528 SoC

 .../bindings/clock/rockchip,rk3528-cru.yaml   |   63 +
 arch/arm64/boot/dts/rockchip/rk3528.dtsi      |   66 +-
 drivers/clk/rockchip/Kconfig                  |    7 +
 drivers/clk/rockchip/Makefile                 |    1 +
 drivers/clk/rockchip/clk-pll.c                |   10 +-
 drivers/clk/rockchip/clk-rk3528.c             | 1194 +++++++++++++++++
 drivers/clk/rockchip/clk.c                    |    8 +
 drivers/clk/rockchip/clk.h                    |   36 +
 .../dt-bindings/clock/rockchip,rk3528-cru.h   |  453 +++++++
 .../dt-bindings/reset/rockchip,rk3528-cru.h   |  292 ++++
 10 files changed, 2125 insertions(+), 5 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3528-cru.yaml
 create mode 100644 drivers/clk/rockchip/clk-rk3528.c
 create mode 100644 include/dt-bindings/clock/rockchip,rk3528-cru.h
 create mode 100644 include/dt-bindings/reset/rockchip,rk3528-cru.h


base-commit: 94ede2a3e9135764736221c080ac7c0ad993dc2d
prerequisite-patch-id: 00765e79597b500b66104626b59192bd0f29728a
prerequisite-patch-id: e4a9167d8787c6e852e45fc7815e5d552843fe48
prerequisite-patch-id: cc3802151c49f4c57c8a88be4ab785070b5e4d17
prerequisite-patch-id: c70c2ef39ebef152c9f3a8720daf06ae361d0416
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

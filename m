Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE2B1C021A0
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Feb 2025 06:16:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2N3RNtdPn4G+JsFKa/OAWiqzEEzd5uy7ZJ9vub12MyI=; b=sMxcFaGiX9m1+B
	oAYdfExaE4lnDXXbOZJNAKkD88Bxd02T0nCmr8PGKkIqGeMXB7LbrfoM5YX85+atzIotxCS3yqFxy
	jMzPhdZM7Pk04aYNV+9QaDySZzV5tw/Kh4GPPOAWYOzPM0duZnpgFIVUGQyy7qmn6eQytoG7L+7OU
	l+oip/eZo3l9zm8pF6YW3RRksO+5LLLkGyJ0xFvBsbYWAu87OGD9nJxFMPOovToZkLueFzN0Gen6X
	0BRFwSOpDH2DalksSDzRKD8cyNc3KH/Wl02VAxMtTSh7EL8Z1zCIwCSo5iEJisaCbOzPcktLfYBPB
	YjZuZPu15EBGnQQ3V1Hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tjuQK-00000003Rzg-3QlT;
	Mon, 17 Feb 2025 06:16:08 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tjuNT-00000003RR6-4Atb;
	Mon, 17 Feb 2025 06:13:13 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 9029C25B74;
	Mon, 17 Feb 2025 07:13:03 +0100 (CET)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IRIx5wKWMOLU; Mon, 17 Feb 2025 07:13:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1739772782; bh=HHMbgpNeEzDZ7ORYxSAbQ1Gijr8bxwEMUpfHHov6srE=;
	h=From:To:Cc:Subject:Date;
	b=cSrwkAd9nQ9/f7hytK2sLC/Yq52BOidLYDL4/zjPakiRnY+Ko8IGseGBqzrEWGTmg
	 /YubN+MdiNjAsYaRpDlTNFxP4MPkMrbAZ8+hGVCxrKh/RS5SX1uB2kihn2WLd9eMB6
	 wRzYsY+PSPRlkSQngYnlp0QbahuNvqgQdJY4vMx3TzIFVQq6LtQSYq7wR5X5tLZy8N
	 v7OyD+nf0xfigG1RXhlSXn3w/aeB5nPgC0CuJWOW23IGj3O3D1QAhfo8PHDrLfMk2r
	 8YrzORKjnAPpk1ukkWaRWzcHueLFzFaoyvGcWTI8QHG4nyzCLrhZlWmOuwzVBHVAWZ
	 2z03ghVdwzV/A==
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
	Yao Zi <ziyao@disroot.org>
Subject: [PATCH v3 0/5] Support clock and reset unit of Rockchip RK3528
Date: Mon, 17 Feb 2025 06:11:41 +0000
Message-ID: <20250217061142.38480-5-ziyao@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250216_221312_432235_6E0A31B7 
X-CRM114-Status: GOOD (  13.80  )
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

Similar to previous Rockchip SoCs, reset controller on RK3528 shares
MMIO region with clock controller, combined as CRU. They're represented
as a single node in dt.

For the reset controller, only bindings are included in this series
because it's hard to test the reset controller without support for some
peripherals (e.g. pinctrl). I'd like to first make dt and basic
peripherals available, then submit the driver.

This is tested on Radxa E20C board. With some out-of-tree drivers, I've
successfully brouhgt up UART, pinctrl/gpio and I2C. A clock dump could
be obtained from [1].

[1]: https://gist.github.com/ziyao233/032961d1eebeecb9a41fea2d690e8351

Changed from v2
- dt-bindings:
  - drop redundant assigned-clocks and assigned-clock-rates properties
  - improve description of input clock gmac0
- Link to v2: https://lore.kernel.org/all/20250108114605.1960-2-ziyao@disroot.org/

Changed from v1
- dt-bindings:
  - relicense binding headers as GPL-2.0-only OR MIT
  - use gapless integers starting from 0 for binding IDs
  - make input clocks essential, add corresponding description
  - rename the input clock that is generated by phy module as "gmac0"
  - style fixes
- driver:
  - format in the common Rockchip driver style
  - drop initializing code of the reset controller, as it'll not be
    supported in this series
- Link to v1: https://lore.kernel.org/linux-rockchip/20241001042401.31903-2-ziyao@disroot.org/

Yao Zi (5):
  dt-bindings: clock: Document clock and reset unit of RK3528
  clk: rockchip: Add PLL flag ROCKCHIP_PLL_FIXED_MODE
  clk: rockchip: Add clock controller driver for RK3528 SoC
  arm64: dts: rockchip: Add clock generators for RK3528 SoC
  arm64: dts: rockchip: Add UART clocks for RK3528 SoC

 .../bindings/clock/rockchip,rk3528-cru.yaml   |   64 +
 arch/arm64/boot/dts/rockchip/rk3528.dtsi      |   68 +-
 drivers/clk/rockchip/Kconfig                  |    7 +
 drivers/clk/rockchip/Makefile                 |    1 +
 drivers/clk/rockchip/clk-pll.c                |   10 +-
 drivers/clk/rockchip/clk-rk3528.c             | 1114 +++++++++++++++++
 drivers/clk/rockchip/clk.h                    |   22 +
 .../dt-bindings/clock/rockchip,rk3528-cru.h   |  453 +++++++
 .../dt-bindings/reset/rockchip,rk3528-cru.h   |  241 ++++
 9 files changed, 1975 insertions(+), 5 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3528-cru.yaml
 create mode 100644 drivers/clk/rockchip/clk-rk3528.c
 create mode 100644 include/dt-bindings/clock/rockchip,rk3528-cru.h
 create mode 100644 include/dt-bindings/reset/rockchip,rk3528-cru.h

-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

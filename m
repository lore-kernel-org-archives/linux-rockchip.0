Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 674B4CD6E55
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Jun 2026 13:26:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gqZVJ3bc9S4eoY1yAqwfc+jmNFRFzkciaq2TD3E4AAM=; b=YUTRSKRQe6jeO6
	w60zV7yXbFGF274GczVshJDCDdv7BF7Hs22bo3zEJ2JWPYZh/rLDI394DyDyVfT2BNtP+v8SHHDNr
	h3b10JSMneEWwmBF/OtPKFGBUcAdgFtHDOsbCI0UzpBh8YuyrB/cZw0XnUNU0yO5MvdI7dAf2cKaR
	ODPjuNL0TzYliC1YC0y4lIZ2wW7TGpNcIy2rdSTgamHvAWVZcaW0eLmjvL44e74RsexxmkTLsoQhJ
	HERUNK2NE517Tly+lDYAqBAkWMzNwOEQjk09z/06ka6lQYUZBi+ZRXEjKv42My+0VsHut5FW37FX8
	ckwnx+H7FVXNxH1stEhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU2eN-0000000BChr-3odo;
	Mon, 01 Jun 2026 13:25:51 +0000
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU2eL-0000000BCh9-2ZGg
	for linux-rockchip@lists.infradead.org;
	Mon, 01 Jun 2026 13:25:50 +0000
Received: by mail-pj1-x1033.google.com with SMTP id 98e67ed59e1d1-36d630c0e35so1755346a91.3
        for <linux-rockchip@lists.infradead.org>; Mon, 01 Jun 2026 06:25:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780320349; x=1780925149; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DnHBZf9FwnOpjIKwf/TmkrH6aiNn+aT//tH7U9Z8tL0=;
        b=p4CvhBs32nHr4NRqquMMmrUKU0VK6t1BSTp/eo0QqQS1lKv5soQALxAh7KUSPBOn6m
         2d9QmYkfkxoc0OoDtmZiOrA2ov8oDqUkg8dCs0d2PGM8XBWBkiNtg2ZhdXRWCIew2RSn
         y2qaVfO77rQyfV0Sr6jiSxhTa6Is2fp5SXscIjh1dfMT4PwhKrfcMOfTPmLRDD/XtEp4
         pAQN7bdAPDBHGAUyBvb9ZF/QZ59EyuxlJHv6LaXPAAk5Fg69WpLbKwCoIBwHy1BKWIyE
         yjlg6UKn0+29YGl7/9IBnPrsK3yNKs+vvM9H1JVL3wLiZ/CI7x7KrZCCr8IPeLVeuolc
         Zuiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780320349; x=1780925149;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DnHBZf9FwnOpjIKwf/TmkrH6aiNn+aT//tH7U9Z8tL0=;
        b=VWtjzu/kyYPecmMfrf2yNzrMa/gmhSdG6AqxsTdAqyitbWKNjCmhe80hVMMXzcBgGF
         awwCb+zGSeG89GfbW5RuFyA8DEb6QSKDf6DRCE2ByIGvzoIa4vkoc5ZGGtPBqgw46Jqj
         sZJcF7mjqScciXwr2+TXS0r4hMUSDEUV1D3/4xPMEl3gC54sNmM45Sxxv4gGyMp3EsDj
         77pDyECGY7MFkGfTtQxIrTf/P0RLzKcn43K5ya8Eld2CUs2CblyPi2uMaZDoxWcWhGTx
         +cb1M4rkVRIJnvvUIfEaRKcxbKsq5UBCZ1mXcpmXaytdEyRs932zB13DJyGOgE/h7kFt
         3U0g==
X-Forwarded-Encrypted: i=1; AFNElJ9oCGiIAU/G3DxZwh06/xmue67Tp6GoTmBHX6NsmrC2orgTygkiX2oTj2m6wadp/VIVlha2Yr8YSroMZNp13w==@lists.infradead.org
X-Gm-Message-State: AOJu0YwRUFEk1uPCZL0Bx3rZS9j08diAYgaGY3+tkQVbaHZxKKZZaNHo
	ovCbbccx9dJkA8+Fj+64vhCUnjk+r/sUASRtTHW3hULbzaY6Hb7YYn63
X-Gm-Gg: Acq92OFZd+BazyX8ihsQ/62HckYbDyyQUMYpm17Lgnl2XH4MwMRivLC0IF4c6lIv95n
	N4Gn3Zq2yhf0uOC1p4ku3iI5NjgS7dlfplPDRgufjtx9rm1mUf73l7Mgl2cmpm40ChiHHHcgSLy
	D2mdRB32+W9Gx+ALCOyuSOsCjO20a6vzC0PcTNJiTJ7J4RxJ7L6imvS6cGXqc0ksXPTaOrOMW0i
	nKbuiunuZfCGWmY7D5v8vuGAs/FjC1oufWjYrtolxrIBYEJ/X/SbzPwg7VYehkwrF69sFSYPc4x
	Skk3875D+AVM7kB6+9GuDNK2t8wxSgK4ShcTtUcz+MZYZlZL0XmzTlIvgKazGy7/cudzX+279Sh
	If97cHs88aLEuH3LgXeGQDwutCiO9T/wWrX9KysRTcgov4Ogf/IL/nJB3unS9u4IvgM848Wo/V4
	iQLLxgTawjPj+W0xU7C+7gC9/5wLg6NJUnCVHgF2JH
X-Received: by 2002:a17:90b:5704:b0:36a:f612:e6a3 with SMTP id 98e67ed59e1d1-36c501b8fb2mr11081482a91.17.1780320348705;
        Mon, 01 Jun 2026 06:25:48 -0700 (PDT)
Received: from i386.168.1.127 ([2402:a00:163:2ce9:9c6f:e28:3da8:7980])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-36bc02d0a22sm11444234a91.8.2026.06.01.06.25.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jun 2026 06:25:46 -0700 (PDT)
From: Hrushiraj Gandhi <hrushirajg23@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Hrushiraj Gandhi <hrushirajg23@gmail.com>
Subject: [PATCH v2 0/2] arm64: dts: rockchip: add Vicharak Axon board support
Date: Mon,  1 Jun 2026 18:55:27 +0530
Message-ID: <20260601132529.139172-1-hrushirajg23@gmail.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260601_062549_677124_313806A4 
X-CRM114-Status: UNSURE (   9.86  )
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

This series adds initial device tree support for the Vicharak Axon
single-board computer, which is based on the Rockchip RK3588 SoC.

The Vicharak Axon is a feature-rich SBC targeting developer and embedded
use cases. It ships with:

  - Rockchip RK3588 (4x Cortex-A76 + 4x Cortex-A55)
  - RK806 PMIC providing all SoC power domains
  - eMMC 5.1 (on-board) and microSD slot
  - Gigabit Ethernet via RGMII (RTL8211F)
  - Dual HDMI 2.1 output and one HDMI 2.0 input (receiver)
  - PCIe 3.0 x4 and two PCIe 2.0 slots
  - SATA 3.0
  - SDIO Wi-Fi
  - USB 2.0 host ports (EHCI/OHCI)
  - NXP PCA9554 I/O expander for status LEDs
  - Haoyu HYM8563 RTC

Changes since v1:
- Renamed the dts file from rk3588-axon.dts to rk3588-vicharak-axon.dts
- Added binding patches for the board (rockchip.yaml) and vendor (vendor-prefixes.yaml)
- Renamed regulator nodes to the standard `regulator-name` pattern
- Removed `mem-supply` properties and phandles from cpu nodes (vendor-kernel specific)
- Fixed pcie20_avdd0v85 vin-supply mismatch
- Removed obsolete `regulator-compatible` property
- Removed invalid `regulator-init-microvolt` property
- Removed dangling `enable-active-high` properties from fixed regulators
- Cleaned up unneeded i2c3 / es8388 nodes
- Added missing `vpcie3v3-supply` properties to PCIe nodes

Hrushiraj Gandhi (2):
  arm64: dts: rockchip: add Vicharak Axon board
  dt-bindings: arm: rockchip: add Vicharak Axon board

 .../devicetree/bindings/arm/rockchip.yaml     |    5 +
 .../devicetree/bindings/vendor-prefixes.yaml  |    2 +
 arch/arm64/boot/dts/rockchip/Makefile         |    1 +
 .../dts/rockchip/rk3588-vicharak-axon.dts     | 1038 +++++++++++++++++
 4 files changed, 1046 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-vicharak-axon.dts

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

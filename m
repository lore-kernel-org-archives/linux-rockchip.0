Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC47CCD8C9D
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Jun 2026 06:10:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=h/Vjr3TqUH7l6zTdt8AUW0VryMgJ0zDGQhGs9iFy5ts=; b=OD+LZwfRse4yZZ
	yKxAUZcJaf2e8hEHFV+Pcd99tnzk6wi1Vo8N0eZwmaIl0XiERrrhxeN4oJ8zFdQ43i4gF1OuItI/o
	Qz8OuSmHRNLoocKXxgmuKw2FfIJPRnGf+kGxXVwteV6YYH2+PZcZOTbBVSa3loHFtIpq5ddywPaTP
	QjvME8e/P1ODF76el0lQQAeIEcJ7up7e/hOknrnMAwI3fAP/1aV0WHurk29+Y+41dQkJ9apLKOshI
	jvxs2zIfq+Na5dbv82hVwx7fiUYLLM0Sa39cin53qtVw6F9dlVTh6wemmZJ4b4vXMH8fCRtXj4zPI
	LbsPQinMJS5F8A3HeWHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWTBb-00000002sOy-3RLW;
	Mon, 08 Jun 2026 06:10:11 +0000
Received: from mail-pj1-x1031.google.com ([2607:f8b0:4864:20::1031])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWTBY-00000002sO6-3BR4
	for linux-rockchip@lists.infradead.org;
	Mon, 08 Jun 2026 06:10:10 +0000
Received: by mail-pj1-x1031.google.com with SMTP id 98e67ed59e1d1-36da8439078so3444629a91.2
        for <linux-rockchip@lists.infradead.org>; Sun, 07 Jun 2026 23:10:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780899007; x=1781503807; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=trzFQSB2Wm8IfEtKAHfvmXUeOQsaaBc4Q94uE4SJiL4=;
        b=A9u4I3rGEb1As/d94jN6uyk8hVC9mWxu3Hrf9PkapQqvAiqY7NIpsGkHPasslTP4NH
         Q4UrTIPjIRcDDaiLIZitRWSD+SNvoMdXeadT86zLY/+fdXsUZQrY4ou42nM7H2Mn/R8r
         2kcfUNABCf5yb7BYwVgRidV387923hAb91Urq4QaMCgDddwD3OVhudMcw+KIkUGgLBco
         qNJjPlpekMRXxxk5c7/TbFw0kVDPEAV+kiV6/ORXnwNE5HAQB4Lr3FxL89P6YhoabPUC
         ytTXAEm9tt1W9AD3vqF9yHqvcgead1ciTkPItOnFBI3gf1r46xs9mVLaRqrUg/MAliuh
         KENA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780899007; x=1781503807;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=trzFQSB2Wm8IfEtKAHfvmXUeOQsaaBc4Q94uE4SJiL4=;
        b=ZLJOsG8hFMAqTN4fhpe3i+2Gw0T8VI+Yg6G1OLYE7LVvYnSWRpJ8cJN8suAJWAvdnL
         zqA5nYEGjL3O0JGmS6mLLMrLJkqTlm9aKzPuQj4xPKzKl57XrGUAd8UTXNOy1ezjVrua
         jzKPpAIwEWbdCH/AsT+iVl0bgNeIwICZIbGlKcEoII8gFBGlUQ+5ZmpgeVpYactqCrxM
         G1bcLpSXArzEu+qACv0cWbWcHNisT1vVkMrl6W4qlBfPMKjGXYNw7pCe8LhkpIRRBHPX
         A2m3kGcmsVUwrO7JZGYk5+opymAFzmkcGBzZqSqmbkZzE/LreMcJBc2a10F1rlha5zMs
         iCuQ==
X-Forwarded-Encrypted: i=1; AFNElJ+QOlZU1+O0R52FVJ2PWGfUjcM6V4DYqxseZ17enaZrK4jc633+3erQkl0Qt5TSjK7Ofx9HQWGcqJ/HWkdSXw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwBNjF+b2QZ55S1IgFgd0qn1YG5iLMMwi7h67zgHzANPAuBQN0z
	DSIFXVEQTwUhIr9GhjIxj6+2hLIgiscNd9rApgAvia+N1FIuiY07tzhz
X-Gm-Gg: Acq92OG2mr1e3C1HYZowh2JG8YTafqwNF7miJybD8wfW+YGy3N26SIMVY6ImNBDU8xk
	4/yeuYyMD8lBBv3cW/Vlcix+98T/rzfGvHaGId7rIzTKuNXMM4gzZMPUNXBHyrl+1MnJ2a+OowT
	zDwhY0XhGPKlwQvtOLUmWp2LRLGWmZUDbMcwFSHaT5QDx8ElgKFzMAbgAxkPk7TjJ0oW4+9wyJ1
	+olkoppOAxA39G0cfZ9A3gf7FzW6BtEd48rwpopBYz6X4yNDIpMaDHbqKwjLh5NNw20Ze6tcftX
	JB3uggs0lxn/haRIPb+y6jgHby9bxOniTvzyut3uU0DpwAzDphnpKVvdY/UeBHFW4GFL1og4Tl5
	Wya4DMhoE4u3dEAU6WyZdrlCPxy/fa7IsOfWA04Ta6q7+y8LVgJibq08bDLtNqbQB0+cGIvu9Tp
	c4pNaflp3KSyusJ9hRW9RXhAjuXWLuGooJup2Z8PhNTcuAFrNfyug=
X-Received: by 2002:a17:90b:1ccd:b0:368:a297:bd38 with SMTP id 98e67ed59e1d1-370eedfff8dmr15054026a91.7.1780899006793;
        Sun, 07 Jun 2026 23:10:06 -0700 (PDT)
Received: from i386.168.1.127 ([2402:a00:163:2ce9:9c6f:e28:3da8:7980])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-36f6c668e98sm15065026a91.5.2026.06.07.23.10.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Jun 2026 23:10:06 -0700 (PDT)
From: Hrushiraj Gandhi <hrushirajg23@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Hrushiraj Gandhi <hrushirajg23@gmail.com>
Subject: [PATCH v7 0/2] arm64: dts: rockchip: add Vicharak Axon board support
Date: Mon,  8 Jun 2026 11:39:38 +0530
Message-ID: <20260608060940.52549-1-hrushirajg23@gmail.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260607_231008_792613_08768C55 
X-CRM114-Status: GOOD (  11.07  )
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
  - USB 2.0 host ports (EHCI/OHCI)
  - NXP PCA9554 I/O expander for status LEDs
  - Haoyu HYM8563 RTC

Changes since v6:
- Dropped vendor-prefixes patch; the vicharak prefix was already
  submitted upstream by another contributor.
- Added Acked-by from Krzysztof Kozlowski to the binding patch.
- Removed redundant status = okay from newly-defined nodes (leds,
  hym8563, pca9554) as noted by Krzysztof Kozlowski.
- Removed stale mmc2 = &sdio alias (sdio was removed in v4).
- Removed leftover #include <dt-bindings/usb/pd.h> (TypeC removed).
- Removed unused fixed regulators: pcie20_avdd0v85, pcie20_avdd1v8,
  pcie30_avdd0v75, pcie30_avdd1v8, sata_vcc_5v0, vcc0_4v0/vcc4v0_sys.

Changes since v5:
- Enabled i2s5_8ch and i2s6_8ch CPU DAIs to resolve probe deferral
  for hdmi0_sound and hdmi1_sound.

Changes since v4:
- Re-enabled combphy2_psu, required PHY for pcie2x1l1.
- Fixed alphabetical sorting of rk3588-vicharak-axon.dtb in Makefile.

Changes since v3:
- Removed sdio_pwrseq and wireless-wlan pinctrl nodes (Wi-Fi removed).
- Removed unused u2phy0, u2phy0_otg, u2phy1, u2phy1_otg nodes.

Changes since v2:
- Split the dt-bindings patch into separate patches as requested.
- Removed invalid enable-gpios from HDMI nodes.
- Fixed copy-paste error in rk806_dvs1_null pinctrl node.

Changes since v1:
- Renamed rk3588-axon.dts to rk3588-vicharak-axon.dts.
- Added binding patch for board (rockchip.yaml).
- Renamed regulator nodes to the standard regulator-name pattern.
- Removed mem-supply properties from cpu nodes.
- Fixed pcie20_avdd0v85 vin-supply mismatch.
- Removed obsolete regulator-compatible property.
- Removed invalid regulator-init-microvolt property.
- Removed dangling enable-active-high from fixed regulators.
- Cleaned up unneeded i2c3 / es8388 nodes.
- Added missing vpcie3v3-supply properties to PCIe nodes.

Hrushiraj Gandhi (2):
  dt-bindings: arm: rockchip: add Vicharak Axon board
  arm64: dts: rockchip: add Vicharak Axon board

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3588-vicharak-axon.dts     | 926 ++++++++++++++++++
 3 files changed, 932 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-vicharak-axon.dts

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

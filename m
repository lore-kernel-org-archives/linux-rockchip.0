Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15A7DC61CE8
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Jun 2025 20:55:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=29R1qCx0wOI+bKrqQLBum7MmeNiQMwt4HVziVZpfuo8=; b=DLYZBk/QIfVNVt
	Y++qbs4Ix2ButQaS4+J/f1yWkmOWBFv0cigfUCDyDfsYfW+bg66CozM/weLBowKTZ+bExFrIjoKN/
	lJJ+t5aTtA9OC8YXq3WPWcUJxmLSt1vJb7bS/mCql7JdTE0E7OSFeWAJmaasbWwQ4mRDUG515lDJM
	gl4aop5h5jYTT/j5t3KtgytkKXC/zWYQLsmnbLRIPrxXXdCpKbDVAdEVS6sq1Nqk/kHcfF9ULslri
	NEg43oDLm4M8L6Tvbd33AT4s7VlWLqsuxQKPaXG11KHrGuevSpJANciUP6898JA5g6b5QQra0sFvH
	9NjpJrL5hR1MSBA+4EVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPoxU-0000000EZoC-2NWo;
	Thu, 12 Jun 2025 20:55:36 +0000
Received: from sender4-op-o12.zoho.com ([136.143.188.12])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPnB1-0000000EAsn-0NFr;
	Thu, 12 Jun 2025 19:01:28 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1749754847; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=U1rUZbpAXUp7ntMrJjmQxF4hNpsjurE8G9vz0ufQ5/NDfrmWFlR7OBMSXjgVqeYOYnpV90kF7aQVyHtqlyZKQikJaPfmYoz2l0VrUeshaV/o9IrM0MErUWp7mXL4Ah9v93mZx176tRj/VvZUZUWGTUgVG2R5v1l4IGN/VP+igJQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1749754847; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=hOlEtywVoaa9GYHyWTuEQ+Doi2prp9NQsnYCAZDXUrY=; 
	b=PLN+3wAR17snXoAKJ7sDFCkMSRdH4ud+br+G2w5rOoLh9SFk8Erg2mrrLjXpHJkav3z+y+68g0yYfe/OoZVU7QTCfuQeOxlmHcSb3Nx+PmN4cqJbzw9lIfZLVOefhtqfYJBTaXfAkqNXSAgFDXnMP3K384zU2s6rWl7N5DN3zoA=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1749754847;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
	bh=hOlEtywVoaa9GYHyWTuEQ+Doi2prp9NQsnYCAZDXUrY=;
	b=CIy7jthP0vmYmRBLGe3ArudzrJYd57ADhv2sXVxobeAF3HjHq+BVAfNW3YDlLxzH
	NRfoC35x8e9/TT/8bnO0pp96cuHlFEzgLzeoE+OAf2fqxqA+nCGwybx6Gg4xSvOANiD
	mEb/rqHQsJW6lwwJXB8KXabrA82pmDgAwoyVLU0s=
Received: by mx.zohomail.com with SMTPS id 174975484621575.10184870586033;
	Thu, 12 Jun 2025 12:00:46 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Thu, 12 Jun 2025 20:56:22 +0200
Subject: [PATCH 20/20] phy: rockchip-pcie: switch to HWORD_UPDATE macro
MIME-Version: 1.0
Message-Id: <20250612-byeword-update-v1-20-f4afb8f6313f@collabora.com>
References: <20250612-byeword-update-v1-0-f4afb8f6313f@collabora.com>
In-Reply-To: <20250612-byeword-update-v1-0-f4afb8f6313f@collabora.com>
To: Yury Norov <yury.norov@gmail.com>, 
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, 
 Jaehoon Chung <jh80.chung@samsung.com>, 
 Ulf Hansson <ulf.hansson@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
 Shreeya Patel <shreeya.patel@collabora.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Shawn Lin <shawn.lin@rock-chips.com>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Bjorn Helgaas <bhelgaas@google.com>, Chanwoo Choi <cw00.choi@samsung.com>, 
 MyungJoo Ham <myungjoo.ham@samsung.com>, 
 Kyungmin Park <kyungmin.park@samsung.com>, Qin Jian <qinjian@cqplus1.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
 Nick Desaulniers <nick.desaulniers+lkml@gmail.com>, 
 Bill Wendling <morbo@google.com>, Justin Stitt <justinstitt@google.com>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250612_120127_180232_4E801BF8 
X-CRM114-Status: GOOD (  18.61  )
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
Cc: linux-pm@vger.kernel.org, netdev@vger.kernel.org, llvm@lists.linux.dev, linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-sound@vger.kernel.org, linux-pci@vger.kernel.org, linux-phy@lists.infradead.org, kernel@collabora.com, linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The era of hand-rolled HIWORD_UPDATE macros is over, at least for those
drivers that use constant masks.

The Rockchip PCIe PHY driver, used on the RK3399, has its own definition
of HIWORD_UPDATE.

Remove it, and replace instances of it with bitfield.h's HWORD_UPDATE.
To achieve this, some mask defines are reshuffled, as HWORD_UPDATE uses
the mask as both the mask of bits to write and to derive the shift
amount from in order to shift the value.

In order to ensure that the mask is always a constant, the inst->index
shift is performed after the HWORD_UPDATE, as this is a runtime value.

From this, we gain compile-time error checking, and in my humble opinion
nicer code, as well as a single definition of this macro across the
entire codebase to aid in code comprehension.

Tested on a RK3399 ROCKPro64, where PCIe still works as expected when
accessing an NVMe drive.

Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-pcie.c | 72 ++++++++++----------------------
 1 file changed, 21 insertions(+), 51 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-pcie.c b/drivers/phy/rockchip/phy-rockchip-pcie.c
index bd44af36c67a5a504801275c1b0384d373fe7ec7..7c486ecb96ffe1589fa077d7d2b079e02f4f6769 100644
--- a/drivers/phy/rockchip/phy-rockchip-pcie.c
+++ b/drivers/phy/rockchip/phy-rockchip-pcie.c
@@ -6,6 +6,7 @@
  * Copyright (C) 2016 ROCKCHIP, Inc.
  */
 
+#include <linux/bitfield.h>
 #include <linux/clk.h>
 #include <linux/delay.h>
 #include <linux/io.h>
@@ -18,23 +19,14 @@
 #include <linux/regmap.h>
 #include <linux/reset.h>
 
-/*
- * The higher 16-bit of this register is used for write protection
- * only if BIT(x + 16) set to 1 the BIT(x) can be written.
- */
-#define HIWORD_UPDATE(val, mask, shift) \
-		((val) << (shift) | (mask) << ((shift) + 16))
 
 #define PHY_MAX_LANE_NUM      4
-#define PHY_CFG_DATA_SHIFT    7
-#define PHY_CFG_ADDR_SHIFT    1
-#define PHY_CFG_DATA_MASK     0xf
-#define PHY_CFG_ADDR_MASK     0x3f
-#define PHY_CFG_RD_MASK       0x3ff
+#define PHY_CFG_DATA_MASK     GENMASK(10, 7)
+#define PHY_CFG_ADDR_MASK     GENMASK(6, 1)
+#define PHY_CFG_RD_MASK       GENMASK(9, 0)
 #define PHY_CFG_WR_ENABLE     1
 #define PHY_CFG_WR_DISABLE    1
-#define PHY_CFG_WR_SHIFT      0
-#define PHY_CFG_WR_MASK       1
+#define PHY_CFG_WR_MASK       BIT(0)
 #define PHY_CFG_PLL_LOCK      0x10
 #define PHY_CFG_CLK_TEST      0x10
 #define PHY_CFG_CLK_SCC       0x12
@@ -49,11 +41,7 @@
 #define PHY_LANE_RX_DET_SHIFT 11
 #define PHY_LANE_RX_DET_TH    0x1
 #define PHY_LANE_IDLE_OFF     0x1
-#define PHY_LANE_IDLE_MASK    0x1
-#define PHY_LANE_IDLE_A_SHIFT 3
-#define PHY_LANE_IDLE_B_SHIFT 4
-#define PHY_LANE_IDLE_C_SHIFT 5
-#define PHY_LANE_IDLE_D_SHIFT 6
+#define PHY_LANE_IDLE_MASK    BIT(3)
 
 struct rockchip_pcie_data {
 	unsigned int pcie_conf;
@@ -100,22 +88,14 @@ static inline void phy_wr_cfg(struct rockchip_pcie_phy *rk_phy,
 			      u32 addr, u32 data)
 {
 	regmap_write(rk_phy->reg_base, rk_phy->phy_data->pcie_conf,
-		     HIWORD_UPDATE(data,
-				   PHY_CFG_DATA_MASK,
-				   PHY_CFG_DATA_SHIFT) |
-		     HIWORD_UPDATE(addr,
-				   PHY_CFG_ADDR_MASK,
-				   PHY_CFG_ADDR_SHIFT));
+		     HWORD_UPDATE(PHY_CFG_DATA_MASK, data) |
+		     HWORD_UPDATE(PHY_CFG_ADDR_MASK, addr));
 	udelay(1);
 	regmap_write(rk_phy->reg_base, rk_phy->phy_data->pcie_conf,
-		     HIWORD_UPDATE(PHY_CFG_WR_ENABLE,
-				   PHY_CFG_WR_MASK,
-				   PHY_CFG_WR_SHIFT));
+		     HWORD_UPDATE(PHY_CFG_WR_MASK, PHY_CFG_WR_ENABLE));
 	udelay(1);
 	regmap_write(rk_phy->reg_base, rk_phy->phy_data->pcie_conf,
-		     HIWORD_UPDATE(PHY_CFG_WR_DISABLE,
-				   PHY_CFG_WR_MASK,
-				   PHY_CFG_WR_SHIFT));
+		     HWORD_UPDATE(PHY_CFG_WR_MASK, PHY_CFG_WR_DISABLE));
 }
 
 static int rockchip_pcie_phy_power_off(struct phy *phy)
@@ -126,11 +106,9 @@ static int rockchip_pcie_phy_power_off(struct phy *phy)
 
 	guard(mutex)(&rk_phy->pcie_mutex);
 
-	regmap_write(rk_phy->reg_base,
-		     rk_phy->phy_data->pcie_laneoff,
-		     HIWORD_UPDATE(PHY_LANE_IDLE_OFF,
-				   PHY_LANE_IDLE_MASK,
-				   PHY_LANE_IDLE_A_SHIFT + inst->index));
+	regmap_write(rk_phy->reg_base, rk_phy->phy_data->pcie_laneoff,
+		     HWORD_UPDATE(PHY_LANE_IDLE_MASK,
+				  PHY_LANE_IDLE_OFF) << inst->index);
 
 	if (--rk_phy->pwr_cnt) {
 		return 0;
@@ -140,11 +118,9 @@ static int rockchip_pcie_phy_power_off(struct phy *phy)
 	if (err) {
 		dev_err(&phy->dev, "assert phy_rst err %d\n", err);
 		rk_phy->pwr_cnt++;
-		regmap_write(rk_phy->reg_base,
-			     rk_phy->phy_data->pcie_laneoff,
-			     HIWORD_UPDATE(!PHY_LANE_IDLE_OFF,
-					   PHY_LANE_IDLE_MASK,
-					   PHY_LANE_IDLE_A_SHIFT + inst->index));
+		regmap_write(rk_phy->reg_base, rk_phy->phy_data->pcie_laneoff,
+			     HWORD_UPDATE(PHY_LANE_IDLE_MASK,
+					  !PHY_LANE_IDLE_OFF) << inst->index);
 		return err;
 	}
 
@@ -172,15 +148,11 @@ static int rockchip_pcie_phy_power_on(struct phy *phy)
 	}
 
 	regmap_write(rk_phy->reg_base, rk_phy->phy_data->pcie_conf,
-		     HIWORD_UPDATE(PHY_CFG_PLL_LOCK,
-				   PHY_CFG_ADDR_MASK,
-				   PHY_CFG_ADDR_SHIFT));
+		     HWORD_UPDATE(PHY_CFG_ADDR_MASK, PHY_CFG_PLL_LOCK));
 
-	regmap_write(rk_phy->reg_base,
-		     rk_phy->phy_data->pcie_laneoff,
-		     HIWORD_UPDATE(!PHY_LANE_IDLE_OFF,
-				   PHY_LANE_IDLE_MASK,
-				   PHY_LANE_IDLE_A_SHIFT + inst->index));
+	regmap_write(rk_phy->reg_base, rk_phy->phy_data->pcie_laneoff,
+		     HWORD_UPDATE(PHY_LANE_IDLE_MASK,
+				  !PHY_LANE_IDLE_OFF) << inst->index);
 
 	/*
 	 * No documented timeout value for phy operation below,
@@ -211,9 +183,7 @@ static int rockchip_pcie_phy_power_on(struct phy *phy)
 	}
 
 	regmap_write(rk_phy->reg_base, rk_phy->phy_data->pcie_conf,
-		     HIWORD_UPDATE(PHY_CFG_PLL_LOCK,
-				   PHY_CFG_ADDR_MASK,
-				   PHY_CFG_ADDR_SHIFT));
+		     HWORD_UPDATE(PHY_CFG_ADDR_MASK, PHY_CFG_PLL_LOCK));
 
 	err = regmap_read_poll_timeout(rk_phy->reg_base,
 				       rk_phy->phy_data->pcie_status,

-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

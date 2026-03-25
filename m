Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D25D7FEA822
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Mar 2026 07:23:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mQF8zqA15fe/je6CSm8zRWKeTeqUv9HSxRJa4Dmyy4I=; b=uUdFyLQ66y9bWJ
	j1IL4dnuoKoHyZ3CCV8VVO7TzTQEt3xgKznBLMwdnx0MIJaoLPyWarGl7WAY9fX4ELJfqgeXkB19A
	L9W8NxqTbEa1DjzHla3jVTxVY39e/324fhJgBrZtA6VdISoI5quIWpSSq1bWlYdxPXXaoK77DGEBg
	qvg8dZlVobG2iKQjn41WpA7w04yia2aLtrc92myuo7nEvqwN2q1a4bDWWcM0ha/LqbgajxQvN39s5
	SRQR1UjnkKLKgkuts++wZ3RucrkZraP8qe5L/BMJ0tmZJEEp63g4K86v9FRD5J3gAXplofWwFRPhI
	0D7RT9w7mxszxZAUispw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5IaJ-00000002r4X-0M0U;
	Wed, 25 Mar 2026 07:23:23 +0000
Received: from mail-m19731113.qiye.163.com ([220.197.31.113])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5IaE-00000002r3a-3OHi;
	Wed, 25 Mar 2026 07:23:22 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3839e259b;
	Wed, 25 Mar 2026 15:23:12 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: linux-rockchip@lists.infradead.org,
	linux-phy@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-kernel@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH] phy: rockchip: naneng-combphy: Fix TX detect RX termination errata
Date: Wed, 25 Mar 2026 15:23:03 +0800
Message-Id: <1774423383-36599-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Tid: 0a9d23e0409309cckunmc407d4e1aadef8
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUlDT1ZOS01OSUgaSU1JGB9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=KFk7n0mGkODzoEAZFEsaZF8hbqLkb7qvrNLszhp5Whvez9C8qfqDyu8ZzvJhyBOZyROiafsQH6fJ7f9STlna5FoHfzmoSfuBdzc1iXbqh/Pn8Kcpf1dEiHxWOj3vjk+5yJ2RlSNRNZNE2Tw5mgdFH0npA3zMF606iagwPLM7Fw4=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=srSIYmLdFnX0p7+ayVgQBmHUMD03vlZS2quJ2yF9fps=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260325_002320_363216_2DA08582 
X-CRM114-Status: GOOD (  12.43  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Some PHY revisions may fail to detect the peer RX's termination
resistor (RTERM) under certain critical temperature conditions.
This causes TX detection failures on PCIe links.

Add a workaround to force the RTERM detection ready signal for
affected PHY revisions. This ensures reliable TX-to-RX termination
detection across all operating temperature ranges.

The fix applies to RK3562, RK3568, RK3576 and RK3588 SoCs which share
the same PHY IP with this hardware errata.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 drivers/phy/rockchip/phy-rockchip-naneng-combphy.c | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
index b60d6bf..76d4994 100644
--- a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
+++ b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
@@ -106,6 +106,9 @@
 #define RK3568_PHYREG18				0x44
 #define RK3568_PHYREG18_PLL_LOOP		0x32
 
+#define RK3568_PHYREG26				0x64
+#define RK3568_PHYREG26_FORCE_RTERM_DET_RDY	BIT(5)
+
 #define RK3568_PHYREG30				0x74
 #define RK3568_PHYREG30_GATE_TX_PCK_SEL         BIT(7)
 #define RK3568_PHYREG30_GATE_TX_PCK_DLY_PLL_OFF BIT(7)
@@ -193,6 +196,7 @@ struct rockchip_combphy_cfg {
 	unsigned int num_phys;
 	unsigned int phy_ids[3];
 	const struct rockchip_combphy_grfcfg *grfcfg;
+	bool force_rxterm_det_rdy;
 	int (*combphy_cfg)(struct rockchip_combphy_priv *priv);
 };
 
@@ -264,6 +268,17 @@ static int rockchip_combphy_init(struct phy *phy)
 
 	switch (priv->type) {
 	case PHY_TYPE_PCIE:
+		/*
+		 * Hardware Errata: TX fails to detect peer RX termination.
+		 * Some PHY revisions may fail to detect remote RX's RTERM
+		 * (receiver termination resistor) under certain critical
+		 * temperature conditions. Set force rterm detect ready to
+		 * fix it.
+		 */
+		if (priv->cfg->force_rxterm_det_rdy)
+			rockchip_combphy_updatel(priv, RK3568_PHYREG26_FORCE_RTERM_DET_RDY,
+					RK3568_PHYREG26_FORCE_RTERM_DET_RDY, RK3568_PHYREG26);
+		fallthrough;
 	case PHY_TYPE_USB3:
 	case PHY_TYPE_SATA:
 	case PHY_TYPE_SGMII:
@@ -745,6 +760,7 @@ static const struct rockchip_combphy_cfg rk3562_combphy_cfgs = {
 	},
 	.grfcfg		= &rk3562_combphy_grfcfgs,
 	.combphy_cfg	= rk3562_combphy_cfg,
+	.force_rxterm_det_rdy  = true,
 };
 
 static int rk3568_combphy_cfg(struct rockchip_combphy_priv *priv)
@@ -962,6 +978,7 @@ static const struct rockchip_combphy_cfg rk3568_combphy_cfgs = {
 	},
 	.grfcfg		= &rk3568_combphy_grfcfgs,
 	.combphy_cfg	= rk3568_combphy_cfg,
+	.force_rxterm_det_rdy  = true,
 };
 
 static int rk3576_combphy_cfg(struct rockchip_combphy_priv *priv)
@@ -1231,6 +1248,7 @@ static const struct rockchip_combphy_cfg rk3576_combphy_cfgs = {
 	},
 	.grfcfg		= &rk3576_combphy_grfcfgs,
 	.combphy_cfg	= rk3576_combphy_cfg,
+	.force_rxterm_det_rdy  = true,
 };
 
 static int rk3588_combphy_cfg(struct rockchip_combphy_priv *priv)
@@ -1418,6 +1436,7 @@ static const struct rockchip_combphy_cfg rk3588_combphy_cfgs = {
 	},
 	.grfcfg		= &rk3588_combphy_grfcfgs,
 	.combphy_cfg	= rk3588_combphy_cfg,
+	.force_rxterm_det_rdy  = true,
 };
 
 static const struct of_device_id rockchip_combphy_of_match[] = {
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

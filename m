Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 034E1E98FAF
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Apr 2026 04:50:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=plyFIcacunAVlt0Hdp4F599ZGUtJiIWHYnpixp4gPSY=; b=z3mTzCNFEseAHi
	ClQObcdkdb3D6tXtMnUgPvGdddu9b15EmVtMVcSpGnrS1xXv04V4aCRT/LAVtWPQPD5jJcMD7o6YS
	9MvBIp8ukPOy/JxI1mDJlfIfOISR04T8GaMS2kNjU/uQGS38CLIlCp4+p2BGyj+ONwLA0RF1Y1Kki
	bLwLXnuEcNgDfFEQeC0jZO63lZAdp6ef+L6U9BXgzfjsqhgYR7SRiJnMJ6YxaB00qV+NHFT6uJuLX
	sDxxadUVfuWH9ksr7y3eNJmQ4Z9eJWbBqVPagWu1pFNZCHrG6wRlVPf3Y/w5Km9hbjJoJma01X7AX
	H357rm+ifKXk1J4nVbeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wAhKz-00000009h9O-2wYj;
	Thu, 09 Apr 2026 04:49:53 +0000
Received: from mail-pj1-x1031.google.com ([2607:f8b0:4864:20::1031])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wAhKy-00000009h8X-0BaU
	for linux-rockchip@lists.infradead.org;
	Thu, 09 Apr 2026 04:49:53 +0000
Received: by mail-pj1-x1031.google.com with SMTP id 98e67ed59e1d1-35c2fe0d90fso470641a91.1
        for <linux-rockchip@lists.infradead.org>; Wed, 08 Apr 2026 21:49:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1775710190; x=1776314990; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+ImK8hvWI99jsMPE6842OWsdASSwcChHTL0PI+ouj+g=;
        b=KqZIKk+gCgbg8kGPJsRLI0lDw9B/DwBYTPMSIRt05N/qM35bsQfYRnzEOqO6Wt3D8Y
         UOuEldSWMCyuI5qItbm28tUp//hQzaS9xvWX5mBddx6MzVT/5vBGtWPMYJMuxR/3bLDH
         mftW8TFf4cZJDa6iWzlAPOeu4jVN+nv01k+D8z/MKz8CTg+P5eRQ1pQj5eVMFiB0/fHH
         J19unsfYFie341zH51Xo3jkB74dNpNPgymOpOzm75rJR7DmSU42TAkVFngd2/5YfUAtX
         b1zXGUYNmBx1BEeeoPjKoLcXl3bgGfQYWUi62+0c1ml7MncjhzPVdQ2astsj4Yh4vwfo
         Xg9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775710190; x=1776314990;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+ImK8hvWI99jsMPE6842OWsdASSwcChHTL0PI+ouj+g=;
        b=n3ZOx/jJulMUX9G9x3UVXUsdG1zxjzDdCjo2E1IkBrWucQQEmWrEY/cExNkp29o5d8
         FtNHbEHpAyHSo/qgidAIaYSnJk+yByanlegMlO3dYHEen6jJ6TRW7YKObm64xnbwXB7x
         saR5+oJ7pyYbaANXHQyqBXWKPup0ITTJkuCYL2r2nkL5gQhoK9N/UYffOy5SiXH2e6zn
         JvUlEuXgnUnRJ5aHqb5zdPyjM/rFcG9bFqZhApjALxme1W//k1CAD+HOSESavSXTuSx1
         E94k6pmXj3Shg8L6W/ufrrF7upWRKwk3oqGcr+0URLgD/KYExNNy7D2mYwXmpIDQqI3N
         +M2A==
X-Forwarded-Encrypted: i=1; AJvYcCWJbllKqI6CmWEMgk66bziX2dl0dD6vrEJFUmFmIDX9aH5AmKjbAvt09QFe6B9Q7rChJBJwC2oFR0YzqB4NEw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxsx/v7WWm1rGgyNuxTOD7+AIgeHzNQ0aH0UL7Fj3GhhuWIWJd7
	Lc6/Igq96CW9jQci4IfJsYZWrESxooKe48/KVQwn0X9mIwsld7DUPcTu
X-Gm-Gg: AeBDieuCruOM3VUTLHeRcLYey+qnyCrD2nb4UVzG0hA67sg8NaNZkprx4uf4EsRwHmQ
	09UFKR5/WlCPrugqzwSxYe7lgs4tu3Hb/o/VLXkOuCpsH1PlklXyLQf3d6yGhGpMGdconSIQfgb
	Ztv0FFagrzu2TtzN/uWL5RIj21MP+N6RLr+yTe3vPF9tJgy18FXlDvT46goZx3fv9+Gb2cvf1Kq
	/jHL/FR+Pt+a82Te9cXlRhleRPZ5DkJdPFW+58LQoSD850R0vrvm+7roij06FEP2Gl5uR0AaNMQ
	ELkxjTNABZ8DPpqtdvPmjXzx2U2S6r5U3vojQ+q43Y1EysdHdnss4Ehp3SYKmaVNYyW/UWgpi98
	wMadIwqZ1P8iBx8BSG3y0NjvnBWPvuyxKNkPnRRq9TgawZOTp4/G8js1YR24Bh2MyEmY3jiZSCe
	tSs9nV5MXi2PRBwe7g+bkV
X-Received: by 2002:a17:90b:4d0b:b0:35b:9cd5:232e with SMTP id 98e67ed59e1d1-35de69b87d0mr21078585a91.29.1775710190421;
        Wed, 08 Apr 2026 21:49:50 -0700 (PDT)
Received: from rockpi-5b ([45.112.0.243])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c76c65812f4sm20395016a12.25.2026.04.08.21.49.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Apr 2026 21:49:49 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-phy@lists.infradead.org (open list:GENERIC PHY FRAMEWORK),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list)
Cc: Anand Moon <linux.amoon@gmail.com>,
	Niklas Cassel <cassel@kernel.org>
Subject: [PATCH v1] phy: rockchip-snps-pcie3:phy: Configure clkreq_n and PowerDown for all lanes
Date: Thu,  9 Apr 2026 10:19:30 +0530
Message-ID: <20260409044939.7647-1-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260408_214952_139574_ADC50D17 
X-CRM114-Status: GOOD (  17.54  )
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

During the rk3588_p3phy_init sequence, the driver now explicitly
configures each lane's CON0 register to ensure
- PIPE 4.3 Compliance: clkreq_n (bit 6) is forced low (asserted) to meet
  sideband signal requirements.
- Active Power State: PowerDown[3:0] (bits 11:8) is set to P0
  (Normal Operational State) to ensure the PHY is fully powered and ready
  for link training.

These changes ensure that all lanes are consistently transitioned from
reset into a known-good operational state, preventing undefined behavior
and ensuring the PHY is ready for high-speed data transmission.

Cc: Niklas Cassel <cassel@kernel.org>
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
 .../phy/rockchip/phy-rockchip-snps-pcie3.c    | 28 +++++++++++++++++--
 1 file changed, 26 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c b/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c
index 4e8ffd173096..f46e13e79a0e 100644
--- a/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c
+++ b/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c
@@ -7,6 +7,7 @@
 
 #include <linux/clk.h>
 #include <linux/delay.h>
+#include <linux/hw_bitfield.h>
 #include <linux/io.h>
 #include <linux/iopoll.h>
 #include <linux/kernel.h>
@@ -35,10 +36,14 @@
 #define RK3588_PCIE3PHY_GRF_CMN_CON0		0x0
 #define RK3588_PCIE3PHY_GRF_PHY0_STATUS1	0x904
 #define RK3588_PCIE3PHY_GRF_PHY1_STATUS1	0xa04
+#define RK3588_PCIE3PHY_GRF_PHY0_LN0_CON0	0x1000
 #define RK3588_PCIE3PHY_GRF_PHY0_LN0_CON1	0x1004
 #define RK3588_PCIE3PHY_GRF_PHY0_LN1_CON1	0x1104
+#define RK3588_PCIE3PHY_GRF_PHY0_LN1_CON0	0x1100
+#define RK3588_PCIE3PHY_GRF_PHY1_LN0_CON0	0x2000
 #define RK3588_PCIE3PHY_GRF_PHY1_LN0_CON1	0x2004
 #define RK3588_PCIE3PHY_GRF_PHY1_LN1_CON1	0x2104
+#define RK3588_PCIE3PHY_GRF_PHY1_LN1_CON0	0x2100
 #define RK3588_SRAM_INIT_DONE(reg)		(reg & BIT(0))
 
 #define RK3588_BIFURCATION_LANE_0_1		BIT(0)
@@ -49,6 +54,13 @@
 #define RK3588_PCIE1LN_SEL_EN			(GENMASK(1, 0) << 16)
 #define RK3588_PCIE30_PHY_MODE_EN		(GENMASK(2, 0) << 16)
 
+static const u32 rk3588_lane_con0[] = {
+	RK3588_PCIE3PHY_GRF_PHY0_LN0_CON0,
+	RK3588_PCIE3PHY_GRF_PHY0_LN1_CON0,
+	RK3588_PCIE3PHY_GRF_PHY1_LN0_CON0,
+	RK3588_PCIE3PHY_GRF_PHY1_LN1_CON0,
+};
+
 struct rockchip_p3phy_ops;
 
 struct rockchip_p3phy_priv {
@@ -142,7 +154,7 @@ static int rockchip_p3phy_rk3588_init(struct rockchip_p3phy_priv *priv)
 {
 	u32 reg = 0;
 	u8 mode = RK3588_LANE_AGGREGATION; /* default */
-	int ret;
+	int ret, i;
 
 	regmap_write(priv->phy_grf, RK3588_PCIE3PHY_GRF_PHY0_LN0_CON1,
 		     priv->rx_cmn_refclk_mode[0] ? RK3588_RX_CMN_REFCLK_MODE_EN :
@@ -161,7 +173,7 @@ static int rockchip_p3phy_rk3588_init(struct rockchip_p3phy_priv *priv)
 	regmap_write(priv->phy_grf, RK3588_PCIE3PHY_GRF_CMN_CON0, BIT(8) | BIT(24));
 
 	/* Set bifurcation if needed */
-	for (int i = 0; i < priv->num_lanes; i++) {
+	for (i = 0; i < priv->num_lanes; i++) {
 		if (priv->lanes[i] > 1)
 			mode &= ~RK3588_LANE_AGGREGATION;
 		if (priv->lanes[i] == 3)
@@ -174,6 +186,18 @@ static int rockchip_p3phy_rk3588_init(struct rockchip_p3phy_priv *priv)
 	regmap_write(priv->phy_grf, RK3588_PCIE3PHY_GRF_CMN_CON0,
 		     RK3588_PCIE30_PHY_MODE_EN | reg);
 
+	for (i = 0; i < priv->num_lanes && i < ARRAY_SIZE(rk3588_lane_con0); i++) {
+		u32 base = rk3588_lane_con0[i];
+
+		/* clkreq_n = 0 (asserted low for PIPE 4.3) */
+		regmap_write(priv->phy_grf, base,
+			     FIELD_PREP_WM16(BIT(6), 0));
+
+		/* PowerDown = P0 (0x0, fully active) */
+		regmap_write(priv->phy_grf, base,
+			     FIELD_PREP_WM16(GENMASK(11, 8), 0x0));
+	}
+
 	/* Set pcie1ln_sel in PHP_GRF_PCIESEL_CON */
 	if (!IS_ERR(priv->pipe_grf)) {
 		reg = mode & (RK3588_BIFURCATION_LANE_0_1 | RK3588_BIFURCATION_LANE_2_3);

base-commit: 7f87a5ea75f011d2c9bc8ac0167e5e2d1adb1594
-- 
2.50.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

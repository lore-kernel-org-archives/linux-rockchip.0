Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F9A0606A319
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Oct 2026 03:17:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=48nfJ3pU;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=rock-chips.com header.i=@rock-chips.com header.a=rsa-sha256 header.s=default header.b=LTcyNHDD
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uel5MFGQKm4IoOKwXG3KaaMNu5he/I5Z060FOdwmlwU=; b=48nfJ3pUGhnBeR
	OuyWf2zHfAn/cGOOyC1t8KLh9CGn6JPMY0MQkcTQZkFH9dw1WufI0CfMIL+toJH9rjeQKUbaXf9Tu
	/rwON/KciHFlDawDqeFc16YGnSu9UUCNPv2scSblE0A2570pBT7zEama6r6RkKgh3QZ20ERiwp2aq
	TT793LYwyiAf3g9ynFePj7th8oJmyaTWkekiQpSlzCK2qWL68+9WW4qgiEoqPOcRuEJyLFGUjMY/k
	OsclqUP8e2NotOOvmoAgtkKR+byyjglxrC2wjWLbVRthCXCXMwtaFo6D1pfUK1PYcEBfKu4njKCdr
	4aELzrYZBoKd212Aujaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ0Lr-00000008mVy-1Fy0;
	Tue, 20 Oct 2026 03:17:23 +0000
Received: from mail-m10313119171.xmail.ntesmail.com ([103.131.191.71])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ0Ln-00000008mSq-1S9b;
	Tue, 20 Oct 2026 03:17:22 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 51a517e44;
	Tue, 20 Oct 2026 11:17:11 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Vinod Koul <vkoul@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh@kernel.org>
Cc: linux-rockchip@lists.infradead.org,
	linux-phy@lists.infradead.org,
	Manivannan Sadhasivam <mani@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	devicetree@vger.kernel.org,
	Samuel Holland <samuel@sholland.org>,
	Coia Prant <coiaprant@gmail.com>,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH 2/2] phy: rockchip: snps-pcie3: Load updated PHY firmware on RK3568
Date: Tue, 20 Oct 2026 11:16:46 +0800
Message-Id: <1792466206-127946-3-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1792466206-127946-1-git-send-email-shawn.lin@rock-chips.com>
References: <1792466206-127946-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0aa15750208103a4kunm7337cf0a901643
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1kYFggdWUFKV1ktWUFJV1kPCRoVCBIfWUFZGUpKTFZMTEhDHksZQ0
	8ZQ0pWFRQJFhoXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0
	tIVUpLSU9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=LTcyNHDDmbj98pBnGtdjaKh4btnRPsnFbmRTB8wX9QjYBPcI5alvkXF7/xAZbj545ssp7AYsNbd5YQnk9E2JFTMI0zbJ5nhavGPo4MwUhBkY4+gcw6EayERIdBgMzk3dNvFid1bhFXankgv9ghe9xf4NBU+b66rcWhQIE8vDb9E=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=aBGbZSOm3WCp2POi9EH+waPzOsjBiCw0vKW+3KxQbak=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261019_201720_956910_A41983B7 
X-CRM114-Status: GOOD (  27.31  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-17.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The RK3568 PCIe3 PHY can load an updated firmware into its internal
SRAM during initialization. Without it the PHY may come up with a stale
microcode and fail to establish a stable link.

Load the firmware named by the optional firmware-name DT property during
probe, so that it is available in the phy_init() context and is not read
from the filesystem on every init. During initialization, clear SDRAM
load done and bypass, wait for the SRAM to lock, map the SRAM into the
register window, write the firmware and finally signal SDRAM load done.

The firmware is optional: when firmware-name is absent (older DTBs) or
the file cannot be loaded, the driver keeps the behaviour unchanged and
uses the microcode already present in the PHY.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 drivers/phy/rockchip/phy-rockchip-snps-pcie3.c | 101 ++++++++++++++++++++++++-
 1 file changed, 99 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c b/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c
index ce7d8db..bc1b4d0 100644
--- a/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c
+++ b/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c
@@ -7,6 +7,7 @@
 
 #include <linux/clk.h>
 #include <linux/delay.h>
+#include <linux/firmware.h>
 #include <linux/io.h>
 #include <linux/iopoll.h>
 #include <linux/kernel.h>
@@ -19,11 +20,13 @@
 #include <linux/regmap.h>
 #include <linux/reset.h>
 #include <linux/units.h>
+#include <linux/unaligned.h>
 
 #define RK_PCIE_SRAM_INIT_TIMEOUT_US		(20 * USEC_PER_MSEC)
 
 /* Register for RK3568 */
 #define GRF_PCIE30PHY_CON1			0x4
+#define GRF_PCIE30PHY_CON4			0x10
 #define GRF_PCIE30PHY_CON6			0x18
 #define GRF_PCIE30PHY_CON9			0x24
 #define GRF_PCIE30PHY_DA_OCM			(BIT(15) | BIT(31))
@@ -31,6 +34,11 @@
 #define GRF_PCIE30PHY_WR_EN			(0xf << 16)
 #define SRAM_INIT_DONE(reg)			(reg & BIT(14))
 
+#define GRF_PCIE30PHY_CON4_SDRAM_LD_DONE	BIT(14)
+#define GRF_PCIE30PHY_CON4_SDRAM_BYPASS		BIT(13)
+#define GRF_PCIE30PHY_CON9_SRAM_MAP		(0x3 << 8)
+#define GRF_PCIE30PHY_CON9_SRAM_MAP_WE		(0x3 << 24)
+
 #define RK3568_BIFURCATION_LANE_0_1		BIT(0)
 
 /* Register for RK3588 */
@@ -56,6 +64,7 @@ struct rockchip_p3phy_ops;
 
 struct rockchip_p3phy_priv {
 	const struct rockchip_p3phy_ops *ops;
+	struct device *dev;
 	void __iomem *mmio;
 	/* mode: RC, EP */
 	int mode;
@@ -70,6 +79,8 @@ struct rockchip_p3phy_priv {
 	int num_lanes;
 	u32 lanes[4];
 	u32 rx_cmn_refclk_mode[4];
+	const struct firmware *fw;
+	const char *fw_name;
 };
 
 struct rockchip_p3phy_ops {
@@ -96,6 +107,34 @@ static int rockchip_p3phy_set_mode(struct phy *phy, enum phy_mode mode, int subm
 	return 0;
 }
 
+static void rockchip_p3phy_release_fw(void *data)
+{
+	struct rockchip_p3phy_priv *priv = data;
+
+	release_firmware(priv->fw);
+	priv->fw = NULL;
+}
+
+static void rockchip_p3phy_rk3568_load_fw(struct rockchip_p3phy_priv *priv)
+{
+	const struct firmware *fw = priv->fw;
+	int i;
+
+	/* Map the PHY SRAM into the register window to write the firmware. */
+	regmap_write(priv->phy_grf, GRF_PCIE30PHY_CON9,
+		     GRF_PCIE30PHY_CON9_SRAM_MAP | GRF_PCIE30PHY_CON9_SRAM_MAP_WE);
+
+	for (i = 0; i < fw->size / sizeof(u16); i++)
+		writel(get_unaligned_le16(fw->data + i * sizeof(u16)),
+		       priv->mmio + (i << 2));
+
+	dev_dbg(priv->dev, "loaded PHY firmware %s, size %zu\n",
+		priv->fw_name, fw->size);
+
+	/* Unmap: field back to 0 with the write-enable for bits[9:8] */
+	regmap_write(priv->phy_grf, GRF_PCIE30PHY_CON9, GRF_PCIE30PHY_CON9_SRAM_MAP_WE);
+}
+
 static int rockchip_p3phy_rk3568_init(struct rockchip_p3phy_priv *priv)
 {
 	struct phy *phy = priv->phy;
@@ -125,16 +164,41 @@ static int rockchip_p3phy_rk3568_init(struct rockchip_p3phy_priv *priv)
 			     GRF_PCIE30PHY_WR_EN & ~RK3568_BIFURCATION_LANE_0_1);
 	}
 
+	/* Clear SDRAM load done and bypass before loading the new firmware. */
+	if (priv->fw) {
+		regmap_write(priv->phy_grf, GRF_PCIE30PHY_CON4,
+			     GRF_PCIE30PHY_CON4_SDRAM_LD_DONE << 16);
+		regmap_write(priv->phy_grf, GRF_PCIE30PHY_CON4,
+			     GRF_PCIE30PHY_CON4_SDRAM_BYPASS << 16);
+	}
+
 	reset_control_deassert(priv->p30phy);
 
 	ret = regmap_read_poll_timeout(priv->phy_grf,
 				       GRF_PCIE30PHY_STATUS0,
 				       reg, SRAM_INIT_DONE(reg),
 				       1000, RK_PCIE_SRAM_INIT_TIMEOUT_US);
-	if (ret)
+	if (ret) {
 		dev_err(&priv->phy->dev, "%s: lock failed 0x%x, check input refclk and power supply\n",
 		       __func__, reg);
-	return ret;
+		return ret;
+	}
+
+	/*
+	 * Load the updated PHY firmware into the internal SRAM and signal
+	 * SDRAM load done once it has been written. The firmware update is
+	 * optional: when no firmware-name is described in DT (older DTBs)
+	 * the microcode already present in the PHY is used as-is.
+	 */
+	if (priv->fw) {
+		rockchip_p3phy_rk3568_load_fw(priv);
+
+		regmap_write(priv->phy_grf, GRF_PCIE30PHY_CON4,
+			     (GRF_PCIE30PHY_CON4_SDRAM_LD_DONE << 16) |
+			     GRF_PCIE30PHY_CON4_SDRAM_LD_DONE);
+	}
+
+	return 0;
 }
 
 static const struct rockchip_p3phy_ops rk3568_ops = {
@@ -250,12 +314,14 @@ static int rockchip_p3phy_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct rockchip_p3phy_priv *priv;
 	struct device_node *np = dev->of_node;
+	const char *fw_name;
 	int ret;
 
 	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 	if (!priv)
 		return -ENOMEM;
 
+	priv->dev = dev;
 	priv->mmio = devm_platform_get_and_ioremap_resource(pdev, 0, NULL);
 	if (IS_ERR(priv->mmio)) {
 		ret = PTR_ERR(priv->mmio);
@@ -268,6 +334,37 @@ static int rockchip_p3phy_probe(struct platform_device *pdev)
 		return -EINVAL;
 	}
 
+	/*
+	 * RK3568 can load an updated PHY firmware into its internal SRAM. The
+	 * firmware file is named by the optional firmware-name property; when
+	 * it is not described (older DTBs) or cannot be loaded, keep using the
+	 * microcode already present in the PHY.
+	 */
+	if (priv->ops == &rk3568_ops && !of_property_read_string(np, "firmware-name",
+								 &fw_name)) {
+		ret = request_firmware(&priv->fw, fw_name, dev);
+		if (ret) {
+			dev_warn(dev, "PHY firmware %s not available: %d\n",
+				 fw_name, ret);
+			priv->fw = NULL;
+		} else if (priv->fw->size % sizeof(u16)) {
+			dev_warn(dev, "invalid PHY firmware size %zu, skip update\n",
+				 priv->fw->size);
+			release_firmware(priv->fw);
+			priv->fw = NULL;
+		} else {
+			priv->fw_name = fw_name;
+		}
+
+		if (priv->fw) {
+			ret = devm_add_action_or_reset(dev,
+						       rockchip_p3phy_release_fw,
+						       priv);
+			if (ret)
+				return ret;
+		}
+	}
+
 	priv->phy_grf = syscon_regmap_lookup_by_phandle(np, "rockchip,phy-grf");
 	if (IS_ERR(priv->phy_grf)) {
 		dev_err(dev, "failed to find rockchip,phy_grf regmap\n");
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

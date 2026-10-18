Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 956DDCCF2C4
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 Oct 2026 01:14:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2L5d1pIjB5UxVDlrKhgt9+3+r0yBBQRs8GUcLYupy8M=; b=aczT3tDcn6BTLT
	0Jpk8i31ulkZ4Cu3LXRZdc4uBwtFn5yqiF60OA9KjSrWln2HShWkGOfG5UsvXpLOK50hBRBPApRCK
	7vd6yXS2gudhHH+dQUGv72xemJpk5F9v6iYxHEX21/4v7af7ppJqawlJGkgjn9wtPRRKNpO0Q3Ee+
	CtEGn9rue9T7W4MR5Xb02SFJRjgF54Bsk52ipzEmvNrirpRqvL7/mnHlFOppu3oE8Noc0QJKogh/2
	aD6YrWeRKGMWxKMdfUGOt0nhMjaG9ofxFigOKlkDOor62XSOdciMAWzNzfeazDebxBp5SEh80ewrO
	ACEVTRjAHq3PfF7cY3eQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIFTm-00000005Oky-0mJG;
	Sun, 18 Oct 2026 01:14:26 +0000
Received: from mail-m60251.netease.com ([210.79.60.251])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIFTi-00000005OkN-2dHj;
	Sun, 18 Oct 2026 01:14:24 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 516b7c389;
	Sun, 18 Oct 2026 09:14:08 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Vinod Koul <vkoul@kernel.org>
Cc: linux-rockchip@lists.infradead.org,
	linux-phy@lists.infradead.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v3] phy: rockchip: snps-pcie3: Raise the SRAM init timeout
Date: Sun, 18 Oct 2026 09:13:56 +0800
Message-Id: <1792286036-208067-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Tid: 0aa14c92c0e503a4kunm45ec892d57f54b
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1kYFggdWUFKV1ktWUFJV1kPCRoVCBIfWUFZGhoaGFYdTUkZGktOQk
	NITEJWFRQJFhoXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0
	tIVUpLSU9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=BdfzurCnBKdS3DAwiY88g2bVhn92ph4pJNxmegZ5sCs1rdYaSCfUqyde6uxLNfCXZGE7REeLAlcPWgz4zN/QZKJZ9Jz+yYdgplw9FZMEhmxNWkxI961zKwHuWdHLuFDAXaxyRIV/A67rovrCqw5Q3OShdR5gPDkx9bpnTzom40w=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=y6oBHr1RIjL235ab4ihjZJKHFVq1SAaM3woeHFxUorA=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261017_181423_244684_AAEC227E 
X-CRM114-Status: GOOD (  11.88  )
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

The SRAM initialization of the PCIe3 PHY may take longer than the 500us
currently allowed, especially on a slow power-up such as at low
temperature. In that case the driver reports

  lock failed 0x..., check input refclk and power supply

even though the input refclk and power supply are fine.

Raise the timeout to 20ms and use a named constant for it, applied to
both the RK3568 and RK3588 paths.

A non-zero sleep interval (1ms) is passed to the polling helpers so the
CPU is yielded between reads. With sleep_us == 0 the helpers tight-loop,
which would otherwise burn the CPU during the now much longer wait.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---

Changes in v3:
- Use RK_PCIE_SRAM_INIT_TIMEOUT_US(Sebastian)

Changes in v2:
- pass 1ms to the polling helper(Sashiko)

 drivers/phy/rockchip/phy-rockchip-snps-pcie3.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c b/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c
index 4e8ffd1..ce7d8db 100644
--- a/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c
+++ b/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c
@@ -18,6 +18,9 @@
 #include <linux/platform_device.h>
 #include <linux/regmap.h>
 #include <linux/reset.h>
+#include <linux/units.h>
+
+#define RK_PCIE_SRAM_INIT_TIMEOUT_US		(20 * USEC_PER_MSEC)
 
 /* Register for RK3568 */
 #define GRF_PCIE30PHY_CON1			0x4
@@ -127,7 +130,7 @@ static int rockchip_p3phy_rk3568_init(struct rockchip_p3phy_priv *priv)
 	ret = regmap_read_poll_timeout(priv->phy_grf,
 				       GRF_PCIE30PHY_STATUS0,
 				       reg, SRAM_INIT_DONE(reg),
-				       0, 500);
+				       1000, RK_PCIE_SRAM_INIT_TIMEOUT_US);
 	if (ret)
 		dev_err(&priv->phy->dev, "%s: lock failed 0x%x, check input refclk and power supply\n",
 		       __func__, reg);
@@ -187,11 +190,11 @@ static int rockchip_p3phy_rk3588_init(struct rockchip_p3phy_priv *priv)
 	ret = regmap_read_poll_timeout(priv->phy_grf,
 				       RK3588_PCIE3PHY_GRF_PHY0_STATUS1,
 				       reg, RK3588_SRAM_INIT_DONE(reg),
-				       0, 500);
+				       1000, RK_PCIE_SRAM_INIT_TIMEOUT_US);
 	ret |= regmap_read_poll_timeout(priv->phy_grf,
 					RK3588_PCIE3PHY_GRF_PHY1_STATUS1,
 					reg, RK3588_SRAM_INIT_DONE(reg),
-					0, 500);
+					1000, RK_PCIE_SRAM_INIT_TIMEOUT_US);
 	if (ret)
 		dev_err(&priv->phy->dev, "lock failed 0x%x, check input refclk and power supply\n",
 			reg);
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

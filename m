Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8403E606A324
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Nov 2026 00:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=xWe70uZ4;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=rock-chips.com header.i=@rock-chips.com header.a=rsa-sha256 header.s=default header.b=SJM2DnmJ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=i6XPDjQaebsQsbU4IBiRPMxW/B8hwb6FYC5EwjQ5uZc=; b=xWe70uZ4QWb4yxjDvzFtkwAzC0
	KBQX9LvzIR2OsqdRvhrPPcFKaFYYKnZYO3t/si05Nn2FydFBawU2WkgykCcikLAxAgzNL0JCdbMaE
	P3+EILaGDktffPDUMMJz913JkTbFtHm+i67uPpV/EL3DcBDuBk/yuccA5zHJKeu8H4HwfuqGXTqrL
	UcUPsizI0CdLAnabs5nVLeyJfBB5Fc04iUo8zzwZ/BFItOKZ3KZsSbpIaEAu4N62vf0w12kBh/Dml
	LzEkpBP7ZIqpzForNsy7gSmw+hOba55K1dE2Y0/4OgaC9J/NLUG4ahQ+Rs86kAxIH1vjlNVuu61LR
	hdajPtKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNgH4-0000000FKYV-1XBG;
	Mon, 02 Nov 2026 00:51:46 +0000
Received: from mail-m12891.netease.com ([103.209.128.91])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNgH1-0000000FKY2-23jk;
	Mon, 02 Nov 2026 00:51:45 +0000
Received: from localhost.localdomain (unknown [61.154.14.87])
	by smtp.qiye.163.com (Hmail) with ESMTP id 5317aedd5;
	Mon, 2 Nov 2026 08:51:39 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: linux-rockchip@lists.infradead.org,
	linux-phy@lists.infradead.org,
	Manivannan Sadhasivam <mani@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v4] phy: rockchip: snps-pcie3: Raise the SRAM init timeout
Date: Mon,  2 Nov 2026 08:51:29 +0800
Message-Id: <20261102005129.3745527-1-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.25.1
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-HM-Tid: 0aa199bd8ea803a4kunm271e3f7139bb8b
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlCThgYVh5CTkgYSR5MSEtNGVYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ0xZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=SJM2DnmJxKwPqR8acm8HIp2Gy8/1bmICMIYS/YMN6lZ5lM5vEvVw4IfQ7VQ7x/OUjRkqY2+wdPKxkx8fGr7ZAZw4lcngStusaJU6bznGBEb/iASITLXa9M1FxpjHcalA9v1/QXPxIYYDWye5ADg0VMtwGgZP/M3KrqL3lP8fyNc=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=4jLI93HSMKrNIN02sISt/k02b1j8/QkNCtwsyADl1tM=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261101_165144_084103_6517F214 
X-CRM114-Status: GOOD (  12.69  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

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

Fixes: 2e9bffc4f713 ("phy: rockchip: Support PCIe v3")
Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
Reviewed-by: Manivannan Sadhasivam <mani@kernel.org>
Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---
Changes in v4:
- Add Fixes tag and collect tag(Mani)

Changes in v3:
- Use RK_PCIE_SRAM_INIT_TIMEOUT_US(Sebastian)

Changes in v2:
- pass 1ms to the polling helper(Sashiko)

 drivers/phy/rockchip/phy-rockchip-snps-pcie3.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c b/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c
index 4e8ffd173096..ce7d8db2a7c5 100644
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
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E145CC6B2F
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Oct 2026 08:26:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xfsYKysr+pj2lvxWm5iZRkRX6r75CR+K4ZfE/W9YPwM=; b=HJFBo8p8zXBzx6
	Pm36lV56BinGH7RVrC8UWBcZL3zdl+HjUz5hWkye4K9astkWquxHUtGmmdWYDQdXt++h/lYT5uOnt
	oDSOH0/mg5Bh7l2HirT1A2/Ayo+3M5t+NDaQ8wNKxikWX2fTd0NeddXns+hTRWZRiVFq4BcTGR8kY
	G78JiriXyYOq+84c1G6N+QNuAjAOzuedXhHefyJ+ZcgyLcQDhkME1bCXuwGQoiJgqr314z7BWZhkl
	gg+8EglEAsVWmN6nRCdf8iQ3eKBOtgcittz2LRQ0YTkTohqZ7cGSApCq+FoOyhLQDFewvl+TR68vV
	Lh0dyV0eQqXfoR9A8aBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHGmv-0000000H96c-0k6l;
	Thu, 15 Oct 2026 08:26:09 +0000
Received: from mail-m1973193.qiye.163.com ([220.197.31.93])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHGms-0000000H946-1xUk;
	Thu, 15 Oct 2026 08:26:08 +0000
Received: from localhost.localdomain (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 5125548e2;
	Thu, 15 Oct 2026 16:10:59 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Vinod Koul <vkoul@kernel.org>
Cc: linux-rockchip@lists.infradead.org,
	linux-phy@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>,
	linux-kernel@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v2] phy: rockchip: snps-pcie3: Raise the SRAM init timeout
Date: Thu, 15 Oct 2026 16:10:43 +0800
Message-Id: <1792051843-93245-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Tid: 0aa13e9d4cdd03a4kunmff98bd243d8280
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkZShpJVkwfSUpLHxhJTk1PTlYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=cadfJqWos44zIX7hyQWrJmLvw8qsbJto6mNuj/ggulUOlhYSNRr07ODcQf36OMhS8ukJGJDtNL4GbrM96tM78GL+iQaiaYKxUodKlLPAT0Dx1tWaNOsjKpn+8DIwft/gPmrq8IT7RCWNMQ/hfzcQZV94NEgtGbBTZnvvX4t4iXw=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=f6mtt1FuPkav0gMKJDC6dik1kQ9Fy+q/TLzhk6xwuhU=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_012606_707224_B87E23E4 
X-CRM114-Status: GOOD (  13.11  )
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

The two PHY lanes share most of their circuitry in both aggregation and
bifurcation mode, so in practice once the first PHY locks the second one
can be assumed to lock as well. The two sequential polls therefore do
not add any noticeable delay.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>

---

Changes in v2:
- address Sashiko's comment

 drivers/phy/rockchip/phy-rockchip-snps-pcie3.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c b/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c
index 4e8ffd1..69bda8b 100644
--- a/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c
+++ b/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c
@@ -19,6 +19,8 @@
 #include <linux/regmap.h>
 #include <linux/reset.h>
 
+#define RK_PCIE_SRAM_INIT_TIMEOUT		20000
+
 /* Register for RK3568 */
 #define GRF_PCIE30PHY_CON1			0x4
 #define GRF_PCIE30PHY_CON6			0x18
@@ -127,7 +129,7 @@ static int rockchip_p3phy_rk3568_init(struct rockchip_p3phy_priv *priv)
 	ret = regmap_read_poll_timeout(priv->phy_grf,
 				       GRF_PCIE30PHY_STATUS0,
 				       reg, SRAM_INIT_DONE(reg),
-				       0, 500);
+				       1000, RK_PCIE_SRAM_INIT_TIMEOUT);
 	if (ret)
 		dev_err(&priv->phy->dev, "%s: lock failed 0x%x, check input refclk and power supply\n",
 		       __func__, reg);
@@ -187,11 +189,11 @@ static int rockchip_p3phy_rk3588_init(struct rockchip_p3phy_priv *priv)
 	ret = regmap_read_poll_timeout(priv->phy_grf,
 				       RK3588_PCIE3PHY_GRF_PHY0_STATUS1,
 				       reg, RK3588_SRAM_INIT_DONE(reg),
-				       0, 500);
+				       1000, RK_PCIE_SRAM_INIT_TIMEOUT);
 	ret |= regmap_read_poll_timeout(priv->phy_grf,
 					RK3588_PCIE3PHY_GRF_PHY1_STATUS1,
 					reg, RK3588_SRAM_INIT_DONE(reg),
-					0, 500);
+					1000, RK_PCIE_SRAM_INIT_TIMEOUT);
 	if (ret)
 		dev_err(&priv->phy->dev, "lock failed 0x%x, check input refclk and power supply\n",
 			reg);
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

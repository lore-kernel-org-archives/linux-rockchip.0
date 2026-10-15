Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19286CC6B2F
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Oct 2026 07:03:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eXTTLlBg6wO88uXPRT5N3hPYtErFydjj+8n9yEf600U=; b=TIKRpCLzFgiyen
	lucoGZbBX39a9vPKRBmp49eKFzcrHsyXPC8tWxD28sP1eFPBBQIppMJEdu1dLtTbiZXAajdM4jaiE
	CfnkwL4qQssy9BTd+XrNaS8POaok3HbBwYc+aEdcZbrdt/mQyQnnd+Y6a/UOLayIzIc0g3cVvX9st
	Mhi/SymLahVbaaCBRNJKa436CNM662x1jkkVKDTnwCqaAjoz23QRUjAZIxVv2gXwuqX8BVnv1yXJe
	nneg4SnLLoZFkGqFIXR0thxKwI+1PXKV0IwT78LnlxAITyGHL7/ja4DuUV2fvt1HU9MyO9uV8hWZz
	K5+lxFdQIpoLGVN2i6Fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHFUj-0000000H0VY-30Ue;
	Thu, 15 Oct 2026 07:03:17 +0000
Received: from mail-m83154.xmail.ntesmail.com ([156.224.83.154])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHFUg-0000000H0U9-10SH;
	Thu, 15 Oct 2026 07:03:16 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 51225b578;
	Thu, 15 Oct 2026 15:03:05 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Vinod Koul <vkoul@kernel.org>
Cc: linux-rockchip@lists.infradead.org,
	linux-phy@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>,
	linux-kernel@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH] phy: rockchip: snps-pcie3: Raise the SRAM init timeout
Date: Thu, 15 Oct 2026 15:02:55 +0800
Message-Id: <1792047775-77954-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Tid: 0aa13e5f227a03a4kunmf26a377d3cb404
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1kYFggdWUFKV1ktWUFJV1kPCRoVCBIfWUFZQhpJHVYdSBhNT09OSE
	4dHh5WFRQJFhoXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0
	tIVUpLSU9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=ikq3T0/6pXVMroIJZuX4amQAj+Bgq1URrN60TL/hEYp7vaQ6b0k3ojgA2QwfK8exMPw11elJ1JH7Q/iul5yHgV6VvnEjrJRWwIJ3Z/dD094NQo7QBlUyL88rNKO0Yig6EfnhBxhQSiitheLU5C9Aq1GiH7Ca6SaFk8I7RmBmxT4=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=F5HjPREDwq11Y08CEYvkPat2goorfkTC4raeVBv7ccM=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_000314_972912_BAEA2CCD 
X-CRM114-Status: GOOD (  11.59  )
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

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 drivers/phy/rockchip/phy-rockchip-snps-pcie3.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c b/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c
index 4e8ffd1..bbbfd6d 100644
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
+				       0, RK_PCIE_SRAM_INIT_TIMEOUT);
 	if (ret)
 		dev_err(&priv->phy->dev, "%s: lock failed 0x%x, check input refclk and power supply\n",
 		       __func__, reg);
@@ -187,11 +189,11 @@ static int rockchip_p3phy_rk3588_init(struct rockchip_p3phy_priv *priv)
 	ret = regmap_read_poll_timeout(priv->phy_grf,
 				       RK3588_PCIE3PHY_GRF_PHY0_STATUS1,
 				       reg, RK3588_SRAM_INIT_DONE(reg),
-				       0, 500);
+				       0, RK_PCIE_SRAM_INIT_TIMEOUT);
 	ret |= regmap_read_poll_timeout(priv->phy_grf,
 					RK3588_PCIE3PHY_GRF_PHY1_STATUS1,
 					reg, RK3588_SRAM_INIT_DONE(reg),
-					0, 500);
+					0, RK_PCIE_SRAM_INIT_TIMEOUT);
 	if (ret)
 		dev_err(&priv->phy->dev, "lock failed 0x%x, check input refclk and power supply\n",
 			reg);
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

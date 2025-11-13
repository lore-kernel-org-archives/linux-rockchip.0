Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03A6ECCFA13
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Nov 2025 03:28:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5BEdj2Pb3jsYDdoV8l6nFxVZFXEqvh+oVztMCzrtMRk=; b=mEcYwGsa5N9qgs
	pbZU0VmUBPy7bAQj1OGC+rFJg7fd0NIRKWeJKHmMTu04gGAYvdSPe72hetIcfR3sBawaM4J32i5HK
	QXn5DIATk/QyWHdYcQIOKDvlPH4TIsv/5dqvrZuX+KWhBiQ5gnoNmSa68Gm9lbJ6lBnF25eQBpLfj
	73XhkmWewOKqEs+iPwHZfBApHJP5LuqPER2eC8qhJnEEqlt7UlDnCmd+CqCKm9SobXUeE8UXytv/G
	1mOqT6t5neDo3ZpNa5QL50v5g1UlruUXvAZVApuafxeTYfrQ4irDl1P7vD2i0zSo5yjgQMUHWItEq
	GwrlC3I1BRac5j/gOpLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJO0Q-00000009q4Y-1Vvp;
	Thu, 13 Nov 2025 03:28:18 +0000
Received: from mail-m1973181.qiye.163.com ([220.197.31.81])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJO0M-00000009q3s-3lAu;
	Thu, 13 Nov 2025 03:28:16 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 296987088;
	Thu, 13 Nov 2025 11:28:09 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-phy@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH] phy: rockchip: naneng-combphy: Fix PCIe L1ss support
Date: Thu, 13 Nov 2025 11:27:58 +0800
Message-Id: <1763004478-218446-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Tid: 0a9a7b419c1f09cckunm808f0aed254c38
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQkhJH1YZSU9ITE5KTEoZSR1WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=ZFJFidtstrKCOgmhvjw8eaUhX0yQevvEinzOV6SuW3HaZco4zmBx3HIfYv6hT4DpW9KtXwb7l1B63EHXqm96yexelk1pRavE1BKftIy7+ihHLXPemJ5Ua9XSSgSJPiLsbXu9FpGZfrQKneIAt2Gh7oZHqrDBdtsK91vqGp6uSUc=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=O2ZYIIp79DhS05hEt2HVrk0S3tpe80vjyiH6+BM0xYM=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251112_192815_434074_10324D61 
X-CRM114-Status: UNSURE (   9.12  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Need to control the delay PLL turnoff time if PCIe works on
L1 PM substates.

Fixes: f13bff25161b ("phy: rockchip-naneng-combo: Support rk3562")
Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 drivers/phy/rockchip/phy-rockchip-naneng-combphy.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
index af9a5c7..5b6f80e 100644
--- a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
+++ b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
@@ -106,6 +106,10 @@
 #define RK3568_PHYREG18				0x44
 #define RK3568_PHYREG18_PLL_LOOP		0x32
 
+#define RK3568_PHYREG30				0x74
+#define RK3568_PHYREG30_GATE_TX_PCK_SEL         BIT(7)
+#define RK3568_PHYREG30_GATE_TX_PCK_DLY_PLL_OFF BIT(7)
+
 #define RK3568_PHYREG32				0x7C
 #define RK3568_PHYREG32_SSC_MASK		GENMASK(7, 4)
 #define RK3568_PHYREG32_SSC_DIR_MASK		GENMASK(5, 4)
@@ -665,6 +669,11 @@ static int rk3562_combphy_cfg(struct rockchip_combphy_priv *priv)
 	case REF_CLOCK_100MHz:
 		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_clk_100m, true);
 		if (priv->type == PHY_TYPE_PCIE) {
+			/* Gate_tx_pck_sel length select for L1ss support */
+			rockchip_combphy_updatel(priv, RK3568_PHYREG30_GATE_TX_PCK_SEL,
+						 RK3568_PHYREG30_GATE_TX_PCK_DLY_PLL_OFF,
+						 RK3568_PHYREG30);
+
 			/* PLL KVCO tuning fine */
 			val = FIELD_PREP(RK3568_PHYREG33_PLL_KVCO_MASK,
 					 RK3568_PHYREG33_PLL_KVCO_VALUE);
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

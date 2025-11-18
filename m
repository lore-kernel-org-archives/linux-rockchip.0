Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9F8ACED262
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Nov 2025 09:52:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vIM7ZTo3NZeAsJXcPTot7GEtqv+ygJoNqopr1Kq5mjo=; b=EDZfTMlFK0eUe1
	xJli18AliP6giP1wK0CCbD1cRvcTjH67PSx/YaIed8X537BUFIGbjiz+1AlReoVnMqVX4uW7dspvc
	QO3rAzFqHgNqezvVdKHlK58hvm4e/lEVuFMGRv3TcENRhwrXRyWFBr9aR2+uFLLibEenZlBkLC0JD
	KaRNx8UKFaxpQ1eZ8l5U9PbG10lElK1Ikynei7eh48K9GXdcsQLL8hbeaiKv8WwVmJO0GGzyDidQs
	TQgU+eA/XPKwNUwpt+ku/WvaLDhriazSt1cLzqJefEmJ9ZXF+2Q4bkY1+HQnsF1kmgits4vixXiLA
	dVUvi97vYcNbfHyqnXCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLINz-00000000BqK-2K3H;
	Tue, 18 Nov 2025 09:52:31 +0000
Received: from mail-m19731119.qiye.163.com ([220.197.31.119])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLINv-00000000Boe-03xu;
	Tue, 18 Nov 2025 09:52:29 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 29fc4b630;
	Tue, 18 Nov 2025 17:52:22 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-phy@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v2 2/2] phy: rockchip: naneng-combphy: Fix PCIe L1ss support RK3562
Date: Tue, 18 Nov 2025 17:52:06 +0800
Message-Id: <1763459526-35004-2-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1763459526-35004-1-git-send-email-shawn.lin@rock-chips.com>
References: <1763459526-35004-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0a9a96612c2709cckunm93a8996eb0db3
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGh8aGlZNS0pMTE5PGhhISk9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=XdpCvOVEGh4kir13PaJhU/PI9nwhiN+4+T1JsI98Z5/YeMxn4AH5xXEgLOP/9323nOtdw+Yb7kiBKiJo7SNYJE9PY7pAHsKofKjjOYdSsGQRROLj6HUrq4g5g5yLjcS7N7EZRCBy+aaic+MVAwD792WfwVgKeJ2uB6ZiA21MWxQ=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=Ul4xHXGnjxB++HMNqwMS88WcIpkjbYsC+3ZWCcHIYWI=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251118_015227_205390_59043EEB 
X-CRM114-Status: GOOD (  11.08  )
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

When PCIe link enters L1 PM substates, the PHY will turn off its
PLL for power-saving. However, it turns off the PLL too fast which
leads the PHY to be broken. According to the PHY document, we need
to delay PLL turnoff time.

Fixes: f13bff25161b ("phy: rockchip-naneng-combo: Support rk3562")
Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

Changes in v2:
- add more commit message

 drivers/phy/rockchip/phy-rockchip-naneng-combphy.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
index e303bec..7f8fc8e 100644
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
@@ -664,6 +668,10 @@ static int rk3562_combphy_cfg(struct rockchip_combphy_priv *priv)
 	case REF_CLOCK_100MHz:
 		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_clk_100m, true);
 		if (priv->type == PHY_TYPE_PCIE) {
+			/* Gate_tx_pck_sel length select for L1ss support */
+			rockchip_combphy_updatel(priv, RK3568_PHYREG30_GATE_TX_PCK_SEL,
+						 RK3568_PHYREG30_GATE_TX_PCK_DLY_PLL_OFF,
+						 RK3568_PHYREG30);
 			/* PLL KVCO tuning fine */
 			val = FIELD_PREP(RK3568_PHYREG33_PLL_KVCO_MASK,
 					 RK3568_PHYREG33_PLL_KVCO_VALUE);
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

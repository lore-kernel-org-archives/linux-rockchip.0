Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F33DACED24E
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Nov 2025 09:52:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Fc8EryJCRtcAFFnaUAAAxttfOTZVdKSPehIqUYDxAKQ=; b=klHPW8ZeD/1cV8
	xAzA2jYep/82j9yOOPkCtAfy+KRN2JJUD3q6mMo0WigDEk4Gs6JIQGiE1mJEdd6/OlGakAKKyAns1
	06dXvcoCsBXqe5yNt9htnb/i81klM4rghUZtGh32CxJRGdNvcyTLUHMRh29EANrYoxZX9X68iKvDt
	Cvv1QzuSEDvix58GcwsX0JJ959PeBTmFYQosEB2xMM8XeDKaUekzBDhWlWrQGEMJb5iJZL6AYRIGR
	i/1j1yXOK+Z02f8ymHYQcjJRysxfA55mA8S1OAZUjVnyDsJ8qCLtwhIxFU4jlSSTuxyt3MJZ/jwFQ
	Xxre5wRssvn5imlbo90Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLINy-00000000Bpw-43Ot;
	Tue, 18 Nov 2025 09:52:31 +0000
Received: from mail-m19731107.qiye.163.com ([220.197.31.107])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLINu-00000000Bob-2AiW;
	Tue, 18 Nov 2025 09:52:28 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 29fc4b61c;
	Tue, 18 Nov 2025 17:52:18 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-phy@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v2 1/2] phy: rockchip: naneng-combphy: Fix PCIe L1ss support RK3528
Date: Tue, 18 Nov 2025 17:52:05 +0800
Message-Id: <1763459526-35004-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Tid: 0a9a96611e3a09cckunm93a8996eb0d84
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGk5OH1YaSB9PQhoeQh1PTUNWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEtNQk
	tVSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=a2oFOPthaQEIt4MW6m2pk2yfX+Vlx6ugdjfkaAhrKJt3uhj68BmgsIOSq1dAgy0TtcEoMBOAQDhzSUJGTXNYH9T3uUkj/yaO8CkKYflqpn/GtUstdrNYaPUPL9GbiwiBdBiSqS8bGoZIYSvCQD9M03cM7/T7Ck4XvduBSvN5Zqs=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=Skz4mG9W2ufsR4h+lf41EHlpZZxIUoBU9shWqZQwFu4=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251118_015227_039278_15951FE6 
X-CRM114-Status: GOOD (  10.26  )
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

Fixes: bbcca4fac873 ("phy: rockchip: naneng-combphy: Add RK3528 support")
Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

Changes in v2:
- add more commit message

 drivers/phy/rockchip/phy-rockchip-naneng-combphy.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
index a3ef198..e303bec 100644
--- a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
+++ b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
@@ -21,6 +21,9 @@
 #define REF_CLOCK_100MHz		(100 * HZ_PER_MHZ)
 
 /* RK3528 COMBO PHY REG */
+#define RK3528_PHYREG5				0x14
+#define RK3528_PHYREG5_GATE_TX_PCK_SEL		BIT(3)
+#define RK3528_PHYREG5_GATE_TX_PCK_DLY_PLL_OFF	BIT(3)
 #define RK3528_PHYREG6				0x18
 #define RK3528_PHYREG6_PLL_KVCO			GENMASK(12, 10)
 #define RK3528_PHYREG6_PLL_KVCO_VALUE		0x2
@@ -504,6 +507,10 @@ static int rk3528_combphy_cfg(struct rockchip_combphy_priv *priv)
 	case REF_CLOCK_100MHz:
 		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_clk_100m, true);
 		if (priv->type == PHY_TYPE_PCIE) {
+			/* Gate_tx_pck_sel length select for L1ss support */
+			rockchip_combphy_updatel(priv, RK3528_PHYREG5_GATE_TX_PCK_SEL,
+						 RK3528_PHYREG5_GATE_TX_PCK_DLY_PLL_OFF, RK3528_PHYREG5);
+
 			/* PLL KVCO tuning fine */
 			val = FIELD_PREP(RK3528_PHYREG6_PLL_KVCO, RK3528_PHYREG6_PLL_KVCO_VALUE);
 			rockchip_combphy_updatel(priv, RK3528_PHYREG6_PLL_KVCO, val,
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

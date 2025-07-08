Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B5A3C83F09
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Jul 2025 20:22:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XR9xKi0oeuddQmozxpRuvPES0ShTmafUmSa0P8NHQgA=; b=KksACqntucYXUo
	yZk29zvj2dgNdv38Lzx6sGxHtLM6B31GxjHfuZIo7UcHJEkrRMSUD/Fvn3mF98t+NG2wGzV3/YMml
	yMNnPwmrXRHlGeJwU5wrZ27pX290RQN0+RfpKSWKeFLIRp/iU3tIq3iM20m/cEwyDb3gC0gL+g+Mf
	D7uQO3eJtkIS8h4O1nWmvsFzSrmG6G2y6wcYcLIhhtpW+xcxSkkxD22aOO88OiR02qlvAy4zD/HB3
	R7ZJXpePXVS43h/6X2x7fU5ErRt/13U540JwX+3YkTldSRFns8/UppZm2yd+rSa4qYq/DUsesrasW
	7jo27pldAhTVb5+JL2FA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZEq1-00000006V1F-2Iiz;
	Tue, 08 Jul 2025 20:22:49 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZE83-00000006MAk-1sMM;
	Tue, 08 Jul 2025 19:37:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1752003442;
	bh=dJsdpVDwKpP9Hd17c88LQbdxOSfGUrVmJOHMrCIAkZY=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=IxT/asNgwMZmtpy5abjnVW/thgp5uGZfhkEVcHqQVuQeKnaKgWUSAjm9ulBkmqXB4
	 6KWuO1DNrMHkMEdtdVPdqvIajCFBusoWHYDVFY40iGvczLiYD8JeJqIyc8VCTHt6Jj
	 YBewZ7UhYroX/r4BB/KHoDnZZ3BfhChb69hQDdW936475qDKSnWhA5FgjKwKFQ+1Ru
	 FvhP0xR0jR2wS3H/ZJXXCjHmx3gvk+NdUwMJWGVvZY9+txG3pgipHGInvVz3MNl6L7
	 /UyX8CyNdLKAFkiMy0aohg/vFzdzwRCwkpxJ1mjntvjG9eAojyzbZcvPsZpKZDAHxV
	 VlbvDFG3K9Drg==
Received: from localhost (unknown [212.93.144.165])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with UTF8SMTPSA id CD73117E088B;
	Tue,  8 Jul 2025 21:37:21 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Tue, 08 Jul 2025 22:35:46 +0300
Subject: [PATCH 05/12] phy: rockchip: samsung-hdptx: Fix coding style
 alignment
MIME-Version: 1.0
Message-Id: <20250708-phy-hdptx-frl-v1-5-cfe096e224f4@collabora.com>
References: <20250708-phy-hdptx-frl-v1-0-cfe096e224f4@collabora.com>
In-Reply-To: <20250708-phy-hdptx-frl-v1-0-cfe096e224f4@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250708_123723_631477_5EB7FCCB 
X-CRM114-Status: UNSURE (   7.85  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Handle a bunch of reported checkpatch.pl complaints:

  CHECK: Alignment should match open parenthesis

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
index 6f12ac54abc1e1f0d67226899bb2c394e71a99cf..9d21a26bce460b7b4da0db9692f78a9fd1068abf 100644
--- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
+++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
@@ -1656,11 +1656,11 @@ static void rk_hdptx_phy_set_voltage(struct rk_hdptx_phy *hdptx,
 		regmap_update_bits(hdptx->regmap, LANE_REG(030a) + offset,
 				   LN_TX_JEQ_EVEN_CTRL_RBR_MASK,
 				   FIELD_PREP(LN_TX_JEQ_EVEN_CTRL_RBR_MASK,
-				   ctrl->tx_jeq_even_ctrl));
+					      ctrl->tx_jeq_even_ctrl));
 		regmap_update_bits(hdptx->regmap, LANE_REG(030c) + offset,
 				   LN_TX_JEQ_ODD_CTRL_RBR_MASK,
 				   FIELD_PREP(LN_TX_JEQ_ODD_CTRL_RBR_MASK,
-				   ctrl->tx_jeq_odd_ctrl));
+					      ctrl->tx_jeq_odd_ctrl));
 		regmap_update_bits(hdptx->regmap, LANE_REG(0311) + offset,
 				   LN_TX_SER_40BIT_EN_RBR_MASK,
 				   FIELD_PREP(LN_TX_SER_40BIT_EN_RBR_MASK, 0x1));
@@ -1670,11 +1670,11 @@ static void rk_hdptx_phy_set_voltage(struct rk_hdptx_phy *hdptx,
 		regmap_update_bits(hdptx->regmap, LANE_REG(030b) + offset,
 				   LN_TX_JEQ_EVEN_CTRL_HBR_MASK,
 				   FIELD_PREP(LN_TX_JEQ_EVEN_CTRL_HBR_MASK,
-				   ctrl->tx_jeq_even_ctrl));
+					      ctrl->tx_jeq_even_ctrl));
 		regmap_update_bits(hdptx->regmap, LANE_REG(030d) + offset,
 				   LN_TX_JEQ_ODD_CTRL_HBR_MASK,
 				   FIELD_PREP(LN_TX_JEQ_ODD_CTRL_HBR_MASK,
-				   ctrl->tx_jeq_odd_ctrl));
+					      ctrl->tx_jeq_odd_ctrl));
 		regmap_update_bits(hdptx->regmap, LANE_REG(0311) + offset,
 				   LN_TX_SER_40BIT_EN_HBR_MASK,
 				   FIELD_PREP(LN_TX_SER_40BIT_EN_HBR_MASK, 0x1));
@@ -1685,11 +1685,11 @@ static void rk_hdptx_phy_set_voltage(struct rk_hdptx_phy *hdptx,
 		regmap_update_bits(hdptx->regmap, LANE_REG(030b) + offset,
 				   LN_TX_JEQ_EVEN_CTRL_HBR2_MASK,
 				   FIELD_PREP(LN_TX_JEQ_EVEN_CTRL_HBR2_MASK,
-				   ctrl->tx_jeq_even_ctrl));
+					      ctrl->tx_jeq_even_ctrl));
 		regmap_update_bits(hdptx->regmap, LANE_REG(030d) + offset,
 				   LN_TX_JEQ_ODD_CTRL_HBR2_MASK,
 				   FIELD_PREP(LN_TX_JEQ_ODD_CTRL_HBR2_MASK,
-				   ctrl->tx_jeq_odd_ctrl));
+					      ctrl->tx_jeq_odd_ctrl));
 		regmap_update_bits(hdptx->regmap, LANE_REG(0311) + offset,
 				   LN_TX_SER_40BIT_EN_HBR2_MASK,
 				   FIELD_PREP(LN_TX_SER_40BIT_EN_HBR2_MASK, 0x1));

-- 
2.50.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

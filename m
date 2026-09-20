Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E20C5C982DA
	for <linux-rockchip@archiver.kernel.org>; Sun, 20 Sep 2026 17:02:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rHUdqZdlSp35z78vLpXlPzpOw6QIuCYq4h8Ho+Mh3OM=; b=v6NulEwyfB4qCR
	29axT6Ar3QMjQzbFiyH1ZNrNeZpBlFEmAhx0qT2dIEK6IoXCo639gk4P57wGcWrcOle5O9p8wZ5CC
	gA+Gom4C8uC8mxdwqBxNdWof7mggiCz6pc1CaK+fnhIG7OTxoYDtTM1u3oH31PBdTNoVsAOtOnvpF
	8ppFrTZKHaniwSuKTZ8+ZMizZ78OjSe98HK3AtWec2vq2vVU/vq25f2FNUBLVFnzyJLNHAStjXzLV
	YZTHHEVy7z/Et5nWHWfbfqFroLCvLmCppLIeKIcAvZpwG3qXSJa433n+rAjA/m2U00QFuyrcCIXEB
	MqiVduyNEwa8g2fx0JaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8Kw3-000000008uS-1WgM;
	Sun, 20 Sep 2026 17:02:39 +0000
Received: from mail-pz2-x04.google.com ([2607:f8b0:4864:3b::4])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8Kvz-000000008r8-1N9Y
	for linux-rockchip@lists.infradead.org;
	Sun, 20 Sep 2026 17:02:37 +0000
Received: by mail-pz2-x04.google.com with SMTP id 41be03b00d2f7-cc4c181b42bso1622621a12.1
        for <linux-rockchip@lists.infradead.org>; Sun, 20 Sep 2026 10:02:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789923754; x=1790528554; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=8Rz7MTGiT2Oa/TzTvQEqnIct/KOrKk64RBkMgo9sxQM=;
        b=RxRIdo5m9S093dxAufDf6JZ6EIrz/mg3aJjJCykO3lT7hWYhYpSVJxyD8Qr+8LDTiX
         RP+rwzbP1CNDiVJSZlAzqEVM6o0W8zPdcLRmPRmW1qcSlNBuRhVjaZ0JTtrQ/tKkCCPj
         NepYcUcmL52TLSjKQaQ+StZoUHSkcw8IOd8G58n8b84R096XwY10aW8pXEH228PguHgq
         UldBkYhg/vzYuLXRbvMN99Y+goiU2TVShrIp87Yd4dE3jYOOWwihutmqaSwZ1U0lOb6h
         GNDdHBmX8v/M/G6Eee+1hCrT64ER0eUAii5wxhOMptpKifWYoYLglEa81R+0HLlK19hQ
         RofA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789923754; x=1790528554;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=8Rz7MTGiT2Oa/TzTvQEqnIct/KOrKk64RBkMgo9sxQM=;
        b=cEbI0TNHeQ+s+MuIGrjuyQseyYDYguuj7/vXiiuI5ksChgoN7UDevRw1Wya8jT1iJe
         4Q7CQlTm8L2ttvZWoVAdOp1LbNnvlffW8uY6OqXN2IHsRiq4ZjmYKBptbMrpj9MqORtT
         4Wwd5zaLwLhasYxOPE8grTjeUt+OptQIFtLXy2YxBOsQVKf0cugS/RvOlvva9LT9aaGT
         23L9i5P44QDPLHxtfG7WmAWaWbTUJvET2GAQSVVqSaVUMBlMuqKbT3KT3RdbKJal0Yy4
         5ZNw9YvA7fiaSPLPLF+mHu7dmIbekmUHVA/NPuAzVpZpppWpI/mXy+Mjw9aV7FOCpEZJ
         QN1A==
X-Forwarded-Encrypted: i=1; AKwUvByuo8UhT3REn8JaQp7zcvD3DTT3hIK6tZxnTyqtVC30W0qEutZ9lh5JF+eA+D5ippsqS5mJMqd7+6aBRCQyeg==@lists.infradead.org
X-Gm-Message-State: AFuF++kTHL/ylqpiDGZVeMlSdPl3eJ9quSZn0T7oHnwxdoNlokwls263
	WGQR1QLo9kvyx7Z+ArZ6GVEbnXyoVzgLbsIRcN/GY9yH54FfvKCG1Tsp
X-Gm-Gg: AYBFou2NCMNQ3LTf4Kg4/EMZmhskZAb2SLf9S4awpqfkLbaGcUH7H+rQNNwKDcnr+xu
	LhBncecFzbhe9uVqZVplkvtZUt8vbleWuZVlwICUo7WSVZKb5RQ6JB1hqjJL9Db26BzniiR2WHW
	ED5gnWDcfZFIByD2TDCT29KSjF/VbLWZ116wcQGrnPX5koE7woQWb0MCPbicTusKKQeEPqAWixN
	ScHWu//qw0C0CsID0XJufqOsSqIDdSo3hhhv1yj2jYPi/2pZjEydGIzvBPfq9aq5QNnkXkxwIO/
	bSqbsNRMGWH32tyswrxzFco0AUn/az5SGNRWIFnAkXVWa5Jfoj/ur8Ad0ERt/isC+C4wASuYD+3
	fdmJWhetC9ekM/nDJ9YrK4P9djr0o5JSVy5gXCgfCxHkuegHYEyj8xynH7eIcAsiaPGAYDY+mt/
	PyC7GNGcHsz98HIrBp5bhbdtflZJ1tymNnIxFJjLY51YsA0EpNJTGFqgymhv9KP6JbJzINbjiPX
	8pT12wY
X-Received: by 2002:a05:6a00:bd88:b0:870:8e80:3ac0 with SMTP id d2e1a72fcca58-874dc7ee0b6mr12066553b3a.11.1789923754245;
        Sun, 20 Sep 2026 10:02:34 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-877a9d07425sm2140646b3a.42.2026.09.20.10.02.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Sep 2026 10:02:32 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Vinod Koul <vkoul@kernel.org>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Romain Gantois <romain.gantois@bootlin.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Coia Prant <coiaprant@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Russell King <linux@armlinux.org.uk>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	David Heidelberg <david@ixit.cz>,
	netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-renesas-soc@vger.kernel.org
Subject: [PATCH net-next v9 03/11] phy: rockchip: naneng-combphy: add SGMII MAC selection for RK3568
Date: Mon, 21 Sep 2026 01:01:07 +0800
Message-ID: <20260920170116.3624104-4-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260920170116.3624104-1-coiaprant@gmail.com>
References: <20260920170116.3624104-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260920_100235_378003_B790CFFF 
X-CRM114-Status: GOOD (  15.71  )
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

On RK3568, the SGMII interface can be routed to either GMAC0 or
GMAC1 via the GRF register pipe_sgmii_mac_sel.

Add support for this selection by introducing
the "rockchip,sgmii-mac-sel" DT property.

From the RK3568 TRM (Part1, Page 229), the PIPE_GRF_XPCS_CON0
bit 1 (pipe_sgmii_mac_sel) is defined as:

    0: SGMII routed to GMAC0
    1: SGMII routed to GMAC1

The hardware reset value is 1 (GMAC1). If the property is set to 0,
the driver routes SGMII to GMAC0; if set to 1 (or omitted), it
remains at GMAC1.

This is necessary for boards such as the Ariaboard Photonicat, which
uses the SGMII interface connected to GMAC0.

Out-of-range values are rejected by dtschema, so the driver does not
duplicate the range check.

Link: https://dl.radxa.com/rock3/docs/hw/datasheet/Rockchip%20RK3568%20TRM%20Part1%20V1.1-20210301.pdf (Page 229)
Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 drivers/phy/rockchip/phy-rockchip-naneng-combphy.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
index 7843356a4dd47..7b867e7520064 100644
--- a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
+++ b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
@@ -186,6 +186,7 @@ struct rockchip_combphy_grfcfg {
 	struct combphy_reg pipe_xpcs_phy_ready;
 	struct combphy_reg pipe_pcie1l0_sel;
 	struct combphy_reg pipe_pcie1l1_sel;
+	struct combphy_reg pipe_sgmii_mac_sel;
 	struct combphy_reg u3otg0_port_en;
 	struct combphy_reg u3otg1_port_en;
 };
@@ -212,6 +213,7 @@ struct rockchip_combphy_priv {
 	bool enable_ssc;
 	bool ext_refclk;
 	struct clk *refclk;
+	u32 sgmii_mac_sel;
 };
 
 static void rockchip_combphy_updatel(struct rockchip_combphy_priv *priv,
@@ -375,6 +377,9 @@ static int rockchip_combphy_parse_dt(struct device *dev, struct rockchip_combphy
 
 	priv->ext_refclk = device_property_present(dev, "rockchip,ext-refclk");
 
+	priv->sgmii_mac_sel = 1;
+	device_property_read_u32(dev, "rockchip,sgmii-mac-sel", &priv->sgmii_mac_sel);
+
 	priv->phy_rst = devm_reset_control_get_exclusive(dev, "phy");
 	/* fallback to old behaviour */
 	if (PTR_ERR(priv->phy_rst) == -ENOENT)
@@ -873,6 +878,8 @@ static int rk3568_combphy_cfg(struct rockchip_combphy_priv *priv)
 		break;
 
 	case PHY_TYPE_SGMII:
+		rockchip_combphy_param_write(priv->pipe_grf, &cfg->pipe_sgmii_mac_sel,
+					     priv->sgmii_mac_sel > 0);
 		rockchip_combphy_param_write(priv->pipe_grf, &cfg->pipe_xpcs_phy_ready, true);
 		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_phymode_sel, true);
 		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_sel_qsgmii, true);
@@ -984,6 +991,7 @@ static const struct rockchip_combphy_grfcfg rk3568_combphy_grfcfgs = {
 	.con3_for_sata		= { 0x000c, 15, 0, 0x00, 0x4407 },
 	/* pipe-grf */
 	.pipe_con0_for_sata	= { 0x0000, 15, 0, 0x00, 0x2220 },
+	.pipe_sgmii_mac_sel	= { 0x0040, 1, 1, 0x00, 0x01 },
 	.pipe_xpcs_phy_ready	= { 0x0040, 2, 2, 0x00, 0x01 },
 	.u3otg0_port_en		= { 0x0104, 15, 0, 0x0181, 0x1100 },
 	.u3otg1_port_en		= { 0x0144, 15, 0, 0x0181, 0x1100 },
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

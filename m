Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A552CA5FFC
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Oct 2026 23:00:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rHUdqZdlSp35z78vLpXlPzpOw6QIuCYq4h8Ho+Mh3OM=; b=lAzob01hxNxolK
	6WF/1EhKsT/n9nB/z8o0lNlhMUJXQj0Z+XdbPnafR9vacEnO7I4QC6cvxxvtjOyKsxtEcmmZZVpIp
	hmqrP98FHJaJiJaVaIoYHJyke6aoA3yNO9J4Zxa1T7B5D2gpuprkKm4bnwBwgGxDvg9RwE58SmNJg
	od+w1ujJD4uobCoA3yE62JY9jGUH8FuBaBjxZNSmUAg7Yal1Vuxp2JM/89HjQgFVWSzyIHdt47kd0
	pJ9NGghvsIiqqoPNrGp0WxNj57Lww1se9T7QV5tVVbstFxpblLCRG4iDhRPeTG6sSlXwXOKnN3Gg+
	pDN++Oor5qH7ZrLHJ2Xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDrfF-0000000HJAq-480G;
	Mon, 05 Oct 2026 23:00:09 +0000
Received: from mail-pj2-x01.google.com ([2607:f8b0:4864:39::1])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDrfD-0000000HJ8X-1kCc
	for linux-rockchip@lists.infradead.org;
	Mon, 05 Oct 2026 23:00:08 +0000
Received: by mail-pj2-x01.google.com with SMTP id 98e67ed59e1d1-3a51696a650so1333300a91.1
        for <linux-rockchip@lists.infradead.org>; Mon, 05 Oct 2026 16:00:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791241206; x=1791846006; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=8Rz7MTGiT2Oa/TzTvQEqnIct/KOrKk64RBkMgo9sxQM=;
        b=hzg5MNJSt3fWd0joSBWt4quGEKwa55AqNvFCuxaDP6L6k9t4xwKnmN3fgC8pqcLTP3
         dQJ6iJgM6OotqF9alzcLdZsYB1a13uyG1bbT3DM9wCfmZ6r7Slwe8vePEU1IEw+cobeK
         xFaJ1P24rBsQzHnj+6upImMw+F60kSsjxcthM5B2SEHI1RC0DRlkvKDPlJCW1Nblk+w5
         80m1/sIrJRoxMGtFoMYDkEBlDdJoz57gWRLxvSTGqEzq/SoWhkHhlGWOSmsFRDqCPJ6s
         ChVpWdUmBp8fxMgemAO5hqAScj05cWcW9tXmb2JIW1n85nshRBRKfjMBB3MuWRtzq9lZ
         eJDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791241206; x=1791846006;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=8Rz7MTGiT2Oa/TzTvQEqnIct/KOrKk64RBkMgo9sxQM=;
        b=yaZiccNFHrpEdhwN4Z7hUnm5Ud37wc5UAFffeRZ5Af2KD0v6qzF73/TutGqvTIbE/5
         Ci7teJEwRewkWC6RMxXXKAGFnURLE03OWjL5s21SZbVT0FUr18BzKHIWcZF8YVTVitkT
         HoBZujF6cHX6+s7LNIVOu3Y6/duTR5P/ShwrGQdpXTQh7vRjKlMg5sx0A2Q7AKZBdUnP
         e7Nan0FPKfPZ49EnTQFrfPsqhJs2EECSWGArBlTqgzaIEfZj5yDtqelbeuRa74ufolwa
         8EpZXHRWaeWP2EorDoS+6F4ryuRJLPtSzh0RhC3TZSnSVdTxFrBUQV2aTaoYXjHt9zPG
         SS7A==
X-Forwarded-Encrypted: i=1; AKwUvBwSyZfa15T/SJBYnJaaeURUiDauzRgZsDOaPXTjNK3Yr+Xu4yO6V3w1CbcfZJDHMfhCT29vkUWxbpxpgb9JPQ==@lists.infradead.org
X-Gm-Message-State: AFuF++mbbEzZqCY5xuE3swzbn4+ov8dDVxScw91YW4qpkqgRTmN0phAc
	8dKtt49eF4vVn2mkqgxk+Hx9oRI/EvMyY65Wlg7thgPAl/ekmXTfaFht
X-Gm-Gg: AYBFou1tJIPvyDWKGI2U86GSzxgg4cz5IWU2eW/L/axaRlbZ0/hTzR/jH8se+pRxtc1
	621WvreaBO3UjtVgvlxnsvIfbutmtFarFBq3uYSKgFFmli2jY4BJ7Bx+eMxUcytJ0NiX1X6RFYC
	LLjE1Pl6UrfB8g4WK2HbcqQUaaFo6sySQZxdUGd3Bxs/jhvbzoYZVuYaYFjYy5oodG+TM2J5f1x
	NMOduJHWIdf7QieUEarMQIP/pqZrzvyy5lodE198ZgI+rjK8MLo7ZExE8Bd9ODrs4wBv/h73uXX
	VwQVgFqaGu266/JOAdUss8wn87OlZrQNbCfnZKTmPphYkuSSP/Jd0vH+StF3T75gILh9cqTCa74
	J4N9dvMrcHApbQ6iQ8uMeMDAcU6a4OSpv/WMzfq+LKwFLL+2rZTQYwOts+lgOOn0Fz+2gY1IzST
	x7G9U1h6iNdfFcC0FVivHXbKwNlyfFhg0gEyspy//0ZPZazjYIdYnvPSilQLcecJFaxY9l
X-Received: by 2002:a05:6a00:1ca8:b0:87c:e1a0:139e with SMTP id d2e1a72fcca58-88af73eaf5amr9796306b3a.20.1791241206300;
        Mon, 05 Oct 2026 16:00:06 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-88b0b8f5b79sm4183327b3a.15.2026.10.05.16.00.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Oct 2026 16:00:05 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [PATCH v11 2/2] phy: rockchip: naneng-combphy: add SGMII MAC selection for RK3568
Date: Tue,  6 Oct 2026 06:59:44 +0800
Message-ID: <20261005225944.1171574-3-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261005225944.1171574-1-coiaprant@gmail.com>
References: <20261005225944.1171574-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261005_160007_460846_F484BA1C 
X-CRM114-Status: GOOD (  15.09  )
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

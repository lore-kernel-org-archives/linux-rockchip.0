Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD31ECA5FF5
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Oct 2026 22:13:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rHUdqZdlSp35z78vLpXlPzpOw6QIuCYq4h8Ho+Mh3OM=; b=OjIuJuUXrr1+PJ
	ZT3FCfgphUaODsIUha/z5k54DXjWTmcJaDnE8UPmqN/shhMGxVTosgjZ5A35xKcAK7fV9ZnN4QsEG
	13nFr9cjU5mvyytG4h3bTB+YhWSrTTAACRFDP/n5uY+bu2SVlDG2MdC3DYCWK4XEBq3cqdCyt9+50
	MJ5lbdFpeYzrzzT8sc2SimE4pUS7JHC87yskNc4tvaEy+R5GjSMiKdLJ1zdK+sXenU5tUFYtHPEIt
	j2FXw0GDWQAmWWIPxpYaUt27WZNonDj226uzt60F6ZVs2V/Ww8Atn7o/GfaQvmClFgryHO1iaMqAB
	6Vy44xUhHKn+A41PvBkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDqvk-0000000HEqi-1z9J;
	Mon, 05 Oct 2026 22:13:08 +0000
Received: from mail-pj2-x01.google.com ([2607:f8b0:4864:39::1])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDqvh-0000000HEo7-0uOd
	for linux-rockchip@lists.infradead.org;
	Mon, 05 Oct 2026 22:13:07 +0000
Received: by mail-pj2-x01.google.com with SMTP id 98e67ed59e1d1-3a51696a650so1320870a91.1
        for <linux-rockchip@lists.infradead.org>; Mon, 05 Oct 2026 15:13:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791238384; x=1791843184; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=8Rz7MTGiT2Oa/TzTvQEqnIct/KOrKk64RBkMgo9sxQM=;
        b=W7+ZIBCc8Dcw5kTrlrei5v50K3ESzZiX4ei0H6AF6O9wErOJ9Xo71sIhmLtba+i6V2
         3sDHEsNGkyxrjGUUXvvpeFmW1gfiXHDcRMLyIV6pgdc9ldL2KBX48Y5QiJyBj62KlraO
         LCzQ9ozsaJcK2SnZuXdtE9rgbrInTmASlvJfe0LR8tH0MoG3FQN4GMS6VnVjWMn8v5lg
         evHGbU4BSGC2kiUBGO9xzU7Nf6b9qC+wASA6chU7MrZT3AXRR7P5zaiWy8AFEF9HCU4r
         DnaiSD6l9k2NgkU9FPZM6/vZdcgOwaQtQCD+hJTSXMKQzAQ3e6rq3Yx7jWA61Z+6+AXD
         FA5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791238384; x=1791843184;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=8Rz7MTGiT2Oa/TzTvQEqnIct/KOrKk64RBkMgo9sxQM=;
        b=YZWuG73EFoV0CjNOTG0zl2N7z/u5MtvV3ReAdaBkMzYyMbinMapzFfGIZembbGgP/P
         Nn/tlhOQ9V2skXYoC5BBRSnPYuKf3JSywzu1HxiskxY/9aGaoAMBzIv4bqVVVDNXPVP5
         7HurCHjLM4Baa2pxgCs0+j/Ql7TuXWCmOb7G6D9U4B+pZJM+8Oj127HxaL+TJ+VlB8gr
         J4C5eyxV8JHYxzx9++YsBOoHafAJht2hKGiRjf7Jskzm3FTknqRDU/1RBlZeZGuDdq9A
         dGZo4IEjzUiaf8XewH8qgyaRev/T5Asip8BHpSOLYZ5k5fgCf3+FC3pMNFsCkUXsZCuC
         PtcQ==
X-Forwarded-Encrypted: i=1; AKwUvBx527gpAGoM9C4Av+aKsXEntk3ZWWPWSpEgzU9zfVHaPQqhEwBBxoT5LVCQ2m8dwmGliar9BA0tIiew+a47Fg==@lists.infradead.org
X-Gm-Message-State: AFq9FYKVeS1JGbgH5IxxwMCLg4vHeutyO81E05du1R/tWNrNgpyeHz2B
	rPnctB0+0jbQv2f8MQVKidBKLVMwinGS5Q3ek8JzjQFKMV03yEyM1I+L
X-Gm-Gg: AYBFou2+65ogBdeGb5jwYlsEcQB2NdNLVnCf7/dAAtRoQLEJVkcEOBdBNQGXtNGH06l
	NkIVDiDwNskx6mHxi22xW6KsOXsWU1Mtt8qs9OZnSXj5Q3IwgkhRWMMtRKvqG9BBPZB4ImrKQLF
	mWR9qJlQgOLGMNQIxeHmE8w3kNQaQfrVs4cnJlVwAb2StNlRQ/no1U/nXlxHknzu7pW6i9l/6A8
	z4VECWB0ttRRj5Z33VYTC0Bm8SB78Hh4vAbjjV3TalPHZ7PkRLqIN2XkjP1AWDJBuCs83FhJnpV
	PBNubLk5nhnVPnGo0EGe5v+2n10nggMD+1qQ3htf9nKzDWHrHo9qok+NEGh8bHGmhjP0wn5yBrE
	lFjphfme8jv3Xg+gsWljouDBmfZsiKEcdK2354jv5Aik9P5Jnvcwgb7mXJX1Qcys08mG1cAUqaj
	5Gvk0GrSHbR1wFogcvO6UeE2q5hHs1JUfG/M8IWwg7MmrErzYArTdm5RdmW6kHWSKExxFS
X-Received: by 2002:a17:90b:4ac3:b0:3a0:a781:2c39 with SMTP id 98e67ed59e1d1-3a6ce3a978dmr10937659a91.7.1791238384372;
        Mon, 05 Oct 2026 15:13:04 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3a8533aba95sm1719425a91.2.2026.10.05.15.12.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Oct 2026 15:13:03 -0700 (PDT)
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
Subject: [PATCH v10 2/2] phy: rockchip: naneng-combphy: add SGMII MAC selection for RK3568
Date: Tue,  6 Oct 2026 06:12:29 +0800
Message-ID: <20261005221229.1095843-3-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261005221229.1095843-1-coiaprant@gmail.com>
References: <20261005221229.1095843-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261005_151305_270030_4ADA5B54 
X-CRM114-Status: GOOD (  15.18  )
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

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31642C55173
	for <linux-rockchip@archiver.kernel.org>; Sat,  1 Aug 2026 14:23:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oOgu+Fv+9Eq4LIrcesdbXdjCExCHgbfKx2fR4nqNHLM=; b=Gi3v++aEHla6zb
	TnEIHKt3VWEB7Nu4OuhcaPf+v6gegQ3KEg4kGw7ZPpWm3E37tvKuqmJgoEtSkDfytIz9WfVs5Qmg1
	EF2w2b55uMdJvOX83xqqioiFsVa+CW3OVnEgG5y/a7PbSOCB2sUtr/08GvN+/by/dfJIj6jHGAsva
	9jq78yMrwDlUzV5DJiKQ+RN6ZkZBjT7+c/kLSr+3eeQ2QRgxWYfhwGp9STEdM1HBcbVHHC2JTLPkH
	HD9apVvQcJeW9jN2YU46aUgy0jgmdfSi61k2wifwsUbKn9s/U/iLhAJfIjUS3OmV1YqYjQJ+KrFxJ
	Gz00m96rxgwrUgrvbiCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqAcl-0000000EiYQ-0R2M;
	Sat, 01 Aug 2026 14:23:39 +0000
Received: from mail-pj2-x0a.google.com ([2607:f8b0:4864:39::a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqAcg-0000000EiTE-36La
	for linux-rockchip@lists.infradead.org;
	Sat, 01 Aug 2026 14:23:37 +0000
Received: by mail-pj2-x0a.google.com with SMTP id d9443c01a7336-2cf5e516e67so9706555ad.1
        for <linux-rockchip@lists.infradead.org>; Sat, 01 Aug 2026 07:23:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785594214; x=1786199014; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=fTbZp/ChtgSMbHsJmXXDBUtpO1bOy1YQWdOODbeZxQU=;
        b=NrIlRyCP7NaPLT9Xn85C3CV668z230oikdO+8zkKY9BkF20urrz2AxPg2xfsxI8P1v
         QLxH+PZng0dq5nQfDEBOhZjqhPLFbDaB7MTh+McAccw3tNM6Jst6641Ikha2hoTiMRhM
         AeIBSQpSu/fdY1u3tlZuxxVD0GYhV2JxqRCZ4YBZN7ci8kTAWTof9SSKSl2ScdxofL8+
         vmznuoGrpvEfyrQuuiCd+2nrAWrx0OY/KGAcJyJ54EnEb2+vydlYay/SzVE6I4p5eWmP
         FNTH6XgvUjq8i4aTc3ZgzPtW8SxOYYW3UpDFloVt03/vbbzziAQNDEKtdZRaWGtDYhW0
         6sYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785594214; x=1786199014;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=fTbZp/ChtgSMbHsJmXXDBUtpO1bOy1YQWdOODbeZxQU=;
        b=DjiOltsBiJXkR0tPy/sxFVJ20fHYIIoAJwOqf0YtRXUQYIl18ha16jMl6k+ZORbX9G
         NQrFIwIqJv+Nj5B1XK8YF1mvCKcKSqZ28IwNWN//hvplBDmuCC2GCxSCkNiq0NUs8NIm
         fkUGXDlI7eJBQ2BmZ0CF+mU5VqXK4I/mXg0tAiUvbST6hXrnPaqrijvz9J0trrI0GFgG
         WGZQT6gpzECLX+O3TF3Vupur6I4JwWshMfKa0R6KFJQvi6V1Lp5ARJEgV3hA0zEZQrDs
         LhEn7S38G3VJPhMgc0hShs48DjxhwzSZDOo13IoqfeGrHt0bG+iKbVasQxdAG7jn5TM6
         ffBA==
X-Forwarded-Encrypted: i=1; AHgh+Rr3Qqa3QsHcAZUjmNbLQsXnfnaDFeh8GVK++ffN/IZkIUARRKkMuaxZqoPgLw3GM4DS3G/CNbdPOgXRy1MlyA==@lists.infradead.org
X-Gm-Message-State: AOJu0Ywl7Z6JXb2DNeCHVo7/U9YnJFenJEpD1G0wVSLJPL8igdvHiqa0
	u2F8GzJ0LmKrWWONXTJ7I3Igi2iughJCtLHybcBpUh3QykwpDcfYnNto
X-Gm-Gg: AR+sD13FOUyKj0WO9CFOdWSAnjpMpjdtq50FWQRJPiJVzexC/+w9XAbRkZPMVBvDDun
	e9rQum1hrfB906Jwf7rUXOtEpzyZkoesT1I/LWwUMJ3gdDnahB0Xk4fXfMarhFq18ex18KnyhLq
	nCnqTzt/XNnlBvPt8t61Kee3OS5EJ8mAyqRFrupWmEVIHQtHyUPrYkn97oOqcfSw3ZrMKd7HhkO
	tpo6FWwCVpnYAl3WoHQ7jEt7bsNk6QWz+T+D+RZALG4zyAXRceYeXO0qtIRPWEhb2+H2ThMhPX5
	eH4b6y8x41R0CQipJLE3znwBM6kFkKuLje9OhoZukc4rzQlEmWqYj7X/hIquRha49PcrsHy/LGy
	u1jIYmG4qqWu3vdA/vvLhaafNbR9E0HXGjyGjf1oFdatgnMBieCNNp/5rdCHxHHGYoMDvY3dRJ/
	Rvz0ioEIASEDdq1ptlIZId30g1nTdF4sPnAEeesfI6nLo0iWiqnCGRoVI=
X-Received: by 2002:a17:902:d4c7:b0:2cc:84e7:73bc with SMTP id d9443c01a7336-2d0524a6a1fmr38459995ad.32.1785594213748;
        Sat, 01 Aug 2026 07:23:33 -0700 (PDT)
Received: from server.lan ([103.213.4.16])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2d04ae5ac3dsm18043845ad.23.2026.08.01.07.23.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Aug 2026 07:23:33 -0700 (PDT)
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
	linux-stm32@st-md-mailman.stormreply.com,
	linux-renesas-soc@vger.kernel.org
Subject: [PATCH v2 03/10] phy: rockchip: naneng-combphy: add SGMII MAC selection for RK3568
Date: Sat,  1 Aug 2026 22:22:27 +0800
Message-ID: <20260801142244.679437-5-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260801142244.679437-2-coiaprant@gmail.com>
References: <20260801142244.679437-2-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260801_072335_132190_8F70A610 
X-CRM114-Status: GOOD (  14.97  )
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

The hardware reset value is GMAC1 (1). If the property is set to 0,
the driver routes SGMII to GMAC0; if set to 1 (or omitted), it
remains at GMAC1.

This is necessary for boards such as the Ariaboard Photonicat, which
uses the SGMII interface connected to GMAC0.

Link: https://dl.radxa.com/rock3/docs/hw/datasheet/Rockchip%20RK3568%20TRM%20Part1%20V1.1-20210301.pdf (Page 229)
Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 drivers/phy/rockchip/phy-rockchip-naneng-combphy.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
index 2b0f152f54709..539acd1459948 100644
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
+					priv->sgmii_mac_sel > 0);
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

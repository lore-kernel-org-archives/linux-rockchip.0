Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 971ACC61DD6
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Sep 2026 15:02:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jn3Ih+qmWL2qJWu64+rAIZpOBbcriKLnZnuA5lOJ7U4=; b=gPlUNt2no7WFTV
	sWSBBgjR6OJ+0porN2Gv7GO3yuZ036mgE25SV33PdBQywrd0Lr1/sePOdNJ9Ugj+QKrHCHDQlBHwH
	8Q+aybijG0a52ZdrYe/6Mukun0YUcGxgO9KvQrSMfmWeGgrbLlDPT95VwjkmjHW4ILhh7XQNURCso
	iDn9d3TkriX/ZsYEfeCSNdYtpOyS1B6EewjITIgICkw4wunD4f4ZfRWRpnHHCd0KoHloqARfnBA/v
	gf2bsT+WThwOyRh+fgkunvq9ODyV7nxSBZdUdjEn+pyx0Vi5Ex1r86+TzlQfMe0MYvJ9KzYxQKFoJ
	RS5G6a2KeaFAOrQqW12g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1Q0O-0000000CPRG-17xo;
	Tue, 01 Sep 2026 15:02:32 +0000
Received: from mail-pz2-x0a.google.com ([2607:f8b0:4864:3b::a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1Q0L-0000000CPOx-30b4
	for linux-rockchip@lists.infradead.org;
	Tue, 01 Sep 2026 15:02:31 +0000
Received: by mail-pz2-x0a.google.com with SMTP id 41be03b00d2f7-cc2085ecd44so334425a12.1
        for <linux-rockchip@lists.infradead.org>; Tue, 01 Sep 2026 08:02:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788274949; x=1788879749; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=F3aEYb5uf8Ywd6IPUhePKv9EQrcFVFS6EHQyfufoEjE=;
        b=TBeXoZinOVkfTpMHF9UZ/RypvCXoCbRjlk+ltIDWDaJWOTrqLzX2362MK9jgprECJv
         2UVHIECD0/f5mLiI3qP3C332OkVe0DBXBzh8rbafKNJeCbngAbPqxPm7HOyzwEsk/PWg
         43OFREM7eCPhmykycM22mGX+EeeTgkt7XRWkP+/rZRerC3mg7ZlWxit0pGgMBT2EMCd9
         M3y5dTi+HZQRAKiXwwNKwi3qq24npSzOPFDp0+qz/J7HNrqMBKWGiUZWJAQsxl9csYsv
         pOHKOFYidPfmuePGLaxYYAU16zlUrlDn5L9zCsIzovkI9dNGVAvuHVvbSHBBSa7Z4kc6
         +kkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788274949; x=1788879749;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=F3aEYb5uf8Ywd6IPUhePKv9EQrcFVFS6EHQyfufoEjE=;
        b=SAsZTMAWozDlrh0BUodL014hBxeTEk5CJectnJ097prHh0K+SktPnrwmO7zSw2Nxui
         zJb2MSO8ujBCKUywrMne7OqSzdINa5HGBlhdPuRQ5o0bzqdOPMQgBmkMcVfR04BWCm2A
         IPhCBqoNQWBj4PNQhYNiAp6K5h2SGAEIf2YIyUYRdJoY7QHZlWoQkqZcYl1L9TnVF5LC
         gWB4HGRxPwOLA7NS5Nh+dQl5jnKYZbsBV5quR5Ddo/1fO6D4XGpP1B4qNPJiFuZ/10AT
         lCbi9/yw/gh1qWGi1Qbr4bKotboBcVTNyTZW2WpVwKeDEtvJPa/Kwj9C1QtmNcQhCiVH
         GPuw==
X-Forwarded-Encrypted: i=1; AHgh+Ror53V1eDX+KWFeibzTSOfu1CwKCYf37Hq7r3Ctj5puvwY15iM3n2eVxPKitm1blBT7xl7lAZQcBcVPEtA80g==@lists.infradead.org
X-Gm-Message-State: AFuF++lppZztyIbyNaJdli770o61NyWi8HBL5UTbsPHqwWqHJb2CHFzr
	0atuXtjBhGUgaac6olyDmUCT5D0hY/lIZR/UUUe//Y2jZLYzSISZz/e9
X-Gm-Gg: AR+sD11/8XKHe+lXcJcIbR/zzqv1iDJlhC8QPkzvhdzgOg7QZlul1LZCMZA6ckEIZwt
	LEHMC6NcC7aolaPNWrSc82PgfGH5OfJf9BIBeFf+ovJ9EUY+N76Qjl+00trpxHfXlJMhXI12s5K
	qwPREEY3wmHqnMRzyd2m6AB2Tu2ZpyMQC3azIEqjMFNJF+/pNCgO4dinsyyrGFtMNB8/BIopyvy
	gP7w3z9aYOA43cbmgQWg2Fzba/ns+PIRdKk0f/cWPEXwBrsSVlJZr04mjVThxJkOPiqc/VDD9m7
	tODHushg/P/6VbVcjUUV4jwtiZJY6mrVqaz8VPAshoxHgYxiVGUcWX+vvfPwDJBvo4EIeqKbLyE
	hMuWl+hK63QadNbpUBLyJGY5odcwEhas2RIjZ3tXlf75dtfYmAyEK+KacAdUVslPPJbRR+DUNvW
	CduWUzE+g1NM88uZA18gewBtafvGOe8OGcu/SA58qJ5DEzdVIiSsEvmEka2i8=
X-Received: by 2002:a05:6a00:b46:b0:848:30c3:45dd with SMTP id d2e1a72fcca58-8562b499a35mr49867000b3a.11.1788274948514;
        Tue, 01 Sep 2026 08:02:28 -0700 (PDT)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-85dc0716846sm27914b3a.45.2026.09.01.08.02.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Sep 2026 08:02:27 -0700 (PDT)
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
Subject: [PATCH net-next v3 03/10] phy: rockchip: naneng-combphy: add SGMII MAC selection for RK3568
Date: Tue,  1 Sep 2026 23:01:03 +0800
Message-ID: <20260901150111.141037-4-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260901150111.141037-1-coiaprant@gmail.com>
References: <20260901150111.141037-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_080229_768628_658E6203 
X-CRM114-Status: GOOD (  15.26  )
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
index 7843356a4dd47..919bb97a4b182 100644
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

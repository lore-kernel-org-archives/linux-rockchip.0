Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3DA9C88E75
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Sep 2026 12:39:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nqo8HDd8cSHk0j2RUz5ZDYAvy04tCcbGXxJCaTTzf5U=; b=EuWBW2k01we6Ar
	s1qjMYl1U85QJXEvg/+v74rcrAFBn4Os/ZbW2WpyIbBUy6G2kRblt78dcCHlYaB0vVgsL9uzKdzAL
	eRjON/VIIXk66qNkxagn4O0BOb6FpERg5Zkp2XUQlrbrgsXHMElpygvI76zQcDXccDWpJc4A0GDzb
	B7BirnPKj29Ahz0S0zHGoTUcrZzsAHF4iE1yj8pSqRUN5r1Fy8MxolmL6u9nos0RvAYo2SGLwOneh
	zMH+6febVqSnhe1m+9pMb0kbdFAGuxUMT60xvn42wsPXwtIXw35kCSivS2LXDPtRKtfiiIqUw9ID+
	55FSliUc4IugZagOBkDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6SRI-00000006XL8-0AbS;
	Tue, 15 Sep 2026 12:39:08 +0000
Received: from mail-pj2-x0b.google.com ([2607:f8b0:4864:39::b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6SR1-00000006Wsa-0Yj9
	for linux-rockchip@lists.infradead.org;
	Tue, 15 Sep 2026 12:38:52 +0000
Received: by mail-pj2-x0b.google.com with SMTP id 98e67ed59e1d1-398a0a87595so4265854a91.1
        for <linux-rockchip@lists.infradead.org>; Tue, 15 Sep 2026 05:38:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789475930; x=1790080730; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=NfuBhi93xftDhshvbIutU6M31n4jH/ZjDQQ4jx2k6og=;
        b=dOStY7P7koO1L2qM8N9dyY5qvR6Usni8ZE1CxiHqRCLQn0KTWBABSyT8eoqlNjM818
         o6tne8uPtMwftZD0fVjZPRsxJWxbAD6WzCnfQlkBDUvCKFk5UIzBQK7cDph+L+FbrsIi
         EsBjpDWxZE1Y7Kz3/wLzzlqnq6Kylp3A1I847s7iF75ZqNy4dk7AHYAYAgQii52ADpoK
         HKY8M5bXBk7mruu4AsZ1qv9ZmPpaHldt4XfiFvnODRc2gRlPrdKu25Q5kkJN67Pwhnoa
         oopvOFIPXreN1q63170bzJPdcBU8JbiDa3EbiMthnNvAgtGcXzDUi5o6Yn/nz1vO+fUO
         b29w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789475930; x=1790080730;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=NfuBhi93xftDhshvbIutU6M31n4jH/ZjDQQ4jx2k6og=;
        b=Dg1Ip7tTYi5U+CUQAu2xIDRitr9OHms7PzGhDeu1Rm1hpBDDtUKCdqwHjua//i8TDK
         uFABLIcj+XYVvzWz4epRbb9H5vDEhboz2P+huZF8Xv43IZ3V1pnVGB1ctduwNe/FdDFq
         3Qw4TLD93+r0CP1i9i5OU+IUC8qt5hst6/gdAbFZ3AHyX+AyBfRz+nykKhLsFN1GqO3f
         2f0jO3g+pVO0b8w4cxIaR5YjTsn/6E7B6FQh702jGc9KwR7j52vEVP910Kl88nBDlwEk
         TAzLmfBR3cWaOm2JBEfYqNIjg6AWVpXoKBt6qSwQk9dzwD1Yoi5gP+xG9kQAjvG4vCJh
         1pDQ==
X-Forwarded-Encrypted: i=1; AKwUvBy/T5tN/bV3OnCPk8aZsEKdGxVUxcEtGuK01ipPjEsa1axZNn7HnY4veyYMtgFdPyAPe8zok4yCDep58mmTPg==@lists.infradead.org
X-Gm-Message-State: AFuF++nARhKm0VujOLvo/o24dsDmi+PWtx0Q38kgs5zNu5RLqwrPZaxa
	dj2z3IKka0w4r0JPaDuJmJvbS5pL1rgStzXz87WHlNuCPieIo6vc4arD
X-Gm-Gg: AYBFou0lSYWJ+NsV/CiILfCVM2+FnzcAqJBm2NB3Rb7Ku1U3zgvtvvCadz+RSJdXgci
	iPGEvDVj9h2Mnp7hUx/qIDUfoQyO6OhIJUwgPI0IzNHu/eKsnYCnCo1wg536NhlZrkWn9H49jI6
	nDluYixbrKcsJIHoHvWFyAdYht/OeesTuyGwQndwdk3XpihCNRS7nS8fFzsQEoAo7ABHjWW/Jlj
	gKMxaSHRJXCe7F7ApFaBnMZwgktIXW408s9nVlzhms/jrx4jn9/ElAP1i4pK6bUIEgN/HxeKvJQ
	l5vG8ZwG5zhMVzMU6Qp70rEcSLSXzaZXROLbBDyyqGR413a28xqfNXa09fS9KffgSl4CnZRDu5q
	VvYSf4b9DkyEWwpwmMPFsbiKKZ06pQFbHCY/dPIKiuop7Mh1Wg9Y92NaU/mqHTeacqSjm4f7nNA
	dq+gyX1PiGoR69f+g0Q00h+YwBHhCpTwsZgqhfNA1n9uG4mzCIYXSDc/WgO8YxcW1wUwSmiA==
X-Received: by 2002:a17:90b:4990:b0:39e:ad:d31b with SMTP id 98e67ed59e1d1-39e10e2d518mr1347485a91.6.1789475930366;
        Tue, 15 Sep 2026 05:38:50 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-39dfdd28acbsm5307259a91.10.2026.09.15.05.38.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2026 05:38:49 -0700 (PDT)
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
Subject: [PATCH net-next v6 03/11] phy: rockchip: naneng-combphy: add SGMII MAC selection for RK3568
Date: Tue, 15 Sep 2026 20:37:52 +0800
Message-ID: <20260915123802.1561724-4-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260915123802.1561724-1-coiaprant@gmail.com>
References: <20260915123802.1561724-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260915_053851_174180_8C868162 
X-CRM114-Status: GOOD (  15.69  )
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

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8895DCFC501
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Oct 2024 01:37:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6xioiROeP8qTzRaUqq4sEDFDplGyhnt58utFwaStPRM=; b=kHckiJ2gLNWbpD
	gVkATUq9LGX6AbwNlFMqusXX+KDQ/KH5IEd1WAtuNu8H0vYRopDeTNH1y7Orw4A0HBgjkKKHwu4kQ
	E4ZJbJua6tLll79j0vnbYxjV4lxn7G30he3H4tbzGv463Smj7Zg6mdDl19i7brZs/IXN6I7cx2DNj
	CkyTL3rVcpxDsdKLV3A4IS9W84K/+IBkTF1nBy6jHNBPgO24kzaWr+WBYRSH2e4MArwJ7Xuewo2xW
	00PoOKdGTFl4j5uR5lS8oH+U9CgvuDVlc63GzDVFrPmkANl35lE9se38cC/vLBQVz3LL/1Sv+U10T
	qcfAMWF73ioclQSRfOeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0WUe-00000006nwu-2FzY;
	Tue, 15 Oct 2024 01:37:00 +0000
Received: from mail-pf1-x42e.google.com ([2607:f8b0:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0WRp-00000006mzK-3Dyf;
	Tue, 15 Oct 2024 01:34:07 +0000
Received: by mail-pf1-x42e.google.com with SMTP id d2e1a72fcca58-71e5417f8d4so79298b3a.3;
        Mon, 14 Oct 2024 18:34:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728956045; x=1729560845; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GH3A6vmgsIOEd/hbrPIWDSgafEN9K6GfNlaS75g6hkg=;
        b=JCm+GzQsIsuL1spQHdwi2+EEePP9rluH71YSotlw9BqAPCw+PqJS+a8wOtE7laELx9
         zjSi1H923h1HAKgs22yPPifp51TWcghe+4ND2+Io4yeGtEQ6OC+HD/LE6fzP2onbPNOt
         49DeDgAnky8LRcTiv0m6/jKSdrvhSFIT+lpGMo2n3OFjFFxOxFL/bRnLOgTJDTqgX0Gk
         3LN7ku4WKT208ZYlD7ga1g13RWiqJqoYHp1qvkj+AF9qTau9e7d9wHXpIU6dyyGKZrf3
         bH1801/MAoWF0pUBcKfSUZvZ3JzVzpK98X0OHmwC9qOztFl2jWBKH8td2wisqqiFMjAO
         trfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728956045; x=1729560845;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GH3A6vmgsIOEd/hbrPIWDSgafEN9K6GfNlaS75g6hkg=;
        b=ssm8ixmdi8K0fwKY+Y+O8HFmMY4fq/6/E6fxgki5/0P4xqMBcrwyYtzVTJroEQwwhC
         zGJCq152qiNqoUq5ujxR2zdAplT13CWgnOGaEjUzceyGlVyj8XXt3c2qDRZ7jAwaPIAi
         FyVU/M0iV3hkYWAz+JipaGs3CmVCP34muwA9Crl3AwmzI55wamlVixoCKCOchGGmRS9K
         oHa4RuTUuo6d+GPr4IJjqeBY7H3M8ZGVdtVocs0RNEKcOZfIsZBl9LosvDQ/NG4YgVrF
         UWJgfJfDkVtoIea9Bb3m6uy3WgwOxpCY1lfgVcNGAMmLwymg0t59YxsjqpiEM+zsWs/G
         7WZA==
X-Forwarded-Encrypted: i=1; AJvYcCWZ6vtEzEzMt7mF9YKJFOptjckjyAWxsoqVrZy4//FGctABsMr9S6Q/mO4pTMcVA+1kQwVSsg36476dd/Mcd8wu@lists.infradead.org, AJvYcCWlLFIq2fE60Xly4xoQektOmq+Ak+FE+An8+L8kvmoaKjtmwaDLAb6Rrb//6vxgvgiyAIXlHVa7JXp5Eg4X458=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz6Z/Sz7xwsEpIyUw0/66OQmLb4nZhXlkN3zlSJnm0UoEUACFmX
	14/qbuGBnKDgJjG+Ok7NHKgpmDf35sg61ysi+bZA6xcRnG7KHrzd
X-Google-Smtp-Source: AGHT+IENbE5VfJLTsH3qhdrga+goKQnThLNGc16l2GIKEVjDEiHa1fFBGByWr8papJ5EnN6tQKh//w==
X-Received: by 2002:a05:6a00:198e:b0:71e:594c:a812 with SMTP id d2e1a72fcca58-71e594caa26mr4591504b3a.0.1728956044402;
        Mon, 14 Oct 2024 18:34:04 -0700 (PDT)
Received: from localhost.localdomain ([103.29.142.67])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71e774a4243sm189713b3a.131.2024.10.14.18.34.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Oct 2024 18:34:04 -0700 (PDT)
From: Frank Wang <frawang.cn@gmail.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	william.wu@rock-chips.com,
	tim.chen@rock-chips.com,
	Kever Yang <kever.yang@rock-chips.com>,
	Frank Wang <frank.wang@rock-chips.com>
Subject: [PATCH 2/2] phy: rockchip-naneng-combo: Support rk3576
Date: Tue, 15 Oct 2024 09:33:51 +0800
Message-Id: <20241015013351.4884-2-frawang.cn@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241015013351.4884-1-frawang.cn@gmail.com>
References: <20241015013351.4884-1-frawang.cn@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_183405_879124_C69A5285 
X-CRM114-Status: GOOD (  15.21  )
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

From: Kever Yang <kever.yang@rock-chips.com>

phy0: pcie, sata
phy1: pcie, sata, usb3

Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
Signed-off-by: William Wu <william.wu@rock-chips.com>
Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
---
 .../rockchip/phy-rockchip-naneng-combphy.c    | 202 ++++++++++++++++++
 1 file changed, 202 insertions(+)

diff --git a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
index 0a9989e41237..4c41317a8041 100644
--- a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
+++ b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
@@ -98,6 +98,7 @@ struct rockchip_combphy_grfcfg {
 	struct combphy_reg pipe_rxterm_set;
 	struct combphy_reg pipe_txelec_set;
 	struct combphy_reg pipe_txcomp_set;
+	struct combphy_reg pipe_clk_24m;
 	struct combphy_reg pipe_clk_25m;
 	struct combphy_reg pipe_clk_100m;
 	struct combphy_reg pipe_phymode_sel;
@@ -584,6 +585,203 @@ static const struct rockchip_combphy_cfg rk3568_combphy_cfgs = {
 	.combphy_cfg	= rk3568_combphy_cfg,
 };
 
+static int rk3576_combphy_cfg(struct rockchip_combphy_priv *priv)
+{
+	const struct rockchip_combphy_grfcfg *cfg = priv->cfg->grfcfg;
+	unsigned long rate;
+
+	switch (priv->type) {
+	case PHY_TYPE_PCIE:
+		/* Set SSC downward spread spectrum */
+		rockchip_combphy_updatel(priv, GENMASK(5, 4), BIT(4), 0x7c);
+
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->con0_for_pcie, true);
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->con1_for_pcie, true);
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->con2_for_pcie, true);
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->con3_for_pcie, true);
+		break;
+	case PHY_TYPE_USB3:
+		/* Set SSC downward spread spectrum */
+		rockchip_combphy_updatel(priv, GENMASK(5, 4), BIT(4), 0x7c);
+
+		/* Enable adaptive CTLE for USB3.0 Rx */
+		rockchip_combphy_updatel(priv, GENMASK(0, 0), BIT(0), 0x38);
+
+		/* Set PLL KVCO fine tuning signals */
+		rockchip_combphy_updatel(priv, GENMASK(4, 2), BIT(3), 0x80);
+
+		/* Set PLL LPF R1 to su_trim[10:7]=1001 */
+		writel(0x4, priv->mmio + (0xb << 2));
+
+		/* Set PLL input clock divider 1/2 */
+		rockchip_combphy_updatel(priv, GENMASK(7, 6), BIT(6), 0x14);
+
+		/* Set PLL loop divider */
+		writel(0x32, priv->mmio + (0x11 << 2));
+
+		/* Set PLL KVCO to min and set PLL charge pump current to max */
+		writel(0xf0, priv->mmio + (0xa << 2));
+
+		/* Set Rx squelch input filler bandwidth */
+		writel(0x0d, priv->mmio + (0x14 << 2));
+
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_txcomp_sel, false);
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_txelec_sel, false);
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->usb_mode_set, true);
+		break;
+	case PHY_TYPE_SATA:
+		/* Enable adaptive CTLE for SATA Rx */
+		rockchip_combphy_updatel(priv, GENMASK(0, 0), BIT(0), 0x38);
+
+		/* Set tx_rterm = 50 ohm and rx_rterm = 43.5 ohm */
+		writel(0x8F, priv->mmio + (0x06 << 2));
+
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->con0_for_sata, true);
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->con1_for_sata, true);
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->con2_for_sata, true);
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->con3_for_sata, true);
+		rockchip_combphy_param_write(priv->pipe_grf, &cfg->pipe_con0_for_sata, true);
+		rockchip_combphy_param_write(priv->pipe_grf, &cfg->pipe_con1_for_sata, true);
+		break;
+	default:
+		dev_err(priv->dev, "incompatible PHY type\n");
+		return -EINVAL;
+	}
+
+	rate = clk_get_rate(priv->refclk);
+
+	switch (rate) {
+	case REF_CLOCK_24MHz:
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_clk_24m, true);
+		if (priv->type == PHY_TYPE_USB3 || priv->type == PHY_TYPE_SATA) {
+			/* Set ssc_cnt[9:0]=0101111101 & 31.5KHz */
+			rockchip_combphy_updatel(priv, GENMASK(7, 6), BIT(6), 0xe << 2);
+
+			rockchip_combphy_updatel(priv, GENMASK(7, 0), 0x5f, 0xf << 2);
+		} else if (priv->type == PHY_TYPE_PCIE) {
+			/* PLL KVCO tuning fine */
+			rockchip_combphy_updatel(priv, GENMASK(4, 2), 0x4 << 2, 0x20 << 2);
+
+			/* Set up rx_trim */
+			writel(0x0, priv->mmio + (0x1b << 2));
+
+			/* Set up su_trim: T0_1 */
+			writel(0x90, priv->mmio + (0xa << 2));
+			writel(0x02, priv->mmio + (0xb << 2));
+			writel(0x57, priv->mmio + (0xd << 2));
+
+			writel(0x5f, priv->mmio + (0xf << 2));
+		}
+		break;
+	case REF_CLOCK_25MHz:
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_clk_25m, true);
+		break;
+	case REF_CLOCK_100MHz:
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_clk_100m, true);
+		if (priv->type == PHY_TYPE_PCIE) {
+			/* gate_tx_pck_sel length select work for L1SS */
+			writel(0xc0, priv->mmio + 0x74);
+
+			/* PLL KVCO tuning fine */
+			rockchip_combphy_updatel(priv, GENMASK(4, 2), 0x4 << 2, 0x20 << 2);
+
+			/* Set up rx_trim: PLL LPF C1 85pf R1 1.25kohm */
+			writel(0x4c, priv->mmio + (0x1b << 2));
+
+			/* Set up su_trim: T3_P1 650mv */
+			writel(0x90, priv->mmio + (0xa << 2));
+			writel(0x43, priv->mmio + (0xb << 2));
+			writel(0x88, priv->mmio + (0xc << 2));
+			writel(0x56, priv->mmio + (0xd << 2));
+		} else if (priv->type == PHY_TYPE_SATA) {
+			/* downward spread spectrum +500ppm */
+			rockchip_combphy_updatel(priv, GENMASK(7, 4), 0x50, 0x1f << 2);
+
+			/* ssc ppm adjust to 3500ppm */
+			rockchip_combphy_updatel(priv, GENMASK(3, 0), 0x7, 0x9 << 2);
+		}
+		break;
+	default:
+		dev_err(priv->dev, "Unsupported rate: %lu\n", rate);
+		return -EINVAL;
+	}
+
+	if (priv->ext_refclk) {
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_clk_ext, true);
+		if (priv->type == PHY_TYPE_PCIE && rate == REF_CLOCK_100MHz) {
+			writel(0x10, priv->mmio + (0x20 << 2));
+
+			writel(0x0c, priv->mmio + (0x1b << 2));
+
+			/* Set up su_trim: T3_P1 650mv */
+			writel(0x90, priv->mmio + (0xa << 2));
+			writel(0x43, priv->mmio + (0xb << 2));
+			writel(0x88, priv->mmio + (0xc << 2));
+			writel(0x56, priv->mmio + (0xd << 2));
+		}
+	}
+
+	if (priv->enable_ssc) {
+		rockchip_combphy_updatel(priv, GENMASK(4, 4), BIT(4), 0x7 << 2);
+
+		if (priv->type == PHY_TYPE_PCIE && rate == REF_CLOCK_24MHz) {
+			/* Xin24M T0_1 650mV */
+			writel(0x00, priv->mmio + (0x10 << 2));
+			writel(0x32, priv->mmio + (0x11 << 2));
+			writel(0x00, priv->mmio + (0x1b << 2));
+			writel(0x90, priv->mmio + (0x0a << 2));
+			writel(0x02, priv->mmio + (0x0b << 2));
+			writel(0x08, priv->mmio + (0x0c << 2));
+			writel(0x57, priv->mmio + (0x0d << 2));
+			writel(0x40, priv->mmio + (0x0e << 2));
+			writel(0x5f, priv->mmio + (0x0f << 2));
+			writel(0x10, priv->mmio + (0x20 << 2));
+		}
+	}
+
+	return 0;
+}
+
+static const struct rockchip_combphy_grfcfg rk3576_combphy_grfcfgs = {
+	/* pipe-phy-grf */
+	.pcie_mode_set		= { 0x0000, 5, 0, 0x00, 0x11 },
+	.usb_mode_set		= { 0x0000, 5, 0, 0x00, 0x04 },
+	.pipe_rxterm_set	= { 0x0000, 12, 12, 0x00, 0x01 },
+	.pipe_txelec_set	= { 0x0004, 1, 1, 0x00, 0x01 },
+	.pipe_txcomp_set	= { 0x0004, 4, 4, 0x00, 0x01 },
+	.pipe_clk_24m		= { 0x0004, 14, 13, 0x00, 0x00 },
+	.pipe_clk_25m		= { 0x0004, 14, 13, 0x00, 0x01 },
+	.pipe_clk_100m		= { 0x0004, 14, 13, 0x00, 0x02 },
+	.pipe_phymode_sel	= { 0x0008, 1, 1, 0x00, 0x01 },
+	.pipe_rate_sel		= { 0x0008, 2, 2, 0x00, 0x01 },
+	.pipe_rxterm_sel	= { 0x0008, 8, 8, 0x00, 0x01 },
+	.pipe_txelec_sel	= { 0x0008, 12, 12, 0x00, 0x01 },
+	.pipe_txcomp_sel	= { 0x0008, 15, 15, 0x00, 0x01 },
+	.pipe_clk_ext		= { 0x000c, 9, 8, 0x02, 0x01 },
+	.pipe_phy_status	= { 0x0034, 6, 6, 0x01, 0x00 },
+	.con0_for_pcie		= { 0x0000, 15, 0, 0x00, 0x1000 },
+	.con1_for_pcie		= { 0x0004, 15, 0, 0x00, 0x0000 },
+	.con2_for_pcie		= { 0x0008, 15, 0, 0x00, 0x0101 },
+	.con3_for_pcie		= { 0x000c, 15, 0, 0x00, 0x0200 },
+	.con0_for_sata		= { 0x0000, 15, 0, 0x00, 0x0129 },
+	.con1_for_sata		= { 0x0004, 15, 0, 0x00, 0x0000 },
+	.con2_for_sata		= { 0x0008, 15, 0, 0x00, 0x80c1 },
+	.con3_for_sata		= { 0x000c, 15, 0, 0x00, 0x0407 },
+	/* php-grf */
+	.pipe_con0_for_sata	= { 0x001C, 2, 0, 0x00, 0x2 },
+	.pipe_con1_for_sata	= { 0x0020, 2, 0, 0x00, 0x2 },
+};
+
+static const struct rockchip_combphy_cfg rk3576_combphy_cfgs = {
+	.num_phys = 2,
+	.phy_ids = {
+		0x2b050000,
+		0x2b060000
+	},
+	.grfcfg		= &rk3576_combphy_grfcfgs,
+	.combphy_cfg	= rk3576_combphy_cfg,
+};
+
 static int rk3588_combphy_cfg(struct rockchip_combphy_priv *priv)
 {
 	const struct rockchip_combphy_grfcfg *cfg = priv->cfg->grfcfg;
@@ -775,6 +973,10 @@ static const struct of_device_id rockchip_combphy_of_match[] = {
 		.compatible = "rockchip,rk3568-naneng-combphy",
 		.data = &rk3568_combphy_cfgs,
 	},
+	{
+		.compatible = "rockchip,rk3576-naneng-combphy",
+		.data = &rk3576_combphy_cfgs,
+	},
 	{
 		.compatible = "rockchip,rk3588-naneng-combphy",
 		.data = &rk3588_combphy_cfgs,
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

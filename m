Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 866F3D2068F
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Oct 2024 02:38:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jlKeIvzVRNuZ/7ahqNKCdTpy8+NO2x3P5+Ac/11BQRg=; b=2GIXKJ4AxU8zIJ
	jyLEKURGLhcf358C5KJ1tXRhLay/QrbJs2n5JxYF0kD/1xdWckKsE/wWBBGb8ecrpeEDKfHVZrJei
	JCDhQDy7ilPnRJJr8JpF5u6RfM7Nbm7WkjvBuJCEvnKR67FrvIzsXGJ8z4k0KMyR+b7xyTF3ijXVj
	7UfWLWTaS4J6TZaxNhGAWgZgRLdxiIdTph53j4P0LQ2i8XauQmpv1oUvBpzdfw/lJBh2PUscptA/Y
	Jjv2xq39tzDl/U79tAupuo0gzat/kXBrD769KhB8ZElpOS01A3VMpDO0Hfwqx96ADOCN/pJRxoVTI
	neJiI9XgIeed9Lh1kuMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0tvp-0000000AFSh-2vz9;
	Wed, 16 Oct 2024 02:38:37 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0tt5-0000000AF1Z-1jPO;
	Wed, 16 Oct 2024 02:35:49 +0000
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-20c78a10eb3so3354165ad.0;
        Tue, 15 Oct 2024 19:35:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729046146; x=1729650946; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S+eZjyOKKkxcB5kFjfH/tpWc3YXuDUDSQBcQb8F8X2o=;
        b=hfaQi+lUYBlfQ/EfCCEDvQkVbDih3AxUhAlfGgbEL7IBa5CqDUGrofej/DHscu2wF3
         AyAXd1YyVdckPFdVU6iV+webatQlh3OUykyDkfu5Q36NSgW081n31Cd9etZGi9sZ7rqx
         rsfF50BohT3NhUynePXQjWXeIintkVWhx7r7FftE1Mzr1QQ1q1qpc3qrAtYbld2hUxVk
         Pae6MU8JCPElr2bZNE4UmgoVGCAl4LY1XD+hFQum2pced+Pn3NMLJ1BJ6WI2PpSD+YES
         xLTldDvIgNwKbeqtxczHMP5ciWL/ryyuGdh3DwXS390Zx9nX4naULep2dvXmnqBmO8WB
         grOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729046146; x=1729650946;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=S+eZjyOKKkxcB5kFjfH/tpWc3YXuDUDSQBcQb8F8X2o=;
        b=RSkczqPBJbF/6rJXAn1DxUlBar6vKoH14G52+SambNr3QT9dEon9/NrpjpkJ8lj67T
         jUxi9GFua20OdR4KI6uAInJF9qV4cIkFQjizbe/QRLoGcsAgHBHtMqBnZ15zwpaWFk/S
         6j0EnyuFDM6DO6B5pd2LxkvT59KuNPZRZHJbtVP6EQL37WDwuU7597q0M2EbWrVQxcNx
         jGNjjJZI6EBwPect1T61+u4LlI1Jx4FAHEgCdLimYjALxQNKJBZ7leJwuFGaJy4hSYmn
         AHXCJEOLOVHQCWmUhh83ZrsoD1yj6WBt7yC2QYveukOgusyrpPbXs0AcchLyZyBCemPb
         UQrw==
X-Forwarded-Encrypted: i=1; AJvYcCX11/soZwCyN1sKPfO2GdzM+y1hNE16mu07ke5N4+NR4ILrlsXs9Sn5e5vXiAPHUj1rQPRgZjA77IQWkVD7gYM=@lists.infradead.org, AJvYcCXZoelBDf+P//VDkbYJIs2+GvWFz78/jBFqoqmwGSU6j8A3EfWi/AZU1q29WVKhYe44T8jJRM2kN27ylUek0D2s@lists.infradead.org
X-Gm-Message-State: AOJu0YzEFY9wlqV+asRCqJVPBIkWpGOJuNbMKNC2edpDdaXmQ76M8Gj+
	Nhqklp70hWunaVL+UZRKS3AdEvQw0Qw+gAZbmr27z6oOHxLXGbfg
X-Google-Smtp-Source: AGHT+IFUSCA+856XxllXr8S41u0AiwTY1UzOBDoOMc2Sw36VwRzcUTSdKPjiXTfUWzoK5H/0EfTW9g==
X-Received: by 2002:a17:902:e892:b0:20c:df08:9a78 with SMTP id d9443c01a7336-20d2fe41addmr5778945ad.13.1729046146127;
        Tue, 15 Oct 2024 19:35:46 -0700 (PDT)
Received: from localhost.localdomain ([103.29.142.67])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7ea9c70587asm2192920a12.72.2024.10.15.19.35.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Oct 2024 19:35:45 -0700 (PDT)
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
Subject: [PATCH v2 2/2] phy: rockchip-naneng-combo: Support rk3576
Date: Wed, 16 Oct 2024 10:35:33 +0800
Message-Id: <20241016023533.12018-2-frawang.cn@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241016023533.12018-1-frawang.cn@gmail.com>
References: <20241016023533.12018-1-frawang.cn@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241015_193547_499835_5F657F9E 
X-CRM114-Status: GOOD (  17.31  )
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
Changelog:
v2:
 - using constants macro instead of magic values.
 - add more comments for PHY tuning operations.

v1:
 - https://patchwork.kernel.org/project/linux-phy/patch/20241015013351.4884-2-frawang.cn@gmail.com/

 .../rockchip/phy-rockchip-naneng-combphy.c    | 274 ++++++++++++++++++
 1 file changed, 274 insertions(+)

diff --git a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
index 0a9989e41237f..25aa8d1981abc 100644
--- a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
+++ b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
@@ -37,6 +37,10 @@
 #define PHYREG8				0x1C
 #define PHYREG8_SSC_EN			BIT(4)
 
+#define PHYREG10			0x24
+#define PHYREG10_SSC_PCM_MASK		GENMASK(3, 0)
+#define PHYREG10_SSC_PCM_3500PPM	7
+
 #define PHYREG11			0x28
 #define PHYREG11_SU_TRIM_0_7		0xF0
 
@@ -61,12 +65,19 @@
 #define PHYREG16			0x3C
 #define PHYREG16_SSC_CNT_VALUE		0x5f
 
+#define PHYREG17			0x40
+
 #define PHYREG18			0x44
 #define PHYREG18_PLL_LOOP		0x32
 
+#define PHYREG21			0x50
+#define PHYREG21_RX_SQUELCH_VAL		0x0D
+
 #define PHYREG27			0x6C
 #define PHYREG27_RX_TRIM_RK3588		0x4C
 
+#define PHYREG30			0x74
+
 #define PHYREG32			0x7C
 #define PHYREG32_SSC_MASK		GENMASK(7, 4)
 #define PHYREG32_SSC_DIR_SHIFT		4
@@ -79,6 +90,7 @@
 #define PHYREG33_PLL_KVCO_MASK		GENMASK(4, 2)
 #define PHYREG33_PLL_KVCO_SHIFT		2
 #define PHYREG33_PLL_KVCO_VALUE		2
+#define PHYREG33_PLL_KVCO_VALUE_RK3576	4
 
 struct rockchip_combphy_priv;
 
@@ -98,6 +110,7 @@ struct rockchip_combphy_grfcfg {
 	struct combphy_reg pipe_rxterm_set;
 	struct combphy_reg pipe_txelec_set;
 	struct combphy_reg pipe_txcomp_set;
+	struct combphy_reg pipe_clk_24m;
 	struct combphy_reg pipe_clk_25m;
 	struct combphy_reg pipe_clk_100m;
 	struct combphy_reg pipe_phymode_sel;
@@ -584,6 +597,263 @@ static const struct rockchip_combphy_cfg rk3568_combphy_cfgs = {
 	.combphy_cfg	= rk3568_combphy_cfg,
 };
 
+static int rk3576_combphy_cfg(struct rockchip_combphy_priv *priv)
+{
+	const struct rockchip_combphy_grfcfg *cfg = priv->cfg->grfcfg;
+	unsigned long rate;
+	u32 val;
+
+	switch (priv->type) {
+	case PHY_TYPE_PCIE:
+		/* Set SSC downward spread spectrum */
+		rockchip_combphy_updatel(priv, PHYREG32_SSC_MASK,
+					 PHYREG32_SSC_DOWNWARD << PHYREG32_SSC_DIR_SHIFT,
+					 PHYREG32);
+
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->con0_for_pcie, true);
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->con1_for_pcie, true);
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->con2_for_pcie, true);
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->con3_for_pcie, true);
+		break;
+	case PHY_TYPE_USB3:
+		/* Set SSC downward spread spectrum */
+		rockchip_combphy_updatel(priv, PHYREG32_SSC_MASK,
+					 PHYREG32_SSC_DOWNWARD << PHYREG32_SSC_DIR_SHIFT,
+					 PHYREG32);
+
+		/* Enable adaptive CTLE for USB3.0 Rx */
+		val = readl(priv->mmio + PHYREG15);
+		val |= PHYREG15_CTLE_EN;
+		writel(val, priv->mmio + PHYREG15);
+
+		/* Set PLL KVCO fine tuning signals */
+		rockchip_combphy_updatel(priv, PHYREG33_PLL_KVCO_MASK, BIT(3), PHYREG33);
+
+		/* Set PLL LPF R1 to su_trim[10:7]=1001 */
+		writel(PHYREG12_PLL_LPF_ADJ_VALUE, priv->mmio + PHYREG12);
+
+		/* Set PLL input clock divider 1/2 */
+		rockchip_combphy_updatel(priv, PHYREG6_PLL_DIV_MASK,
+					 PHYREG6_PLL_DIV_2 << PHYREG6_PLL_DIV_SHIFT,
+					 PHYREG6);
+
+		/* Set PLL loop divider */
+		writel(PHYREG18_PLL_LOOP, priv->mmio + PHYREG18);
+
+		/* Set PLL KVCO to min and set PLL charge pump current to max */
+		writel(PHYREG11_SU_TRIM_0_7, priv->mmio + PHYREG11);
+
+		/* Set Rx squelch input filler bandwidth */
+		writel(PHYREG21_RX_SQUELCH_VAL, priv->mmio + PHYREG21);
+
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_txcomp_sel, false);
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_txelec_sel, false);
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->usb_mode_set, true);
+		break;
+	case PHY_TYPE_SATA:
+		/* Enable adaptive CTLE for SATA Rx */
+		val = readl(priv->mmio + PHYREG15);
+		val |= PHYREG15_CTLE_EN;
+		writel(val, priv->mmio + PHYREG15);
+
+		/* Set tx_rterm = 50 ohm and rx_rterm = 43.5 ohm */
+		val = PHYREG7_TX_RTERM_50OHM << PHYREG7_TX_RTERM_SHIFT;
+		val |= PHYREG7_RX_RTERM_44OHM << PHYREG7_RX_RTERM_SHIFT;
+		writel(val, priv->mmio + PHYREG7);
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
+			val = PHYREG15_SSC_CNT_VALUE << PHYREG15_SSC_CNT_SHIFT;
+			rockchip_combphy_updatel(priv, PHYREG15_SSC_CNT_MASK,
+						 val, PHYREG15);
+
+			writel(PHYREG16_SSC_CNT_VALUE, priv->mmio + PHYREG16);
+
+		} else if (priv->type == PHY_TYPE_PCIE) {
+			/* PLL KVCO tuning fine */
+			val = PHYREG33_PLL_KVCO_VALUE_RK3576 << PHYREG33_PLL_KVCO_SHIFT;
+			rockchip_combphy_updatel(priv, PHYREG33_PLL_KVCO_MASK,
+						 val, PHYREG33);
+
+			/* Set up rx_pck invert and rx msb to disable */
+			writel(0x00, priv->mmio + PHYREG27);
+
+			/*
+			 * Set up SU adjust signal:
+			 * su_trim[7:0],   PLL KVCO adjust bits[2:0] to min
+			 * su_trim[15:8],  PLL LPF R1 adujst bits[9:7]=3'b011
+			 * su_trim[31:24], CKDRV adjust
+			 */
+			writel(0x90, priv->mmio + PHYREG11);
+			writel(0x02, priv->mmio + PHYREG12);
+			writel(0x57, priv->mmio + PHYREG14);
+
+			writel(PHYREG16_SSC_CNT_VALUE, priv->mmio + PHYREG16);
+		}
+		break;
+	case REF_CLOCK_25MHz:
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_clk_25m, true);
+		break;
+	case REF_CLOCK_100MHz:
+		rockchip_combphy_param_write(priv->phy_grf, &cfg->pipe_clk_100m, true);
+		if (priv->type == PHY_TYPE_PCIE) {
+			/* gate_tx_pck_sel length select work for L1SS */
+			writel(0xc0, priv->mmio + PHYREG30);
+
+			/* PLL KVCO tuning fine */
+			val = PHYREG33_PLL_KVCO_VALUE_RK3576 << PHYREG33_PLL_KVCO_SHIFT;
+			rockchip_combphy_updatel(priv, PHYREG33_PLL_KVCO_MASK,
+						 val, PHYREG33);
+
+			/* Set up rx_trim: PLL LPF C1 85pf R1 1.25kohm */
+			writel(0x4c, priv->mmio + PHYREG27);
+
+			/*
+			 * Set up SU adjust signal:
+			 * su_trim[7:0],   PLL KVCO adjust bits[2:0] to min
+			 * su_trim[15:8],  bypass PLL loop divider code, and
+			 *                 PLL LPF R1 adujst bits[9:7]=3'b101
+			 * su_trim[23:16], CKRCV adjust
+			 * su_trim[31:24], CKDRV adjust
+			 */
+			writel(0x90, priv->mmio + PHYREG11);
+			writel(0x43, priv->mmio + PHYREG12);
+			writel(0x88, priv->mmio + PHYREG13);
+			writel(0x56, priv->mmio + PHYREG14);
+		} else if (priv->type == PHY_TYPE_SATA) {
+			/* downward spread spectrum +500ppm */
+			val = PHYREG32_SSC_DOWNWARD << PHYREG32_SSC_DIR_SHIFT;
+			val |= PHYREG32_SSC_OFFSET_500PPM << PHYREG32_SSC_OFFSET_SHIFT;
+			rockchip_combphy_updatel(priv, PHYREG32_SSC_MASK, val, PHYREG32);
+
+			/* ssc ppm adjust to 3500ppm */
+			rockchip_combphy_updatel(priv, PHYREG10_SSC_PCM_MASK,
+						 PHYREG10_SSC_PCM_3500PPM,
+						 PHYREG10);
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
+			val = PHYREG33_PLL_KVCO_VALUE_RK3576 << PHYREG33_PLL_KVCO_SHIFT;
+			rockchip_combphy_updatel(priv, PHYREG33_PLL_KVCO_MASK,
+						 val, PHYREG33);
+
+			/* Set up rx_trim: PLL LPF C1 85pf R1 2.5kohm */
+			writel(0x0c, priv->mmio + PHYREG27);
+
+			/*
+			 * Set up SU adjust signal:
+			 * su_trim[7:0],   PLL KVCO adjust bits[2:0] to min
+			 * su_trim[15:8],  bypass PLL loop divider code, and
+			 *                 PLL LPF R1 adujst bits[9:7]=3'b101.
+			 * su_trim[23:16], CKRCV adjust
+			 * su_trim[31:24], CKDRV adjust
+			 */
+			writel(0x90, priv->mmio + PHYREG11);
+			writel(0x43, priv->mmio + PHYREG12);
+			writel(0x88, priv->mmio + PHYREG13);
+			writel(0x56, priv->mmio + PHYREG14);
+		}
+	}
+
+	if (priv->enable_ssc) {
+		val = readl(priv->mmio + PHYREG8);
+		val |= PHYREG8_SSC_EN;
+		writel(val, priv->mmio + PHYREG8);
+
+		if (priv->type == PHY_TYPE_PCIE && rate == REF_CLOCK_24MHz) {
+			/* Set PLL loop divider */
+			writel(0x00, priv->mmio + PHYREG17);
+			writel(PHYREG18_PLL_LOOP, priv->mmio + PHYREG18);
+
+			/* Set up rx_pck invert and rx msb to disable */
+			writel(0x00, priv->mmio + PHYREG27);
+
+			/*
+			 * Set up SU adjust signal:
+			 * su_trim[7:0],   PLL KVCO adjust bits[2:0] to min
+			 * su_trim[15:8],  PLL LPF R1 adujst bits[9:7]=3'b101
+			 * su_trim[23:16], CKRCV adjust
+			 * su_trim[31:24], CKDRV adjust
+			 */
+			writel(0x90, priv->mmio + PHYREG11);
+			writel(0x02, priv->mmio + PHYREG12);
+			writel(0x08, priv->mmio + PHYREG13);
+			writel(0x57, priv->mmio + PHYREG14);
+			writel(0x40, priv->mmio + PHYREG15);
+
+			writel(PHYREG16_SSC_CNT_VALUE, priv->mmio + PHYREG16);
+			writel(PHYREG33_PLL_KVCO_VALUE_RK3576 << PHYREG33_PLL_KVCO_SHIFT,
+			       priv->mmio + PHYREG33);
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
@@ -775,6 +1045,10 @@ static const struct of_device_id rockchip_combphy_of_match[] = {
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
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

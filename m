Return-Path: <SRS0=TPHQ=NV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.9 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	UNWANTED_LANGUAGE_BODY,URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7860BC4320E
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Aug 2021 18:09:00 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3B81A60FD9
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Aug 2021 18:09:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 3B81A60FD9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k+z+Y8x6YyBOmLl9CodnO+Ltl1uozA/bNJLG6d7h984=; b=EQ2cZIGKH8FtF3
	8/SuIKeO2UUrTaIRQZHkpiQC4b3Sl4Q1iFFRE3pVj78SWG/n/pDBwKGzF/E15b2NlOeYtqiJgzYad
	EApS3IeMAd7zhY53P1N0513J8qBSBQ1jafqVa9Ob0arVnJWhEhszeQhtSsQvnHGSS6kZrZAaiLTp+
	NBoNfN3a0F1uYIHFzAQRRExZxCgkN+3dkn/3HYKgeQ345R2MxxL4XYR/DRvJ2KQXd6xgIAegMrc0O
	KvkQkKiOH5O6hA0EVufdwC3xkpWeh9XS+3VKRa+3bnO0ToF0troqKSzBv4kP0jEa20m0EQTndCo7I
	tS59zJGbCxA0pzHj/kHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mKliK-000HXB-U0; Mon, 30 Aug 2021 18:08:56 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mKlhi-000HMA-EA; Mon, 30 Aug 2021 18:08:20 +0000
Received: by mail-lj1-x236.google.com with SMTP id i28so27397779ljm.7;
 Mon, 30 Aug 2021 11:08:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=b/OAh8aOD3VETT+3ckdVhItSFApQc/twtaDOU9YMtuI=;
 b=Rq5lje9l8WRBpJnfFWx7PfhcZcspFl0/ajBKs+9DiME4q2c0Cie7d2i65SAmgRdm/Z
 YXqmakvI51HAMPVX6NwxIkbFRXfOrOkXgcq1zZrZpY3pSsGUj0lxrjG2lD2D4mIWBZvW
 EXiUb7vb+sLEm0SBJz5aPRw7b1i9/mDdnOqsLk2e1yj9eCLB7BYqWAGR5xEES7yW97Pm
 KsN1ixgso0sMylu5ETrzgv/Z5+tOJxL4d3trIxWkpniwATUixf2V4wm0Q5R6fjoMmbmP
 kQLJpwy/0J2aZcdk59uSApRQcPktv4r25peJMyo93uc8xd0uMveMhux/tiFRipC+vDyh
 GKcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=b/OAh8aOD3VETT+3ckdVhItSFApQc/twtaDOU9YMtuI=;
 b=k4yAXUIe5aRhHFWq5f9ZfY3IZocjfB773RQ/o+hY7mK6eyMMB4Qe8Zj8NdkGSMROLJ
 aMFdfvhFkIwXloMQS7uXEVcMQjf99KPeNpNYlIuqO53gGEHGnWiQ74LBYxyAekIaLzWg
 RLSFbSED4PkcAzBnnT3ZstK+3n13R1DovYfn2ShZAleylxHOFUdbSAwaiD4S+V2MKsg2
 7ElSktkeM3NfKG+b8DW0XU5kPM3h6gKSeuvbFZeLSctccw/VQMupGftfwnSRb3oaOfyr
 efWOpywPA7IzP9lDScMfE9uZWe6nuvjoJv/xQmrGq+nM9v7JGQF7CX6t+OX6nYWF2An9
 7QtQ==
X-Gm-Message-State: AOAM533jNuvKLFdGYoj9kPFRLecZPo3+Z7YcQhGv95SQKPDjo6V/aAwP
 hEuAqng3nCZafX/JNZWJvQCdG/CxVomJpg==
X-Google-Smtp-Source: ABdhPJxM+Eel5ZoWHJT/5HDxv0WIo7kbrH0gJR5PZy6QNvp3iXOC7vA1XjqSY8/TmP3KQL8szCNg6Q==
X-Received: by 2002:a2e:b537:: with SMTP id z23mr21942849ljm.109.1630346896621; 
 Mon, 30 Aug 2021 11:08:16 -0700 (PDT)
Received: from localhost (37-145-211-218.broadband.corbina.ru.
 [37.145.211.218])
 by smtp.gmail.com with ESMTPSA id u11sm879448ljo.126.2021.08.30.11.08.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Aug 2021 11:08:16 -0700 (PDT)
From: Mikhail Rudenko <mike.rudenko@gmail.com>
To: linux-phy@lists.infradead.org
Cc: linux-media@vger.kernel.org, Mikhail Rudenko <mike.rudenko@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v1 2/5] phy: phy-rockchip-dphy-rx0: add support for tx1rx1 in
 receive mode
Date: Mon, 30 Aug 2021 21:07:51 +0300
Message-Id: <20210830180758.251390-3-mike.rudenko@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210830180758.251390-1-mike.rudenko@gmail.com>
References: <20210830180758.251390-1-mike.rudenko@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210830_110818_525272_C23E4FD3 
X-CRM114-Status: GOOD (  21.76  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Implement RX mode of RK3399 TX1RX1 MIPI D-PHY. Unlike RX0 phy, it uses
both mmio registers and grf for configuration. Add necessary register
definitions, mmio register access functions, enable/disable functions,
rk_dphy_drv_data instance and compatible string for tx1rx1. Probe
function is adjusted accordingly.

Additionally, individual init function is implemented, since,
according to the comments in Rockchip BSP kernel, "According to the
sequence of RK3399_TXRX_DPHY, the setting of isp0 mipi will affect
txrx dphy in default state of grf_soc_con24."

Signed-off-by: Mikhail Rudenko <mike.rudenko@gmail.com>
---
 drivers/phy/rockchip/phy-rockchip-dphy-rx0.c | 193 +++++++++++++++++--
 1 file changed, 172 insertions(+), 21 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-dphy-rx0.c b/drivers/phy/rockchip/phy-rockchip-dphy-rx0.c
index 72145cdfb036..3ce307b49e51 100644
--- a/drivers/phy/rockchip/phy-rockchip-dphy-rx0.c
+++ b/drivers/phy/rockchip/phy-rockchip-dphy-rx0.c
@@ -34,6 +34,12 @@
 #define RK3399_GRF_SOC_CON24		0x6260
 #define RK3399_GRF_SOC_CON25		0x6264
 #define RK3399_GRF_SOC_STATUS1		0xe2a4
+#define RK3399_GRF_IO_VSEL			0x0900
+
+#define RK3399_PHY_TEST_CTRL0	0xb4
+#define RK3399_PHY_TEST_CTRL1	0xb8
+#define RK3399_PHY_SHUTDOWNZ	0xa0
+#define RK3399_PHY_RSTZ		0xa0
 
 #define CLOCK_LANE_HS_RX_CONTROL	0x34
 #define LANE0_HS_RX_CONTROL		0x44
@@ -43,6 +49,11 @@
 #define LANES_THS_SETTLE_CONTROL	0x75
 #define THS_SETTLE_COUNTER_THRESHOLD	0x04
 
+#define PHY_TESTEN_ADDR			(0x1 << 16)
+#define PHY_TESTEN_DATA			(0x0 << 16)
+#define PHY_TESTCLK			(0x1 << 1)
+#define PHY_TESTCLR			(0x1 << 0)
+
 struct hsfreq_range {
 	u16 range_h;
 	u8 cfg_bit;
@@ -61,12 +72,6 @@ static const struct hsfreq_range rk3399_mipidphy_hsfreq_ranges[] = {
 	{ 1399, 0x1c }, { 1449, 0x2c }, { 1500, 0x3c }
 };
 
-static const char * const rk3399_mipidphy_clks[] = {
-	"dphy-ref",
-	"dphy-cfg",
-	"grf",
-};
-
 enum dphy_reg_id {
 	GRF_DPHY_RX0_TURNDISABLE = 0,
 	GRF_DPHY_RX0_FORCERXMODE,
@@ -99,6 +104,14 @@ enum dphy_reg_id {
 	/* below is for rk3399 only */
 	GRF_DPHY_RX0_CLK_INV_SEL,
 	GRF_DPHY_RX1_CLK_INV_SEL,
+	GRF_DPHY_TX1RX1_SRC_SEL,
+};
+
+enum txrx_reg_id {
+	TXRX_PHY_TEST_CTRL0 = 0,
+	TXRX_PHY_TEST_CTRL1,
+	TXRX_PHY_SHUTDOWNZ,
+	TXRX_PHY_RSTZ,
 };
 
 struct dphy_reg {
@@ -127,7 +140,7 @@ static const struct dphy_reg rk3399_grf_dphy_regs[] = {
 	[GRF_DPHY_TX1RX1_FORCETXSTOPMODE] = PHY_REG(RK3399_GRF_SOC_CON23, 4, 8),
 	[GRF_DPHY_TX1RX1_TURNDISABLE] = PHY_REG(RK3399_GRF_SOC_CON23, 4, 12),
 	[GRF_DPHY_TX1RX1_TURNREQUEST] = PHY_REG(RK3399_GRF_SOC_CON24, 4, 0),
-	[GRF_DPHY_RX1_SRC_SEL] = PHY_REG(RK3399_GRF_SOC_CON24, 1, 4),
+	[GRF_DPHY_TX1RX1_SRC_SEL] = PHY_REG(RK3399_GRF_SOC_CON24, 1, 4),
 	[GRF_DPHY_TX1RX1_BASEDIR] = PHY_REG(RK3399_GRF_SOC_CON24, 1, 5),
 	[GRF_DPHY_TX1RX1_ENABLECLK] = PHY_REG(RK3399_GRF_SOC_CON24, 1, 6),
 	[GRF_DPHY_TX1RX1_MASTERSLAVEZ] = PHY_REG(RK3399_GRF_SOC_CON24, 1, 7),
@@ -136,6 +149,21 @@ static const struct dphy_reg rk3399_grf_dphy_regs[] = {
 	[GRF_DPHY_RX0_TESTCLK] = PHY_REG(RK3399_GRF_SOC_CON25, 1, 9),
 	[GRF_DPHY_RX0_TESTCLR] = PHY_REG(RK3399_GRF_SOC_CON25, 1, 10),
 	[GRF_DPHY_RX0_TESTDOUT] = PHY_REG(RK3399_GRF_SOC_STATUS1, 8, 0),
+	[GRF_DVP_V18SEL] = PHY_REG(RK3399_GRF_IO_VSEL, 1, 1),
+};
+
+struct txrx_reg {
+	u32 offset;
+};
+
+#define TXRX_REG(_offset) \
+	{ .offset = _offset, }
+
+static const struct txrx_reg rk3399_txrx_regs[] = {
+	[TXRX_PHY_TEST_CTRL0] = TXRX_REG(RK3399_PHY_TEST_CTRL0),
+	[TXRX_PHY_TEST_CTRL1] = TXRX_REG(RK3399_PHY_TEST_CTRL1),
+	[TXRX_PHY_SHUTDOWNZ] = TXRX_REG(RK3399_PHY_SHUTDOWNZ),
+	[TXRX_PHY_RSTZ] = TXRX_REG(RK3399_PHY_RSTZ),
 };
 
 struct rk_dphy;
@@ -146,15 +174,18 @@ struct rk_dphy_drv_data {
 	const struct hsfreq_range *hsfreq_ranges;
 	unsigned int num_hsfreq_ranges;
 	const struct dphy_reg *regs;
+	const struct txrx_reg *txrx_regs;
 
 	void (*enable)(struct rk_dphy *priv);
 	void (*disable)(struct rk_dphy *priv);
+	void (*individual_init)(struct rk_dphy *priv);
 };
 
 struct rk_dphy {
 	struct device *dev;
 	struct regmap *grf;
 	struct clk_bulk_data *clks;
+	void __iomem *txrx_base_addr;
 
 	const struct rk_dphy_drv_data *drv_data;
 	struct phy_configure_opts_mipi_dphy config;
@@ -234,6 +265,74 @@ static void rk_dphy_disable_rx(struct rk_dphy *priv)
 	rk_dphy_write_grf(priv, GRF_DPHY_RX0_ENABLE, 0);
 }
 
+static inline void rk_dphy_write_tx1rx1(struct rk_dphy *priv,
+				  int index, u32 value)
+{
+	const struct txrx_reg *reg = &priv->drv_data->txrx_regs[index];
+
+	if (reg->offset)
+		writel(value, priv->txrx_base_addr + reg->offset);
+}
+
+static void rk_dphy_write_mipi_tx1rx1(struct rk_dphy *priv, unsigned char addr,
+				 unsigned char data)
+{
+	/*
+	 * TESTEN =1,TESTDIN=addr
+	 * TESTCLK=0
+	 * TESTEN =0,TESTDIN=data
+	 * TESTCLK=1
+	 */
+	rk_dphy_write_tx1rx1(priv, TXRX_PHY_TEST_CTRL1, PHY_TESTEN_ADDR | addr);
+	rk_dphy_write_tx1rx1(priv, TXRX_PHY_TEST_CTRL0, 0x00);
+	rk_dphy_write_tx1rx1(priv, TXRX_PHY_TEST_CTRL1, PHY_TESTEN_DATA | data);
+	rk_dphy_write_tx1rx1(priv, TXRX_PHY_TEST_CTRL0, 0x02);
+}
+
+static void rk_dphy_enable_txrx(struct rk_dphy *priv)
+{
+	rk_dphy_write_tx1rx1(priv, TXRX_PHY_TEST_CTRL0, PHY_TESTCLR | PHY_TESTCLK);
+	usleep_range(100, 150);
+
+	rk_dphy_write_grf(priv, GRF_DPHY_TX1RX1_MASTERSLAVEZ, 0);
+	rk_dphy_write_grf(priv, GRF_DPHY_TX1RX1_BASEDIR, 1);
+
+	rk_dphy_write_grf(priv, GRF_DPHY_TX1RX1_FORCERXMODE, 0);
+	rk_dphy_write_grf(priv, GRF_DPHY_TX1RX1_FORCETXSTOPMODE, 0);
+	rk_dphy_write_grf(priv, GRF_DPHY_TX1RX1_TURNREQUEST, 0);
+	rk_dphy_write_grf(priv, GRF_DPHY_TX1RX1_TURNDISABLE, 0xf);
+	usleep_range(100, 150);
+
+	rk_dphy_write_tx1rx1(priv, TXRX_PHY_TEST_CTRL0, PHY_TESTCLK);
+	usleep_range(100, 150);
+
+	rk_dphy_write_mipi_tx1rx1(priv, CLOCK_LANE_HS_RX_CONTROL, 0);
+	rk_dphy_write_mipi_tx1rx1(priv, LANE0_HS_RX_CONTROL, priv->hsfreq << 1);
+	rk_dphy_write_mipi_tx1rx1(priv, LANE1_HS_RX_CONTROL, 0);
+	rk_dphy_write_mipi_tx1rx1(priv, LANE2_HS_RX_CONTROL, 0);
+	rk_dphy_write_mipi_tx1rx1(priv, LANE3_HS_RX_CONTROL, 0);
+
+	rk_dphy_write_grf(priv, GRF_DPHY_TX1RX1_ENABLE, GENMASK(priv->config.lanes - 1, 0));
+	usleep_range(100, 150);
+}
+
+static void rk_dphy_disable_txrx(struct rk_dphy *priv)
+{
+	rk_dphy_write_grf(priv, GRF_DPHY_TX1RX1_ENABLE, 0);
+}
+
+static void rk3399_mipidphy_individual_init(struct rk_dphy *priv)
+{
+	/*
+	 * According to the sequence of RK3399_TXRX_DPHY, the setting of isp0 mipi
+	 * will affect txrx dphy in default state of grf_soc_con24.
+	 */
+	rk_dphy_write_grf(priv, GRF_DPHY_TX1RX1_SRC_SEL, 0);
+	rk_dphy_write_grf(priv, GRF_DPHY_TX1RX1_MASTERSLAVEZ, 0);
+	rk_dphy_write_grf(priv, GRF_DPHY_TX1RX1_BASEDIR, 0);
+	rk_dphy_write_grf(priv, GRF_DVP_V18SEL, 0x1);
+}
+
 static int rk_dphy_configure(struct phy *phy, union phy_configure_opts *opts)
 {
 	struct rk_dphy *priv = phy_get_drvdata(phy);
@@ -314,20 +413,50 @@ static const struct phy_ops rk_dphy_ops = {
 	.owner		= THIS_MODULE,
 };
 
-static const struct rk_dphy_drv_data rk3399_mipidphy_drv_data = {
-	.clks = rk3399_mipidphy_clks,
-	.num_clks = ARRAY_SIZE(rk3399_mipidphy_clks),
+static const char * const rk3399_mipidphy_rx_clks[] = {
+	"dphy-ref",
+	"dphy-cfg",
+	"grf",
+};
+
+static const char * const rk3399_mipidphy_txrx_clks[] = {
+	"dphy-ref",
+	"dphy-cfg",
+	"grf",
+	"dsi",
+};
+
+static const struct rk_dphy_drv_data rk3399_mipidphy_rx_drv_data = {
+	.clks = rk3399_mipidphy_rx_clks,
+	.num_clks = ARRAY_SIZE(rk3399_mipidphy_rx_clks),
 	.hsfreq_ranges = rk3399_mipidphy_hsfreq_ranges,
 	.num_hsfreq_ranges = ARRAY_SIZE(rk3399_mipidphy_hsfreq_ranges),
 	.regs = rk3399_grf_dphy_regs,
 	.enable = rk_dphy_enable_rx,
 	.disable = rk_dphy_disable_rx,
+	.individual_init = rk3399_mipidphy_individual_init,
+};
+
+static const struct rk_dphy_drv_data rk3399_mipidphy_txrx_drv_data = {
+	.clks = rk3399_mipidphy_txrx_clks,
+	.num_clks = ARRAY_SIZE(rk3399_mipidphy_txrx_clks),
+	.hsfreq_ranges = rk3399_mipidphy_hsfreq_ranges,
+	.num_hsfreq_ranges = ARRAY_SIZE(rk3399_mipidphy_hsfreq_ranges),
+	.regs = rk3399_grf_dphy_regs,
+	.txrx_regs = rk3399_txrx_regs,
+	.enable = rk_dphy_enable_txrx,
+	.disable = rk_dphy_disable_txrx,
+	.individual_init = rk3399_mipidphy_individual_init,
 };
 
 static const struct of_device_id rk_dphy_dt_ids[] = {
 	{
 		.compatible = "rockchip,rk3399-mipi-dphy-rx0",
-		.data = &rk3399_mipidphy_drv_data,
+		.data = &rk3399_mipidphy_rx_drv_data,
+	},
+	{
+		.compatible = "rockchip,rk3399-mipi-dphy-tx1rx1",
+		.data = &rk3399_mipidphy_txrx_drv_data,
 	},
 	{}
 };
@@ -345,26 +474,42 @@ static int rk_dphy_probe(struct platform_device *pdev)
 	unsigned int i;
 	int ret;
 
-	if (!dev->parent || !dev->parent->of_node)
-		return -ENODEV;
-
 	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 	if (!priv)
 		return -ENOMEM;
 	priv->dev = dev;
 
-	priv->grf = syscon_node_to_regmap(dev->parent->of_node);
-	if (IS_ERR(priv->grf)) {
-		dev_err(dev, "Can't find GRF syscon\n");
-		return -ENODEV;
-	}
-
 	of_id = of_match_device(rk_dphy_dt_ids, dev);
 	if (!of_id)
 		return -EINVAL;
 
 	drv_data = of_id->data;
 	priv->drv_data = drv_data;
+
+	if (!drv_data->txrx_regs) {
+		if (!dev->parent || !dev->parent->of_node)
+			return -ENODEV;
+
+		priv->grf = syscon_node_to_regmap(dev->parent->of_node);
+		if (IS_ERR(priv->grf)) {
+			dev_err(dev, "Can't find GRF syscon\n");
+			return -ENODEV;
+		}
+	} else {
+		priv->grf = syscon_regmap_lookup_by_phandle(dev->of_node,
+							    "rockchip,grf");
+		if (IS_ERR(priv->grf)) {
+			dev_err(dev, "Can't find GRF syscon\n");
+			return -ENODEV;
+		}
+
+		priv->txrx_base_addr = devm_platform_ioremap_resource(pdev, 0);
+		if (IS_ERR(priv->txrx_base_addr)) {
+			dev_err(dev, "Failed to ioremap resource\n");
+			return PTR_ERR(priv->txrx_base_addr);
+		}
+	}
+
 	priv->clks = devm_kcalloc(&pdev->dev, drv_data->num_clks,
 				  sizeof(*priv->clks), GFP_KERNEL);
 	if (!priv->clks)
@@ -383,8 +528,14 @@ static int rk_dphy_probe(struct platform_device *pdev)
 	phy_set_drvdata(phy, priv);
 
 	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
+	if (IS_ERR(phy_provider)) {
+		dev_err(dev, "failed to register phy provider\n");
+		return PTR_ERR(phy_provider);
+	}
 
-	return PTR_ERR_OR_ZERO(phy_provider);
+	drv_data->individual_init(priv);
+
+	return 0;
 }
 
 static struct platform_driver rk_dphy_driver = {
-- 
2.33.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75943ECAAA1
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Sep 2022 16:46:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BK7oY51Hi+Q2jC8fMtJBRPfc8y3p/S4fQMIhNxNlgFI=; b=LHhKQvUEEYO3gI
	EQYSVH48mpGO1N4Cesio8GOhD2cUZ4DvpSSXs/OuTCHagWBMs34yNJRlrYJD21a5WivXBqyVSCOkD
	xyw13XKbz0G5U/YkXdaaUjZZvCWLaItYzHC/Zri+388dH0297Ig2kSCijyAEaVEQMd8CNF/0QLLJ+
	dal7TS6hCTTkwSMrGr8kzXUuK8qszQvM8cDK2rxnk7rF7Diu5NQXtzNcNdvyiY0lPQh1U9MND/O7a
	9b1ZyDc6dVaNQmn/ZFFVm0buXErRHck5wA4C6/3XObs6G7p0KQ23tYXY+MH0+SCV1j++ypEW2n+Z8
	5041KBoa3iv/3wK39xuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaJui-00Cyfi-Ei; Mon, 19 Sep 2022 16:46:32 +0000
Received: from mail-oa1-x33.google.com ([2001:4860:4864:20::33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaJuc-00CyYo-Hc; Mon, 19 Sep 2022 16:46:28 +0000
Received: by mail-oa1-x33.google.com with SMTP id 586e51a60fabf-12803ac8113so213017fac.8;
        Mon, 19 Sep 2022 09:46:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=fe6HvVKwh0Wgmxsl6dVnQs9jKitUcJBzFCeDUV+upNI=;
        b=ilNDplppFD3s3G9hEgTli9DQUHtlkfqw24TbNSo+i9F6tJtXSOzgIH7zqVnhlLxUAl
         opj4tfFZJIGrZ+bUCj4MKDxiF0gOSz/sveEMx8X0jRpS2DhBlvT5sl2DudKG+hcWw7a9
         oIWENJFNb6/XCefmGpaLjENZcs5cVTQIxIYgyXLPvFEbZoy7sMSevuC0MEN6JDXO8xwc
         LJJA2CyByZUpeS/eQhLxb+f7KH3LoIgit6mUnHDEVcm4ABv/Xcgg8P0JqmmPjupVjq6c
         caQ0973gMQ7QFMgwxnhEeVOulxlrKI/KNeuCWMxH8GwSm8If8YgAZwdh8e5vp/iAllnP
         c1LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=fe6HvVKwh0Wgmxsl6dVnQs9jKitUcJBzFCeDUV+upNI=;
        b=Jl9HBTKBWUllULmhvDCO6nzH/Fuhea7qBLMjdexK/pSf93KdRwxEBa9L9qyika4Zvq
         7lMtXi8h5GsetrLT6JL28kmxaxD2zrFo11/BvZRs5Lsh+2O+FFVPnwgmuuAy9ljqVn5L
         G4K2Arh0I70jcRrzE89KkQfxulreckP9WMKWyf2zV8JGeLQBGTCSNu13deEQVImYfeMt
         FRQ6QOYDsx3+wUdo8sH2RtCQ6ixtX53WSJIJRuYkWdSNBHYzoRoQs8uB6//Wpu7E/KSE
         0uyp72qn5kWfjj9nbxvZs3hg+0KU7jPsM4oatg5/1ziuz6NE/xAVViAPE80/vF4pxtpu
         q2ng==
X-Gm-Message-State: ACrzQf2W0yzls0F3bDuQ01aXRUpG4XDZFMinS88Wk4ItTXkc/gXm3sat
	3VEsCjjy8O31LsPRyCVjxmHLLR5B64E=
X-Google-Smtp-Source: AMsMyM55YgBpjApoZx0sm8vLKZFNkGD8lB9qD7Fqm0Jc6P0sFmIWZ9TV+nJgMI03UlMchoePBqf3DA==
X-Received: by 2002:a05:6870:d147:b0:126:d4a4:e99d with SMTP id f7-20020a056870d14700b00126d4a4e99dmr10159460oac.149.1663605981002;
        Mon, 19 Sep 2022 09:46:21 -0700 (PDT)
Received: from wintermute.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id t184-20020a4a54c1000000b0044b0465bd07sm12501610ooa.20.2022.09.19.09.46.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Sep 2022 09:46:20 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org,
	jbx6244@gmail.com,
	cl@rock-chips.com,
	frank-w@public-files.de,
	s.hauer@pengutronix.de,
	michael.riesch@wolfvision.net,
	pgwipeout@gmail.com,
	heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	vkoul@kernel.org,
	kishon@ti.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V4 2/3] phy/rockchip: inno-dsidphy: Add support for rk3568
Date: Mon, 19 Sep 2022 11:46:15 -0500
Message-Id: <20220919164616.12492-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220919164616.12492-1-macroalpha82@gmail.com>
References: <20220919164616.12492-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_094626_614421_7B6ACAFA 
X-CRM114-Status: GOOD (  21.84  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the Rockchip RK3568 DSI-DPHY. Registers were taken from
the BSP kernel driver and wherever possible cross referenced with the
TRM.

Refactor the code to allow the different compatible strings to set
either a max 1GHz timing table (all existing hardware) or a max 2.5GHz
timing table (the new RK356x). This works (for me) on both an RK3326
(PX30) and a new RK3566 device.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../phy/rockchip/phy-rockchip-inno-dsidphy.c  | 204 ++++++++++++++----
 1 file changed, 158 insertions(+), 46 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c b/drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c
index 630e01b5c19b..2c5847faff63 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-dsidphy.c
@@ -84,9 +84,25 @@
 #define DATA_LANE_0_SKEW_PHASE_MASK		GENMASK(2, 0)
 #define DATA_LANE_0_SKEW_PHASE(x)		UPDATE(x, 2, 0)
 /* Analog Register Part: reg08 */
+#define PLL_POST_DIV_ENABLE_MASK		BIT(5)
+#define PLL_POST_DIV_ENABLE			BIT(5)
 #define SAMPLE_CLOCK_DIRECTION_MASK		BIT(4)
 #define SAMPLE_CLOCK_DIRECTION_REVERSE		BIT(4)
 #define SAMPLE_CLOCK_DIRECTION_FORWARD		0
+#define LOWFRE_EN_MASK				BIT(5)
+#define PLL_OUTPUT_FREQUENCY_DIV_BY_1		0
+#define PLL_OUTPUT_FREQUENCY_DIV_BY_2		1
+/* Analog Register Part: reg0b */
+#define CLOCK_LANE_VOD_RANGE_SET_MASK		GENMASK(3, 0)
+#define CLOCK_LANE_VOD_RANGE_SET(x)		UPDATE(x, 3, 0)
+#define VOD_MIN_RANGE				0x1
+#define VOD_MID_RANGE				0x3
+#define VOD_BIG_RANGE				0x7
+#define VOD_MAX_RANGE				0xf
+/* Analog Register Part: reg1E */
+#define PLL_MODE_SEL_MASK			GENMASK(6, 5)
+#define PLL_MODE_SEL_LVDS_MODE			0
+#define PLL_MODE_SEL_MIPI_MODE			BIT(5)
 /* Digital Register Part: reg00 */
 #define REG_DIG_RSTN_MASK			BIT(0)
 #define REG_DIG_RSTN_NORMAL			BIT(0)
@@ -102,20 +118,22 @@
 #define T_LPX_CNT_MASK				GENMASK(5, 0)
 #define T_LPX_CNT(x)				UPDATE(x, 5, 0)
 /* Clock/Data0/Data1/Data2/Data3 Lane Register Part: reg06 */
+#define T_HS_ZERO_CNT_HI_MASK			BIT(7)
+#define T_HS_ZERO_CNT_HI(x)			UPDATE(x, 7, 7)
 #define T_HS_PREPARE_CNT_MASK			GENMASK(6, 0)
 #define T_HS_PREPARE_CNT(x)			UPDATE(x, 6, 0)
 /* Clock/Data0/Data1/Data2/Data3 Lane Register Part: reg07 */
-#define T_HS_ZERO_CNT_MASK			GENMASK(5, 0)
-#define T_HS_ZERO_CNT(x)			UPDATE(x, 5, 0)
+#define T_HS_ZERO_CNT_LO_MASK			GENMASK(5, 0)
+#define T_HS_ZERO_CNT_LO(x)			UPDATE(x, 5, 0)
 /* Clock/Data0/Data1/Data2/Data3 Lane Register Part: reg08 */
 #define T_HS_TRAIL_CNT_MASK			GENMASK(6, 0)
 #define T_HS_TRAIL_CNT(x)			UPDATE(x, 6, 0)
 /* Clock/Data0/Data1/Data2/Data3 Lane Register Part: reg09 */
-#define T_HS_EXIT_CNT_MASK			GENMASK(4, 0)
-#define T_HS_EXIT_CNT(x)			UPDATE(x, 4, 0)
+#define T_HS_EXIT_CNT_LO_MASK			GENMASK(4, 0)
+#define T_HS_EXIT_CNT_LO(x)			UPDATE(x, 4, 0)
 /* Clock/Data0/Data1/Data2/Data3 Lane Register Part: reg0a */
-#define T_CLK_POST_CNT_MASK			GENMASK(3, 0)
-#define T_CLK_POST_CNT(x)			UPDATE(x, 3, 0)
+#define T_CLK_POST_CNT_LO_MASK			GENMASK(3, 0)
+#define T_CLK_POST_CNT_LO(x)			UPDATE(x, 3, 0)
 /* Clock/Data0/Data1/Data2/Data3 Lane Register Part: reg0c */
 #define LPDT_TX_PPI_SYNC_MASK			BIT(2)
 #define LPDT_TX_PPI_SYNC_ENABLE			BIT(2)
@@ -129,9 +147,13 @@
 #define T_CLK_PRE_CNT_MASK			GENMASK(3, 0)
 #define T_CLK_PRE_CNT(x)			UPDATE(x, 3, 0)
 /* Clock/Data0/Data1/Data2/Data3 Lane Register Part: reg10 */
+#define T_CLK_POST_CNT_HI_MASK			GENMASK(7, 6)
+#define T_CLK_POST_CNT_HI(x)			UPDATE(x, 7, 6)
 #define T_TA_GO_CNT_MASK			GENMASK(5, 0)
 #define T_TA_GO_CNT(x)				UPDATE(x, 5, 0)
 /* Clock/Data0/Data1/Data2/Data3 Lane Register Part: reg11 */
+#define T_HS_EXIT_CNT_HI_MASK			BIT(6)
+#define T_HS_EXIT_CNT_HI(x)			UPDATE(x, 6, 6)
 #define T_TA_SURE_CNT_MASK			GENMASK(5, 0)
 #define T_TA_SURE_CNT(x)			UPDATE(x, 5, 0)
 /* Clock/Data0/Data1/Data2/Data3 Lane Register Part: reg12 */
@@ -169,11 +191,23 @@
 #define DSI_PHY_STATUS		0xb0
 #define PHY_LOCK		BIT(0)
 
+enum phy_max_rate {
+	MAX_1GHZ,
+	MAX_2_5GHZ,
+};
+
+struct inno_video_phy_plat_data {
+	const struct inno_mipi_dphy_timing *inno_mipi_dphy_timing_table;
+	const unsigned int num_timings;
+	enum phy_max_rate max_rate;
+};
+
 struct inno_dsidphy {
 	struct device *dev;
 	struct clk *ref_clk;
 	struct clk *pclk_phy;
 	struct clk *pclk_host;
+	const struct inno_video_phy_plat_data *pdata;
 	void __iomem *phy_base;
 	void __iomem *host_base;
 	struct reset_control *rst;
@@ -200,6 +234,53 @@ enum {
 	REGISTER_PART_LVDS,
 };
 
+struct inno_mipi_dphy_timing {
+	unsigned long rate;
+	u8 lpx;
+	u8 hs_prepare;
+	u8 clk_lane_hs_zero;
+	u8 data_lane_hs_zero;
+	u8 hs_trail;
+};
+
+static const
+struct inno_mipi_dphy_timing inno_mipi_dphy_timing_table_max_1ghz[] = {
+	{ 110000000, 0x0, 0x20, 0x16, 0x02, 0x22},
+	{ 150000000, 0x0, 0x06, 0x16, 0x03, 0x45},
+	{ 200000000, 0x0, 0x18, 0x17, 0x04, 0x0b},
+	{ 250000000, 0x0, 0x05, 0x17, 0x05, 0x16},
+	{ 300000000, 0x0, 0x51, 0x18, 0x06, 0x2c},
+	{ 400000000, 0x0, 0x64, 0x19, 0x07, 0x33},
+	{ 500000000, 0x0, 0x20, 0x1b, 0x07, 0x4e},
+	{ 600000000, 0x0, 0x6a, 0x1d, 0x08, 0x3a},
+	{ 700000000, 0x0, 0x3e, 0x1e, 0x08, 0x6a},
+	{ 800000000, 0x0, 0x21, 0x1f, 0x09, 0x29},
+	{1000000000, 0x0, 0x09, 0x20, 0x09, 0x27},
+};
+
+static const
+struct inno_mipi_dphy_timing inno_mipi_dphy_timing_table_max_2_5ghz[] = {
+	{ 110000000, 0x02, 0x7f, 0x16, 0x02, 0x02},
+	{ 150000000, 0x02, 0x7f, 0x16, 0x03, 0x02},
+	{ 200000000, 0x02, 0x7f, 0x17, 0x04, 0x02},
+	{ 250000000, 0x02, 0x7f, 0x17, 0x05, 0x04},
+	{ 300000000, 0x02, 0x7f, 0x18, 0x06, 0x04},
+	{ 400000000, 0x03, 0x7e, 0x19, 0x07, 0x04},
+	{ 500000000, 0x03, 0x7c, 0x1b, 0x07, 0x08},
+	{ 600000000, 0x03, 0x70, 0x1d, 0x08, 0x10},
+	{ 700000000, 0x05, 0x40, 0x1e, 0x08, 0x30},
+	{ 800000000, 0x05, 0x02, 0x1f, 0x09, 0x30},
+	{1000000000, 0x05, 0x08, 0x20, 0x09, 0x30},
+	{1200000000, 0x06, 0x03, 0x32, 0x14, 0x0f},
+	{1400000000, 0x09, 0x03, 0x32, 0x14, 0x0f},
+	{1600000000, 0x0d, 0x42, 0x36, 0x0e, 0x0f},
+	{1800000000, 0x0e, 0x47, 0x7a, 0x0e, 0x0f},
+	{2000000000, 0x11, 0x64, 0x7a, 0x0e, 0x0b},
+	{2200000000, 0x13, 0x64, 0x7e, 0x15, 0x0b},
+	{2400000000, 0x13, 0x33, 0x7f, 0x15, 0x6a},
+	{2500000000, 0x15, 0x54, 0x7f, 0x15, 0x6a},
+};
+
 static inline struct inno_dsidphy *hw_to_inno(struct clk_hw *hw)
 {
 	return container_of(hw, struct inno_dsidphy, pll.hw);
@@ -290,31 +371,15 @@ static unsigned long inno_dsidphy_pll_calc_rate(struct inno_dsidphy *inno,
 static void inno_dsidphy_mipi_mode_enable(struct inno_dsidphy *inno)
 {
 	struct phy_configure_opts_mipi_dphy *cfg = &inno->dphy_cfg;
-	const struct {
-		unsigned long rate;
-		u8 hs_prepare;
-		u8 clk_lane_hs_zero;
-		u8 data_lane_hs_zero;
-		u8 hs_trail;
-	} timings[] = {
-		{ 110000000, 0x20, 0x16, 0x02, 0x22},
-		{ 150000000, 0x06, 0x16, 0x03, 0x45},
-		{ 200000000, 0x18, 0x17, 0x04, 0x0b},
-		{ 250000000, 0x05, 0x17, 0x05, 0x16},
-		{ 300000000, 0x51, 0x18, 0x06, 0x2c},
-		{ 400000000, 0x64, 0x19, 0x07, 0x33},
-		{ 500000000, 0x20, 0x1b, 0x07, 0x4e},
-		{ 600000000, 0x6a, 0x1d, 0x08, 0x3a},
-		{ 700000000, 0x3e, 0x1e, 0x08, 0x6a},
-		{ 800000000, 0x21, 0x1f, 0x09, 0x29},
-		{1000000000, 0x09, 0x20, 0x09, 0x27},
-	};
+	const struct inno_mipi_dphy_timing *timings;
 	u32 t_txbyteclkhs, t_txclkesc;
 	u32 txbyteclkhs, txclkesc, esc_clk_div;
 	u32 hs_exit, clk_post, clk_pre, wakeup, lpx, ta_go, ta_sure, ta_wait;
 	u32 hs_prepare, hs_trail, hs_zero, clk_lane_hs_zero, data_lane_hs_zero;
 	unsigned int i;
 
+	timings = inno->pdata->inno_mipi_dphy_timing_table;
+
 	inno_dsidphy_pll_calc_rate(inno, cfg->hs_clk_rate);
 
 	/* Select MIPI mode */
@@ -327,6 +392,13 @@ static void inno_dsidphy_mipi_mode_enable(struct inno_dsidphy *inno)
 			REG_FBDIV_HI_MASK, REG_FBDIV_HI(inno->pll.fbdiv));
 	phy_update_bits(inno, REGISTER_PART_ANALOG, 0x04,
 			REG_FBDIV_LO_MASK, REG_FBDIV_LO(inno->pll.fbdiv));
+	if (inno->pdata->max_rate == MAX_2_5GHZ) {
+		phy_update_bits(inno, REGISTER_PART_ANALOG, 0x08,
+				PLL_POST_DIV_ENABLE_MASK, PLL_POST_DIV_ENABLE);
+		phy_update_bits(inno, REGISTER_PART_ANALOG, 0x0b,
+				CLOCK_LANE_VOD_RANGE_SET_MASK,
+				CLOCK_LANE_VOD_RANGE_SET(VOD_MAX_RANGE));
+	}
 	/* Enable PLL and LDO */
 	phy_update_bits(inno, REGISTER_PART_ANALOG, 0x01,
 			REG_LDOPD_MASK | REG_PLLPD_MASK,
@@ -367,14 +439,6 @@ static void inno_dsidphy_mipi_mode_enable(struct inno_dsidphy *inno)
 	 */
 	clk_pre = DIV_ROUND_UP(cfg->clk_pre, BITS_PER_BYTE);
 
-	/*
-	 * The value of counter for HS Tlpx Time
-	 * Tlpx = Tpin_txbyteclkhs * (2 + value)
-	 */
-	lpx = DIV_ROUND_UP(cfg->lpx, t_txbyteclkhs);
-	if (lpx >= 2)
-		lpx -= 2;
-
 	/*
 	 * The value of counter for HS Tta-go
 	 * Tta-go for turnaround
@@ -394,13 +458,24 @@ static void inno_dsidphy_mipi_mode_enable(struct inno_dsidphy *inno)
 	 */
 	ta_wait = DIV_ROUND_UP(cfg->ta_get, t_txclkesc);
 
-	for (i = 0; i < ARRAY_SIZE(timings); i++)
+	for (i = 0; i < inno->pdata->num_timings; i++)
 		if (inno->pll.rate <= timings[i].rate)
 			break;
 
-	if (i == ARRAY_SIZE(timings))
+	if (i == inno->pdata->num_timings)
 		--i;
 
+	/*
+	 * The value of counter for HS Tlpx Time
+	 * Tlpx = Tpin_txbyteclkhs * (2 + value)
+	 */
+	if (inno->pdata->max_rate == MAX_1GHZ) {
+		lpx = DIV_ROUND_UP(cfg->lpx, t_txbyteclkhs);
+		if (lpx >= 2)
+			lpx -= 2;
+	} else
+		lpx = timings[i].lpx;
+
 	hs_prepare = timings[i].hs_prepare;
 	hs_trail = timings[i].hs_trail;
 	clk_lane_hs_zero = timings[i].clk_lane_hs_zero;
@@ -417,14 +492,23 @@ static void inno_dsidphy_mipi_mode_enable(struct inno_dsidphy *inno)
 				T_LPX_CNT(lpx));
 		phy_update_bits(inno, i, 0x06, T_HS_PREPARE_CNT_MASK,
 				T_HS_PREPARE_CNT(hs_prepare));
-		phy_update_bits(inno, i, 0x07, T_HS_ZERO_CNT_MASK,
-				T_HS_ZERO_CNT(hs_zero));
+		if (inno->pdata->max_rate == MAX_2_5GHZ)
+			phy_update_bits(inno, i, 0x06, T_HS_ZERO_CNT_HI_MASK,
+					T_HS_ZERO_CNT_HI(hs_zero >> 6));
+		phy_update_bits(inno, i, 0x07, T_HS_ZERO_CNT_LO_MASK,
+				T_HS_ZERO_CNT_LO(hs_zero));
 		phy_update_bits(inno, i, 0x08, T_HS_TRAIL_CNT_MASK,
 				T_HS_TRAIL_CNT(hs_trail));
-		phy_update_bits(inno, i, 0x09, T_HS_EXIT_CNT_MASK,
-				T_HS_EXIT_CNT(hs_exit));
-		phy_update_bits(inno, i, 0x0a, T_CLK_POST_CNT_MASK,
-				T_CLK_POST_CNT(clk_post));
+		if (inno->pdata->max_rate == MAX_2_5GHZ)
+			phy_update_bits(inno, i, 0x11, T_HS_EXIT_CNT_HI_MASK,
+					T_HS_EXIT_CNT_HI(hs_exit >> 5));
+		phy_update_bits(inno, i, 0x09, T_HS_EXIT_CNT_LO_MASK,
+				T_HS_EXIT_CNT_LO(hs_exit));
+		if (inno->pdata->max_rate == MAX_2_5GHZ)
+			phy_update_bits(inno, i, 0x10, T_CLK_POST_CNT_HI_MASK,
+					T_CLK_POST_CNT_HI(clk_post >> 4));
+		phy_update_bits(inno, i, 0x0a, T_CLK_POST_CNT_LO_MASK,
+				T_CLK_POST_CNT_LO(clk_post));
 		phy_update_bits(inno, i, 0x0e, T_CLK_PRE_CNT_MASK,
 				T_CLK_PRE_CNT(clk_pre));
 		phy_update_bits(inno, i, 0x0c, T_WAKEUP_CNT_HI_MASK,
@@ -452,8 +536,9 @@ static void inno_dsidphy_lvds_mode_enable(struct inno_dsidphy *inno)
 
 	/* Sample clock reverse direction */
 	phy_update_bits(inno, REGISTER_PART_ANALOG, 0x08,
-			SAMPLE_CLOCK_DIRECTION_MASK,
-			SAMPLE_CLOCK_DIRECTION_REVERSE);
+			SAMPLE_CLOCK_DIRECTION_MASK | LOWFRE_EN_MASK,
+			SAMPLE_CLOCK_DIRECTION_REVERSE |
+			PLL_OUTPUT_FREQUENCY_DIV_BY_1);
 
 	/* Select LVDS mode */
 	phy_update_bits(inno, REGISTER_PART_LVDS, 0x03,
@@ -473,6 +558,10 @@ static void inno_dsidphy_lvds_mode_enable(struct inno_dsidphy *inno)
 
 	msleep(20);
 
+	/* Select PLL mode */
+	phy_update_bits(inno, REGISTER_PART_ANALOG, 0x1e,
+			PLL_MODE_SEL_MASK, PLL_MODE_SEL_LVDS_MODE);
+
 	/* Reset LVDS digital logic */
 	phy_update_bits(inno, REGISTER_PART_LVDS, 0x00,
 			LVDS_DIGITAL_INTERNAL_RESET_MASK,
@@ -592,6 +681,18 @@ static const struct phy_ops inno_dsidphy_ops = {
 	.owner = THIS_MODULE,
 };
 
+static const struct inno_video_phy_plat_data max_1ghz_video_phy_plat_data = {
+	.inno_mipi_dphy_timing_table = inno_mipi_dphy_timing_table_max_1ghz,
+	.num_timings = ARRAY_SIZE(inno_mipi_dphy_timing_table_max_1ghz),
+	.max_rate = MAX_1GHZ,
+};
+
+static const struct inno_video_phy_plat_data max_2_5ghz_video_phy_plat_data = {
+	.inno_mipi_dphy_timing_table = inno_mipi_dphy_timing_table_max_2_5ghz,
+	.num_timings = ARRAY_SIZE(inno_mipi_dphy_timing_table_max_2_5ghz),
+	.max_rate = MAX_2_5GHZ,
+};
+
 static int inno_dsidphy_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -605,6 +706,7 @@ static int inno_dsidphy_probe(struct platform_device *pdev)
 		return -ENOMEM;
 
 	inno->dev = dev;
+	inno->pdata = of_device_get_match_data(inno->dev);
 	platform_set_drvdata(pdev, inno);
 
 	inno->phy_base = devm_platform_ioremap_resource(pdev, 0);
@@ -663,9 +765,19 @@ static int inno_dsidphy_remove(struct platform_device *pdev)
 }
 
 static const struct of_device_id inno_dsidphy_of_match[] = {
-	{ .compatible = "rockchip,px30-dsi-dphy", },
-	{ .compatible = "rockchip,rk3128-dsi-dphy", },
-	{ .compatible = "rockchip,rk3368-dsi-dphy", },
+	{
+		.compatible = "rockchip,px30-dsi-dphy",
+		.data = &max_1ghz_video_phy_plat_data,
+	}, {
+		.compatible = "rockchip,rk3128-dsi-dphy",
+		.data = &max_1ghz_video_phy_plat_data,
+	}, {
+		.compatible = "rockchip,rk3368-dsi-dphy",
+		.data = &max_1ghz_video_phy_plat_data,
+	}, {
+		.compatible = "rockchip,rk3568-dsi-dphy",
+		.data = &max_2_5ghz_video_phy_plat_data,
+	},
 	{}
 };
 MODULE_DEVICE_TABLE(of, inno_dsidphy_of_match);
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

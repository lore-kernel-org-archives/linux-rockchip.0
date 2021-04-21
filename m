Return-Path: <SRS0=pBh/=JS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1BAD5C433B4
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Apr 2021 20:05:18 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6B9C661426
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Apr 2021 20:05:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6B9C661426
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2wB06Ed+U5kamOKi57qFWryEBObM0t4X+fYxWDniGnE=; b=GvtOBodvnCS8lQHPzQYNyw+hi
	llFFwiCS2w7rzbZ2nyJ5HvkHca7qY2/YV8BJAGCmp0tS3GywrwLYmsgIU3Tin8mZrnHmOrzyJLeSo
	KgbZaEyCnGRGJsbd79VaakYNPa9lG/cLBo0Zx/PsHjgU2HTULm3liV6NXLBMHUhGMjanOTpJArPMJ
	b88Z5c0fcN7xkjdvbKC9vYRNysV1MsJthSUw5wO2SRbIEvKHwCksBbjo9E4Nw3Zjt9F9U33bh/QwG
	FiA56vq0peb5ByO26iN4EjnTKn3iFratKpW7dXV+6OxGjD7Ghln2XEzvce28Q+WoSfgbuA3AUpwFN
	s/qSMGHJA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZJ5y-00F5Nq-Nk; Wed, 21 Apr 2021 20:05:10 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZJ5r-00F5ND-VX
 for linux-rockchip@desiato.infradead.org; Wed, 21 Apr 2021 20:05:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=nGyI/3+eGc/0fVF2768OqGBNCvdY/HUFTfH/PTo91bs=; b=PxDXAzy05XveAmbutO18/m+0jB
 Ts+CYIEuqS9zHgPMg8INuLExeIuVnuvlveQfVQBSgY0h9Bznw6cg7vBhhN4tJvPDpXuz9lh8scxjK
 vG1HzsgU+vn0TvHEeAO3ntT1j8c7lLAC2W1ib9GFas4EXa5IOiv1YhcPpfLQ0rRqbfM9zYN7YfnVa
 3muJRzdTo5s/CwfSXdCPGobwxdRXL9UCovc2XYnBP24KGWlO23CMaXimsRN4Xn8e0o/cM/43tkdLI
 9rQAiqfbTUbKrRgTdB67qorByx5/BWa/z3EKGnxwNCRoU0sM3GLDtpL7G2M5kgtQuypgb7Mb6IXA3
 U+EMfE9A==;
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZJ5p-00D9pC-2M
 for linux-rockchip@lists.infradead.org; Wed, 21 Apr 2021 20:05:02 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 1F8631F42306
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Kever Yang <kever.yang@rock-chips.com>,
 Elaine Zhang <zhangqing@rock-chips.com>, Zhang Rui <rui.zhang@intel.com>,
 Finley Xiao <finley.xiao@rock-chips.com>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>
Subject: [PATCH 2/2] thermal/rockchip: Support RK3568 SoCs in the thermal
 driver
Date: Wed, 21 Apr 2021 17:04:45 -0300
Message-Id: <20210421200445.32977-2-ezequiel@collabora.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210421200445.32977-1-ezequiel@collabora.com>
References: <20210421200445.32977-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210421_130501_400265_FA49E4AF 
X-CRM114-Status: GOOD (  13.58  )
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

From: Finley Xiao <finley.xiao@rock-chips.com>

The RK3568 SoCs have two Temperature Sensors, channel 0 is for CPU,
channel 1 is for GPU.

Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
---
 drivers/thermal/rockchip_thermal.c | 107 +++++++++++++++++++++++++++++
 1 file changed, 107 insertions(+)

diff --git a/drivers/thermal/rockchip_thermal.c b/drivers/thermal/rockchip_thermal.c
index aa9e0e31ef98..8e26f2685003 100644
--- a/drivers/thermal/rockchip_thermal.c
+++ b/drivers/thermal/rockchip_thermal.c
@@ -211,7 +211,11 @@ struct rockchip_thermal_data {
 #define TSADCV3_AUTO_PERIOD_TIME		1875 /* 2.5ms */
 #define TSADCV3_AUTO_PERIOD_HT_TIME		1875 /* 2.5ms */
 
+#define TSADCV5_AUTO_PERIOD_TIME		1622 /* 2.5ms */
+#define TSADCV5_AUTO_PERIOD_HT_TIME		1622 /* 2.5ms */
+
 #define TSADCV2_USER_INTER_PD_SOC		0x340 /* 13 clocks */
+#define TSADCV5_USER_INTER_PD_SOC		0xfc0 /* 97us, at least 90us */
 
 #define GRF_SARADC_TESTBIT			0x0e644
 #define GRF_TSADC_TESTBIT_L			0x0e648
@@ -219,6 +223,12 @@ struct rockchip_thermal_data {
 
 #define PX30_GRF_SOC_CON2			0x0408
 
+#define RK3568_GRF_TSADC_CON			0x0600
+#define RK3568_GRF_TSADC_ANA_REG0		(0x10001 << 0)
+#define RK3568_GRF_TSADC_ANA_REG1		(0x10001 << 1)
+#define RK3568_GRF_TSADC_ANA_REG2		(0x10001 << 2)
+#define RK3568_GRF_TSADC_TSEN			(0x10001 << 8)
+
 #define GRF_SARADC_TESTBIT_ON			(0x10001 << 2)
 #define GRF_TSADC_TESTBIT_H_ON			(0x10001 << 2)
 #define GRF_TSADC_VCM_EN_L			(0x10001 << 7)
@@ -474,6 +484,45 @@ static const struct tsadc_table rk3399_code_table[] = {
 	{TSADCV3_DATA_MASK, 125000},
 };
 
+static const struct tsadc_table rk3568_code_table[] = {
+	{0, -40000},
+	{1584, -40000},
+	{1620, -35000},
+	{1652, -30000},
+	{1688, -25000},
+	{1720, -20000},
+	{1756, -15000},
+	{1788, -10000},
+	{1824, -5000},
+	{1856, 0},
+	{1892, 5000},
+	{1924, 10000},
+	{1956, 15000},
+	{1992, 20000},
+	{2024, 25000},
+	{2060, 30000},
+	{2092, 35000},
+	{2128, 40000},
+	{2160, 45000},
+	{2196, 50000},
+	{2228, 55000},
+	{2264, 60000},
+	{2300, 65000},
+	{2332, 70000},
+	{2368, 75000},
+	{2400, 80000},
+	{2436, 85000},
+	{2468, 90000},
+	{2500, 95000},
+	{2536, 100000},
+	{2572, 105000},
+	{2604, 110000},
+	{2636, 115000},
+	{2672, 120000},
+	{2704, 125000},
+	{TSADCV2_DATA_MASK, 125000},
+};
+
 static u32 rk_tsadcv2_temp_to_code(const struct chip_tsadc_table *table,
 				   int temp)
 {
@@ -701,6 +750,35 @@ static void rk_tsadcv4_initialize(struct regmap *grf, void __iomem *regs,
 	regmap_write(grf, PX30_GRF_SOC_CON2, GRF_CON_TSADC_CH_INV);
 }
 
+static void rk_tsadcv7_initialize(struct regmap *grf, void __iomem *regs,
+				  enum tshut_polarity tshut_polarity)
+{
+	writel_relaxed(TSADCV5_USER_INTER_PD_SOC, regs + TSADCV2_USER_CON);
+	writel_relaxed(TSADCV5_AUTO_PERIOD_TIME, regs + TSADCV2_AUTO_PERIOD);
+	writel_relaxed(TSADCV2_HIGHT_INT_DEBOUNCE_COUNT,
+		       regs + TSADCV2_HIGHT_INT_DEBOUNCE);
+	writel_relaxed(TSADCV5_AUTO_PERIOD_HT_TIME,
+		       regs + TSADCV2_AUTO_PERIOD_HT);
+	writel_relaxed(TSADCV2_HIGHT_TSHUT_DEBOUNCE_COUNT,
+		       regs + TSADCV2_HIGHT_TSHUT_DEBOUNCE);
+
+	if (tshut_polarity == TSHUT_HIGH_ACTIVE)
+		writel_relaxed(0U | TSADCV2_AUTO_TSHUT_POLARITY_HIGH,
+			       regs + TSADCV2_AUTO_CON);
+	else
+		writel_relaxed(0U & ~TSADCV2_AUTO_TSHUT_POLARITY_HIGH,
+			       regs + TSADCV2_AUTO_CON);
+
+	if (!IS_ERR(grf)) {
+		regmap_write(grf, RK3568_GRF_TSADC_CON, RK3568_GRF_TSADC_TSEN);
+		udelay(15);
+		regmap_write(grf, RK3568_GRF_TSADC_CON, RK3568_GRF_TSADC_ANA_REG0);
+		regmap_write(grf, RK3568_GRF_TSADC_CON, RK3568_GRF_TSADC_ANA_REG1);
+		regmap_write(grf, RK3568_GRF_TSADC_CON, RK3568_GRF_TSADC_ANA_REG2);
+		usleep_range(100, 200);
+	}
+}
+
 static void rk_tsadcv2_irq_ack(void __iomem *regs)
 {
 	u32 val;
@@ -1027,6 +1105,31 @@ static const struct rockchip_tsadc_chip rk3399_tsadc_data = {
 	},
 };
 
+static const struct rockchip_tsadc_chip rk3568_tsadc_data = {
+	.chn_id[SENSOR_CPU] = 0, /* cpu sensor is channel 0 */
+	.chn_id[SENSOR_GPU] = 1, /* gpu sensor is channel 1 */
+	.chn_num = 2, /* two channels for tsadc */
+
+	.tshut_mode = TSHUT_MODE_GPIO, /* default TSHUT via GPIO give PMIC */
+	.tshut_polarity = TSHUT_LOW_ACTIVE, /* default TSHUT LOW ACTIVE */
+	.tshut_temp = 95000,
+
+	.initialize = rk_tsadcv7_initialize,
+	.irq_ack = rk_tsadcv3_irq_ack,
+	.control = rk_tsadcv3_control,
+	.get_temp = rk_tsadcv2_get_temp,
+	.set_alarm_temp = rk_tsadcv2_alarm_temp,
+	.set_tshut_temp = rk_tsadcv2_tshut_temp,
+	.set_tshut_mode = rk_tsadcv2_tshut_mode,
+
+	.table = {
+		.id = rk3568_code_table,
+		.length = ARRAY_SIZE(rk3568_code_table),
+		.data_mask = TSADCV2_DATA_MASK,
+		.mode = ADC_INCREMENT,
+	},
+};
+
 static const struct of_device_id of_rockchip_thermal_match[] = {
 	{	.compatible = "rockchip,px30-tsadc",
 		.data = (void *)&px30_tsadc_data,
@@ -1059,6 +1162,10 @@ static const struct of_device_id of_rockchip_thermal_match[] = {
 		.compatible = "rockchip,rk3399-tsadc",
 		.data = (void *)&rk3399_tsadc_data,
 	},
+	{
+		.compatible = "rockchip,rk3568-tsadc",
+		.data = (void *)&rk3568_tsadc_data,
+	},
 	{ /* end */ },
 };
 MODULE_DEVICE_TABLE(of, of_rockchip_thermal_match);
-- 
2.30.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1E69C77B7A
	for <linux-rockchip@archiver.kernel.org>; Sat,  3 Jun 2023 18:54:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=adkEj7OUm5hiy8LDOVPQWAlaT8pbmR/B7xUHIFUTqc0=; b=TBXt83iEzVW3WL
	IrjeS1bl0J+c64kZqeMS+JrCCSJn9AEjVk4mCi0N6FI1RJVsdZQypqGeHLtLjgcgHnn9GOrEjW3x/
	VwQ3f4k8UzQF7uvADf24LNes+Zc0ZgllIzN8JM5Faw3KsGVkVZe9gnh4VEyZLl8xQgvlR3HXZMQHN
	IodSsk+/opHHE/hknErOW8qisdUnssFew7040iQJ9IQ4XcXpbHtc0FsDM85Y5U4b+dTJbTgwZYq0z
	AKXhJgLjXcoVbEs5IQ0TCtPLpUJNvtbgxq9f4sx47MbAvv4bEMQL8BAPgX52p07qNrmw9EDFVHrkT
	zAQZYh1CR6mkwaXY71Dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q5WOd-00ALww-2K;
	Sat, 03 Jun 2023 18:54:39 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q5WOZ-00ALuL-1j;
	Sat, 03 Jun 2023 18:54:37 +0000
Received: from localhost.localdomain (unknown [IPv6:2405:201:0:21ea:e49:10dd:40c0:e842])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: shreeya)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 1E84D6603147;
	Sat,  3 Jun 2023 19:54:29 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1685818474;
	bh=5qal4yReBLe0r8IINy7OGXm+hpHMLxOtRFTpvqe4d8o=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=mpZaRIylG+JEVf4lXivK3l3Y2PgZQLThn9aewLTwnggkUKqVX2+/ms9MAn+EXm87G
	 1jcUNMeBXCmRO+HJoH41W67jPPrth3d1aTY3gNbuOF2pm5k6UmHlMfSnfi/UaHU244
	 nof49j+6GwwhuYH4tpD8jtMqRxaYVvDldSNraj+/JbMQZwgDi06f1PcFCpltxMZhie
	 fGDXXGRw3IqX4UakQB3cG4Z6IghptSHb4Yl8H5O85k8gyex3P3QFaqNkvRkaidyFMG
	 qWWoHq5t8D6FBvBeox5xLifhulAkkdOWM4Duc8kwQzpebMLMzCeb1Er+/LdU2Q8yPJ
	 5QWAQRIOVuJIg==
From: Shreeya Patel <shreeya.patel@collabora.com>
To: jic23@kernel.org,
	lars@metafoo.de,
	heiko@sntech.de,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	sebastian.reichel@collabora.com
Cc: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	gustavo.padovan@collabora.com,
	kernel@collabora.com,
	serge.broslavsky@collabora.com,
	Shreeya Patel <shreeya.patel@collabora.com>,
	Simon Xue <xxm@rock-chips.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Subject: [PATCH v3 2/8] iio: adc: rockchip_saradc: Add support for RK3588
Date: Sun,  4 Jun 2023 00:23:34 +0530
Message-Id: <20230603185340.13838-3-shreeya.patel@collabora.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230603185340.13838-1-shreeya.patel@collabora.com>
References: <20230603185340.13838-1-shreeya.patel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230603_115435_832316_FF715134 
X-CRM114-Status: GOOD (  16.03  )
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

From: Simon Xue <xxm@rock-chips.com>

Add new start and read functions to support rk3588 device.
Also, add a device compatible string for the same.

Signed-off-by: Simon Xue <xxm@rock-chips.com>
Signed-off-by: Shreeya Patel <shreeya.patel@collabora.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---

Changes in v3
  - Add bitfield.h header file.
  - Add a Reviewed-by tag.

Changes in v2
  - Add a from address.
  - Create separate patches for adding new device support and changes to
    the old device code.
  - Make use of FIELD_PREP.


 drivers/iio/adc/rockchip_saradc.c | 70 +++++++++++++++++++++++++++++++
 1 file changed, 70 insertions(+)

diff --git a/drivers/iio/adc/rockchip_saradc.c b/drivers/iio/adc/rockchip_saradc.c
index 21f9d92a6af4..312286ec91dc 100644
--- a/drivers/iio/adc/rockchip_saradc.c
+++ b/drivers/iio/adc/rockchip_saradc.c
@@ -4,6 +4,7 @@
  * Copyright (C) 2014 ROCKCHIP, Inc.
  */
 
+#include <linux/bitfield.h>
 #include <linux/module.h>
 #include <linux/mutex.h>
 #include <linux/platform_device.h>
@@ -38,6 +39,22 @@
 #define SARADC_TIMEOUT			msecs_to_jiffies(100)
 #define SARADC_MAX_CHANNELS		8
 
+/* v2 registers */
+#define SARADC2_CONV_CON		0x0
+#define SARADC_T_PD_SOC			0x4
+#define SARADC_T_DAS_SOC		0xc
+#define SARADC2_END_INT_EN		0x104
+#define SARADC2_ST_CON			0x108
+#define SARADC2_STATUS			0x10c
+#define SARADC2_END_INT_ST		0x110
+#define SARADC2_DATA_BASE		0x120
+
+#define SARADC2_EN_END_INT		BIT(0)
+#define SARADC2_START			BIT(4)
+#define SARADC2_SINGLE_MODE		BIT(5)
+
+#define SARADC2_CONV_CHANNELS GENMASK(15, 0)
+
 struct rockchip_saradc;
 
 struct rockchip_saradc_data {
@@ -76,6 +93,25 @@ static void rockchip_saradc_start_v1(struct rockchip_saradc *info, int chn)
 	       SARADC_CTRL_IRQ_ENABLE, info->regs + SARADC_CTRL);
 }
 
+static void rockchip_saradc_start_v2(struct rockchip_saradc *info, int chn)
+{
+	int val;
+
+	if (info->reset)
+		rockchip_saradc_reset_controller(info->reset);
+
+	writel_relaxed(0xc, info->regs + SARADC_T_DAS_SOC);
+	writel_relaxed(0x20, info->regs + SARADC_T_PD_SOC);
+	val = FIELD_PREP(SARADC2_EN_END_INT, 1);
+	val |= val << 16;
+	writel_relaxed(val, info->regs + SARADC2_END_INT_EN);
+	val = FIELD_PREP(SARADC2_START, 1) |
+	      FIELD_PREP(SARADC2_SINGLE_MODE, 1) |
+	      FIELD_PREP(SARADC2_CONV_CHANNELS, chn);
+	val |= val << 16;
+	writel(val, info->regs + SARADC2_CONV_CON);
+}
+
 static void rockchip_saradc_start(struct rockchip_saradc *info, int chn)
 {
 	info->data->start(info, chn);
@@ -86,6 +122,18 @@ static int rockchip_saradc_read_v1(struct rockchip_saradc *info)
 	return readl_relaxed(info->regs + SARADC_DATA);
 }
 
+static int rockchip_saradc_read_v2(struct rockchip_saradc *info)
+{
+	int offset;
+
+	/* Clear irq */
+	writel_relaxed(0x1, info->regs + SARADC2_END_INT_ST);
+
+	offset = SARADC2_DATA_BASE + info->last_chan->channel * 0x4;
+
+	return readl_relaxed(info->regs + offset);
+}
+
 static int rockchip_saradc_read(struct rockchip_saradc *info)
 {
 	return info->data->read(info);
@@ -248,6 +296,25 @@ static const struct rockchip_saradc_data rk3568_saradc_data = {
 	.power_down = rockchip_saradc_power_down_v1,
 };
 
+static const struct iio_chan_spec rockchip_rk3588_saradc_iio_channels[] = {
+	SARADC_CHANNEL(0, "adc0", 12),
+	SARADC_CHANNEL(1, "adc1", 12),
+	SARADC_CHANNEL(2, "adc2", 12),
+	SARADC_CHANNEL(3, "adc3", 12),
+	SARADC_CHANNEL(4, "adc4", 12),
+	SARADC_CHANNEL(5, "adc5", 12),
+	SARADC_CHANNEL(6, "adc6", 12),
+	SARADC_CHANNEL(7, "adc7", 12),
+};
+
+static const struct rockchip_saradc_data rk3588_saradc_data = {
+	.channels = rockchip_rk3588_saradc_iio_channels,
+	.num_channels = ARRAY_SIZE(rockchip_rk3588_saradc_iio_channels),
+	.clk_rate = 1000000,
+	.start = rockchip_saradc_start_v2,
+	.read = rockchip_saradc_read_v2,
+};
+
 static const struct of_device_id rockchip_saradc_match[] = {
 	{
 		.compatible = "rockchip,saradc",
@@ -261,6 +328,9 @@ static const struct of_device_id rockchip_saradc_match[] = {
 	}, {
 		.compatible = "rockchip,rk3568-saradc",
 		.data = &rk3568_saradc_data,
+	}, {
+		.compatible = "rockchip,rk3588-saradc",
+		.data = &rk3588_saradc_data,
 	},
 	{},
 };
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

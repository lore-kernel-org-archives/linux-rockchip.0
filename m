Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7834CF2594
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Oct 2024 10:47:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rx71Hi2K/bVCQbk7BKcjYJShsMksuU5H09l8NQcyJJU=; b=kox0INYVo+s13J
	MYkMQzHN0kXtYpqEaqRAPjPy46PaFldMPuDipX/s/OnPi9HeZRAU8aAYWK9hKsh9+qs6MRRDQ6yAg
	qwcJQzCL4NYLb+u1Dx7ZpriIoZUHHFmCAfdkdnukTeOOneTGt9YdLEAOm/Uja0o8Xo2zF67jQbMHc
	M/2ysLchpM7KCdl6bsEAGWeVyM/FM8BvTQC/4gRTMDYOUvDFy6KRwxv2s49oEnUcdomGWS+U9aLra
	sRlCl1k5EyfTAtW39FxHaMm8WLWwAq60+yOwEvgyJylV/iU72oYi3cGe3aHZPSms4j6+i/3+kK2xx
	q+wu3ellz1yLbxDWX7yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0Ic2-00000004kAh-0NC8;
	Mon, 14 Oct 2024 10:47:42 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0IYK-00000004jD6-0K33;
	Mon, 14 Oct 2024 10:43:55 +0000
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1728902629;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=5ZNAPlbASWAkNDdmTnghKvANDJ6bL58Kr9lbnrNo7dk=;
	b=dOvYlM1iWj/jRzuKuXPGVNVZ0ULQJeOK1G2ZF2LevpQIm8/+GUQsG24gWbUs+RBCl0uVA1
	5ggpUrY6Uqa9AU4k76TzkrUFegOLNz1/gzwr//G/gmflZ9DRkAODZJeFAQMltqdqEZX90o
	9xGnjrFFQkvrNbjKZ+uQ7fJe2dVDkv018I/16Ktr3CZ3XGNReR4U5T66wSSYJjosSoLwYh
	O0aHCfCS1TQpYte5bT8c9rz/NksjCblApv0pzdZ5OlXi2qPZg2y8NPzoYZxyqhV8wTDsHF
	/Ocn5KA2TqMy9YUJzhg9u8t/jr9onaFIaXYYip0vrtxoo1OySaOixI3rDLXvdQ==
To: lgirdwood@gmail.com,
	broonie@kernel.org
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/3] regulator: rk808: Perform trivial code cleanups
Date: Mon, 14 Oct 2024 12:43:39 +0200
Message-Id: <ac44aefcc7b3adbd8dcc5654a5ef8c493ce21ea0.1728902488.git.dsimic@manjaro.org>
In-Reply-To: <cover.1728902488.git.dsimic@manjaro.org>
References: <cover.1728902488.git.dsimic@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_034352_458548_F784D022 
X-CRM114-Status: GOOD (  12.38  )
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

Perform a few trivial code cleanups, to improve the accuracy and wording of
a couple of comments and the module description, and to avoid line wrapping
in a few places by using the 100-column width a bit better.

No intended functional changes are introduced by these code cleanups.

Signed-off-by: Dragan Simic <dsimic@manjaro.org>
---
 drivers/regulator/rk808-regulator.c | 17 +++++++----------
 1 file changed, 7 insertions(+), 10 deletions(-)

diff --git a/drivers/regulator/rk808-regulator.c b/drivers/regulator/rk808-regulator.c
index 14b60abd6afc..e81dbb14a29e 100644
--- a/drivers/regulator/rk808-regulator.c
+++ b/drivers/regulator/rk808-regulator.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /*
- * Regulator driver for Rockchip RK805/RK808/RK818
+ * Regulator driver for Rockchip RK80x and RK81x PMIC series
  *
  * Copyright (c) 2014, Fuzhou Rockchip Electronics Co., Ltd
  * Copyright (c) 2021 Rockchip Electronics Co., Ltd.
@@ -23,7 +23,7 @@
 #include <linux/regulator/of_regulator.h>
 #include <linux/gpio/consumer.h>
 
-/* Field Definitions */
+/* Field definitions */
 #define RK808_BUCK_VSEL_MASK	0x3f
 #define RK808_BUCK4_VSEL_MASK	0xf
 #define RK808_LDO_VSEL_MASK	0x1f
@@ -1829,36 +1829,33 @@ static const struct regulator_desc rk818_reg[] = {
 		RK818_DCDC_EN_REG, BIT(7)),
 };
 
-static int rk808_regulator_dt_parse_pdata(struct device *dev,
-				   struct regmap *map,
-				   struct rk808_regulator_data *pdata)
+static int rk808_regulator_dt_parse_pdata(struct device *dev, struct regmap *map,
+					  struct rk808_regulator_data *pdata)
 {
 	struct device_node *np;
 	int tmp, ret = 0, i;
 
 	np = of_get_child_by_name(dev->of_node, "regulators");
 	if (!np)
 		return -ENXIO;
 
 	for (i = 0; i < ARRAY_SIZE(pdata->dvs_gpio); i++) {
 		pdata->dvs_gpio[i] =
-			devm_gpiod_get_index_optional(dev, "dvs", i,
-						      GPIOD_OUT_LOW);
+			devm_gpiod_get_index_optional(dev, "dvs", i, GPIOD_OUT_LOW);
 		if (IS_ERR(pdata->dvs_gpio[i])) {
 			ret = PTR_ERR(pdata->dvs_gpio[i]);
 			dev_err(dev, "failed to get dvs%d gpio (%d)\n", i, ret);
 			goto dt_parse_end;
 		}
 
 		if (!pdata->dvs_gpio[i]) {
 			dev_info(dev, "there is no dvs%d gpio\n", i);
 			continue;
 		}
 
 		tmp = i ? RK808_DVS2_POL : RK808_DVS1_POL;
 		ret = regmap_update_bits(map, RK808_IO_POL_REG, tmp,
-				gpiod_is_active_low(pdata->dvs_gpio[i]) ?
-				0 : tmp);
+					 gpiod_is_active_low(pdata->dvs_gpio[i]) ? 0 : tmp);
 	}
 
 dt_parse_end:
@@ -1954,7 +1951,7 @@ static struct platform_driver rk808_regulator_driver = {
 
 module_platform_driver(rk808_regulator_driver);
 
-MODULE_DESCRIPTION("regulator driver for the RK805/RK808/RK818 series PMICs");
+MODULE_DESCRIPTION("Rockchip RK80x/RK81x PMIC series regulator driver");
 MODULE_AUTHOR("Tony xie <tony.xie@rock-chips.com>");
 MODULE_AUTHOR("Chris Zhong <zyw@rock-chips.com>");
 MODULE_AUTHOR("Zhang Qing <zhangqing@rock-chips.com>");

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

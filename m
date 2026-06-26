Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8384C43211
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Jun 2026 16:15:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1kUKDsfxtNmCzAC5U0nIdalvC0oJptUI4RPdBFQiDoc=; b=IcMrNoi4DmsOU5
	6h2adt1TJizPetwuZ97/Ou1zgZPqpk+bfLtjNNTKcMZUIxBnr5Gv/6F4Y7srobc2zDFdmPQVHfJ2j
	xQ+Zscdrc1G9k0y3pNfAG+M8jdfFetKrJ8DuhbLHUI+7OVALsCziaoY2zjOJcuNUQwfGJiZ/XkSd8
	CPQqmYoj2go7SpAAehZl/mbKKJHGT2MlEiM3Y4MQ6ZIUPqLYWT+zMpygfbJeyZUInEgQ0HdKyieZL
	FKOFwS+UVIMZ6AvaujuB+WRHTCcutnTLq6XE/fvS4FeYuDMDN5iGDib+cMN1jAewapbuZxBvHP5X6
	l82H3Y5m5tPypSSB62Cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd9Ck-0000000Bbcg-3Dmc;
	Fri, 26 Jun 2026 16:14:58 +0000
Received: from mail-ot1-x32c.google.com ([2607:f8b0:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd9Cj-0000000BbbH-0E8x
	for linux-rockchip@lists.infradead.org;
	Fri, 26 Jun 2026 16:14:58 +0000
Received: by mail-ot1-x32c.google.com with SMTP id 46e09a7af769-7e6d37b7098so1269208a34.0
        for <linux-rockchip@lists.infradead.org>; Fri, 26 Jun 2026 09:14:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782490496; x=1783095296; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MdGvXpxhZV3aMifO6F6NzYEcuT1/loZxmdAdWZDr/EU=;
        b=QB1CsT9hZ12AfUkmPZtaxPgAWPWpWfBH8MHdESlR9lmxnHlFzg/mHS7Ncw0+66neY5
         gVqF0scFwSIL1QNOP+HIFK2oX8EXnz5ndjW8F37ZGgjpvJhVDCHYTgMEkKmTlvj/tvt1
         kndiMpKNRczNdnRa4dtCNxaglSZB9prwuTXWgei0RJdocpCJTiTaPy0lkKVEheFBi/hS
         OcUdo1iJwSfaJx2v3chMZwPPLNud/o5PX69BZQ4MGqfmXvszFaSPtfFq08COe8/9iRhy
         FLbFkGgGPNplsJfRHcdUyo9y0oxOZPSBFzrFGEtGWBM9bQrWonEhbnw/5iOZGH7mrJGi
         XULA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782490496; x=1783095296;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=MdGvXpxhZV3aMifO6F6NzYEcuT1/loZxmdAdWZDr/EU=;
        b=eN/k0f1bT4toz03UNAI4tdPWEV959fnY6ykCo7WCjMAlOtzamg+jZAb0OFMp4Z2npq
         p58CpPDdaSYBkFIdYQgKXL5SHc9s5oQLxRDqtip3jATtG6jv1BFCxMK+AnhgPR4Rn04n
         BoIDIv8/jdqakJe7ds2pq1+oc3WgRHxgEvFp4p/yU8b27XpDFaDdHdXgdUcoa6APTgjL
         Mj30ghsSy2Cwoj/FJCv9OrwjkLXztNRMQd6bXT+BGpGD5ZMMuEBSeIRhsoymJ/x/K9eB
         0tToFt9ES4CTIYl0nRfSuIAslzOIr7k6tAdrMH+vABlXqPSSzM7nUxdLHNWhDdQ45dlz
         opVA==
X-Forwarded-Encrypted: i=1; AFNElJ+36IwUmTYScVi70S2Dc/OMzsK40+Z767Y1yakpaeJ4QitmKwHpD4ZEJ8VVuRIEU9bZLl1ZM0tyED9oSXyMcw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxaLBvY99NCxBuf9dA/qB6E154UD55eCSdfszxPBoz+vVBYyn/m
	q7iDAoW+ZOM9IH/nQbDT0JgEEsRfMbwDXhOQjAfNh5nHbDL/WcTd8l81
X-Gm-Gg: AfdE7clRV24dSxKTudSNJGnR4Bcj9mCTCO8M1J8CyMyKOljcJ7Cnlk2UO8UawWg3U/e
	aG1vJs+XGdOCuoSYFTP8HYgXPsSEk+qwophdn87xm/sSHPa1xuRLHoe1lthSBlY1sBj77Q5uHvR
	gQFcQrbmuVazUHeNcDrJKf7cFQC1v4TCxvoPx8aIvkufX7tOsvkf2oo+8XHnTIckiXpjUPoNY4/
	WXg39FPEcw00+N/PrvoSkc9ySrmCxG0WjnAHKWWC5UWAD1+wwFYyyWNrMReg0qQty5RkGwzvhjD
	eDTrviWjA1JQk9cAUqvnFoUIT4PbpLV3JOSEbeKQWRMoJ27TUuXEthXkkRP9Gd3pkcSYqA4qfEq
	ieaObctz1yTg7HOSo6kgk+BTr6NalOJi6+tRIZ1QF8U0KscTZ6cUSK41kJyr5Xr66OTAHty77Gu
	tHyE5VIQCiyt4=
X-Received: by 2002:a05:6830:6e08:b0:7e9:b4d0:53a6 with SMTP id 46e09a7af769-7e9b4d06552mr658803a34.31.1782490496295;
        Fri, 26 Jun 2026 09:14:56 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7e9aa579235sm1970211a34.1.2026.06.26.09.14.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jun 2026 09:14:56 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-iio@vger.kernel.org
Cc: andy@kernel.org,
	nuno.sa@analog.com,
	dlechner@baylibre.com,
	jic23@kernel.org,
	jean-baptiste.maneyrol@tdk.com,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	andriy.shevchenko@intel.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V15 4/9] iio: imu: inv_icm42607: Add SPI For icm42607
Date: Fri, 26 Jun 2026 11:12:25 -0500
Message-ID: <20260626161230.93069-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260626161230.93069-1-macroalpha82@gmail.com>
References: <20260626161230.93069-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260626_091457_093218_4C91136B 
X-CRM114-Status: GOOD (  19.06  )
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

Add SPI driver support for InvenSense ICM-42607 devices.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 drivers/iio/imu/inv_icm42607/Kconfig          |  12 ++
 drivers/iio/imu/inv_icm42607/Makefile         |   3 +
 .../iio/imu/inv_icm42607/inv_icm42607_spi.c   | 107 ++++++++++++++++++
 3 files changed, 122 insertions(+)
 create mode 100644 drivers/iio/imu/inv_icm42607/inv_icm42607_spi.c

diff --git a/drivers/iio/imu/inv_icm42607/Kconfig b/drivers/iio/imu/inv_icm42607/Kconfig
index 083c212087ab..23f461f57afc 100644
--- a/drivers/iio/imu/inv_icm42607/Kconfig
+++ b/drivers/iio/imu/inv_icm42607/Kconfig
@@ -16,3 +16,15 @@ config INV_ICM42607_I2C
 
 	  This driver can be built as a module. The module will be called
 	  inv-icm42607-i2c.
+
+config INV_ICM42607_SPI
+	tristate "InvenSense ICM-42607 SPI driver"
+	depends on SPI_MASTER
+	select INV_ICM42607
+	select REGMAP_SPI
+	help
+	  This driver supports the InvenSense ICM-42607 motion tracking
+	  device over SPI.
+
+	  This driver can be built as a module. The module will be called
+	  inv-icm42607-spi.
diff --git a/drivers/iio/imu/inv_icm42607/Makefile b/drivers/iio/imu/inv_icm42607/Makefile
index 32046e2727d7..be109102e203 100644
--- a/drivers/iio/imu/inv_icm42607/Makefile
+++ b/drivers/iio/imu/inv_icm42607/Makefile
@@ -5,3 +5,6 @@ inv-icm42607-y += inv_icm42607_core.o
 
 obj-$(CONFIG_INV_ICM42607_I2C) += inv-icm42607-i2c.o
 inv-icm42607-i2c-y += inv_icm42607_i2c.o
+
+obj-$(CONFIG_INV_ICM42607_SPI) += inv-icm42607-spi.o
+inv-icm42607-spi-y += inv_icm42607_spi.o
diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_spi.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_spi.c
new file mode 100644
index 000000000000..6072ed7adc86
--- /dev/null
+++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_spi.c
@@ -0,0 +1,107 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (C) 2026 InvenSense, Inc.
+ */
+
+#include <linux/bitfield.h>
+#include <linux/dev_printk.h>
+#include <linux/err.h>
+#include <linux/mod_devicetable.h>
+#include <linux/module.h>
+#include <linux/regmap.h>
+#include <linux/spi/spi.h>
+
+#include "inv_icm42607.h"
+
+static int inv_icm42607_spi_bus_setup(struct inv_icm42607_state *st)
+{
+	unsigned int val;
+	int ret;
+
+	/* Only support 4-wire mode for now. */
+	ret = regmap_set_bits(st->map, INV_ICM42607_REG_DEVICE_CONFIG,
+				      INV_ICM42607_DEVICE_CONFIG_SPI_AP_4WIRE);
+	if (ret)
+		return ret;
+
+	ret = regmap_clear_bits(st->map, INV_ICM42607_REG_INTF_CONFIG1,
+				INV_ICM42607_INTF_CONFIG1_I3C_DDR_EN |
+				INV_ICM42607_INTF_CONFIG1_I3C_SDR_EN);
+	if (ret)
+		return ret;
+
+	val = FIELD_PREP(INV_ICM42607_DRIVE_CONFIG3_SPI_MASK,
+			 INV_ICM42607_SLEW_RATE_2NS);
+	ret = regmap_update_bits(st->map, INV_ICM42607_REG_DRIVE_CONFIG3,
+				 INV_ICM42607_DRIVE_CONFIG3_SPI_MASK, val);
+	if (ret)
+		return ret;
+
+	val = FIELD_PREP(INV_ICM42607_INTF_CONFIG0_UI_SIFS_CFG_MASK,
+			 INV_ICM42607_INTF_CONFIG0_UI_SIFS_CFG_I2C_DIS);
+	return regmap_update_bits(st->map, INV_ICM42607_REG_INTF_CONFIG0,
+				  INV_ICM42607_INTF_CONFIG0_UI_SIFS_CFG_MASK,
+				  val);
+}
+
+static int inv_icm42607_probe(struct spi_device *spi)
+{
+	const struct inv_icm42607_hw *hw;
+	struct device *dev = &spi->dev;
+	struct regmap *regmap;
+
+	hw = spi_get_device_match_data(spi);
+	if (!hw)
+		return dev_err_probe(dev, -ENODEV, "Failed to get SPI data\n");
+
+	if (spi->mode & SPI_3WIRE)
+		return dev_err_probe(dev, -ENODEV, "SPI 3-wire mode not supported\n");
+
+	regmap = devm_regmap_init_spi(spi, &inv_icm42607_regmap_config);
+	if (IS_ERR(regmap))
+		return dev_err_probe(dev, PTR_ERR(regmap),
+				     "Failed to register spi regmap\n");
+
+	return inv_icm42607_core_probe(regmap, hw,
+				       inv_icm42607_spi_bus_setup);
+}
+
+static const struct spi_device_id inv_icm42607_spi_id_table[] = {
+	{
+		.name = "icm42607",
+		.driver_data = (kernel_ulong_t)&inv_icm42607_hw_data,
+	}, {
+		.name = "icm42607p",
+		.driver_data = (kernel_ulong_t)&inv_icm42607p_hw_data,
+	},
+	{ }
+};
+MODULE_DEVICE_TABLE(spi, inv_icm42607_spi_id_table);
+
+static const struct of_device_id inv_icm42607_of_matches[] = {
+	{
+		.compatible = "invensense,icm42607",
+		.data = &inv_icm42607_hw_data,
+	},
+	{
+		.compatible = "invensense,icm42607p",
+		.data = &inv_icm42607p_hw_data,
+	},
+	{ }
+};
+MODULE_DEVICE_TABLE(of, inv_icm42607_of_matches);
+
+static struct spi_driver inv_icm42607_driver = {
+	.driver = {
+		.name = "inv-icm42607-spi",
+		.of_match_table = inv_icm42607_of_matches,
+	},
+	.id_table = inv_icm42607_spi_id_table,
+	.probe = inv_icm42607_probe,
+};
+module_spi_driver(inv_icm42607_driver);
+
+MODULE_AUTHOR("InvenSense, Inc.");
+MODULE_DESCRIPTION("InvenSense ICM-42607 SPI driver");
+MODULE_LICENSE("GPL");
+MODULE_IMPORT_NS("IIO_ICM42607");
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

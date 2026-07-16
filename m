Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4FB2CC44515
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jul 2026 18:29:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yu/nDRPmKQj1jUV+y3UBT82K7Nw+PgOprwNA9f9Ue68=; b=dTYevcQdf4CVL5
	JE6EomAN1Fmwp6RBPGk3wwzmM2Srog3qcdOJCYdXHsdAjm29M2ZzbH5izNp0xEzXLdQsmQvWqVTbf
	IzufNgSv/YDQSp1XMOphE3hlGh5kQMxnOetKreTKgRJkGchpUEIsuxo/rF5qVE2TW0dWqMD+FSiF2
	FY1b1Q5EXs6kwH5cYoSJ0fv8w+XlPvwXY1IAdr4Uv62mDf7CVt4xUw0avW0e4++OGOeslHNIaJUnv
	0UY0aCDLxFWwMJ3YXZXZjj1IjsArLBvRaGiFv5+FBld2wTw344zWte40YdsapXTMmafOBdkEcTFX3
	GYR6q5yprMKQ7LJmQSag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkQpZ-00000000OAe-0TeG;
	Thu, 16 Jul 2026 18:29:09 +0000
Received: from mail-ot1-x32b.google.com ([2607:f8b0:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkQpV-00000000O6A-0pR7
	for linux-rockchip@lists.infradead.org;
	Thu, 16 Jul 2026 18:29:07 +0000
Received: by mail-ot1-x32b.google.com with SMTP id 46e09a7af769-7e9ecd7216cso1862638a34.3
        for <linux-rockchip@lists.infradead.org>; Thu, 16 Jul 2026 11:29:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784226544; x=1784831344; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=BBQj5o1xBe0UYUjJRFQjbTlsi/qLCduPzV5e4TThaHw=;
        b=ovkU9Q5NAw98TGBS+NPU1Y5CA6Gwhl03zuUHlC9Xl9B6UfpQ4kyUqYP4Ek8rKei5lM
         Q8+YIS/+4w42v8INwkLRtjaVRW8eIifsPq5pL+gU4qXjtnGFFyZqYIwKJLDBJpkKiF36
         Mb+WZJAL/WgBP4LJiZcSjY3oYUJ93CUqg50ZI3znAq3SwYyLvlBhOl4dnV307pLS8dUP
         IIhEM3n1Ve6msxq27kjcaBU+HrmBMFjqErLweS629DaTJ44IFsSaUr7K1mZDxdPZ843u
         p/fSJnQkRejRZoas7r4rUUkTnawZTTILH9GhbWs+00ax0RGM+ZwLP2TgE0+y/8jLJNRS
         N3ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784226544; x=1784831344;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=BBQj5o1xBe0UYUjJRFQjbTlsi/qLCduPzV5e4TThaHw=;
        b=j216qSUp/kENAMJ/KKqKDyuktByjUpBNJGT/N/xK9gxQ2XnCoqA7sRFQTaMOS2A2I5
         ViJnD1OqyqF7vumnQ3RukmDuC3i1UGud37QgqPPNGAwReopWrm58m4RaDzE8E91dJZ89
         ICIOK0t815RdzlneyJ/kH94NK41hIh7xY+vilkf/f+9sFw1OHLkVdscYLtcm5fa7zLrF
         gtgI7y3Ia1bTQ6a31U6VrVZec9ZIY6tauxsMgoLHrVtLvq1kSFZRUCvIzU+RRfx6RXjd
         kjlDWOlgCXaMIDbSh8MVNT6y6hb22ZLqAyRRaSCcTYtyraG7Mx5KU3d/caGwUrDkUFV1
         +ddA==
X-Forwarded-Encrypted: i=1; AHgh+RpajCP649w/VYTk2o/Of2LuBYrYCoe5HKW2cZ+9rcQIShk++hDAjAe3OGhmT0LM4MGh4XorVDF8AhuoVlK5rg==@lists.infradead.org
X-Gm-Message-State: AOJu0YycCL8W4xMAk/mEtK8+mTWTTnaxcNOSNZu/cqN5+iJ6rRG6AWn6
	sD6f1Gqev55v7RDf4v8wSA8QN9APd6FjVSkEHgmWwqa/+heFMhHbbV7w
X-Gm-Gg: AfdE7cl/TfTkyuK95fd29sYqkphttQ6kwZ8Wtw2Z7rnvGIkCaH2zNzEO9la8GT7/c4f
	bUfZZLYOvOnrItAJvWqPdHK+2tsYQ8tIwWwviIE2qdyLnQZN5iOuzNrNlE7WLYNFtJI9Nc4iQL1
	mCKv/D8p7PKKBCjq4lWbBOlG6Oul1q3WFjqp3qv4mw/W2Iv1CNbZG6/RuAHj2ivcT5i4jC0gIJ4
	XLoFdqr48c76hIGCdtECtThXPhFrjD/IaluxTLfRc1wMvZ7GJrSFDsfbYNk16WyXLV7aPWBlf3l
	WMSGogpjCmFCUqsSY67A8x6pw1DBLTpilBXTLoG+UljDxQXol9dx7fNqygMomm1L2h++VTopoH+
	OKDCW4Qpbzby/pRuG/7TlitgcJHyYpvbaoNQvX5swKx8ibMBqK6fOtBScuoVB4LH6mopPdkbZ1h
	YE
X-Received: by 2002:a05:6830:710e:b0:7ec:6749:f38f with SMTP id 46e09a7af769-7ec9fe96c9emr470066a34.22.1784226544055;
        Thu, 16 Jul 2026 11:29:04 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7ebcb3f6826sm19939993a34.27.2026.07.16.11.29.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jul 2026 11:29:03 -0700 (PDT)
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
Subject: [PATCH V17 4/9] iio: imu: inv_icm42607: Add SPI For icm42607
Date: Thu, 16 Jul 2026 13:26:31 -0500
Message-ID: <20260716182637.24310-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260716182637.24310-1-macroalpha82@gmail.com>
References: <20260716182637.24310-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260716_112905_269848_C00BDB07 
X-CRM114-Status: GOOD (  19.20  )
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
Reviewed-by: Andy Shevchenko <andriy.shevchenko@intel.com>
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
index 000000000000..8eee7f162126
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
+
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
+		return dev_err_probe(dev, -ENODATA, "Failed to get SPI data\n");
+
+	if (spi->mode & SPI_3WIRE)
+		return dev_err_probe(dev, -ENODEV, "SPI 3-wire mode not supported\n");
+
+	regmap = devm_regmap_init_spi(spi, &inv_icm42607_regmap_config);
+	if (IS_ERR(regmap))
+		return dev_err_probe(dev, PTR_ERR(regmap),
+				     "Failed to register spi regmap\n");
+
+	return inv_icm42607_core_probe(regmap, hw, inv_icm42607_spi_bus_setup);
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

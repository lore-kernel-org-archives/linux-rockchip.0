Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02064CD98D5
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Jun 2026 20:28:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CLDGZ12FQ8R5n+bdAvJvMlgZAxTMewefj2fR+H0M8iI=; b=SGomZPNrkdLieO
	+piyGbQq0a/6ZFTp+93LocDO+TTDjXlED0XxUZmd6o4Pg98yGXoU0b0XZIS/pCeGCGOeMpshF2miA
	Ky1kBAPIguyg6tYef5Hj77cpDiRdt5GVfyT0/fWMwRLi+wwyA0XOQDV0XcvHK2EEJcBaKs42aeOHE
	Qrxl7M+RUDdudEvnfADmnKGslDgbMHRoSmRrcBc0lsmAVjp2FznuYiiOsy2p9vrUsau2wNdcAm0Q+
	XdDq45iJmJhmOa/LGYcA5rHA1uhcI3NsVi5gVtzPQb0u53oszk3wq7l2lKdailyqOAbO1dRyWUds9
	KYvFFiHgQPolLE6qsWiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXm13-0000000A2wK-44n1;
	Thu, 11 Jun 2026 20:28:41 +0000
Received: from mail-oi1-x22f.google.com ([2607:f8b0:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXm10-0000000A2u1-0i1q
	for linux-rockchip@lists.infradead.org;
	Thu, 11 Jun 2026 20:28:39 +0000
Received: by mail-oi1-x22f.google.com with SMTP id 5614622812f47-4864aea1316so231144b6e.2
        for <linux-rockchip@lists.infradead.org>; Thu, 11 Jun 2026 13:28:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781209717; x=1781814517; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k4uA4P4kk9jq7ZtuhJVafMWUPGD8gwOjaxoN1zj0c04=;
        b=Tk1CvPWSgE/PIXWhcB5C3Duy5xlIxrFwbEFkVynp24HxUwSYsM7oByHt4P0rBw3ynD
         PxwTit6HVNYUm0LWRyvbBqfuuePbMCO9J9NinK/ewfzqt5bgYgIuqq1P80iPY61E3d1f
         lOQQx0qZzPqkk0P6zW/3XteI89lzWe8wVDbsGzXqCaywcCptvv3v0KfdepURVQXm2ZCj
         yEatxbDJtEcfItlV4/6EDji3aDFMiPYwbUc2hwwPAh5sJMtk5L36xqTsLBeT0Iuh2zjf
         IBgu67g/jSPRAiwA0TqHwOAx+5Jh3lTbhicFU/YZXz6PsezrqWc0q6zm/fymYs8cCvQb
         XDzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781209717; x=1781814517;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=k4uA4P4kk9jq7ZtuhJVafMWUPGD8gwOjaxoN1zj0c04=;
        b=Wv6z0Yc9XKtMbNlKlmPQw4J16maBJ7p7EMkFMCs4yrcfSBTAHQ4Smywu38o+BUt1ZG
         LuBWKFDhcTWEayykYd7UdbqNoJ4n4+WpU6i/3YV+k7z9BRcw70F/F8zr9RGSADGDcYxK
         /auE7OAjI8kY47C7AZ0var7dWar7O+/43k8yexcqqVqkJayumuQeMfZU4GI8mtkUAPtX
         yNrRl+fHCyg/uafqvJHuDO97KmD/aU+VflfuR1DbrtBW6Wt5GYtePuHAOA7il9e0e5+H
         72QGM8wv57JoEwl6rWMrUXvHJIhbL1Po41d1NytFHOobDz1VNciTPfsL2PeCrDFjL1PP
         LQDQ==
X-Forwarded-Encrypted: i=1; AFNElJ8LBq9sz+tkuSj6C8/OPOy+qvwqXkAs9ed6ObwbJBV0Mltb9GBlrElG+lzOUsdcSCd4zJ/CdfWFH3dXWIMihA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy/3FjspMWnbSQRxN2bBjw8thyGbJCxJLR8brmXevSA4iRUax18
	2rzHPmQHEsjkL8bUwUslM5div0bdwiQsVoQp0qxa4bC8KqAT7OPmyOLl
X-Gm-Gg: Acq92OG0Df7yJ79dAFoAfViUe3uhiykHDtHozl1vicH8gj1bv6zmGXk9mQ4MZsdWn4d
	X8lnMFBWeW+rLZNOBG/j/rV5BLmGt78oc2u29jckVHD2n7B31aERr9TaAMXr+cldNQ2hFXT+QaO
	JARbanSM5vlmebjDTQNfp+F6qXwNiMPkN47iRD6SyXZx9LRNz9KA9Fch4C0D2ySGdQUmia3ONZO
	n5D+3dMTGCqpyW9BJF6s/mqOTxkJd9XFEjp1Km/bQM4iMALnr3Qk9jlgITvdiBwodyAt7kYMX1A
	W+kkfUohwRWjQVkAC8fV+g555DwamrV7nyoHVc5sU8cY7HrW4zs1z+8QNtGX+DH4m7100Ap1eR/
	2jgSDnVSaEBfdpBVjyZAcqJmPGrDBMe8/ss+p5IZiQqbXbojDSHXi7bTfblHX3SmMSvmxkuNqtM
	pyblFhLjHgrzhJIeHkVzjbEg==
X-Received: by 2002:a05:6808:10c1:b0:486:79ad:96e9 with SMTP id 5614622812f47-4871a5a5280mr3521468b6e.37.1781209717146;
        Thu, 11 Jun 2026 13:28:37 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-44244cd05c9sm1796134fac.18.2026.06.11.13.28.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jun 2026 13:28:36 -0700 (PDT)
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
Subject: [PATCH V12 4/9] iio: imu: inv_icm42607: Add SPI For icm42607
Date: Thu, 11 Jun 2026 15:26:01 -0500
Message-ID: <20260611202607.85376-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260611202607.85376-1-macroalpha82@gmail.com>
References: <20260611202607.85376-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_132838_223344_EB06F464 
X-CRM114-Status: GOOD (  18.90  )
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
index 000000000000..0c8deb1f33e2
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
+		.driver_data = (kernel_ulong_t)&inv_icm42607_hw_data
+	}, {
+		.name = "icm42607p",
+		.driver_data = (kernel_ulong_t)&inv_icm42607p_hw_data
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
+MODULE_DESCRIPTION("InvenSense ICM-42607x SPI driver");
+MODULE_LICENSE("GPL");
+MODULE_IMPORT_NS("IIO_ICM42607");
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

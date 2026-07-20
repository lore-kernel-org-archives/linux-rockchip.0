Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 665CEC44534
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Jul 2026 20:26:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mLUlISiGsBepD3Txc2hKIVfv62zEqo3AYrdaZAUlnOU=; b=XrSjSh4JBj6jxR
	P5IxoASXf7qQdvOtR5QYU5QBNWaGeYRHJjyIa9yb4+eXpfIA+jPl9vUeJbf+ZA1Hkrq1bKm/qAW0A
	U1sQaiV8qJPPA4QKbNHXOCR/b7YmQv6N/1HQhDaPJfSJBBBrXnqB92xdU/HcfgplZDFCkBeQ3aukf
	F5djaZXCMLevgk+70F9B5G0O3bCu1SLiFoQQRcjdsp41A8WEBPytwmpcxf1LiwV8P4x4eNEGUiaFj
	nYTxKybp/G90cMOgvBifDpH0TFMmHSMn8/7GhNnyTJBXejWDzZslkrRhxkpe/EEpFwErLaQCJVgwV
	1R3qeTrgtyD9uFmiN2mQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wluZ4-00000007rdM-0Pya;
	Mon, 20 Jul 2026 20:26:14 +0000
Received: from mail-oa1-x2e.google.com ([2001:4860:4864:20::2e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wluZ0-00000007ra3-2pI5
	for linux-rockchip@lists.infradead.org;
	Mon, 20 Jul 2026 20:26:12 +0000
Received: by mail-oa1-x2e.google.com with SMTP id 586e51a60fabf-43cce34c881so4136411fac.2
        for <linux-rockchip@lists.infradead.org>; Mon, 20 Jul 2026 13:26:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784579169; x=1785183969; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=X7cKInG3LvCx702WPltJ7pIgcjx5mq1L90Yz6/fhnzA=;
        b=V9uXUIFQpTqHHzNdYv8Jabrm3mv54q+w4ZNyMEHjyC6PU8rQo8Z4Q98PrWhRXBYbGN
         dO0ooN+LC3og9ujQhgBjnqSoOf9cHI19BqXqLk3sNHOUK0/yyzv332Y2GBweUnl149r+
         hv/57j4NkBwKFxPrGvKTUVz1AA72FVPsgBsnO9BygrdlOFDCOUYhjE15wwekiJKkLg3J
         auo42N1P1Yk7AC2nbcy2ujenEFpbtLuEYSE0EP0xAZAef6OkSPyDCeRTJlu53pc8fici
         /0vhQkKT5LxuYKsE5WltBuhMn74A7oQj44q5kvKhO/t7KVw+PFXxsfn+WJ3tp/rxgDY1
         mSKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784579169; x=1785183969;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=X7cKInG3LvCx702WPltJ7pIgcjx5mq1L90Yz6/fhnzA=;
        b=Cc5EfWBHiS91iC+42dR0xlcyKMWFB1T//UO0u823LOOFP5rqF2rWnc4xTFrsvmoThL
         rDdSSwyv/1ubjMDFV9Tqby8HwSFi0PkCJjE/VFCjf0lqATbzJaLkUlTbJRhsauZ6NWSZ
         d7gPFg3FKYghnio/8RwOS2Vd6dC9jA8JaxY+du1m8qyw5LAjqLGJ3+N9yvFU/Z8cTXCd
         6xwS9yjybSjp/G/HVRm04MubqmOnRdTGZx8Bm21ryCAxmuL1hf2ozkCxN2HwCGfk71XP
         smog3VS9OWuqe4LaKHbJZiHnOgpZww/I+Ak41NsaQEoeD1Rsk0UqX8Sy+WX8VjFp6ReU
         5moA==
X-Forwarded-Encrypted: i=1; AHgh+RpNhCh3oXjQe9umJlbhi4pE4tJxpek841lGKyJl5Kw1cvf9KM/B9PRO3DwlW75WT9ebBpD9ulTAfXCMLijkFQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwOpKDYoSxpRi6y21hyr/WIvG3j8M6YWXy71YIe2VyJS0Ng1Gyi
	ucoibxfAUlRo8Iz4K/YPOkmoZU/o+JlJTqZ1JdP1xHQ3VPxQ38O/lySAxZO+Dg==
X-Gm-Gg: AfdE7cm2O3sYZQSWZycqrTRY+3GjLdHppyqKRpYIUUphKJNwZmO3ogdWa6dZtBPjzw4
	PHXAqENR1CucgTWsNzzMjQnJRaaDK197hhn/4jzxV+R8GkiCg0zmIE5HdxHGul/9Or4gabPXl5I
	KeyUTAvZx4EPgmojabx23KJd6kpqfT9J35v6gj8wykdmmr3gaLShqEsJRBIp1wz28V0AnLE9xTb
	2Y8hbj3kCuDxAsrY/AAkLi8sxDE8jJKLaWg8t1zEB6sPsr0plzf040eovXn0N/rZ+jm388IYN+F
	bUfAeau38ifzGaW+blDqBkyRoUDoGH7eD19Uvum+9Y7DxABV/OmeqDZpUWikzSCRr+PCcu4arAu
	6B8sqlfDaCyGF7G+DlmP8xtlc+hXdZsWFW9u8GmQO3wS3c8uKXCAzIHyTvhsYuNG4fWd5HecH2s
	+Q5KuW5ZvSVZ9s3yrjPoY1Mw==
X-Received: by 2002:a05:6808:4f24:b0:4a2:df67:d08 with SMTP id 5614622812f47-4a4d03f8446mr9963713b6e.39.1784579169438;
        Mon, 20 Jul 2026 13:26:09 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0:9988:5abf:3c51:d168])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-4a4d3e5a0cdsm8029550b6e.18.2026.07.20.13.26.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jul 2026 13:26:08 -0700 (PDT)
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
Subject: [PATCH V18 4/9] iio: imu: inv_icm42607: Add SPI For icm42607
Date: Mon, 20 Jul 2026 15:23:36 -0500
Message-ID: <20260720202343.70138-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260720202343.70138-1-macroalpha82@gmail.com>
References: <20260720202343.70138-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260720_132610_723909_165972BF 
X-CRM114-Status: GOOD (  19.24  )
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
 .../iio/imu/inv_icm42607/inv_icm42607_spi.c   | 106 ++++++++++++++++++
 3 files changed, 121 insertions(+)
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
index 000000000000..eb04036a6712
--- /dev/null
+++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_spi.c
@@ -0,0 +1,106 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (C) 2026 InvenSense, Inc.
+ */
+
+#include <linux/bitfield.h>
+#include <linux/dev_printk.h>
+#include <linux/err.h>
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

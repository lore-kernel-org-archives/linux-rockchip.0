Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64F52CD98DA
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Jun 2026 17:28:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1kUKDsfxtNmCzAC5U0nIdalvC0oJptUI4RPdBFQiDoc=; b=ru4MTz8SITmpDp
	heym+tyJAxEaJ+8TJdmWmaBoIJ09+BagXdAyQV0XI4jSUsJLs7lROnH3f2E/U4Sxd7CpB1vD3McjD
	KFslTRAHGeP3VXojr273J4x91kfgkxnpx/Yd+yvlYyxqAvy44Jt1f1mWY5Komn5rkNxbixAtsXc6p
	PNH04DUUnGUmkfuMVrgb7ilXXHvWfWPQ9ope7h2w2AfokKIMO317ek6yIiv/QTA83HFARcp32wNyU
	Ihh73RLK4JZoIegYVCUoe9kfo5osrc5BGHzud5VMuZRgJHwJTrN6SbaOMjGtvCpCd0CawMAlZJkbQ
	GdQY7sUqBe+j4CgyUv7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZB6e-0000000Eeq9-1GbZ;
	Mon, 15 Jun 2026 17:28:16 +0000
Received: from mail-ot1-x32f.google.com ([2607:f8b0:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZB6a-0000000EemW-0sOe
	for linux-rockchip@lists.infradead.org;
	Mon, 15 Jun 2026 17:28:13 +0000
Received: by mail-ot1-x32f.google.com with SMTP id 46e09a7af769-7e701435806so3233007a34.0
        for <linux-rockchip@lists.infradead.org>; Mon, 15 Jun 2026 10:28:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781544491; x=1782149291; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MdGvXpxhZV3aMifO6F6NzYEcuT1/loZxmdAdWZDr/EU=;
        b=kPH7BkiMhezdVbhw5GVUDpyRZN7911UpgdlQ6qqlqf7f5JhX06DpzKjkMC42Af3g+u
         vW5/hrLTu5GzF5lF8Y3uq7d3hNbtpGj3eZtAd4Mucb9aczKPeNxaIfrRby36v0E+Mbia
         r6Lsjfzcibf2veF88FRQ2wGzTxvNG8bK3xGieV3WQGwcX01/Jca6rx9Q6yGr7PO9Km4y
         TU6GJYR4CCKrpTe646aP+6/jMZ1bzeuNyQey/aTGu2c5i+sIHFgvuYphEQWBXivxHlbj
         wWxWq+cbgGOAF0jzzeCzzcx+nG0dYCL2bot9gf4vnoKfmVOEa1rTELSDRVn4A0fGaKWJ
         AFzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781544491; x=1782149291;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=MdGvXpxhZV3aMifO6F6NzYEcuT1/loZxmdAdWZDr/EU=;
        b=pc3BHrAcjGTdnHavJECbgwlNuUPWq4qJMtCdyMK64irgWVmD0HNRUN4JMDFhqk67f/
         Rl+ZF8YeCjtrTyv5BvBTM3JFlvm7BIkFSyJMWtuexiQJNC+M3wnWWF5h0Lqra3BIg0hT
         0CTplC6dX0WBTJh3YvTPn5FCYr85TxRNbKruy2rPwpfXyDEvHPxjL8LCZg2dkUYMasqW
         FEx/fWfdpvDZvne7HKCOkl+UyS65MfxTa8070mu+MAl+glI7l4OIyHO0U+cj8UCY4oR0
         EPMKT472JQlGGahwFQWXv1VdO7w3cX3uxgMU7r2Q2q4F6oDV67H6nPQSWtVOCWBJY/Tg
         UVSg==
X-Forwarded-Encrypted: i=1; AFNElJ8k1OFxIRT8XiMY/sz7BIpFrKhtcO6CuvlFIUokggHu3FOR0eSLKjC+wGeqqTIc7KCo2B3GmXgBOWs24UcH5Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YzblTu9hOKt0SL3rsyjhn936mvNTXB+5mq1bA06J3lusxwZX9sN
	KFMI6EB6RgYFqimJpfh18U+J1P0uhy2b5m8HmppA52bWxRxW7XWMVpzg
X-Gm-Gg: Acq92OEXq/mlxCAM/IKxfDXIKFsWWTOylkV2i0UpQRRiCpfhs4CMnbp1nCjFPSj2uzu
	/t0sqNY/BtItu8py+eyoujdh9kkwSvQyfYp+8cyn5ev9+JTjXHXEsBg+bgS+3ZfqB9ts857t9WZ
	4bMmd02y8fzm4sn+bGkhoB57YJkh7idR41/YUgfa30Sex8l6lE+rN3d3YfpLYWOGQpro0S4e0Oh
	fgRx+Gx6//+wdbwrwTQi3liPWEpnMICFKwZs2Gcpot09rpmL6wBlXhyN0+RBrysPmG1QwWEYm36
	k8oxLkF/Ebio1CEASKGK1Y0lXE0S8vByrVz3+WGXeEbb8nYC/K1y7WNVxwfgHOT4fPid9qtu/BM
	ExNDo54rkS3GuUgs0rfhvGGame+0olBFrVWt3yfWRfJyDmo8hgA3QNSJjNtnyHdNdPnD0xclSp1
	AWuo8x8mixhqq5mKh9FPwtIw==
X-Received: by 2002:a05:6830:7009:b0:7e6:dc7a:f459 with SMTP id 46e09a7af769-7e7847fbf8emr9879773a34.11.1781544491219;
        Mon, 15 Jun 2026 10:28:11 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7e79f451fe7sm4480033a34.0.2026.06.15.10.28.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jun 2026 10:28:10 -0700 (PDT)
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
Subject: [PATCH V13 4/9] iio: imu: inv_icm42607: Add SPI For icm42607
Date: Mon, 15 Jun 2026 12:25:47 -0500
Message-ID: <20260615172554.160910-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260615172554.160910-1-macroalpha82@gmail.com>
References: <20260615172554.160910-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260615_102812_283371_B2437D03 
X-CRM114-Status: GOOD (  19.32  )
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

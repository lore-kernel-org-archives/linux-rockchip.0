Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A557DC54F56
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Jul 2026 22:58:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mLUlISiGsBepD3Txc2hKIVfv62zEqo3AYrdaZAUlnOU=; b=xoJMV0AlOZaMpg
	X7UZkyi6eO6YLjivBhbGqzYi184nPT7EJrb2yvv1/KD4qybhVK0lv3zEK0rW2IeY6ZPGPyIxrNkmW
	0cD1o9lIenY4juUF3wKz9fSNm8cWW7BwBH3on+6sebBjizq5VKZHPu5UGA1BeFBItwpBUfG+8xA9h
	rqzGmsvTvR9ohGmhaiKsILf1sCX2D4p3fpA2xa16xGQc3PWBWRw8MlJCdgb4oqT6cKrJ0o+x6fIwo
	YU5KpO5Md7qoJ5+H/qsOwgZWUk8oUUEke3pAFpP+LrBptMlCuJm6A7ueuwssM430llbaM1G+nkomk
	1Ojn0Yw4P+hTgyKbCFjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woqkX-00000006Rtn-1EYD;
	Tue, 28 Jul 2026 22:58:13 +0000
Received: from mail-oo1-xc35.google.com ([2607:f8b0:4864:20::c35])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woqkU-00000006Rqn-1ce3
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Jul 2026 22:58:11 +0000
Received: by mail-oo1-xc35.google.com with SMTP id 006d021491bc7-6ab08d289d1so276847eaf.3
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Jul 2026 15:58:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785279489; x=1785884289; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=X7cKInG3LvCx702WPltJ7pIgcjx5mq1L90Yz6/fhnzA=;
        b=klcngfUhNHTKu5S0NeaNft92TJszGKAaIZr0nf1RxZzRlgUimkYcVBPkOTXfpxRSSp
         Yh3RorDqWdJrC0l6iNqGoGkrNdh+Qnp8Hyg+tPn54Xif4OBKqMRN3r9EqEILCUJgi2VB
         jZ2CR+aD+GU42TRbBLQxcM7RaW07tuWivhAybDVXXvGOBMxI57aDdjrvIL+GKtOU/vV1
         HTSI4HsLqVPjlIGDOMFLl90A0anQ3gNh9X8zqCNEYkdWF5v82qMHmO2z4LR6YTwPN0kz
         jDcfihFdyFFL4tIv5lWFbeLORYwXtYE1Zi3wzvb6+FPGm0f51UcxHOhLwWUn30cQaMvG
         /s5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785279489; x=1785884289;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=X7cKInG3LvCx702WPltJ7pIgcjx5mq1L90Yz6/fhnzA=;
        b=kLucTIDk974zXV8ZOUjkVFnLjBKAitUeCDNHeX+7cjgaJ/gzYO6JMg+aF/xqa+/rHc
         oJ1+RkVLC2TrA2GM5YV2q9CIecNGQl/BhfzDkvn9jpa8MbSNybTgZnVGjCOhStZ5XOQl
         uSi4gJR4OjWe8FwZbAhiSK4X2NBoPz9z/0H1oTpChmygsCnhyftltHk5xMOPGEEIYiIR
         saOCqR9NvwMCD1bBBhUtvKrO61hawoEaG5VBeaXRKOuRRBOJPTHvE22J1jZ3oJA3RyU6
         hL/b/gPP2zQvWPNKXKkaEnGKY3hAvIqJqzNb6Eae/GcqqPcCgeb2nyTddRsoknCvG28P
         53Jw==
X-Forwarded-Encrypted: i=1; AHgh+RpcbaHzaFJWzD6QSo/0zpxcQwDAmI5saupabYc2Wsx+CDUoOPC8Eyd60SfFYzfA/elKYBH6ex4cB7bbEi7B8w==@lists.infradead.org
X-Gm-Message-State: AOJu0Yyj3Pt96ySQDC+ueFCbTKvzMzKKvcxORGTx2eC5Fe9PvHbwOy7h
	mmDBApob94ZR5dNKzjTvudQU4kh8hUxSbQ2auuiBCxcMSLHrhxP0c3pt
X-Gm-Gg: AR+sD13EhRSYErh48o7RtF9X+SPKZZGQnTe9fAElfrLnHxxJVIZZu+vL3WumVrHokAk
	orDv0Txj8WqyegKTIoScyaCRGtGMMocujSiCCAgc/GlXOvjMXErxPGg+b8vYx20N9kgy4OU0Xb1
	ocWfYQmz9gC5+thBlwaSF3BcgUm0MOobwdcEUyntNGjA9g8IGVekQz/uHGoeIMM8YMgPMDYbQnH
	iCgDZwAIEVvTVUUjKzawC1rPwvOKNEO9mJlaA3+BHWZupSy5Mq5k5Wa5MGGPk1ZKqAcanSMvbCX
	wCTx9JFfP6uNjHos6YYafiHpTmoHVooLe6C5G2A9MufgBXPfV0P8sANWnVjV9Ydqg1tUDFjgZ2d
	7xQN0kEZ5xYETyrhSa3OT40mSBHj7hVsPD/1v+RYtgzF7VqGw7SVKdntUfdrfk3Xfv07gXlm13q
	kqg5/E4cw6iL0BAG4jrNfafg==
X-Received: by 2002:a05:6820:4b18:b0:6a3:2c5e:2b37 with SMTP id 006d021491bc7-6ac96cfc022mr2383248eaf.72.1785279489303;
        Tue, 28 Jul 2026 15:58:09 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0:9162:e42b:cb94:2d55])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4588646ade0sm990277fac.5.2026.07.28.15.58.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jul 2026 15:58:08 -0700 (PDT)
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
Subject: [PATCH V21 4/9] iio: imu: inv_icm42607: Add SPI For icm42607
Date: Tue, 28 Jul 2026 17:55:35 -0500
Message-ID: <20260728225542.174825-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260728225542.174825-1-macroalpha82@gmail.com>
References: <20260728225542.174825-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260728_155810_457547_1369A243 
X-CRM114-Status: GOOD (  19.51  )
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

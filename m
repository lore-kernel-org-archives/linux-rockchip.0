Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EBD87CD98CF
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Jun 2026 15:34:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=momgj7CzY6AVmMSCV+gZRPyeoIqvi4nPZ0opkFqZgj4=; b=fmamKE31r8tg5S
	NVJcUW/08khHxkcSI7iINS4aP3JpoQhU12TOqDRGvpxEVo24tEyHKPoe0DVlh3bainQl/D50ZyyuL
	V5o5h2eE//2SM9LHqi97dr6+yzY2F9PtWwxmR0RmREaIbr1gSZFFHDx25jczuA5iNJ0XyMxWhKNAc
	k8QelTLfnm36lR57TjOWC8DiY0GL10/1+l04EANriPbJ7DUsEf5lCnX0w3viwgXGTnqFxu3p5WF8J
	3a4tfauZhpviMjcrenNrKYZia9CD7HlX9pFhBwtFHhd6RgZkFTyzTj65+JRtij5PKjoBiyGfMg6Wt
	lCYHmNmSdPnOiStgLeQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY3u1-0000000B9rr-2KcM;
	Fri, 12 Jun 2026 15:34:37 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY3tz-0000000B9oS-0zde
	for linux-rockchip@lists.infradead.org;
	Fri, 12 Jun 2026 15:34:36 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-490b1bbcf3aso9259495e9.1
        for <linux-rockchip@lists.infradead.org>; Fri, 12 Jun 2026 08:34:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1781278473; x=1781883273; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SYxxSyaRg/yzYVKGPqcxonYGXxUTX4Q0RqUNGU9bZiU=;
        b=Bx+vb5WXPlDntE+Ue0YcOZNqMBBYtsJW8qhqKpP1eUPQCiUN7rWq33pfBHvjdYL4aW
         ckO0TUrxnzzfJwf2DJhj3vXYN6zRxFypqYIVZbCuljwIuKjdgy/ntdxCERvwNTIC2fMd
         D1yDBUt/CMfcC7+71Txl9ccJ+qbM7RiHXEOvmcLowVmUUk5g3ehkrYiLyyW7jj5ED9g2
         qsqROGCAH/5Cwg0uN51g+MQN4/WyNgc6TU+ui5FmMOOPYOdgozekv5TbZ439BMYeZDXK
         xORBitempO3Z+q/KkSTDPauHvaCL/AJwP8hGjnv5Id3YNPht8F+p95RQBF3+JwJCM6Ny
         E+HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781278473; x=1781883273;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=SYxxSyaRg/yzYVKGPqcxonYGXxUTX4Q0RqUNGU9bZiU=;
        b=VjQaIQzFKSnPhv2XxSMiA+MlFwFLCg3xLmGr6e8IiroAuBfRWri1Ah+L293cZtcpHv
         CJufOxtixHzI6llVPTwN5gXODr5XUmSCAvUPUZe2221q8on7M014AvYt0soiEZJxHWY8
         J2MYMIwW8gmxmXNPFM1oN3oog1TNqqcjC0d5zncfMYhIHKgUrMbI8ZHsh/objA0Es8av
         nHSJtYn9ORD+1eKbQaQEFVXjn1iRLeP4YiY540DCEm3Yk6JlRC6CxvfFV3ScopIichBV
         +yDCZ95wrP49lOIEoQx1gUlhXIw78w8xXnzK88c0XmqLEAl3bcuSu/0EYRPg1nEwXg1v
         k1Bw==
X-Forwarded-Encrypted: i=1; AFNElJ+lQr1+uogqT1KqRQ4TiCO/NwKIkHMLo3J93orKuwtg4oq2I6EtH6U/fXddZSoZraeC6wehFsFQPyS0R1bT7A==@lists.infradead.org
X-Gm-Message-State: AOJu0YzqHa5dCiGUvq0rENGwxx7dc5tQ2z2RLdGuqwZHWrIn0tDqBWr7
	FvHw5RfX3HHLzglSPQ8y8WjpcH9hxXLUQJr846MQvVZXrYVLY7WS75Ff+FydwFBiro5pKm87+hJ
	2txhgUf8=
X-Gm-Gg: Acq92OFB4V8RplcLMNM5OJoDB77R2jZaAcZCIC/i7AgKw2wzo1nPquE5E0NyMN5xgGc
	42oAbDFfRjxtGJKY0/alSrW5jV5j+n34DkVBZzww8vvObTtkZY2KuApohlCZyDSbvK/ZrOCC91+
	4vw+m41Trp1K+psPahwIp2tJMxELMrdlX4goAyAqCYr4jW1D66ny3U0JpgOzftNpo9L3LVcD/S7
	mBcgp4/8rd+XZ5uAbiY3dRPri4UysgEtB71JAt7lBDpj7Z0CflucmiRIr735TUZVhkTsULrqrUP
	Zq+V+4NuHP7TxLsGqYp+PSPsm8PKqY161HpTg980oIfFwIwAmHNU2eimFLWjPtWX3mmrn/Gqg3T
	9unjl/7/2AHsgKSqOJNa/sF2K+sizjIHblRzA5d/L/f7COLt6f4zHYOB02UjU72uA4Dl3OEUs4j
	MweHk+wAS56q3pBy/GbM0kkwxX8YrWcLoeKhFjPHBZ
X-Received: by 2002:a05:600c:3548:b0:490:ea8a:32d0 with SMTP id 5b1f17b1804b1-490ec501917mr47188245e9.20.1781278473433;
        Fri, 12 Jun 2026 08:34:33 -0700 (PDT)
Received: from alchark-surface.localdomain ([5.194.92.128])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4606f2b0d28sm6916641f8f.20.2026.06.12.08.34.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jun 2026 08:34:33 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Date: Fri, 12 Jun 2026 19:34:16 +0400
Subject: [PATCH 3/4] mfd: Add support for UGREEN NASync DH2300 MCU
MIME-Version: 1.0
Message-Id: <20260612-dh2300-mcu-v1-3-ab8db1617bc0@flipper.net>
References: <20260612-dh2300-mcu-v1-0-ab8db1617bc0@flipper.net>
In-Reply-To: <20260612-dh2300-mcu-v1-0-ab8db1617bc0@flipper.net>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>, 
 Mark Brown <broonie@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4876; i=alchark@flipper.net;
 h=from:subject:message-id; bh=vhA9/ATviEwBlDlfV0VM4/797omUF5cQADPNVx8ByzU=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWTpqP2N1fU+fvpD3S3jp21p535KPapR4LsiFfn012fmy
 3P3Jym1dkxkYRDjYrAUU2SZ+22J7VQjvlm7PDy+wsxhZQIZIi3SwAAELAx8uYl5pUY6Rnqm2oZ6
 hkY6xjpGDFycAjDVuUkM/2t+yM6boJbb8ELzbETLW2UpA6f4U5PvCk4ST5xpzXIjyZWRYb+hVMj
 3dBWmE45pygu/bIzjMk3+/rlKxDTIfl7xxmtfGAE=
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260612_083435_340818_3B2A0097 
X-CRM114-Status: GOOD (  24.34  )
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

Add a driver for the HC32F005 MCU used as an embedded controller on the
UGREEN NASync DH2300 NAS.

This part provides the shared I2C regmap to be used by function-specific
sub-devices, and instantiates the SATA drive-bay power gate regulator.
Implemented as an MFD to allow for other functions of the MCU to be added
later: vendor binaries imply that it also provides a hardware watchdog
and somehow serves as a wake source, but so far only the SATA power gating
function has been confirmed in absence of documentation and sources for the
vendor firmware.

Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 MAINTAINERS                     |  1 +
 drivers/mfd/Kconfig             | 16 +++++++++++
 drivers/mfd/Makefile            |  1 +
 drivers/mfd/ugreen-dh2300-mcu.c | 60 +++++++++++++++++++++++++++++++++++++++++
 4 files changed, 78 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index ca27df7cd684..9578a06fe651 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -27637,6 +27637,7 @@ UGREEN DH2300 MCU MFD DRIVER
 M:	Alexey Charkov <alchark@flipper.net>
 S:	Maintained
 F:	Documentation/devicetree/bindings/mfd/ugreen,dh2300-mcu.yaml
+F:	drivers/mfd/ugreen-dh2300-mcu.c
 
 UHID USERSPACE HID IO DRIVER
 M:	David Rheinsberg <david@readahead.eu>
diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index 763ce6a34782..5a2ad75bd9c9 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -1947,6 +1947,22 @@ config MFD_TPS6594_SPI
 	  This driver can also be built as a module.  If so, the module
 	  will be called tps6594-spi.
 
+config MFD_UGREEN_DH2300_MCU
+	tristate "UGREEN NASync DH2300 embedded controller"
+	depends on I2C
+	depends on OF
+	select MFD_CORE
+	select REGMAP_I2C
+	help
+	  Say yes here to enable support for the HC32F005 microcontroller found
+	  on the UGREEN NASync DH2300 NAS, where it acts as a board embedded
+	  controller. This core driver sets up the shared register map and
+	  instantiates the function sub-devices (the SATA drive-bay power
+	  regulator).
+
+	  This driver can also be built as a module. If so, the module will be
+	  called ugreen-dh2300-mcu.
+
 config TWL4030_CORE
 	bool "TI TWL4030/TWL5030/TWL6030/TPS659x0 Support"
 	depends on I2C=y
diff --git a/drivers/mfd/Makefile b/drivers/mfd/Makefile
index dd4bb7e77c33..6247239bcfe1 100644
--- a/drivers/mfd/Makefile
+++ b/drivers/mfd/Makefile
@@ -109,6 +109,7 @@ obj-$(CONFIG_MFD_TPS65912_SPI)  += tps65912-spi.o
 obj-$(CONFIG_MFD_TPS6594)	+= tps6594-core.o
 obj-$(CONFIG_MFD_TPS6594_I2C)	+= tps6594-i2c.o
 obj-$(CONFIG_MFD_TPS6594_SPI)	+= tps6594-spi.o
+obj-$(CONFIG_MFD_UGREEN_DH2300_MCU)	+= ugreen-dh2300-mcu.o
 obj-$(CONFIG_MENELAUS)		+= menelaus.o
 
 obj-$(CONFIG_TWL4030_CORE)	+= twl-core.o twl4030-irq.o twl6030-irq.o
diff --git a/drivers/mfd/ugreen-dh2300-mcu.c b/drivers/mfd/ugreen-dh2300-mcu.c
new file mode 100644
index 000000000000..5184b0c98759
--- /dev/null
+++ b/drivers/mfd/ugreen-dh2300-mcu.c
@@ -0,0 +1,60 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Core driver for the UGREEN NASync DH2300 embedded controller (HC32F005 MCU).
+ *
+ * The microcontroller sits on I2C and exposes an 8-bit register map. It is a
+ * multi-function device: SATA drive-bay power gate, hardware watchdog and
+ * possibly other functions
+ */
+
+#include <linux/i2c.h>
+#include <linux/mfd/core.h>
+#include <linux/mod_devicetable.h>
+#include <linux/module.h>
+#include <linux/regmap.h>
+
+#define UGREEN_DH2300_MCU_REG_MAX	0x94
+
+static const struct regmap_config ugreen_dh2300_mcu_regmap_config = {
+	.reg_bits = 8,
+	.val_bits = 8,
+	.max_register = UGREEN_DH2300_MCU_REG_MAX,
+};
+
+static const struct mfd_cell ugreen_dh2300_mcu_cells[] = {
+	{ .name = "ugreen-dh2300-mcu-regulator" },
+};
+
+static int ugreen_dh2300_mcu_probe(struct i2c_client *client)
+{
+	struct device *dev = &client->dev;
+	struct regmap *regmap;
+
+	regmap = devm_regmap_init_i2c(client, &ugreen_dh2300_mcu_regmap_config);
+	if (IS_ERR(regmap))
+		return dev_err_probe(dev, PTR_ERR(regmap),
+				     "failed to initialise regmap\n");
+
+	return devm_mfd_add_devices(dev, PLATFORM_DEVID_AUTO,
+				    ugreen_dh2300_mcu_cells,
+				    ARRAY_SIZE(ugreen_dh2300_mcu_cells),
+				    NULL, 0, NULL);
+}
+
+static const struct of_device_id ugreen_dh2300_mcu_of_match[] = {
+	{ .compatible = "ugreen,dh2300-mcu" },
+	{ }
+};
+MODULE_DEVICE_TABLE(of, ugreen_dh2300_mcu_of_match);
+
+static struct i2c_driver ugreen_dh2300_mcu_driver = {
+	.driver = {
+		.name = "ugreen-dh2300-mcu",
+		.of_match_table = ugreen_dh2300_mcu_of_match,
+	},
+	.probe = ugreen_dh2300_mcu_probe,
+};
+module_i2c_driver(ugreen_dh2300_mcu_driver);
+
+MODULE_DESCRIPTION("UGREEN NASync DH2300 embedded controller core driver");
+MODULE_LICENSE("GPL");

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

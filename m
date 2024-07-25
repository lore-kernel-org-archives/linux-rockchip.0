Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F119C3DA5D
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Jul 2024 19:49:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ckn1DplXRXZSpUI+YgNhsPt9AFg50/UvRnM5wWRdnZI=; b=ctrbPokv2ApocC
	vKUujTRm2erMRb5KBy/4oPmy2fDLALY0+uL/7x3b18/1y5uMiEfKQ8rCbG2HFPI9c0Yzt8VK8aL7W
	ecS3tR540+bLj1WC7g50/BwCu0mq+PqeUyFTixpmiZY46SIVRcmAZLhQynNcZTsHxUfkizaqvsD+J
	ycx2EgMIyB6V9GaXJTAMvhH0tDox1zSQokoROdSPX9R0EQxHdGeynyrf4oG0WjOQTyNiiKsQyelJR
	Z7DZz6veJ/Bkj+11cp1/2G0kOq7bAoMYPMXzSrIvMI7vZljsKxR6WKF5/TX/OFXtmOlPXp+wAAMiC
	BNLnjwS5yz7V+FW64i+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sX4Sw-00000001xcH-2Xb9;
	Thu, 25 Jul 2024 19:49:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sX4Pf-00000001wAC-0P0I;
	Thu, 25 Jul 2024 19:46:13 +0000
Received: from i5e860cdd.versanet.de ([94.134.12.221] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sX4PP-0001rD-Iv; Thu, 25 Jul 2024 21:45:51 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: lee@kernel.org,
	jdelvare@suse.com,
	linux@roeck-us.net,
	dmitry.torokhov@gmail.com,
	pavel@ucw.cz
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	ukleinek@debian.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-hwmon@vger.kernel.org,
	linux-input@vger.kernel.org,
	linux-leds@vger.kernel.org
Subject: [PATCH 3/7] leds: add driver for LEDs from qnap-mcu devices
Date: Thu, 25 Jul 2024 21:45:35 +0200
Message-Id: <20240725194539.1780790-4-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240725194539.1780790-1-heiko@sntech.de>
References: <20240725194539.1780790-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240725_124607_301569_FADF0546 
X-CRM114-Status: GOOD (  28.89  )
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

This adds a driver that connects to the qnap-mcu mfd driver and provides
access to the LEDs on it.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 drivers/leds/Kconfig         |  11 ++
 drivers/leds/Makefile        |   1 +
 drivers/leds/leds-qnap-mcu.c | 247 +++++++++++++++++++++++++++++++++++
 3 files changed, 259 insertions(+)
 create mode 100644 drivers/leds/leds-qnap-mcu.c

diff --git a/drivers/leds/Kconfig b/drivers/leds/Kconfig
index 05e6af88b88cd..e128a8016b84c 100644
--- a/drivers/leds/Kconfig
+++ b/drivers/leds/Kconfig
@@ -555,6 +555,17 @@ config LEDS_PCA995X
 	  LED driver chips accessed via the I2C bus. Supported
 	  devices include PCA9955BTW, PCA9952TW and PCA9955TW.
 
+config LEDS_QNAP_MCU
+	tristate "LED Support for QNAP MCU controllers"
+	depends on LEDS_CLASS
+	depends on MFD_QNAP_MCU
+	help
+	  This option enables support for LEDs available on embedded
+	  controllers used in QNAP NAS devices.
+
+	  This driver can also be built as a module. If so, the module
+	  will be called qnap-mcu-leds.
+
 config LEDS_WM831X_STATUS
 	tristate "LED support for status LEDs on WM831x PMICs"
 	depends on LEDS_CLASS
diff --git a/drivers/leds/Makefile b/drivers/leds/Makefile
index effdfc6f1e951..27eb6cd827610 100644
--- a/drivers/leds/Makefile
+++ b/drivers/leds/Makefile
@@ -77,6 +77,7 @@ obj-$(CONFIG_LEDS_PCA995X)		+= leds-pca995x.o
 obj-$(CONFIG_LEDS_PM8058)		+= leds-pm8058.o
 obj-$(CONFIG_LEDS_POWERNV)		+= leds-powernv.o
 obj-$(CONFIG_LEDS_PWM)			+= leds-pwm.o
+obj-$(CONFIG_LEDS_QNAP_MCU)		+= leds-qnap-mcu.o
 obj-$(CONFIG_LEDS_REGULATOR)		+= leds-regulator.o
 obj-$(CONFIG_LEDS_SC27XX_BLTC)		+= leds-sc27xx-bltc.o
 obj-$(CONFIG_LEDS_SUN50I_A100)		+= leds-sun50i-a100.o
diff --git a/drivers/leds/leds-qnap-mcu.c b/drivers/leds/leds-qnap-mcu.c
new file mode 100644
index 0000000000000..e3244923759d2
--- /dev/null
+++ b/drivers/leds/leds-qnap-mcu.c
@@ -0,0 +1,247 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+/*
+ * Driver for LEDs found on QNAP MCU devices
+ *
+ * Copyright (C) 2024 Heiko Stuebner <heiko@sntech.de>
+ */
+
+#include <linux/leds.h>
+#include <linux/mfd/qnap-mcu.h>
+#include <linux/module.h>
+#include <linux/platform_device.h>
+#include <linux/slab.h>
+#include <uapi/linux/uleds.h>
+
+enum qnap_mcu_err_led_mode {
+	QNAP_MCU_ERR_LED_ON = 0,
+	QNAP_MCU_ERR_LED_OFF = 1,
+	QNAP_MCU_ERR_LED_BLINK_FAST = 2,
+	QNAP_MCU_ERR_LED_BLINK_SLOW = 3,
+};
+
+struct qnap_mcu_err_led {
+	struct qnap_mcu *mcu;
+	struct led_classdev cdev;
+	u8 num;
+	u8 mode;
+};
+
+static inline struct qnap_mcu_err_led *
+		cdev_to_qnap_mcu_err_led(struct led_classdev *led_cdev)
+{
+	return container_of(led_cdev, struct qnap_mcu_err_led, cdev);
+}
+
+static int qnap_mcu_err_led_set(struct led_classdev *led_cdev,
+				enum led_brightness value)
+{
+	struct qnap_mcu_err_led *err_led = cdev_to_qnap_mcu_err_led(led_cdev);
+	u8 cmd[] = {
+		[0] = 0x40,
+		[1] = 0x52,
+		[2] = 0x30 + err_led->num,
+		[3] = 0x30
+	};
+
+	/*
+	 * If the led is off, turn it on. Otherwise don't disturb
+	 * a possible set blink-mode.
+	 */
+	if (value == 0)
+		err_led->mode = QNAP_MCU_ERR_LED_OFF;
+	else if (err_led->mode == QNAP_MCU_ERR_LED_OFF)
+		err_led->mode = QNAP_MCU_ERR_LED_ON;
+
+	cmd[3] = 0x30 + err_led->mode;
+
+	return qnap_mcu_exec_with_ack(err_led->mcu, cmd, sizeof(cmd));
+}
+
+static int qnap_mcu_err_led_blink_set(struct led_classdev *led_cdev,
+				      unsigned long *delay_on,
+				      unsigned long *delay_off)
+{
+	struct qnap_mcu_err_led *err_led = cdev_to_qnap_mcu_err_led(led_cdev);
+	u8 cmd[] = {
+		[0] = 0x40,
+		[1] = 0x52,
+		[2] = 0x30 + err_led->num,
+		[3] = 0x30
+	};
+
+	/* LED is off, nothing to do */
+	if (err_led->mode == QNAP_MCU_ERR_LED_OFF)
+		return 0;
+
+	if (*delay_on < 500) {
+		*delay_on = 100;
+		*delay_off = 100;
+		err_led->mode = QNAP_MCU_ERR_LED_BLINK_FAST;
+	} else {
+		*delay_on = 500;
+		*delay_off = 500;
+		err_led->mode = QNAP_MCU_ERR_LED_BLINK_SLOW;
+	}
+
+	cmd[3] = 0x30 + err_led->mode;
+
+	return qnap_mcu_exec_with_ack(err_led->mcu, cmd, sizeof(cmd));
+}
+
+static int qnap_mcu_register_err_led(struct device *dev, struct qnap_mcu *mcu, int num)
+{
+	struct qnap_mcu_err_led *err_led;
+	char tmp_buf[LED_MAX_NAME_SIZE];
+	int ret;
+
+	err_led = devm_kzalloc(dev, sizeof(*err_led), GFP_KERNEL);
+	if (!err_led)
+		return -ENOMEM;
+
+	err_led->mcu = mcu;
+	err_led->num = num;
+	err_led->mode = QNAP_MCU_ERR_LED_OFF;
+
+	snprintf(tmp_buf, LED_MAX_NAME_SIZE, "hdd%d:red:status", num + 1);
+	err_led->cdev.name = tmp_buf;
+
+	err_led->cdev.brightness_set_blocking = qnap_mcu_err_led_set;
+	err_led->cdev.blink_set = qnap_mcu_err_led_blink_set;
+	err_led->cdev.brightness = 0;
+	err_led->cdev.max_brightness = 1;
+
+	ret = devm_led_classdev_register(dev, &err_led->cdev);
+	if (ret)
+		return dev_err_probe(dev, ret, "failed to register hdd led %d", num);
+
+	return qnap_mcu_err_led_set(&err_led->cdev, 0);
+}
+
+enum qnap_mcu_usb_led_mode {
+	QNAP_MCU_USB_LED_ON = 1,
+	QNAP_MCU_USB_LED_OFF = 3,
+	QNAP_MCU_USB_LED_BLINK = 2,
+};
+
+struct qnap_mcu_usb_led {
+	struct qnap_mcu *mcu;
+	struct led_classdev cdev;
+	u8 mode;
+};
+
+static inline struct qnap_mcu_usb_led *
+		cdev_to_qnap_mcu_usb_led(struct led_classdev *led_cdev)
+{
+	return container_of(led_cdev, struct qnap_mcu_usb_led, cdev);
+}
+
+static int qnap_mcu_usb_led_set(struct led_classdev *led_cdev,
+				enum led_brightness value)
+{
+	struct qnap_mcu_usb_led *usb_led = cdev_to_qnap_mcu_usb_led(led_cdev);
+	u8 cmd[] = {
+		[0] = 0x40,
+		[1] = 0x43,
+		[2] = 0
+	};
+
+	/*
+	 * If the led is off, turn it on. Otherwise don't disturb
+	 * a possible set blink-mode.
+	 */
+	if (value == 0)
+		usb_led->mode = QNAP_MCU_USB_LED_OFF;
+	else if (usb_led->mode == QNAP_MCU_USB_LED_OFF)
+		usb_led->mode = QNAP_MCU_USB_LED_ON;
+
+	/* byte 3 is shared between the usb led target and setting the mode */
+	cmd[2] = 0x44 | usb_led->mode;
+
+	return qnap_mcu_exec_with_ack(usb_led->mcu, cmd, sizeof(cmd));
+}
+
+static int qnap_mcu_usb_led_blink_set(struct led_classdev *led_cdev,
+				      unsigned long *delay_on,
+				      unsigned long *delay_off)
+{
+	struct qnap_mcu_usb_led *usb_led = cdev_to_qnap_mcu_usb_led(led_cdev);
+	u8 cmd[] = {
+		[0] = 0x40,
+		[1] = 0x43,
+		[2] = 0
+	};
+
+	/* LED is off, nothing to do */
+	if (usb_led->mode == QNAP_MCU_USB_LED_OFF)
+		return 0;
+
+	*delay_on = 250;
+	*delay_off = 250;
+	usb_led->mode = QNAP_MCU_USB_LED_BLINK;
+
+	/* byte 3 is shared between the usb led target and setting the mode */
+	cmd[2] = 0x44 | usb_led->mode;
+
+	return qnap_mcu_exec_with_ack(usb_led->mcu, cmd, sizeof(cmd));
+}
+
+static int qnap_mcu_register_usb_led(struct device *dev, struct qnap_mcu *mcu)
+{
+	struct qnap_mcu_usb_led *usb_led;
+	int ret;
+
+	usb_led = devm_kzalloc(dev, sizeof(*usb_led), GFP_KERNEL);
+	if (!usb_led)
+		return -ENOMEM;
+
+	usb_led->mcu = mcu;
+	usb_led->mode = QNAP_MCU_USB_LED_OFF;
+	usb_led->cdev.name = "usb:blue:disk";
+	usb_led->cdev.brightness_set_blocking = qnap_mcu_usb_led_set;
+	usb_led->cdev.blink_set = qnap_mcu_usb_led_blink_set;
+	usb_led->cdev.brightness = 0;
+	usb_led->cdev.max_brightness = 1;
+
+	ret = devm_led_classdev_register(dev, &usb_led->cdev);
+	if (ret)
+		return dev_err_probe(dev, ret, "failed to register usb led");
+
+	return qnap_mcu_usb_led_set(&usb_led->cdev, 0);
+}
+
+static int qnap_mcu_leds_probe(struct platform_device *pdev)
+{
+	struct qnap_mcu *mcu = dev_get_drvdata(pdev->dev.parent);
+	const struct qnap_mcu_variant *variant = qnap_mcu_get_variant_data(mcu);
+	int ret, i;
+
+	for (i = 0; i < variant->num_drives; i++) {
+		ret = qnap_mcu_register_err_led(&pdev->dev, mcu, i);
+		if (ret)
+			return dev_err_probe(&pdev->dev, ret,
+					"failed to register error led %d\n", i);
+	}
+
+	if (variant->usb_led) {
+		ret = qnap_mcu_register_usb_led(&pdev->dev, mcu);
+		if (ret)
+			return dev_err_probe(&pdev->dev, ret,
+					"failed to register usb led %d\n", i);
+	}
+
+	return 0;
+}
+
+static struct platform_driver qnap_mcu_leds_driver = {
+	.probe = qnap_mcu_leds_probe,
+	.driver = {
+		.name = "qnap-mcu-leds",
+	},
+};
+module_platform_driver(qnap_mcu_leds_driver);
+
+MODULE_ALIAS("platform:qnap-mcu-leds");
+MODULE_AUTHOR("Heiko Stuebner <heiko@sntech.de>");
+MODULE_DESCRIPTION("QNAP MCU LEDs driver");
+MODULE_LICENSE("GPL");
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

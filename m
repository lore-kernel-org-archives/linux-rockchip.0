Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4556CE7AFD
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Sep 2024 09:52:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FgozBMbTdKfe+dcCrKTS9hmiKm2AonSoSld36y2xAXs=; b=t/xz1AzJvTGuXP
	I+tqTR+GwhPCHDaAldsQFe0TYa6mIEkak++qtcszNJBWYMchuXR4k2P/5Uz7Mu9ablqH2DwOvN+SK
	yIfbYsgRrpCg4iCqPLzqWmETdRc5WVniF6xoByInbiFMLGUjPjwvoEk9bRwt3+plm8Ban0Mxkds9G
	jQwQzobPcgO8DcB9G084XIgeyoi4tVjhNr7tT3OULaiOgwccJ09AajaFfRfoLAIdct+5UPebiFp8G
	24JmBQMQjteLqcSXDyBcjK0vzTfWIGrIB0hFHhJIydFQELkX/GtgN84HPijjQlNZv3XFH5mbPpOq0
	1oab1Qh9yHI87Al0cmVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smVe8-0000000BcOk-1ier;
	Fri, 06 Sep 2024 09:52:52 +0000
Received: from [129.204.178.38] (helo=classfun.cn)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smVPs-0000000BXhr-0l38;
	Fri, 06 Sep 2024 09:38:10 +0000
Received: from bigfoot-server-storage.classfun.cn (unknown [124.72.163.35])
	(Authenticated sender: bigfoot)
	by classfun.cn (Postfix) with ESMTPSA id 923D378A05;
	Fri,  6 Sep 2024 17:38:06 +0800 (CST)
DKIM-Filter: OpenDKIM Filter v2.11.0 classfun.cn 923D378A05
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=classfun.cn;
	s=default; t=1725615487;
	bh=hZTZbSfVVPcaXYurK+c0izrqCxaMJo+BxeNMmFk+NcQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=o9B0rZJuGBHvVtcF31692tZGc2gAOONZc0k+F5MeU4K3bBBBaAfuFH+FHmJI3QgCU
	 vyy3/9iVIrlMnjMieJWmT+12vyqD495myfsH76jRzwV9Fc9rGSVokEtejpt7vBn8GY
	 9w1gByiYcP/B7z9yx1BJQbFo9tus4JE3TyttJxjM=
From: Junhao Xie <bigfoot@classfun.cn>
To: devicetree@vger.kernel.org,
	linux-hwmon@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-leds@vger.kernel.org,
	linux-pm@vger.kernel.org,
	linux-rtc@vger.kernel.org,
	linux-watchdog@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Jean Delvare <jdelvare@suse.com>,
	Guenter Roeck <linux@roeck-us.net>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Pavel Machek <pavel@ucw.cz>,
	Lee Jones <lee@kernel.org>,
	Sebastian Reichel <sre@kernel.org>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Junhao Xie <bigfoot@classfun.cn>
Subject: [PATCH 7/9] leds: add Photonicat PMU LED driver
Date: Fri,  6 Sep 2024 17:36:28 +0800
Message-ID: <20240906093630.2428329-8-bigfoot@classfun.cn>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240906093630.2428329-1-bigfoot@classfun.cn>
References: <20240906093630.2428329-1-bigfoot@classfun.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_023808_425672_BC356D0A 
X-CRM114-Status: GOOD (  20.31  )
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

Photonicat has a network status LED that can be controlled by system.
The LED status can be set through command 0x19.

Signed-off-by: Junhao Xie <bigfoot@classfun.cn>
---
 drivers/leds/Kconfig           | 11 +++++
 drivers/leds/Makefile          |  1 +
 drivers/leds/leds-photonicat.c | 75 ++++++++++++++++++++++++++++++++++
 3 files changed, 87 insertions(+)
 create mode 100644 drivers/leds/leds-photonicat.c

diff --git a/drivers/leds/Kconfig b/drivers/leds/Kconfig
index 8d9d8da376e4..539adb5944e6 100644
--- a/drivers/leds/Kconfig
+++ b/drivers/leds/Kconfig
@@ -381,6 +381,17 @@ config LEDS_PCA9532_GPIO
 	  To use a pin as gpio pca9532_type in pca9532_platform data needs to
 	  set to PCA9532_TYPE_GPIO.
 
+config LEDS_PHOTONICAT_PMU
+	tristate "LED Support for Photonicat PMU"
+	depends on LEDS_CLASS
+	depends on MFD_PHOTONICAT_PMU
+	help
+	  Photonicat has a network status LED that can be controlled by system,
+	  this option enables support for LEDs connected to the Photonicat PMU.
+
+	  To compile this driver as a module, choose M here: the
+	  module will be called leds-photonicat.
+
 config LEDS_GPIO
 	tristate "LED Support for GPIO connected LEDs"
 	depends on LEDS_CLASS
diff --git a/drivers/leds/Makefile b/drivers/leds/Makefile
index 18afbb5a23ee..dcd5312aee12 100644
--- a/drivers/leds/Makefile
+++ b/drivers/leds/Makefile
@@ -76,6 +76,7 @@ obj-$(CONFIG_LEDS_PCA9532)		+= leds-pca9532.o
 obj-$(CONFIG_LEDS_PCA955X)		+= leds-pca955x.o
 obj-$(CONFIG_LEDS_PCA963X)		+= leds-pca963x.o
 obj-$(CONFIG_LEDS_PCA995X)		+= leds-pca995x.o
+obj-$(CONFIG_LEDS_PHOTONICAT_PMU)	+= leds-photonicat.o
 obj-$(CONFIG_LEDS_PM8058)		+= leds-pm8058.o
 obj-$(CONFIG_LEDS_POWERNV)		+= leds-powernv.o
 obj-$(CONFIG_LEDS_PWM)			+= leds-pwm.o
diff --git a/drivers/leds/leds-photonicat.c b/drivers/leds/leds-photonicat.c
new file mode 100644
index 000000000000..3aa5ce525b83
--- /dev/null
+++ b/drivers/leds/leds-photonicat.c
@@ -0,0 +1,75 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) 2024 Junhao Xie <bigfoot@classfun.cn>
+ */
+
+#include <linux/mfd/photonicat-pmu.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/platform_device.h>
+#include <linux/leds.h>
+
+struct pcat_leds {
+	struct device *dev;
+	struct pcat_pmu *pmu;
+	struct led_classdev cdev;
+};
+
+static int pcat_led_status_set(struct led_classdev *cdev,
+			       enum led_brightness brightness)
+{
+	struct pcat_leds *leds = container_of(cdev, struct pcat_leds, cdev);
+	struct pcat_data_cmd_led_setup setup = { 0, 0, 0 };
+
+	if (brightness)
+		setup.on_time = 100;
+	else
+		setup.down_time = 100;
+	return pcat_pmu_write_data(leds->pmu, PCAT_CMD_NET_STATUS_LED_SETUP,
+				   &setup, sizeof(setup));
+}
+
+static int pcat_leds_probe(struct platform_device *pdev)
+{
+	int ret;
+	struct device *dev = &pdev->dev;
+	struct pcat_leds *leds;
+	const char *label;
+
+	leds = devm_kzalloc(dev, sizeof(*leds), GFP_KERNEL);
+	if (!leds)
+		return -ENOMEM;
+
+	leds->dev = dev;
+	leds->pmu = dev_get_drvdata(dev->parent);
+	platform_set_drvdata(pdev, leds);
+
+	ret = of_property_read_string(dev->of_node, "label", &label);
+	if (ret)
+		return dev_err_probe(dev, ret, "No label property\n");
+
+	leds->cdev.name = label;
+	leds->cdev.max_brightness = 1;
+	leds->cdev.brightness_set_blocking = pcat_led_status_set;
+
+	return devm_led_classdev_register(dev, &leds->cdev);
+}
+
+static const struct of_device_id pcat_leds_dt_ids[] = {
+	{ .compatible = "ariaboard,photonicat-pmu-leds", },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, pcat_leds_dt_ids);
+
+static struct platform_driver pcat_leds_driver = {
+	.driver = {
+		.name = "photonicat-leds",
+		.of_match_table = pcat_leds_dt_ids,
+	},
+	.probe = pcat_leds_probe,
+};
+module_platform_driver(pcat_leds_driver);
+
+MODULE_AUTHOR("Junhao Xie <bigfoot@classfun.cn>");
+MODULE_DESCRIPTION("Photonicat PMU Status LEDs");
+MODULE_LICENSE("GPL");
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

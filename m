Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 699FBCE7AFD
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Sep 2024 09:51:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WCGvsTeRuGBskpWShL+yeJLC7722s/d22E4xElKjqUc=; b=T6GCNOoA0ey8Y9
	US3zRLCUZcK9OBPMnRQlZE0DcVH3doULPXyg1+qr4GvercSxG++FFTWJqONv2dr/y59cjJSZsdJfz
	FAhDjaNMokZGZ73mvRcSgaRsjPypKK0UpZax/oYS7uOcpy8RKy+MMnwVzFifWgMbyuGfGO/0yoepZ
	RsK3Azq8q9lpXWlKlNJa1Cjc07yc1eOPXK9Ej+cWfwMoCSS1lUGIc4IAhaW/H1rkr1TGrr4FwZr96
	YK5XCCQbhw4zeZqnduTkYtKuHZdbSsJXbC6S9LY+pB8CjUOWSa6KO0e2ITPbw4lCv5Ias8bBg1Z6Y
	PVb2dfkrOWQyTAe2I/ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smVdA-0000000Bc7g-2rOI;
	Fri, 06 Sep 2024 09:51:52 +0000
Received: from [129.204.178.38] (helo=classfun.cn)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smVPq-0000000BXhM-3dHC;
	Fri, 06 Sep 2024 09:38:08 +0000
Received: from bigfoot-server-storage.classfun.cn (unknown [124.72.163.35])
	(Authenticated sender: bigfoot)
	by classfun.cn (Postfix) with ESMTPSA id 4D17B78A04;
	Fri,  6 Sep 2024 17:38:05 +0800 (CST)
DKIM-Filter: OpenDKIM Filter v2.11.0 classfun.cn 4D17B78A04
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=classfun.cn;
	s=default; t=1725615486;
	bh=xBIuGqHHQKbj1aEL07HdEcSje5Cmnydbi71SAu4uHH8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=IW16ShisTcPT/5bUhzlGahPqRntDnIUdGDjNnaJ41T2fCyUOEOWLajtl+agYo9JU6
	 1Muz4OnsolNeir1WSIuEPz1wqBw7muXWysmc4Q0s5cXS0cd5hrvu2lCkJ4xzns/O67
	 AGxvySiFHHcHPOy9HNORmIopzcifr+OY24DrtTBU=
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
Subject: [PATCH 6/9] hwmon: Add support for Photonicat PMU board temperature sensor
Date: Fri,  6 Sep 2024 17:36:27 +0800
Message-ID: <20240906093630.2428329-7-bigfoot@classfun.cn>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240906093630.2428329-1-bigfoot@classfun.cn>
References: <20240906093630.2428329-1-bigfoot@classfun.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_023807_122456_ECA64373 
X-CRM114-Status: GOOD (  21.96  )
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

Photonicat PMU MCU will send status reports regularly,
including board temperature.

Signed-off-by: Junhao Xie <bigfoot@classfun.cn>
---
 drivers/hwmon/Kconfig            |  10 +++
 drivers/hwmon/Makefile           |   1 +
 drivers/hwmon/photonicat-hwmon.c | 129 +++++++++++++++++++++++++++++++
 3 files changed, 140 insertions(+)
 create mode 100644 drivers/hwmon/photonicat-hwmon.c

diff --git a/drivers/hwmon/Kconfig b/drivers/hwmon/Kconfig
index b60fe2e58ad6..b345e4856bcf 100644
--- a/drivers/hwmon/Kconfig
+++ b/drivers/hwmon/Kconfig
@@ -1781,6 +1781,16 @@ config SENSORS_PT5161L
 	  This driver can also be built as a module. If so, the module
 	  will be called pt5161l.
 
+config SENSORS_PHOTONICAT_PMU_HWMON
+	tristate "Photonicat PMU temperature sensor"
+	depends on MFD_PHOTONICAT_PMU
+	help
+	  If you say yes here you get support for temperature sensor on the
+	  Photonicat PMU.
+
+	  This driver can also be built as a module. If so, the module
+	  will be called photonicat-hwmon.
+
 config SENSORS_PWM_FAN
 	tristate "PWM fan"
 	depends on PWM || COMPILE_TEST
diff --git a/drivers/hwmon/Makefile b/drivers/hwmon/Makefile
index b1c7056c37db..a30658acb093 100644
--- a/drivers/hwmon/Makefile
+++ b/drivers/hwmon/Makefile
@@ -183,6 +183,7 @@ obj-$(CONFIG_SENSORS_OXP) += oxp-sensors.o
 obj-$(CONFIG_SENSORS_PC87360)	+= pc87360.o
 obj-$(CONFIG_SENSORS_PC87427)	+= pc87427.o
 obj-$(CONFIG_SENSORS_PCF8591)	+= pcf8591.o
+obj-$(CONFIG_SENSORS_PHOTONICAT_PMU_HWMON)	+= photonicat-hwmon.o
 obj-$(CONFIG_SENSORS_POWERZ)	+= powerz.o
 obj-$(CONFIG_SENSORS_POWR1220)  += powr1220.o
 obj-$(CONFIG_SENSORS_PT5161L)	+= pt5161l.o
diff --git a/drivers/hwmon/photonicat-hwmon.c b/drivers/hwmon/photonicat-hwmon.c
new file mode 100644
index 000000000000..f1e3ee5f5781
--- /dev/null
+++ b/drivers/hwmon/photonicat-hwmon.c
@@ -0,0 +1,129 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) 2024 Junhao Xie <bigfoot@classfun.cn>
+ */
+
+#include <linux/completion.h>
+#include <linux/hwmon.h>
+#include <linux/mfd/photonicat-pmu.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/platform_device.h>
+
+struct pcat_hwmon {
+	struct device *dev;
+	struct pcat_pmu *pmu;
+	struct notifier_block nb;
+	struct device *hwmon;
+	int temperature;
+	struct completion initial_report;
+};
+
+static ssize_t temp1_input_show(struct device *dev,
+				struct device_attribute *devattr, char *buf)
+{
+	struct pcat_hwmon *hwmon = dev_get_drvdata(dev);
+
+	return sprintf(buf, "%d\n", hwmon->temperature * 1000);
+}
+
+static DEVICE_ATTR_RO(temp1_input);
+
+static struct attribute *pcat_pmu_temp_attrs[] = {
+	&dev_attr_temp1_input.attr,
+	NULL
+};
+
+ATTRIBUTE_GROUPS(pcat_pmu_temp);
+
+static int pcat_hwmon_notify(struct notifier_block *nb, unsigned long action,
+			     void *data)
+{
+	struct pcat_hwmon *hwmon = container_of(nb, struct pcat_hwmon, nb);
+	struct pcat_data_cmd_status *status = pcat_data_get_data(data);
+
+	if (action != PCAT_CMD_STATUS_REPORT)
+		return NOTIFY_DONE;
+
+	hwmon->temperature = status->temp - 40;
+	complete(&hwmon->initial_report);
+
+	return NOTIFY_DONE;
+}
+
+static int pcat_hwmon_probe(struct platform_device *pdev)
+{
+	int ret;
+	struct device *dev = &pdev->dev;
+	struct pcat_hwmon *hwmon;
+	const char *label;
+
+	hwmon = devm_kzalloc(dev, sizeof(*hwmon), GFP_KERNEL);
+	if (!hwmon)
+		return -ENOMEM;
+
+	hwmon->dev = dev;
+	hwmon->pmu = dev_get_drvdata(dev->parent);
+	hwmon->nb.notifier_call = pcat_hwmon_notify;
+	init_completion(&hwmon->initial_report);
+	platform_set_drvdata(pdev, hwmon);
+
+	ret = of_property_read_string(dev->of_node, "label", &label);
+	if (ret)
+		return dev_err_probe(dev, ret, "No label property\n");
+
+	ret = pcat_pmu_register_notify(hwmon->pmu, &hwmon->nb);
+	if (ret)
+		return ret;
+
+	if (!wait_for_completion_timeout(&hwmon->initial_report,
+					 msecs_to_jiffies(3000))) {
+		ret = dev_err_probe(dev, -ETIMEDOUT,
+				    "timeout waiting for initial report\n");
+		goto error;
+	}
+
+	dev_info(dev, "Board Temprature: %d degress C\n", hwmon->temperature);
+
+	hwmon->hwmon = devm_hwmon_device_register_with_groups(
+		dev, label, hwmon, pcat_pmu_temp_groups);
+
+	if (IS_ERR(hwmon->hwmon)) {
+		ret = PTR_ERR(hwmon->hwmon);
+		dev_err_probe(&pdev->dev, ret,
+			      "Failed to register hwmon device\n");
+		goto error;
+	}
+
+	return 0;
+error:
+	pcat_pmu_unregister_notify(hwmon->pmu, &hwmon->nb);
+	return ret;
+}
+
+static void pcat_hwmon_remove(struct platform_device *pdev)
+{
+	struct pcat_hwmon *hwmon = platform_get_drvdata(pdev);
+
+	pcat_pmu_unregister_notify(hwmon->pmu, &hwmon->nb);
+}
+
+static const struct of_device_id pcat_hwmon_dt_ids[] = {
+	{ .compatible = "ariaboard,photonicat-pmu-hwmon", },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, pcat_hwmon_dt_ids);
+
+static struct platform_driver pcat_hwmon_driver = {
+	.driver = {
+		.name = "photonicat-hwmon",
+		.of_match_table = pcat_hwmon_dt_ids,
+	},
+	.probe = pcat_hwmon_probe,
+	.remove = pcat_hwmon_remove,
+};
+module_platform_driver(pcat_hwmon_driver);
+
+MODULE_AUTHOR("Junhao Xie <bigfoot@classfun.cn>");
+MODULE_DESCRIPTION("Photonicat PMU Hardware Monitor");
+MODULE_LICENSE("GPL");
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

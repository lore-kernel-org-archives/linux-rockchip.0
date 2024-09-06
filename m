Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B19ECE7AFD
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Sep 2024 09:49:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h4ME8hz2JBxdtOTXuZsaaQhl7dqnjA9a6hiC30ZaECk=; b=l3F+SN9tIzWqhk
	2P6sV6IQk3UfSr8ZYhNFayhR1y6hVWJbat/aAIGWQcq85OWFOX1C7I8osMICG3W62K2QK7oPNqsOi
	HzfKlofCCERlSQr5QzsMUlfc5vBRd/am9bg+pjB+dp9OgCFwF3GtxoUeZo1ePwUY375Juu/Qz39Wh
	l8p7MORXmPtFAyiEwNP/7t5pA7FhRtf5dnfEEt6YHGuZicKCEcUrVi/Qk9vts0fJNKmkCzlOQiq0s
	soYzJ78lTv7XmJIC5BALlkq+T/bSzDBiiG5E3GarHCvUoVlAzJ03y2tVMP+52+O3kNqGLNuXNblBH
	3r4+u/xYSo3FcSPSHQtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smVbC-0000000BbbT-4B5X;
	Fri, 06 Sep 2024 09:49:51 +0000
Received: from [129.204.178.38] (helo=classfun.cn)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smVPo-0000000BXhr-3UZ1;
	Fri, 06 Sep 2024 09:38:06 +0000
Received: from bigfoot-server-storage.classfun.cn (unknown [124.72.163.35])
	(Authenticated sender: bigfoot)
	by classfun.cn (Postfix) with ESMTPSA id B3C5D78A02;
	Fri,  6 Sep 2024 17:38:02 +0800 (CST)
DKIM-Filter: OpenDKIM Filter v2.11.0 classfun.cn B3C5D78A02
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=classfun.cn;
	s=default; t=1725615483;
	bh=3fj9fXkYleTJYptBPBvXwCMXMvOIbLFaP6j3BmqOLtk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=BfqGFyaKumeaYXXyrsXsWjRLF1sghwIn2qHbSI9Wav4S3+yxBbcHILiBfHtrRVV2g
	 twU0W3nZRr2obcng0mY0A0MtkQyWThkUawMclMuoMeBw9pI4BLQnZ3+ji1gojDv84a
	 aZVE1Hpnv7+lKQshKPVzRWwgVJnS5aAQAsp3Nv50=
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
Subject: [PATCH 4/9] power: supply: photonicat-supply: Add Photonicat PMU battery and charger
Date: Fri,  6 Sep 2024 17:36:25 +0800
Message-ID: <20240906093630.2428329-5-bigfoot@classfun.cn>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240906093630.2428329-1-bigfoot@classfun.cn>
References: <20240906093630.2428329-1-bigfoot@classfun.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_023805_069140_CC3CA123 
X-CRM114-Status: GOOD (  22.53  )
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

Photonicat PMU supports battery and charger power supply.
The MCU only provides voltage meter.

Signed-off-by: Junhao Xie <bigfoot@classfun.cn>
---
 drivers/power/supply/Kconfig             |  12 ++
 drivers/power/supply/Makefile            |   1 +
 drivers/power/supply/photonicat-supply.c | 250 +++++++++++++++++++++++
 3 files changed, 263 insertions(+)
 create mode 100644 drivers/power/supply/photonicat-supply.c

diff --git a/drivers/power/supply/Kconfig b/drivers/power/supply/Kconfig
index bcfa63fb9f1e..4d2fcf568810 100644
--- a/drivers/power/supply/Kconfig
+++ b/drivers/power/supply/Kconfig
@@ -455,6 +455,18 @@ config CHARGER_PCF50633
 	help
 	  Say Y to include support for NXP PCF50633 Main Battery Charger.
 
+config PHOTONICAT_POWER
+	tristate "Photonicat PMU power supply driver"
+	depends on MFD_PHOTONICAT_PMU
+	help
+	  Photonicat PMU supports battery and charger power supply.
+	  The MCU only provides voltage meter.
+
+	  Say Y here to enable support for Photonicat PMU power supply.
+
+	  This driver can also be built as a module. If so, the module will be
+	  called photonicat-supply.
+
 config BATTERY_RX51
 	tristate "Nokia RX-51 (N900) battery driver"
 	depends on TWL4030_MADC
diff --git a/drivers/power/supply/Makefile b/drivers/power/supply/Makefile
index 8dcb41545317..81ada9bb6438 100644
--- a/drivers/power/supply/Makefile
+++ b/drivers/power/supply/Makefile
@@ -63,6 +63,7 @@ obj-$(CONFIG_CHARGER_RT9471)	+= rt9471.o
 obj-$(CONFIG_BATTERY_TWL4030_MADC)	+= twl4030_madc_battery.o
 obj-$(CONFIG_CHARGER_88PM860X)	+= 88pm860x_charger.o
 obj-$(CONFIG_CHARGER_PCF50633)	+= pcf50633-charger.o
+obj-$(CONFIG_PHOTONICAT_POWER)	+= photonicat-supply.o
 obj-$(CONFIG_BATTERY_RX51)	+= rx51_battery.o
 obj-$(CONFIG_AB8500_BM)		+= ab8500_bmdata.o ab8500_charger.o ab8500_fg.o ab8500_btemp.o ab8500_chargalg.o
 obj-$(CONFIG_CHARGER_CPCAP)	+= cpcap-charger.o
diff --git a/drivers/power/supply/photonicat-supply.c b/drivers/power/supply/photonicat-supply.c
new file mode 100644
index 000000000000..e6861a3904fe
--- /dev/null
+++ b/drivers/power/supply/photonicat-supply.c
@@ -0,0 +1,250 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) 2024 Junhao Xie <bigfoot@classfun.cn>
+ */
+
+#include <linux/module.h>
+#include <linux/mfd/photonicat-pmu.h>
+#include <linux/notifier.h>
+#include <linux/of.h>
+#include <linux/platform_device.h>
+#include <linux/power_supply.h>
+
+enum pcat_supply_type {
+	PCAT_SUPPLY_BATTERY,
+	PCAT_SUPPLY_CHARGER,
+};
+
+struct pcat_supply {
+	struct device *dev;
+	struct pcat_pmu *pmu;
+	struct notifier_block nb;
+	struct power_supply *psy;
+	struct power_supply_desc desc;
+	struct power_supply_battery_info *bat_info;
+	enum pcat_supply_type type;
+	u16 supply_microvolt;
+	struct completion initial_report;
+};
+
+static int pcat_pmu_get_capacity(struct pcat_supply *supply)
+{
+	int uv;
+
+	if (supply->type != PCAT_SUPPLY_BATTERY)
+		return 0;
+	uv = supply->supply_microvolt * 1000;
+
+	return power_supply_batinfo_ocv2cap(supply->bat_info, uv, 20);
+}
+
+static int pcat_pmu_get_energy(struct pcat_supply *supply)
+{
+	int capacity;
+
+	if (supply->type != PCAT_SUPPLY_BATTERY)
+		return 0;
+	capacity = pcat_pmu_get_capacity(supply);
+	if (capacity < 0)
+		return 0;
+
+	return supply->bat_info->energy_full_design_uwh / 100 * capacity;
+}
+
+static int pcat_pmu_get_status(struct pcat_supply *supply)
+{
+	if (supply->type != PCAT_SUPPLY_BATTERY)
+		return 0;
+
+	if (pcat_pmu_get_capacity(supply) < 100) {
+		if (power_supply_am_i_supplied(supply->psy))
+			return POWER_SUPPLY_STATUS_CHARGING;
+		else
+			return POWER_SUPPLY_STATUS_DISCHARGING;
+	}
+
+	return POWER_SUPPLY_STATUS_FULL;
+}
+
+static int pcat_pmu_get_supply_property(struct power_supply *psy,
+					enum power_supply_property psp,
+					union power_supply_propval *val)
+{
+	struct pcat_supply *supply = power_supply_get_drvdata(psy);
+
+	switch (psp) {
+	case POWER_SUPPLY_PROP_CAPACITY:
+		val->intval = pcat_pmu_get_capacity(supply);
+		break;
+	case POWER_SUPPLY_PROP_ONLINE:
+		val->intval = supply->supply_microvolt > 1000;
+		break;
+	case POWER_SUPPLY_PROP_ENERGY_FULL:
+		val->intval = supply->bat_info->energy_full_design_uwh;
+		break;
+	case POWER_SUPPLY_PROP_ENERGY_NOW:
+		val->intval = pcat_pmu_get_energy(supply);
+		break;
+	case POWER_SUPPLY_PROP_STATUS:
+		val->intval = pcat_pmu_get_status(supply);
+		break;
+	case POWER_SUPPLY_PROP_VOLTAGE_MAX:
+		val->intval = supply->bat_info->voltage_max_design_uv;
+		break;
+	case POWER_SUPPLY_PROP_VOLTAGE_MIN:
+		val->intval = supply->bat_info->voltage_min_design_uv;
+		break;
+	case POWER_SUPPLY_PROP_VOLTAGE_NOW:
+		val->intval = supply->supply_microvolt * 1000;
+		break;
+	default:
+		return -EINVAL;
+	}
+	return 0;
+}
+
+static enum power_supply_property pcat_charger_props[] = {
+	POWER_SUPPLY_PROP_VOLTAGE_NOW,
+	POWER_SUPPLY_PROP_ONLINE,
+};
+
+static enum power_supply_property pcat_battery_props[] = {
+	POWER_SUPPLY_PROP_CAPACITY,
+	POWER_SUPPLY_PROP_ENERGY_FULL,
+	POWER_SUPPLY_PROP_ENERGY_NOW,
+	POWER_SUPPLY_PROP_STATUS,
+	POWER_SUPPLY_PROP_VOLTAGE_MAX,
+	POWER_SUPPLY_PROP_VOLTAGE_MIN,
+	POWER_SUPPLY_PROP_VOLTAGE_NOW,
+};
+
+static int pcat_supply_notify(struct notifier_block *nb, unsigned long action,
+			      void *data)
+{
+	struct pcat_supply *supply = container_of(nb, struct pcat_supply, nb);
+	struct pcat_data_cmd_status *status = pcat_data_get_data(data);
+
+	if (action != PCAT_CMD_STATUS_REPORT)
+		return NOTIFY_DONE;
+
+	switch (supply->type) {
+	case PCAT_SUPPLY_BATTERY:
+		supply->supply_microvolt = status->battery_microvolt;
+		break;
+	case PCAT_SUPPLY_CHARGER:
+		supply->supply_microvolt = status->charger_microvolt;
+		break;
+	}
+
+	complete(&supply->initial_report);
+
+	return NOTIFY_DONE;
+}
+
+static int pcat_supply_probe(struct platform_device *pdev)
+{
+	int ret;
+	const char *label;
+	const char *supply_type;
+	struct device *dev = &pdev->dev;
+	struct pcat_supply *supply;
+	struct power_supply_config psy_cfg = {};
+
+	supply = devm_kzalloc(dev, sizeof(*supply), GFP_KERNEL);
+	if (!supply)
+		return -ENOMEM;
+
+	supply->dev = dev;
+	supply->pmu = dev_get_drvdata(dev->parent);
+	supply->nb.notifier_call = pcat_supply_notify;
+	init_completion(&supply->initial_report);
+	psy_cfg.drv_data = supply;
+	psy_cfg.of_node = dev->of_node;
+	platform_set_drvdata(pdev, supply);
+
+	ret = of_property_read_string(dev->of_node, "type", &supply_type);
+	if (ret)
+		return dev_err_probe(dev, ret, "No supply type property\n");
+
+	ret = of_property_read_string(dev->of_node, "label", &label);
+	if (ret)
+		return dev_err_probe(dev, ret, "No label property\n");
+
+	if (!strcmp(supply_type, "battery")) {
+		supply->type = PCAT_SUPPLY_BATTERY;
+		supply->desc.type = POWER_SUPPLY_TYPE_BATTERY;
+		supply->desc.properties = pcat_battery_props;
+		supply->desc.num_properties = ARRAY_SIZE(pcat_battery_props);
+	} else if (!strcmp(supply_type, "charger")) {
+		supply->type = PCAT_SUPPLY_CHARGER;
+		supply->desc.type = POWER_SUPPLY_TYPE_MAINS;
+		supply->desc.properties = pcat_charger_props;
+		supply->desc.num_properties = ARRAY_SIZE(pcat_charger_props);
+	} else
+		return dev_err_probe(dev, -EINVAL, "Unknown supply type %s\n",
+				     supply_type);
+
+	ret = pcat_pmu_register_notify(supply->pmu, &supply->nb);
+	if (ret)
+		return ret;
+
+	if (!wait_for_completion_timeout(&supply->initial_report,
+					 msecs_to_jiffies(3000))) {
+		ret = dev_err_probe(dev, -ETIMEDOUT,
+				    "timeout waiting for initial report\n");
+		goto error;
+	}
+
+	dev_info(dev, "Voltage: %u mV\n", supply->supply_microvolt);
+
+	supply->desc.name = label;
+	supply->desc.get_property = pcat_pmu_get_supply_property;
+
+	supply->psy = devm_power_supply_register(dev, &supply->desc, &psy_cfg);
+	if (IS_ERR(supply->psy)) {
+		ret = PTR_ERR(supply->psy);
+		dev_err_probe(dev, ret, "Failed to register supply\n");
+		goto error;
+	}
+
+	if (supply->type == PCAT_SUPPLY_BATTERY) {
+		ret = power_supply_get_battery_info(supply->psy,
+						    &supply->bat_info);
+		if (ret) {
+			dev_err_probe(dev, ret, "Unable to get battery info\n");
+			goto error;
+		}
+	}
+
+	return 0;
+error:
+	pcat_pmu_unregister_notify(supply->pmu, &supply->nb);
+	return ret;
+}
+
+static void pcat_supply_remove(struct platform_device *pdev)
+{
+	struct pcat_supply *supply = platform_get_drvdata(pdev);
+
+	pcat_pmu_unregister_notify(supply->pmu, &supply->nb);
+}
+
+static const struct of_device_id pcat_supply_dt_ids[] = {
+	{ .compatible = "ariaboard,photonicat-pmu-supply", },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, pcat_supply_dt_ids);
+
+static struct platform_driver pcat_supply_driver = {
+	.driver = {
+		.name = "photonicat-supply",
+		.of_match_table = pcat_supply_dt_ids,
+	},
+	.probe = pcat_supply_probe,
+	.remove = pcat_supply_remove,
+};
+module_platform_driver(pcat_supply_driver);
+
+MODULE_AUTHOR("Junhao Xie <bigfoot@classfun.cn>");
+MODULE_DESCRIPTION("Photonicat PMU Power Supply");
+MODULE_LICENSE("GPL");
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

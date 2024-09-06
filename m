Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE147CE7AFB
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Sep 2024 09:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1odPILI9JH02+biky78RaZ+0LfnxwAVdIZvG3O0Uqwg=; b=IVanxJG0ax4Ms5
	sQGSTfmof2mpxqcMiRyq+ttwOhvX9ZNaZDhqPzLTVPmMe379Mq+eRop43XmCWsgpPj9hSmC5lGtoG
	/3yGj6a083txQ9bJmCGuiNvVjCk63KQ/kDekoMUUuc+0mRZ9rSsbl7YVo9LJSBJ/S5A0wufh9gTx1
	tGsWBUk6v0j00sycGsgXimn4SQhLGHW9SOsD/x92Hc+jkPIYH4H2QZCFPSMI2rXjzs9xwoWuUQb9e
	2deuWstbs2zkaR8EpWgNBTjaFfyagmc7paCGoNjQLZfvVJTwTbLWrVd38pq2zyvHDOfyNbby+1+rg
	Je6J8eKpAWkyNoeJwftQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smVcA-0000000Bbpq-1Zgi;
	Fri, 06 Sep 2024 09:50:50 +0000
Received: from [129.204.178.38] (helo=classfun.cn)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smVPp-0000000BXh4-2XE8;
	Fri, 06 Sep 2024 09:38:07 +0000
Received: from bigfoot-server-storage.classfun.cn (unknown [124.72.163.35])
	(Authenticated sender: bigfoot)
	by classfun.cn (Postfix) with ESMTPSA id 0936078A03;
	Fri,  6 Sep 2024 17:38:03 +0800 (CST)
DKIM-Filter: OpenDKIM Filter v2.11.0 classfun.cn 0936078A03
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=classfun.cn;
	s=default; t=1725615485;
	bh=YQ6dfBwyAAugUzhApDOCUWBWXXsLha14N6rXzvxlRLk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=C/7qhqBMMoDhCuEwhTLpqO9/NNtx+QAbpHZ7XlBHXQWF4DIAIBfmvqYEDnM13mLS/
	 gZm8AuWipJ5pawuqbs+SgbHRhXKnRjZSaobhnenwK5+RlA/O36OtQG2ehZIbBN3E7A
	 uIFDYxeC7RFBXtzOoYPgsNvR8AUS61D3OgtdMuLU=
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
Subject: [PATCH 5/9] rtc: Add Photonicat PMU real-time clock
Date: Fri,  6 Sep 2024 17:36:26 +0800
Message-ID: <20240906093630.2428329-6-bigfoot@classfun.cn>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240906093630.2428329-1-bigfoot@classfun.cn>
References: <20240906093630.2428329-1-bigfoot@classfun.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_023805_887191_894A7C52 
X-CRM114-Status: GOOD (  22.21  )
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
including the MCU RTC date time.

Use command 0x09 to update the RTC date time of MCU.

Signed-off-by: Junhao Xie <bigfoot@classfun.cn>
---
 drivers/rtc/Kconfig          |  12 +++
 drivers/rtc/Makefile         |   1 +
 drivers/rtc/rtc-photonicat.c | 190 +++++++++++++++++++++++++++++++++++
 3 files changed, 203 insertions(+)
 create mode 100644 drivers/rtc/rtc-photonicat.c

diff --git a/drivers/rtc/Kconfig b/drivers/rtc/Kconfig
index 2a95b05982ad..3403ba3f5643 100644
--- a/drivers/rtc/Kconfig
+++ b/drivers/rtc/Kconfig
@@ -516,6 +516,18 @@ config RTC_DRV_PCF8583
 	  This driver can also be built as a module. If so, the module
 	  will be called rtc-pcf8583.
 
+config RTC_DRV_PHOTONICAT_PMU
+	tristate "Photonicat PMU RTC"
+	depends on MFD_PHOTONICAT_PMU
+	help
+	  Photonicat PMU MCU will send status reports regularly,
+	  including the MCU RTC date time.
+
+	  If you say yes here you get support for the Photonicat PMU RTC.
+
+	  This driver can also be built as a module. If so, the module
+	  will be called rtc-photonicat.
+
 config RTC_DRV_M41T80
 	tristate "ST M41T62/65/M41T80/81/82/83/84/85/87 and compatible"
 	help
diff --git a/drivers/rtc/Makefile b/drivers/rtc/Makefile
index 3004e372f25f..f050a134da1f 100644
--- a/drivers/rtc/Makefile
+++ b/drivers/rtc/Makefile
@@ -129,6 +129,7 @@ obj-$(CONFIG_RTC_DRV_PCF8523)	+= rtc-pcf8523.o
 obj-$(CONFIG_RTC_DRV_PCF85363)	+= rtc-pcf85363.o
 obj-$(CONFIG_RTC_DRV_PCF8563)	+= rtc-pcf8563.o
 obj-$(CONFIG_RTC_DRV_PCF8583)	+= rtc-pcf8583.o
+obj-$(CONFIG_RTC_DRV_PHOTONICAT_PMU)	+= rtc-photonicat.o
 obj-$(CONFIG_RTC_DRV_PIC32)	+= rtc-pic32.o
 obj-$(CONFIG_RTC_DRV_PL030)	+= rtc-pl030.o
 obj-$(CONFIG_RTC_DRV_PL031)	+= rtc-pl031.o
diff --git a/drivers/rtc/rtc-photonicat.c b/drivers/rtc/rtc-photonicat.c
new file mode 100644
index 000000000000..2e3115fb5c38
--- /dev/null
+++ b/drivers/rtc/rtc-photonicat.c
@@ -0,0 +1,190 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) 2024 Junhao Xie <bigfoot@classfun.cn>
+ */
+
+#include <linux/kernel.h>
+#include <linux/mfd/photonicat-pmu.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/platform_device.h>
+#include <linux/rtc.h>
+
+struct pcat_data_cmd_startup {
+	struct pcat_data_cmd_date_time time;
+	union {
+		u8 value;
+		struct {
+			bool year : 1;
+			bool month : 1;
+			bool day : 1;
+			bool hour : 1;
+			bool minute : 1;
+			bool second : 1;
+		} __packed;
+	} match;
+} __packed;
+
+struct pcat_rtc {
+	struct device *dev;
+	struct pcat_pmu *pmu;
+	struct notifier_block nb;
+	struct rtc_device *rtc;
+	struct pcat_data_cmd_date_time time;
+	struct completion initial_report;
+};
+
+static bool pcat_time_to_rtc_time(const struct pcat_data_cmd_date_time *time,
+				  struct rtc_time *tm)
+{
+	if (time->second >= 60 || time->minute >= 60 || time->hour >= 24 ||
+	    time->day <= 0 || time->day > 31 || time->month <= 0 ||
+	    time->month > 12 || time->year < 1900 || time->year > 9999)
+		return false;
+
+	tm->tm_sec = time->second;
+	tm->tm_min = time->minute;
+	tm->tm_hour = time->hour;
+	tm->tm_mday = time->day;
+	tm->tm_mon = time->month - 1;
+	tm->tm_year = time->year - 1900;
+	tm->tm_yday = rtc_year_days(tm->tm_mday, tm->tm_mon, time->year);
+	tm->tm_wday = ((time->year * (365 % 7)) + ((time->year - 1) / 4) -
+		       ((time->year - 1) / 100) + ((time->year - 1) / 400) +
+		       tm->tm_yday) % 7;
+
+	return true;
+}
+
+static void pcat_time_from_rtc_time(struct pcat_data_cmd_date_time *time,
+				    const struct rtc_time *tm)
+{
+	time->year = tm->tm_year + 1900;
+	time->month = tm->tm_mon + 1;
+	time->day = tm->tm_mday;
+	time->hour = tm->tm_hour;
+	time->minute = tm->tm_min;
+	time->second = tm->tm_sec;
+}
+
+static int pcat_rtc_read_time(struct device *dev, struct rtc_time *tm)
+{
+	struct pcat_rtc *rtc = dev_get_drvdata(dev);
+
+	memset(tm, 0, sizeof(*tm));
+	if (!pcat_time_to_rtc_time(&rtc->time, tm))
+		return -EINVAL;
+
+	return 0;
+}
+
+static int pcat_rtc_set_time(struct device *dev, struct rtc_time *tm)
+{
+	int ret;
+	struct pcat_rtc *rtc = dev_get_drvdata(dev);
+	struct pcat_data_cmd_date_time time;
+
+	pcat_time_from_rtc_time(&time, tm);
+
+	ret = pcat_pmu_write_data(rtc->pmu, PCAT_CMD_DATE_TIME_SYNC,
+				  &time, sizeof(time));
+	if (ret)
+		return ret;
+
+	memcpy(&rtc->time, &time, sizeof(rtc->time));
+
+	return 0;
+}
+
+static const struct rtc_class_ops pcat_rtc_ops = {
+	.read_time = pcat_rtc_read_time,
+	.set_time = pcat_rtc_set_time,
+};
+
+static int pcat_rtc_notify(struct notifier_block *nb, unsigned long action,
+			   void *data)
+{
+	struct pcat_rtc *rtc = container_of(nb, struct pcat_rtc, nb);
+	struct pcat_data_cmd_status *status = pcat_data_get_data(data);
+
+	if (action != PCAT_CMD_STATUS_REPORT)
+		return NOTIFY_DONE;
+
+	memcpy(&rtc->time, &status->time, sizeof(rtc->time));
+	complete(&rtc->initial_report);
+
+	return NOTIFY_DONE;
+}
+
+static int pcat_rtc_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct pcat_rtc *rtc;
+	int ret;
+
+	rtc = devm_kzalloc(&pdev->dev, sizeof(*rtc), GFP_KERNEL);
+	if (!rtc)
+		return -ENOMEM;
+
+	rtc->dev = dev;
+	rtc->pmu = dev_get_drvdata(dev->parent);
+	rtc->nb.notifier_call = pcat_rtc_notify;
+	init_completion(&rtc->initial_report);
+	platform_set_drvdata(pdev, rtc);
+
+	ret = pcat_pmu_register_notify(rtc->pmu, &rtc->nb);
+	if (ret)
+		return ret;
+
+	if (!wait_for_completion_timeout(&rtc->initial_report,
+					 msecs_to_jiffies(3000))) {
+		ret = dev_err_probe(dev, -ETIMEDOUT,
+				    "timeout waiting for initial report\n");
+		goto error;
+	}
+
+	dev_info(dev, "RTC Time: %04d/%02d/%02d %02d:%02d:%02d\n",
+		 rtc->time.year, rtc->time.month, rtc->time.day, rtc->time.hour,
+		 rtc->time.minute, rtc->time.second);
+
+	rtc->rtc = devm_rtc_device_register(&pdev->dev, "pcat-rtc",
+					    &pcat_rtc_ops, THIS_MODULE);
+	if (IS_ERR(rtc->rtc)) {
+		ret = PTR_ERR(rtc->rtc);
+		dev_err_probe(&pdev->dev, ret,
+			      "Failed to register RTC device\n");
+		goto error;
+	}
+
+	return 0;
+error:
+	pcat_pmu_unregister_notify(rtc->pmu, &rtc->nb);
+	return ret;
+}
+
+static void pcat_rtc_remove(struct platform_device *pdev)
+{
+	struct pcat_rtc *rtc = platform_get_drvdata(pdev);
+
+	pcat_pmu_unregister_notify(rtc->pmu, &rtc->nb);
+}
+
+static const struct of_device_id pcat_rtc_dt_ids[] = {
+	{ .compatible = "ariaboard,photonicat-pmu-rtc", },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, pcat_rtc_dt_ids);
+
+static struct platform_driver pcat_rtc_driver = {
+	.driver = {
+		.name = "rtc-photonicat",
+		.of_match_table = pcat_rtc_dt_ids,
+	},
+	.probe = pcat_rtc_probe,
+	.remove = pcat_rtc_remove,
+};
+module_platform_driver(pcat_rtc_driver);
+
+MODULE_AUTHOR("Junhao Xie <bigfoot@classfun.cn>");
+MODULE_DESCRIPTION("Photonicat PMU RTC");
+MODULE_LICENSE("GPL");
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

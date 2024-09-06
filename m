Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D36FCE7AFB
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Sep 2024 09:48:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GNmNyZeQCoXGgQ1ApsigkdlsKK73bQYNBxyDhXT5pKM=; b=1zEkwF4bmx2JCy
	5Zr82zn/WcYLIXWColb7f7oIuRQZsBpgjTlk0ChSd5tarZHEl65i6zdRVedBETiAzHZc3t/+7BaMt
	14x/TeBP+6K3XvU+ikCWg28fpQY2WuZl9BpyW5I31PlWjDwVA4xNKQCWmkdEFGwLUi4bHVy0KaPoh
	29zOBJQoZDDTpEu11XTUoCX7sussGexYeHe8kZ93ZDwhM7cmyu5MZ/4gE9UqkODWQ/+75zBqqsvRw
	EjEFrHEoFVSxyjKZI0IyZxlglzCiwM+G1HQ+RBMCjE+WfxOIN8KOGDP+Mn5h8A27M/JBDE+9PWw5g
	Z53A1dTGC3KJ/Ih4sivg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smVaH-0000000BbUg-1mjI;
	Fri, 06 Sep 2024 09:48:53 +0000
Received: from [129.204.178.38] (helo=classfun.cn)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smVPn-0000000BXhM-2niH;
	Fri, 06 Sep 2024 09:38:05 +0000
Received: from bigfoot-server-storage.classfun.cn (unknown [124.72.163.35])
	(Authenticated sender: bigfoot)
	by classfun.cn (Postfix) with ESMTPSA id 7478E78A01;
	Fri,  6 Sep 2024 17:38:01 +0800 (CST)
DKIM-Filter: OpenDKIM Filter v2.11.0 classfun.cn 7478E78A01
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=classfun.cn;
	s=default; t=1725615482;
	bh=/BoOWIWGCb24d6nKmXmJ9+eWvMhDf9jlRmzVWBVGxXQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=cOWjLARj/yCmcU4XoKmi9pd17fR2pQn017YQRLfZnjNNFdtVg+/NxX8N/wGLQgqBV
	 +6F7mi4pWMpY9tNkv4vo886Hnh2wna5hr+BsqTMhRHDv27oGf0jhw1aIsxP59Z2qQb
	 Ig42NdTjLQF+pv67M8nvmHgVkL9M7v/BXRao4204=
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
Subject: [PATCH 3/9] watchdog: Add Photonicat PMU watchdog driver
Date: Fri,  6 Sep 2024 17:36:24 +0800
Message-ID: <20240906093630.2428329-4-bigfoot@classfun.cn>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240906093630.2428329-1-bigfoot@classfun.cn>
References: <20240906093630.2428329-1-bigfoot@classfun.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_023803_879249_0635D80F 
X-CRM114-Status: GOOD (  21.08  )
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

This driver provides access to Photonicat PMU watchdog functionality.

Signed-off-by: Junhao Xie <bigfoot@classfun.cn>
---
 drivers/watchdog/Kconfig          |  12 +++
 drivers/watchdog/Makefile         |   1 +
 drivers/watchdog/photonicat-wdt.c | 124 ++++++++++++++++++++++++++++++
 3 files changed, 137 insertions(+)
 create mode 100644 drivers/watchdog/photonicat-wdt.c

diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
index bae1d97cce89..4094216a1c09 100644
--- a/drivers/watchdog/Kconfig
+++ b/drivers/watchdog/Kconfig
@@ -300,6 +300,18 @@ config MENZ069_WATCHDOG
 	  This driver can also be built as a module. If so the module
 	  will be called menz069_wdt.
 
+config PHOTONICAT_PMU_WDT
+	tristate "Photonicat PMU Watchdog"
+	depends on MFD_PHOTONICAT_PMU
+	select WATCHDOG_CORE
+	help
+	  This driver provides access to Photonicat PMU watchdog functionality.
+
+	  Say Y here to include support for the Photonicat PMU Watchdog.
+
+	  This driver can also be built as a module. If so the module
+	  will be called photonicat-wdt.
+
 config WDAT_WDT
 	tristate "ACPI Watchdog Action Table (WDAT)"
 	depends on ACPI
diff --git a/drivers/watchdog/Makefile b/drivers/watchdog/Makefile
index b51030f035a6..14375af84039 100644
--- a/drivers/watchdog/Makefile
+++ b/drivers/watchdog/Makefile
@@ -234,6 +234,7 @@ obj-$(CONFIG_ZIIRAVE_WATCHDOG) += ziirave_wdt.o
 obj-$(CONFIG_SOFT_WATCHDOG) += softdog.o
 obj-$(CONFIG_MENF21BMC_WATCHDOG) += menf21bmc_wdt.o
 obj-$(CONFIG_MENZ069_WATCHDOG) += menz69_wdt.o
+obj-$(CONFIG_PHOTONICAT_PMU_WDT) += photonicat-wdt.o
 obj-$(CONFIG_RAVE_SP_WATCHDOG) += rave-sp-wdt.o
 obj-$(CONFIG_STPMIC1_WATCHDOG) += stpmic1_wdt.o
 obj-$(CONFIG_SL28CPLD_WATCHDOG) += sl28cpld_wdt.o
diff --git a/drivers/watchdog/photonicat-wdt.c b/drivers/watchdog/photonicat-wdt.c
new file mode 100644
index 000000000000..1e758fcfb49f
--- /dev/null
+++ b/drivers/watchdog/photonicat-wdt.c
@@ -0,0 +1,124 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) 2024 Junhao Xie <bigfoot@classfun.cn>
+ */
+
+#include <linux/mfd/photonicat-pmu.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/platform_device.h>
+#include <linux/watchdog.h>
+
+struct pcat_watchdog {
+	struct device *dev;
+	struct pcat_pmu *pmu;
+	struct watchdog_device wdd;
+	u8 timeout;
+	bool started;
+};
+
+static const struct watchdog_info pcat_wdt_info = {
+	.options = WDIOF_SETTIMEOUT | WDIOF_KEEPALIVEPING | WDIOF_MAGICCLOSE,
+	.identity = "Photonicat PMU Watchdog",
+};
+
+static int pcat_wdt_setup(struct pcat_watchdog *data, int timeout)
+{
+	int ret;
+	u8 time = 0;
+	u8 times[3] = { 60, 60, 0 };
+
+	time = MIN(255, MAX(0, timeout));
+
+	ret = pcat_pmu_write_data(data->pmu, PCAT_CMD_WATCHDOG_TIMEOUT_SET,
+				  times, sizeof(times));
+	if (!ret)
+		data->started = timeout != 0;
+
+	return ret;
+}
+
+static int pcat_wdt_start(struct watchdog_device *wdev)
+{
+	struct pcat_watchdog *data = watchdog_get_drvdata(wdev);
+
+	return pcat_wdt_setup(data, data->timeout);
+}
+
+static int pcat_wdt_stop(struct watchdog_device *wdev)
+{
+	struct pcat_watchdog *data = watchdog_get_drvdata(wdev);
+
+	return pcat_wdt_setup(data, 0);
+}
+
+static int pcat_wdt_ping(struct watchdog_device *wdev)
+{
+	struct pcat_watchdog *data = watchdog_get_drvdata(wdev);
+
+	return pcat_pmu_send(data->pmu, PCAT_CMD_HEARTBEAT, NULL, 0);
+}
+
+static int pcat_wdt_set_timeout(struct watchdog_device *wdev, unsigned int val)
+{
+	int ret = 0;
+	struct pcat_watchdog *data = watchdog_get_drvdata(wdev);
+
+	data->timeout = val;
+	if (data->started)
+		ret = pcat_wdt_setup(data, data->timeout);
+
+	return ret;
+}
+
+static const struct watchdog_ops pcat_wdt_ops = {
+	.owner = THIS_MODULE,
+	.start = pcat_wdt_start,
+	.stop = pcat_wdt_stop,
+	.ping = pcat_wdt_ping,
+	.set_timeout = pcat_wdt_set_timeout,
+};
+
+static int pcat_watchdog_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct pcat_watchdog *watchdog;
+
+	watchdog = devm_kzalloc(dev, sizeof(*watchdog), GFP_KERNEL);
+	if (!watchdog)
+		return -ENOMEM;
+
+	watchdog->dev = dev;
+	watchdog->pmu = dev_get_drvdata(dev->parent);
+	watchdog->wdd.info = &pcat_wdt_info;
+	watchdog->wdd.ops = &pcat_wdt_ops;
+	watchdog->wdd.timeout = 60;
+	watchdog->wdd.max_timeout = U8_MAX;
+	watchdog->wdd.min_timeout = 0;
+	watchdog->wdd.parent = dev;
+
+	watchdog_stop_on_reboot(&watchdog->wdd);
+	watchdog_set_drvdata(&watchdog->wdd, watchdog);
+	platform_set_drvdata(pdev, watchdog);
+
+	return devm_watchdog_register_device(dev, &watchdog->wdd);
+}
+
+static const struct of_device_id pcat_watchdog_dt_ids[] = {
+	{ .compatible = "ariaboard,photonicat-pmu-watchdog", },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, pcat_watchdog_dt_ids);
+
+static struct platform_driver pcat_watchdog_driver = {
+	.driver = {
+		.name = "photonicat-watchdog",
+		.of_match_table = pcat_watchdog_dt_ids,
+	},
+	.probe = pcat_watchdog_probe,
+};
+module_platform_driver(pcat_watchdog_driver);
+
+MODULE_AUTHOR("Junhao Xie <bigfoot@classfun.cn>");
+MODULE_DESCRIPTION("Photonicat PMU watchdog");
+MODULE_LICENSE("GPL");
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E565CE7AFC
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Sep 2024 09:47:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZTwYS0dhzNmaJ9jlch8jY/NJdBB7lcoWlvlQp+P9Wt0=; b=UHFr9UFXttlO+9
	QWIhUXRNoItEJ+bYweKZpdzi+vZCh+rrUkE+/QMf4GNrbdYHXvGiuB3/dD/V1jLGuCx0HqpYfoU+Q
	EDRNFPMtrlQDfx8wg0WkwR9pE8+NoEKitMUFzxsQdr8MSkM6jiAaQoz+kyYEzgtMVthp3LsJXuajl
	KUau+enG9kmzAJB/Qcim6JqTAlyv7/vXEZicTUZkIf2a6RPPS64SHT5xB6kdOcBkfqWbJCsuqYGzG
	FJhMlq6VxPAy8JafTL5oXjI2vHIedU/3BFgVwZluau6Nd240WqND3zJpGYkRKUD1RTx2B7Dw6Lx1b
	HOeSUtXSx6XZFsSd9rAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smVZJ-0000000BbEn-0sSt;
	Fri, 06 Sep 2024 09:47:53 +0000
Received: from [129.204.178.38] (helo=classfun.cn)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smVPm-0000000BXh4-2sex;
	Fri, 06 Sep 2024 09:38:04 +0000
Received: from bigfoot-server-storage.classfun.cn (unknown [124.72.163.35])
	(Authenticated sender: bigfoot)
	by classfun.cn (Postfix) with ESMTPSA id 2F61778A00;
	Fri,  6 Sep 2024 17:38:00 +0800 (CST)
DKIM-Filter: OpenDKIM Filter v2.11.0 classfun.cn 2F61778A00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=classfun.cn;
	s=default; t=1725615481;
	bh=fPuodRfmaTupdvzBrA91yFT2O0NMhuRwoRu03bUlJyU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=fOCTWDz11oAmKxyxl7ZNdmbpva9MP9akIqev1VahbWt5bdWFmUOdYMGm5+0qeuoCr
	 iMxQgOnQriG+LMDiyffm9a8iHxRXGAYQH2vamqlladTL19ZKsyiSvXitrd+IdvKqsG
	 uxac2OsEj2ioQgmi4Ol8BKjc62ppZ0lwqU6AG76I=
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
Subject: [PATCH 2/9] power: reset: add Photonicat PMU poweroff driver
Date: Fri,  6 Sep 2024 17:36:23 +0800
Message-ID: <20240906093630.2428329-3-bigfoot@classfun.cn>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240906093630.2428329-1-bigfoot@classfun.cn>
References: <20240906093630.2428329-1-bigfoot@classfun.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_023802_907456_20C524E6 
X-CRM114-Status: GOOD (  20.08  )
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

This driver implements the shutdown function of Photonicat PMU:

- Host notifies PMU to shutdown:
  When powering off, a shutdown command (0x0F) needs to be sent
  to the MCU.

- PMU notifies host to shutdown:
  If the power button is long pressed, the MCU will send a shutdown
  command (0x0D) to the system.
  If system does not shutdown within 60 seconds,
  the power will be turned off directly.

Signed-off-by: Junhao Xie <bigfoot@classfun.cn>
---
 drivers/power/reset/Kconfig               | 12 +++
 drivers/power/reset/Makefile              |  1 +
 drivers/power/reset/photonicat-poweroff.c | 95 +++++++++++++++++++++++
 3 files changed, 108 insertions(+)
 create mode 100644 drivers/power/reset/photonicat-poweroff.c

diff --git a/drivers/power/reset/Kconfig b/drivers/power/reset/Kconfig
index fece990af4a7..c59529ce25a2 100644
--- a/drivers/power/reset/Kconfig
+++ b/drivers/power/reset/Kconfig
@@ -148,6 +148,18 @@ config POWER_RESET_ODROID_GO_ULTRA_POWEROFF
 	help
 	  This driver supports Power off for Odroid Go Ultra device.
 
+config POWER_RESET_PHOTONICAT_POWEROFF
+	tristate "Photonicat PMU power-off driver"
+	depends on MFD_PHOTONICAT_PMU
+	help
+	  This driver supports Power off for Photonicat PMU device.
+
+	  Supports operations:
+	    Host notifies PMU to shutdown
+	    PMU notifies host to shutdown
+
+	  Say Y if you have a Photonicat board.
+
 config POWER_RESET_PIIX4_POWEROFF
 	tristate "Intel PIIX4 power-off driver"
 	depends on PCI
diff --git a/drivers/power/reset/Makefile b/drivers/power/reset/Makefile
index a95d1bd275d1..339b36812b95 100644
--- a/drivers/power/reset/Makefile
+++ b/drivers/power/reset/Makefile
@@ -17,6 +17,7 @@ obj-$(CONFIG_POWER_RESET_MT6323) += mt6323-poweroff.o
 obj-$(CONFIG_POWER_RESET_QCOM_PON) += qcom-pon.o
 obj-$(CONFIG_POWER_RESET_OCELOT_RESET) += ocelot-reset.o
 obj-$(CONFIG_POWER_RESET_ODROID_GO_ULTRA_POWEROFF) += odroid-go-ultra-poweroff.o
+obj-$(CONFIG_POWER_RESET_PHOTONICAT_POWEROFF) += photonicat-poweroff.o
 obj-$(CONFIG_POWER_RESET_PIIX4_POWEROFF) += piix4-poweroff.o
 obj-$(CONFIG_POWER_RESET_LTC2952) += ltc2952-poweroff.o
 obj-$(CONFIG_POWER_RESET_QNAP) += qnap-poweroff.o
diff --git a/drivers/power/reset/photonicat-poweroff.c b/drivers/power/reset/photonicat-poweroff.c
new file mode 100644
index 000000000000..f9f1ea179247
--- /dev/null
+++ b/drivers/power/reset/photonicat-poweroff.c
@@ -0,0 +1,95 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) 2024 Junhao Xie <bigfoot@classfun.cn>
+ */
+
+#include <linux/mfd/photonicat-pmu.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/platform_device.h>
+#include <linux/reboot.h>
+
+struct pcat_poweroff {
+	struct device *dev;
+	struct pcat_pmu *pmu;
+	struct notifier_block nb;
+};
+
+static int pcat_do_poweroff(struct sys_off_data *data)
+{
+	struct pcat_poweroff *poweroff = data->cb_data;
+
+	dev_info(poweroff->dev, "Host request PMU shutdown\n");
+	pcat_pmu_write_data(poweroff->pmu, PCAT_CMD_HOST_REQUEST_SHUTDOWN,
+			    NULL, 0);
+
+	return NOTIFY_DONE;
+}
+
+static int pcat_poweroff_notify(struct notifier_block *nb, unsigned long action,
+				void *data)
+{
+	struct pcat_poweroff *poweroff =
+		container_of(nb, struct pcat_poweroff, nb);
+
+	if (action != PCAT_CMD_PMU_REQUEST_SHUTDOWN)
+		return NOTIFY_DONE;
+
+	dev_info(poweroff->dev, "PMU request host shutdown\n");
+	orderly_poweroff(true);
+
+	return NOTIFY_DONE;
+}
+
+static int pcat_poweroff_probe(struct platform_device *pdev)
+{
+	int ret;
+	struct device *dev = &pdev->dev;
+	struct pcat_poweroff *poweroff;
+
+	poweroff = devm_kzalloc(dev, sizeof(*poweroff), GFP_KERNEL);
+	if (!poweroff)
+		return -ENOMEM;
+
+	poweroff->dev = dev;
+	poweroff->pmu = dev_get_drvdata(dev->parent);
+	poweroff->nb.notifier_call = pcat_poweroff_notify;
+	platform_set_drvdata(pdev, poweroff);
+
+	ret = devm_register_sys_off_handler(&pdev->dev,
+					    SYS_OFF_MODE_POWER_OFF,
+					    SYS_OFF_PRIO_DEFAULT,
+					    pcat_do_poweroff,
+					    poweroff);
+	if (ret)
+		return ret;
+
+	return pcat_pmu_register_notify(poweroff->pmu, &poweroff->nb);
+}
+
+static void pcat_poweroff_remove(struct platform_device *pdev)
+{
+	struct pcat_poweroff *poweroff = platform_get_drvdata(pdev);
+
+	pcat_pmu_unregister_notify(poweroff->pmu, &poweroff->nb);
+}
+
+static const struct of_device_id pcat_poweroff_dt_ids[] = {
+	{ .compatible = "ariaboard,photonicat-pmu-poweroff", },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, pcat_poweroff_dt_ids);
+
+static struct platform_driver pcat_poweroff_driver = {
+	.driver = {
+		.name = "photonicat-poweroff",
+		.of_match_table = pcat_poweroff_dt_ids,
+	},
+	.probe = pcat_poweroff_probe,
+	.remove = pcat_poweroff_remove,
+};
+module_platform_driver(pcat_poweroff_driver);
+
+MODULE_AUTHOR("Junhao Xie <bigfoot@classfun.cn>");
+MODULE_DESCRIPTION("Photonicat PMU Poweroff");
+MODULE_LICENSE("GPL");
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

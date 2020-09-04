Return-Path: <SRS0=xWqI=CN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7196EC43461
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Sep 2020 19:19:27 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C7F94206B8
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Sep 2020 19:19:26 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="XyF8sE73";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="Js+dMC2y"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C7F94206B8
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mdzliEiyiVcy5ONxdNRCwMDpDSqAocdsGhzvsWmcWRQ=; b=XyF8sE73bg6iLC3nuBSxItA9G
	uD7WYIASGG8Jap+xAKmxjgPwL2lej8s2bEDeCzYhpCIzTk0pKD5EOsa1aDBxIKwxbzIqq48bdGlvM
	kBCydFRkpJ61bgZ9pykRUyuwOXhpF87bgmaJj5JGXBQaCbbn8OOQZXosMEfX7ubhMwZ0rTHOyY0Dk
	8U13nGS6oMCWRfMBQC8+Xnu3FKzQp3Ttfn/Rr77YM+DkKXxVY2TCsWdRItG5GxCA/EdRyGa2AVw+5
	2s/kXk5GT590ffw7CKbz2UPHYiMbUNrWRuw5IG81w2zhtYwMgRHRj7SNjKG8zaGkAx3XCPMyZvknE
	fjfMCAIZQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kEHF4-0005Bt-2F; Fri, 04 Sep 2020 19:19:22 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kEHEh-00052z-4j
 for linux-rockchip@lists.infradead.org; Fri, 04 Sep 2020 19:19:08 +0000
Received: by mail-pg1-x543.google.com with SMTP id m5so4808857pgj.9
 for <linux-rockchip@lists.infradead.org>; Fri, 04 Sep 2020 12:18:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+0r4W9mwB3hElBdfBrvtjd4X0q5DQJLDeKjMbcplMDU=;
 b=Js+dMC2y6bJOPfgi+dpPWCdzalyDqvjHxyFNDwMUi825KGhHDJI1Ytib81Zz86k6fH
 QK6do1e81kvyEHJvPtSMRRA6NEoB51cFZHAzoUMfgMZwIi9++wQiqIPG4ONZluvE3hPf
 zIV0UTmQ9bHzSJk31E9ibifexitYDo7hzHx98=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+0r4W9mwB3hElBdfBrvtjd4X0q5DQJLDeKjMbcplMDU=;
 b=lR3FVeB/A2giS8z4m3ahz9t/9JPRNOMPwObE3EZu4Lk5RBT5rOl5Ua3nRpYP1808r2
 08u1mroCwgIif/SlcnObTrVed6Ynk/TgkF6KUuLRaLEBAvyg1WhkQcREg28zy1VGL2oA
 kxBSua2EX5VabivKl6KJlxASOM4LDqZ8TxAxCdzF8P+rNmOjygX44voFFB/2Je83K1P+
 8b01a6BGLLQ5hPYACK/x8DnJAx2rzshrSu94Ij3IQi4KzjIdUoDz+tdNIf3W8CW8/Yqb
 e9NIBItmebcQ75Nxzt7llbuE9i47H5SmP2gIlh5yDTlP4KC/6tSrAcmYwC+F5FO9cnBm
 Vtwg==
X-Gm-Message-State: AOAM531mYbzvelq1V/je5hOT6uJOMRmbSb6Po6sT2OJ0JoPN6rFRx+mx
 F6MPyHn5ow+GcoliyiUCpwv8ZA==
X-Google-Smtp-Source: ABdhPJwPFAeSEqozQ2oq/5q8jmzdSVhlRwP56anlVHCYZpX7bRboVFg0gwDr5Qiwv41Zg6sEsTBtew==
X-Received: by 2002:a63:6fc6:: with SMTP id k189mr8132738pgc.165.1599247136913; 
 Fri, 04 Sep 2020 12:18:56 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:b9ea:24bf:6b2b:1eee])
 by smtp.gmail.com with ESMTPSA id t4sm5986001pje.56.2020.09.04.12.18.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Sep 2020 12:18:56 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 2/3] extcon: Add Type-C Virtual PD driver
Date: Sat,  5 Sep 2020 00:48:29 +0530
Message-Id: <20200904191830.387296-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200904191830.387296-1-jagan@amarulasolutions.com>
References: <20200904191830.387296-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200904_151859_552757_08523795 
X-CRM114-Status: GOOD (  25.64  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Tom Cubie <tom@radxa.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Jagan Teki <jagan@amarulasolutions.com>, linux-amarula@amarulasolutions.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

USB Type-C protocol supports various modes of operations
includes PD, USB3, and Altmode. If the platform design
supports a Type-C connector then configuring these modes
can be done via enumeration.

However, there are some platforms that design these modes
of operations as separate protocol connectors like design
Display Port from on-chip USB3 controller. So accessing
Type-C Altmode Display Port via onboard Display Port
connector instead of a Type-C connector.

These kinds of platforms require an explicit extcon driver
in order to handle Power Delivery and Port Detection.

Add extcon driver for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 MAINTAINERS                             |   6 +
 drivers/extcon/Kconfig                  |  10 +
 drivers/extcon/Makefile                 |   1 +
 drivers/extcon/extcon-usbc-virtual-pd.c | 285 ++++++++++++++++++++++++
 4 files changed, 302 insertions(+)
 create mode 100644 drivers/extcon/extcon-usbc-virtual-pd.c

diff --git a/MAINTAINERS b/MAINTAINERS
index 68f21d46614c..aeb161b19dae 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -6466,6 +6466,12 @@ T:	git git://git.kernel.org/pub/scm/linux/kernel/git/tytso/ext4.git
 F:	Documentation/filesystems/ext4/
 F:	fs/ext4/
 
+EXTCON DRIVER FOR TYPE-C VIRTUAL PD
+M:	Jagan Teki <jagan@amarulasolutions.com>
+S:	Maintained
+F:	Documentation/devicetree/bindings/extcon/extcon-usbc-virtual-pd.yaml
+F:	drivers/extcon/extcon-usbc-virtual-pd.c
+
 Extended Verification Module (EVM)
 M:	Mimi Zohar <zohar@linux.ibm.com>
 L:	linux-integrity@vger.kernel.org
diff --git a/drivers/extcon/Kconfig b/drivers/extcon/Kconfig
index aac507bff135..edd6c3c52699 100644
--- a/drivers/extcon/Kconfig
+++ b/drivers/extcon/Kconfig
@@ -186,4 +186,14 @@ config EXTCON_USBC_CROS_EC
 	  Say Y here to enable USB Type C cable detection extcon support when
 	  using Chrome OS EC based USB Type-C ports.
 
+config EXTCON_USBC_VIRTUAL_PD
+	tristate "Virtual Type-C PD EXTCON support"
+	depends on GPIOLIB || COMPILE_TEST
+	help
+	  Say Y here to enable Virtual Type-C PD extcon driver support, if
+	  hardware platform designed Type-C modes separately.
+
+	  Example, of designing Display Port separately from Type-C Altmode
+	  instead of accessing Altmode Display Port in Type-C connector.
+
 endif
diff --git a/drivers/extcon/Makefile b/drivers/extcon/Makefile
index 52096fd8a216..c35191eef0e1 100644
--- a/drivers/extcon/Makefile
+++ b/drivers/extcon/Makefile
@@ -25,3 +25,4 @@ obj-$(CONFIG_EXTCON_RT8973A)	+= extcon-rt8973a.o
 obj-$(CONFIG_EXTCON_SM5502)	+= extcon-sm5502.o
 obj-$(CONFIG_EXTCON_USB_GPIO)	+= extcon-usb-gpio.o
 obj-$(CONFIG_EXTCON_USBC_CROS_EC) += extcon-usbc-cros-ec.o
+obj-$(CONFIG_EXTCON_USBC_VIRTUAL_PD) += extcon-usbc-virtual-pd.o
diff --git a/drivers/extcon/extcon-usbc-virtual-pd.c b/drivers/extcon/extcon-usbc-virtual-pd.c
new file mode 100644
index 000000000000..e0713670e33d
--- /dev/null
+++ b/drivers/extcon/extcon-usbc-virtual-pd.c
@@ -0,0 +1,285 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Type-C Virtual PD Extcon driver
+ *
+ * Copyright (c) 2019 Fuzhou Rockchip Electronics Co., Ltd
+ * Copyright (c) 2019 Radxa Limited
+ * Copyright (c) 2019 Amarula Solutions(India)
+ */
+
+#include <linux/extcon-provider.h>
+#include <linux/gpio.h>
+#include <linux/interrupt.h>
+#include <linux/init.h>
+#include <linux/irq.h>
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/of_gpio.h>
+#include <linux/platform_device.h>
+#include <linux/slab.h>
+
+static const unsigned int vpd_cable[] = {
+	EXTCON_USB,
+	EXTCON_USB_HOST,
+	EXTCON_DISP_DP,
+	EXTCON_NONE,
+};
+
+enum vpd_data_role {
+	DR_NONE,
+	DR_HOST,
+	DR_DEVICE,
+	DR_DISPLAY_PORT,
+};
+
+enum vpd_polarity {
+	POLARITY_NORMAL,
+	POLARITY_FLIP,
+};
+
+enum vpd_usb_ss {
+	USB_SS_USB2,
+	USB_SS_USB3,
+};
+
+struct vpd_extcon {
+	struct device *dev;
+	struct extcon_dev *extcon;
+	struct gpio_desc *det_gpio;
+
+	u8 polarity;
+	u8 usb_ss;
+	enum vpd_data_role data_role;
+
+	int irq;
+	bool enable_irq;
+	struct work_struct work;
+	struct delayed_work irq_work;
+};
+
+static void vpd_extcon_irq_work(struct work_struct *work)
+{
+	struct vpd_extcon *vpd = container_of(work, struct vpd_extcon, irq_work.work);
+	bool host_connected = false, device_connected = false, dp_connected = false;
+	union extcon_property_value property;
+	int det;
+
+	det = vpd->det_gpio ? gpiod_get_raw_value(vpd->det_gpio) : 0;
+	if (det) {
+		device_connected = (vpd->data_role == DR_DEVICE) ? true : false;
+		host_connected = (vpd->data_role == DR_HOST) ? true : false;
+		dp_connected = (vpd->data_role == DR_DISPLAY_PORT) ? true : false;
+	}
+
+	extcon_set_state(vpd->extcon, EXTCON_USB, host_connected);
+	extcon_set_state(vpd->extcon, EXTCON_USB_HOST, device_connected);
+	extcon_set_state(vpd->extcon, EXTCON_DISP_DP, dp_connected);
+
+	property.intval = vpd->polarity;
+	extcon_set_property(vpd->extcon, EXTCON_USB,
+			    EXTCON_PROP_USB_TYPEC_POLARITY, property);
+	extcon_set_property(vpd->extcon, EXTCON_USB_HOST,
+			    EXTCON_PROP_USB_TYPEC_POLARITY, property);
+	extcon_set_property(vpd->extcon, EXTCON_DISP_DP,
+			    EXTCON_PROP_USB_TYPEC_POLARITY, property);
+
+	property.intval = vpd->usb_ss;
+	extcon_set_property(vpd->extcon, EXTCON_USB,
+			    EXTCON_PROP_USB_SS, property);
+	extcon_set_property(vpd->extcon, EXTCON_USB_HOST,
+			    EXTCON_PROP_USB_SS, property);
+	extcon_set_property(vpd->extcon, EXTCON_DISP_DP,
+			    EXTCON_PROP_USB_SS, property);
+
+	extcon_sync(vpd->extcon, EXTCON_USB);
+	extcon_sync(vpd->extcon, EXTCON_USB_HOST);
+	extcon_sync(vpd->extcon, EXTCON_DISP_DP);
+}
+
+static irqreturn_t vpd_extcon_irq_handler(int irq, void *dev_id)
+{
+	struct vpd_extcon *vpd = dev_id;
+
+	schedule_delayed_work(&vpd->irq_work, msecs_to_jiffies(10));
+
+	return IRQ_HANDLED;
+}
+
+static enum vpd_data_role vpd_extcon_data_role(struct vpd_extcon *vpd)
+{
+	const char *const data_roles[] = {
+		[DR_NONE]		= "NONE",
+		[DR_HOST]		= "host",
+		[DR_DEVICE]		= "device",
+		[DR_DISPLAY_PORT]	= "display-port",
+	};
+	struct device *dev = vpd->dev;
+	int ret;
+	const char *dr;
+
+	ret = device_property_read_string(dev, "vpd-data-role", &dr);
+	if (ret < 0)
+		return DR_NONE;
+
+	ret = match_string(data_roles, ARRAY_SIZE(data_roles), dr);
+
+	return (ret < 0) ? DR_NONE : ret;
+}
+
+static int vpd_extcon_parse_dts(struct vpd_extcon *vpd)
+{
+	struct device *dev = vpd->dev;
+	bool val = false;
+	int ret;
+
+	val = device_property_read_bool(dev, "vpd-polarity");
+	if (val)
+		vpd->polarity = POLARITY_FLIP;
+	else
+		vpd->polarity = POLARITY_NORMAL;
+
+	val = device_property_read_bool(dev, "vpd-super-speed");
+	if (val)
+		vpd->usb_ss = USB_SS_USB3;
+	else
+		vpd->usb_ss = USB_SS_USB2;
+
+	vpd->data_role = vpd_extcon_data_role(vpd);
+
+	vpd->det_gpio = devm_gpiod_get_optional(dev, "det", GPIOD_OUT_LOW);
+	if (IS_ERR(vpd->det_gpio)) {
+		ret = PTR_ERR(vpd->det_gpio);
+		dev_warn(dev, "failed to get det gpio: %d\n", ret);
+		return ret;
+	}
+
+	vpd->irq = gpiod_to_irq(vpd->det_gpio);
+	if (vpd->irq < 0) {
+		dev_err(dev, "failed to get irq for gpio: %d\n", vpd->irq);
+		return vpd->irq;
+	}
+
+	ret = devm_request_threaded_irq(dev, vpd->irq, NULL,
+					vpd_extcon_irq_handler,
+					IRQF_TRIGGER_FALLING |
+					IRQF_TRIGGER_RISING | IRQF_ONESHOT,
+					NULL, vpd);
+	if (ret)
+		dev_err(dev, "failed to request gpio irq\n");
+
+	return ret;
+}
+
+static int vpd_extcon_probe(struct platform_device *pdev)
+{
+	struct vpd_extcon *vpd;
+	struct device *dev = &pdev->dev;
+	int ret;
+
+	vpd = devm_kzalloc(dev, sizeof(*vpd), GFP_KERNEL);
+	if (!vpd)
+		return -ENOMEM;
+
+	vpd->dev = dev;
+	ret = vpd_extcon_parse_dts(vpd);
+	if (ret)
+		return ret;
+
+	INIT_DELAYED_WORK(&vpd->irq_work, vpd_extcon_irq_work);
+
+	vpd->extcon = devm_extcon_dev_allocate(dev, vpd_cable);
+	if (IS_ERR(vpd->extcon)) {
+		dev_err(dev, "allocat extcon failed\n");
+		return PTR_ERR(vpd->extcon);
+	}
+
+	ret = devm_extcon_dev_register(dev, vpd->extcon);
+	if (ret) {
+		dev_err(dev, "register extcon failed: %d\n", ret);
+		return ret;
+	}
+
+	extcon_set_property_capability(vpd->extcon, EXTCON_USB,
+				       EXTCON_PROP_USB_VBUS);
+	extcon_set_property_capability(vpd->extcon, EXTCON_USB_HOST,
+				       EXTCON_PROP_USB_VBUS);
+
+	extcon_set_property_capability(vpd->extcon, EXTCON_USB,
+				       EXTCON_PROP_USB_TYPEC_POLARITY);
+	extcon_set_property_capability(vpd->extcon, EXTCON_USB_HOST,
+				       EXTCON_PROP_USB_TYPEC_POLARITY);
+	extcon_set_property_capability(vpd->extcon, EXTCON_USB,
+				       EXTCON_PROP_USB_SS);
+	extcon_set_property_capability(vpd->extcon, EXTCON_USB_HOST,
+				       EXTCON_PROP_USB_SS);
+
+	extcon_set_property_capability(vpd->extcon, EXTCON_DISP_DP,
+				       EXTCON_PROP_USB_SS);
+	extcon_set_property_capability(vpd->extcon, EXTCON_DISP_DP,
+				       EXTCON_PROP_USB_TYPEC_POLARITY);
+
+	platform_set_drvdata(pdev, vpd);
+
+	vpd_extcon_irq_work(&vpd->irq_work.work);
+
+	return 0;
+}
+
+static int vpd_extcon_remove(struct platform_device *pdev)
+{
+	struct vpd_extcon *vpd = platform_get_drvdata(pdev);
+
+	cancel_delayed_work_sync(&vpd->irq_work);
+
+	return 0;
+}
+
+#ifdef CONFIG_PM_SLEEP
+static int vpd_extcon_suspend(struct device *dev)
+{
+	struct vpd_extcon *vpd = dev_get_drvdata(dev);
+
+	if (!vpd->enable_irq) {
+		disable_irq_nosync(vpd->irq);
+		vpd->enable_irq = true;
+	}
+
+	return 0;
+}
+
+static int vpd_extcon_resume(struct device *dev)
+{
+	struct vpd_extcon *vpd = dev_get_drvdata(dev);
+
+	if (vpd->enable_irq) {
+		enable_irq(vpd->irq);
+		vpd->enable_irq = false;
+	}
+
+	return 0;
+}
+#endif
+
+static SIMPLE_DEV_PM_OPS(vpd_extcon_pm_ops,
+			 vpd_extcon_suspend, vpd_extcon_resume);
+
+static const struct of_device_id vpd_extcon_dt_match[] = {
+	{ .compatible = "linux,extcon-usbc-virtual-pd", },
+	{ /* sentinel */ }
+};
+
+static struct platform_driver vpd_extcon_driver = {
+	.probe		= vpd_extcon_probe,
+	.remove		= vpd_extcon_remove,
+	.driver		= {
+		.name	= "extcon-usbc-virtual-pd",
+		.pm	= &vpd_extcon_pm_ops,
+		.of_match_table = vpd_extcon_dt_match,
+	},
+};
+
+module_platform_driver(vpd_extcon_driver);
+
+MODULE_AUTHOR("Jagan Teki <jagan@amarulasolutions.com>");
+MODULE_DESCRIPTION("Type-C Virtual PD extcon driver");
+MODULE_LICENSE("GPL v2");
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

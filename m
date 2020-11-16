Return-Path: <SRS0=vJNw=EW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.5 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 48AD0C4742C
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2020 15:35:04 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AE5F32076E
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2020 15:35:03 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="jsfH5g5h";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b="I/yJoMVd";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Shq+sOAW"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AE5F32076E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LN7oenZpewcGL3cSqtzRVbmzIehtfpcXBk2EI0G63Vs=; b=jsfH5g5hRNdkYJn8xrQ9/LWsI
	0V2NUFrRf39IBLF4iB2W0QIVZo1HTOXHHQ9kZWepsMWLawoU6rDYzS2hWfQALS2fpMbW0CEqStGcB
	G3H2FD5W1ei4/j4fesAeVussIdB7MLeDRovPLvtcwKymSmwmp5QUkKhJUdQIeMUacyUxuwuFNLQOZ
	Gpq7Fs2vfItDG55Smkteh/jpbpxqwiZcLMC4PXXTjjXmsBBzcFuwei2Am3UFmayF+S1YE++166tFI
	mNqvkzYS75ERm2qvZBvNMA1wOCwgp8VXjHugJT+kyvO85HNNWUUEmYcDrmZZVOt3WnZtjcAaLnLAl
	aQ0aonbbw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kegWx-0004Yt-45; Mon, 16 Nov 2020 15:34:59 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kegQd-0001TW-Fm; Mon, 16 Nov 2020 15:28:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=w34tgFsfoNSL9WZ/5ErfIg33MWZNf9bk46tXnv+A4zs=; b=I/yJoMVde6ej6+DmxTSMArIqtb
 +WsxPwGfFlDF0UwIAcG73Vo/X0mwdQff6aL6slWJR4B4P91R0/Q3dnlI1jXuDQ+a6XoQ7CaBRZhTl
 lub2ox6kDJbxKAdiHWLy/QryyyjJ9WLmoshiweiwnkuo7GWFu0LDYQSS28s117rYQFxl271V1TPsL
 0J8abmbkXkg/wU2NA+mntkqY64Sw+BG+5hpQ4Rb9ipAxCRQkOnxb2oZFpC2gFEaq66ZFqFugftQw4
 AKd0CzZ4vX7aQJxE5Je4Wqam6TvTqMbLH7O6FRpI6jRClZ/+3MuUtoOb2EiX0EJFH9Vhx5YFm8hlg
 bT90699A==;
Received: from mail-qv1-xf41.google.com ([2607:f8b0:4864:20::f41])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kegHu-0006st-Gk; Mon, 16 Nov 2020 15:19:34 +0000
Received: by mail-qv1-xf41.google.com with SMTP id u23so1477447qvf.1;
 Mon, 16 Nov 2020 07:19:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=w34tgFsfoNSL9WZ/5ErfIg33MWZNf9bk46tXnv+A4zs=;
 b=Shq+sOAW4lgOPgBS5y9b0hdkqGvjhkRYMTvpIVckQyvqL4k6SOfTOZQGLiO6HIixU5
 GtByhu2Wav9gcY1forc0KxdAdHkMC6xyNiFSH8EHH+MV9gmLLPCFOnfpJIpnA2bpL6c9
 VbMoGQVzAdGpB0ER8/3/PR3g4LGAU0NeJq9tjqY/7PmFdcjb5EjpnsDg5kc13C8wZsE+
 DOg7JUxRhYNN45OTnzcCmHoJ8WwSP5/83G4l5qUmV9c8c58S2tCGbrN27THnQyEEs8nt
 n8ePpL7qyB3nZvJxRCdVy+QXJYX6CGUrQO2/z6gAYnCvUi16a5gLRYj2qhvrjeJxpUR3
 eyZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=w34tgFsfoNSL9WZ/5ErfIg33MWZNf9bk46tXnv+A4zs=;
 b=BftVMckt31dk68xTgH5o/1SgXjlN75sM5315E6Bb0M82B6aX7sqkYCQn6z3XOJ+6ET
 ugwwgkyh2UrfHJSeULJwyWoaCkypl+0Pob5vZjA/n0sd5ofiG4PpgP+iID+eeOkIHBEC
 rDiKHVVFBNKLNiR3JwDxTJEIaISaYquvcuKF3PHCBPVDBBXjdGmj1fzt3FPOVKI/khjK
 3HPzI5RRYd51VKvY6YXuMcyq3cPmQ3EVnbQMgiwoSYXJMwA7iQtAaSZJqUsWETim9MVz
 XJcYTlHw9LwYQ2qlJP+Ty/znMuLX9hO995+xWRmO7H9rgVRAOpxg2j5djRNtLz/+HDKF
 nBtw==
X-Gm-Message-State: AOAM533DA882tZ2X8Z1wvuAKDIUdYC52kpsejBvhf37MlDgjtiP3SB9F
 XAKYdNg3Xb/H1Ejku+EhBKU=
X-Google-Smtp-Source: ABdhPJzR0XL0NJX31+OywaRPuQxtyQR1QdfhOmqO+/GGz2NIIr+GkJzf1aSvkVIcmho99HCQ8jH97w==
X-Received: by 2002:ad4:47b0:: with SMTP id a16mr15565115qvz.22.1605539961774; 
 Mon, 16 Nov 2020 07:19:21 -0800 (PST)
Received: from rockpro64.sparksnet ([2601:153:900:7730::20])
 by smtp.gmail.com with ESMTPSA id p127sm12216818qkc.37.2020.11.16.07.19.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Nov 2020 07:19:21 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 2/4] usb: dwc3: add rockchip innosilicon usb3 glue layer
Date: Mon, 16 Nov 2020 15:17:34 +0000
Message-Id: <20201116151735.178737-3-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201116151735.178737-1-pgwipeout@gmail.com>
References: <20201116151735.178737-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201116_151926_870482_5B810876 
X-CRM114-Status: GOOD (  25.52  )
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
Cc: frank.wang@rock-chips.com, zyw@rock-chips.com, linux-usb@vger.kernel.org,
 kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org,
 Peter Geis <pgwipeout@gmail.com>, william.wu@rock-chips.com,
 wulf@rock-chips.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This adds the handler glue for the rockchip usb3 innosilicon phy driver.
This driver attaches to the phy driver through the notification system.
When a usb2 disconnect event occurs this driver tears down the hcd and rebuilds it manually.
This is to work around the usb2 controller becoming wedged and not detecting any usb2 devices after a usb2 hub is removed.

It is based off work originally done by rockchip.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 drivers/usb/dwc3/Kconfig              |  10 +
 drivers/usb/dwc3/Makefile             |   1 +
 drivers/usb/dwc3/dwc3-rockchip-inno.c | 271 ++++++++++++++++++++++++++
 3 files changed, 282 insertions(+)
 create mode 100644 drivers/usb/dwc3/dwc3-rockchip-inno.c

diff --git a/drivers/usb/dwc3/Kconfig b/drivers/usb/dwc3/Kconfig
index 7a2304565a73..2e33a45f55ff 100644
--- a/drivers/usb/dwc3/Kconfig
+++ b/drivers/usb/dwc3/Kconfig
@@ -139,4 +139,14 @@ config USB_DWC3_QCOM
 	  for peripheral mode support.
 	  Say 'Y' or 'M' if you have one such device.
 
+config USB_DWC3_ROCKCHIP_INNO
+	tristate "Rockchip Platforms with INNO PHY"
+	depends on OF && COMMON_CLK && ARCH_ROCKCHIP
+	depends on USB=y || USB=USB_DWC3
+	default USB_DWC3
+	help
+	  Support of USB2/3 functionality in Rockchip platforms
+	  with INNO USB 3.0 PHY IP inside.
+	  say 'Y' or 'M' if you have one such device.
+
 endif
diff --git a/drivers/usb/dwc3/Makefile b/drivers/usb/dwc3/Makefile
index ae86da0dc5bd..f5eb7de10128 100644
--- a/drivers/usb/dwc3/Makefile
+++ b/drivers/usb/dwc3/Makefile
@@ -51,3 +51,4 @@ obj-$(CONFIG_USB_DWC3_MESON_G12A)	+= dwc3-meson-g12a.o
 obj-$(CONFIG_USB_DWC3_OF_SIMPLE)	+= dwc3-of-simple.o
 obj-$(CONFIG_USB_DWC3_ST)		+= dwc3-st.o
 obj-$(CONFIG_USB_DWC3_QCOM)		+= dwc3-qcom.o
+obj-$(CONFIG_USB_DWC3_ROCKCHIP_INNO)	+= dwc3-rockchip-inno.o
diff --git a/drivers/usb/dwc3/dwc3-rockchip-inno.c b/drivers/usb/dwc3/dwc3-rockchip-inno.c
new file mode 100644
index 000000000000..7007ddbcbdae
--- /dev/null
+++ b/drivers/usb/dwc3/dwc3-rockchip-inno.c
@@ -0,0 +1,271 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * dwc3-rockchip-inno.c - DWC3 glue layer for Rockchip devices with Innosilicon based PHY
+ *
+ * Based on dwc3-of-simple.c
+ */
+
+#include <linux/module.h>
+#include <linux/kernel.h>
+#include <linux/slab.h>
+#include <linux/platform_device.h>
+#include <linux/dma-mapping.h>
+#include <linux/clk.h>
+#include <linux/notifier.h>
+#include <linux/of.h>
+#include <linux/of_platform.h>
+#include <linux/pm_runtime.h>
+#include <linux/reset.h>
+
+#include <linux/workqueue.h>
+#include <linux/usb.h>
+#include <linux/usb/hcd.h>
+#include <linux/usb/phy.h>
+
+#include "core.h"
+#include "../host/xhci.h"
+
+
+struct dwc3_rk_inno {
+	struct device		*dev;
+	struct clk_bulk_data	*clks;
+	struct dwc3		*dwc;
+	struct usb_phy		*phy;
+	struct notifier_block	reset_nb;
+	struct work_struct	reset_work;
+	struct mutex		lock;
+	int			num_clocks;
+	struct reset_control	*resets;
+};
+
+static int dwc3_rk_inno_host_reset_notifier(struct notifier_block *nb, unsigned long event, void *data)
+{
+	struct dwc3_rk_inno	*rk_inno = container_of(nb, struct dwc3_rk_inno, reset_nb);
+
+	schedule_work(&rk_inno->reset_work);
+
+	return NOTIFY_DONE;
+}
+
+static void dwc3_rk_inno_host_reset_work(struct work_struct *work)
+{
+	struct dwc3_rk_inno	*rk_inno = container_of(work, struct dwc3_rk_inno, reset_work);
+	struct usb_hcd		*hcd = dev_get_drvdata(&rk_inno->dwc->xhci->dev);
+	struct usb_hcd		*shared_hcd = hcd->shared_hcd;
+	struct xhci_hcd		*xhci = hcd_to_xhci(hcd);
+	unsigned int		count = 0;
+
+	mutex_lock(&rk_inno->lock);
+
+	if (hcd->state != HC_STATE_HALT) {
+		usb_remove_hcd(shared_hcd);
+		usb_remove_hcd(hcd);
+	}
+
+	if (rk_inno->phy)
+		usb_phy_shutdown(rk_inno->phy);
+
+	while (hcd->state != HC_STATE_HALT) {
+		if (++count > 1000) {
+			dev_err(rk_inno->dev, "wait for HCD remove 1s timeout!\n");
+			break;
+		}
+		usleep_range(1000, 1100);
+	}
+
+	if (hcd->state == HC_STATE_HALT) {
+		xhci->shared_hcd = shared_hcd;
+		usb_add_hcd(hcd, hcd->irq, IRQF_SHARED);
+		usb_add_hcd(shared_hcd, hcd->irq, IRQF_SHARED);
+	}
+
+	if (rk_inno->phy)
+		usb_phy_init(rk_inno->phy);
+
+	mutex_unlock(&rk_inno->lock);
+	dev_dbg(rk_inno->dev, "host reset complete\n");
+}
+
+static int dwc3_rk_inno_probe(struct platform_device *pdev)
+{
+	struct dwc3_rk_inno	*rk_inno;
+	struct device		*dev = &pdev->dev;
+	struct device_node	*np = dev->of_node, *child, *node;
+	struct platform_device	*child_pdev;
+
+	int			ret;
+
+	rk_inno = devm_kzalloc(dev, sizeof(*rk_inno), GFP_KERNEL);
+	if (!rk_inno)
+		return -ENOMEM;
+
+	platform_set_drvdata(pdev, rk_inno);
+	rk_inno->dev = dev;
+
+	rk_inno->resets = of_reset_control_array_get(np, false, true,
+						    true);
+	if (IS_ERR(rk_inno->resets)) {
+		ret = PTR_ERR(rk_inno->resets);
+		dev_err(dev, "failed to get device resets, err=%d\n", ret);
+		return ret;
+	}
+
+	ret = reset_control_deassert(rk_inno->resets);
+	if (ret)
+		goto err_resetc_put;
+
+	ret = clk_bulk_get_all(rk_inno->dev, &rk_inno->clks);
+	if (ret < 0)
+		goto err_resetc_assert;
+
+	rk_inno->num_clocks = ret;
+	ret = clk_bulk_prepare_enable(rk_inno->num_clocks, rk_inno->clks);
+	if (ret)
+		goto err_resetc_assert;
+
+	ret = of_platform_populate(np, NULL, NULL, dev);
+	if (ret)
+		goto err_clk_put;
+
+	child = of_get_child_by_name(np, "dwc3");
+	if (!child) {
+		dev_err(dev, "failed to find dwc3 core node\n");
+		ret = -ENODEV;
+		goto err_plat_depopulate;
+	}
+
+	child_pdev = of_find_device_by_node(child);
+	if (!child_pdev) {
+		dev_err(dev, "failed to get dwc3 core device\n");
+		ret = -ENODEV;
+		goto err_plat_depopulate;
+	}
+
+	rk_inno->dwc = platform_get_drvdata(child_pdev);
+	if (!rk_inno->dwc || !rk_inno->dwc->xhci) {
+		ret = -EPROBE_DEFER;
+		goto err_plat_depopulate;
+	}
+
+	node = of_parse_phandle(child, "usb-phy", 0);
+	INIT_WORK(&rk_inno->reset_work, dwc3_rk_inno_host_reset_work);
+	rk_inno->reset_nb.notifier_call = dwc3_rk_inno_host_reset_notifier;
+	rk_inno->phy = devm_usb_get_phy_by_node(dev, node, &rk_inno->reset_nb);
+	of_node_put(node);
+	mutex_init(&rk_inno->lock);
+
+	pm_runtime_set_active(dev);
+	pm_runtime_enable(dev);
+	pm_runtime_get_sync(dev);
+
+	return 0;
+
+err_plat_depopulate:
+	of_platform_depopulate(dev);
+
+err_clk_put:
+	clk_bulk_disable_unprepare(rk_inno->num_clocks, rk_inno->clks);
+	clk_bulk_put_all(rk_inno->num_clocks, rk_inno->clks);
+
+err_resetc_assert:
+	reset_control_assert(rk_inno->resets);
+
+err_resetc_put:
+	reset_control_put(rk_inno->resets);
+	return ret;
+}
+
+static void __dwc3_rk_inno_teardown(struct dwc3_rk_inno *rk_inno)
+{
+	of_platform_depopulate(rk_inno->dev);
+
+	clk_bulk_disable_unprepare(rk_inno->num_clocks, rk_inno->clks);
+	clk_bulk_put_all(rk_inno->num_clocks, rk_inno->clks);
+	rk_inno->num_clocks = 0;
+
+	reset_control_assert(rk_inno->resets);
+
+	reset_control_put(rk_inno->resets);
+
+	pm_runtime_disable(rk_inno->dev);
+	pm_runtime_put_noidle(rk_inno->dev);
+	pm_runtime_set_suspended(rk_inno->dev);
+}
+
+static int dwc3_rk_inno_remove(struct platform_device *pdev)
+{
+	struct dwc3_rk_inno	*rk_inno = platform_get_drvdata(pdev);
+
+	__dwc3_rk_inno_teardown(rk_inno);
+
+	return 0;
+}
+
+static void dwc3_rk_inno_shutdown(struct platform_device *pdev)
+{
+	struct dwc3_rk_inno	*rk_inno = platform_get_drvdata(pdev);
+
+	__dwc3_rk_inno_teardown(rk_inno);
+}
+
+static int __maybe_unused dwc3_rk_inno_runtime_suspend(struct device *dev)
+{
+	struct dwc3_rk_inno	*rk_inno = dev_get_drvdata(dev);
+
+	clk_bulk_disable(rk_inno->num_clocks, rk_inno->clks);
+
+	return 0;
+}
+
+static int __maybe_unused dwc3_rk_inno_runtime_resume(struct device *dev)
+{
+	struct dwc3_rk_inno	*rk_inno = dev_get_drvdata(dev);
+
+	return clk_bulk_enable(rk_inno->num_clocks, rk_inno->clks);
+}
+
+static int __maybe_unused dwc3_rk_inno_suspend(struct device *dev)
+{
+	struct dwc3_rk_inno *rk_inno = dev_get_drvdata(dev);
+
+	reset_control_assert(rk_inno->resets);
+
+	return 0;
+}
+
+static int __maybe_unused dwc3_rk_inno_resume(struct device *dev)
+{
+	struct dwc3_rk_inno *rk_inno = dev_get_drvdata(dev);
+
+	reset_control_deassert(rk_inno->resets);
+
+	return 0;
+}
+
+static const struct dev_pm_ops dwc3_rk_inno_dev_pm_ops = {
+	SET_SYSTEM_SLEEP_PM_OPS(dwc3_rk_inno_suspend, dwc3_rk_inno_resume)
+	SET_RUNTIME_PM_OPS(dwc3_rk_inno_runtime_suspend,
+			dwc3_rk_inno_runtime_resume, NULL)
+};
+
+static const struct of_device_id of_dwc3_rk_inno_match[] = {
+	{ .compatible = "rockchip,rk3328-dwc3" },
+	{ /* Sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, of_dwc3_rk_inno_match);
+
+static struct platform_driver dwc3_rk_inno_driver = {
+	.probe		= dwc3_rk_inno_probe,
+	.remove		= dwc3_rk_inno_remove,
+	.shutdown	= dwc3_rk_inno_shutdown,
+	.driver		= {
+		.name	= "dwc3-rk-inno",
+		.of_match_table = of_dwc3_rk_inno_match,
+		.pm	= &dwc3_rk_inno_dev_pm_ops,
+	},
+};
+
+module_platform_driver(dwc3_rk_inno_driver);
+MODULE_LICENSE("GPL v2");
+MODULE_DESCRIPTION("DesignWare USB3 Rockchip Innosilicon Glue Layer");
+MODULE_AUTHOR("Peter Geis <pgwipeout@gmail.com>");
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

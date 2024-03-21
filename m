Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 615F0C54E58
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Mar 2024 17:29:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fqzHly9LFKvf80wN41c2F1NftGOJbbYdhO5FOSIcYWw=; b=YTPTd9rbdm+7b5
	UmgCXtddRd77UwfVKgqJlRJwitl5rfVsmOVIcEaUYvgnvrfHDHKisCpcIjxnRU1ENEoxDRrGFCLVJ
	tDxt3oHAevwr5DYHlEbFPCzVaqhINbXCvDhWdA4IjLyGcrylCYcj9MsrG9dePIAof9EhvFs/lIGAu
	l24LHSEbjY6gZFJhcQBZOKn8RU9zH8qP+mpoHK/5cRgquBR9NRx2MWO9JOOIW81SgLXlyUghB/s7h
	o4JaUqpVpi3bveP4IMrKht91gTCqlVnXWwEoKE1M3bGoAIrYvPPToA7PQ/gldLlUC/5naLgXjhN2x
	Kiz8hqCQv2E+HCeBbHXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnMEZ-000000045B6-137y;
	Thu, 21 Mar 2024 17:29:43 +0000
Received: from mail-qk1-x734.google.com ([2607:f8b0:4864:20::734])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnMEW-000000045A5-0vRb;
	Thu, 21 Mar 2024 17:29:41 +0000
Received: by mail-qk1-x734.google.com with SMTP id af79cd13be357-789e834fc79so14122885a.0;
        Thu, 21 Mar 2024 10:29:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711042176; x=1711646976; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=KKx8pQL9LmueBm89i54GR8260t+TksiFQ5qjbEDwmME=;
        b=S39SGe4UaYU1fnL2gYorXf3k3UWMarGKRaeSVrGjjYUhoguvIbKLFcFAk+FyvpOAPK
         fVSmlY6TGPR2JRbOHbcJISqplVEvRz8FJOOareQabmIDrD6oFnrYEIW83GydRJjcM9e1
         wd/9OxBzN459/R6hd76Mmf+QiYg5vmtyZBl5l7BQfiVhmeIxS3dvu32OPwXCaQ9klXQR
         oD064kmHm8gGv2PujYDlCXegS5iTScxiAXjhsG/9/lvzXOMpPoDsvzs7pJH4Dc20CZ0+
         fEWKJ3pnJqe6h7KSYD1tuVjmmrpbR3AD0eY5rTJ7bgHkvjrQlvqMGhlINqi8in7UGzio
         zIUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711042176; x=1711646976;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KKx8pQL9LmueBm89i54GR8260t+TksiFQ5qjbEDwmME=;
        b=saLu1MvTIkAxwSKWbEgNJ/4gJw8DCAyoNNpKJ6ijZ2S4cXq8UW/UP3MWeH7KzV8gem
         rnwt5BbP5yd1fhYu1szu4DGWc9hLBeDyVN/kZ3RSUSAkAY+W7hk+u1BEyHfeaRa7Z+MW
         JMt93+t+fatihfuX81weD2Ru+x9uzYnTQts0y4laGWhP0T3AmlnmveRvptJ+6abM3IH6
         WKRcjC0aJHZXd+vMSMjAJ3b15gg7a7GWCtU0/+sSr9cFUP0o4NTapMk7m7XvgvZZ1qjd
         4JuRu8KcLV47Qk64giXjTn2RC8Lv4QBMebDyFk4rodi5ipeO3SJKQXqAcRp09wq0xbQe
         wysw==
X-Forwarded-Encrypted: i=1; AJvYcCXgqXZEogjmpkLRg+tX3ZQ00PbmRMBXZ/pUZ/xrEvRxaeFhZADxQ8xlctFHL2UXtzOcl6IfQqdRtyCaNdDi1WQp07WsjdaKPC/jN8agrVopDhYKEuyvpefiy2m8gTm2JHVGW9yK3synVRxvmMK8x2NVtsnpJeyYY/M=
X-Gm-Message-State: AOJu0YwHr0o6D2WC2ZGKaCdoOQTX43UEqgfwY10ZZ1Xh2eE0OoKy+S2C
	wbsfOt7VLTVwQWAJAPj6JR7KoXklnUd0YxrvQkMvVW+TX25/c27y
X-Google-Smtp-Source: AGHT+IHYrtXM0XPKWSx7LcJmI4aJYFB0EvmnYhbFZoXGBd9WsAbv5uBCPw2nH2lPZER3FYpR8v3u/Q==
X-Received: by 2002:a05:620a:4055:b0:78a:2710:4bbd with SMTP id i21-20020a05620a405500b0078a27104bbdmr5297288qko.3.1711042175927;
        Thu, 21 Mar 2024 10:29:35 -0700 (PDT)
Received: from SDF-ThinkCentre-M93p.localdomain (c-76-17-255-148.hsd1.mn.comcast.net. [76.17.255.148])
        by smtp.googlemail.com with ESMTPSA id pc34-20020a05620a842200b0078a1c0ca835sm74260qkn.44.2024.03.21.10.29.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Mar 2024 10:29:35 -0700 (PDT)
From: Shimrra Shai <shimmyshai00@gmail.com>
To: linux-kernel@vger.kernel.org
Cc: Shimrra Shai <shimmyshai00@gmail.com>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	heiko@sntech.de,
	max.schwarz@online.de
Subject: [PATCH 0/0] (proposed?) Add ACPI binding to Rockchip RK3xxx I2C bus
Date: Thu, 21 Mar 2024 12:34:47 -0500
Message-Id: <20240321173447.15660-1-shimmyshai00@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240321_102940_305193_C5F7CAB1 
X-CRM114-Status: GOOD (  36.13  )
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

Hi! I have been contributing to a firmware project for Rockchip RK3588-
based board using the TianoCore EDK2 firmware development kit, at
https://github.com/edk2-porting/edk2-rk3588. I am seeking to get it
possible to seamlessly boot mainline kernels using it on these platforms,
especially given how that mainline support for this platform has progressed
far since its debut. Since this is not a firmware from a board vendor, I'm
actually not really sure how to best interface or integrate its development
with the Linux kernel community. Particularly the question of Device Tree
Blob (DTB) vs. ACPI binding for configuration bindings, for which previous
discussions have always seemed to center around situations where the
firmware was not controllable by the kernel developer, but that is not the
case with this situation here and now. However, I've found, particularly
given the firmware has an HDMI driver that the currnet kernel does not,
that I am able to get a quicker path to mainline boot on this platform
going through the ACPI route, which inspires the following patch.

In particular, I found one small issue that obstructs immediate direct
booting of the off-the-shelf downloaded 6.8.x kernel series on my platform
(Firefly ITX-3588J, with no mainline device tree blob support) which is
that the I2C bus lacks code to configure it in the ACPI boot mode. The
firmware came with ACPI bindings for it, nonetheless, and so this patch
acts to enable and document those bindings for future use.

Signed-off-by: Shimrra Shai <shimmyshai00@gmail.com>
---

 Documentation/firmware-guide/acpi/dsd/soc/general.rst |  32 ++++++++
 Documentation/firmware-guide/acpi/dsd/soc/soc-i2c.rst |  50 ++++++++++++
 drivers/i2c/busses/i2c-rk3x.c                         | 105 +++++++++++++++++++++++---
 3 files changed, 177 insertions(+), 10 deletions(-)
 
diff --git a/Documentation/firmware-guide/acpi/dsd/soc/general.rst b/Documentation/firmware-guide/acpi/dsd/soc/general.rst
new file mode 100644
index 000000000..d21ccad2d
--- /dev/null
+++ b/Documentation/firmware-guide/acpi/dsd/soc/general.rst
@@ -0,0 +1,32 @@
+.. SPDX-License-Identifier: GPL-2.0
+
+==========================================
+System-on-Chip (SoC) facility descriptions
+==========================================
+
+These documents describe how to create ACPI profiles for devices compsed into
+system-on-chip (SoC) architectures. Currently, we only describe the options
+availed in the _DSD block for select platforms; other considerations are not
+yet applied. The inspiration for these documents are based around the advent
+(as of March 2024) of hefty, non-Apple ARM SoC systems such as the Rockchip
+RK3588 and newer chips that have desktop-like performance and thus are prime
+candidates for a UEFI-based desktop-like boot system with the goal being to
+deliver the same user-friendly ease of loading operating systems as on the
+Intel x86 sphere. Open-source UEFI-based firmware engines, such as TianoCore
+[1], mean it is possible on such platforms for the open-source developer to
+control both firmware and kernel simultaneously, which is not the case for
+the situation with Intel-based PC boards where boards are provided with pre-
+baked, vendor-selected and opaque firmwares.
+
+The description of ACPI usage here is not meant to suggest that ACPI replace
+Deviec Tree altogether for such SoCs; rather, we recognize that given they
+often will have a variety of applications that may include embedded usage where
+that more hard-wired boot loader setups such as U-Boot still shine, the
+maintenance of ACPI and DTB-based configuration options should be in parallel,
+and it may be possible for the same firmware to deploy both options.
+
+References
+==========
+
+[1] EDK2-RK3588 port of TianoCore EDK2 firmware.
+    https://github.com/edk2-porting/edk2-rk3588
diff --git a/Documentation/firmware-guide/acpi/dsd/soc/soc-i2c.rst b/Documentation/firmware-guide/acpi/dsd/soc/soc-i2c.rst
new file mode 100644
index 000000000..47ff69db4
--- /dev/null
+++ b/Documentation/firmware-guide/acpi/dsd/soc/soc-i2c.rst
@@ -0,0 +1,50 @@
+.. SPDX-License-Identifier: GPL-2.0
+
+=================
+I2C buses on SoCs
+=================
+
+This document describes the ACPI _DSD parameters currently being employed for
+Inter-Integrated Circuit (I2C) buses in the Linux kernel. It is based off the
+conventions used in the Rockchip RK3588 firmware project [1], which is also the
+first SoC documented here.
+
+General considerations
+======================
+
+For general use, we recommend indicating I2C busses in the ACPI firmware table
+in the following manner. First, they should be named I2Cx, where "x" is the bus
+index, and that index should also be used for the _UID component, e.g. on
+Rockchip RK3588 (see below), we use:
+
+  Device (I2Cx) {
+    Name (_HID, "RKCP3001")
+    Name (_CID, "PRP0001")
+    Name (_UID, x)
+    Name (_CCA, 0)
+
+    ...
+  }
+
+Interrupts should be specified in the usual ACPI manner. Parameters specific to
+the Rockchip and I2C devices are indicated in the _DSD block as given below.
+The parameters are a curated selection from the Device Tree Blob (DTB)
+representation.
+
+_DSD parameters for different SoCs
+==================================
+
+Rockchip RK3588
+---------------
+
+The following parameters are accepted for the I2C on Rockchip RK3588.
+
+- i2c,clk-rate 	Describe the pclk rate for the I2C bus, in Hz.
+- rockchip,bclk	Describe the bclk rate for the I2C bus, in Hz.
+
+References
+==========
+
+[1] EDK2-RK3588 port of TianoCore EDK2 firmware.
+    https://github.com/edk2-porting/edk2-rk3588
+
diff --git a/drivers/i2c/busses/i2c-rk3x.c b/drivers/i2c/busses/i2c-rk3x.c
index 086fdf262..5a5e1d551 100644
--- a/drivers/i2c/busses/i2c-rk3x.c
+++ b/drivers/i2c/busses/i2c-rk3x.c
@@ -19,6 +19,9 @@
 #include <linux/of_irq.h>
 #include <linux/spinlock.h>
 #include <linux/clk.h>
+#ifdef CONFIG_ACPI
+#include <linux/clk-provider.h>
+#endif
 #include <linux/wait.h>
 #include <linux/mfd/syscon.h>
 #include <linux/regmap.h>
@@ -1235,6 +1238,15 @@ static const struct of_device_id rk3x_i2c_match[] = {
 };
 MODULE_DEVICE_TABLE(of, rk3x_i2c_match);
 
+#ifdef CONFIG_ACPI
+/* for RK3588 and at least when loaded with EDK2-RK3588 Tianocore firmware */
+static const struct acpi_device_id rk3x_i2c_acpi_match[] = {
+	{ .id = "RKCP3001", .driver_data = (kernel_ulong_t)&rk3399_soc_data },
+	{ },
+};
+MODULE_DEVICE_TABLE(acpi, rk3x_i2c_acpi_match);
+#endif
+
 static int rk3x_i2c_probe(struct platform_device *pdev)
 {
 	struct device_node *np = pdev->dev.of_node;
@@ -1243,6 +1255,10 @@ static int rk3x_i2c_probe(struct platform_device *pdev)
 	int ret = 0;
 	int bus_nr;
 	u32 value;
+#ifdef CONFIG_ACPI
+	u64 value64;
+	char clk_name[20];
+#endif
 	int irq;
 	unsigned long clk_rate;
 
@@ -1250,8 +1266,12 @@ static int rk3x_i2c_probe(struct platform_device *pdev)
 	if (!i2c)
 		return -ENOMEM;
 
-	match = of_match_node(rk3x_i2c_match, np);
-	i2c->soc_data = match->data;
+	if (acpi_disabled) {
+		match = of_match_node(rk3x_i2c_match, np);
+		i2c->soc_data = match->data;
+	} else {
+		i2c->soc_data = device_get_match_data(&pdev->dev);
+	}
 
 	/* use common interface to get I2C timing properties */
 	i2c_parse_fw_timings(&pdev->dev, &i2c->t, true);
@@ -1266,6 +1286,9 @@ static int rk3x_i2c_probe(struct platform_device *pdev)
 
 	i2c->dev = &pdev->dev;
 
+	if (!acpi_disabled)
+		ACPI_COMPANION_SET(&i2c->adap.dev, ACPI_COMPANION(&pdev->dev));
+
 	spin_lock_init(&i2c->lock);
 	init_waitqueue_head(&i2c->wait);
 
@@ -1273,8 +1296,25 @@ static int rk3x_i2c_probe(struct platform_device *pdev)
 	if (IS_ERR(i2c->regs))
 		return PTR_ERR(i2c->regs);
 
-	/* Try to set the I2C adapter number from dt */
-	bus_nr = of_alias_get_id(np, "i2c");
+	if (acpi_disabled) {
+		/* Try to set the I2C adapter number from dt */
+		bus_nr = of_alias_get_id(np, "i2c");
+	} else {
+		ret = acpi_dev_uid_to_integer(ACPI_COMPANION(&pdev->dev),
+					      &value64);
+		if (ret) {
+			dev_err(&pdev->dev, "Cannot retrieve UID\n");
+			return ret;
+		}
+
+		if (value64 < INT_MAX) {
+			bus_nr = (int) value64;
+		} else {
+			/* shouldn't happen!!! */
+			dev_err(&pdev->dev, "Too big UID\n");
+			return -EINVAL;
+		}
+	}
 
 	/*
 	 * Switch to new interface if the SoC also offers the old one.
@@ -1325,13 +1365,58 @@ static int rk3x_i2c_probe(struct platform_device *pdev)
 
 	platform_set_drvdata(pdev, i2c);
 
-	if (i2c->soc_data->calc_timings == rk3x_i2c_v0_calc_timings) {
-		/* Only one clock to use for bus clock and peripheral clock */
-		i2c->clk = devm_clk_get(&pdev->dev, NULL);
-		i2c->pclk = i2c->clk;
+	if (acpi_disabled) {
+		if (i2c->soc_data->calc_timings == rk3x_i2c_v0_calc_timings) {
+			/* Only one clock to use for bus clock and peripheral
+			 * clock
+			 */
+			i2c->clk = devm_clk_get(&pdev->dev, NULL);
+			i2c->pclk = i2c->clk;
+		} else {
+			i2c->clk = devm_clk_get(&pdev->dev, "i2c");
+			i2c->pclk = devm_clk_get(&pdev->dev, "pclk");
+		}
 	} else {
-		i2c->clk = devm_clk_get(&pdev->dev, "i2c");
-		i2c->pclk = devm_clk_get(&pdev->dev, "pclk");
+		if (i2c->soc_data->calc_timings != rk3x_i2c_v0_calc_timings) {
+			u32 bclkrate = 0;
+			u32 pclkrate = 0;
+
+			device_property_read_u32(&pdev->dev, "rockchip,bclk",
+						 &bclkrate);
+			device_property_read_u32(&pdev->dev, "i2c,clk-rate",
+						 &pclkrate);
+
+			if (bclkrate != 0) {
+				sprintf(clk_name, "rockchip,i2c-clk.%d", bus_nr);
+				i2c->clk = clk_register_fixed_rate(&pdev->dev,
+								   clk_name,
+								   NULL,
+								   0, bclkrate);
+				dev_dbg(&pdev->dev,
+					"registered i2c clk at %u Hz\n",
+					bclkrate);
+			}
+
+			if (pclkrate != 0) {
+				sprintf(clk_name, "rockchip,i2c-pclk.%d",
+					bus_nr);
+				i2c->pclk = clk_register_fixed_rate(&pdev->dev,
+								    clk_name,
+								    NULL, 0,
+								    pclkrate);
+				dev_dbg(&pdev->dev,
+					"registered i2c pclk at %u Hz\n",
+					pclkrate);
+			}
+		} else {
+			/* NB: currently not expected w/UEFI firmware given
+			 * these are not super performant RK3xxx
+			 */
+			dev_err(&pdev->dev,
+				"ACPI not supported for this RK3xxx\n");
+
+			return -EINVAL;
+		}
 	}
 
 	if (IS_ERR(i2c->clk))

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

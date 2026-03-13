Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5F24106FD6C
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Mar 2026 02:45:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZMw6P+gAqD94kGba2e3O1Wzu+g/kTesuqcIe3Kx6+OA=; b=jAAfsKj6WCqh8I
	Lt1jk/9ZC51au517id3GL1TBvhTg+oVh05qbgJ6TyYnteWyNU4scs+cHuIWoTh7Y/RwhUxiqqweXE
	aCaCuje8HGBFmWq+7uUS3n1LLn7AmdRYtHCNW1xPVUPga5vjGuFNS5K5gbw3RyruFz3+Y1A2o2NZl
	o7ixeUmHArpMw1YtjvXqtr3/3zwwbSLvmmeeNdnp6KNlYnuNKxJsTW7Fj05yX4OZBXBYbio+AWqlH
	tluIjEC9L+7Wpm+dEQD6BERxGZtmmT3xrj6yeNMk2YtmzBKjwhDksD6nNPk64llAfJKwjUmjce5z5
	lGf745bzBOz/tSGN0d/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0sWj-0000000GHkr-00HN;
	Fri, 13 Mar 2026 02:45:25 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0sWi-0000000GHip-0Adv
	for linux-rockchip@bombadil.infradead.org;
	Fri, 13 Mar 2026 02:45:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=iSe5UvRoNIjilncVOeKf8HYNdIXHPW/64eBhtdMG84o=; b=crXRDViTVC0LPA6hkwQF61BpcM
	Mdx3zWku5t6mA4Yrzc2zH7XgPnHmXL/WBWgZLnKoDTvjf3hvKilK71SKyvLlZNuf6Dyrtv0o1xIro
	Nwq6flbR6A5wAiPRL2DuXmvdxdoa0ZMoTgO68yJtSSFXysaR9QKZnQy/ZUg6xXKRvOjd9W8FAS0c+
	Oh1EUR7549tZNcrOLX8zoCb40lQubDgeRJ+F+1Bl3lwAeJLwHFJA/HP8n2Nm5E56outn1x5TbdeHc
	QDK0ob8Kgx5Y3nkFAlOvqplOAJ8FbXhAigCYmRYhSztkZ44pJXh0iYgLCBOlUUvFM26Dr9Z9AHE5t
	dsHyhYdQ==;
Received: from mail-dy1-x1333.google.com ([2607:f8b0:4864:20::1333])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0sWb-00000002Te6-00HK
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Mar 2026 02:45:20 +0000
Received: by mail-dy1-x1333.google.com with SMTP id 5a478bee46e88-2bd9a485bd6so1625583eec.1
        for <linux-rockchip@lists.infradead.org>; Thu, 12 Mar 2026 19:45:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773369914; x=1773974714; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iSe5UvRoNIjilncVOeKf8HYNdIXHPW/64eBhtdMG84o=;
        b=XQX4h8V54X4Sg2RlzslqlCWY0YV1k0YI2XyITmu+V7R5yTa5PriMhde1glqMmVzTNx
         0u/dZTxeCWGjgdtq8qxenAgGA1nOaVZlXx5TcovuhlSrTh4K87e3pMLb6PpMkecPGSGY
         4sa2lmPnf/MIaDkjey/kPrCCTH8veVWYrfja2QB7u/SHchWGDn6KKP434hJT1nvk/zaf
         0s56j8I+KEBMnoEB0LFeQSUxT1QqYex5LlsazNvIWk6DUGTnEg8a/9+6oXRb4JQd4E7J
         nIBTZqZoSFVfuagk4eXH+dwUbLTv5YNXXvJe7ePZOKd16BASOMUe8cmnEMT5Aet3KGwK
         4CeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773369914; x=1773974714;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=iSe5UvRoNIjilncVOeKf8HYNdIXHPW/64eBhtdMG84o=;
        b=ZI4Tb30U5XxjoM7L1qIyv5mlh/zk61VkiizbTAhiqT53VBBnlkKeOdDgXYeGFaG08w
         U5Hpxw9xMGrHvZRwY4TDwtihHZ62yF6diefB+AYnTzHH7GWiK8H81KgAqMpYkNuxK/y3
         sz74XzmbNxqiw2C55e72JhFZuKPy104DjiyVr5Se56g57MK1hCXM2Bv1IJzkTbj29WPU
         IbqL2dWHpOk+WL54SeNfRccJd/DibMJ4HRV4EWzK9JZUd/HBZIEWYALADPiRuXn9sFOP
         Z/xMqhsWrH36IDLAuUy7uM3Mlpkld+jLOht3Op/cVnfC9jzA8e73HBvGvqc4O1IIwZlV
         iyyw==
X-Forwarded-Encrypted: i=1; AJvYcCUEopkVLhRppv0shkW8a9AKUhttOl2bJZCRXfffdZkTFqBGorznZAS+EI/XU6PpQjqRvorO8PcGOPMX5PYfhw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz+T99dMqB8V7oHn6EqNqyAd73ZQwOuGGgWJcNxN+OHaPS7XvsP
	v1EGdl0caHXAtmDRWDwNMBKEjzkkt65q4ulkl8wahjJIj44ogZhst/IH
X-Gm-Gg: ATEYQzxQpRko9Hz+x86BKVwpxF73x2Po3AJoCWaBOIslV2z79TDeSdsY23CtBtxK2Jf
	GCZIs9qkVj8DQbaSnS+yKNleUBtodlgHRIXHJl0rK3xitH1ReiD61dJwQVWwVAJRMG4NvCF+29i
	oPI19Fe/azyvZL2Srcg+toijsby2YHT8PAmPmfJ4z2DlkWLuw2601nXGytLh3znLxpgcR+OBku4
	v6BLfndaMdO2yIY5MKv2TPF4n8cPq8txb1J1ReXs28uAlpA82BUUcRbuZsPpwf8NS43YDCZG6Jo
	1EtMiZYSc+b/T/4+yYPTMVytJQt8LFmlDY29Qtcstz6BEEt00CdKDeYM6GRVCtpaystWSANS0L6
	07wGvV4n0LXg5i8K5szkBKkIZ82wO7P4v6dmW2Wi+8ToorndnrNfGwZnzI18ocKPx1Jw3iY4kiT
	nzE2kXLtviRYrYL6KZ+MOKzWr0lQMMruEe5FK5j7GRkCOsOWit7GHFj3SqMrQGUttD14Qd
X-Received: by 2002:a05:7301:5f09:b0:2be:ca4:e118 with SMTP id 5a478bee46e88-2bea55ef377mr990892eec.28.1773369913687;
        Thu, 12 Mar 2026 19:45:13 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:1b3:a803:148f:62cd:a5bc:7e0f:18c])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2beab526db0sm947919eec.20.2026.03.12.19.45.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 19:45:13 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Fabio Estevam <festevam@nabladev.com>
Subject: [PATCH v6 4/4] ARM: dts: rockchip: Add Onion Omega4 Evaluation Board
Date: Thu, 12 Mar 2026 23:44:51 -0300
Message-ID: <20260313024452.625064-4-festevam@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260313024452.625064-1-festevam@gmail.com>
References: <20260313024452.625064-1-festevam@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_024517_327895_0B71C3E2 
X-CRM114-Status: GOOD (  17.37  )
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

From: Fabio Estevam <festevam@nabladev.com>

The Onion Omega4 Evaluation Board is based on the RV1103B SoC and has:

 - 256 MB of RAM
 - 256 MB of SPI-NAND
 - Ethernet
 - USB OTG
 - Wifi
 - SD card
 - Camera connector

The details can be found at:
https://documentation.onioniot.com/omega4/getting-started/

Add the initial support for this board so that it can fully boot into
Linux with the root file system stored in the SPI NAND.

Signed-off-by: Fabio Estevam <festevam@nabladev.com>
---
Changes since v5:
- None.

 arch/arm/boot/dts/rockchip/Makefile           |  1 +
 .../boot/dts/rockchip/rv1103b-omega4-evb.dts  | 55 ++++++++++++++++
 .../arm/boot/dts/rockchip/rv1103b-omega4.dtsi | 65 +++++++++++++++++++
 3 files changed, 121 insertions(+)
 create mode 100644 arch/arm/boot/dts/rockchip/rv1103b-omega4-evb.dts
 create mode 100644 arch/arm/boot/dts/rockchip/rv1103b-omega4.dtsi

diff --git a/arch/arm/boot/dts/rockchip/Makefile b/arch/arm/boot/dts/rockchip/Makefile
index 716f5540e438..d0154fd7ff24 100644
--- a/arch/arm/boot/dts/rockchip/Makefile
+++ b/arch/arm/boot/dts/rockchip/Makefile
@@ -1,5 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0
 dtb-$(CONFIG_ARCH_ROCKCHIP) += \
+	rv1103b-omega4-evb.dtb \
 	rv1108-elgin-r1.dtb \
 	rv1108-evb.dtb \
 	rv1109-relfor-saib.dtb \
diff --git a/arch/arm/boot/dts/rockchip/rv1103b-omega4-evb.dts b/arch/arm/boot/dts/rockchip/rv1103b-omega4-evb.dts
new file mode 100644
index 000000000000..3016492e15d3
--- /dev/null
+++ b/arch/arm/boot/dts/rockchip/rv1103b-omega4-evb.dts
@@ -0,0 +1,55 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2022 Rockchip Electronics Co., Ltd.
+ * Copyright (c) 2025 plan44.ch/luz
+ * Copyright (c) 2025 Onion Corporation
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/leds/common.h>
+#include "rv1103b-omega4.dtsi"
+
+/ {
+	model = "Onion Omega4 Evaluation Board";
+	compatible = "onion,omega4-evb", "onion,omega4", "rockchip,rv1103b";
+
+	aliases {
+		serial0 = &uart0;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		led-0	{
+			pinctrl-names = "default";
+			pinctrl-0 = <&led>;
+			gpios = <&gpio0 RK_PA2 GPIO_ACTIVE_HIGH>;
+			function = LED_FUNCTION_STATUS;
+			color = <LED_COLOR_ID_BLUE>;
+			label = "sys";
+			default-state = "on";
+		};
+	};
+};
+
+&fspi0 {
+	status = "okay";
+};
+
+&uart0 {
+	status = "okay";
+};
+
+&pinctrl {
+	leds {
+		led: led {
+			rockchip,pins = <0 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
diff --git a/arch/arm/boot/dts/rockchip/rv1103b-omega4.dtsi b/arch/arm/boot/dts/rockchip/rv1103b-omega4.dtsi
new file mode 100644
index 000000000000..58aebffda9cd
--- /dev/null
+++ b/arch/arm/boot/dts/rockchip/rv1103b-omega4.dtsi
@@ -0,0 +1,65 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2022 Rockchip Electronics Co., Ltd.
+ * Copyright (c) 2025 plan44.ch/luz
+ * Copyright (c) 2025 Onion Corporation
+ */
+
+/dts-v1/;
+
+#include "rv1103b.dtsi"
+
+&uart0 {
+	bootph-all;
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart0m0_xfer>;
+};
+
+&fspi0 {
+	spi_nand: flash@0 {
+		compatible = "spi-nand";
+		reg = <0>;
+		bootph-pre-ram;
+		bootph-some-ram;
+		spi-max-frequency = <75000000>;
+		spi-rx-bus-width = <4>;
+		spi-tx-bus-width = <1>;
+
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			partition@0 {
+				label = "env";
+				reg = <0x00000000 0x00040000>;
+			};
+
+			partition@40000 {
+				label = "idblock";
+				reg = <0x00040000 0x00100000>;
+				read-only;
+			};
+
+			partition@140000 {
+				label = "uboot";
+				reg = <0x00140000 0x00100000>;
+				read-only;
+			};
+
+			partition@240000 {
+				label = "boot";
+				reg = <0x00240000 0x00800000>;
+			};
+
+			partition@a40000 {
+				label = "ubi";
+				reg = <0x00a40000 0x0f5c0000>;
+			};
+		};
+	};
+};
+
+&wdt {
+	status = "okay";
+};
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

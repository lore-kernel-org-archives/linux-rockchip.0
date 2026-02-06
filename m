Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1592EE6B4F
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Feb 2026 20:22:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=W4xGKz+H1xGpXpO7Y8E2+L/n7eDYywloM3i2govxL8w=; b=TEXywCs73AkMWf
	QE04VlF7gFd6CzUrW24NjXcJxt3D7ScvGV+uG9Uy6RrP0A2pobMuAdcIkcZiodG/pHu5hL/3PNFqH
	4xUwtvLZ7Zlm7CCvfrWxwPO/JZ26YZigNvascSVWzLGeAZZIPUtg4r87HBUIJKy2q9mf5k9+rZqhy
	AEUCBQ277wzOtBu/9hEX2YaXEkVuuS3uJVu8ni5YrSxclZAbJiQcd5dQ2VK/CEHnDw9NdCq2UEG1Y
	wBRxmwAtJSMjc8AtHOjG4U5eW1XxfvZY2dRwS4A7qqUZh/Q39PdZ9VQlPD/jIbabcmVF45vdksZRC
	zoi4oLeMpSPvn9xoXtzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voSLg-0000000BnBH-2Oa5;
	Fri, 06 Feb 2026 20:22:40 +0000
Received: from mail-qv1-xf31.google.com ([2607:f8b0:4864:20::f31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voSLd-0000000BnAQ-41UM
	for linux-rockchip@lists.infradead.org;
	Fri, 06 Feb 2026 20:22:39 +0000
Received: by mail-qv1-xf31.google.com with SMTP id 6a1803df08f44-894774491deso31134936d6.2
        for <linux-rockchip@lists.infradead.org>; Fri, 06 Feb 2026 12:22:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770409357; x=1771014157; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=f0zUp2P+g2uFd6hUAI+gJemyvrScR2wFdYRxcOydHJg=;
        b=HdWJyvA8fRpgKLQkLISak8y2ClPhfid457Lqedp2Z/MS6WkL5BVj6mLStWDIyY0Fkq
         i3MT+qVTk5QTGw/u2E2GOSAn6qdcPeC5/rMJYL/dKH0HD2ryk8YJNoOjUiyATLWOCPGW
         lH2i3gjg8tLa5Zv0VPWwszX2YuwA8VLUgnfks4c7JJq70Zn0JFpYqvvE4nXmn6Zp4qAU
         1SIBaK4Qkc0Ts6I+dzy/xfw+cMFfjbsFkJLc+Bemtj09se/eIcQEsILQLp/8fOvGXTO1
         W5dW2PpvTMaWJE4m16JD+nohPs+nVzMU09Z/u8dEwTe9rN4e0OyOTkyIslsUhAAFDdDf
         QnJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770409357; x=1771014157;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f0zUp2P+g2uFd6hUAI+gJemyvrScR2wFdYRxcOydHJg=;
        b=pOYz2SP6LAofpgIRBB6WEnFevCkIMJiRsyVs0TzVz8totjlnySzhJQ7GDLZHjSYJOH
         WC36AySPIH7340lDvW7u2oIUsXNtMeOizQbPNM3z5AUANbBSHk4vuwnr7J3FE5bIF8sC
         Ay5KbVAKwEc4oeGOEjJ0JNzc6O8cJrjbTiNocd8QI0kUU6bjUe+y6rjSv36wYyXAWvUh
         HnFh300SrSXCJC39IGZs28P7gKQz2sVgQ4IALvH8TtlRRuVr7vSgm1cT7ahVfalGGHYu
         WYcMby4jZPKo91BOsdNbc0SkZ9r01CExfrIRR/JG0zNxj/NC7HiWz6AOqrv8Z8NbGO3C
         yO5g==
X-Forwarded-Encrypted: i=1; AJvYcCWfugT+Sp9vylc6mXLDxrOWRH4IqThDY3ouiIY1x/Xgt214+vifJL+hhthWwes0oAE4JQ8CBZGhUkLo7Jbi3A==@lists.infradead.org
X-Gm-Message-State: AOJu0YxiWGIwTMLg55YZl1fsG6OI0BS135dNNECQa1OrVnnd+IiUvDGW
	7ATsFqqtWDVWUwDUkUfUq3EUJh24rT62MgMOlnH6ScaZG6TOlllT0ibKdQog7Q==
X-Gm-Gg: AZuq6aIunaBURITphJ6MSGC8MfRkG4o4/eJLKZWXv20Y9AuFTKVxVvoUokyX5Bh4jES
	93NmzAR+aw1CP/5SKMnd+8h1NQSyMnxsCH+05y1VwTO8SEiax9Ad4xHZSn+IauaX4HQIS05boF5
	ty67FBK2e54NOt/C2Zax/mtYA2ZxztR6aUQkCJ+pT9oVTTFd9MxbFqBvb0aEVU+ISqmVJ6Subi3
	NrxOMdcW6Gg6UAr3l5Z76u81RRndy9tqPWqU5MohmIAaGdiiyvnT7Og13VptcvOHXj62/jCL+O6
	i/5KOrLYFnNBoVpCc/xKdatSGw4Qn2MkVBpoV/zbNPa9fbPsxUeFa8ClSsNwfDrictQYmRYl+BJ
	bGgFrk7PJbumvo3TW+IEyvX+W+jfQHuzAuJIgGlOhQu774nB0fjERGHl6D8IxgCIDNEDZJQmPPb
	8JL2N/Ke+z+IDOlOqrGFQzmLNh
X-Received: by 2002:a05:7022:51e:b0:124:9f67:6b6f with SMTP id a92af1059eb24-12704025a8amr1636130c88.20.1770403354070;
        Fri, 06 Feb 2026 10:42:34 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:44a3:2bb7:a035:fd7e])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1270d8e25f1sm576839c88.9.2026.02.06.10.42.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Feb 2026 10:42:33 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Fabio Estevam <festevam@nabladev.com>
Subject: [PATCH 11/11] ARM: dts: rockchip: Add Onion RV1103B Omega4
Date: Fri,  6 Feb 2026 15:42:27 -0300
Message-Id: <20260206184227.2702488-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260206_122237_999362_B4FD21E6 
X-CRM114-Status: GOOD (  16.21  )
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

Onion Omega4 board is a board based on the RV1103B SoC that has:

 - 256 MB of RAM
 - 256 MB of SPI-NAND
 - Ethernet
 - USB OTG
 - Wifi
 - SD card
 - Camera connector

Add the initial support for this board so that it can fully boot into
Linux with the root file system stored in the SPI NAND.

Signed-off-by: Fabio Estevam <festevam@nabladev.com>
---
 arch/arm/boot/dts/rockchip/Makefile           |  1 +
 arch/arm/boot/dts/rockchip/rv1103b-omega4.dts | 92 +++++++++++++++++++
 2 files changed, 93 insertions(+)
 create mode 100644 arch/arm/boot/dts/rockchip/rv1103b-omega4.dts

diff --git a/arch/arm/boot/dts/rockchip/Makefile b/arch/arm/boot/dts/rockchip/Makefile
index 716f5540e438..d8cd5df138cc 100644
--- a/arch/arm/boot/dts/rockchip/Makefile
+++ b/arch/arm/boot/dts/rockchip/Makefile
@@ -1,5 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0
 dtb-$(CONFIG_ARCH_ROCKCHIP) += \
+	rv1103b-omega4.dtb \
 	rv1108-elgin-r1.dtb \
 	rv1108-evb.dtb \
 	rv1109-relfor-saib.dtb \
diff --git a/arch/arm/boot/dts/rockchip/rv1103b-omega4.dts b/arch/arm/boot/dts/rockchip/rv1103b-omega4.dts
new file mode 100644
index 000000000000..512b063bceb1
--- /dev/null
+++ b/arch/arm/boot/dts/rockchip/rv1103b-omega4.dts
@@ -0,0 +1,92 @@
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
+/ {
+	model = "Onion RV1103 Omega4 Board";
+	compatible = "onion,rv1103b-omega4", "rockchip,rv1103b";
+
+	chosen {
+		stdout-path = &uart0;
+	};
+
+	memory@0 {
+		device_type = "memory";
+		reg = <0x0 0x10000000>;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		led-0	{
+			gpios = <&gpio0 RK_PA2 GPIO_ACTIVE_HIGH>;
+			label = "sys";
+			default-state = "on";
+		};
+	};
+};
+
+&fspi0 {
+	bootph-all;
+	status = "okay";
+
+	flash@0 {
+		compatible = "spi-nand";
+		reg = <0>;
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
+&uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart0m0_xfer_pins>;
+	bootph-all;
+	status = "okay";
+};
+
+&wdt {
+	bootph-all;
+	status = "okay";
+};
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

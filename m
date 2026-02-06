Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1919EE6B56
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Feb 2026 20:28:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=j2A7sIioUGb2vmcF1L5+p+fvcPT32BQIdrUNZhhtBks=; b=XPAmJt5CQh0rCS
	1F5ggr6tx95ljTMlAm3800pdGNLYMNaBynEMypQ9dpsuLxsJcJGdg6QdLiJfLwntiuqRYxI+rkDDn
	PosF6Fvt1p53o5ZN3qP1DpHh02G8JvdD3grbWGK1VGYoEYybTz0HwQCiYWOIDi7dqe3xm8cvAVfth
	C4UiAyW4PWcx9T+zldBANrvnpcxJl0JoWlmJX8RYUChvb9h5Nhk7ZaLy4MBNSf6yay305GHhHJmq3
	CLbQ+kj1/FLnr0vD0czB5zkDUv4Bi7Mlav2O1Pu7AloX/G8/xLVJk685WWF4wf4psGfqeUrfOYAqi
	3Us2iwSc7/TrxCTEL3pA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voSRH-0000000Bne8-1CBZ;
	Fri, 06 Feb 2026 20:28:27 +0000
Received: from mail-qv1-xf2f.google.com ([2607:f8b0:4864:20::f2f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voSRE-0000000BndY-0bES
	for linux-rockchip@lists.infradead.org;
	Fri, 06 Feb 2026 20:28:25 +0000
Received: by mail-qv1-xf2f.google.com with SMTP id 6a1803df08f44-8946e0884afso22127876d6.1
        for <linux-rockchip@lists.infradead.org>; Fri, 06 Feb 2026 12:28:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770409702; x=1771014502; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lOn3TJ8VDiSndOjVHpbjRor/zx6dF6y8oFuDewRL8ck=;
        b=PGx+Eqri810Uum2MC+lJdLT9r0eZzZLdng5HHZmEgAtQC26lqLcP0+PQE9aRXl6YIT
         yO+UHukn6cDL3oQo83RF6M3Tdklz1Zh/QYklajV4RgRtZnyeHOFwGbk7p0O6MCDoTLBd
         CF7rTO13cjPubOVeaZiQ44Ar8bMwIoJsM5C8WJVR5MVBg6iiY9qsVYdJpJ+n3Vm5/hlq
         Pj0PvCpReJ6kFVGHGy7DkTVEg1JngJMEjfCICHELkO02H36p0Uvh2Xok+uJMghVhXB/v
         b5c0LyqWTuTrXHLuP2vtkMZhUKJfBsfbMLYhcT93PGjUiD8WM+f0cNohVWL1qjEysFky
         h/SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770409702; x=1771014502;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lOn3TJ8VDiSndOjVHpbjRor/zx6dF6y8oFuDewRL8ck=;
        b=kmOcQia+J60CktapPh3WLrATmkouT8ZXBWUdkaZv67ZIvRz5GV98KxSSjgZbiA0ulr
         7xHLGFVfy5r+r87qE4Fhw0tyqwqZ++NKKwua9XQ2vfQCmjnA9cpFbBM1UlgzASuOOyRN
         ycnGnp23sWxNNO5JZ8J/TeMJnuVemU6c+BTlNwejCIaoXwful6UHm/JX0TQsdIQFnzaN
         14DKTw32QlwaxrNj/pu0vWYVSR05KNEJnGVKH4clAGPAhMfGgY4M59/yehMMheA/qKFd
         gx0evedl+DfeuiNM93GDoxI9JMb6OoowZSpKNHs7dRtWHZ3a4b0bDvUPbJ0KsDQBk8DJ
         MvHw==
X-Forwarded-Encrypted: i=1; AJvYcCXVqu7uEelnf9Ufw7fmJx2k/eLope5V/ZiM+Np8Nz9VuWS5HeB2Lsn+26W4L425AjOHCyqejXw4vEIOHMoRuw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwSJGRNpgEG0xKXrC6DlFGTt1T7R1toXth/Piz/eRlfrTcOpn+p
	aMbo8n+NPY3c0bQXSvs8B5JiGBRoQzigC2Qme55WRgXBOyE1ohqOpufbDTGvbw==
X-Gm-Gg: AZuq6aLOAxV8bonvp9is17CYnVKwk/gcBYZ7GWjXGkCdcrglLDGafbKWRTeNjKokZaQ
	h8oL8l5ZPi7KEoZ9oWPGKapaNkWwthvaVSM1K7nC14qJSi6JQMIYtwDJw/JfCbLYxfsAJJDnAE/
	waoWreDlOQL3FHDTfyNMCT6jphHOpAgsCvbb3wtIKcdCANnnrG1kcECv9ObAd7gquempChOkKUX
	cfYXN02Scp+H7mAqBQqJwaXAWq7bFrPpHNQYyCt2WeSiLerHSLM37ZHNOnqO0PWfYM6AM+8F6MB
	OX3+gb207vFUFtTFPGaZfKx9m1kVQ//4Clu1P5Y/k1zBH+Frx/0Guc2OlDobVQxxMWwrZe/cJAf
	Pvi3HRs1dZb6j2cJ9sN6Cd9xuS2qQ0erAzA/Oe7nX0Q4GiuZlTenrUBorxAQ/C+ldsFvArxXJPo
	0TnXYQv55hY51cOaTRK4pWTcQZ
X-Received: by 2002:a05:690c:d95:b0:795:1fbd:2cf7 with SMTP id 00721157ae682-7952aaa90b6mr35940217b3.27.1770403066852;
        Fri, 06 Feb 2026 10:37:46 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:44a3:2bb7:a035:fd7e])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-7952a1d9b38sm28008437b3.27.2026.02.06.10.37.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Feb 2026 10:37:46 -0800 (PST)
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
Date: Fri,  6 Feb 2026 15:37:37 -0300
Message-Id: <20260206183737.2701570-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260206_122824_201087_11F8EAC7 
X-CRM114-Status: GOOD (  16.31  )
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

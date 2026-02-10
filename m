Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0795EA8127
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Feb 2026 14:49:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4pVIeJmKSiJ2Yeaa1HMNPtmICkHXRaJ/rJRhnYvYqik=; b=HVUDACQ3ir2gle
	ALR41Y6PuiCw5zqCoUYeNKrLZ0iTFYoA5GLhEjY2bSkAsz0psor/cz+aV4MiRgcxxRcnTnbk0atOq
	vrku0CFp65RzQ5N7cJCcu/pcJWpgl7jeFHYEKj7JnBasLqdbyvsWJ8OYxhVf9LrgnVo9zaYufzVVr
	2Dre1vbvwGusX3D1BPJ+9eKONrXpXpIHsNLDR49jaTFfjN43n8xY3Gw7b5ygs7mBXVrwH9EJrztM3
	uh0yK7TGaEUpcxzW/oYa3W+oKVR0MvLFlM/8LcYqwjJiwO+9dXil3PHBOzvDMba1Z85430EtJqRJR
	F5i8ToI8LXs4Ikn25mBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpp3R-0000000H47q-2r2b;
	Tue, 10 Feb 2026 14:49:29 +0000
Received: from mail-yw1-x112a.google.com ([2607:f8b0:4864:20::112a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpp3O-0000000H44N-0ghw
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Feb 2026 14:49:27 +0000
Received: by mail-yw1-x112a.google.com with SMTP id 00721157ae682-7950881727cso6177427b3.3
        for <linux-rockchip@lists.infradead.org>; Tue, 10 Feb 2026 06:49:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770734965; x=1771339765; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6r7XJGPI4Eu2nijObW0lD2FssoR7X5MTuREbg2w6rVY=;
        b=VxWqZwTX8zHVK0EZoVz3+STbHPAywNPAYRCvgU5asesgtEWwmpRI18xJzQ3rbmCjCG
         bEbpc9Gai/ZG1gHX/RxZu9fY4nObDebMoqJmqT76INPxByS4Cv0PtSjhIUTfkMwD9/Dy
         xKA2DGucJwfLT20fGRtCW/v3bF6mEaS1lpiGJJ7XBCKa0O96Qe54lC7Riyap59MFpITe
         so6kBu1/82V+TnsbNI5IwlJLw6aQAIzE5OknVn/woLiuqH8/8umJMnExhndzV/OJm5ur
         gEoYRUj9E1Ufe2BkeAULOw5eXawn+RUMKN/I5y+fKnBd3u/z3oZVqCvoMQiZ6NoPhJQm
         kT6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770734965; x=1771339765;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6r7XJGPI4Eu2nijObW0lD2FssoR7X5MTuREbg2w6rVY=;
        b=r+u65GzrTZPXaeNW2h32/qP4thmuMZ4q8+6tjgXUs0m9WYqv63sigXL8IpX8UqsqLs
         pmS+mqtyBNnpABUFgNJX3CWeboslvNzfNvw8whVR/HAzPzyxiMiq5AiHqX4Yd00m1Mp+
         i6lbRzLPJ4f97UjHX9Nxo96OwgLXRx67KAHD+w6nyNwOCBY6uZXYpeYuMIeqJdhmpjj0
         JaoH/Ic90kSH935hR/H8AoLrMosR6CQvHVfcei0Li1VrFcWsu+7V5Nb5HopI05XTrjnu
         a1Gw95T+Gp5bWnHVTbfO5dNu8H4bsvtbcsjII2w/d8q9LaT/43AYEfydRXUB+/Wmk7NI
         AKnQ==
X-Forwarded-Encrypted: i=1; AJvYcCWvQN0wlzJjv/+fU3V9DDTue0yA4j6F9XjYxF58pn53N1XaoQ6lqNnidlXLg52gc8VxwH8R1PqE9zvRygG0Mw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx8+odqPCqIAHFfN3XhhicKQ2K7ugMDMWzBowreSWtGmjvj2xAt
	+vfaVCK8tozk/AbOPBvuSe0w3ui4KMdBH6+3ycREeq+MVcOWRJZDjJgf
X-Gm-Gg: AZuq6aLTcJJFZiqnIAJAGOQee7DTKEt0Zm9HrD1s0Ll0ZFB1fRSL1LBroSdFRlArhAl
	aul0Xz8qOXYDMpHHMWUqWwSxieSN0BtVjZq4R1JqE2S+02LwzzdO1LGhjcFgRp9/8SVENAjjy9B
	EhSdTUiPzOLSmA8IQNWyuDayFkma5NqenCH/7EnxPfuKXjakH2DPfs9wGEBWGs2zKTJtJgDYOqh
	v7jANshIw9LimxjZGr3p9+PX6v/bytb3fZsWmp1OxJEHeWOFYvukpuLJiYRNnHTuulmdjCdp/cj
	JiwVfDe3v2dp6reIS3i0FPJh/o8pHDq0KW/PGLuWnMr/VM8QQAP9iy3cRKiF/ZWhtqASkIwHYwl
	NZohiPyoxzTNy0+dxaNhUZdEC9aJmkKiiT173vj9jFD1ODV9+VXFNZsNNexqoSe++G/o7XGDvPH
	zKWkPh2Is5kC1poeAUlUZEtI/zkOpFNmz4/sVT
X-Received: by 2002:a05:690c:60c6:b0:794:d4c3:3152 with SMTP id 00721157ae682-7952aaa7866mr287712077b3.31.1770734964654;
        Tue, 10 Feb 2026 06:49:24 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:7e95:428c:8802:872e])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-64acd247ee5sm12086263d50.6.2026.02.10.06.49.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 06:49:23 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: jonas@kwiboo.se,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Fabio Estevam <festevam@nabladev.com>
Subject: [PATCH v3 4/4] ARM: dts: rockchip: Add Onion Omega4 Evaluation Board
Date: Tue, 10 Feb 2026 11:48:45 -0300
Message-Id: <20260210144845.317048-4-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260210144845.317048-1-festevam@gmail.com>
References: <20260210144845.317048-1-festevam@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260210_064926_220356_98D90AA8 
X-CRM114-Status: GOOD (  18.13  )
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
Changes since v3:
- Split it in the EVB and SoM dtsi.

 arch/arm/boot/dts/rockchip/Makefile           |  1 +
 .../boot/dts/rockchip/rv1103b-omega4-evb.dts  | 94 +++++++++++++++++++
 .../arm/boot/dts/rockchip/rv1103b-omega4.dtsi | 21 +++++
 3 files changed, 116 insertions(+)
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
index 000000000000..686f2dd28eab
--- /dev/null
+++ b/arch/arm/boot/dts/rockchip/rv1103b-omega4-evb.dts
@@ -0,0 +1,94 @@
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
+	compatible = "onion,rv1103b-omega4-evb", "onion,rv1103b-omega4", "rockchip,rv1103b";
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
+
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
+&pinctrl {
+	leds {
+		led: led {
+			rockchip,pins = <0 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
diff --git a/arch/arm/boot/dts/rockchip/rv1103b-omega4.dtsi b/arch/arm/boot/dts/rockchip/rv1103b-omega4.dtsi
new file mode 100644
index 000000000000..bf245b547ea2
--- /dev/null
+++ b/arch/arm/boot/dts/rockchip/rv1103b-omega4.dtsi
@@ -0,0 +1,21 @@
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
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart0m0_xfer>;
+	bootph-all;
+	status = "okay";
+};
+
+&wdt {
+	status = "okay";
+};
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

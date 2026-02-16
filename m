Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A73F4E63F24
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Feb 2026 01:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2m3D9ZM83OMJr7cknbhfSk9GIMaD1l/sPxnzP9stZXg=; b=kiKBHbaPCi1Vbo
	WxrJ3H+qXMmcjwbOBDv7RRbVh0d1I+NCM7f+x97cXeNUnTyWAz5cYHbbqIEFvjIWvkOTukvP1zdBW
	L6TjHKrid4GKndlNQLcALUhUCBTRVukhjabJ3xAY4PHgXx353ZmXzSGuyuPjyEwryPTchwzXYTiRn
	iPyazuT6/NZ/cP8YKGpTFEJyTHnlWnKu8VI0inNJL5kOkn655BnHFp3GhCtqXuI6dDWwvfyKllnt7
	Z0OJ79dt5EiNjIMGvlzH02I8XDc5D8/rlUMqNx56O0y1d0z1+laT21zuBgvGIMObflfKrrFHH5LKE
	o4wbJu2MPck8RYzvcWZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrn0f-00000005pc1-3a9N;
	Mon, 16 Feb 2026 01:02:45 +0000
Received: from mail-dl1-x1229.google.com ([2607:f8b0:4864:20::1229])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrn0c-00000005pY6-245U
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Feb 2026 01:02:44 +0000
Received: by mail-dl1-x1229.google.com with SMTP id a92af1059eb24-1271257ae53so2656166c88.1
        for <linux-rockchip@lists.infradead.org>; Sun, 15 Feb 2026 17:02:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771203761; x=1771808561; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q0fKyKWI4980jZn5M5FggHqzBxrEKL/SGjXzNzw8NrU=;
        b=kGEbOQk3Dic3IEJ8HAfnHdacwK+s/WpQ7E5WM3jcxOnB6GZB37o8pgiUy5z9rAs6iP
         VamOUPl8SqTX2flju9mpPOnOqa4Rs+ge7t72jGIuVP1REO7Nmnm8ZKj6q/9W+Vf1hdcz
         53TBxNkxO8K9oe2FSZE1FBPtBOzS6/4lUk/zI7+lAXYPMpK2PwcAshEABJIoMU9r5Ssj
         931oxA15+ZDz+HQbKxXCC8vqDPwTlUcBNBE/M7HdHJStwyJFyxiovU5vo15w2c2lNIGM
         0uycihJckLz3WPw+itdJtevxPlDzGCpi2G1YuEAZvLyxrdniBkuXwFAlC34i9eP3VL73
         SPAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771203761; x=1771808561;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=q0fKyKWI4980jZn5M5FggHqzBxrEKL/SGjXzNzw8NrU=;
        b=JM5hlmTtCueWOu7fCwwHkJPZqG6IJiC1excL9ESbq58E/WUTJBK1hb2M3Cr+dl/CkC
         CV40UPlPb3VtWK4dwk006DoyWjzq9OgUB116KWTAZ4hWrf2cS2dRGVI2zz815VSQ9ECi
         3cLCJH5E5z6wHxDIi+0BEvx49B/MZsMiVP26oNmk/wE7q7exIXMjt4z6jhlD6vZO6kCg
         0PqBsKO0pDkwFgMEMQqMAPcX4hlEB8Dcc6L6va+TrnWTZsl4gCERKLyUY/4mVj9z+d4k
         ZeYcUa4bbJLGa+jMZQqEBEcbI10H7Dy0qYlLaDAiBw3HF797J55fksztVd6GwUPgsPlq
         LGuQ==
X-Forwarded-Encrypted: i=1; AJvYcCVQaOfWivljpV6Q9skwI83GVZ0siWDR9tkrKlYeQhIKiZKMWewmw7F7gin89K4PZm1KsFO9YQM+Vo/A4gduig==@lists.infradead.org
X-Gm-Message-State: AOJu0YzeQGw7EiDVzSueIBV6kfKPQj94OeMqhkqRGD0PJfVGYSvAZrcx
	1fGA9cse4KtqKGsH9hC31+FH9PUuJXmHQj2ZZ0NeqyzPjDxpcnOYR44r
X-Gm-Gg: AZuq6aKwRdQzOK7N+daNOlC9V2RbMjuEoEpHlEGt98wC2OwpLZun1t7PqaugfIKnQeb
	ehorR5epaWt9u5Mae/R6yqXM83aFyfd7IEOXO5PuVx14iYgnZpx3xiAmcwLb5zwQTfV+Xz4lB1t
	7cmZN+vUu9euTlntoGoCVVbwjOHRXXOEtjIQc44s0IG0n3quZcOIMPeUzTt/pcWlOTLsm5MMfZ/
	fvTyQmOv7QjLS7OaAb/zR+6Rm0AKh6NhN18tF9/AvCtquv2F7EM/RzbMmQNKg9hDQBmCH5y9Ygv
	fGQP1dTPL5xjV9tad8wzG2GN97I0LQ60jKK6tkAe617iPQ4VjN7VYU2xucP5kmlYeqPvJqr+AgW
	zefgKx46uI9npfTCcI//UmR2BvyvtMf7/ObP0kuG2CZFKQIyM4oXzcoouIUnMT0MjwCwC1OUIcL
	vs4Cv1RffkvdX64it1SYlm3/SgU82WGvVVTbQzyJIAbmvDlvagQKP2BUh78IVU+V2FXmklUZ6x4
	41I
X-Received: by 2002:a05:7022:793:b0:127:366f:8bb7 with SMTP id a92af1059eb24-1273ae2f14bmr4124070c88.25.1771203761453;
        Sun, 15 Feb 2026 17:02:41 -0800 (PST)
Received: from localhost.localdomain ([2804:14c:485:4ffb:cd7:e7e8:c526:2074])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-12742cadb25sm9158160c88.10.2026.02.15.17.02.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Feb 2026 17:02:41 -0800 (PST)
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
Subject: [PATCH v5 4/4] ARM: dts: rockchip: Add Onion Omega4 Evaluation Board
Date: Sun, 15 Feb 2026 22:02:19 -0300
Message-Id: <20260216010219.2131484-4-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260216010219.2131484-1-festevam@gmail.com>
References: <20260216010219.2131484-1-festevam@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260215_170242_545398_7354AA9B 
X-CRM114-Status: GOOD (  17.79  )
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
Changes since v4:
- Use compatible = "onion,omega4-evb", "onion,omega4", "rockchip,rv1103b";

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
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

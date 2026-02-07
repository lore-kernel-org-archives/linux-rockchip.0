Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4CDDEE0AE8
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Feb 2026 13:18:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sc5g8ZsZB5wvnENmL6ThZk1v0QdmbpYL9arSbUsvXDU=; b=wBsFl6V3TGN1yN
	mjBuTNClXGFtmeJVxUuTcFlCsicctw4LDQ0hBS6tIwWxqEZbvozJLJEeHbywmsp9rw95v3EBYb7lg
	BVQrdtgfavPjhczTEr4t/qLUTqdzT/6V3/hX/5u0qYgt6+IFcTMko1/N/pWD8wF4rXuoncYG2I52O
	r+5lfc8BYRlfYGB7OHyP6RyHfN0hGv83XnZqQhI5MYFb6GXu/VNkOt5vVmk0siLBYygFHV4sPnmXN
	8kgKVSAqKrpVGYE9qhu6x67mgghwn2U7ngUzm2o2PK2/+a4xckW+EbdijsR2l14SaLCaCTPlrIGPG
	2YJk7qbO8Abs4dRqhGqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voiCf-0000000CTGN-2Ohq;
	Sat, 07 Feb 2026 13:18:25 +0000
Received: from mail-dy1-x132c.google.com ([2607:f8b0:4864:20::132c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voiCd-0000000CTDg-2W5g
	for linux-rockchip@lists.infradead.org;
	Sat, 07 Feb 2026 13:18:24 +0000
Received: by mail-dy1-x132c.google.com with SMTP id 5a478bee46e88-2b71557299dso1516623eec.1
        for <linux-rockchip@lists.infradead.org>; Sat, 07 Feb 2026 05:18:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770470303; x=1771075103; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QAMsCJ7WM0LvMqOJgK6pz8e5Nk/hEPgkVpMXdjp+pWs=;
        b=LqajDDjCGuY4AGzK3qlyEHXbvAF7dJ3WfUJIDDDa54uYQ7hx7mwWIsd+1WMZ6alKyE
         9el7DhHnv1jfscfcGSN+OAHv62xEut2BSCFEdsgbM/4TD1WAtEaRQWC1U2umndLOOKQZ
         y99jS30ncs52t/D1z54oxU7d9atrazVrkb//Sb6yuHRP7jb4Qeu02QW1/sy+agXTEL4g
         1IbK+E4aHIvW0AZLaae0mh4unJG1t9XvH4TPQ/8yAyfvnbyNoA0Lm1Js6JAdljVlg8nj
         V+VmW71dMXaK4QmPZJJGG8/FzzY2qBdBT6Qd2e7MDJiViCMfHlhNOjAuA8rkTBB4z0ZA
         W6qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770470303; x=1771075103;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=QAMsCJ7WM0LvMqOJgK6pz8e5Nk/hEPgkVpMXdjp+pWs=;
        b=glqazBHLFToepj8PS1iD6OkCHJp7W7nxiwtXBwhpmtZC0GGHxT8MD2gv52mZn0VPbi
         DtGK/YIWi8UwyMuuUmiTj0Enm4Jkjn+mtLzQ+SmIma2q05EGiqGnEEnBHFQCFtTKslqf
         xApmnDdtJm7FviNABY5WbdE/EL7hB0LYVfl+NDH8vBcFbHlR/DwN/2dXFTAbdPtNFBAn
         m8/Q6a68kkrrUtyynxThhlQ4L6hxtSAbEisl/a08DSQ7UfWUSA6TVydv4HqlnVtq06m9
         HrrKWpNQ/WXZv4u9iRHqBeLiuRbBPMHh9aOYVGcPKp+hcPF3eky9zP7m2hrbkHDjks/k
         etLw==
X-Forwarded-Encrypted: i=1; AJvYcCVY/ThY28khmqcgY5zUGD8iq9/jKUsaxWvf/3htDjGyWZfZHwLpAiYcmlW6rNhfn4qNVP+Q7loll7FBCjqIyw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxDPUIrfjPtRa3u+VWrLtERz1EP6FbD30britLqANazpgO/Fc0h
	QlcOyUqPDuv5vzzdTIzXdcGnzd5VqT5kS9ULlO7IIEGZSBXmaBdVwM/8
X-Gm-Gg: AZuq6aJop1KNiW1ecbJF/HZSO8Y1CnFnhhnNgLdify5jZ7g/fuYVwb6RoKozlDh2FNJ
	UJTzBwE7Wd1H0lLKz+q4NJ6zsSzPhfl7mSK55dGy9YBRYiXrPdBKBcNSlYcHEKnMrO6kIN44JuY
	XLb7awvvk0tPuqyAk7xlrigGseISbJXWY2wjxOaSxRJKpq0QbMhKsucneUaOsbWayg00Qs5fUEN
	/5YdaVLa6zbmseCS+gE4PjNj26evchqb6+UDmStR9R2Q9Dc8dSX3P82PF0x068itl+jYXtBr+mM
	MaKHPJufuV6YO1k8i+nALt6lnimAtLM7GZ6eSmBHQYo+nisCEHqoHke4qW9IDROOGr6kLdKjKPQ
	qJDSjL+2DK+atDPlPs4v4YqHaG5IbnQNULVDPHOCWRtx9dU+TpklxdvVH7/5CYbHonEUWXUoAnI
	1gHdAokvUur5i5F4U48KulV1WS
X-Received: by 2002:a05:7301:19a5:b0:2b0:4c5f:c05c with SMTP id 5a478bee46e88-2b85644eb2amr2741172eec.4.1770470302536;
        Sat, 07 Feb 2026 05:18:22 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:b1ab:5cb0:a2f8:764b])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b855c7f5fcsm3688627eec.29.2026.02.07.05.18.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Feb 2026 05:18:22 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: jonas@kwiboo.se,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Fabio Estevam <festevam@nabladev.com>
Subject: [PATCH v2 4/4] ARM: dts: rockchip: Add Onion RV1103B Omega4
Date: Sat,  7 Feb 2026 10:18:03 -0300
Message-Id: <20260207131803.2834749-4-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260207131803.2834749-1-festevam@gmail.com>
References: <20260207131803.2834749-1-festevam@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260207_051823_653204_F9FC7EB2 
X-CRM114-Status: GOOD (  16.85  )
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
Changes since v1:
- Removed memory node.
- Added serial0 alias and used stdout-path = "serial0:115200n8";
- Added color, function and pinctrl entries to the LED node.
- Used bootph-pre-ram and bootph-some-ram.

 arch/arm/boot/dts/rockchip/Makefile           |   1 +
 arch/arm/boot/dts/rockchip/rv1103b-omega4.dts | 106 ++++++++++++++++++
 2 files changed, 107 insertions(+)
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
index 000000000000..bcfc9b321dd6
--- /dev/null
+++ b/arch/arm/boot/dts/rockchip/rv1103b-omega4.dts
@@ -0,0 +1,106 @@
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
+#include "rv1103b.dtsi"
+
+/ {
+	model = "Onion RV1103 Omega4 Board";
+	compatible = "onion,rv1103b-omega4", "rockchip,rv1103b";
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
+			pinctrl-0 = <&led_pin>;
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
+	flash@0 {
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
+
+&pinctrl {
+	leds {
+		led_pin: led-pin {
+			rockchip,pins = <0 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

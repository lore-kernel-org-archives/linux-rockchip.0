Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D7B3E9E2E0
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Feb 2026 11:06:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E5MV+iORyj8FyxkXN9J+jvSUyUsXdxvHHQMaYa751jY=; b=vWzclsRjgKr+yE
	QT5SoyjYjQkvjr2RHyZlrdhUeWkFi5ke87adv9odgu5DgazZuBN+oJPYHzR+3FCO0C/qZE+jG9qVF
	wgBdi4GsbZnEgdrwHLGL9GN75+9pR9PnDnMkknYoPIHDDOWL4gWz4vIdEVlCfAwloLjgfQAm08XbG
	jRFEQyKyU7/xfNbhsgvIbY+1TpmkGSJN3U7dY3GVYwivzjdM0RlfrcXTQoV1JR0dkVWzB6yAPgSdu
	SnhgIGfKXTR1cUUqA6Ji4b0jP/DdN7o/zz3jTawD8pVEd+6Wd7L50uzYY0Mz/rKtbkSXk7c3/eCNN
	Y53mTEVtIzaDuuZg44Dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vq836-00000000Yb1-2DNC;
	Wed, 11 Feb 2026 11:06:24 +0000
Received: from mail-yx1-xb12e.google.com ([2607:f8b0:4864:20::b12e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vq833-00000000YXx-46CD
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Feb 2026 11:06:23 +0000
Received: by mail-yx1-xb12e.google.com with SMTP id 956f58d0204a3-649dbff9727so4482214d50.3
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Feb 2026 03:06:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770807981; x=1771412781; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d9tdadWMEAjs2MsQfFbeN/61LVoitAwCN0EJqEzhips=;
        b=ivfUJfgjnETb3mBxSF5WXBdWUovvoLaqKBZvFP9m8cMfcP0DJN/H+5Q7MjbuwxfNVP
         LblDG/vda8DDg/mWAr8i9i2/JfHqX0Z01f0RriYXqjLSZXnsfMjE7TxJEvTsAB3nMPVU
         ynoJfMMEiW5wU+HEbHsTNs7N7h++LlHHlyO2G9FHS0C/C0NFSs3QtcH/qqB0h2ibXca2
         vTSTijx3DdzPwqo6rwe8XL+8X8nJxoRWW8Ie4B0mH59BXlRY422CcVKKWMUqZPZarzYO
         A5FH/wOQL0BPnnu2RJnSvs6QUd7n56bhZhYZC1X/i3FqErTuiId10WUqhSUgJNHF4NZh
         M2HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770807981; x=1771412781;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=d9tdadWMEAjs2MsQfFbeN/61LVoitAwCN0EJqEzhips=;
        b=LYfhoVcFZ/CdGDh2sXeMMIGLePIRivoEphBdUnxMuzne15lU1IW8DODlVIgCOW5YKp
         F4VnGsItKVL4Wo38gClsCumZCU4KrM831Dty+WFealWe5bNkVokGxQ9+MnoNEHjVdQI7
         /4jq3kAoBOocqwFfGZUoI6T8LjzVArfm08PIceEMMpWYG8ly5h/gOjIdV/LAPMscZj2u
         Ln8vlvvIoUI7DeSi7gkwgMp7mCQi4D5GmIG48OtZyr7+EKLPVhsx89QK5X3A5qn3uR/3
         NtSONWI1op7dAMY4IVhNfFedelUR4hwhzNIe4lXgEz4k//xm+0s8yDxvMiBnD6WlYzEt
         E4Dg==
X-Forwarded-Encrypted: i=1; AJvYcCUknOk5h06Xcm5/Yma4wOGeTaqhsVVtMG78ukDWHwAwBI50Exe5TJPAFIm4UaoAJ/CoPMGHEupndoeQd690YQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxpZQvKTNmTt5/8VQpAAEYRh7pSFdA52AWysqBdrQQ+ymUQxdZV
	Oq7MS9htThJWTmpxueLWXb2vw+8Zz2JckEHNPDSFFVkzjuzukv4L52vN
X-Gm-Gg: AZuq6aKHWBOldvfqDBkmVI5WZc3Go0o9kBjZ8FtNlcsK+VB0eiSUhF00nIo7vVOFjwd
	yPXkLqPyroaVRd2+okAQSslmOt10s2lS+noRF2HevhVKEnfyos04SHTPTtCE5gslCbVXeUPuf6/
	JDDkPuSG2v3MP3EpCPPHEUFvh5ADG6kG3HZksWGU3h5VT8GYbljgyriOIzJAPtIFSOE2U/iU9hb
	rhutdxfCg1IPKgX7X/PBX7evsNkCKt2uZ/s1BpOBy4mSwRkQYEpvKe0GNrZpscrUn1kPeGH9ndF
	kiKvD7gaohsi332Bp3rMwtpMTBUn6523QIFd9qd1cqAVB2ydrSUF/dlMuTzRmyQeH82lHR2hf0Y
	mBkDSdr5alpZWF1Nau1GDRIpY7bgi1xLOWt6xpT8mrYVK1MLXhPIUEAjnjknaYSTdDLUYWzIJG0
	sKmkUIq73IJX60Xq82dvWRKXZGeir2FB8Ku3I=
X-Received: by 2002:a05:690e:2502:10b0:649:b2cd:eb7d with SMTP id 956f58d0204a3-64afba1b9b1mr1234054d50.68.1770807980742;
        Wed, 11 Feb 2026 03:06:20 -0800 (PST)
Received: from localhost.localdomain ([2804:14c:485:4ffb:e36d:8763:a188:5dcb])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-64afc87ff20sm1533719d50.10.2026.02.11.03.06.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Feb 2026 03:06:20 -0800 (PST)
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
Subject: [PATCH v4 4/4] ARM: dts: rockchip: Add Onion Omega4 Evaluation Board
Date: Wed, 11 Feb 2026 08:05:50 -0300
Message-Id: <20260211110550.580474-4-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260211110550.580474-1-festevam@gmail.com>
References: <20260211110550.580474-1-festevam@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260211_030622_029263_7903A9CF 
X-CRM114-Status: GOOD (  17.93  )
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

The Onion Omega4 Evaluation Board is based on the Omega4 SoM and has:

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
- Split into SoM and base board.

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
index 000000000000..c42e99841be4
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

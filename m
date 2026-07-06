Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57924C44501
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Jul 2026 19:59:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CoPLnSNa0jclHl7zMlMwiTm3H8YO7LuWX2FuU5yK53o=; b=CZWurq56qFbv++
	phsk9Giyv7TS1PESm00BzdI2cuWyHQcYtXvebJ41mQHasIz22vG+mJEPkLeqefWM7QFGv0cZkRNXc
	lx3LNoIUpjXKQt//23KnO3ioDDfpt69H+SwMPYJ+ZIh5N9YbRHHa8X9k2fKTwbqSgFahfgruLJ09a
	koO1Z25pww5KEsM3qtJuCKQphBP3pcoR5j4JafbRRDp/Hjwh6w1hE0flHm00qzIBpoGGDZSCjyPDZ
	5spT1lwuOC8xi/fgHtnhawWet7KnoRlXrBvjLPkd2XlFfTYYcamFusfw3tHYmlBAPQF3vWQo9ypnx
	0vH5jEltdqIlmBP/jEsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgpTq-0000000DVsM-0oFX;
	Mon, 06 Jul 2026 19:59:50 +0000
Received: from mail-ot1-x32c.google.com ([2607:f8b0:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgpTh-0000000DVdS-0VTv
	for linux-rockchip@lists.infradead.org;
	Mon, 06 Jul 2026 19:59:42 +0000
Received: by mail-ot1-x32c.google.com with SMTP id 46e09a7af769-7e9ecb1e13cso3024640a34.3
        for <linux-rockchip@lists.infradead.org>; Mon, 06 Jul 2026 12:59:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1783367980; x=1783972780; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0OrIWzKlthBSIE9zhLtGuPFvJioePjr2EjSPr8Ts66c=;
        b=nhqmqw3qdLSECitm6ek/4HdlkHKg7bdML3Q1gzo/4ypq29wYsUzRY/saKDj0wbxFVC
         8t7Ne2kSmEfF3T2mhXnrumE9Qp3f04Rf7YD94ef5M953nOpJO8RmmPZ54uhK+PNjTfgc
         4c7kV02PmXMbLVej6izvL/ZTAPBKLtRlrHVUI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783367980; x=1783972780;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0OrIWzKlthBSIE9zhLtGuPFvJioePjr2EjSPr8Ts66c=;
        b=HRipfdaCDM3VaKzxD8vHRD7+r6r/acR2fnNVo6CLf+896wRnDbacYSJYBEHpxTEqBr
         Yj6lqMOCgp1JIm7SPGOye3Fw46gRlCQRp5EFn6yyCZJEiRZXK3IpjAeB5MEp9d/01V9g
         DnjAf/eRjzg0gldepp2+cin9lVaqrViXsSXZSpxNrMFfxWg6IQ6oSzKp3UOX7LoWWalj
         LC5KE1fv5CLCk4PHC35SlrMH3xOFFS8TqHbMVnjAaX8yPL3ErtPbiQSWWOA4QLcjxGjq
         1tatUQfG0TrfALsFuAwh4lDqoeG5ON0zGwteznkIdEdaA6QoDG7uF3sFi1eN4dbZhelN
         Qgbw==
X-Gm-Message-State: AOJu0YxI+ss2g2iLVewPBUhsDww2zxG9E2B1n2iihARb1a/WT1/DDZEO
	9+EQQLv00wcCFf9w2gQW8vO++nkmtb8vkBUYy05jxbmQs8jmqBI6HNwqK20okQIbMw==
X-Gm-Gg: AfdE7cm2FuNn8v7SV3bQs980hbn6ILroVsmYArVxDLSvk3GbhzPiMtqn0l7Xc3RIn3L
	O0wJDL9sRGjclP4PioUqJ9r07hmEd1eRqq/Sh1OD81GN5NzpjOq7+FEJ4x4bipHSgeVePHwJD/C
	UoC2MWrpV6n56lx//PWk7xxfeVBpWOIPzQ7Ed2WhxQ3xkDHTH0oF23+X5lsrZDVkNxwboLD6EEq
	rcvyURButU9I9KV0PRvTgTIhYiyfFqRT1xeaoZSVQeVZRx9T0JCjOo9KwQ0J+2EQTKTaAGfV2ar
	/C3HdoeYsAe5DNFA42FhQ/z/jaWi5S1F0Ky7BvrmlnSDVRNhrrO5LW1xbw9jfX3SP178LTtt5PU
	nO1Uss5qExOT1Hx1xUs9enNd+wNqzwicgA/EcIYGbjc7obavLLeGPu33kPgrFtgj2iP0h0WaR/A
	L0NXZdzck=
X-Received: by 2002:a05:6830:6ae8:b0:7e9:b4d0:5399 with SMTP id 46e09a7af769-7ebb239a3femr1194548a34.26.1783367980231;
        Mon, 06 Jul 2026 12:59:40 -0700 (PDT)
Received: from chromium.org ([174.51.25.52])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7eb542d017csm12161834a34.8.2026.07.06.12.59.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jul 2026 12:59:39 -0700 (PDT)
From: Simon Glass <sjg@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Fabio Estevam <festevam@nabladev.com>,
	linux-arm-kernel@lists.infradead.org,
	Simon Glass <sjg@chromium.org>,
	Albert Aribaud <albert.u.boot@aribaud.net>,
	Conor Dooley <conor+dt@kernel.org>,
	Jeffy Chen <jeffy.chen@rock-chips.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	huang lin <hl@rock-chips.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH 12/12] ARM: dts: rockchip: Add Luckfox Pico Mini B
Date: Mon,  6 Jul 2026 13:58:08 -0600
Message-ID: <20260706195818.3906949-13-sjg@chromium.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260706195818.3906949-1-sjg@chromium.org>
References: <20260706195818.3906949-1-sjg@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260706_125941_239984_83F028C9 
X-CRM114-Status: GOOD (  15.06  )
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

Add the devicetree for the Luckfox Pico Mini B, a small board using
the Rockchip RV1103 with 64MB of in-package DDR2, a 128MB Winbond SPI
NAND and a microSD slot. The console is on UART2.

Signed-off-by: Simon Glass <sjg@chromium.org>
---

 arch/arm/boot/dts/rockchip/Makefile           |  1 +
 .../rockchip/rv1103-luckfox-pico-mini-b.dts   | 93 +++++++++++++++++++
 2 files changed, 94 insertions(+)
 create mode 100644 arch/arm/boot/dts/rockchip/rv1103-luckfox-pico-mini-b.dts

diff --git a/arch/arm/boot/dts/rockchip/Makefile b/arch/arm/boot/dts/rockchip/Makefile
index d0154fd7ff24..62a2ed96dd9b 100644
--- a/arch/arm/boot/dts/rockchip/Makefile
+++ b/arch/arm/boot/dts/rockchip/Makefile
@@ -1,5 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0
 dtb-$(CONFIG_ARCH_ROCKCHIP) += \
+	rv1103-luckfox-pico-mini-b.dtb \
 	rv1103b-omega4-evb.dtb \
 	rv1108-elgin-r1.dtb \
 	rv1108-evb.dtb \
diff --git a/arch/arm/boot/dts/rockchip/rv1103-luckfox-pico-mini-b.dts b/arch/arm/boot/dts/rockchip/rv1103-luckfox-pico-mini-b.dts
new file mode 100644
index 000000000000..287dbf1307e8
--- /dev/null
+++ b/arch/arm/boot/dts/rockchip/rv1103-luckfox-pico-mini-b.dts
@@ -0,0 +1,93 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2023 Luckfox Electronics Co., Ltd
+ */
+
+/dts-v1/;
+
+#include "rv1103.dtsi"
+
+/ {
+	model = "Luckfox Pico Mini B";
+	compatible = "luckfox,pico-mini-b", "rockchip,rv1103";
+
+	aliases {
+		mmc0 = &sdmmc;
+		serial2 = &uart2;
+	};
+
+	chosen {
+		stdout-path = "serial2:115200n8";
+	};
+
+	memory@0 {
+		device_type = "memory";
+		reg = <0x00000000 0x04000000>;
+	};
+};
+
+&sdmmc {
+	bus-width = <4>;
+	cap-sd-highspeed;
+	disable-wp;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc0_clk &sdmmc0_cmd &sdmmc0_det &sdmmc0_bus4>;
+	status = "okay";
+};
+
+&sfc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&fspi_pins &fspi_cs0>;
+	status = "okay";
+
+	spi_nand: flash@0 {
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
+				reg = <0x00a40000 0x075c0000>;
+			};
+		};
+	};
+};
+
+&uart2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart2m1_xfer>;
+	status = "okay";
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

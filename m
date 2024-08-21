Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94491C5321D
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Aug 2024 10:26:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i7WsHptGLEOeuRbicYZb/w9IRmdAsaJhVVzGzqpXNHw=; b=j8RLQ+fOxT6tzS
	62HlI1s2WrUfN63hCWHZIvutnUgurmSg3JfTQHYB05S9sqiRYUhqotMTHuchCWceqY2a3JvWKkBpu
	l4KrUR5FHAtdaRAvtCJNxsbDX5nf/Md/wrYU2ylXDYmyN0FcHEd4vPSF85G/G7QCBgKNhSUnL/A+P
	GLgMvyEEVYRrq9C6Uks1YIxug2hI9ThzfmOwEjak0ywyIQST3Vz2kcpMqdDBHlTL67waL5ed0Fm+e
	moXqEOWLcvFMGXMyacwq59mhWuG21kE/d1LJdZ9ANN/GmRdItRTY/GWA4bxSU09owCDMENPW3c72B
	5Gjb/v3eZfkV7l6NnJ8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgiY3-00000008PKC-0YsV;
	Wed, 21 Aug 2024 10:26:39 +0000
Received: from muminek.juszkiewicz.com.pl ([213.251.184.221])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgiXy-00000008PGH-0m6a
	for linux-rockchip@lists.infradead.org;
	Wed, 21 Aug 2024 10:26:35 +0000
Received: from localhost (localhost [127.0.0.1])
	by muminek.juszkiewicz.com.pl (Postfix) with ESMTP id 324FA261A18;
	Wed, 21 Aug 2024 12:26:32 +0200 (CEST)
X-Virus-Scanned: Debian amavis at juszkiewicz.com.pl
Received: from muminek.juszkiewicz.com.pl ([127.0.0.1])
 by localhost (muminek.juszkiewicz.com.pl [127.0.0.1]) (amavis, port 10024)
 with ESMTP id fhQF03MFQAaz; Wed, 21 Aug 2024 12:26:30 +0200 (CEST)
Received: from puchatek.local (79.186.29.241.ipv4.supernova.orange.pl [79.186.29.241])
	by muminek.juszkiewicz.com.pl (Postfix) with ESMTPSA id DFEEC2609DA;
	Wed, 21 Aug 2024 12:26:28 +0200 (CEST)
From: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Date: Wed, 21 Aug 2024 12:26:12 +0200
Subject: [PATCH v3 2/7] arm64: dts: rockchip: add NanoPC-T6 LTS
MIME-Version: 1.0
Message-Id: <20240821-friendlyelec-nanopc-t6-lts-v3-2-3ecfa996bbe0@linaro.org>
References: <20240821-friendlyelec-nanopc-t6-lts-v3-0-3ecfa996bbe0@linaro.org>
In-Reply-To: <20240821-friendlyelec-nanopc-t6-lts-v3-0-3ecfa996bbe0@linaro.org>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
X-Mailer: b4 0.14.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240821_032634_440467_7FB5CB9F 
X-CRM114-Status: GOOD (  12.36  )
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

FriendlyELEC introduced a second version of NanoPC-T6 SBC.

The miniPCIe slot got removed and USB 2.0 configuration has changed.
There are two external accessible ports and two ports on the internal
header.

There is an on-board USB hub which provides:
- one external connector (bottom one)
- two internal ports on pin header
- one port for m.2 E connector

The top USB 2.0 connector comes directly from the SoC.

Signed-off-by: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
---
 arch/arm64/boot/dts/rockchip/Makefile              |  1 +
 .../boot/dts/rockchip/rk3588-nanopc-t6-lts.dts     | 61 ++++++++++++++++++++++
 2 files changed, 62 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index fda1b980eb4b..0f982c741243 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -128,6 +128,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-evb1-v10.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-friendlyelec-cm3588-nas.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-jaguar.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-nanopc-t6.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-nanopc-t6-lts.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-ok3588-c.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-orangepi-5-plus.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-quartzpro64.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dts b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dts
new file mode 100644
index 000000000000..e950e40632cf
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dts
@@ -0,0 +1,61 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2021 Rockchip Electronics Co., Ltd.
+ * Copyright (c) 2023 Thomas McKahan
+ * Copyright (c) 2024 Linaro Ltd.
+ *
+ */
+
+/dts-v1/;
+
+#include "rk3588-nanopc-t6.dts"
+
+/ {
+	model = "FriendlyElec NanoPC-T6 LTS";
+	compatible = "friendlyarm,nanopc-t6-lts", "rockchip,rk3588";
+
+	/* provide power for on-board USB 2.0 hub */
+	vcc5v0_usb20_host: vcc5v0-usb20-host-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio1 RK_PA4 GPIO_ACTIVE_HIGH>;
+		pinctrl-0 = <&usb20_host_pwren>;
+		pinctrl-names = "default";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-max-microvolt = <5000000>;
+		regulator-min-microvolt = <5000000>;
+		regulator-name = "vcc5v0_usb20_host";
+		vin-supply = <&vcc5v0_sys>;
+	};
+};
+
+&pinctrl {
+	usb {
+		usb20_host_pwren: usb20-host-pwren {
+			rockchip,pins = <1 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
+&u2phy1 {
+	status = "okay";
+};
+
+&u2phy1_otg {
+	status = "okay";
+};
+
+&u2phy2_host {
+	phy-supply = <&vcc5v0_usb20_host>;
+	status = "okay";
+};
+
+&usbdp_phy1 {
+	status = "okay";
+};
+
+&usb_host1_xhci {
+	dr_mode = "host";
+	status = "okay";
+};

-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

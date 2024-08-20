Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D017C531DC
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Aug 2024 14:49:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AvhySBaH4jf7wztaNMF4pduxtLHHO4vYpwa9Hi9GXOM=; b=ND+rJGS2J9NaoS
	XggO7u4dVTW3LQZzn6k7RxhD/RAHVn/VhJkF9O7IwmWp7Rdw5MJPXgjL1mdWbmZP20v8i6GTOl83H
	danVy9KcvUordR95jyjDfqcYDVt8Zs0LoPfIcWg+x0JNyhwMsYuHd0uAdK4R9/J4o2OdWB47QrZKD
	ifSrcpGn+JyT8w/T5HZuTCtXnsHpw60gUxUJYxIdczGEMT2uc2nOEwDrrNpLOPErs9JGBywF0bL78
	F/U2tZc0rOtegDwdf+q8eLv4YLKDtNPIb5hXQ11777bxkPxmrYp+dPkL+7DRBHXvJZJLEwHHRKD8A
	t4q19p2iKbH8mTlQ63ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgQAw-00000005dvP-1aPr;
	Tue, 20 Aug 2024 14:49:34 +0000
Received: from muminek.juszkiewicz.com.pl ([213.251.184.221])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgQ3x-00000005brZ-1cQh
	for linux-rockchip@lists.infradead.org;
	Tue, 20 Aug 2024 14:42:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=juszkiewicz.com.pl;
	s=mail; t=1724164936;
	bh=GbtwbMyDf8C8md31SFg3ziXO2s93kR8EZEcZwUbn7wU=;
	h=From:Date:Subject:To:Cc:From;
	b=Ri3FSr7dHDSB/ELK03IHy1DJwzJRvMZZlJSt9S4RhX+p/zaQEkU89D7w+7okJChzY
	 RTpHtukyvhJUmwBFLPDhSO4x9vpSkSpXGvwdFtILKShNdMIXtzwfzYUMWnfGx7ErHP
	 I4NRG3QOAaEtkCrbaan9WymYtoZn96ENLodfb+WJcnBH0HF1OM6MrRE7GXc8Z8zgrT
	 O3EGYDlNN5jqFJOB26E5FeJabJOuHDTXA+QUNX0LWxouEuZvp4u6ErxUkRlXQPCzMg
	 7EFb7fBE+NiK9TGbLRWyVJk1YMGVDaIhyICpuJMx63jHcb6d88spaim3n1q8JN9lLk
	 CqbQoJrjOPREw==
Received: from localhost (localhost [127.0.0.1])
	by muminek.juszkiewicz.com.pl (Postfix) with ESMTP id 9CB90260746;
	Tue, 20 Aug 2024 16:42:16 +0200 (CEST)
X-Virus-Scanned: Debian amavis at juszkiewicz.com.pl
Received: from muminek.juszkiewicz.com.pl ([127.0.0.1])
 by localhost (muminek.juszkiewicz.com.pl [127.0.0.1]) (amavis, port 10024)
 with ESMTP id 1iqgMStyytO2; Tue, 20 Aug 2024 16:42:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=juszkiewicz.com.pl;
	s=mail; t=1724164934;
	bh=GbtwbMyDf8C8md31SFg3ziXO2s93kR8EZEcZwUbn7wU=;
	h=From:Date:Subject:To:Cc:From;
	b=hEhuNm49naSHx9UEW4rK7zDCOqFcNlcOD2Pm9+7/d5Q5oSMvcEfRJugYdeqdmIWtr
	 nLH/NaRNtjG8EoqYnhjl8K7Sh53cjjzFNJd9RazSBBjI105iIcUmm7W0zHIJQksOdq
	 2fDuZ5FKa5BTT7aMIqP0vU2F9y0ZLNTtDYYnF1TO6mkFKsPBDj7XTYtUAfsD2881xC
	 7W+HcjfJPGJf/lLrpuX9+IHjUCQcqD3NtruKWGTpSoZIYVGv8Ghoki7F4BcMQgdXL9
	 3NJsDVgJkCtEK/zSwlHrtHQ94aRKP7UtSqBanFfOmgWqGgVeqAGfSc0mWsDogBiDmb
	 Ig6UAPxIohCwg==
Received: from puchatek.local (79.186.29.241.ipv4.supernova.orange.pl [79.186.29.241])
	by muminek.juszkiewicz.com.pl (Postfix) with ESMTPSA id 797DF2601CD;
	Tue, 20 Aug 2024 16:42:14 +0200 (CEST)
From: Marcin Juszkiewicz <marcin@juszkiewicz.com.pl>
Date: Tue, 20 Aug 2024 16:42:08 +0200
Subject: [PATCH] arm64: dts: rockchip: Add FriendlyELEC NanoPC-T6 LTS
MIME-Version: 1.0
Message-Id: <20240820-friendlyelec-nanopc-t6-lts-v1-1-da1273c3e08e@juszkiewicz.com.pl>
X-B4-Tracking: v=1; b=H4sIAD+rxGYC/y2N0QrCMAxFf2Xk2UDsZB3+iviwpZkWSjbbTpSxf
 zeoj+dwOXeDIjlKgXOzQZZnLHFWg+OhAb4PehOMwRgcuRP1jnCyuYb0liSMOui8MNYOUy1IxL7
 zPbdj8GCBJcsUX9/45frjLI/VPupf7vsHqBsQUIEAAAA=
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, 
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
X-Mailer: b4 0.14.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240820_074221_648311_E2D67CAE 
X-CRM114-Status: GOOD (  14.47  )
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

From: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>

FriendlyELEC introduced new version of NanoPC-T6 SBC.

MiniPCIe slot got removed and USB 2.0 configuration has changed.
There are two external accessible ports and two ports on internal
header.

There is on-board USB hub which provides:
- one external connector (bottom one)
- two internal ports on pin header
- m.2 E port

Top USB 2.0 connector comes directly from SoC.

Signed-off-by: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
---
FriendlyELEC introduced new version of NanoPC-T6 SBC.

MiniPCIe slot got removed and USB 2.0 configuration has changed.  There
are two external accessible ports and two ports on internal header.

There is on-board USB hub which provides:
- one external connector (bottom one)
- two internal ports on pin header
- m.2 E port

Top USB 2.0 connector comes directly from SoC.

I am not sure should it be separate source file or should it be
integrated into rk3588-nanopc-t6.dts one. The differences are small:

- no vdd_4g_3v3 regulator on LTS
- no vcc5v0_host_20 regulator on non-LTS
- LTS one has more complex USB 2.0 setup

When I merge LTS differences into NanoPC-T6 dts file then my
NanoPC-T6 LTS board boots fine. But I have no way to test on non-LTS
one.
---
 arch/arm64/boot/dts/rockchip/Makefile              |  1 +
 .../boot/dts/rockchip/rk3588-nanopc-t6-lts.dts     | 60 ++++++++++++++++++++++
 2 files changed, 61 insertions(+)

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
index 000000000000..13f273cfe94f
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dts
@@ -0,0 +1,60 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2021 Rockchip Electronics Co., Ltd.
+ * Copyright (c) 2023 Thomas McKahan
+ * Copyright (c) 2024 Marcin Juszkiewicz
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
+	vcc5v0_host_20: vcc5v0-host-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio1 RK_PA4 GPIO_ACTIVE_HIGH>;
+		pinctrl-0 = <&usb20_host_pwren>;
+		pinctrl-names = "default";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-max-microvolt = <5000000>;
+		regulator-min-microvolt = <5000000>;
+		regulator-name = "vcc5v0_host";
+		vin-supply = <&vcc5v0_sys>;
+	};
+};
+
+&pinctrl {
+	usb {
+		usb20_host_pwren: vcc5v0-host-en {
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
+	phy-supply = <&vcc5v0_host_20>;
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

---
base-commit: 6e4436539ae182dc86d57d13849862bcafaa4709
change-id: 20240820-friendlyelec-nanopc-t6-lts-00c7678c3bd7

Best regards,
-- 
Marcin Juszkiewicz <marcin@juszkiewicz.com.pl>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

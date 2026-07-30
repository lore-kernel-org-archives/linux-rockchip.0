Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17881C55167
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jul 2026 13:18:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lv9wWoe/iu864GMGK0XjfzNT1WA8GU+5pYPnJha0Nzc=; b=R/7YGh3f+9PqEb
	PxCG57rbycm6CUSJinEUgdv5Z4axUDD8Sb09acGLrPEk5YrYZSbijkP9nZW+MwSdb96Xh4HeHg4DQ
	U2jKyQe11/dBxjLvW+DRBdkREt7gUif1PBrPLIPk8ypjXbMkCR7Eyl9GHfYJhsIY2nQ3QCznyL8Pa
	MyBInu6QRAFSWe6sP34TFx1MFHsI9CgotMg0nR2Do3+qBoxKud0+nxfy5duxyxFtOdXwxwyXLmGlz
	0HeI6t+PElKOxxHh+0KxWmmzflktN5nLxHUu3ypBYoxsMtKtyzzZOymReBc1EX0wYcU0ZWnCEbTEw
	5xmkjNPvYQpxSuxSX41Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpQeo-0000000AZCO-3Yms;
	Thu, 30 Jul 2026 13:18:43 +0000
Received: from smtp-8faf.mail.infomaniak.ch ([2001:1600:19:fff0::8faf])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpQej-0000000AZ7s-3K9o
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Jul 2026 13:18:40 +0000
Received: from smtp-3-0000.mail.infomaniak.ch (smtp-3-0000.mail.infomaniak.ch [10.4.36.107])
	by smtp-4-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4h9qX90RgNzGJk;
	Thu, 30 Jul 2026 15:18:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=0leil.net;
	s=20231125; t=1785417512;
	bh=m8mayst51iY72mvdSiqi9wVfJxee1rgOkUeHmMnudiA=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=WYQRBlrCJCEJvAxFrSf4os72LF2WLYnvvctHQNUNWnyJLWhKtNHcjCzC8MlGWZ8f0
	 AqA6ysKoSE2NKa/G0RYdy/FYhMmPgIYbLijriV642uUfiP28FW/eqh9lAwM03m6Gsa
	 Lo2ZgJ3HAXzEisUwGYWmGCMj2/HnRXRrLT78Hu8No6xrLgaD8HtQUuuDDaueUBz8Pt
	 RMmLAbZPRPSD5unkVZHrrbEGd1QLWIAZvfVYxsdgAPlB6kagXPavkGy2sjtJW72ZZw
	 R2j1HO9VygtiLksIRR+LukXL6X4kYSOQuldkqmapFlRSKTzNzbAoSU2dRuXUxcSBfT
	 QJqyDP8tqbCig==
Received: from unknown by smtp-3-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4h9qX80PtxzHyr;
	Thu, 30 Jul 2026 15:18:32 +0200 (CEST)
From: Quentin Schulz <foss+kernel@0leil.net>
Date: Thu, 30 Jul 2026 15:18:28 +0200
Subject: [PATCH 2/2] arm64: dts: rockchip: support CAN1-CAN2-UART4 adapter
 for RK3588 Jaguar
MIME-Version: 1.0
Message-Id: <20260730-jaguar-can-v1-2-9b566bd785da@cherry.de>
References: <20260730-jaguar-can-v1-0-9b566bd785da@cherry.de>
In-Reply-To: <20260730-jaguar-can-v1-0-9b566bd785da@cherry.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Cunhao Lu <1579567540@qq.com>, Marc Kleine-Budde <mkl@pengutronix.de>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Quentin Schulz <quentin.schulz@cherry.de>
X-Mailer: b4 0.16-dev
X-Infomaniak-Routing: alpha
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260730_061838_040921_99A8B3AD 
X-CRM114-Status: GOOD (  11.55  )
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

From: Quentin Schulz <quentin.schulz@cherry.de>

RK3588 Jaguar has a proprietary Mezzanine connector which exposes among
other things CAN1 and CAN2 controllers as well as UART4.

Add support for the CAN1-CAN2-UART4 Mezzanine adapter for RK3588 Jaguar
which exposes two CAN busses (CAN1 and CAN2) and an RS-232 UART, limited
to 250Kbps.

Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
---
 arch/arm64/boot/dts/rockchip/Makefile              |  4 ++++
 .../rockchip/rk3588-jaguar-can1-can2-uart4.dtso    | 27 ++++++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts     | 10 ++++++++
 3 files changed, 41 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 761d82b4f4f2a..11c96e06b122a 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -307,6 +307,10 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-edgeble-neu6b-wifi.dtb
 rk3588-edgeble-neu6b-wifi-dtbs := rk3588-edgeble-neu6b-io.dtb \
 	rk3588-edgeble-neu6a-wifi.dtbo
 
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-jaguar-can1-can2-uart4.dtb
+rk3588-jaguar-can1-can2-uart4-dtbs := rk3588-jaguar.dtb \
+	rk3588-jaguar-can1-can2-uart4.dtbo
+
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-jaguar-ethernet-switch.dtb
 rk3588-jaguar-ethernet-switch-dtbs := rk3588-jaguar.dtb \
 	rk3588-jaguar-ethernet-switch.dtbo
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-jaguar-can1-can2-uart4.dtso b/arch/arm64/boot/dts/rockchip/rk3588-jaguar-can1-can2-uart4.dtso
new file mode 100644
index 0000000000000..9dfb81e5d0a0b
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3588-jaguar-can1-can2-uart4.dtso
@@ -0,0 +1,27 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2026 Cherry Embedded Solutions GmbH
+ *
+ * Device Tree Overlay for CAN1-CAN2-UART4 adapter for the Mezzanine connector
+ * on RK3588 Jaguar.
+ *
+ * This adapter has two CAN transceivers and one RS232 transceiver.
+ */
+
+/dts-v1/;
+/plugin/;
+
+&can1 {
+	status = "okay";
+};
+
+&can2 {
+	status = "okay";
+};
+
+/* RS232 */
+&uart4 {
+	/* ST3232B only guarantees 250Kbps */
+	max-speed = <250000>;
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts b/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts
index ed6c1162bd821..0446834e84d5d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts
@@ -201,6 +201,16 @@ &can0 {
 	status = "okay";
 };
 
+&can1 {
+	assigned-clocks = <&cru CLK_CAN1>;
+	assigned-clock-rates = <300000000>;
+};
+
+&can2 {
+	assigned-clocks = <&cru CLK_CAN2>;
+	assigned-clock-rates = <300000000>;
+};
+
 &combphy1_ps {
 	status = "okay";
 };

-- 
2.55.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

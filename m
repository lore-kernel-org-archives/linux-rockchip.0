Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07034C6FA8A
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Sep 2022 09:06:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9m/dAU4ESEsUKUzY0kRFWaUxiv2TiPYETPITdpV/uxk=; b=kM1/SF80mPLkr7
	9TeHDd/PyKR+T6f0l/2BNQn0X62Zt6Jn+lSOBwE9VghRGufmNCCAMiTlAsTNSgg88wR7Vd1jLBoma
	b+/Cizvh0/rpOnC4+TyGzKQdbjV0bEp2ZoY65WaYrzYCHOWwQD2s6AObIC8tohihgi+UOWgT+Pd0g
	nMryY38N/rAomPyZCHCyEYtG4TqquLv5TZ3DYoEDf7YHHg9sLa0PAAE9Mv1IioIS6sNjSF3/W/1dz
	sH0Oqw45DP2MUEyMbuUELtltaR3Ox7T3/Ayy1RO1P7ux3DW5Qv3llBs26LcFysT5l5a1qY1Ic78oB
	CErO1Vvd+mlkC9ln6YAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWZxf-00Eu1T-Mg; Fri, 09 Sep 2022 09:06:07 +0000
Received: from mail-m11883.qiye.163.com ([115.236.118.83])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWZxa-00EtxJ-Gh
	for linux-rockchip@lists.infradead.org; Fri, 09 Sep 2022 09:06:04 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by mail-m11883.qiye.163.com (Hmail) with ESMTPA id C19A5840668;
	Fri,  9 Sep 2022 17:06:00 +0800 (CST)
From: Jianqun Xu <jay.xu@rock-chips.com>
To: heiko@sntech.de,
	linus.walleij@linaro.org,
	andriy.shevchenko@linux.intel.com
Cc: brgl@bgdev.pl,
	linux-gpio@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Jianqun Xu <jay.xu@rock-chips.com>
Subject: [PATCH 2/6] ARM: dts: rockchip: add 'clock-names' for gpio dt nodes
Date: Fri,  9 Sep 2022 17:05:54 +0800
Message-Id: <20220909090558.3609190-3-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220909090558.3609190-1-jay.xu@rock-chips.com>
References: <20220909090558.3609190-1-jay.xu@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFJSktLSjdXWS1ZQUlXWQ8JGhUIEh9ZQVlDTktLVh8aSUpNGUJLTElOGlUTARMWGhIXJB
	QOD1lXWRgSC1lBWU5DVUlJVUxVSkpPWVdZFhoPEhUdFFlBWU9LSFVKSktITkhVSktLWQY+
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Kxw6FDo*CT0eOjZKHk0KTE8i
	KzwaFBlVSlVKTU1JTEpPSE1KSE9JVTMWGhIXVREaAlUDDjsJFBgQVhgTEgsIVRgUFkVZV1kSC1lB
	WU5DVUlJVUxVSkpPWVdZCAFZQU1OQkg3Bg++
X-HM-Tid: 0a83217fb47d2eb8kusnc19a5840668
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_020602_853521_1406192E 
X-CRM114-Status: UNSURE (   8.28  )
X-CRM114-Notice: Please train this message.
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

Add 'clock-names' property for gpio dt nodes, which is used by the gpio
driver to identified as the index for the gpio controller.

Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
---
 arch/arm/boot/dts/rk3036.dtsi  | 3 +++
 arch/arm/boot/dts/rk3066a.dtsi | 6 ++++++
 arch/arm/boot/dts/rk3188.dtsi  | 4 ++++
 arch/arm/boot/dts/rk322x.dtsi  | 4 ++++
 4 files changed, 17 insertions(+)

diff --git a/arch/arm/boot/dts/rk3036.dtsi b/arch/arm/boot/dts/rk3036.dtsi
index 912c21667dd4..0ae701f40b83 100644
--- a/arch/arm/boot/dts/rk3036.dtsi
+++ b/arch/arm/boot/dts/rk3036.dtsi
@@ -584,6 +584,7 @@ gpio0: gpio@2007c000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x2007c000 0x100>;
 			interrupts = <GIC_SPI 36 IRQ_TYPE_LEVEL_HIGH>;
+			clock-names = "bus";
 			clocks = <&cru PCLK_GPIO0>;
 
 			gpio-controller;
@@ -597,6 +598,7 @@ gpio1: gpio@20080000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x20080000 0x100>;
 			interrupts = <GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>;
+			clock-names = "bus";
 			clocks = <&cru PCLK_GPIO1>;
 
 			gpio-controller;
@@ -610,6 +612,7 @@ gpio2: gpio@20084000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x20084000 0x100>;
 			interrupts = <GIC_SPI 38 IRQ_TYPE_LEVEL_HIGH>;
+			clock-names = "bus";
 			clocks = <&cru PCLK_GPIO2>;
 
 			gpio-controller;
diff --git a/arch/arm/boot/dts/rk3066a.dtsi b/arch/arm/boot/dts/rk3066a.dtsi
index fe565440d6ad..343b44238269 100644
--- a/arch/arm/boot/dts/rk3066a.dtsi
+++ b/arch/arm/boot/dts/rk3066a.dtsi
@@ -283,6 +283,7 @@ gpio0: gpio@20034000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x20034000 0x100>;
 			interrupts = <GIC_SPI 54 IRQ_TYPE_LEVEL_HIGH>;
+			clock-names = "bus";
 			clocks = <&cru PCLK_GPIO0>;
 
 			gpio-controller;
@@ -296,6 +297,7 @@ gpio1: gpio@2003c000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x2003c000 0x100>;
 			interrupts = <GIC_SPI 55 IRQ_TYPE_LEVEL_HIGH>;
+			clock-names = "bus";
 			clocks = <&cru PCLK_GPIO1>;
 
 			gpio-controller;
@@ -309,6 +311,7 @@ gpio2: gpio@2003e000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x2003e000 0x100>;
 			interrupts = <GIC_SPI 56 IRQ_TYPE_LEVEL_HIGH>;
+			clock-names = "bus";
 			clocks = <&cru PCLK_GPIO2>;
 
 			gpio-controller;
@@ -322,6 +325,7 @@ gpio3: gpio@20080000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x20080000 0x100>;
 			interrupts = <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>;
+			clock-names = "bus";
 			clocks = <&cru PCLK_GPIO3>;
 
 			gpio-controller;
@@ -335,6 +339,7 @@ gpio4: gpio@20084000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x20084000 0x100>;
 			interrupts = <GIC_SPI 58 IRQ_TYPE_LEVEL_HIGH>;
+			clock-names = "bus";
 			clocks = <&cru PCLK_GPIO4>;
 
 			gpio-controller;
@@ -348,6 +353,7 @@ gpio6: gpio@2000a000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x2000a000 0x100>;
 			interrupts = <GIC_SPI 60 IRQ_TYPE_LEVEL_HIGH>;
+			clock-names = "bus";
 			clocks = <&cru PCLK_GPIO6>;
 
 			gpio-controller;
diff --git a/arch/arm/boot/dts/rk3188.dtsi b/arch/arm/boot/dts/rk3188.dtsi
index cdd4a0bd5133..bc6f53c87c08 100644
--- a/arch/arm/boot/dts/rk3188.dtsi
+++ b/arch/arm/boot/dts/rk3188.dtsi
@@ -228,6 +228,7 @@ gpio0: gpio@2000a000 {
 			compatible = "rockchip,rk3188-gpio-bank0";
 			reg = <0x2000a000 0x100>;
 			interrupts = <GIC_SPI 54 IRQ_TYPE_LEVEL_HIGH>;
+			clock-names = "bus";
 			clocks = <&cru PCLK_GPIO0>;
 
 			gpio-controller;
@@ -241,6 +242,7 @@ gpio1: gpio@2003c000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x2003c000 0x100>;
 			interrupts = <GIC_SPI 55 IRQ_TYPE_LEVEL_HIGH>;
+			clock-names = "bus";
 			clocks = <&cru PCLK_GPIO1>;
 
 			gpio-controller;
@@ -254,6 +256,7 @@ gpio2: gpio@2003e000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x2003e000 0x100>;
 			interrupts = <GIC_SPI 56 IRQ_TYPE_LEVEL_HIGH>;
+			clock-names = "bus";
 			clocks = <&cru PCLK_GPIO2>;
 
 			gpio-controller;
@@ -267,6 +270,7 @@ gpio3: gpio@20080000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x20080000 0x100>;
 			interrupts = <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>;
+			clock-names = "bus";
 			clocks = <&cru PCLK_GPIO3>;
 
 			gpio-controller;
diff --git a/arch/arm/boot/dts/rk322x.dtsi b/arch/arm/boot/dts/rk322x.dtsi
index a814e813a5da..4ce2b3f00d48 100644
--- a/arch/arm/boot/dts/rk322x.dtsi
+++ b/arch/arm/boot/dts/rk322x.dtsi
@@ -956,6 +956,7 @@ gpio0: gpio@11110000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x11110000 0x100>;
 			interrupts = <GIC_SPI 51 IRQ_TYPE_LEVEL_HIGH>;
+			clock-names = "bus";
 			clocks = <&cru PCLK_GPIO0>;
 
 			gpio-controller;
@@ -969,6 +970,7 @@ gpio1: gpio@11120000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x11120000 0x100>;
 			interrupts = <GIC_SPI 52 IRQ_TYPE_LEVEL_HIGH>;
+			clock-names = "bus";
 			clocks = <&cru PCLK_GPIO1>;
 
 			gpio-controller;
@@ -982,6 +984,7 @@ gpio2: gpio@11130000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x11130000 0x100>;
 			interrupts = <GIC_SPI 53 IRQ_TYPE_LEVEL_HIGH>;
+			clock-names = "bus";
 			clocks = <&cru PCLK_GPIO2>;
 
 			gpio-controller;
@@ -995,6 +998,7 @@ gpio3: gpio@11140000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x11140000 0x100>;
 			interrupts = <GIC_SPI 54 IRQ_TYPE_LEVEL_HIGH>;
+			clock-names = "bus";
 			clocks = <&cru PCLK_GPIO3>;
 
 			gpio-controller;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

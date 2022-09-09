Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4DADC6FA86
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Sep 2022 09:06:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rDnR3lXOfLpTj4i3puU/cqGzoflweHi/GY7IIWdwjus=; b=upbSiUMuZPsiwy
	If2lfHSf7ryDDELZlxCD18sXVFv2Zmvam+PBwxlILfkheBYjK5AQzrJ/sJNh1aV4SfL8BuBH/769M
	mwx658D1+x2izaoDQUE/ty9vzQu/URM55XLCBHfbydrrUveBKoTrxuhRK6LJTXH+QQVtlJ6vOPq2a
	WU9/vYkxIo3htMspCxkQWe08pWjhhoQgRvum03azhFRXBXW+oC7wuIvrxzp/DmPwfU6bZdiJfoSib
	l09cMdB5aqXp+kPl47STco5G/BB5kSrCuJ8jSWX0M/TvII5uCjPTcK6iobIZkaPLVyckEkXujNR/+
	LEegivdsnGT0TlOBIaCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWZxg-00Eu27-Dr; Fri, 09 Sep 2022 09:06:08 +0000
Received: from mail-m11883.qiye.163.com ([115.236.118.83])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWZxb-00EtyD-UX
	for linux-rockchip@lists.infradead.org; Fri, 09 Sep 2022 09:06:06 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by mail-m11883.qiye.163.com (Hmail) with ESMTPA id 17A5A84055E;
	Fri,  9 Sep 2022 17:06:02 +0800 (CST)
From: Jianqun Xu <jay.xu@rock-chips.com>
To: heiko@sntech.de,
	linus.walleij@linaro.org,
	andriy.shevchenko@linux.intel.com
Cc: brgl@bgdev.pl,
	linux-gpio@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Jianqun Xu <jay.xu@rock-chips.com>
Subject: [PATCH 4/6] arm64: dts: rockchip: add 'clock-names' for gpio dt nodes
Date: Fri,  9 Sep 2022 17:05:56 +0800
Message-Id: <20220909090558.3609190-5-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220909090558.3609190-1-jay.xu@rock-chips.com>
References: <20220909090558.3609190-1-jay.xu@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFJSktLSjdXWS1ZQUlXWQ8JGhUIEh9ZQVlCGU4eVkpDHh8ZH09OGU0ZQlUTARMWGhIXJB
	QOD1lXWRgSC1lBWU5DVUlJVUxVSkpPWVdZFhoPEhUdFFlBWU9LSFVKSUtDTk1VSktLWQY+
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MxA6Hjo*Hj0tKjYpDkwpTEky
	FkwaCzlVSlVKTU1JTEpPSE1JTU5DVTMWGhIXVREaAlUDDjsJFBgQVhgTEgsIVRgUFkVZV1kSC1lB
	WU5DVUlJVUxVSkpPWVdZCAFZQUJJSUw3Bg++
X-HM-Tid: 0a83217fb98f2eb8kusn17a5a84055e
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_020604_286172_499C9D8D 
X-CRM114-Status: UNSURE (   7.95  )
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
 arch/arm64/boot/dts/rockchip/rk3308.dtsi | 5 +++++
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3368.dtsi | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 5 +++++
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 5 +++++
 5 files changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
index fa189701cdc9..778b0e37d2e2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
@@ -800,6 +800,7 @@ gpio0: gpio@ff220000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff220000 0x0 0x100>;
 			interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
+			clock-names = "bus";
 			clocks = <&cru PCLK_GPIO0>;
 			gpio-controller;
 			#gpio-cells = <2>;
@@ -811,6 +812,7 @@ gpio1: gpio@ff230000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff230000 0x0 0x100>;
 			interrupts = <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>;
+			clock-names = "bus";
 			clocks = <&cru PCLK_GPIO1>;
 			gpio-controller;
 			#gpio-cells = <2>;
@@ -822,6 +824,7 @@ gpio2: gpio@ff240000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff240000 0x0 0x100>;
 			interrupts = <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
+			clock-names = "bus";
 			clocks = <&cru PCLK_GPIO2>;
 			gpio-controller;
 			#gpio-cells = <2>;
@@ -833,6 +836,7 @@ gpio3: gpio@ff250000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff250000 0x0 0x100>;
 			interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>;
+			clock-names = "bus";
 			clocks = <&cru PCLK_GPIO3>;
 			gpio-controller;
 			#gpio-cells = <2>;
@@ -844,6 +848,7 @@ gpio4: gpio@ff260000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff260000 0x0 0x100>;
 			interrupts = <GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH>;
+			clock-names = "bus";
 			clocks = <&cru PCLK_GPIO4>;
 			gpio-controller;
 			#gpio-cells = <2>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 22c2857bcdcf..765409f642c0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -1040,6 +1040,7 @@ gpio0: gpio@ff210000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff210000 0x0 0x100>;
 			interrupts = <GIC_SPI 51 IRQ_TYPE_LEVEL_HIGH>;
+			clock-names = "bus";
 			clocks = <&cru PCLK_GPIO0>;
 
 			gpio-controller;
@@ -1053,6 +1054,7 @@ gpio1: gpio@ff220000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff220000 0x0 0x100>;
 			interrupts = <GIC_SPI 52 IRQ_TYPE_LEVEL_HIGH>;
+			clock-names = "bus";
 			clocks = <&cru PCLK_GPIO1>;
 
 			gpio-controller;
@@ -1066,6 +1068,7 @@ gpio2: gpio@ff230000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff230000 0x0 0x100>;
 			interrupts = <GIC_SPI 53 IRQ_TYPE_LEVEL_HIGH>;
+			clock-names = "bus";
 			clocks = <&cru PCLK_GPIO2>;
 
 			gpio-controller;
@@ -1079,6 +1082,7 @@ gpio3: gpio@ff240000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff240000 0x0 0x100>;
 			interrupts = <GIC_SPI 54 IRQ_TYPE_LEVEL_HIGH>;
+			clock-names = "bus";
 			clocks = <&cru PCLK_GPIO3>;
 
 			gpio-controller;
diff --git a/arch/arm64/boot/dts/rockchip/rk3368.dtsi b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
index fc7e3f2bc786..45f32de84fae 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
@@ -984,6 +984,7 @@ pinctrl: pinctrl {
 		gpio0: gpio@ff750000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff750000 0x0 0x100>;
+			clock-names = "bus";
 			clocks = <&cru PCLK_GPIO0>;
 			interrupts = <GIC_SPI 0x51 IRQ_TYPE_LEVEL_HIGH>;
 
@@ -997,6 +998,7 @@ gpio0: gpio@ff750000 {
 		gpio1: gpio@ff780000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff780000 0x0 0x100>;
+			clock-names = "bus";
 			clocks = <&cru PCLK_GPIO1>;
 			interrupts = <GIC_SPI 0x52 IRQ_TYPE_LEVEL_HIGH>;
 
@@ -1010,6 +1012,7 @@ gpio1: gpio@ff780000 {
 		gpio2: gpio@ff790000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff790000 0x0 0x100>;
+			clock-names = "bus";
 			clocks = <&cru PCLK_GPIO2>;
 			interrupts = <GIC_SPI 0x53 IRQ_TYPE_LEVEL_HIGH>;
 
@@ -1023,6 +1026,7 @@ gpio2: gpio@ff790000 {
 		gpio3: gpio@ff7a0000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff7a0000 0x0 0x100>;
+			clock-names = "bus";
 			clocks = <&cru PCLK_GPIO3>;
 			interrupts = <GIC_SPI 0x54 IRQ_TYPE_LEVEL_HIGH>;
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index caffcaee2d6c..0b8b96fe0cf0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -2071,6 +2071,7 @@ pinctrl: pinctrl {
 		gpio0: gpio@ff720000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff720000 0x0 0x100>;
+			clock-names = "bus";
 			clocks = <&pmucru PCLK_GPIO0_PMU>;
 			interrupts = <GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH 0>;
 
@@ -2084,6 +2085,7 @@ gpio0: gpio@ff720000 {
 		gpio1: gpio@ff730000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff730000 0x0 0x100>;
+			clock-names = "bus";
 			clocks = <&pmucru PCLK_GPIO1_PMU>;
 			interrupts = <GIC_SPI 15 IRQ_TYPE_LEVEL_HIGH 0>;
 
@@ -2097,6 +2099,7 @@ gpio1: gpio@ff730000 {
 		gpio2: gpio@ff780000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff780000 0x0 0x100>;
+			clock-names = "bus";
 			clocks = <&cru PCLK_GPIO2>;
 			interrupts = <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH 0>;
 
@@ -2110,6 +2113,7 @@ gpio2: gpio@ff780000 {
 		gpio3: gpio@ff788000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff788000 0x0 0x100>;
+			clock-names = "bus";
 			clocks = <&cru PCLK_GPIO3>;
 			interrupts = <GIC_SPI 17 IRQ_TYPE_LEVEL_HIGH 0>;
 
@@ -2123,6 +2127,7 @@ gpio3: gpio@ff788000 {
 		gpio4: gpio@ff790000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xff790000 0x0 0x100>;
+			clock-names = "bus";
 			clocks = <&cru PCLK_GPIO4>;
 			interrupts = <GIC_SPI 18 IRQ_TYPE_LEVEL_HIGH 0>;
 
diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 319981c3e9f7..66d038720e65 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -1650,6 +1650,7 @@ gpio0: gpio@fdd60000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xfdd60000 0x0 0x100>;
 			interrupts = <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>;
+			clock-names = "bus", "db";
 			clocks = <&pmucru PCLK_GPIO0>, <&pmucru DBCLK_GPIO0>;
 			gpio-controller;
 			#gpio-cells = <2>;
@@ -1661,6 +1662,7 @@ gpio1: gpio@fe740000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xfe740000 0x0 0x100>;
 			interrupts = <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>;
+			clock-names = "bus", "db";
 			clocks = <&cru PCLK_GPIO1>, <&cru DBCLK_GPIO1>;
 			gpio-controller;
 			#gpio-cells = <2>;
@@ -1672,6 +1674,7 @@ gpio2: gpio@fe750000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xfe750000 0x0 0x100>;
 			interrupts = <GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>;
+			clock-names = "bus", "db";
 			clocks = <&cru PCLK_GPIO2>, <&cru DBCLK_GPIO2>;
 			gpio-controller;
 			#gpio-cells = <2>;
@@ -1683,6 +1686,7 @@ gpio3: gpio@fe760000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xfe760000 0x0 0x100>;
 			interrupts = <GIC_SPI 36 IRQ_TYPE_LEVEL_HIGH>;
+			clock-names = "bus", "db";
 			clocks = <&cru PCLK_GPIO3>, <&cru DBCLK_GPIO3>;
 			gpio-controller;
 			#gpio-cells = <2>;
@@ -1694,6 +1698,7 @@ gpio4: gpio@fe770000 {
 			compatible = "rockchip,gpio-bank";
 			reg = <0x0 0xfe770000 0x0 0x100>;
 			interrupts = <GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>;
+			clock-names = "bus", "db";
 			clocks = <&cru PCLK_GPIO4>, <&cru DBCLK_GPIO4>;
 			gpio-controller;
 			#gpio-cells = <2>;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

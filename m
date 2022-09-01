Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8914ECAAD4
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Sep 2022 01:30:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cpy9ir9Sz+MecvKs1RX2usbKK1rV0R/OQhOM/X6HYOQ=; b=q4dUdO22lDCxct
	6/l99FgzuMWwz0kOgdl4gRjVEJRs5ou5oCvmbXIa9RFy+AtXiF4AHnNP96taQJ/qyBf3zAPQG4qtb
	T58ESftzx8HCg40BpXEDkmb+3fL8ubFUYetLVSxFAEQ7o89W6czNkeOaXH8FWh2EbtzSsLV29a0em
	8wVP4lQ297bKxVPHki2+2xhuCeRt3gqybBgYXaAwFDyqAdWYDJG3h88IvWBlPbR+nYB+vrhF4deBa
	l+AEir3Zx1waAWlU+OWw2CZ7JTLXVjYQaHLmET6JLxx5kUdie2/0p0AkbieL0q23HiuG/PZb12cRQ
	iQsHmBEqW+Y9lAR1Ed9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTZ1v-008xWG-8q; Thu, 01 Sep 2022 01:30:03 +0000
Received: from mail-m11873.qiye.163.com ([115.236.118.73])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTZ1k-008xQd-IF
	for linux-rockchip@lists.infradead.org; Thu, 01 Sep 2022 01:29:58 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by mail-m11873.qiye.163.com (Hmail) with ESMTPA id C0BDA9004C0;
	Thu,  1 Sep 2022 09:29:47 +0800 (CST)
From: Jianqun Xu <jay.xu@rock-chips.com>
To: linus.walleij@linaro.org,
	heiko@sntech.de
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	linux-gpio@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Jianqun Xu <jay.xu@rock-chips.com>
Subject: [PATCH 2/2] arm64: dts: rockchip: rk356x add 'clock-names' for gpio nodes
Date: Thu,  1 Sep 2022 09:29:42 +0800
Message-Id: <20220901012944.2634398-4-jay.xu@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220901012944.2634398-1-jay.xu@rock-chips.com>
References: <20220901012944.2634398-1-jay.xu@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFJSktLSjdXWS1ZQUlXWQ8JGhUIEh9ZQVlCHx9DVk5PTkNJShlOGE5CHlUTARMWGhIXJB
	QOD1lXWRgSC1lBWU5DVUlJVUxVSkpPWVdZFhoPEhUdFFlBWU9LSFVKSktISkxVSktLWQY+
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NTY6Mww5Sz02DU0*Cw4rFiM3
	GANPCwlVSlVKTU1KQkJOTENDSEpIVTMWGhIXVREaAlUDDjsJFBgQVhgTEgsIVRgUFkVZV1kSC1lB
	WU5DVUlJVUxVSkpPWVdZCAFZQUhJQ0s3Bg++
X-HM-Tid: 0a82f6ab26b12eafkusnc0bda9004c0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220831_182952_804985_E4F1F881 
X-CRM114-Status: UNSURE (   7.94  )
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

Add 'clock-names' for gpio nodes on rk356x SoCs, after this patch, the
gpio driver can get the clocks by a const char id, 'bus' for apb clock
and 'db' for the debounce clock.

Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

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

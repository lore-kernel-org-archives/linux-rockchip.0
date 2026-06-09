Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28826CD98C5
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Jun 2026 15:41:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xUv3xCe2lAVwyoX7GUR/zcgb5gAzwfnq1KJZVrp0boI=; b=B4z/rDJezWLBDn
	TZx1QN2RzFWJURCnQ6PXAVVZZpzmeV5ywPvXMv2ITVMkGgUvvq61xc484z1P0TOJsLNUUz+5+zQUj
	t325AJmOIOyCKTDAx4Sn+CDWTLBYhTS6ly0+jR+tiXBDKkS93cJPC2hwBNZo5vvQPESniB2YAeJBs
	h2jMu7+HW/i7lyGqQbzalQkvpKgBKO8gARnzXp/OETG6TnGlX3p3OuUN5LO8oSm8SYwBd4S1gANti
	34Gib8M/ylI7YcT+yfz9hvbXdkBaEtzaMKAX7fCJdlE7HssEQD7P6D5LWIWIHt/2aOywn4P5xrqlq
	Zu+3Hyblhh0bySZWYg6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWyaG-00000005wiu-3rNf;
	Tue, 09 Jun 2026 15:41:44 +0000
Received: from smtp.forwardemail.net ([121.127.44.66])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWyaC-00000005wfM-3ap3
	for linux-rockchip@lists.infradead.org;
	Tue, 09 Jun 2026 15:41:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1781019700; bh=k2mNfNUmklU9bFAjBbAD3Iaxi1EmNNL5ROjmhSuGaNU=;
 b=VP0iU4X0YnpJWV9ZE1olCfIxnFo6PNZbXcbM4p7xV+Ti//lyU4/BMCxQSIurnLiMyygaT4yJy
 y0VVqonBlZmQ1NbOOejKdj7SFDbutxdZMV9Mt8H+6qHPQwLd+o6t2Y2zSOuCXb8+x6+/hFo6v6w
 M3Ur4TgGV+5bpoPLiyeeZD3BlQGELelY86DaVUVQxRNcj2J9bLB5fMRxKwADCPefpoLeCM7Kxun
 B9YFZhHoM2ey5v9DHC+9XHdxDipf2KdoRfj41uhLgdP3rsDBz+nLjsiVwXEQVd/10G37iiCJ+Yr
 Wefp6oX3BaJY7Pr3vrp0y6dIGtLK0YEVREzRgVQaE3hg==
X-Forward-Email-ID: 6a2834322d71d6ad28f66e5b
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.66
X-Forward-Email-Version: 2.8.22
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Peter Geis <pgwipeout@gmail.com>,
	Michael Riesch <michael.riesch@collabora.com>
Cc: Diederik de Haas <diederik@cknow-tech.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-usb@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 2/2] arm64: dts: rockchip: Fix devices suspend freeze on RK3568/RK3566
Date: Tue,  9 Jun 2026 15:41:23 +0000
Message-ID: <20260609154124.445182-3-jonas@kwiboo.se>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260609154124.445182-1-jonas@kwiboo.se>
References: <20260609154124.445182-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260609_084141_168015_88E186BF 
X-CRM114-Status: GOOD (  10.55  )
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

The EHCI/OHCI controller depends on clk_usbphy1_480m being enabled, or
the system may freeze when registers are accessed, i.e. during suspend
in ohci_suspend().

Add the missing clk_usbphy1_480m clocks reference to EHCI/OHCI
controllers to ensure the clock is enabled when ECHI/OHCI registers are
accessed to prevent a system freeze.

Fixes suspend pm_test issue with EHCI/OHCI devices due to the missing
clk_usbphy1_480m reference and makes following pm_test modes work:

  echo N > /sys/module/printk/parameters/console_suspend

  echo devices > /sys/power/pm_test
  echo platform > /sys/power/pm_test
  echo processors > /sys/power/pm_test
  echo core > /sys/power/pm_test

  echo mem > /sys/power/state

Fixes: 91c4c3e06a25 ("arm64: dts: rockchip: add usb2 nodes to rk3568 device tree")
Fixes: 78f7186095db ("arm64: dts: rockchip: rename and sort the rk356x usb2 phy handles")
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 arch/arm64/boot/dts/rockchip/rk356x-base.dtsi | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
index a5832895bd39..c930a6fd6ea0 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
@@ -321,44 +321,44 @@ its: msi-controller@fd440000 {
 	};
 
 	usb_host0_ehci: usb@fd800000 {
-		compatible = "generic-ehci";
+		compatible = "rockchip,rk3568-ehci", "generic-ehci";
 		reg = <0x0 0xfd800000 0x0 0x40000>;
 		interrupts = <GIC_SPI 130 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru HCLK_USB2HOST0>, <&cru HCLK_USB2HOST0_ARB>,
-			 <&cru PCLK_USB>;
+			 <&cru PCLK_USB>, <&usb2phy1>;
 		phys = <&usb2phy1_otg>;
 		phy-names = "usb";
 		status = "disabled";
 	};
 
 	usb_host0_ohci: usb@fd840000 {
-		compatible = "generic-ohci";
+		compatible = "rockchip,rk3568-ohci", "generic-ohci";
 		reg = <0x0 0xfd840000 0x0 0x40000>;
 		interrupts = <GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru HCLK_USB2HOST0>, <&cru HCLK_USB2HOST0_ARB>,
-			 <&cru PCLK_USB>;
+			 <&cru PCLK_USB>, <&usb2phy1>;
 		phys = <&usb2phy1_otg>;
 		phy-names = "usb";
 		status = "disabled";
 	};
 
 	usb_host1_ehci: usb@fd880000 {
-		compatible = "generic-ehci";
+		compatible = "rockchip,rk3568-ehci", "generic-ehci";
 		reg = <0x0 0xfd880000 0x0 0x40000>;
 		interrupts = <GIC_SPI 133 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru HCLK_USB2HOST1>, <&cru HCLK_USB2HOST1_ARB>,
-			 <&cru PCLK_USB>;
+			 <&cru PCLK_USB>, <&usb2phy1>;
 		phys = <&usb2phy1_host>;
 		phy-names = "usb";
 		status = "disabled";
 	};
 
 	usb_host1_ohci: usb@fd8c0000 {
-		compatible = "generic-ohci";
+		compatible = "rockchip,rk3568-ohci", "generic-ohci";
 		reg = <0x0 0xfd8c0000 0x0 0x40000>;
 		interrupts = <GIC_SPI 134 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru HCLK_USB2HOST1>, <&cru HCLK_USB2HOST1_ARB>,
-			 <&cru PCLK_USB>;
+			 <&cru PCLK_USB>, <&usb2phy1>;
 		phys = <&usb2phy1_host>;
 		phy-names = "usb";
 		status = "disabled";
-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

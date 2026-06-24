Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7636CDB47F
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Jun 2026 19:27:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UOE3wMpHlwm9Gn5e0BfYx7kS6ZRzL6wZEq9yMWAahzU=; b=kBnvoSwmQDOLMM
	Gmx4WiWIwSpoo2sZnuzfj4KKKzVWqnnCGfaR4zDi6b9zRuWnzGz1rdPOVzwIOMjDZ5tG913WaPAZu
	Rh2ktt06jSPx2mgGCZ8KVgJUkTwNUEDDTCkA23/TYsQKKxrV8Es+HxxnRP4r9XCvC9u01HqE9Pa7m
	iw54BYx+2M+cMYYMTWpTQJKG+pVGxdP8QPah7hV8XcrsQWUIbJ1CQAdx3b2wKRFTe8VQYEH5yRPHX
	Wu5TvOP41m6klleFeFowo08q6hgQ7xCHM8H7rjgFJJxVP4wsH2zsshtE+cRNYoah9HeppV/b4sgS9
	8T/MgA6IAU54/uj/Fq8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcTG9-00000008GpA-0wC8;
	Wed, 24 Jun 2026 19:27:41 +0000
Received: from smtp.forwardemail.net ([121.127.44.73])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcTG5-00000008GnU-4Arf
	for linux-rockchip@lists.infradead.org;
	Wed, 24 Jun 2026 19:27:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1782329257; bh=QvtzBjRWJhsbenkKdH0SFCY3vwPhaULuIOm7rRelHtw=;
 b=JqagC7i/nwDWgUqQyZsUhmY9wjzKRCEepkRsAwKF21cQysI3FfFwwWfk8VNRxafncx1uGqU+c
 dJmjwMZ6OEPhR8Fv2IZgrnhHtk877zsIS0MoaaO2tiP8QPcUpj2RQvngriD3Hele104D8zQ/yTC
 rrNvccBI0PJ2IewKq2pStT9kLGdiJgjrjR+6kCnDCZ4+gW/164pZyG+Eh2jX7qlsb2BKrw7LV/w
 GQep8f97DN1URVgfFGCw6RlxucCkYcxbY43QgKhoCko5WCu9zPEkNprJ4EpxGxFpdm//ldXNjJL
 5/6xG/FYlLcv6h/8j87OLSGvrNBzW/cyTOIS8E6F/5yg==
X-Forward-Email-ID: 6a3c2fa8138f49c481104ad8
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 2.8.32
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
Subject: [PATCH v2 2/2] arm64: dts: rockchip: Fix devices suspend freeze on RK3568/RK3566
Date: Wed, 24 Jun 2026 19:27:25 +0000
Message-ID: <20260624192726.781864-3-jonas@kwiboo.se>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260624192726.781864-1-jonas@kwiboo.se>
References: <20260624192726.781864-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260624_122738_147772_207C2B9F 
X-CRM114-Status: GOOD (  10.34  )
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
Tested-by: Diederik de Haas <diederik@cknow-tech.com>
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
v2: Collect t-b tag
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

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47009EB64DA
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Jul 2023 16:53:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rx9dARIewvzJQ1PzYYRSUayC6V6LISJUcObnvJKBpHA=; b=jdTZniy7z87ThB
	VkKBPWQCy2UbMI6tltZS+NBvNX8zrfHVnyQeu1QyaCTpHyc6LZWwi7rL7h6Y2Na8ssBreY+oVBPAn
	7MntXNAaYQn/3fM/An+ncYJPOXmZvYeyw54KwuNiTMdvhTsfKnMqAn5BPJIvyCq3a9jsFi2TK2TqE
	0KESnOPQwuXiZd0Bea+tQQfZ1Wu+PGB9AvrkctJLQnuXU/dR6tWSWN0Qq36VBOakopzfa+TctNqCw
	kJE6qJOxyb5I+gWC8DUpcqoiAE4PTcN6PgjwqDDXOhHFDF1lnMqSpVeer9Jw2AbNR0cxZlOm0e6BP
	GHGGyNvsiiROUmMYJEPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJd5M-000f5u-1W;
	Wed, 12 Jul 2023 16:53:04 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJd57-000euP-2d;
	Wed, 12 Jul 2023 16:52:52 +0000
Received: from jupiter.universe (dyndsl-091-248-191-111.ewe-ip-backbone.de [91.248.191.111])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id E6B986606FD8;
	Wed, 12 Jul 2023 17:52:44 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1689180765;
	bh=cgoCgj1TntBDxGd/KB0E4UgOCbq//hMHGvNN7KpnzYw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=LrXV5DJk7x1cf+ii0QS2hMY78fRfdgaOthlP/gTTi4iaQt1ZWBMRkGarOtvPGifbi
	 H6lJ6QDEjY+b4CONSzk49udJyi6qRjClZ9o36JbyEcqOWBTTPDsRBMUOptPsQPMFGf
	 Jgc3UCEsULM7gWIKDJfGrYugUPPUgDmwkPypVEq0xVKPsk1AjLhNa7GdX1LC7XGrIf
	 s3WhOxDsm6K0Hw6MfUaY82RxtbjhvwxyO3DpHistifSrpNpUaiaHvt8gz01k93mXH9
	 OGURvNlA8nIK1+y3G3IEOu4J7krs2WK/ZhwJJ71J5PBtobq+w0biutmbAe/KSy5HQ5
	 cmMEKgReElu2g==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 18777480596; Wed, 12 Jul 2023 18:52:43 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: linux-rockchip@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v1 1/4] arm64: dts: rockchip: rk3588: add USB2 support
Date: Wed, 12 Jul 2023 18:51:03 +0200
Message-Id: <20230712165106.65603-2-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230712165106.65603-1-sebastian.reichel@collabora.com>
References: <20230712165106.65603-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230712_095250_109893_400073FB 
X-CRM114-Status: GOOD (  10.60  )
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

This adds USB2 (EHCI & OHCI) ports including the related PHYs
and GRF modules to the rk3588(s) device tree.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 94 +++++++++++++++++++++++
 1 file changed, 94 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 8243e52bce59..c9f9dd2472f5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -399,6 +399,50 @@ scmi_shmem: sram@0 {
 		};
 	};
 
+	usb_host0_ehci: usb@fc800000 {
+		compatible = "rockchip,rk3588-ehci", "generic-ehci";
+		reg = <0x0 0xfc800000 0x0 0x40000>;
+		interrupts = <GIC_SPI 215 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru HCLK_HOST0>, <&cru HCLK_HOST_ARB0>, <&cru ACLK_USB>, <&u2phy2>;
+		phys = <&u2phy2_host>;
+		phy-names = "usb";
+		power-domains = <&power RK3588_PD_USB>;
+		status = "disabled";
+	};
+
+	usb_host0_ohci: usb@fc840000 {
+		compatible = "rockchip,rk3588-ohci", "generic-ohci";
+		reg = <0x0 0xfc840000 0x0 0x40000>;
+		interrupts = <GIC_SPI 216 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru HCLK_HOST0>, <&cru HCLK_HOST_ARB0>, <&cru ACLK_USB>, <&u2phy2>;
+		phys = <&u2phy2_host>;
+		phy-names = "usb";
+		power-domains = <&power RK3588_PD_USB>;
+		status = "disabled";
+	};
+
+	usb_host1_ehci: usb@fc880000 {
+		compatible = "rockchip,rk3588-ehci", "generic-ehci";
+		reg = <0x0 0xfc880000 0x0 0x40000>;
+		interrupts = <GIC_SPI 218 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru HCLK_HOST1>, <&cru HCLK_HOST_ARB1>, <&cru ACLK_USB>, <&u2phy3>;
+		phys = <&u2phy3_host>;
+		phy-names = "usb";
+		power-domains = <&power RK3588_PD_USB>;
+		status = "disabled";
+	};
+
+	usb_host1_ohci: usb@fc8c0000 {
+		compatible = "rockchip,rk3588-ohci", "generic-ohci";
+		reg = <0x0 0xfc8c0000 0x0 0x40000>;
+		interrupts = <GIC_SPI 219 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru HCLK_HOST1>, <&cru HCLK_HOST_ARB1>, <&cru ACLK_USB>, <&u2phy3>;
+		phys = <&u2phy3_host>;
+		phy-names = "usb";
+		power-domains = <&power RK3588_PD_USB>;
+		status = "disabled";
+	};
+
 	sys_grf: syscon@fd58c000 {
 		compatible = "rockchip,rk3588-sys-grf", "syscon";
 		reg = <0x0 0xfd58c000 0x0 0x1000>;
@@ -419,6 +463,56 @@ pipe_phy2_grf: syscon@fd5c4000 {
 		reg = <0x0 0xfd5c4000 0x0 0x100>;
 	};
 
+	usb2phy2_grf: syscon@fd5d8000 {
+		compatible = "rockchip,rk3588-usb2phy-grf", "syscon", "simple-mfd";
+		reg = <0x0 0xfd5d8000 0x0 0x4000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		u2phy2: usb2-phy@8000 {
+			compatible = "rockchip,rk3588-usb2phy";
+			reg = <0x8000 0x10>;
+			interrupts = <GIC_SPI 391 IRQ_TYPE_LEVEL_HIGH 0>;
+			resets = <&cru SRST_OTGPHY_U2_0>, <&cru SRST_P_USB2PHY_U2_0_GRF0>;
+			reset-names = "phy", "apb";
+			clocks = <&cru CLK_USB2PHY_HDPTXRXPHY_REF>;
+			clock-names = "phyclk";
+			clock-output-names = "usb480m_phy2";
+			#clock-cells = <0>;
+			status = "disabled";
+
+			u2phy2_host: host-port {
+				#phy-cells = <0>;
+				status = "disabled";
+			};
+		};
+	};
+
+	usb2phy3_grf: syscon@fd5dc000 {
+		compatible = "rockchip,rk3588-usb2phy-grf", "syscon", "simple-mfd";
+		reg = <0x0 0xfd5dc000 0x0 0x4000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		u2phy3: usb2-phy@c000 {
+			compatible = "rockchip,rk3588-usb2phy";
+			reg = <0xc000 0x10>;
+			interrupts = <GIC_SPI 392 IRQ_TYPE_LEVEL_HIGH 0>;
+			resets = <&cru SRST_OTGPHY_U2_1>, <&cru SRST_P_USB2PHY_U2_1_GRF0>;
+			reset-names = "phy", "apb";
+			clocks = <&cru CLK_USB2PHY_HDPTXRXPHY_REF>;
+			clock-names = "phyclk";
+			clock-output-names = "usb480m_phy3";
+			#clock-cells = <0>;
+			status = "disabled";
+
+			u2phy3_host: host-port {
+				#phy-cells = <0>;
+				status = "disabled";
+			};
+		};
+	};
+
 	ioc: syscon@fd5f0000 {
 		compatible = "rockchip,rk3588-ioc", "syscon";
 		reg = <0x0 0xfd5f0000 0x0 0x10000>;
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

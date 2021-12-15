Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 525A3C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Dec 2021 21:05:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MHeX/yqvjCXzjw2VxNxNT6qQGKlMO526FWIN/vRwjLg=; b=hsTLllaDIqvQGP
	nR55TrKKwItxDb6oSq8bq235elEu0HCbE6GiJZq+bN/N1LPNbzsXKtygp1czEt2mHmbkKTNboRlDT
	1PhdbprA8s+kxMGhpjMGOfV60dP8A2I3U+onSLEysoVc8+WfgvpptkXeERno2vFK8X2t9g/MaKFCj
	x6m9OYgNpXMJtbkLP5nWZEq38tg4cfdhozAiUfNnQWg/O/elkEzXyY4T5WQhRz9qGkjAeFbZbqDcb
	hAv/TfizYN1+VoWtjBHKfq5zzBDhvlvOTbtnoQV0uEt4WgrdAgN9SWZbtwBt/fG2HEC2jJBA8o/Z5
	+erQpnoJZs+YE8sPjSbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxbT7-002k0A-Pw; Wed, 15 Dec 2021 21:05:45 +0000
Received: from mail-qt1-x82e.google.com ([2607:f8b0:4864:20::82e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxbQa-002iaQ-Uo; Wed, 15 Dec 2021 21:03:10 +0000
Received: by mail-qt1-x82e.google.com with SMTP id f20so23274407qtb.4;
 Wed, 15 Dec 2021 13:03:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=z18VL31coTBk76De+PcvAvUu+q+yeDGJv5K7mB9qqFw=;
 b=J9XNv/fYF4yS+FKG6kZSUlwuAusLvMKrtMDyPR8xCHge5JwdPgXyNqGbO3WZ2k57S6
 gNGfa6c5M34B0eePU/pjcgxU6ULW07Pq5f4GcF1/WEysrwnDc0o1hx2mUT07I19B6u5c
 CmA4Y4Pz7L7kjg+j+tNUWsgMvUs2zrVv12uQ8Aey4oLRo7tqlKQX6JVMsXX1Ku6L13pc
 cJx5n7mxBm85gfqxhBhwCnP+d1DbXXvMOVUm3s1mINYqi9V8eyhJrP1D6d4VOR+8GcrE
 CcDnKvfpaYdhpw5Sfmm9Vju8LIBdm1navTKdX8rGtxgm5rKZGdDVQ+AybCnCxAlgEwM8
 kJcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=z18VL31coTBk76De+PcvAvUu+q+yeDGJv5K7mB9qqFw=;
 b=SxFo2OH25fyNINjhhdFgcounlJCmM37rACTu2P+mC/yC3XvKjoNxYcreaUIgOTJblh
 6dcP7V9kQPbcjdhf6+VULub5OF215pcbuF63B5KqLnMei1gRPJo0ZRLLWONRjiA5dN7N
 SwOcKcXChICCdtjOBStDPmNx9KEXPGXqSFdt/vA7kZDJcJIVXwgerd3RU4A+E/i7Hv4T
 P+AWux6ZhYjoeXfM2HMrw+tIO4mAqW+ClcyZOVnIg36y8D3AX+ys6p0QOH2gxzEF0MeX
 qzmPZmiQX5AtxIcYENm+9Ov3RFm6DmVBfAbaNygjgarlmn9SfDYZviItsxgQ9kPusvch
 RK3g==
X-Gm-Message-State: AOAM532xtaoc4iROg5+uPyEREZMwQGsQahoYr8oJMyH8BwZyzt6xIr41
 FopXEWe0uVQ3anmClXG6Mwg=
X-Google-Smtp-Source: ABdhPJwRLjnZxRAdAtPRk7bkReWkOSFDrqr33VbRi2bU1fO9JuxHDWcLtRB4jmdGyPjrw1tAYqQV6w==
X-Received: by 2002:a05:622a:1310:: with SMTP id
 v16mr14127043qtk.431.1639602187353; 
 Wed, 15 Dec 2021 13:03:07 -0800 (PST)
Received: from master-x64.sparksnet (c-98-233-193-225.hsd1.md.comcast.net.
 [98.233.193.225])
 by smtp.gmail.com with ESMTPSA id a20sm1644356qkh.63.2021.12.15.13.03.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Dec 2021 13:03:06 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3 7/8] arm64: dts: rockchip: add usb2 nodes to rk3568 device
 tree
Date: Wed, 15 Dec 2021 16:02:51 -0500
Message-Id: <20211215210252.120923-8-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211215210252.120923-1-pgwipeout@gmail.com>
References: <20211215210252.120923-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211215_130309_021152_88C84F61 
X-CRM114-Status: GOOD (  10.40  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Add the requisite nodes to the rk3568 device tree to enable the usb2
device controllers.
Includes the usb2phy nodes, usb2phy grf nodes, and usb2 controller
nodes.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
Tested-by: Michael Riesch <michael.riesch@wolfvision.net>

---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 98 ++++++++++++++++++++++++
 1 file changed, 98 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 46d9552f6028..2c2b1014e53b 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -204,6 +204,50 @@ gic: interrupt-controller@fd400000 {
 		msi-controller;
 	};
 
+	usb_host0_ehci: usb@fd800000 {
+		compatible = "generic-ehci";
+		reg = <0x0 0xfd800000 0x0 0x40000>;
+		interrupts = <GIC_SPI 130 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru HCLK_USB2HOST0>, <&cru HCLK_USB2HOST0_ARB>,
+			 <&cru PCLK_USB>;
+		phys = <&u2phy1_otg>;
+		phy-names = "usb";
+		status = "disabled";
+	};
+
+	usb_host0_ohci: usb@fd840000 {
+		compatible = "generic-ohci";
+		reg = <0x0 0xfd840000 0x0 0x40000>;
+		interrupts = <GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru HCLK_USB2HOST0>, <&cru HCLK_USB2HOST0_ARB>,
+			 <&cru PCLK_USB>;
+		phys = <&u2phy1_otg>;
+		phy-names = "usb";
+		status = "disabled";
+	};
+
+	usb_host1_ehci: usb@fd880000 {
+		compatible = "generic-ehci";
+		reg = <0x0 0xfd880000 0x0 0x40000>;
+		interrupts = <GIC_SPI 133 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru HCLK_USB2HOST1>, <&cru HCLK_USB2HOST1_ARB>,
+			 <&cru PCLK_USB>;
+		phys = <&u2phy1_host>;
+		phy-names = "usb";
+		status = "disabled";
+	};
+
+	usb_host1_ohci: usb@fd8c0000 {
+		compatible = "generic-ohci";
+		reg = <0x0 0xfd8c0000 0x0 0x40000>;
+		interrupts = <GIC_SPI 134 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru HCLK_USB2HOST1>, <&cru HCLK_USB2HOST1_ARB>,
+			 <&cru PCLK_USB>;
+		phys = <&u2phy1_host>;
+		phy-names = "usb";
+		status = "disabled";
+	};
+
 	pmugrf: syscon@fdc20000 {
 		compatible = "rockchip,rk3568-pmugrf", "syscon", "simple-mfd";
 		reg = <0x0 0xfdc20000 0x0 0x10000>;
@@ -219,6 +263,16 @@ grf: syscon@fdc60000 {
 		reg = <0x0 0xfdc60000 0x0 0x10000>;
 	};
 
+	usb2phy0_grf: syscon@fdca0000 {
+		compatible = "rockchip,rk3568-usb2phy-grf", "syscon";
+		reg = <0x0 0xfdca0000 0x0 0x8000>;
+	};
+
+	usb2phy1_grf: syscon@fdca8000 {
+		compatible = "rockchip,rk3568-usb2phy-grf", "syscon";
+		reg = <0x0 0xfdca8000 0x0 0x8000>;
+	};
+
 	pmucru: clock-controller@fdd00000 {
 		compatible = "rockchip,rk3568-pmucru";
 		reg = <0x0 0xfdd00000 0x0 0x1000>;
@@ -1077,6 +1131,50 @@ pwm15: pwm@fe700030 {
 		status = "disabled";
 	};
 
+	u2phy0: usb2phy@fe8a0000 {
+		compatible = "rockchip,rk3568-usb2phy";
+		reg = <0x0 0xfe8a0000 0x0 0x10000>;
+		clocks = <&pmucru CLK_USBPHY0_REF>;
+		clock-names = "phyclk";
+		clock-output-names = "clk_usbphy0_480m";
+		interrupts = <GIC_SPI 135 IRQ_TYPE_LEVEL_HIGH>;
+		rockchip,usbgrf = <&usb2phy0_grf>;
+		#clock-cells = <0>;
+		status = "disabled";
+
+		u2phy0_host: host-port {
+			#phy-cells = <0>;
+			status = "disabled";
+		};
+
+		u2phy0_otg: otg-port {
+			#phy-cells = <0>;
+			status = "disabled";
+		};
+	};
+
+	u2phy1: usb2phy@fe8b0000 {
+		compatible = "rockchip,rk3568-usb2phy";
+		reg = <0x0 0xfe8b0000 0x0 0x10000>;
+		clocks = <&pmucru CLK_USBPHY1_REF>;
+		clock-names = "phyclk";
+		clock-output-names = "clk_usbphy1_480m";
+		interrupts = <GIC_SPI 136 IRQ_TYPE_LEVEL_HIGH>;
+		rockchip,usbgrf = <&usb2phy1_grf>;
+		#clock-cells = <0>;
+		status = "disabled";
+
+		u2phy1_host: host-port {
+			#phy-cells = <0>;
+			status = "disabled";
+		};
+
+		u2phy1_otg: otg-port {
+			#phy-cells = <0>;
+			status = "disabled";
+		};
+	};
+
 	pinctrl: pinctrl {
 		compatible = "rockchip,rk3568-pinctrl";
 		rockchip,grf = <&grf>;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

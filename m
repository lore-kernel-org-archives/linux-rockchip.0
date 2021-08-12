Return-Path: <SRS0=p67a=ND=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F340BC4338F
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Aug 2021 20:46:04 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B12E960560
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Aug 2021 20:46:04 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B12E960560
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oQqEQU8rRGBG1Zl6+bBIXvS2sDkx8N0EiZpWTgrwxe4=; b=z0E1G83T8y+/9S
	W8IEc39nzOf9M13Ee9vC1zLu3zkusAUCWnXl/HAnCTgOlctH0mBSjViSqyo8OAT/+8WT5bg9P+uIt
	WCFYeJkOP9N8ZvKvbB9vkrXdZGbuB2A6pvvCWRZtSFG0Dr2J3jXNmvvMMDgw0KoMwxQTlyiVVRarV
	U22MhKtxUAOQAKageH1nlf6OLBwaBLXiyxKD6zIqAdDm7A5+kHFvBMLdFoHJpOE6fboCWYHyMfNB9
	b6z80CUgKxzSN8umNLbV6i3XKhkM+hqykceB6LneBqAPELsrJRtFUnUGKmiWakfusLJnu0QW6ygw8
	HhcoGvyT4wYk1zt/UNpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mEHaS-00BDNw-Ql; Thu, 12 Aug 2021 20:46:00 +0000
Received: from mail-qk1-x72b.google.com ([2607:f8b0:4864:20::72b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mEHWf-00BBRn-86; Thu, 12 Aug 2021 20:42:06 +0000
Received: by mail-qk1-x72b.google.com with SMTP id t68so8252652qkf.8;
 Thu, 12 Aug 2021 13:42:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=iWmyzD0AHOmumLrqKa3ZHpzPnn/EcIn8wTUKFzr+kYQ=;
 b=hmVe7sT1hGvRwzQ/slSq+rQUvVQrRh1nihHPENrDIwE45CYMPD1Z/x4jTcP/THIFWH
 L7dvuCIKD6w0WovygtCTVvp9YRhyNeh7Y2h1/qCUaf+lEhfhO1BIZVJstUNTgzsSXTjN
 M78TsYn3IbNYZYNOCoXzs2OCAEAI12RYEl3+NPbER6ZEyHLk5gZlX8OnVpHLMaiLkOEP
 18ywaxXNt7T0LZ6g8naFFBHJJwc3lJuQMzGEndkIwptE9RHU7M0ubYe7o9Leol5I/7Mp
 DK9kKQ3xw+v4Qs3GvVaEwUYraILJ60aZvNV0Qphx7TLCaAv+IKfTyA4T3lmEMHFwF9UE
 Kt2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iWmyzD0AHOmumLrqKa3ZHpzPnn/EcIn8wTUKFzr+kYQ=;
 b=tOKr0z//9lz0hI549IoXSf5Y3d8qtpGlcXctT1t1UB9Z1eayudI33smO9Z70+74g9l
 75YEM4wpiGnTbfU5JjSOfpJecCH/Z0Az1LDFF//45cwkBjWf4600U7Ir8tKcckEWBkrQ
 YTYfMWUz4QrMmW6mkUQhWWtB5wZMbXjKj7vKhMF+jyaEqZj/vgCjhIBdlBkH5hPsaBSI
 lwg33L3gJxJ/EH3AxACk624Ft+szWfasqNmJ4Qsr+ApLYFXeughLVlL0hRrPjPlRHXKw
 B6/IIh/r5hNMZ931mh8tHa/TewfcPp2UjikzoHwhfjcqprma8Zt3s9jf61nqEW876fOg
 6zYw==
X-Gm-Message-State: AOAM533XLG4lsQvVHObnns4NIWtKVZf64lgYYj4oQdZLVGDv6g1b1O5E
 /md1rgMsoDn/36TdKI4vY4E=
X-Google-Smtp-Source: ABdhPJy4HK8JMBANtT1Uwyh3IIemb3X75giy3d/8yXVQoIEBVbULOvqq2B9tZfz3t2WBRgS8QeVx9Q==
X-Received: by 2002:a05:620a:5b7:: with SMTP id
 q23mr6568553qkq.386.1628800924115; 
 Thu, 12 Aug 2021 13:42:04 -0700 (PDT)
Received: from master-laptop.sparksnet
 ([2601:153:980:85b1:e89f:d077:9161:1bd7])
 by smtp.gmail.com with ESMTPSA id m16sm1940361qki.19.2021.08.12.13.42.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Aug 2021 13:42:03 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Peter Geis <pgwipeout@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 7/8] arm64: dts: rockchip: add usb2 nodes to rk3568 device
 tree
Date: Thu, 12 Aug 2021 16:41:15 -0400
Message-Id: <20210812204116.2303617-8-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210812204116.2303617-1-pgwipeout@gmail.com>
References: <20210812204116.2303617-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210812_134205_362962_65F57E28 
X-CRM114-Status: GOOD (  11.70  )
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
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 98 ++++++++++++++++++++++++
 1 file changed, 98 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 322971318d5a..2abd9241c91f 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -200,6 +200,50 @@ gic: interrupt-controller@fd400000 {
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
@@ -210,6 +254,16 @@ grf: syscon@fdc60000 {
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
@@ -738,6 +792,50 @@ saradc: saradc@fe720000 {
 		status = "disabled";
 	};
 
+	usb2phy0: usb2-phy@fe8a0000 {
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
+	usb2phy1: usb2-phy@fe8b0000 {
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

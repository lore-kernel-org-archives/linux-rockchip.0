Return-Path: <SRS0=Db5J=MU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCCF8C432BE
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 12:30:26 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8D22C60C3E
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 12:30:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 8D22C60C3E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7O5eTWVocKx5FBmXvikYN6paDwV30V1r1TsLUVWYIjo=; b=s631hmuS5Zsbfb
	eTw8mXTfTDjNVDnhSt1fdJ70J0UF3vXRXZcKN5ZNX+UYZYhPGNJxygzQZq3Whg2RGrS2b4y+ca7fr
	32H2DI+7LUWIqcGUHxM0at++mSb6eSo1VsBXBzhIen1mqAVYfT2tkm7BKXKyFV754+NfLDrAcClzT
	XHrxc+b3psiWKj31QruALK6MZ0izyOmS4V/1Dowyslt91LKPHIeisWjLUFzNtVKfI5Sp+ZVB2+jmC
	0zimSHGIWNmMp0ZKMEVBcY+qOiKpvN9xexW/+ULJ+UNpCLkxO2v3a1yVZ5H0ssQyywB454ad8FnrK
	edNA7d88aK8bjVZpKShQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8ihb-000eWs-5y; Wed, 28 Jul 2021 12:30:23 +0000
Received: from mail-qk1-x732.google.com ([2607:f8b0:4864:20::732])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8idl-000chH-65; Wed, 28 Jul 2021 12:26:26 +0000
Received: by mail-qk1-x732.google.com with SMTP id az7so1955238qkb.5;
 Wed, 28 Jul 2021 05:26:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4uH698onlFb0zdOqNkiqHo9urf543v0Pr1mp3r+HBGM=;
 b=rIvE0rGozi1TOAqnrNqWmFKUQewYXNoEvkddzcR1KvaBj5AsmfR0SlhyLFeBQoiWM8
 XG5du8LWProFfKYgrgLhb1apwVLfl6+hGDApfA1A834L84OMAEilyisnYHmEHZaeFEQ9
 qad6GjjjA42xyAIAzuZtzFwFEACzEGxfXfzl5SS9mfv+XxawFMk3sY0D2iW1h4lDzsDj
 qJOP4XlI1d67FiD9ivMrL5RP8pC5JNTpOEXgQklF19eOtpJ+4bA5A3i0wuNVKjEfW3dS
 RdP5nR+d3NkIhTDpl2xiP2mH08Z5u6MVPidhQ56l7SVTeNsgOIHWnrP59muOeTS9ujaM
 uYwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4uH698onlFb0zdOqNkiqHo9urf543v0Pr1mp3r+HBGM=;
 b=Tdp8PBVDopwvXkIxDyKhCINcKj2w12r4Kpn4TrF7NLTJ/zESHtMdk7hQHipxfgelCw
 LzfRTbLNYKHSjb0uCkEVeH6/C76aGGPSOB7cjnxBhoXF/k3pg9LWd1QUvj2GR2v4HTv1
 mlNwT5iCIZfN4L8FC2sa8jUsgrr4FMEe5rad+NruvO54nxi6tecDRQVpTHzFyaolKW2n
 PdZkHGy8PZYiz1ms7hwNXj+jUJm1qPSOrK8nLm+sL/6jstMe7Xsr6zpGnQdyPedJvrlQ
 pHMn3grvRWGEeHM5yfn6pRAfy+u/Veqtw9GNR2/Q0F3uk5ZfgoVTRG+BSMJ/mXO+sxip
 a8/A==
X-Gm-Message-State: AOAM531HIvbSmkyVRFM1sry0DDrPMGbrvqds4IJLWRY+Xr4lrdCK6XkZ
 kYQoib/WXnTBGeu3u3DVsVlUPpezv3m7Vbuj
X-Google-Smtp-Source: ABdhPJxZkroOt8pi1Kf/X5/MO0H5rMQygepNgso+s1+n4QSswvJKlg5/LcDcgNIUHovgsjbXK1xLZw==
X-Received: by 2002:a05:620a:629:: with SMTP id
 9mr26258526qkv.501.1627475183679; 
 Wed, 28 Jul 2021 05:26:23 -0700 (PDT)
Received: from master-laptop.sparksnet ([2601:153:980:85b1:b58:2ae8:d75f:660a])
 by smtp.gmail.com with ESMTPSA id z9sm2842972qtn.54.2021.07.28.05.26.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Jul 2021 05:26:23 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, Peter Geis <pgwipeout@gmail.com>
Subject: [RFC PATCH 8/9] arm64: dts: rockchip: add usb2 nodes to rk3568 device
 tree
Date: Wed, 28 Jul 2021 08:26:05 -0400
Message-Id: <20210728122606.697619-9-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210728122606.697619-1-pgwipeout@gmail.com>
References: <20210728122606.697619-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_052625_308712_6E6A6B0B 
X-CRM114-Status: GOOD (  10.92  )
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
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 97 ++++++++++++++++++++++++
 1 file changed, 97 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 322971318d5a..ea254a58fc01 100644
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
+			 <&cru PCLK_USB>, <&usb2phy1>;
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
+			 <&cru PCLK_USB>, <&usb2phy1>;
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
+			 <&cru PCLK_USB>, <&usb2phy1>;
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
+			 <&cru PCLK_USB>, <&usb2phy1>;
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
@@ -738,6 +792,49 @@ saradc: saradc@fe720000 {
 		status = "disabled";
 	};
 
+	usb2phy0: usb2-phy@fe8a0000 {
+		compatible = "rockchip,rk3568-usb2phy";
+		reg = <0x0 0xfe8a0000 0x0 0x10000>;
+		clocks = <&pmucru CLK_USBPHY0_REF>;
+		clock-names = "phyclk";
+		#clock-cells = <0>;
+		clock-output-names = "usb480m_phy";
+		interrupts = <GIC_SPI 135 IRQ_TYPE_LEVEL_HIGH>;
+		rockchip,usbgrf = <&usb2phy0_grf>;
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
+		#clock-cells = <0>;
+		interrupts = <GIC_SPI 136 IRQ_TYPE_LEVEL_HIGH>;
+		rockchip,usbgrf = <&usb2phy1_grf>;
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

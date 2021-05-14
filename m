Return-Path: <SRS0=Se97=KJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 41792C433B4
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 10:27:56 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AD5A2613F2
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 10:27:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AD5A2613F2
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=manjaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gu0Q8wbeL6Nb74OOIKJik2Q7IKOmh6PipFz4gFqJ1Dc=; b=H6pJz/zrLTcN0+X3pzy/6ZGTb
	9fCSnPaly3WN+IVBXyAa7gNYo83BHWW9+cJMjlgcdApO7DPahegkBwUBrXnMDhcXXWlRrBjg+lA8o
	KVKJoARV82jeOAeWfvimqyC0sFkpWvhkdjmBEYUH+Plzbjd40lRym0S0Qzae3mQtQRO4mMTvA8EJK
	5P9Ki+QWxZpvAmr3qEeOUksXLaYbFsPFsPmonfY3aDhOHzX3Ll75y4AN7Cec7o7wQJ5I+m/Me7GM/
	SIxeWMfzj7UITUc1uWxooWzHgjHVhyk51lQfRexu+CMg1AIoUOTEZvt6vmvb0QqGGroQnV0WRNfQN
	Vho1bIZMg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lhV2t-007lUj-RV; Fri, 14 May 2021 10:27:51 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhV1t-007lBl-0E; Fri, 14 May 2021 10:26:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=Up75WIqfYRa4e4XU9rkSk2hZJTfa173xxi4NaJDcTxI=; b=0Xf0A+9+oNoT+WC3FTyzPX8oN4
 ZrUcEpGAf46+QzXPlvNh9TVJpp8/ARGn43bFyzRbEXVg6iAYOqP5oQ9LYWq0r7tUyQqtyPetURMzn
 clXcFVkLeRMvAHPu3qDIZ5oKCipcBC43hxuBTqhY6HNasmAi4ONGT/r4yseEoaRaLN1Fxr1DyN/ea
 PKh4kTksCw4YJDWigioizBY43EIG1jrymYjO8T7+Y1klMz1Ug4Mkj+H8pF9uiW6nZYeTrGSFdiNrK
 zl+TD3lrwe48IRLKNzIC2W/Kp4C2ONaLxr3QAEva+I53I1VhYfExRUcAmFigQ1UN55PKWpVIrOg6O
 eRnROPEA==;
Received: from mail.manjaro.org ([176.9.38.148])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhV1q-00BtgK-CX; Fri, 14 May 2021 10:26:47 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.manjaro.org (Postfix) with ESMTP id 0377B22259B;
 Fri, 14 May 2021 12:26:45 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at manjaro.org
Received: from mail.manjaro.org ([127.0.0.1])
 by localhost (manjaro.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ppF3dsjAFkFR; Fri, 14 May 2021 12:26:40 +0200 (CEST)
From: Tobias Schramm <t.schramm@manjaro.org>
To: linux-usb@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Tobias Schramm <t.schramm@manjaro.org>
Subject: [PATCH 4/4] arm64: dts: rockchip: add USB support to RK3308 dts
Date: Fri, 14 May 2021 12:27:34 +0200
Message-Id: <20210514102734.2091238-5-t.schramm@manjaro.org>
In-Reply-To: <20210514102734.2091238-1-t.schramm@manjaro.org>
References: <20210514102734.2091238-1-t.schramm@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210514_032646_596149_5E521D98 
X-CRM114-Status: UNSURE (   9.57  )
X-CRM114-Notice: Please train this message.
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

The Rockchip RK3308 features an integrated USB 2.0 phy, an USB OTG
controller and OHCI/EHCI interfaces.
This patch adds all of those to the RK3308 dtsi and thereby enables USB
support on the RK3308.

Signed-off-by: Tobias Schramm <t.schramm@manjaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3308.dtsi | 75 ++++++++++++++++++++++++
 1 file changed, 75 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
index 0c5fa9801e6f..80fd802d6c15 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
@@ -177,6 +177,43 @@ reboot-mode {
 		};
 	};
 
+	usb2phy_grf: syscon@ff008000 {
+		compatible = "rockchip,rk3308-usb2phy-grf", "syscon",
+			     "simple-mfd";
+		reg = <0x0 0xff008000 0x0 0x4000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		u2phy: usb2-phy@100 {
+			compatible = "rockchip,rk3308-usb2phy";
+			reg = <0x100 0x10>;
+			clocks = <&cru SCLK_USBPHY_REF>;
+			clock-names = "phyclk";
+			clock-output-names = "usb480m_phy";
+			#clock-cells = <0>;
+			assigned-clocks = <&cru USB480M>;
+			assigned-clock-parents = <&u2phy>;
+			status = "disabled";
+
+			u2phy_otg: otg-port {
+				#phy-cells = <0>;
+				interrupts = <GIC_SPI 67 IRQ_TYPE_LEVEL_HIGH>,
+					     <GIC_SPI 68 IRQ_TYPE_LEVEL_HIGH>,
+					     <GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>;
+				interrupt-names = "otg-bvalid", "otg-id",
+						  "linestate";
+				status = "disabled";
+			};
+
+			u2phy_host: host-port {
+				#phy-cells = <0>;
+				interrupts = <GIC_SPI 74 IRQ_TYPE_LEVEL_HIGH>;
+				interrupt-names = "linestate";
+				status = "disabled";
+			};
+		};
+	};
+
 	detect_grf: syscon@ff00b000 {
 		compatible = "rockchip,rk3308-detect-grf", "syscon", "simple-mfd";
 		reg = <0x0 0xff00b000 0x0 0x1000>;
@@ -579,6 +616,44 @@ spdif_tx: spdif-tx@ff3a0000 {
 		status = "disabled";
 	};
 
+	usb20_otg: usb@ff400000 {
+		compatible = "rockchip,rk3308-usb", "rockchip,rk3066-usb",
+			     "snps,dwc2";
+		reg = <0x0 0xff400000 0x0 0x40000>;
+		interrupts = <GIC_SPI 66 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru HCLK_OTG>;
+		clock-names = "otg";
+		dr_mode = "otg";
+		g-np-tx-fifo-size = <16>;
+		g-rx-fifo-size = <280>;
+		g-tx-fifo-size = <256 128 128 64 32 16>;
+		phys = <&u2phy_otg>;
+		phy-names = "usb2-phy";
+		status = "disabled";
+	};
+
+	usb_host_ehci: usb@ff440000 {
+		compatible = "generic-ehci";
+		reg = <0x0 0xff440000 0x0 0x10000>;
+		interrupts = <GIC_SPI 71 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru HCLK_HOST>, <&cru HCLK_HOST_ARB>, <&u2phy>;
+		clock-names = "usbhost", "arbiter", "utmi";
+		phys = <&u2phy_host>;
+		phy-names = "usb";
+		status = "disabled";
+	};
+
+	usb_host_ohci: usb@ff450000 {
+		compatible = "generic-ohci";
+		reg = <0x0 0xff450000 0x0 0x10000>;
+		interrupts = <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru HCLK_HOST>, <&cru HCLK_HOST_ARB>, <&u2phy>;
+		clock-names = "usbhost", "arbiter", "utmi";
+		phys = <&u2phy_host>;
+		phy-names = "usb";
+		status = "disabled";
+	};
+
 	sdmmc: mmc@ff480000 {
 		compatible = "rockchip,rk3308-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x0 0xff480000 0x0 0x4000>;
-- 
2.31.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

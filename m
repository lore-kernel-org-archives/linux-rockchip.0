Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFB2CC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Feb 2022 14:05:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9GTmNvs6M/L00zkurL5AHZSBKwcB2VzQuJx5vgwSups=; b=wXi23KGMQ+j6FL
	cX/Q8Ww+8MbYUSLQH8+puP3rU6lfQ6FJS5oinj7+WU3BR9U1OQGvCgmQyYeB3DMVSRYAIhYxw3EYc
	quSQ13lRtAmAHRcYRd2YwXkMhxIWn81OhwEl/86LJPCkeMnW8qVjGL7Y32nrzBbqFpzrLBGrbI777
	4sEtbzNqWMnJnJtWJOWueCBzsuk2OunoLoJ9opSwjqv+rTFD711iGNvtrP+RDMmqCL8ckISdpN+zW
	Ql9uCh+JkV8TxQP/TpnKAiqrHF8KU5bBjo/BbVKq49jR7pGel7jQrW55nD8jzGHuSaXVuFHRBlJDt
	Dv1MmKKqfKksi03BFw8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOgeE-00ClN6-Gl; Mon, 28 Feb 2022 14:05:10 +0000
Received: from mail-qv1-xf33.google.com ([2607:f8b0:4864:20::f33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOgWb-00CilB-Lx; Mon, 28 Feb 2022 13:57:20 +0000
Received: by mail-qv1-xf33.google.com with SMTP id j5so12469344qvs.13;
 Mon, 28 Feb 2022 05:57:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OHIHH7LBjO7n3w0TkyTvZ+CHhZPHMYRUZ96K/VbT0E0=;
 b=F6IhWmzb4cnHIFA1qIQwAvnKEQ1K2GIrl4xx2jcR9lR2UnMRm9NjHHo5JqKxIiRNtA
 Yo4UHxBL6ux+9oyJIsYGmeUoapDPI1Pk9TYmf3Db+2aIKZzv31/IhxZNzfZ5nng9APzo
 8ogBn4ijwd/hH6ypNhyN4iT5ZBqf3PsBGn+Lp2e5+KzM0SCTChaUXgjsZ4GL1V0pW1A0
 DeA9H60uYVywZ5vMHH9WSJ4XNrBBWCP5qYd1NfNn9VshJW0ZoEDVUfU6flaJjOME0qQw
 aPEWusYBUcw4KUbAcoxvsiH05fV/21oHvusB4BIIcwjRLS0mUJY2aYDgB9p0QDrLTxDk
 HWPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OHIHH7LBjO7n3w0TkyTvZ+CHhZPHMYRUZ96K/VbT0E0=;
 b=SKqHs6cy575btfBgQ2Hu5BA5orer4bH0cGgwyBPhhqmG6kFdRVGSYD6IpQovQ3kN/Q
 2IaBcOfDLe9iEMb+JLKCofhAqNsQbNlNQy+SzQplT0/lQ+q5Bqrb4iXwYw4kQ7kRjDSk
 ltjODinoml4exGqUCfse+vvYf2gvve2WoOdH4hndrbZ8vKUQ4kN7ryWTWs2jemsLafGu
 7IH+VVKUiuGcVWPrVHapB4yWPFCuROz5MyvJ1Kgc6dbxEZyM6Pw2Ph/WTtVWYdbXx565
 h4IuG0Bn+DmlIn67jNI1n82natEgv/VwJLww6YDHSZgRER8z6XjYMf7l3+pAuxp/Jgu7
 QMOg==
X-Gm-Message-State: AOAM531qGHe9Af36PLvXWl8DCK+mrpZ8gPwj3u+5mT4qeMj2jKIBDqwH
 pue8/pCd5/2eD4eDpkumCrW9fEZwzC65KQ==
X-Google-Smtp-Source: ABdhPJzXNKADtw0ku6kOnCLRqxDyPgG/YOnDyvyNoSYZ7y5E38ghaI+xQtmpImP6Kw6m2PtIBFhRTw==
X-Received: by 2002:ac8:5fd1:0:b0:2d4:d8ee:84d3 with SMTP id
 k17-20020ac85fd1000000b002d4d8ee84d3mr16473255qta.147.1646056635478; 
 Mon, 28 Feb 2022 05:57:15 -0800 (PST)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 b8-20020a05620a088800b00648bfd00a41sm4932244qka.80.2022.02.28.05.57.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Feb 2022 05:57:15 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, michael.riesch@wolfvision.net,
 jbx6244@gmail.com, Sascha Hauer <s.hauer@pengutronix.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v4 8/8] arm64: dts: rockchip: add usb3 support to
 rk3568-evb1-v10
Date: Mon, 28 Feb 2022 08:56:59 -0500
Message-Id: <20220228135700.1089526-9-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220228135700.1089526-1-pgwipeout@gmail.com>
References: <20220228135700.1089526-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_055717_836729_1E2B7C75 
X-CRM114-Status: GOOD (  10.88  )
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

From: Michael Riesch <michael.riesch@wolfvision.net>

The Rockchip RK3568 EVB1 features one USB 3.0 device-only
(USB 2.0 OTG) port and one USB 3.0 host-only port.
Activate the USB 3.0 controller nodes and phy nodes in the
device tree.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 .../boot/dts/rockchip/rk3568-evb1-v10.dts     | 46 +++++++++++++++++++
 1 file changed, 46 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
index a794a0ea5c70..622be8be9813 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
@@ -103,6 +103,18 @@ vcc5v0_usb_host: vcc5v0-usb-host {
 		vin-supply = <&vcc5v0_usb>;
 	};
 
+	vcc5v0_usb_otg: vcc5v0-usb-otg {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio0 RK_PA5 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc5v0_usb_otg_en>;
+		regulator-name = "vcc5v0_usb_otg";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc5v0_usb>;
+	};
+
 	vcc3v3_lcd0_n: vcc3v3-lcd0-n {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc3v3_lcd0_n";
@@ -136,6 +148,14 @@ regulator-state-mem {
 	};
 };
 
+&combphy0 {
+	status = "okay";
+};
+
+&combphy1 {
+	status = "okay";
+};
+
 &cpu0 {
 	cpu-supply = <&vdd_cpu>;
 };
@@ -507,6 +527,9 @@ usb {
 		vcc5v0_usb_host_en: vcc5v0_usb_host_en {
 			rockchip,pins = <0 RK_PA6 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
+		vcc5v0_usb_otg_en: vcc5v0_usb_otg_en {
+			rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
 	};
 };
 
@@ -568,6 +591,11 @@ &usb_host0_ohci {
 	status = "okay";
 };
 
+&usb_host0_xhci {
+	extcon = <&usb2phy0>;
+	status = "okay";
+};
+
 &usb_host1_ehci {
 	status = "okay";
 };
@@ -576,6 +604,24 @@ &usb_host1_ohci {
 	status = "okay";
 };
 
+&usb_host1_xhci {
+	status = "okay";
+};
+
+&usb2phy0 {
+	status = "okay";
+};
+
+&usb2phy0_host {
+	phy-supply = <&vcc5v0_usb_host>;
+	status = "okay";
+};
+
+&usb2phy0_otg {
+	vbus-supply = <&vcc5v0_usb_otg>;
+	status = "okay";
+};
+
 &usb2phy1 {
 	status = "okay";
 };
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

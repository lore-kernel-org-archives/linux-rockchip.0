Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11ECFC433F5
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Feb 2022 15:32:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9GTmNvs6M/L00zkurL5AHZSBKwcB2VzQuJx5vgwSups=; b=RfJOU8KfTVdChZ
	94Bfs9oXcCx0gSS/6Y2o7s/zPpXLDXpl/QcFWvHXldi8AkcMeWfTcNPmZna/Tysnexcn4L1UiGcAx
	wPUmreiKoKKVEzZupT+vvxFe+gMo9znmeNtYp/u50jExLS2koxPncRcxA3kLPK3vXJDXk5/NplZ7w
	uV7+ALjiZ+UiaemfAnyYRa0kiP0TW3ny+BwYfqh3vZWbpXruxF618r7kxma4F2HmqNLSUp7T1BXUY
	x7jky9Eas3qbwe7enOeep93RBuoQgIDkC2i9cAXH75wzcB5Luurnrl575ZNfxZbQe8a+dm+scCUZj
	/unkoA8j6AhVz8IcXqnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOLWi-009a5R-QM; Sun, 27 Feb 2022 15:32:00 +0000
Received: from mail-qk1-x72b.google.com ([2607:f8b0:4864:20::72b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOLVE-009ZDX-7h; Sun, 27 Feb 2022 15:30:30 +0000
Received: by mail-qk1-x72b.google.com with SMTP id j78so8598487qke.2;
 Sun, 27 Feb 2022 07:30:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OHIHH7LBjO7n3w0TkyTvZ+CHhZPHMYRUZ96K/VbT0E0=;
 b=dqo1I6grQ/gBiqH+YPs7rXzhBD+bYuTqGeeOaI1GieS/LuXuyYCOf4SDuoUihIgUKI
 wmB98GeiOf2BtGiD47F0s2369fXjh0kq6UMFZp8ZioU4oEmdcbksndvsD8my0ClMng4H
 KrtuQYss4Pw3Ltj2HJsJWXw6ykBZp1gHzox4ECvCsN13uy4xpInoE94UI9kGZyWBcA9Y
 ogmnGkDDmzEInz6Um7XAIbKyAEnB3gfq+AAC4skkXDrTBS2bSNgEg2HXzP5AOPiJu1zF
 dR1ElE9m03h4tuNnBDpHnqSfOR5pZ27Js4ThB+oodojxkhohDSCGnIGcqnokDnjVqPcR
 I9Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OHIHH7LBjO7n3w0TkyTvZ+CHhZPHMYRUZ96K/VbT0E0=;
 b=5/a1SBrwqPSiIHl4629KrGvQsufxHV7XbqjDcCUvGwumDh61avJUFPTfiuOKSjj2D4
 6LQX23vySJ9tomxnyq6puP/d/SJrXDQZ27qkES6WpIn87LYZxREHWoWRcYota+jtNfu8
 8zrHYyJeLOiR5Siuwa+4WEo2SpUgLQHJOhERcQmbD7CJndprCDsSqYZYJ6496W7SnXx6
 SwNOZLeD3H9DkJBfk+X1HLPzNf6FsqkJUY+AQb5s/ushjFS8chWKheOQU0Vv1ogS+rIe
 lTrHGbFyrV+QfcUYrv+qkPzlW/x6CNPDk5Jhs+7Uhyfb5QQTLsRiFvQGZ3N7rnbUg161
 cY3g==
X-Gm-Message-State: AOAM533eubXfT5leX9J7HtdQFOiFyyIrqDnj6EkquXOG7OYHRscyN8Az
 IkAh+eODIH+CigtA94Khmwc=
X-Google-Smtp-Source: ABdhPJxTAoe1idnBUg1yVcCCX5Wrzu4GMifkspHde49AFZZ3QzRabhGZqebkFr/DuC/6AhlQinm6+Q==
X-Received: by 2002:a05:620a:13d1:b0:5f1:788d:cac9 with SMTP id
 g17-20020a05620a13d100b005f1788dcac9mr9478022qkl.608.1645975825899; 
 Sun, 27 Feb 2022 07:30:25 -0800 (PST)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 s10-20020a05620a080a00b0062ce6f3f5d7sm3845767qks.16.2022.02.27.07.30.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 27 Feb 2022 07:30:25 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, michael.riesch@wolfvision.net,
 jbx6244@gmail.com, Sascha Hauer <s.hauer@pengutronix.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3 7/7] arm64: dts: rockchip: add usb3 support to
 rk3568-evb1-v10
Date: Sun, 27 Feb 2022 10:30:16 -0500
Message-Id: <20220227153016.950473-8-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220227153016.950473-1-pgwipeout@gmail.com>
References: <20220227153016.950473-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220227_073028_308347_4EB65190 
X-CRM114-Status: GOOD (  11.25  )
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

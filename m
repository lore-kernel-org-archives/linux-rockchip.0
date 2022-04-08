Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 833ABC433F5
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Apr 2022 15:15:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9GTmNvs6M/L00zkurL5AHZSBKwcB2VzQuJx5vgwSups=; b=J9FZYNE4LlIYlw
	5s2KDFSum3cxJ9ZTpkes4Pjt3ON89CKB/6XyGBfflCh/OtPksTS8kBTgJVOESt1NZcW1WNSqEjE9X
	mrecv7fi+eOvetAdflHJu5VGwoicqOS/f7hXEGEajZqOpRAxPuW07f5YNT4JjA0xC/9VATLZdQ6zH
	yvJM95Myivzt0I1KbY3tlsi5PIUm3G+1TJBrorGjVcX61aFO50XKRsPA+7lPECdiJ75vOqo8c2itl
	OO9WhbkNhYFz9BeIpdkBaiO03ZkvSypUmmr+ZPacQEcJYXq4XwFYJNN7AyIFR3qjOgjXctOagVFT/
	Ik5Aomd2sMS23c16Paxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ncqK9-000CtC-6k; Fri, 08 Apr 2022 15:14:57 +0000
Received: from mail-qk1-x729.google.com ([2607:f8b0:4864:20::729])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncqI4-000BlN-S5; Fri, 08 Apr 2022 15:12:50 +0000
Received: by mail-qk1-x729.google.com with SMTP id v13so5023997qkv.3;
 Fri, 08 Apr 2022 08:12:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OHIHH7LBjO7n3w0TkyTvZ+CHhZPHMYRUZ96K/VbT0E0=;
 b=MMMg/MMY5cbKMYBNeQ+Fkz+rHwKfKIaAdKf+u/3iJedRJdm+2+1Y2/eIatpIU5jSpO
 yFY33ZFWVtvkFiIHZbCtBhakZXh9JVNEwcBWEJ9R/MUrqgKe8HMMcQHfoFPhoMzrcF5W
 wSPCdZ0Ia95qDsVnWzNn1nWZ+wfI5iCZbOMIRag/vacyytKiioYxsmodBfdMXfpF85aL
 N2RiwEVwdFjQxUn/q8R8ToAt4Uet4AfobcdWwx0qEVdjrm1sAeXFg/gLFE1K/oh71MNq
 MyQtne9Bw8jrJxkfCcF8SkUwpWLQdnsvhK/ZA9FWh9BMcRPta1P22DrV6yMG5TufN5MZ
 c3vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OHIHH7LBjO7n3w0TkyTvZ+CHhZPHMYRUZ96K/VbT0E0=;
 b=MFIrZRExjaNtOeSLTz/AnWzxKGa4SAM4hPVJ/yQxMawHJEucPxM09ejiu3YotD59wc
 KIKE14/uszH3UcHKy7xKoh9xnsj29kzBWYK0PmKk6tNH0q9Wa2KU3+iW9+obvTmdwARn
 ZYjA7pmZ02rMCcrtvuwHNJbrgH2NAXAr+qoaIFzVmVDHVeA1e3zJMWhfxoOXxaN2SsC2
 YQSR+fnpVCQTuWrYXUcFWc5oegu6dZuOTk7HhpoVLv8kJEXvdgUxDUAX8CYvaiiyo4Yf
 Ur3PENNE+t84tx9ghSXt2wkrweM9Tg2gRJzwQA0ayWMUwU8M8FO2WFoYQ7KEr+/xQimU
 yC+Q==
X-Gm-Message-State: AOAM531Gjmg24x6kKPOLcHG+Xqq/S53pOiYJ1yDfyI+z8PA7t4lTsUk+
 cW3vMwWQNbAywrZQgeAgSxs=
X-Google-Smtp-Source: ABdhPJxTudTqPR/+KoxaJhqcjN0s/VoySgsi3tEWDwUorfhaM8rB6bSIoVnz/XkHzepwTkSL6CzaFg==
X-Received: by 2002:a37:67c5:0:b0:69b:ed21:e345 with SMTP id
 b188-20020a3767c5000000b0069bed21e345mr1074947qkc.732.1649430766325; 
 Fri, 08 Apr 2022 08:12:46 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 191-20020a3707c8000000b0069a13545fcfsm2266052qkh.123.2022.04.08.08.12.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Apr 2022 08:12:46 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sascha Hauer <s.hauer@pengutronix.de>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v5 5/5] arm64: dts: rockchip: add usb3 support to
 rk3568-evb1-v10
Date: Fri,  8 Apr 2022 11:12:37 -0400
Message-Id: <20220408151237.3165046-6-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220408151237.3165046-1-pgwipeout@gmail.com>
References: <20220408151237.3165046-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220408_081249_074717_000A60B9 
X-CRM114-Status: GOOD (  11.31  )
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

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A3ACC433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Feb 2022 15:31:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9KxCqUP8KHtnT5cH1LouzM0lxrfHva+JudWjCieg+KU=; b=VlB5zdQveh5M5Y
	zqtgmhdIsJ11SvROlbYWapNVD2NCTEs/raA/lhaxXKtFKATH6OiDrwiSfAGPqlaGUFupMqwVJhb3X
	zv9JCEkB29MYu6keM5R1yaOnJo4Ho++mCh73FtpNA1a5NyPkfYmip4WZyLPSrJXN29BIRX5wRVjOU
	su6RsaTQ/KGWls3A2EWXTSkFfpg9f46MglAFmorPGMYNHZEOsyju6qJ13AJfE1RfC7/Y23j+EL+D7
	lIZoB2XJkJFCkWEuRfHk/nNahEnXG5L5HB4L+g3OxVCc51isSOYr0xD6XaFCpC6w+MnYQI5Euttpe
	Z37y8vp5awv6g/lJnj9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOLWN-009Zrr-Ef; Sun, 27 Feb 2022 15:31:39 +0000
Received: from mail-qv1-xf36.google.com ([2607:f8b0:4864:20::f36])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOLVC-009ZCm-9A; Sun, 27 Feb 2022 15:30:28 +0000
Received: by mail-qv1-xf36.google.com with SMTP id j11so10689897qvy.0;
 Sun, 27 Feb 2022 07:30:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BiTCbZuuiqDpXPtBKnm7lrk6/Udlslh2uUBYoU46tJs=;
 b=jB3Bs3EV7b0tr5aaW5H0aQJpL0R6c0th6nflIfkIMfh7+LtdtG6Xw1wKMNP2PB6mXz
 W2OWFdKU3BUxOPUOvWmMJXtyIYKOSyuyHXdsbVI1wJo9QwajPFmLS/N1nLv0C2fcLYM2
 XhkiM2NHARQvwkultLQ9CtaaYUmg9fwU+UoTJCZgP1mOJAZ+AFlreNX8QrteZXz4XHU2
 Qyo1/ninC7R1yfazUCgmd/+/VweK14yyTyjtwFQYPcDHXkAsiFKCgDl893uPC4cOsBnW
 1DYiHipAFQ9l/Xni1uHkUXRk49bDIWdGUXilsi5MVbTrq4EIyZ77CPTtKul4FC3yIqIq
 wk6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BiTCbZuuiqDpXPtBKnm7lrk6/Udlslh2uUBYoU46tJs=;
 b=W6CnH+B6vr/SUGUyQDsdaZ9bSVeh1Ce3Aj8voCVS1jShiNRwdO1/d0lFb70ug0KZM9
 WRfOYbdwKhZ7Iokt9aDIi9xfbgzaUYFY9YY/nX9jJxWzsLBbQgm+qDbbr3DvUiXN2EUx
 q0Dwgsmyt6Ul73Gj1m5arXapn8sUTA4H6bJSF/orVI3DO+80RYKHRXy6F6UiXSUS9MW1
 lF1VsdJgpleY6upeP77E7lrhfC7u+5JuQS3JNTx7T6LaGTgjdhlMq+yjZ+tyRH2ywP/a
 CROfgKK8YhcvqcoxgBTdHjMyEit350mVP1FJJFhDm6gLFqxbLyO+/Myb25F+4AKM/TbB
 oDCg==
X-Gm-Message-State: AOAM531yklTikiB7xGsdX7rvzWY8YBEDIEwZ2mlJr0VdmtqITCdBMsf4
 Ow2U3CbNpPnwHQl8X2U9S50=
X-Google-Smtp-Source: ABdhPJwhzzsUbaNu2GNX6hG+7RoLI3yIs08T4UJS9HpfV7hEI+6/L92WLdLG9Tvw6hv3JRe9TJVqnQ==
X-Received: by 2002:ad4:596e:0:b0:42c:33e4:e496 with SMTP id
 eq14-20020ad4596e000000b0042c33e4e496mr11539543qvb.35.1645975824958; 
 Sun, 27 Feb 2022 07:30:24 -0800 (PST)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 s10-20020a05620a080a00b0062ce6f3f5d7sm3845767qks.16.2022.02.27.07.30.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 27 Feb 2022 07:30:24 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, michael.riesch@wolfvision.net,
 jbx6244@gmail.com, Peter Geis <pgwipeout@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3 6/7] arm64: dts: rockchip: enable dwc3 on quartz64-a
Date: Sun, 27 Feb 2022 10:30:15 -0500
Message-Id: <20220227153016.950473-7-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220227153016.950473-1-pgwipeout@gmail.com>
References: <20220227153016.950473-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220227_073026_347358_0522ED8E 
X-CRM114-Status: GOOD (  11.56  )
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

The quartz64 model a has support for both the dwc3 otg port and the dwc3
host port. Add the otg power supply and dwc3 nodes to the device tree to
enable support for these.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 .../boot/dts/rockchip/rk3566-quartz64-a.dts   | 37 +++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
index dd7f4b9b686b..141a433429b5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
@@ -151,6 +151,16 @@ vcc5v0_usb20_host: vcc5v0_usb20_host {
 		vin-supply = <&vcc5v0_usb>;
 	};
 
+	vcc5v0_usb20_otg: vcc5v0_usb20_otg {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio4 RK_PB5 GPIO_ACTIVE_HIGH>;
+		regulator-name = "vcc5v0_usb20_otg";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&dcdc_boost>;
+	};
+
 	vcc3v3_sd: vcc3v3_sd {
 		compatible = "regulator-fixed";
 		enable-active-low;
@@ -187,6 +197,10 @@ vcc_wl: vcc_wl {
 	};
 };
 
+&combphy1 {
+	status = "okay";
+};
+
 &cpu0 {
 	cpu-supply = <&vdd_cpu>;
 };
@@ -672,6 +686,29 @@ &usb_host1_ohci {
 	status = "okay";
 };
 
+&usb_host0_xhci {
+	status = "okay";
+};
+
+/* usb3 controller is muxed with sata1 */
+&usb_host1_xhci {
+	status = "okay";
+};
+
+&usb2phy0 {
+	status = "okay";
+};
+
+&usb2phy0_host {
+	phy-supply = <&vcc5v0_usb20_host>;
+	status = "okay";
+};
+
+&usb2phy0_otg {
+	phy-supply = <&vcc5v0_usb20_otg>;
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

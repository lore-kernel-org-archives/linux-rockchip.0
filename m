Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9614C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Apr 2022 15:13:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9KxCqUP8KHtnT5cH1LouzM0lxrfHva+JudWjCieg+KU=; b=AqmELwyRaKhmay
	nr0d6GBsrbLxSDWh3wnM1gFV8obwkDlAVi9fVVJNIlN4Pe1vX57h2BnUGtXeDPXNR2DmzSA7lzvOk
	qAqfkBUDIlfxlbMGcX3GkOSyMpKbVACk3EaaV7fzazIfcHwwuSBXcMH9Fsiv6EbPgyeJX1EEjNky0
	q/biV2+P1utWpsAJNl2/nazMLlK5qqwWEie+Dp8lM8cj61xxHYreuxDllTohflDFSdbk4Ez4sjKip
	W7QwARJMa4nphea/h8wXqOoKIakYcLWu0ca7eoCMJP6pP9WKbkKHs6TIiu3u/J04wANi8afRPMMwu
	oI5MfYGZbIftGQYHmyYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ncqIj-000C63-NB; Fri, 08 Apr 2022 15:13:29 +0000
Received: from mail-qt1-x833.google.com ([2607:f8b0:4864:20::833])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncqI3-000Bkv-FI; Fri, 08 Apr 2022 15:12:49 +0000
Received: by mail-qt1-x833.google.com with SMTP id t2so10828397qtw.9;
 Fri, 08 Apr 2022 08:12:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BiTCbZuuiqDpXPtBKnm7lrk6/Udlslh2uUBYoU46tJs=;
 b=mbS4q19oIqjAQ62E/SZBSAS+VQIoZvxk+Lvp/grvWdLSp1HSOjFEPHff+FMIPeer47
 ZTtnIRo7fEiU88/vZmzjyRJGJAnUet7X+rkS/8K3MzFektq6sA8aK2HLGW3AOHFZZVOm
 1tbnwiFwgBiEyC0e0JUnY1SF+1lHuSD2IioJQccwK5XE24rU0dTV3NawdCQD3o0Vkl3Y
 Pv1F9cPRFLNNWorCW6K8QglPWTwwGNXyGuKMT8Gdd+0aW0EROo5D5gyZzSvueyD9IEUA
 pv2KqNKRfPWeQaxsgaIkCbpSKmXxwRHN1G+aFCGb/IMkNTtPOBcwwtneyAOwMSUdjB/Y
 JhPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BiTCbZuuiqDpXPtBKnm7lrk6/Udlslh2uUBYoU46tJs=;
 b=ji7HdNbU5JshDr2oA6I44yp0xjorblK0yHdzeMqHJlvJ4H5tg52xcYzSFGW0IoR9kl
 YeRJ8vKtP931u/3BYskl8TQsBTcPOpX+CgQheHdTP7CHiVVEbqI0+qphDgABO89NbTtG
 0Rds5kTcuKGVfzrjdB//rpbPzKj09hVGFMwaf6Q1Rlb0xdVRduCzMRnbRz4f1WdgyZ7h
 As7Q9Cs1gHrCdaBl26KLYAF7BSFHJjuhOFpJSgVRZzXP51R3PQaZKQs2EzQ8AqvNb+xC
 nRUIdpuv28syUH0ZORrhsMmV8AhgNBq8T/LuafwGDqkZYM+7cnDb6TYRR/Lpnd6DTpJQ
 b+zQ==
X-Gm-Message-State: AOAM532eDauKqkDibVIEQOqnU+p863Ha/TpNHQ35pNLO9d7CX0DlmUCo
 XNYfHYidTbeKvqYoHMOnf/Kv+lwKix7HmeKb
X-Google-Smtp-Source: ABdhPJxfCAacR/8MMW94Q5F36iZ+s7P9L3sPX/KHUxhf9Szg+AfYfAADj3i67pPKqBOD9hxbtum3Kw==
X-Received: by 2002:a05:622a:1894:b0:2e1:cbdb:8b74 with SMTP id
 v20-20020a05622a189400b002e1cbdb8b74mr15793603qtc.643.1649430765418; 
 Fri, 08 Apr 2022 08:12:45 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 191-20020a3707c8000000b0069a13545fcfsm2266052qkh.123.2022.04.08.08.12.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Apr 2022 08:12:45 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, Peter Geis <pgwipeout@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v5 4/5] arm64: dts: rockchip: enable dwc3 on quartz64-a
Date: Fri,  8 Apr 2022 11:12:36 -0400
Message-Id: <20220408151237.3165046-5-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220408151237.3165046-1-pgwipeout@gmail.com>
References: <20220408151237.3165046-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220408_081247_569515_90ADA12F 
X-CRM114-Status: GOOD (  11.67  )
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

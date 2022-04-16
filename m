Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A3DFC433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Apr 2022 09:02:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9GTmNvs6M/L00zkurL5AHZSBKwcB2VzQuJx5vgwSups=; b=EEOsAwvlhi+yqw
	xBLRt4IVY58el/1wTCvzcGeU+hZuE3leMeGfumBsoh44YfczkRTHcrQsj73a1AhMPDCsP0vmOOhGe
	Jn++RodN6L/1xT+ciEwJ8LB1dhRZ6Ulrn2qHFPdT0Js0PG727Leo8Qvq40T6Ov1LujEOg1bdX1U5j
	m09TkEmTfUj2HFUWlmyS9zBk7eNAFHI+PhpV2sXqnf8SCXp2UBNpMpKSG91qRjJ3gsB1ZMqj6ZF/T
	RtSuQEsAdRWzFItuVvxZb6fertyUboMLtEumyWcleO6I/u2KMcluf8YjP6XLJ/6SYvSUSDoFUxyRn
	Hc5oRwiDUHkU4/oIVa/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nfeJt-00CYPd-V7; Sat, 16 Apr 2022 09:02:18 +0000
Received: from mail-qv1-xf34.google.com ([2607:f8b0:4864:20::f34])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nfeJh-00CYK6-Op; Sat, 16 Apr 2022 09:02:07 +0000
Received: by mail-qv1-xf34.google.com with SMTP id kl29so7847078qvb.2;
 Sat, 16 Apr 2022 02:02:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OHIHH7LBjO7n3w0TkyTvZ+CHhZPHMYRUZ96K/VbT0E0=;
 b=iEN3ZCVaS/t/rWCo/X/zbmS+TjDfAMD6Cpvna9HLhP+x6o6ZYla5+H0GhKvSS5rkNP
 8ikamagqu15rha3O9npox2er4Nlo0Hn7ck8poWqBP/q72eCOKEY/dfZt4n41DYaOXrMp
 EDwEY8QW0e7FKJ8/isjurvCHIKVg+t8SYaanJRsQ2GTh/Xk7Tk9iTdHIqZ2hnCIihenU
 q+gEjJfKEWbPvQw1Pk47xBBn46/Sof/bvznKDvCqWTND5RbtxfUHpVMZ9XA0YrWq9JBj
 OR9G+IgS/PA/CTIH4SeRb1oG9054zyGVN9LGAXNtVnduvG9YGfhtywCIy+He6L9mMd9g
 mbvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OHIHH7LBjO7n3w0TkyTvZ+CHhZPHMYRUZ96K/VbT0E0=;
 b=Ns0woLA+vCNLrxjYBzdxSo+80AHZX8wSPGh3jNpsHNfhOoBQy+3qQwydvxkyZL9YE4
 ahv3ZpIzEaBcarmuND/1IWZb5zg3d3E4aRE0WAR+3aXtq9UXSlrH1V3Ee2VAP7fUmRo7
 c5KZ9xLE37x2jBKUuukDCPNnlDlkmV6n+VutidfvtVo0qtDkTv9ultJBvYr/W6miPaQ/
 bJKEGIYtOfAHWM6AfJy07T4c0b/XNUoGyHOtmj1MMZ6Lgt2oduDblMm9BCuv+LTx7Kkm
 tsBljA0MtCpjwC3tutq+uWvr6XN+m9b1oj6aGdWbcBB6ALiSn9lt739HsvEZm+99xwqi
 mNTQ==
X-Gm-Message-State: AOAM530wXcmHyaagKiWUFsbZEhWGylTt+gmEaBygsfM+XOWhssg0/XUM
 r+xcNcKC15QTWP0sa9TOp1A=
X-Google-Smtp-Source: ABdhPJwpTvo4039/1P9AMC+MpCNIKVZR96KS8e9MCcSnpiwoRZMepeQPw0q+y1JNs/94Sh5JjUSMwQ==
X-Received: by 2002:a05:6214:e4a:b0:444:28a7:9fb7 with SMTP id
 o10-20020a0562140e4a00b0044428a79fb7mr1733610qvc.30.1650099724058; 
 Sat, 16 Apr 2022 02:02:04 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 o6-20020a05622a044600b002e1b9be8e6fsm4258085qtx.36.2022.04.16.02.02.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 16 Apr 2022 02:02:03 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
 Michael Riesch <michael.riesch@wolfvision.net>, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH v4 1/4] arm64: dts: rockchip: add usb3 support to
 rk3568-evb1-v10
Date: Sat, 16 Apr 2022 05:01:56 -0400
Message-Id: <20220416090159.596930-2-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220416090159.596930-1-pgwipeout@gmail.com>
References: <20220416090159.596930-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220416_020205_844989_74BE9C5B 
X-CRM114-Status: GOOD (  11.23  )
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

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6F4AD10BF5
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Oct 2024 10:03:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hwTtx+o14KopXQ8gFfl07T6lEhtOfmTZPjqwjwxPr1c=; b=riaoQRDkb1b9Tz
	ir5K9imN6iFwpKSsroAV6b0oAvVFR1Ez5KOqWmULMO3QOHOjo6RX2qYHJUWf3iNQrHxMNrilkwqEc
	7tJ8d0EXKFEsFYj/dAURuKlEJ1XhG2yzQEKuFKWQ2V0gefWYy/lba8/MeFuN+suOQSjgeaJsWzYTU
	xfSbHIv3YtIKemrNIc8yJeZ82FU82eoeBG/wuFD+8dNDpAwouKxG3yQ26MIPW02FwhFrCqtNhRJx3
	iWI7PGitWg24vYL8qhAIUPxPoa3jQggEC51gEgrHYOd7tE0bksE140H648NBIAtIfyKXMoiYR+SsR
	eC2uN4P3xcxXt68WiQpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t4deF-00000006L1b-0bLx;
	Sat, 26 Oct 2024 10:03:55 +0000
Received: from mail-ot1-x32e.google.com ([2607:f8b0:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t4de8-00000006Kw5-2O7a
	for linux-rockchip@lists.infradead.org;
	Sat, 26 Oct 2024 10:03:51 +0000
Received: by mail-ot1-x32e.google.com with SMTP id 46e09a7af769-7180dc76075so1511337a34.3
        for <linux-rockchip@lists.infradead.org>; Sat, 26 Oct 2024 03:03:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729937028; x=1730541828; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cqKRUAcew9KonltBOUBQFqsl33gHXPHUiMeMosYb4xw=;
        b=LOagOLLSViEfbdKshKvAyF3aogzDO1aploQwydEUNlR7Un/MkC7SZ1BgzhL+eBweUL
         rf7OaVA/O6PagSQNpB15+eioYUbWufr9lPSucQ9Ktv/6tSUxXIKAB2KVIl1lYVZOqub1
         Hd8fzkOgSM03TtnSILi/TLeIBYtTU283zKWwHS/4cyT0fgwM9YTNWfRaVbRXi8cBOjRb
         mpa9LDTCMd8IowGExooWnTpqv6gGt6RCT1IfK0P0WHheX8D92N9Vc9Cr4tU2b+iEJ7Wz
         Otf2qfDLAB4Fo3q2N9y/Gwly/5fwNluWFGw1CFuH7xLPKf1JNV3pnd/I49FnJCZrbawB
         TOmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729937028; x=1730541828;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cqKRUAcew9KonltBOUBQFqsl33gHXPHUiMeMosYb4xw=;
        b=i+knZxDFYGvWt6OEwIl3UZm8FckkfWN5X8uq0ISU37oJFZSMPFnizDJdCVyyhkWN+k
         h+QcDamps7ZkL+FuQQ/9kc3OQtCDdd+1oYVWkQy0llRRd15b2HpJ/phhySGo4CbqBXVW
         ckB1GqAzqqneHzS09QFCRQKSZV0tioRDNIKcWpoHz8DGHsnqRyX66N+CskAFtP/8ZSe8
         YFskeuKr+kLwx3IMFx53O1OcaF0TjONMRSIBWuTg+a73l96DAopxMG6ezXJObMHD1Sha
         448EvVMr5fP6rZNd17pXC/5KcXAEPzL7hdfcnFrvNKZwRMUyqIx7+5X5J6U2aHj3Ys5P
         a6Sw==
X-Forwarded-Encrypted: i=1; AJvYcCUKd1bzKnGkXu2mPozyg0m42wyTYomn+58nILDXYGIZuDs8mfm8rxkDGaK+VaEIJkg2DpYfx2Z636dUN20GDw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxZ34Y0XtdwWNnozu+tNKQqJ77820Yzj7+JEd8EU1uy4s6KYQp1
	7BbhWJWgCLA/ek6lrMvVZHvCLfPlQ6R4ICvY6eIAnIEWRpvENg0x
X-Google-Smtp-Source: AGHT+IFCbN/6oVsJSiSHWOdIrqJzSfHJV6TmzF/QiS/d/ijeIllfKbgOG3iUATFoIMwXmAk0C5Skww==
X-Received: by 2002:a05:6830:600e:b0:718:441b:d4cb with SMTP id 46e09a7af769-71867e6a8b0mr2800045a34.0.1729937027822;
        Sat, 26 Oct 2024 03:03:47 -0700 (PDT)
Received: from tower.cjhon.com ([2603:8081:ad40:11:cefb:5eea:7da6:3c6d])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7186165841asm632243a34.48.2024.10.26.03.03.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Oct 2024 03:03:46 -0700 (PDT)
From: Jimmy Hon <honyuenkwun@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-rockchip@lists.infradead.org,
	Ondrej Jirman <megi@xff.cz>,
	Jimmy Hon <honyuenkwun@gmail.com>
Subject: [PATCH 10/15] arm64: dts: rockchip: add upper USB3 port to opi5max
Date: Sat, 26 Oct 2024 04:48:26 -0500
Message-ID: <20241026100310.52679-11-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241026100310.52679-1-honyuenkwun@gmail.com>
References: <20241026100310.52679-1-honyuenkwun@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241026_030348_829053_97E81846 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

Enable full support (XHCI) for the upper USB3 port from Orange Pi 5 Max.

Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
---
 .../dts/rockchip/rk3588-orangepi-5-max.dts    | 37 +++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts
index f32e5827dce6..39d2a38710df 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts
@@ -127,6 +127,21 @@ vcc5v0_host: vcc5v0-host-regulator {
 		regulator-max-microvolt = <5000000>;
 		vin-supply = <&vcc5v0_sys>;
 	};
+
+	vcc5v0_usb30_otg: vcc5v0-usb30-otg-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		/* USB_OTG_PWREN */
+		gpios = <&gpio4 RK_PB3 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&usb_otg_pwren>;
+		regulator-name = "vcc5v0_usb30_otg";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
 };
 
 &combphy2_psu {
@@ -251,6 +266,10 @@ usb {
 		usb_host_pwren: usb-host-pwren {
 			rockchip,pins = <3 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
+
+		usb_otg_pwren: usb-otg-pwren {
+			rockchip,pins = <4 RK_PB3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
 	};
 };
 
@@ -636,6 +655,15 @@ &tsadc {
 	status = "okay";
 };
 
+&u2phy0 {
+	status = "okay";
+};
+
+&u2phy0_otg {
+	phy-supply = <&vcc5v0_usb30_otg>;
+	status = "okay";
+};
+
 &u2phy1 {
 	status = "okay";
 };
@@ -668,6 +696,10 @@ &uart2 {
 	status = "okay";
 };
 
+&usbdp_phy0 {
+	status = "okay";
+};
+
 &usbdp_phy1 {
 	status = "okay";
 };
@@ -680,6 +712,11 @@ &usb_host0_ohci {
 	status = "okay";
 };
 
+&usb_host0_xhci {
+	dr_mode = "host";
+	status = "okay";
+};
+
 &usb_host1_ehci {
 	status = "okay";
 };
-- 
2.47.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

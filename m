Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 206CAD10BF5
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Oct 2024 10:03:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x0w3inb6E5U7uASzyIPTbFirOqq7LSYXzfWpdZDwa9g=; b=dWZJJPA2txDwDs
	Kbj+oRSmsMZyCnh50G/yQJv8fLQ6tJgyVPA5p718fdQtf2KdWDVPcPN4g0iy1g95cKDQTn+0ObAYa
	l52XS9x6N+mc1qqXptmdhrZB+Rf8GZST+U4VhaRJiE6C2XQwiLAkQcnZt2aG45isAuhEVC8wkZWAX
	nKEXRcoTBpKv9NROKnuCf8lN6S9QEML36Qx8ui3AasiTs8Pj75sEab3EpmZVtU5BoYo/rXEoxmS/v
	cPPB63hYy2VbwaZlAbnLZWZJmApaQ1DRULaljtZ0yrPJoMZ5T7UfEEa21//6U1Dp/EiotDxAAsq54
	l7wDAlzV4yNxif5XmYXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t4deA-00000006Ky1-2bu8;
	Sat, 26 Oct 2024 10:03:50 +0000
Received: from mail-ot1-x32a.google.com ([2607:f8b0:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t4de5-00000006KtG-3p4I
	for linux-rockchip@lists.infradead.org;
	Sat, 26 Oct 2024 10:03:47 +0000
Received: by mail-ot1-x32a.google.com with SMTP id 46e09a7af769-7180dc76075so1511325a34.3
        for <linux-rockchip@lists.infradead.org>; Sat, 26 Oct 2024 03:03:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729937025; x=1730541825; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TYeTYHWTjp7cA/WYWuIhCpZ4XmDorEuPTS9DnqV9+L4=;
        b=VbbbT+RP6NKD07E4JY1welL4x5C67RLfH43FBuKhS2iob0Ha7ykL8JvaPcfVpn3kb0
         a9oR4cB2OiheKQF8bIUI903sP/JResL8H9wuTwfx89zS1XSqlZeKgf+HBpdHNWEGH2Ec
         KG5j7SHTG+TyM2xLnjb4fn9DLexYZIxQbJgq3S3Y+BwRaoE4Jr4wajFmgepUAUH21VvP
         OTPzEAcWQZlIurvH6Zq2HphHXc3JBEaiDPRVWGWeMXmHfC3qWDDiRRJu/vMbhvkaLxvD
         jA2zJcYRj/SFDWeFMgEWsrGSzhHZb4S/fPqVuwJAMif4MeeIcSAfaOUmyprriareQJZh
         0/nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729937025; x=1730541825;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TYeTYHWTjp7cA/WYWuIhCpZ4XmDorEuPTS9DnqV9+L4=;
        b=TbcCYV05TG1JVyCzgYF1eGKSXcdDTxuVzHqv/P1V56GAD1v0h0UB7jSAOw2l8ptpPW
         Fj5rrx3Ffa5kCq/rmdUtN5aYHpHGqSlb6f0zQ2gX5CW1e0jqkARqPJtRlhlZAtltSgjW
         TJOAsvMGvZPWmEQH+Gm4KvwuQpSe4yCurdMNueS+FnOZXSKk/xakh/v6gCbZjmXx8K2s
         Z4X1Nm3lYSLvKV8K5y8bE7HDymHGvTjzwRfHDgJMiNxXvCWVuXbO++eEckzUeigXR9y1
         5miOOIW+lMeVWVpZlrYm//YDxybyJE/+4PCwhqcxlabNYPdqYh/bInnwMZi13/2wu1y7
         VnLQ==
X-Forwarded-Encrypted: i=1; AJvYcCUevOctKNB3sB7KNd/twMKiX7h13G9RE3m4pMFp78gMQRBfwHh6uSqMTUYPQUWKGSYQP2mIAv37zDKLs2r+3A==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz1TLiy+gnMFeH0zX3Zklahfl/old+Qwv69WNs0HMxdY3e6zJmJ
	l+9EKzNiyG/Vcrner37fHbzFzdXIdJxOT969Tug6/eYO6rpH/0lI
X-Google-Smtp-Source: AGHT+IG5My3otiFkNlKt+LrPvMCRwRWlktLlaITSbUCSlxRBX0CDMt2c1Rv0oumzk5QS7oL6wMR6WA==
X-Received: by 2002:a05:6830:2694:b0:718:194d:8ab with SMTP id 46e09a7af769-718682a0ac4mr2057089a34.27.1729937024751;
        Sat, 26 Oct 2024 03:03:44 -0700 (PDT)
Received: from tower.cjhon.com ([2603:8081:ad40:11:cefb:5eea:7da6:3c6d])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7186165841asm632243a34.48.2024.10.26.03.03.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Oct 2024 03:03:43 -0700 (PDT)
From: Jimmy Hon <honyuenkwun@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-rockchip@lists.infradead.org,
	Ondrej Jirman <megi@xff.cz>,
	Jimmy Hon <honyuenkwun@gmail.com>
Subject: [PATCH 08/15] arm64: dts: rockchip: add USB2 to opi5max
Date: Sat, 26 Oct 2024 04:48:24 -0500
Message-ID: <20241026100310.52679-9-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241026100310.52679-1-honyuenkwun@gmail.com>
References: <20241026100310.52679-1-honyuenkwun@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241026_030346_030556_0FFC98DB 
X-CRM114-Status: GOOD (  10.30  )
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

Enable USB2 (EHCI and OCHI mode) support for the Orange Pi 5 Max
This adds USB support for the two USB2 ports.

Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
---
 .../dts/rockchip/rk3588-orangepi-5-max.dts    | 56 +++++++++++++++++++
 1 file changed, 56 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts
index 03ae3564b8f4..be4af5006d69 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts
@@ -109,6 +109,22 @@ vcc5v0_sys: vcc5v0-sys-regulator {
 		regulator-min-microvolt = <5000000>;
 		regulator-max-microvolt = <5000000>;
 	};
+
+	/* Represents the vcc5v0_usb20 in the schematic */
+	vcc5v0_host: vcc5v0-host-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		/* USB_HOST_PWREN */
+		gpios = <&gpio3 RK_PD5 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&usb_host_pwren>;
+		regulator-name = "vcc5v0_host";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
 };
 
 &combphy2_psu {
@@ -228,6 +244,12 @@ hym8563_int: hym8563-int {
 			rockchip,pins = <0 RK_PC4 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
+
+	usb {
+		usb_host_pwren: usb-host-pwren {
+			rockchip,pins = <3 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
 };
 
 &pwm4 {
@@ -612,7 +634,41 @@ &tsadc {
 	status = "okay";
 };
 
+&u2phy2 {
+	status = "okay";
+};
+
+&u2phy2_host {
+	phy-supply = <&vcc5v0_host>;
+	status = "okay";
+};
+
+&u2phy3 {
+	status = "okay";
+};
+
+&u2phy3_host {
+	phy-supply = <&vcc5v0_host>;
+	status = "okay";
+};
+
 &uart2 {
 	pinctrl-0 = <&uart2m0_xfer>;
 	status = "okay";
 };
+
+&usb_host0_ehci {
+	status = "okay";
+};
+
+&usb_host0_ohci {
+	status = "okay";
+};
+
+&usb_host1_ehci {
+	status = "okay";
+};
+
+&usb_host1_ohci {
+	status = "okay";
+};
-- 
2.47.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE1C2D10BF0
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Oct 2024 10:03:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pQyNyaGS7bAlL3vR5a1SdMfQ8nlT6eMMGfvZlPSM7cw=; b=eadbDC0J5ia3IB
	O06VK5LNd7+MK2H8xgC1VAQRjK70Z9gL13sR3PxWkNxFs+5mYCFfPOpyUOx/N6Ju8XP5oIHZ/Iry0
	Pks0wq2CXtYOZOD1COmtMlC/4MK6WKgGfQc2ua/VUy62GcKLRoXjsD3W0wiDnDdAxCuRAbHLQtNI7
	V3Wc2u7yIY0yhmSZDy8llFl37AUiEfO7orMFRqfSON/fYJXrDOS+rVUNjtZ5zazQWrB66JL7CAOrc
	pmD6sOQq2uHjZ5kOPiC2PICMYeRthGiHoFfDHUGfBwD4ti1Z6sVnTBSCXMoEIoAyk7Tl+vA0iq2bY
	+bIop7UHNwpZMvZKcn0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t4de6-00000006KtW-03Js;
	Sat, 26 Oct 2024 10:03:46 +0000
Received: from mail-ot1-x332.google.com ([2607:f8b0:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t4de1-00000006Kpp-0faa
	for linux-rockchip@lists.infradead.org;
	Sat, 26 Oct 2024 10:03:42 +0000
Received: by mail-ot1-x332.google.com with SMTP id 46e09a7af769-718066adb47so1639919a34.0
        for <linux-rockchip@lists.infradead.org>; Sat, 26 Oct 2024 03:03:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729937020; x=1730541820; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OG5OSejKWm2ypzSCrYRq7/rsTKbEKScT3kAIlnW/zuM=;
        b=SUCuYja2+G0uM7LuATjI2SJMr3VnOAVbCl35dD2RmisJ1GFvqvmqcoMUd4jgl8/KxE
         pW0HYoe5wMYrl3Rt1kHORHG2DEIb1GUT7LwW0o+AKjXLVxxGiEvcyUy+h3iO9vhN1e5d
         87lniW1oPeq2yWcjZns3KFbcDOuHXtivKH3KizLj/DY2+cumiDXvU2/S5Lo42jDwqAYd
         1AGjG1cuOxn2VyQWHN+GY4SoTALVTC0RcBmKhCRax6Xo+/m8itx0HE1BjctQDM5Yy9lg
         XEnJSgWjfIc5bDchwuVbq/1zw05YEZHYdzWkpI/xHQExBGqPs6Tq8SuzQ+XQWz5751Lx
         eIag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729937020; x=1730541820;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OG5OSejKWm2ypzSCrYRq7/rsTKbEKScT3kAIlnW/zuM=;
        b=IHZidpjo4BnphTfePdMI4GCGCXdecec+YiIiHqgttYWhBFP9zp52y4DBkaqYCdzBzd
         pbBJwODxOwHNk4b1rw76N5yOxBXBxWfgIM9QUpTqrSUvLzxfyLWLFvuQ+qEaUKoVitDG
         u/wkT0xYLQRN9+AGmvTqSI9UC5i/d1APm3zM4ZnYhCy+Y6Lrvi/PvJDTyWBL2mfY3AIe
         Ds1TYjr1dbLech6FkGpWkiRTL9jKgMPCaKV0ikqlTtLs3XkUkD9dgpqiUjF6wVh0v8DS
         Lnc6MZuDP+bgfUAg1WJwr9w3Djt26YJ+1ZHUpGeo/9jwBUaLsw9AI5x7suMyIOuVfW/e
         Yv1w==
X-Forwarded-Encrypted: i=1; AJvYcCVaBJrgVxkJJ6T0immdZYwBgK/x/iBhh7muwJmN0Gzggza1kt5se1jV27c834AJxAD+q6fjG67EA6EMzIzEDg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzHXOFmEivWWUMtzUKT6mJc3yT/C4Mgyuu3NXo2C5o6qWeIkEt8
	AVMi05WvWI8GaIqLzWu7f3PKesm4xlTKOlantUi3aX11i6yY0ioe
X-Google-Smtp-Source: AGHT+IH1UYV6cAfrS7OZKZ50c+Tmq/uDig48s0v1YlJsaaoH7pl939ozWL3622OEzL+/CpX7AW+IFQ==
X-Received: by 2002:a05:6830:7198:b0:718:ced:90cb with SMTP id 46e09a7af769-71868118a71mr1055636a34.9.1729937020027;
        Sat, 26 Oct 2024 03:03:40 -0700 (PDT)
Received: from tower.cjhon.com ([2603:8081:ad40:11:cefb:5eea:7da6:3c6d])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7186165841asm632243a34.48.2024.10.26.03.03.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Oct 2024 03:03:38 -0700 (PDT)
From: Jimmy Hon <honyuenkwun@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-rockchip@lists.infradead.org,
	Ondrej Jirman <megi@xff.cz>,
	Jimmy Hon <honyuenkwun@gmail.com>
Subject: [PATCH 06/15] arm64: dts: rockchip: add PCIe for M.2 M-key to opi5max
Date: Sat, 26 Oct 2024 04:48:22 -0500
Message-ID: <20241026100310.52679-7-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241026100310.52679-1-honyuenkwun@gmail.com>
References: <20241026100310.52679-1-honyuenkwun@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241026_030341_250239_803C3E50 
X-CRM114-Status: UNSURE (   9.54  )
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

The Orange Pi 5 Max has PCIe 3.0x4 routed to its M.2 M-key connector
on the board's back.

Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
---
 .../dts/rockchip/rk3588-orangepi-5-max.dts    | 22 +++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts
index 591ba2af25d7..5c4390ac3f8e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts
@@ -65,6 +65,18 @@ vcc_3v3_aux: vcc-3v3-aux-regulator {
 		vin-supply = <&vcc_3v3_s3>;
 	};
 
+	vcc3v3_pcie30: vcc3v3-pcie30-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		/* PCIE_PWREN_H */
+		gpios = <&gpio2 RK_PB6 GPIO_ACTIVE_HIGH>;
+		regulator-name = "vcc3v3_pcie30";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		startup-delay-us = <5000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
 	/* Regulator is enabled whenever vcc_1v8_s0 is on */
 	vcc_3v3_s0: vcc-3v3-s0-regulator {
 		compatible = "regulator-fixed";
@@ -191,6 +203,16 @@ &pcie2x1l1 {
 	status = "okay";
 };
 
+&pcie30phy {
+	status = "okay";
+};
+
+&pcie3x4 {
+	reset-gpios = <&gpio4 RK_PB6 GPIO_ACTIVE_HIGH>;
+	vpcie3v3-supply = <&vcc3v3_pcie30>;
+	status = "okay";
+};
+
 &pinctrl {
 	hym8563 {
 		hym8563_int: hym8563-int {
-- 
2.47.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

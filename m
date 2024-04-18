Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C0E1C4345F
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Apr 2024 17:36:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tppNMuBss9CbslasYrHfu4p1BBx+g2havzPT8rOisew=; b=KXzuMGMqo+f2nj
	9XMBJ5LF/6XgNwTvlH9LJDYIQ3a4CIFG0HGGD6mpwS4/Nrka+DOKWCKcAAVOdxqWslkza45WLZeOj
	c7h5AZsdCCB5tqh3vIt79yU3PoHkcUGBspoJIg+zLlFiIugWaCz26pM6lZDlXz5vmOWNmcuCBEHdO
	jdZ4xUkOiMJDRz4VaEUqCSRm44LFFny4Dyu0syXnaV+7aM8q2/GH4DrUVai23S7UwHy2u2pd3mhER
	dTRwMnSMtTNyMLPpg0CHLiocHOqdsIYP/FKIpvO1UfH1owGO1Yte1Ec444T7ZBt1znUCcpz1fZ0Gc
	kEuSXhcORcRK1SzBg/tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxVgd-00000003Day-1AO1;
	Thu, 18 Apr 2024 17:36:39 +0000
Received: from mail-oi1-x22b.google.com ([2607:f8b0:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxVga-00000003DaT-3cwL
	for linux-rockchip@lists.infradead.org;
	Thu, 18 Apr 2024 17:36:38 +0000
Received: by mail-oi1-x22b.google.com with SMTP id 5614622812f47-3bbc649c275so508610b6e.0
        for <linux-rockchip@lists.infradead.org>; Thu, 18 Apr 2024 10:36:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713461793; x=1714066593; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9s/UYXkRAqUbyw8b08g/psbp7A/UX2Z54fvlcgOFZUA=;
        b=a2Z0adH9frzKC5hHxM9XV11/bvkh0lAZxuHr3pieXLmiCJdOJ/uul+WxrapYSndtaF
         XDxTkwUY+4x11+m16YmPvHdDZ1ztTSSPJbVfWZYPNL+dQAsjo1G0xpzzwjt1sfi965UP
         dlHrURq7DPoNf9n4NS5BNlQc3Ve+pgFpH5McaD5YdpBLR7CbO9DhpUPbxE/wpujVrtDG
         0C0hNxjD511Bv06l5tcV2+txcvuwVSSVCR2TvezYfBlcJOihvWCy63n/E7pkrB0zu4K1
         ifsgoSd23PJUKcrEhSnn1CJFzRUhzu81gupYzEYRsWFwq5jrj6Ixzajijc9yclnkhJCB
         V1Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713461793; x=1714066593;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9s/UYXkRAqUbyw8b08g/psbp7A/UX2Z54fvlcgOFZUA=;
        b=h04PEa6mGpGS5zPFWbRYQfUunm35i9g+0glib0NwjZzZbCr1PLuqOZvkhhwqxk08HN
         qzT14tjr2R1jzPQDCGxv07fgpbM7j553hCBhHPWsoxoI5jnnFmg8mJPaWKFtpaWUl/wD
         PujNRJRKWKD1PPbfWcL1+Xn2OXAasRcdRXoHmWeEWLNPifol0Ya1M9HoaPM25MG1erW0
         40IVKfUF4MNt9JqVkMJhtcE58Z5iP/RZMRQRwPQcrNTWE0XJgnedbA/i1AZbAXIicYT6
         jBoozFDCOqnD5qx+sRLqCnIkvascMpWq94FPywmzLxk7m17dClwm6pJYsr1jMYf5NndF
         2kmg==
X-Gm-Message-State: AOJu0YzB/F+zhx0ga1b2+dkAhc7vYKt8mOEjSYIFXDHgX4Gj6nV4MC7S
	yK/0ybZP0TfwOMOL8OLkXND2r5C2xzujgefyY1RsqzNi9IcN3eUiOeT5zw==
X-Google-Smtp-Source: AGHT+IEm09Nxnky8x6T+XRV8ZSzBAPNwb27lsqg0uURWiSAplocKaUDUJ6wl4yTJqxiJ9ca2owyrKA==
X-Received: by 2002:a05:6808:211f:b0:3c7:443c:96d7 with SMTP id r31-20020a056808211f00b003c7443c96d7mr1022109oiw.31.1713461793170;
        Thu, 18 Apr 2024 10:36:33 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id o17-20020a544791000000b003c5f54d014dsm329792oic.51.2024.04.18.10.36.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Apr 2024 10:36:32 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH] arm64: dts: rockchip: Add USB-C Support for rk3588s-indiedroid-nova
Date: Thu, 18 Apr 2024 12:36:27 -0500
Message-Id: <20240418173627.1368494-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240418_103636_936297_5DD47A13 
X-CRM114-Status: GOOD (  11.64  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the USB-C port on the Indiedroid Nova board. This
port supports USB-C DP Alt mode (not implemented yet in drivers),
but works as a USB XHCI/EHCI/OHCI port.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../dts/rockchip/rk3588s-indiedroid-nova.dts  | 71 ++++++++++++++++++-
 1 file changed, 70 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
index ce8119cbb824..0acfac2313b1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
@@ -316,7 +316,7 @@ fusb302: typec-portc@22 {
 		pinctrl-names = "default";
 		vbus-supply = <&vbus5v0_typec>;
 
-		connector {
+		usb_con: connector {
 			compatible = "usb-c-connector";
 			data-role = "dual";
 			label = "USB-C";
@@ -325,6 +325,32 @@ connector {
 			source-pdos = <PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>;
 			sink-pdos = <PDO_FIXED(5000, 1000, PDO_FIXED_USB_COMM)>;
 			op-sink-microwatt = <1000000>;
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+					usbc0_orien_sw: endpoint {
+						remote-endpoint = <&usbdp_phy0_orientation_switch>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+					usbc0_role_sw: endpoint {
+						remote-endpoint = <&dwc3_0_role_switch>;
+					};
+				};
+
+				port@2 {
+					reg = <2>;
+					dp_altmode_mux: endpoint {
+						remote-endpoint = <&usbdp_phy0_dp_altmode_mux>;
+					};
+				};
+			};
 		};
 	};
 
@@ -788,6 +814,14 @@ &tsadc {
 	status = "okay";
 };
 
+&u2phy0 {
+	status = "okay";
+};
+
+&u2phy0_otg {
+	status = "okay";
+};
+
 &u2phy2 {
 	status = "okay";
 };
@@ -839,6 +873,17 @@ &usb_host0_ohci {
 	status = "okay";
 };
 
+&usb_host0_xhci {
+	usb-role-switch;
+	status = "okay";
+
+	port {
+		dwc3_0_role_switch: endpoint {
+			remote-endpoint = <&usbc0_role_sw>;
+		};
+	};
+};
+
 &usb_host1_ehci {
 	status = "okay";
 };
@@ -850,3 +895,27 @@ &usb_host1_ohci {
 &usb_host2_xhci {
 	status = "okay";
 };
+
+&usbdp_phy0 {
+	orientation-switch;
+	mode-switch;
+	sbu1-dc-gpios = <&gpio4 RK_PA0 GPIO_ACTIVE_HIGH>;
+	sbu2-dc-gpios = <&gpio4 RK_PA1 GPIO_ACTIVE_HIGH>;
+	rockchip,dp-lane-mux = <2 3>;
+	status = "okay";
+
+	port {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		usbdp_phy0_orientation_switch: endpoint@0 {
+			reg = <0>;
+			remote-endpoint = <&usbc0_orien_sw>;
+		};
+
+		usbdp_phy0_dp_altmode_mux: endpoint@1 {
+			reg = <1>;
+			remote-endpoint = <&dp_altmode_mux>;
+		};
+	};
+};
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

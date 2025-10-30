Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDD81CCF9F0
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Oct 2025 23:39:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=45i//ymWxXGzA0/mD/CoA+Ic+Q231+PHzM8ImGj0OA8=; b=NyeBWSEo3xs8B9
	dKQaBdnf9knOrLD1qw1maY6LsgV0PAtkwR0+uMrzYyuQdqPIVuOHA2ZMUMvOPyxspPlgr+emimSF4
	VajWhOtld1OL0b5q9cg7JRCguvO0sCNzjeA58VP+OuCcl1V4T1+xYYbfVtmBsUoIJepgs15+a50ae
	xzl0e4gnzAotcNin1oa8WHpKlWV2irZ/4Ejt5ZxH5fQBpEKaHAdPibgzkg1sG3Sf2KY8p4zrO36op
	8iDPaVjUu9LUKywbUxCUc3+WHIBtx1TS3/cgZ1tud89aYo+Oivs3/VL0P81HVLeigH/KzKYJzWpCy
	X3wbCO4P0rDGxROMvYFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEcER-0000000597z-0HoG;
	Thu, 30 Oct 2025 23:39:03 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEcEN-0000000597E-17rp
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Oct 2025 23:39:01 +0000
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-b6d535e3610so32104366b.0
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Oct 2025 16:38:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761867537; x=1762472337; darn=lists.infradead.org;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QW/G35MOi1nbpenKn0jGc/i9ZxGqUMDCw5SmHmcN3xo=;
        b=nP9Nb0eaSuf8OFolSL537/fmC974iwcwn60YeQAW5s/6M40qfrX1hX4vVNpU+diX2J
         HpxxInvkvsaO4TsjUReJ/+mVw/eD6oHXrbhe+36vyWRpb09UrkTEhS6NRjhtiHH7dF/z
         1yJIcFm8bp5dQqb7mmUm70Rorw+zw5PTHKjtb3TbTFsTI5GnQrUS0bZGUhQ+3Xs9Oyz4
         aBSDl9JeH+TgUkPDrwmHfDuLNJAGrexl0Qf4plhGEkxWHxde5eoQPq3pcuDkGNklY7kk
         ZjUkSnIndQ4aS3LVrlFySVRNgcSJoEaHX8KjT6pWe8b9eFRyQv4eOP2L6hTCoRiMeZ5q
         n6YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761867537; x=1762472337;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=QW/G35MOi1nbpenKn0jGc/i9ZxGqUMDCw5SmHmcN3xo=;
        b=dtzTfkaq4MmOskHxOKJCBrtmrgkce+Slv8fCtmEGa0oksgpJjm5zkWsKWk12t/hiTc
         SavVz4FsDGF9EPIsdt9CkimbWSmGimtI36p6nzir/mDr8LPfKNy6zKRTnWRxg0PiZsIR
         ERWABhaOWOqotoCnjcv6XsRtsGYKZPSI4AOSokbKxVsgArpe7jCSHonQUGWo8+WJ81Qg
         Ha2UfWO5Yhp+zaaX/1gRUhd0uOO+8MEFHT/KlzDZ2JrJNpOXfOt+uBGJXG5B8ydfa2L8
         N9W1TmKGghMmaEvGLg+/J05uitoDQlu4Mg0kuiSMmjqaffL8Hiuss53l+512AMMWAKfB
         fxFg==
X-Forwarded-Encrypted: i=1; AJvYcCX3Rf2WoeU19xBcQxPbBW36XAWqIVJOnI/MmJdTMW5IAci7wxRWoaKB7l8/0qdf1V+mncJRLDZnSFmrs9afkA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxUrE9PE7n4Bx5tKhmk7EoyL/vmA4+Sl9aHKWzcKR2XtVgvY7sQ
	2xbzlWjPKSW6vLjnTLh5hJh8yR9jIUCkK9OgFdZaGl3e6nL5T6pUWDdM
X-Gm-Gg: ASbGncvqD3zSioAVRtYbuiFc9V5rU1WZpNWjz9kLlOn6yKAf3e2Mq6fEV6Aq2bt5zPt
	7KnyxInukGxwg3HM3oK3Rq/fAfchyDTLYIruOwHzyGLf08xwCwW2MB+6OBR/R6pcRyfa1Iy52iR
	vgHTI8Siue7BSoWO/PZMBq9MHnp36Il4VMvaZpJE5sE41ElUYtFHL5MQsemsJNCqKxb678PGQ5k
	yGqCrWADZBBkaT6T4jimlJvv/SL3BzXvZD6zs6IPNpcoEcJd35Qr4zNiCY+kCo3J+N4wSIxEyEj
	mrmbkSs33LW6XBlQZNmmAtxQ/PuwU1jioLGtcUZcBajzvSQ1srRe7xFv2nAoil3HZpBBCrUHbVY
	8flBu5bTK1POjUHRP4j0Qvempkmb+dcy+0pfYCiAYXZR1N3cki4XaU1jAAO/QTN1YAnbVZQ/Eby
	qJwrNhWwl955koJA/2i5QH5Oj88ideIoiCgVjqk66Ih1qfcioZ8w==
X-Google-Smtp-Source: AGHT+IFu52Lv7EHZGXKUGlAUADqfNrD4YHhFGg0CHcltbEW9aIgyfK1tlwF8IrE/Dn5an5+ltyyBEw==
X-Received: by 2002:a17:907:3c8c:b0:b4e:e4c4:4245 with SMTP id a640c23a62f3a-b70701891d9mr74782666b.3.1761867536930;
        Thu, 30 Oct 2025 16:38:56 -0700 (PDT)
Received: from ?IPV6:2a02:a449:4071:0:32d0:42ff:fe10:6983? ([2a02:a449:4071:0:32d0:42ff:fe10:6983])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7077c3dbeesm11779266b.44.2025.10.30.16.38.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Oct 2025 16:38:56 -0700 (PDT)
Message-ID: <b3d05df4-a916-48e1-8d9e-590782806bd5@gmail.com>
Date: Fri, 31 Oct 2025 00:38:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1] arm: dts: rockchip: fix tps65910 nodes
To: heiko@sntech.de
Cc: robh@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251030_163859_443265_47D35727 
X-CRM114-Status: UNSURE (   9.07  )
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

The binding for tps65910 is converted to yaml and they have
changed the regulator nodename layout and added some required
properties. Fix the tps65910 nodes on Rockchip boards.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 .../boot/dts/rockchip/rk3066a-bqcurie2.dts    | 34 ++++++++++--------
 .../boot/dts/rockchip/rk3066a-marsboard.dts   | 34 ++++++++++--------
 .../boot/dts/rockchip/rk3066a-rayeager.dts    | 35 +++++++++++--------
 3 files changed, 59 insertions(+), 44 deletions(-)

diff --git a/arch/arm/boot/dts/rockchip/rk3066a-bqcurie2.dts b/arch/arm/boot/dts/rockchip/rk3066a-bqcurie2.dts
index c227691013ea..65f8bc804d21 100644
--- a/arch/arm/boot/dts/rockchip/rk3066a-bqcurie2.dts
+++ b/arch/arm/boot/dts/rockchip/rk3066a-bqcurie2.dts
@@ -80,26 +80,33 @@ &i2c1 {
 	clock-frequency = <400000>;

 	tps: tps@2d {
+		compatible = "ti,tps65910";
 		reg = <0x2d>;

+		gpio-controller;
+		#gpio-cells = <2>;
+
 		interrupt-parent = <&gpio6>;
 		interrupts = <RK_PA6 IRQ_TYPE_LEVEL_LOW>;

+		interrupt-controller;
+		#interrupt-cells = <2>;
+
 		vcc5-supply = <&vcc_io>;
 		vcc6-supply = <&vcc_io>;

 		regulators {
-			vcc_rtc: regulator@0 {
+			vcc_rtc: vrtc {
 				regulator-name = "vcc_rtc";
 				regulator-always-on;
 			};

-			vcc_io: regulator@1 {
+			vcc_io: vio {
 				regulator-name = "vcc_io";
 				regulator-always-on;
 			};

-			vdd_arm: regulator@2 {
+			vdd_arm: vdd1 {
 				regulator-name = "vdd_arm";
 				regulator-min-microvolt = <600000>;
 				regulator-max-microvolt = <1500000>;
@@ -107,7 +114,7 @@ vdd_arm: regulator@2 {
 				regulator-always-on;
 			};

-			vcc_ddr: regulator@3 {
+			vcc_ddr: vdd2 {
 				regulator-name = "vcc_ddr";
 				regulator-min-microvolt = <600000>;
 				regulator-max-microvolt = <1500000>;
@@ -115,42 +122,42 @@ vcc_ddr: regulator@3 {
 				regulator-always-on;
 			};

-			vcc18_cif: regulator@5 {
+			vcc18_cif: vdig1 {
 				regulator-name = "vcc18_cif";
 				regulator-always-on;
 			};

-			vdd_11: regulator@6 {
+			vdd_11: vdig2 {
 				regulator-name = "vdd_11";
 				regulator-always-on;
 			};

-			vcc_25: regulator@7 {
+			vcc_25: vpll {
 				regulator-name = "vcc_25";
 				regulator-always-on;
 			};

-			vcc_18: regulator@8 {
+			vcc_18: vdac {
 				regulator-name = "vcc_18";
 				regulator-always-on;
 			};

-			vcc25_hdmi: regulator@9 {
+			vcc25_hdmi: vaux1 {
 				regulator-name = "vcc25_hdmi";
 				regulator-always-on;
 			};

-			vcca_33: regulator@10 {
+			vcca_33: vaux2 {
 				regulator-name = "vcca_33";
 				regulator-always-on;
 			};

-			vcc_tp: regulator@11 {
+			vcc_tp: vaux33 {
 				regulator-name = "vcc_tp";
 				regulator-always-on;
 			};

-			vcc28_cif: regulator@12 {
+			vcc28_cif: vmmc {
 				regulator-name = "vcc28_cif";
 				regulator-always-on;
 			};
@@ -158,9 +165,6 @@ vcc28_cif: regulator@12 {
 	};
 };

-/* must be included after &tps gets defined */
-#include "../tps65910.dtsi"
-
 &mmc0 { /* sdmmc */
 	status = "okay";
 	pinctrl-names = "default";
diff --git a/arch/arm/boot/dts/rockchip/rk3066a-marsboard.dts b/arch/arm/boot/dts/rockchip/rk3066a-marsboard.dts
index de42d1855121..15dbe1677e30 100644
--- a/arch/arm/boot/dts/rockchip/rk3066a-marsboard.dts
+++ b/arch/arm/boot/dts/rockchip/rk3066a-marsboard.dts
@@ -96,11 +96,18 @@ &i2c1 {
 	clock-frequency = <400000>;

 	tps: tps@2d {
+		compatible = "ti,tps65910";
 		reg = <0x2d>;

+		gpio-controller;
+		#gpio-cells = <2>;
+
 		interrupt-parent = <&gpio6>;
 		interrupts = <RK_PA4 IRQ_TYPE_LEVEL_LOW>;

+		interrupt-controller;
+		#interrupt-cells = <2>;
+
 		vcc1-supply = <&vsys>;
 		vcc2-supply = <&vsys>;
 		vcc3-supply = <&vsys>;
@@ -111,17 +118,17 @@ tps: tps@2d {
 		vccio-supply = <&vsys>;

 		regulators {
-			vcc_rtc: regulator@0 {
+			vcc_rtc: vrtc {
 				regulator-name = "vcc_rtc";
 				regulator-always-on;
 			};

-			vcc_io: regulator@1 {
+			vcc_io: vio {
 				regulator-name = "vcc_io";
 				regulator-always-on;
 			};

-			vdd_arm: regulator@2 {
+			vdd_arm: vdd1 {
 				regulator-name = "vdd_arm";
 				regulator-min-microvolt = <600000>;
 				regulator-max-microvolt = <1500000>;
@@ -129,7 +136,7 @@ vdd_arm: regulator@2 {
 				regulator-always-on;
 			};

-			vcc_ddr: regulator@3 {
+			vcc_ddr: vdd2 {
 				regulator-name = "vcc_ddr";
 				regulator-min-microvolt = <600000>;
 				regulator-max-microvolt = <1500000>;
@@ -137,41 +144,41 @@ vcc_ddr: regulator@3 {
 				regulator-always-on;
 			};

-			vcc18_cif: regulator@5 {
+			vcc18_cif: vdig1 {
 				regulator-name = "vcc18_cif";
 				regulator-always-on;
 			};

-			vdd_11: regulator@6 {
+			vdd_11: vdig2 {
 				regulator-name = "vdd_11";
 				regulator-always-on;
 			};

-			vcc_25: regulator@7 {
+			vcc_25: vpll {
 				regulator-name = "vcc_25";
 				regulator-always-on;
 			};

-			vcc_18: regulator@8 {
+			vcc_18: vdac {
 				regulator-name = "vcc_18";
 				regulator-always-on;
 			};

-			vcc25_hdmi: regulator@9 {
+			vcc25_hdmi: vaux1 {
 				regulator-name = "vcc25_hdmi";
 				regulator-always-on;
 			};

-			vcca_33: regulator@10 {
+			vcca_33: vaux2 {
 				regulator-name = "vcca_33";
 				regulator-always-on;
 			};

-			vcc_rmii: regulator@11 {
+			vcc_rmii: vaux33 {
 				regulator-name = "vcc_rmii";
 			};

-			vcc28_cif: regulator@12 {
+			vcc28_cif: vmmc {
 				regulator-name = "vcc28_cif";
 				regulator-always-on;
 			};
@@ -179,9 +186,6 @@ vcc28_cif: regulator@12 {
 	};
 };

-/* must be included after &tps gets defined */
-#include "../tps65910.dtsi"
-
 &emac {
 	phy = <&phy0>;
 	phy-supply = <&vcc_rmii>;
diff --git a/arch/arm/boot/dts/rockchip/rk3066a-rayeager.dts b/arch/arm/boot/dts/rockchip/rk3066a-rayeager.dts
index b0b029f14643..07c03ed6fac6 100644
--- a/arch/arm/boot/dts/rockchip/rk3066a-rayeager.dts
+++ b/arch/arm/boot/dts/rockchip/rk3066a-rayeager.dts
@@ -198,9 +198,18 @@ &i2c1 {
 	status = "okay";

 	tps: tps@2d {
+		compatible = "ti,tps65910";
 		reg = <0x2d>;
+
+		gpio-controller;
+		#gpio-cells = <2>;
+
 		interrupt-parent = <&gpio6>;
 		interrupts = <RK_PA4 IRQ_TYPE_EDGE_RISING>;
+
+		interrupt-controller;
+		#interrupt-cells = <2>;
+
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int>, <&pwr_hold>;

@@ -214,19 +223,19 @@ tps: tps@2d {
 		vccio-supply = <&vsys>;

 		regulators {
-			vcc_rtc: regulator@0 {
+			vcc_rtc: vrtc {
 				regulator-name = "vcc_rtc";
 				regulator-always-on;
 			};

-			vcc_io: regulator@1 {
+			vcc_io: vio {
 				regulator-name = "vcc_io";
 				regulator-min-microvolt = <3300000>;
 				regulator-max-microvolt = <3300000>;
 				regulator-always-on;
 			};

-			vdd_arm: regulator@2 {
+			vdd_arm: vdd1 {
 				regulator-name = "vdd_arm";
 				regulator-min-microvolt = <600000>;
 				regulator-max-microvolt = <1500000>;
@@ -234,7 +243,7 @@ vdd_arm: regulator@2 {
 				regulator-boot-on;
 			};

-			vcc_ddr: regulator@3 {
+			vcc_ddr: vdd2 {
 				regulator-name = "vcc_ddr";
 				regulator-min-microvolt = <600000>;
 				regulator-max-microvolt = <1500000>;
@@ -242,52 +251,52 @@ vcc_ddr: regulator@3 {
 				regulator-boot-on;
 			};

-			vcc18: regulator@5 {
+			vcc18: vdig1 {
 				regulator-name = "vcc18";
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <1800000>;
 				regulator-always-on;
 			};

-			vdd_11: regulator@6 {
+			vdd_11: vdig2 {
 				regulator-name = "vdd_11";
 				regulator-min-microvolt = <1100000>;
 				regulator-max-microvolt = <1100000>;
 				regulator-always-on;
 			};

-			vcc_25: regulator@7 {
+			vcc_25: vpll {
 				regulator-name = "vcc_25";
 				regulator-min-microvolt = <2500000>;
 				regulator-max-microvolt = <2500000>;
 				regulator-always-on;
 			};

-			vccio_wl: regulator@8 {
+			vccio_wl: vdac {
 				regulator-name = "vccio_wl";
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <1800000>;
 			};

-			vcc25_hdmi: regulator@9 {
+			vcc25_hdmi: vaux1 {
 				regulator-name = "vcc25_hdmi";
 				regulator-min-microvolt = <2500000>;
 				regulator-max-microvolt = <2500000>;
 			};

-			vcca_33: regulator@10 {
+			vcca_33: vaux2 {
 				regulator-name = "vcca_33";
 				regulator-min-microvolt = <3300000>;
 				regulator-max-microvolt = <3300000>;
 			};

-			vcc_rmii: regulator@11 {
+			vcc_rmii: vaux33 {
 				regulator-name = "vcc_rmii";
 				regulator-min-microvolt = <3300000>;
 				regulator-max-microvolt = <3300000>;
 			};

-			vcc28_cif: regulator@12 {
+			vcc28_cif: vmmc {
 				regulator-name = "vcc28_cif";
 				regulator-min-microvolt = <2800000>;
 				regulator-max-microvolt = <2800000>;
@@ -296,8 +305,6 @@ vcc28_cif: regulator@12 {
 	};
 };

-#include "../tps65910.dtsi"
-
 &i2c2 {
 	status = "okay";
 };
--
2.39.5


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

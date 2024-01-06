Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4201DC47079
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Jan 2024 22:24:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=a+i8TNJT9FypZSdCMpMaNmJq3WTdz1N8R7++ZbTaqWI=; b=Gtc51P6DOPrd/W
	Z0BLOrFPl1taPMFzt9I58lsDbPFXOpgZfeQyRE/TX6eb2h5Xa9pHSvQpbbFTsZ+kCClcLFuFe5/pW
	ovQdAKaeRWrO6A6YmNKno7K6no12ZU7cm2b23ASBwoR/x51D+HKagzGi+CoQE8mbxeOZabVahL6so
	r+t+/4VFr5JbaRWerWTB9D+0A/VlC54KwoddW89xtXwhU0M0swyDbrpyGJsc8q2HZZjuH8H6jxv5P
	qu42WCauyJtvI/bU8cTcFYeX+aO+DShpk6IW1+3pIAG1m3SOY91DkIGMxvvZ6ExUNNPaHEjCrLR31
	O7Dzpa0zqnFD8pdroDPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rMF5X-001xqz-0N;
	Sat, 06 Jan 2024 22:24:19 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rMF5T-001xp3-1V;
	Sat, 06 Jan 2024 22:24:16 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-40d5ac76667so6421005e9.1;
        Sat, 06 Jan 2024 14:24:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1704579853; x=1705184653; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=IZIA5zf/VHPtEHf5BZda2vmVXuJ+Vs5INvQNZOIe84E=;
        b=BmfZHReb8HMLMvBSTxpq9fMMyZ/6w5t5B/2tnWTH6qnuvUsFaviR6UlPND/S+NMUFt
         2v557BADPEok3/Q5dZTZUWBdNeSwddPVCui8K/gKr3O+UVWY0paeOEio4XjBEoUmU1D/
         ja1I0sQ3BfxEpsqBHuIlvf0qUahN0x+ybj8t3eRZgKRqyDiMCdyQqbvxJaW5gaAzuedY
         9Zm8oMqLJkMiIhy2+DjjzVwwFDU2Otj5ptuvJB8l2o/h/kLYt8y8y/Sr9sxlr8Lk4S4+
         hmPHpJuyX2hShRdOpYxnyEYlUINsGncXvfMrLiiXclpM5u24oYO3bHUh0VkJQkBCING2
         DUjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704579853; x=1705184653;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IZIA5zf/VHPtEHf5BZda2vmVXuJ+Vs5INvQNZOIe84E=;
        b=ta0xMYG2JpKG+oanDno4uDpP8GI4ANAFsvB76ddkq9qrScTBg0NDVTUDZWZ4OUfrnr
         YGxgB1A4sYfw717vH7NgOL3rDAOUIBvSg0jXTr4RGH/CyWywdKgLdG54Z595fi/lIwgu
         +D41peVK1Rv1dw0s9vgiVURbjlp+GVSpRhbL5xktoH2reYn3qjrp/j3BoMZk+VAHkVg5
         8TOuTQwN+WvFHSdItZXFaB0ZbV0WyBSPIhOZyArci/lbw2kFUqasZn0gMvf2LeaZ4e+x
         b6BExP+LlakWPe+TQ7RNruB3W3OdVTt4e0tTfXwcNWdVpfvl9hr6hHQS9UPIaalf3V44
         rxDA==
X-Gm-Message-State: AOJu0YzTXb/ShiKn9xMasWT6XgxgVtq7ou91mUBB3LMceIclCpsoeWNM
	95VW8cmrU5ncnGEaeO+sy6qKrnOuABMRuw==
X-Google-Smtp-Source: AGHT+IFQBfnhjijD8pVRIVBENGEVDkxMXR9G87JnBQZcxtG2UjML/FicHu+tauxYcJphro1u3Ie9NA==
X-Received: by 2002:a05:600c:5027:b0:40e:43e5:f33f with SMTP id n39-20020a05600c502700b0040e43e5f33fmr39936wmr.65.1704579853213;
        Sat, 06 Jan 2024 14:24:13 -0800 (PST)
Received: from latitude-fedora.lan ([2001:8f8:183b:50fb::d35])
        by smtp.gmail.com with ESMTPSA id w15-20020adfe04f000000b00336471bc7ffsm4078128wrh.109.2024.01.06.14.24.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 06 Jan 2024 14:24:12 -0800 (PST)
From: Alexey Charkov <alchark@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Christopher Obbard <chris.obbard@collabora.com>,
	=?UTF-8?q?Tam=C3=A1s=20Sz=C5=B1cs?= <szucst@iit.uni-miskolc.hu>,
	Shreeya Patel <shreeya.patel@collabora.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Chris Morgan <macromorgan@hotmail.com>,
	Alexey Charkov <alchark@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: enable built-in thermal monitoring on rk3588
Date: Sun,  7 Jan 2024 02:23:42 +0400
Message-ID: <20240106222357.23835-1-alchark@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240106_142415_503653_463817E2 
X-CRM114-Status: GOOD (  10.85  )
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

Include thermal zones information in device tree for rk3588 variants
and enable the built-in thermal sensing ADC on RADXA Rock 5B

Signed-off-by: Alexey Charkov <alchark@gmail.com>
---
 .../boot/dts/rockchip/rk3588-rock-5b.dts      |   4 +
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi     | 143 ++++++++++++++++++
 2 files changed, 147 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index a5a104131403..f9d540000de3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -772,3 +772,7 @@ &usb_host1_ehci {
 &usb_host1_ohci {
 	status = "okay";
 };
+
+&tsadc {
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 8aa0499f9b03..8235991e3112 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -10,6 +10,7 @@
 #include <dt-bindings/reset/rockchip,rk3588-cru.h>
 #include <dt-bindings/phy/phy.h>
 #include <dt-bindings/ata/ahci.h>
+#include <dt-bindings/thermal/thermal.h>
 
 / {
 	compatible = "rockchip,rk3588";
@@ -2112,6 +2113,148 @@ tsadc: tsadc@fec00000 {
 		status = "disabled";
 	};
 
+	thermal_zones: thermal-zones {
+		soc_thermal: soc-thermal {
+			polling-delay-passive = <20>; /* milliseconds */
+			polling-delay = <1000>; /* milliseconds */
+			sustainable-power = <2100>; /* milliwatts */
+
+			thermal-sensors = <&tsadc 0>;
+			trips {
+				threshold: trip-point-0 {
+					temperature = <75000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+				target: trip-point-1 {
+					temperature = <85000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+				soc_crit: soc-crit {
+					/* millicelsius */
+					temperature = <115000>;
+					/* millicelsius */
+					hysteresis = <2000>;
+					type = "critical";
+				};
+			};
+			cooling-maps {
+				map0 {
+					trip = <&target>;
+					cooling-device = <&cpu_l0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+					contribution = <1024>;
+				};
+				map1 {
+					trip = <&target>;
+					cooling-device = <&cpu_b0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+					contribution = <1024>;
+				};
+				map2 {
+					trip = <&target>;
+					cooling-device = <&cpu_b2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+					contribution = <1024>;
+				};
+			};
+		};
+
+		bigcore0_thermal: bigcore0-thermal {
+			polling-delay-passive = <20>; /* milliseconds */
+			polling-delay = <1000>; /* milliseconds */
+			thermal-sensors = <&tsadc 1>;
+
+			trips {
+				big0_crit: big0-crit {
+					/* millicelsius */
+					temperature = <115000>;
+					/* millicelsius */
+					hysteresis = <2000>;
+					type = "critical";
+				};
+			};
+		};
+
+		bigcore1_thermal: bigcore1-thermal {
+			polling-delay-passive = <20>; /* milliseconds */
+			polling-delay = <1000>; /* milliseconds */
+			thermal-sensors = <&tsadc 2>;
+
+			trips {
+				big1_crit: big1-crit {
+					/* millicelsius */
+					temperature = <115000>;
+					/* millicelsius */
+					hysteresis = <2000>;
+					type = "critical";
+				};
+			};
+		};
+
+		little_core_thermal: littlecore-thermal {
+			polling-delay-passive = <20>; /* milliseconds */
+			polling-delay = <1000>; /* milliseconds */
+			thermal-sensors = <&tsadc 3>;
+
+			trips {
+				little_crit: little-crit {
+					/* millicelsius */
+					temperature = <115000>;
+					/* millicelsius */
+					hysteresis = <2000>;
+					type = "critical";
+				};
+			};
+		};
+
+		center_thermal: center-thermal {
+			polling-delay-passive = <20>; /* milliseconds */
+			polling-delay = <1000>; /* milliseconds */
+			thermal-sensors = <&tsadc 4>;
+
+			trips {
+				center_crit: center-crit {
+					/* millicelsius */
+					temperature = <115000>;
+					/* millicelsius */
+					hysteresis = <2000>;
+					type = "critical";
+				};
+			};
+		};
+
+		gpu_thermal: gpu-thermal {
+			polling-delay-passive = <20>; /* milliseconds */
+			polling-delay = <1000>; /* milliseconds */
+			thermal-sensors = <&tsadc 5>;
+
+			trips {
+				gpu_crit: gpu-crit {
+					/* millicelsius */
+					temperature = <115000>;
+					/* millicelsius */
+					hysteresis = <2000>;
+					type = "critical";
+				};
+			};
+		};
+
+		npu_thermal: npu-thermal {
+			polling-delay-passive = <20>; /* milliseconds */
+			polling-delay = <1000>; /* milliseconds */
+			thermal-sensors = <&tsadc 6>;
+
+			trips {
+				npu_crit: npu-crit {
+					/* millicelsius */
+					temperature = <115000>;
+					/* millicelsius */
+					hysteresis = <2000>;
+					type = "critical";
+				};
+			};
+		};
+	};
+
 	saradc: adc@fec10000 {
 		compatible = "rockchip,rk3588-saradc";
 		reg = <0x0 0xfec10000 0x0 0x10000>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E06EC10F16
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 May 2024 09:37:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+aAA1m9GKqjaDkMDJGgzfjYRLpbk5DZu/noyYariwUE=; b=GK5AcGr2wU3Y7Z
	AK865/Hob0YFGLdnOBgWLUzN7EXzdVbVsfGzFrNc+QyqAtRC2Gd9yKUYr2NS1MGCNz8iTlc470A8o
	QJ+Pn4aaRNnMISy06S5mhB1Zd3MGRXxM3Ypp/u3y3x6wNBFLLR3cIarF+8b3QMq1kc4YHN4aBxP+4
	E0i4wHLhmWpuUPAe86A7cXi/RB3AEv7UsyjWo45HTrGSJ2JgV2a6afChXd10ehCbTsGbEeyaBWsMn
	jZrbz0eXSKnI1c1jpvbuoSDqT0SZh+nmQYszvtSMgVnJTX8FGzsxNX4NpbZ+sWLAVZLstje922yda
	kuox2CpSoXK4jZHZhdlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3umb-00000006oWq-2oE3;
	Mon, 06 May 2024 09:37:17 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3umY-00000006oVF-33QV;
	Mon, 06 May 2024 09:37:16 +0000
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-a59b81d087aso292597766b.3;
        Mon, 06 May 2024 02:37:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714988232; x=1715593032; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZmGdmY8DE6zqLCMf8fCUqWkVhIJWW+2eyn2qqAadLp0=;
        b=MX8XwC0YZ5f6fX++wL0CS9S/vflpq98JsjDhLp/x7yRhny3E74CYHBhtg+d8YfFbI0
         7cmN64aK/cGC9bVkRXsAk92XlmHZ4LRgH3nJvYSyiLOVr+IO6QPZDB8A4Sfs5y9xlM7K
         6ZugEH2gmNicEGbuGVFXcp6gsYDf0gSusjoMgxyg6Sz487miC/u9WH2bw4InlkgOgi5A
         8HTESf1ZYrMqKI/hhBtc3IMQkfuBA8jNlEX3RymasQar2XJEh/6K70nD0BmrXjcdh5Ep
         mR8eFwkH7e1LiqNILlY0/IZiKl1f7OKcO26t9L7v1WlNSkVoVATo6Qhn445gNaQBtYlf
         Su9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714988232; x=1715593032;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZmGdmY8DE6zqLCMf8fCUqWkVhIJWW+2eyn2qqAadLp0=;
        b=gfJQhNqh020o1QD2rfx6MGPMIHhCosBrnoU7v9k/2+k1cnSNq9ljQMJOivX/C16xJc
         eko8V7oG3yZGs0vww6ndJIqcYi2WFHsXqCeBoOdaggV15RYjHsp351zE9FqOkOdkXKCj
         5X4HyfrMpURAHo4JlLwpT6Nt2M146RdzMLwmmWmY2Dn/NHmPn40X+XZFJ/K2oSgR7pPa
         L0jAJrXF5Cy5GZ7/Jwc3tsP+mdd6ZFgxf+rp6xA/EM3dOXkwu2PyJMjLVnG9UA+YuLl8
         l3CN1L++cvtzEaX/hX6IODJBFfsqGftV2A3/dCHCmbbEND1GSiZedk0W6TwJGiCl+1g7
         RO6w==
X-Forwarded-Encrypted: i=1; AJvYcCUhIB+SKMKeCvyS6vleSLMd4X6afaMR63sPhF/jDP8L2duA86483vmKU6sJlD4KQI+mM3qfcfpP0o0GkIiyvpqKLRkxwVH89ZMHhkodwpNa59o6vULDn3EPYU2DvlBbIR6gjf94STqYrCjfX6sgY5J/IKSLANlLAQw=
X-Gm-Message-State: AOJu0Yz/HdfJtrj0ihtdyQOLlNJ9kWBQA8yAgnFZhZSHOfVRPh8wz3Pj
	2TduhoI8wf9TQyPNPCNvW97qGkMxAQlYAQ0DzCdhsS/KNZtALZQO
X-Google-Smtp-Source: AGHT+IFTy2eBX+SCcZX80gxFh0M8yziHMdYiwC7RP5+Th3wIlkpQvWMdH63lC5HB6XaT4i46Tq/YEA==
X-Received: by 2002:a50:c319:0:b0:56f:e7b9:e67d with SMTP id a25-20020a50c319000000b0056fe7b9e67dmr9422796edb.12.1714988232147;
        Mon, 06 May 2024 02:37:12 -0700 (PDT)
Received: from [172.30.32.119] ([2001:8f8:183b:f2c::d35])
        by smtp.gmail.com with ESMTPSA id f6-20020a056402160600b005722ce89ae2sm4983647edv.38.2024.05.06.02.37.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 May 2024 02:37:11 -0700 (PDT)
From: Alexey Charkov <alchark@gmail.com>
Date: Mon, 06 May 2024 13:36:32 +0400
Subject: [PATCH v4 1/6] arm64: dts: rockchip: add thermal zones information
 on RK3588
MIME-Version: 1.0
Message-Id: <20240506-rk-dts-additions-v4-1-271023ddfd40@gmail.com>
References: <20240506-rk-dts-additions-v4-0-271023ddfd40@gmail.com>
In-Reply-To: <20240506-rk-dts-additions-v4-0-271023ddfd40@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Dragan Simic <dsimic@manjaro.org>, Viresh Kumar <viresh.kumar@linaro.org>, 
 Chen-Yu Tsai <wens@kernel.org>, Diederik de Haas <didi.debian@cknow.org>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Alexey Charkov <alchark@gmail.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1714988224; l=4796;
 i=alchark@gmail.com; s=20240125; h=from:subject:message-id;
 bh=+CRjCu5/qMbviqrE7tKv0CDQlxSHs+JH5lEn/bmXM3Y=;
 b=EzL8gJdaHg+A1S3Q8nrUlNLWmEKSCa0G7Sxga0J9K3BPOvz6Ld9L11TR3dmiltGPq92SM/bLY
 N9PjqYnNTheAGDY2BCBsg8YbcF95OobZ1LadcHzT2Pj+MPWM0QHIerj
X-Developer-Key: i=alchark@gmail.com; a=ed25519;
 pk=xRO8VeD3J5jhwe0za0aHt2LDumQr8cm0Ls7Jz3YGimk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240506_023714_817807_15968295 
X-CRM114-Status: GOOD (  12.61  )
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

This includes the necessary device tree data to allow thermal
monitoring on RK3588(s) using the on-chip TSADC device, along with
trip points for automatic thermal management.

Each of the CPU clusters (one for the little cores and two for
the big cores) get a passive cooling trip point at 85C, which
will trigger DVFS throttling of the respective cluster upon
reaching a high temperature condition.

All zones also have a critical trip point at 115C, which will
trigger a reset.

Signed-off-by: Alexey Charkov <alchark@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 147 ++++++++++++++++++++++++++++++
 1 file changed, 147 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 6ac5ac8b48ab..ef06c1f742e8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -10,6 +10,7 @@
 #include <dt-bindings/reset/rockchip,rk3588-cru.h>
 #include <dt-bindings/phy/phy.h>
 #include <dt-bindings/ata/ahci.h>
+#include <dt-bindings/thermal/thermal.h>
 
 / {
 	compatible = "rockchip,rk3588";
@@ -2368,6 +2369,152 @@ pwm15: pwm@febf0030 {
 		status = "disabled";
 	};
 
+	thermal_zones: thermal-zones {
+		/* sensor near the center of the SoC */
+		package_thermal: package-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&tsadc 0>;
+
+			trips {
+				package_crit: package-crit {
+					temperature = <115000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		/* sensor between A76 cores 0 and 1 */
+		bigcore0_thermal: bigcore0-thermal {
+			polling-delay-passive = <100>;
+			polling-delay = <0>;
+			thermal-sensors = <&tsadc 1>;
+
+			trips {
+				bigcore0_alert: bigcore0-alert {
+					temperature = <85000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+				bigcore0_crit: bigcore0-crit {
+					temperature = <115000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+			cooling-maps {
+				map0 {
+					trip = <&bigcore0_alert>;
+					cooling-device =
+						<&cpu_b0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+						<&cpu_b1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
+		};
+
+		/* sensor between A76 cores 2 and 3 */
+		bigcore2_thermal: bigcore2-thermal {
+			polling-delay-passive = <100>;
+			polling-delay = <0>;
+			thermal-sensors = <&tsadc 2>;
+
+			trips {
+				bigcore2_alert: bigcore2-alert {
+					temperature = <85000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+				bigcore2_crit: bigcore2-crit {
+					temperature = <115000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+			cooling-maps {
+				map0 {
+					trip = <&bigcore2_alert>;
+					cooling-device =
+						<&cpu_b2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+						<&cpu_b3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
+		};
+
+		/* sensor between the four A55 cores */
+		little_core_thermal: littlecore-thermal {
+			polling-delay-passive = <100>;
+			polling-delay = <0>;
+			thermal-sensors = <&tsadc 3>;
+
+			trips {
+				littlecore_alert: littlecore-alert {
+					temperature = <85000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+				littlecore_crit: littlecore-crit {
+					temperature = <115000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+			cooling-maps {
+				map0 {
+					trip = <&littlecore_alert>;
+					cooling-device =
+						<&cpu_l0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+						<&cpu_l1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+						<&cpu_l2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+						<&cpu_l3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
+		};
+
+		/* sensor near the PD_CENTER power domain */
+		center_thermal: center-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&tsadc 4>;
+
+			trips {
+				center_crit: center-crit {
+					temperature = <115000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		gpu_thermal: gpu-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&tsadc 5>;
+
+			trips {
+				gpu_crit: gpu-crit {
+					temperature = <115000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+
+		npu_thermal: npu-thermal {
+			polling-delay-passive = <0>;
+			polling-delay = <0>;
+			thermal-sensors = <&tsadc 6>;
+
+			trips {
+				npu_crit: npu-crit {
+					temperature = <115000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+		};
+	};
+
 	tsadc: tsadc@fec00000 {
 		compatible = "rockchip,rk3588-tsadc";
 		reg = <0x0 0xfec00000 0x0 0x400>;

-- 
2.45.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

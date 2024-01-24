Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1DF51C47DDF
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Jan 2024 20:31:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k2C0bKGbRrCHb2rRVY18CSwATjqgBZJKMxjTc9VBnbc=; b=GTWgL6woY7qgoB
	6anDRSqp4yJDfvbuF9Pe6z6ixba6LPEWBbSV68lS+veze1O4MuRmlr9OBdxvUYUPye6Ai5Mhc3kRv
	W8PDfRgJn5M7uk1AMCkSG66bWepowfRwzQCVDy8iLVG4OQUS07zuacX9rEoTxcmkUw6U1Ul0bhOsB
	21SwCMbML8BuBFZ6aFQHFAlhJt0jIybMLQmfE1au4fdpjgNaY0M5nfNJz8FtjYbDuqH5xzE/sNwE3
	Uh06raRs/Q1j8NT8gnE3TJfjOjfr6kuH2lZKwZQyYkgqUshjX9Zlli+PSpcjOjZHPrQDWrre8IFLS
	YKvc2G+AyRdw/IlEPZJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSjtz-00518T-0o;
	Wed, 24 Jan 2024 20:31:15 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSjtP-0050uO-2B;
	Wed, 24 Jan 2024 20:30:41 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-40ebf373130so22372325e9.3;
        Wed, 24 Jan 2024 12:30:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706128236; x=1706733036; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Z3ca0jnd9j+2aNrco01AKV5rkL7ji04a+DuuunuBda4=;
        b=B/Og6YmK84dQXV7z5TCfxQ7RDv5iTZJ8NzJcM2naETKJUHo/8mg3QHa+wqMm8GQo6T
         HIULM5HqqBUDhhQ70z9viXlPVQ9SXJDpBq3k4ZC1O4ZQDOS0jkzmyGqDsiB4hrfaKosU
         eNWFgy9y5zUaN2PIAZp1xfFBv5sIbInSuxXtTieYXnLivcSKVPx+STRVNqQCcEiKHqhU
         Cgumj3KGZENXlAWHYqFHxIelDNtf7VjDC3anGNqYsi0rclhwx6+GlgaSeeyXrhm9NCqQ
         z2BSMbzow58f77iA121cty+6iL5WcJboDqYNLCxYfzGn9hvj2+WpAGZoPvotsshrnbX1
         7XWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706128236; x=1706733036;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z3ca0jnd9j+2aNrco01AKV5rkL7ji04a+DuuunuBda4=;
        b=lBRa0wLtBt4e6kdPQ+90H9Yft8Mu7+vTbmofGJMRjM3fmu3jV5ebA08N7AX9RHaFKz
         xg00hl3CsfNooronCjkwOszBIpODLF+qGcCu969GQTYsa+A42Wr9uMeoS5AMPA2rKQtu
         zhdYxz5hCt0nZI+EP0SM1pmThS+v6sj9c5gIrvjZzndGH/EUVU9byHcE9/yulKjRt4Zs
         Oeq5yWDH79ltR4fXL9gq+a9E5I3Uj9Jg6HsioW9/rQpc+nI8+a4wqpEATTtqExxYGaO/
         e0+ykhYfO+LzptlWQB3qQ/kLvzzWzkZc+cRjajORKUQ7VpUfWNP7docS/YQ1yS1hsXh7
         91QA==
X-Gm-Message-State: AOJu0YwtrtpdNQf1AG7Kq9+ex/111gXxMiNqEDqxTrLEN3W1wL5+Y/Fh
	Wlj7OH3pJHzcopYV+nlBV5/+8JbrcXjdN+ec9ABnJEsMEwu2zE0P
X-Google-Smtp-Source: AGHT+IGbydoCGkGeBHV8wihvYw3DZSaWysGkFdyH6pwvnawkRmgiVYqqL/OBW+Q7g6b6iIomR4frKw==
X-Received: by 2002:a05:600c:9a3:b0:40e:5996:2291 with SMTP id w35-20020a05600c09a300b0040e59962291mr1781320wmp.138.1706128235667;
        Wed, 24 Jan 2024 12:30:35 -0800 (PST)
Received: from [172.30.32.188] ([2001:8f8:183b:50fb::d35])
        by smtp.gmail.com with ESMTPSA id r15-20020a05600c458f00b0040d62f89381sm174073wmo.35.2024.01.24.12.30.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jan 2024 12:30:35 -0800 (PST)
From: Alexey Charkov <alchark@gmail.com>
Date: Thu, 25 Jan 2024 00:30:05 +0400
Subject: [PATCH 2/4] arm64: dts: rockchip: enable built-in thermal
 monitoring on rk3588
MIME-Version: 1.0
Message-Id: <20240125-rk-dts-additions-v1-2-5879275db36f@gmail.com>
References: <20240125-rk-dts-additions-v1-0-5879275db36f@gmail.com>
In-Reply-To: <20240125-rk-dts-additions-v1-0-5879275db36f@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Dragan Simic <dsimic@manjaro.org>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Alexey Charkov <alchark@gmail.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1706128223; l=4885;
 i=alchark@gmail.com; s=20240125; h=from:subject:message-id;
 bh=bZ/Ku33h3h7tLZHhbK7X7TnJBS+ojPkPkQBizuVj/J8=;
 b=i07iNxqPSC1JCmuGjfx9B7DczeuyAJWfhY5fMC/Swk//raeORACzzOzr3C99W4a6z0SHHPHWC
 60hFkjtkxMqCao/u1EZTx/FEHcYsXXW7YAUKAi+j7FF3aAH9XTAw6jt
X-Developer-Key: i=alchark@gmail.com; a=ed25519;
 pk=xRO8VeD3J5jhwe0za0aHt2LDumQr8cm0Ls7Jz3YGimk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240124_123039_760978_1914EC3C 
X-CRM114-Status: GOOD (  12.09  )
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

Signed-off-by: Alexey Charkov <alchark@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 165 ++++++++++++++++++++++++++++++
 1 file changed, 165 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 36b1b7acfe6a..131b9eb21398 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -10,6 +10,7 @@
 #include <dt-bindings/reset/rockchip,rk3588-cru.h>
 #include <dt-bindings/phy/phy.h>
 #include <dt-bindings/ata/ahci.h>
+#include <dt-bindings/thermal/thermal.h>
 
 / {
 	compatible = "rockchip,rk3588";
@@ -2228,6 +2229,170 @@ tsadc: tsadc@fec00000 {
 		status = "disabled";
 	};
 
+	thermal_zones: thermal-zones {
+		/* sensor near the center of the whole chip */
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
+			polling-delay-passive = <20>;
+			polling-delay = <0>;
+			thermal-sensors = <&tsadc 1>;
+
+			trips {
+				bigcore0_alert0: bigcore0-alert0 {
+					temperature = <75000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+				bigcore0_alert1: bigcore0-alert1 {
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
+					trip = <&bigcore0_alert1>;
+					cooling-device =
+						<&cpu_b0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+						<&cpu_b1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+					contribution = <1024>;
+				};
+			};
+		};
+
+		/* sensor between A76 cores 2 and 3 */
+		bigcore2_thermal: bigcore2-thermal {
+			polling-delay-passive = <20>;
+			polling-delay = <0>;
+			thermal-sensors = <&tsadc 2>;
+
+			trips {
+				bigcore2_alert0: bigcore2-alert0 {
+					temperature = <75000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+				bigcore2_alert1: bigcore2-alert1 {
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
+				map1 {
+					trip = <&bigcore2_alert1>;
+					cooling-device =
+						<&cpu_b2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+						<&cpu_b3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+					contribution = <1024>;
+				};
+			};
+		};
+
+		/* sensor between the four A55 cores */
+		little_core_thermal: littlecore-thermal {
+			polling-delay-passive = <20>;
+			polling-delay = <0>;
+			thermal-sensors = <&tsadc 3>;
+
+			trips {
+				littlecore_alert0: littlecore-alert0 {
+					temperature = <75000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+				littlecore_alert1: littlecore-alert1 {
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
+				map2 {
+					trip = <&littlecore_alert1>;
+					cooling-device =
+						<&cpu_l0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+						<&cpu_l1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+						<&cpu_l2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
+						<&cpu_l3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+					contribution = <1024>;
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
 	saradc: adc@fec10000 {
 		compatible = "rockchip,rk3588-saradc";
 		reg = <0x0 0xfec10000 0x0 0x10000>;

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55AA3C2BA1A
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Jun 2024 18:29:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V2D0sfXo14WBHkyJgg6lemvLW7XlmDwtnd9Z0WSUCfQ=; b=4NTAYAJPMAjS74
	ozQbcBOSuuSFIhBvoPbmQP5RIBv9chHhc4kWMLHUxCO4Mpzu42uWzbnwbYUOKdEfqnsg95rttD+nq
	N/gH2xDXoPJnKpK9p1XK+ZrohLxSaBPcyaYmjrbeVu9ccR559uCYwsFs5JCateCrWBOBnb5MPeLFC
	hSZSCO17fN4WKyfAJabIZ6ZyOk44ZNuBJqDGNDSDLQGZhrSkS/DmoDXHuloJUiPvWRzTCmYfeNG3r
	YgYueiVxs7I9y4rF7Lkb5ajYRQjzBUf61FPBml5uASPv9OAkpfF5NDM3+easN5rsWC/XTfxn4hpSj
	hiLe/ZbIyREjoANdXqYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJH6q-0000000CAwJ-22Na;
	Mon, 17 Jun 2024 18:29:40 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJH6f-0000000CAsA-2c6N;
	Mon, 17 Jun 2024 18:29:34 +0000
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-57c714a1e24so5259908a12.2;
        Mon, 17 Jun 2024 11:29:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718648968; x=1719253768; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2X2WIsak2atiEiHDdvF6RWJsXkV1zq+NhgYFvPOjT68=;
        b=I4F9oO1BEfh4YnKL/Vk2q1MQ854NPXXxXYUuh81z7qzM6jv4Hj9nxlHV6Ua8i40AcN
         RCUIjYQ9uYhvfCXAh2vEKHGtJhvftE5bvaLZ+BtVqTyIlD4ozFtqbBWTk6CL82imJMxl
         HX08KRu/r2bvil5xOeZnR6Qafjth/Q6VIzQO5QSAsJp5jEX4udS+62BtvVO8WrXBD8zi
         6WdIWU9nMB9+dLfDI66efScT12onuCbx1mxXT7yTYGqH96oEYAgcMwxgCrIrkmB5mkaZ
         ezfwUIgoiEMNKGZCz1c0ff9NrDxUzPM9+iBYBNoMIZvLC1kfvhB9okWznZqc/SzPCIel
         4kWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718648968; x=1719253768;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2X2WIsak2atiEiHDdvF6RWJsXkV1zq+NhgYFvPOjT68=;
        b=id+sXu8o4bQ0+T8d84WFB3q8FoWQbH+d+eoq5ybWNF/jT24l/Jid1Xa1gqwqpcrbN+
         oeDLROAEu00oljUJ6qx791iHVY28re8HXbWyVHL/iKnlmOr46dGzP48BhAUPhenyjzx2
         /LNud+ps6OZL8BH2bHltv4HrnmLbl+oO9IZZryaLNL2wtPsoSbMEpcfVfIXFIpbG3Cg5
         b/0cEgtmpddmX3hJ5wtjPew46oG2EupVtvIN4K6bXFD8sh/BGoKaKxSrTlZhvCC0l7Hh
         kJh0QXUWwDTppTIHTDjvxL2F5UHXJv9gFPiH+lhFZWp7F9991ArrO75rlP8U6Nedx0L2
         kUrQ==
X-Forwarded-Encrypted: i=1; AJvYcCUQHggwFPheKCePUq9PPDSBbK5WI8DXOY2tI4csaoJih8ocj3/O2q8xJ3GkZMi57fOlzAZ0LaegGc1GDzH7pS24Oa/NSW41L0JaKFvIjOS2KuN60lpTWJzqwDq8CJZKZRlsoYwAOgp22dpSUgkeiW7/Zuu/jfU45Uo=
X-Gm-Message-State: AOJu0YyTmul+VKL4/QzbCjgWHH/plWq5y3qxS7bvxiC50pwlfg9O0jrJ
	CiX7j19+e+QALalj/6fp36Mg5Zp2HwKz6zQ8Irm+oVZGzjpPdJVt
X-Google-Smtp-Source: AGHT+IEcKf9ojnPn5YIlp3N2ikFO56e3roYuTKmZx16sk9mDhWUzy5UpZZ7PtHOykON1A5MyEIXOeQ==
X-Received: by 2002:a17:906:6889:b0:a6c:8b01:3f78 with SMTP id a640c23a62f3a-a6f60cf3871mr665133566b.9.1718648967677;
        Mon, 17 Jun 2024 11:29:27 -0700 (PDT)
Received: from latitude-fedora.lan ([2001:8f8:183b:6864::d35])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6f8a6e58bdsm115397666b.187.2024.06.17.11.29.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jun 2024 11:29:27 -0700 (PDT)
From: Alexey Charkov <alchark@gmail.com>
Date: Mon, 17 Jun 2024 22:28:51 +0400
Subject: [PATCH v5 1/8] arm64: dts: rockchip: add thermal zones information
 on RK3588
MIME-Version: 1.0
Message-Id: <20240617-rk-dts-additions-v5-1-c1f5f3267f1e@gmail.com>
References: <20240617-rk-dts-additions-v5-0-c1f5f3267f1e@gmail.com>
In-Reply-To: <20240617-rk-dts-additions-v5-0-c1f5f3267f1e@gmail.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1718648960; l=4812;
 i=alchark@gmail.com; s=20240125; h=from:subject:message-id;
 bh=RcpwIjmnR3ZB6lo2LEJCkEMEywnrfAp8940slGy+YX8=;
 b=t0aimbVHoYZS+Tv6Rzg+QZCtIdY2IvOFNcU16ePc3fJvrwMLGRHzh65G5oZ7/UWW3XGtZhs6q
 xzrMfFXQdCeD94mc8Moc+eLIfTzcOBvkx1I4S7yuqqK37c19baZKRg/
X-Developer-Key: i=alchark@gmail.com; a=ed25519;
 pk=xRO8VeD3J5jhwe0za0aHt2LDumQr8cm0Ls7Jz3YGimk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_112929_718910_53C7B789 
X-CRM114-Status: GOOD (  12.44  )
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
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 147 ++++++++++++++++++++++++++
 1 file changed, 147 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
index 629049f3dc16..574359279867 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
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
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

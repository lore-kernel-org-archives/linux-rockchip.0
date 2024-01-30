Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4DF3C46CD2
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Jan 2024 18:21:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rq6hLJbJniTijQXYuZCopctBUNNDv/sMoifJu2IojMs=; b=2ATyTgNgshXkyX
	2XyPAOpU75L3Jtzuj6NimTVqfR06Tv9E6xBdmuSFU+9CPag8ZlsxaWULhS6m6DaJUK9f9swtJzBYJ
	tClWuhluK7MDroPuutRA5p1xoJTRmMrIGW5H/r9EQk9tHP3pFWrr2Z/NazungZRJRm9h1CwIH90QV
	TL/kmCGqQ2kf5LTdo8tqyKR25fUJu9oc8Aq7S6vNye/Qcxf2NVhkZhaXhc13vMiDAxXK/UcVsaluU
	siT0kGEuQFTpEtcuDeowoX8V9FkfR2vwoNQQLb3H7tJznDLbNbnMUcrDyPwNbiuj02mdTTosRrnh2
	Xl2H+VvrKTGHwgNKH6Uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUsju-0000000078Q-3olP;
	Tue, 30 Jan 2024 18:21:42 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUsjq-0000000073B-1Uzu;
	Tue, 30 Jan 2024 18:21:40 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-40e7065b7bdso49554735e9.3;
        Tue, 30 Jan 2024 10:21:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706638895; x=1707243695; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NqlN95Bcph0ryerpvRwmwQ9kxuNXxSW2/nlGsHCgEN0=;
        b=aMo+0OSju0sNUx3gjKtBodzJcxoN4Ts9G52TlWtakin/QwgZskHD/7XrpPU1xJXCC+
         1Jm35cXZg3izUw3MPsdBEAlE4ANZSj4HoeOuybJkEmmPOCeaR930cxqZPof70PaFPuX4
         lheLA/bNa4qiVxsu9t1A1agFeJi3Cdrgr1qUHX8Ys4D8GUY0gzuhvh2lQl2BE0WI1vc2
         wVTwHZAW4sv9p9z0QLSN4Zw7J21rmVRivTHzh4fTtF54V+Ibo4/4SpqIAJdX4HtEJG6W
         QOzhWpi3x4buas+BAGLe4bVdnQxkkoGBw2DtqqYQtjPiWHdLG3NdjeZaEwQgrhGDhGEg
         ptNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706638895; x=1707243695;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NqlN95Bcph0ryerpvRwmwQ9kxuNXxSW2/nlGsHCgEN0=;
        b=IWgdJ0F0PDdo9ox8/4cvwy+nhWvLdmhcesGvz9hzlhovtLF2q7GcgN2cCM6eUIgni6
         0BQqH0pP0YjqnnY18DmpfdqJJaxk6aQQRGhnC6Bo2MLUP9mud9ObgQo7mY46YxHO4Kvt
         yMrrjgiyneT8iSGaNTZ6/9cMBiGJk5au6D/liV/vpIcK8GfNUDqyqv3JOdlAYoWfsrDk
         muEP+Yx4GgAz95qH5MiAu0aOB3C2wK720DfRe8ZuaUKRiBv7LbA+9wtOJG+jtiSG+eG8
         aVL7RjTaNx8iUBAbPwqudHn7aop03pki4vaV18YD+BQSo6ggBCk0uiICWbk/fH8u2jnI
         Umdw==
X-Gm-Message-State: AOJu0Yw/zO3aKWUSMyaZFsV5J9+PoxqeQe2/sKO1YfBU1CbmS4yoAOwI
	B7S3EUl9hMJbsCa1Q+HZ7kWx/6zzCyYDzN6njUsHtl/wdO1LZXEo
X-Google-Smtp-Source: AGHT+IGV8PVRX9AQyC9p+e6vL7VR3Zupnh4AdLJs/QrDTP1zkkDAnrjagLpwo1eppu5bXrA1nqQOeg==
X-Received: by 2002:adf:d1cf:0:b0:33a:ed44:6679 with SMTP id b15-20020adfd1cf000000b0033aed446679mr5203255wrd.71.1706638894784;
        Tue, 30 Jan 2024 10:21:34 -0800 (PST)
Received: from [172.30.32.188] ([2001:8f8:183b:50fb::d35])
        by smtp.gmail.com with ESMTPSA id u18-20020a5d4352000000b003392b1ebf5csm11374254wrr.59.2024.01.30.10.21.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jan 2024 10:21:34 -0800 (PST)
From: Alexey Charkov <alchark@gmail.com>
Date: Tue, 30 Jan 2024 22:21:13 +0400
Subject: [PATCH v2 1/4] arm64: dts: rockchip: enable built-in thermal
 monitoring on rk3588
MIME-Version: 1.0
Message-Id: <20240130-rk-dts-additions-v2-1-c6222c4c78df@gmail.com>
References: <20240130-rk-dts-additions-v2-0-c6222c4c78df@gmail.com>
In-Reply-To: <20240130-rk-dts-additions-v2-0-c6222c4c78df@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Dragan Simic <dsimic@manjaro.org>, Viresh Kumar <viresh.kumar@linaro.org>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Alexey Charkov <alchark@gmail.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1706638888; l=4798;
 i=alchark@gmail.com; s=20240125; h=from:subject:message-id;
 bh=fCfoUfUeuTXNntoGw9T456yCjjoCfY2uRUXUTCDsblU=;
 b=aO57hvBqNqPfjxPFyPrWgDTbq9NuGgOfrJGG4SAQHvQ+I3lK5x94C8MT4cM+HoaElGPHYV8ch
 4kNATPZefPiDSe7kJRQ2HjXZNiAf2M/k5Fe8XqiwLOjUwegIT3ejpSq
X-Developer-Key: i=alchark@gmail.com; a=ed25519;
 pk=xRO8VeD3J5jhwe0za0aHt2LDumQr8cm0Ls7Jz3YGimk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240130_102138_440252_199B1F96 
X-CRM114-Status: GOOD (  11.76  )
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
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 162 ++++++++++++++++++++++++++++++
 1 file changed, 162 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 36b1b7acfe6a..696cb72d75d0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -10,6 +10,7 @@
 #include <dt-bindings/reset/rockchip,rk3588-cru.h>
 #include <dt-bindings/phy/phy.h>
 #include <dt-bindings/ata/ahci.h>
+#include <dt-bindings/thermal/thermal.h>
 
 / {
 	compatible = "rockchip,rk3588";
@@ -2228,6 +2229,167 @@ tsadc: tsadc@fec00000 {
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
+			polling-delay-passive = <100>;
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
+				map0 {
+					trip = <&bigcore2_alert1>;
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
+				map0 {
+					trip = <&littlecore_alert1>;
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
 	saradc: adc@fec10000 {
 		compatible = "rockchip,rk3588-saradc";
 		reg = <0x0 0xfec10000 0x0 0x10000>;

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

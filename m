Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC555C4706C
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Jan 2024 19:26:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=phgLWpJFhOg9AJAQFo3JLfcn6WtR5ej3Q+8IenWjd2w=; b=1xL+BvWmCsQFGp
	GNhmVzd8vJsElNIYd2WQNLDDHAVXgjcMT6iX26o4Jyv+oggbI6vzjs+p13aTIOwIwGaO/syZSYa3E
	Tl7u3zckPqGMh2Devrogcg0ZppaL+N2jxBJ9vtMuoquMJZtZvS4clPn8YzQX2BwPmatNZGcqkzhPr
	iqUWI8607l7LcwP4ljT1TF3OuKNzY00mf4LFaQsnRQ35zh/e7AcYVCTvTz4pAEBxbCJeZ+SRFos59
	6OqoQRvyrUAs0cjhL2gdKXXEgJC7uCD6oCU8qRBS0fzmZ/VD0DFWuIN1UOoGCSgNjc0aIKToI9ebo
	LzFUoJtmJQ/vUq02D9oA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNHkJ-009H9h-2a;
	Tue, 09 Jan 2024 19:26:43 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNHkG-009H7x-0g;
	Tue, 09 Jan 2024 19:26:41 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-40d5a41143fso36979845e9.3;
        Tue, 09 Jan 2024 11:26:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1704828397; x=1705433197; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=umKNw6oY7W/GC+6PKYH46lfy8g9nHWoaPdVcGAt9mEE=;
        b=dBglk8RagPa6zJYtJKE480ViEyd5lCrIiJsQb7waCHOAL3hb+hQjfED/7HXRakgrJz
         i7PRPfrX+HCG64Sme4SFJwCp6JQrBgKp9qEwzyHoxUG41zMsrDNpJ7enkV7ohdTb7B8M
         PjfH6oaVolQOtJCxqJ96W8zsOJEq1gvMmFZXitg5WMxLmXH+2Aho4iXKCgpoK/W2PPQ5
         snpQBzWuvEr9MUb1IsVQfGqKV7wT4Ms7tus8AIY0Ua2K96zf+34DUoCEEWsasdHlExhR
         NQqtEUEu34dad+brI4i7XmFcAUG5Li6ENFbFGF8cDBhK82VYfXKha7yqXJmUqsiEGBUc
         5vEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704828397; x=1705433197;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=umKNw6oY7W/GC+6PKYH46lfy8g9nHWoaPdVcGAt9mEE=;
        b=LhO+45wQsUdy6MWxCaBmerNV41E7cOdKenJOoI1myeHqkUyIqc3suKWkD34p4+AJqt
         5an7spXNNNezltsSKNpY5QzfL3it/HpT8SQV5HHpm/J/VFP6bwAGevaPi0IFojXZMcWa
         VOmYAdsjf7/VgxC+rfPtbs4YPzLg7ZJHStCwFp1l7QRW9GMdRmbwqqocwKWQ/Z7ZwDIP
         7hnGN0C/l7fQpFhdd9zin2DGdKeULIloicEEFlMOvl4Va4z3QKpEnua+ahxaW0dLpgXN
         aVxPa6Uh9BjT1r4jMcxQo7ndbwb3x562PYhvvmFrcF0DrYGmoSjS1/+ozg2oaMkiwOP2
         ZTBw==
X-Gm-Message-State: AOJu0Yxmp4lTbLAe9kuGxismAJ0pYev3JNaINdlekTkRUsmWjo9idagv
	EQIS3ZA/ACqOFrCS1fNgWLQ=
X-Google-Smtp-Source: AGHT+IH0KeqbQuZiWB45O+iblu+q55Y/2sxdc4eSxm5+N49hgpfamlc2UgeXUeBY/5CoXA6u0w7Z5w==
X-Received: by 2002:a7b:c4d1:0:b0:40e:4aed:ad27 with SMTP id g17-20020a7bc4d1000000b0040e4aedad27mr1281983wmk.144.1704828397241;
        Tue, 09 Jan 2024 11:26:37 -0800 (PST)
Received: from latitude-fedora.lan ([2001:8f8:183b:50fb::d35])
        by smtp.gmail.com with ESMTPSA id u7-20020a05600c138700b0040d62f97e3csm15672468wmf.10.2024.01.09.11.26.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jan 2024 11:26:36 -0800 (PST)
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
	Alexey Charkov <alchark@gmail.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Chris Morgan <macromorgan@hotmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] arm64: dts: rockchip: enable built-in thermal monitoring on rk3588
Date: Tue,  9 Jan 2024 23:19:47 +0400
Message-ID: <20240109192608.5981-1-alchark@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240106222357.23835-1-alchark@gmail.com>
References: <20240106222357.23835-1-alchark@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240109_112640_269735_E8CF3D0D 
X-CRM114-Status: GOOD (  13.49  )
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
Changes in v2:
 - Dropped redundant comments
 - Included all CPU cores in cooling maps
 - Split cooling maps into more granular ones utilizing TSADC
   channels 1-3 which measure temperature by separate CPU clusters
   instead of channel 0 which measures the center of the SoC die
---
 .../boot/dts/rockchip/rk3588-rock-5b.dts      |   4 +
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi     | 151 ++++++++++++++++++
 2 files changed, 155 insertions(+)

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
index 8aa0499f9b03..8d54998d0ecc 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -10,6 +10,7 @@
 #include <dt-bindings/reset/rockchip,rk3588-cru.h>
 #include <dt-bindings/phy/phy.h>
 #include <dt-bindings/ata/ahci.h>
+#include <dt-bindings/thermal/thermal.h>
 
 / {
 	compatible = "rockchip,rk3588";
@@ -2112,6 +2113,156 @@ tsadc: tsadc@fec00000 {
 		status = "disabled";
 	};
 
+	thermal_zones: thermal-zones {
+		/* sensor near the center of the whole chip */
+		soc_thermal: soc-thermal {
+			polling-delay-passive = <20>;
+			polling-delay = <1000>;
+			sustainable-power = <2100>;
+			thermal-sensors = <&tsadc 0>;
+
+			trips {
+				soc_crit: soc-crit {
+					temperature = <115000>;
+					hysteresis = <2000>;
+					type = "critical";
+				};
+			};
+		};
+
+		/* sensor between A76 cores 0 and 1 */
+		bigcore0_thermal: bigcore0-thermal {
+			polling-delay-passive = <20>;
+			polling-delay = <1000>;
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
+					hysteresis = <2000>;
+					type = "critical";
+				};
+			};
+			cooling-maps {
+				map0 {
+					trip = <&bigcore0_alert>;
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
+			polling-delay = <1000>;
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
+					hysteresis = <2000>;
+					type = "critical";
+				};
+			};
+			cooling-maps {
+				map1 {
+					trip = <&bigcore2_alert>;
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
+			polling-delay = <1000>;
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
+					hysteresis = <2000>;
+					type = "critical";
+				};
+			};
+			cooling-maps {
+				map2 {
+					trip = <&littlecore_alert>;
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
+			polling-delay-passive = <20>;
+			polling-delay = <1000>;
+			thermal-sensors = <&tsadc 4>;
+
+			trips {
+				center_crit: center-crit {
+					temperature = <115000>;
+					hysteresis = <2000>;
+					type = "critical";
+				};
+			};
+		};
+
+		gpu_thermal: gpu-thermal {
+			polling-delay-passive = <20>;
+			polling-delay = <1000>;
+			thermal-sensors = <&tsadc 5>;
+
+			trips {
+				gpu_crit: gpu-crit {
+					temperature = <115000>;
+					hysteresis = <2000>;
+					type = "critical";
+				};
+			};
+		};
+
+		npu_thermal: npu-thermal {
+			polling-delay-passive = <20>;
+			polling-delay = <1000>;
+			thermal-sensors = <&tsadc 6>;
+
+			trips {
+				npu_crit: npu-crit {
+					temperature = <115000>;
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

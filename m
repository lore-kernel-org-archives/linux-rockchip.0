Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF8CCC001DC
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Jul 2023 11:01:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ttTI+d7FLWLo7188KFF+R95U0o7jy5xLKzHf2bFERus=; b=yUbsAXBO8HH8BZ
	R7y/poywqbIFoO+TmVwYZqmwYf+KIi/nwoDKAJWi3Mug9u7cig29ajW65pCoYVm9Z3IxuYuVw2NvV
	SAmTdWDwMbHu0czDwBZNrpeBHrvAag3XVhevcXADfG3OMX0LIfHmMSsmxrmoCe0dX/G04o+VwDQpo
	NtvcnICBkVyQYHAqdn7brShlxvig02/T4fp6PB/VYERM09rkcrOwMMecIz4tgA4sR8v2e5eXIVJzP
	jbTcoJWdhraVY3HCZn/BkzIVp22MU4O3H4DOZb3EM/fURgk+7WtIPOzmlmV85qW69Jy69ItXk1kXg
	I0yEJyBcUPpYBjMIkDnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQen-00FFGN-1z;
	Mon, 31 Jul 2023 11:01:45 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQeC-00FEeB-0P
	for linux-rockchip@lists.infradead.org;
	Mon, 31 Jul 2023 11:01:16 +0000
Received: by mail-pl1-x636.google.com with SMTP id d9443c01a7336-1bbc64f9a91so36611435ad.0
        for <linux-rockchip@lists.infradead.org>; Mon, 31 Jul 2023 04:01:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1690801267; x=1691406067;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I3HQqCjHhe62nCHb2ZUEredGg2Liro7QpcAO6XbGXQM=;
        b=Vbu3QlUxDZg8h79w1nMCHELds+BECqRM0VQBZ7eTInS4YI+1kEdByyYuXdZM7dSrGq
         33waIJ5YruLhehpBsPuE2dFPtTQgmI84V4ZIEnKh5q4OACZMvdPcewQ1sxNRNe5kqa5E
         6ry7bNVuLPciLCE61JAY48hpUnBcG7FAOkfsPunXIAcklRdcUDY1Uj7cIbaqnpG8iS2d
         UCT2Qwq+qQzO6v9Z/zNtLq6UjuehBSkg6MJUg+ngbrHuaNLM6+q4eQ5oWw7sGHp/IAlC
         qYbIjYyWoxOEzraNBj6PgFzu5SHV5++xfLF+6Jr9tRCAU+Dz2m7mhomhLlL9VX13DlEK
         p+Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690801267; x=1691406067;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=I3HQqCjHhe62nCHb2ZUEredGg2Liro7QpcAO6XbGXQM=;
        b=JZeofBWuE2Dd7vqyO3xoQQccJBZeESS99lR3nhQLx377sqtLOlVyMwKt+kLCOE/k3g
         DYOZiGkgyJQY38XuMinnhLW/3tyE1iHMZKWnU9hkxhNgC0eaItTsIqr2ZIVfyPKGc1ni
         zEC3qGQjGG22SdVOZJ5eDiiENYeiUkUUIbccr3gNgaK5PYvsosSUK+M98L97/Yw2EL4B
         1vEQUVzO7qnGPx70wMIYPqeQ0kYqDpLwDE3y+u+oMd44rN2QEoFzzTdBS911EnXuJpU/
         L/LfzoJjuqKtOUkMq/KJu2NdecWvRFHSxx4lq7QvGHdndoZdSgTufk+kgZqVIc4ysULR
         fFQg==
X-Gm-Message-State: ABy/qLby3ALm/tJviUHS4APZ4QT2vyOVupDwH1YQ7bICcUb3TUatmNUw
	apwOxBSQnN9IFXMmYA83b4sUmFy/75hDA85q8Jt01w==
X-Google-Smtp-Source: APBJJlFq+2TfHav2VZ5GzORqXeGIqvCIntD0Yt+oFMlS+Mm1TXcW7gCdNp3DlH7fkuLzM7MZG0S/Zg==
X-Received: by 2002:a17:902:ea09:b0:1b8:76ce:9d91 with SMTP id s9-20020a170902ea0900b001b876ce9d91mr11389549plg.1.1690801267368;
        Mon, 31 Jul 2023 04:01:07 -0700 (PDT)
Received: from localhost.localdomain ([49.205.243.15])
        by smtp.gmail.com with ESMTPSA id t14-20020a1709028c8e00b001b1a2c14a4asm8281096plo.38.2023.07.31.04.01.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 04:01:06 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Jagan Teki <jagan@edgeble.ai>,
	devicetree@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH 12/14] ARM: dts: rockchip: rv1126: Add Edgeble Neu2 IO DSI overlay
Date: Mon, 31 Jul 2023 16:30:10 +0530
Message-Id: <20230731110012.2913742-13-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230731110012.2913742-1-jagan@edgeble.ai>
References: <20230731110012.2913742-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230731_040108_253343_F1CDC9C2 
X-CRM114-Status: GOOD (  14.80  )
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

Add DSI pipeline for Edgeble Neu2 IO board via DT-overlay

The DSI connector in Edgeble Neu2 IO board support different
resolution panels and those compatible is added in another
DT-overlay.

Add Edgeble Neu2 IO DSI connector DT-overlay.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Cc: devicetree@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Conor Dooley <conor+dt@kernel.org>

 arch/arm/boot/dts/rockchip/Makefile           |   1 +
 .../rockchip/rv1126-edgeble-neu2-io-dsi.dtso  | 112 ++++++++++++++++++
 2 files changed, 113 insertions(+)
 create mode 100644 arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2-io-dsi.dtso

diff --git a/arch/arm/boot/dts/rockchip/Makefile b/arch/arm/boot/dts/rockchip/Makefile
index 0f46e18fe275..c8c8e1292650 100644
--- a/arch/arm/boot/dts/rockchip/Makefile
+++ b/arch/arm/boot/dts/rockchip/Makefile
@@ -3,6 +3,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += \
 	rv1108-elgin-r1.dtb \
 	rv1108-evb.dtb \
 	rv1126-edgeble-neu2-io.dtb \
+	rv1126-edgeble-neu2-io-dsi.dtbo \
 	rk3036-evb.dtb \
 	rk3036-kylin.dtb \
 	rk3066a-bqcurie2.dtb \
diff --git a/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2-io-dsi.dtso b/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2-io-dsi.dtso
new file mode 100644
index 000000000000..88431e1e30f8
--- /dev/null
+++ b/arch/arm/boot/dts/rockchip/rv1126-edgeble-neu2-io-dsi.dtso
@@ -0,0 +1,112 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2023 Edgeble AI Technologies Pvt. Ltd.
+ *
+ * DT-overlay for Edgeble Neu2 IO DSI Connector.
+ */
+
+/dts-v1/;
+/plugin/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+
+&{/} {
+	backlight: backlight {
+		compatible = "pwm-backlight";
+		pwms = <&pwm2 0 25000 0>;
+		enable-gpios = <&gpio2 RK_PD6 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&backlight_en>;
+	};
+
+	vcc_lcd_mipi_2: vcc-lcd-mipi-2-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_lcd_mipi_2";
+		enable-active-high;
+		gpio = <&gpio3 RK_PB0 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc_lcd_mipi_2_en>;
+		regulator-boot-on;
+		vin-supply = <&v3v3_sys>;
+	};
+
+	vcc_1v8_2: vcc-1v8-2-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_1v8_2";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+};
+
+&dsi_dphy {
+	status = "okay";
+};
+
+&dsi {
+	clock-master;
+	#address-cells = <1>;
+	#size-cells = <0>;
+	status = "okay";
+
+	ports {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		port@1 {
+			reg = <1>;
+
+			mipi_out_panel: endpoint {
+				remote-endpoint = <&mipi_in_panel>;
+			};
+		};
+	};
+
+	panel: panel@0 {
+		/* different resolution panels are used, compatibles are in DTO */
+		reg = <0>;
+		vdd-supply = <&vcc_lcd_mipi_2>;
+		vccio-supply = <&vcc_1v8_2>;
+		reset-gpios = <&gpio3 RK_PB3 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&lcd_reset>;
+		backlight = <&backlight>;
+
+		port {
+			mipi_in_panel: endpoint {
+				remote-endpoint = <&mipi_out_panel>;
+			};
+		};
+	};
+};
+
+&pinctrl {
+	lcd {
+		backlight_en: backlight-en {
+			rockchip,pins = <2 RK_PD6 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+
+		lcd_reset: lcd-reset {
+			rockchip,pins = <3 RK_PB3 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+
+		vcc_lcd_mipi_2_en: vcc-lcd-mipi-2-en {
+			rockchip,pins = <3 RK_PB0 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+};
+
+&pwm2 {
+	status = "okay";
+};
+
+&vop {
+	status = "okay";
+};
+
+&vop_mmu {
+	status = "okay";
+};
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

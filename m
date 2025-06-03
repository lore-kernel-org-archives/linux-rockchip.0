Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52306C5B552
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Jun 2025 19:42:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hCmtDxrSWn+2yQ3NAtmrrj9vdW0secPSu78WImJiuGc=; b=Aka0KtmQI0P1BH
	i1Yx7GZqX6K13KycN2KUIuIkK2S0YJ4xC1tlAh2qscpLmWvD82KwA/QjZIojcvbD+1tG8SPn2aIqL
	sQk+bVUQgDQDBCShvsz5GujI//uLiMGjAM0Pba1yLWGNKPoJ826jNB3m4FqelH7LKxhKWoIXlWTRo
	uwgzMpWxJlJZV3Q3axZcrsq5TDy7dPiynvEIV5PBQqjd7xAIXmiUTDgTwMeRPdAwLsvUWUy+HnZIa
	ZpoHqo0utS2N3TCuTP7Tm9YAxlpHhA5E8rjN75uJ4sRprVFldcNuvly4ai86UqqbrwOwUu7BrsOnh
	I1/BkppCL3iMVvl3gxxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMXWP-0000000BjF7-21Q9;
	Tue, 03 Jun 2025 19:42:05 +0000
Received: from mail-oo1-xc2e.google.com ([2607:f8b0:4864:20::c2e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMXWN-0000000BjDq-0VrR
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Jun 2025 19:42:04 +0000
Received: by mail-oo1-xc2e.google.com with SMTP id 006d021491bc7-606668f8d51so143711eaf.0
        for <linux-rockchip@lists.infradead.org>; Tue, 03 Jun 2025 12:42:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748979722; x=1749584522; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FgLtrMgHhQ/oGFMvm8sSOBZ5dDdVEtN1pzHrZf4N+fU=;
        b=JKPy7lpqE9aSkYBNDtip80ijXisoDBLp4oiQzMstokRl/J/FvGwX7XsYVzaQF+UqX8
         gATPfDaXn/6jmmAa56uY2PZBTzEmDKkurM+2zeu0lUA7Az5HNKRCgM9+F3WEWKNI9ORq
         m6esRXPv7knzVSCM9okFkzdKH4BMMA68ozL0WJrpVh/YkBzzfSElk2psywj96meklqtM
         C9kUOG/hghNrJ9vT10lbNwBWiupCGwj/iH1byZEqVT27nmLjMKnN19+xHGSewRBNbzEg
         Xc6e4swYBaBmVTqmEB6p74SgMyr5JxF6TRqky2pxG1i64OKnd+8BF/lFZ3fB/nTv/cET
         ptqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748979722; x=1749584522;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FgLtrMgHhQ/oGFMvm8sSOBZ5dDdVEtN1pzHrZf4N+fU=;
        b=wh6cxAoDwVpaatNE0a9Tn/7VlYKeiZ3bcEBe2DKvyQg3krNfG5BES2VTLCi+GP6bMA
         wiQage10/pjSHqls+XHs49pv+ESZtz0bnG6E+3NmfBGdeLOPkzwFtL9CxoVmraB9s33B
         r6+NdFE6Q82PL7mhOFETnD9B5whx4wQ+vrhoi1og+Nep8si1pyFdin9zFrTCoLtTIZIV
         RkCoxzuGwxWEPnNz7QQS6mqPcJouxIWdZnRDUZenKtsX3HB8IfpTPtgXaFh6Rfi9mf+e
         qztxZz6O4gC6JR1bWaPN/5SEmUZG0t7NTjaRlBOHMijV5r1up1gF5/NySmfQFUzHZuQo
         hMdQ==
X-Gm-Message-State: AOJu0Yw+eXiVTEannUBWBEr4V6x0BSL8PJHZuQBQoCywCwhPK9h6Frmm
	5CLwLW2lk1zu7F8bdG1GM6s59VKC0XxbsIqVlAdnvnEn0JD7j5Ylpq0x
X-Gm-Gg: ASbGncvbB+O4ireBm/qPVHVtrT7/zUSR4iakzmQOwrSAOUoUI8uk1XYxlhXj2+HW6mn
	IXybIWhjQyQ/m3Q86dDWQUX0TRpz4+jwhYH/ZYKY9SGyzYVH9OdKlJQ3CuL2buEFh0A3DHP5vt1
	qK3Sw89yiHY7DywaRgjA+kYVqbrCLU+n/9+6sE/pjI5+YfFxJnYeNHpVwlSzYMPGDsqKY6w16wJ
	ZlQquEPm2fQaXgFj5s509ZvS+YplE+sa5MyTgI7yD8qT6hhhnNaZnu7v78j5gA06uGAcLjs60jM
	OmxL5NMtP4uS40iifsMxdSAGqLybeMRLJPtGKhfCR+6IwLKtWgJ+Ajh+IVboFedWWrXJ43I=
X-Google-Smtp-Source: AGHT+IE9tiwKq/R/e3U5EawJb79KooQ4IxNgVCBv1cslv8xmu0yJpXxxMeDxU3qVBvLMhI+JZsrssA==
X-Received: by 2002:a4a:dc48:0:b0:608:3493:b807 with SMTP id 006d021491bc7-60efdd1f98dmr1851832eaf.2.1748979722009;
        Tue, 03 Jun 2025 12:42:02 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf:d19a:d10c:4358:1346])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-60c14c88f96sm1967615eaf.17.2025.06.03.12.42.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jun 2025 12:42:01 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	simona@ffwll.ch,
	airlied@gmail.com,
	quic_jesszhan@quicinc.com,
	neil.armstrong@linaro.org,
	javierm@redhat.com,
	megi@xff.cz,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 4/4] arm64: dts: rockchip: Add DSI panel support for gameforce-ace
Date: Tue,  3 Jun 2025 14:39:30 -0500
Message-ID: <20250603193930.323607-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250603193930.323607-1-macroalpha82@gmail.com>
References: <20250603193930.323607-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250603_124203_170645_B81FA0ED 
X-CRM114-Status: GOOD (  11.62  )
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

Enable the DSI controller, DSI DCPHY, and Huiling hl055fhav028c
1080x1920 panel for the Gameforce Ace.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../dts/rockchip/rk3588s-gameforce-ace.dts    | 66 +++++++++++++++++++
 1 file changed, 66 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts b/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts
index 873a2bd6a6de..bb7c1b732cc2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts
@@ -7,6 +7,7 @@
 #include <dt-bindings/leds/common.h>
 #include <dt-bindings/pinctrl/rockchip.h>
 #include <dt-bindings/pwm/pwm.h>
+#include <dt-bindings/soc/rockchip,vop2.h>
 #include <dt-bindings/thermal/thermal.h>
 #include <dt-bindings/usb/pd.h>
 #include "rk3588s.dtsi"
@@ -456,6 +457,42 @@ &cpu_b3 {
 	cpu-supply = <&vdd_cpu_big1_s0>;
 };
 
+&dsi0 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	status = "okay";
+
+	panel@0 {
+		compatible = "huiling,hl055fhav028c", "himax,hx8399c";
+		reg = <0>;
+		backlight = <&backlight>;
+		iovcc-supply = <&vcc3v3_lcd0_n>;
+		pinctrl-0 = <&lcd_rst>;
+		pinctrl-names = "default";
+		reset-gpios = <&gpio1 RK_PD5 GPIO_ACTIVE_LOW>;
+		rotation = <90>;
+		vcc-supply = <&vcc3v3_lcd0_n>;
+
+		port {
+			mipi_panel_in: endpoint {
+				remote-endpoint = <&dsi0_out_panel>;
+			};
+		};
+	};
+};
+
+&dsi0_in {
+	dsi0_in_vp3: endpoint {
+		remote-endpoint = <&vp3_out_dsi0>;
+	};
+};
+
+&dsi0_out {
+	dsi0_out_panel: endpoint {
+		remote-endpoint = <&mipi_panel_in>;
+	};
+};
+
 &gpu {
 	mali-supply = <&vdd_gpu_s0>;
 	status = "okay";
@@ -633,6 +670,10 @@ &i2s0_sdi0
 	status = "okay";
 };
 
+&mipidcphy0 {
+	status = "okay";
+};
+
 &package_thermal {
 	polling-delay = <1000>;
 
@@ -769,6 +810,13 @@ lcd_bl_en: lcd-bl-en {
 		};
 	};
 
+	lcd_rst {
+		lcd_rst: lcd-rst {
+			rockchip,pins =
+				<1 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	pcie-pins {
 		pcie_rst: pcie-rst {
 			rockchip,pins =
@@ -1239,3 +1287,21 @@ bluetooth {
 		shutdown-gpios = <&gpio3 RK_PB7 GPIO_ACTIVE_HIGH>;
 	};
 };
+
+&vop {
+	status = "okay";
+};
+
+&vop_mmu {
+	status = "okay";
+};
+
+&vp3 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	vp3_out_dsi0: endpoint@ROCKCHIP_VOP2_EP_MIPI0 {
+		reg = <ROCKCHIP_VOP2_EP_MIPI0>;
+		remote-endpoint = <&dsi0_in_vp3>;
+	};
+};
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

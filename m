Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B15FAC54EE9
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Sep 2022 14:35:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ly5aY5eyhYVfEjeaOJcAYS3p7uFewF7/70+tDIecero=; b=YHe6EJiB1KYF46
	zQSO3OrKFBbayB4ILI7g2xmR9fIL12B75L1J3PQ3wXCWHKLjW79QFdn+AVPpdALDsLPR73wuKg6W7
	bZJootTAHv5kbxiqv4JHPnzOP9lc5H/eWG2IYsM6ZwCvgaIBQi79FSOoKGwRquXl75MDTEnKitUan
	ec/v/HUvmdTwrEhbQlh5KzadKsSVW/kC1UHPZC7COAl60tBR3G0cBWk+bcy2cppGmvDz3dci51hKC
	z3Emz7DEz2ydqY2uCoNdDfF8HBZhdlIE4kahT0RWnnTfMzsei0bDmZOgX7NSCjKW1HEmZeYwBvieX
	R/Az0pzu5WGUi0wmzKQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaeLG-004W6E-UA; Tue, 20 Sep 2022 14:35:18 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaeL3-004W1Z-8S; Tue, 20 Sep 2022 14:35:06 +0000
Received: by mail-wm1-x332.google.com with SMTP id az24-20020a05600c601800b003a842e4983cso1833790wmb.0;
        Tue, 20 Sep 2022 07:35:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=+SuwuJGOg5KYd3WZxjux+NETV48IOgrGaRTD+kqFOac=;
        b=T31GHaV6hRYu6t3ABhfgwPr8thM+xw3K6xfdFTO/nuL27pQ/9IbuyRoK+RhPpg8dl0
         WeATDwRRoFm8h8dSlGJ19Zif0EBzDVeBu2HWmS0w4cdeUoJ0SmIiY8NMdoN9sK1QnOHw
         rYTY/MH4pTXsH1MH5TA2DUrUrGzXOgWMC9WiJgzLF11ghavW9C1S0E/aFMps3Wuvhmih
         R6XILSL1MjysD5YowPkAvg9IZrZKQwEO5KSqm6EQaQOP0MLhwHoxJMPw/t3CSsW2XQ2n
         PbZmSZkeC+q1Tmp+DkvIxnThwl0kN5nP2PcSyrpLyyfXWpy8+RcqOk/m2fL7iqOCw5qU
         3mCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=+SuwuJGOg5KYd3WZxjux+NETV48IOgrGaRTD+kqFOac=;
        b=lkpreSrtL3JOUvoTqdQ3z214HTjC5+41C/Iyb+Yu4bSqTJwtq1TBR3OH/LQRlb9Zgk
         JrhBmGjcFCGjIVRI8QjyX/XG+N/0UHOUnlkhT2cCrIiIbwMwwztMme0LSD32EuK9Vher
         2TFa7BI77pN7sJG9jutjTxrb6bhQ1iVvSiVhRPpvh8yEf2yZ6MO2ajMFrC8Htv80WvS+
         7Goj1bGDFSB3YUiVlJ9kwpsWeUSCgqteIXgVY6noOIbY4WkTkZwGo8M/KXHKUbPAaIBf
         EvCFi7j5d96lOZzSfPodE4Grcws776vkWgMwcx0P7tXXhJJo92VLM4I0P8xxKyV4vjUs
         /3ag==
X-Gm-Message-State: ACrzQf0Ph6+eprqgQ5srKOqw0DUc8Em73CEglHjz/+PWOScAZ7HwsXfI
	7xMTBVuMML6nNefbsJz3i5M2RCB+1m4=
X-Google-Smtp-Source: AMsMyM7Qp41zb/aighXcTiRczuHKL26S02RSou6pBtVxadl2Tgx5gVWBRb7XnaigW16nV9LESOTBPg==
X-Received: by 2002:a05:600c:33a8:b0:3b4:874c:f48f with SMTP id o40-20020a05600c33a800b003b4874cf48fmr2582646wmp.131.1663684500449;
        Tue, 20 Sep 2022 07:35:00 -0700 (PDT)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch. [84.72.105.84])
        by smtp.gmail.com with ESMTPSA id y11-20020adffa4b000000b0021e43b4edf0sm226250wrr.20.2022.09.20.07.34.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Sep 2022 07:34:59 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: Enable HDMI and GPU on quartz64-b
Date: Tue, 20 Sep 2022 16:34:46 +0200
Message-Id: <20220920143446.633956-1-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_073505_359002_8A16DEA5 
X-CRM114-Status: GOOD (  12.64  )
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

This enables the GPU and HDMI output (including HDMI audio) on
the PINE64 Quartz64 Model B single board computer.

Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
---
 .../boot/dts/rockchip/rk3566-quartz64-b.dts   | 60 +++++++++++++++++++
 1 file changed, 60 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
index 0f623198970f..77b179cd20e7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
@@ -4,6 +4,7 @@
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/pinctrl/rockchip.h>
+#include <dt-bindings/soc/rockchip,vop2.h>
 #include "rk3566.dtsi"
 
 / {
@@ -28,6 +29,17 @@ gmac1_clkin: external-gmac1-clock {
 		#clock-cells = <0>;
 	};
 
+	hdmi-con {
+		compatible = "hdmi-connector";
+		type = "a";
+
+		port {
+			hdmi_con_in: endpoint {
+				remote-endpoint = <&hdmi_out_con>;
+			};
+		};
+	};
+
 	leds {
 		compatible = "gpio-leds";
 
@@ -183,6 +195,33 @@ &gmac1m1_clkinout
 	status = "okay";
 };
 
+&gpu {
+	mali-supply = <&vdd_gpu>;
+	status = "okay";
+};
+
+&hdmi {
+	avdd-0v9-supply = <&vdda0v9_image>;
+	avdd-1v8-supply = <&vcca1v8_image>;
+	status = "okay";
+};
+
+&hdmi_in {
+	hdmi_in_vp0: endpoint {
+		remote-endpoint = <&vp0_out_hdmi>;
+	};
+};
+
+&hdmi_out {
+	hdmi_out_con: endpoint {
+		remote-endpoint = <&hdmi_con_in>;
+	};
+};
+
+&hdmi_sound {
+	status = "okay";
+};
+
 &i2c0 {
 	status = "okay";
 
@@ -456,6 +495,10 @@ &i2c5 {
 	status = "disabled";
 };
 
+&i2s0_8ch {
+	status = "okay";
+};
+
 &i2s1_8ch {
 	pinctrl-names = "default";
 	pinctrl-0 = <&i2s1m0_sclktx
@@ -677,3 +720,20 @@ &usb_host0_ehci {
 &usb_host0_ohci {
 	status = "okay";
 };
+
+&vop {
+	assigned-clocks = <&cru DCLK_VOP0>, <&cru DCLK_VOP1>;
+	assigned-clock-parents = <&pmucru PLL_HPLL>, <&cru PLL_VPLL>;
+	status = "okay";
+};
+
+&vop_mmu {
+	status = "okay";
+};
+
+&vp0 {
+	vp0_out_hdmi: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
+		reg = <ROCKCHIP_VOP2_EP_HDMI0>;
+		remote-endpoint = <&hdmi_in_vp0>;
+	};
+};
-- 
2.37.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

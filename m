Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8662C43217
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Nov 2022 16:40:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dmCYsD9J5OPCDmYSiuq4RcTGXvnwMJ5aqvDt5rIOqDk=; b=Hh4l9bI1Uz+DZ9
	hFGsNJIv2CfBKKXlQihQggfa16HuNdlwMg80jUluZ/b/hk4L9Ys94Tb7xp5b12HYbEH8xp9WidhaX
	lZL2cMIDvq6IIs0uWbPgo6LXxaMQ3qZ2g75B5XrqOICrKiodxhdI806R+NW7I25dET8oYzoGunmQJ
	/GdW0X+RDVLuLR2N2PrtbVazA3b1/D4KahdhDw+yFo0lGukLjrarsT/ZnJorbtyyczon8+LZuOUhn
	WBxoEe6ZHRCiyqgcq1sH6kd+CjotyNnIuSYn0YpnVrdJc+pCcdEkRzmvar9UPr2UW1XXpRGbyX58M
	tEfPhSeYRXd7ZewUq+mQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otAbI-007Er8-FZ; Thu, 10 Nov 2022 16:40:24 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otAa3-007DwS-BM; Thu, 10 Nov 2022 16:39:09 +0000
Received: by mail-wm1-x32d.google.com with SMTP id j5-20020a05600c410500b003cfa9c0ea76so1523430wmi.3;
        Thu, 10 Nov 2022 08:39:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ryja4COVOHIl0RDlGLdndcpFHG6CZ7IIZjln1Zob1wI=;
        b=BLZJOyoXuVI6cjgESTBwZFBVdWRXXaAWplg4Uh7VZQmXzWYbQBFckHCrSZ3RmUy31o
         5jdnQXtx4Z+HQAkEDm9JjGPPYUzagENkau4N777uZ2KuiveVjW5uJE+Pb9iYXFZHGBq1
         i8d02fZLyXqNaZv/5nK+JdU44LIMdnyB+hl0qTXj3P9IA3ArA4WM83T0HomhR5dOUbyD
         7Elq+j35UU32D7xs9cnubywoMW5UeLJST5ehdeY7twIFnvN369n3RLnfBLBLuYRKPalJ
         swLXeDv/Ka0b5fd668hPSP0+HYtOVyTAuYrFZTxXhwPuzcqB3qswKkRyzLbP+gXkFWJj
         YcYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ryja4COVOHIl0RDlGLdndcpFHG6CZ7IIZjln1Zob1wI=;
        b=LBsr8NjybqHeBOJngc95+8Zwgu4gGlgKLAcarfInKrZQriGUlDp8Al3TWmi0NPN8q+
         O8Ag+5SAv5/j0dzagA9ouQOuSs/oklvO9IyGTQXYFHnxHomZMafgZ73+zsulKZH0I2Vh
         SdF/wSJDrncctAyttPP6SuhlDY7zbibCDU1EAm9a6WZZ18MYdga3KyJY7nq5HwoZlMuA
         cCJlw10AWnnU/SCVXci+QzjwdzuQXH20zOgI1MxYiMWt04x+vMHB/UTUb8zDx7K8smKN
         0osXnXlJyELoEh6lSzcVCOjJ4GjX1W1NbIvR9htK6GbEye/E0U8WCUYixpDJMkvIQKLt
         OksA==
X-Gm-Message-State: ACrzQf0bsLtv+mheXRm4Ll7GnCCjpg73BPe8k4nQVwwsefPe9Ow32ExF
	fTqNEEz3TSvdF+053CQW698=
X-Google-Smtp-Source: AMsMyM6jsF26ePp2sOngoBUlnVedO++lHRQA6eU6Uvp3knVI1RzhtwfviyZ1qK18HnEEy6ZWkeNGQA==
X-Received: by 2002:a05:600c:2044:b0:3cf:570f:db5e with SMTP id p4-20020a05600c204400b003cf570fdb5emr49885420wmg.57.1668098343445;
        Thu, 10 Nov 2022 08:39:03 -0800 (PST)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch. [84.72.105.84])
        by smtp.gmail.com with ESMTPSA id f24-20020a1cc918000000b003b4935f04a4sm128730wmb.5.2022.11.10.08.39.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Nov 2022 08:39:03 -0800 (PST)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/4] arm64: dts: rockchip: Enable video output and HDMI on SOQuartz
Date: Thu, 10 Nov 2022 17:38:43 +0100
Message-Id: <20221110163845.42309-3-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221110163845.42309-1-frattaroli.nicolas@gmail.com>
References: <20221110163845.42309-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221110_083907_461711_0D109FDE 
X-CRM114-Status: GOOD (  13.31  )
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

This patch adds and enables the necessary device tree nodes to
enable video output and HDMI functionality on the SOQuartz module.

Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
---
 .../boot/dts/rockchip/rk3566-soquartz.dtsi    | 47 +++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
index 6e99f049501c..0bfb0cea7d6b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
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
 
@@ -148,6 +160,24 @@ &gpu {
 	status = "okay";
 };
 
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
 &i2c0 {
 	status = "okay";
 
@@ -619,3 +649,20 @@ &usb2phy0_otg {
 &usb_host0_xhci {
 	status = "disabled";
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
2.38.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

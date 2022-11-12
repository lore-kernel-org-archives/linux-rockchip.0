Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 512B6C4332F
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Nov 2022 16:05:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dmCYsD9J5OPCDmYSiuq4RcTGXvnwMJ5aqvDt5rIOqDk=; b=OgLAaJFcRrC426
	BhxQTqtMRUwjoW5oPUXoXKnHva2s4SQsL3ICYuIBtIfr6+qtKQUE8HqkGQfMF87KnjNTmU7FKpe+W
	UOboT0DjmUg4qmhhOj2/PbawYRNAmjH5mZNWbHLT/by5Ey1KmuQodSF74xp+7wLJiXnLvVu42+w88
	DYKiWn1p53bmBN0vQ+tkAdTqBMMKUvmzRiYIFXy/bRX0vvMmpJ0BRNxRBXOjq2hvWRlhnjebl/zoB
	Zbl31myKq5bgCq0Pn5PMcAFH8P89ych8IOHntU0Yq1jUMjT5i1EFLIm2oMzM78xSjTE26Y8Mf3oWz
	bVzzTFsk9kgCmtKVBRAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ott03-006d0M-75; Sat, 12 Nov 2022 16:04:55 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otsze-006ckF-SX; Sat, 12 Nov 2022 16:04:32 +0000
Received: by mail-wm1-x32b.google.com with SMTP id l39-20020a05600c1d2700b003cf93c8156dso4926343wms.4;
        Sat, 12 Nov 2022 08:04:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ryja4COVOHIl0RDlGLdndcpFHG6CZ7IIZjln1Zob1wI=;
        b=W2+hFqYRrsHwvKIwFlXxU5UeP4Hn1PIXuemAtrwiCMuoPIps/J5IVBDmvBBC4QGkK4
         CJ4sb8OTYws5/48bkUAK0jT2+pQLyZFuTR72CQG/j4Byb9OmhHG2NpcmEBdFLbkixVOB
         2QpBaPlJfxIyTGFSpliQdcGPJLlXE4gSNJAvc3L9qQP2TFgg5ZAF3RG48z+iF4U9dTjD
         4eOa/JQ09vIXymtES2xkBSZW/FG/EZIXkXDp4a0E9QUeJmYOxODQSS3dIYVmevD4FMT6
         Tf8mOVHPnr7KkC8NaqFZ2XVn5CJIQWi12qxYvUC2/94qD750jO+OWr6GJgXw2n7i4ZnU
         GYzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ryja4COVOHIl0RDlGLdndcpFHG6CZ7IIZjln1Zob1wI=;
        b=slnSjxN7IYrCJnvDiq4KWJUHmyqeCJV2t1BpB47sG9iGnWISkvmZiTsfct4DwebuLm
         5glxjUirMvL1qmVL1svcQPcrK3lQliITndnn5AchVSn5Ha6TyDtkblvK+RKWdfhnwdz2
         Jo6kBjC4fvG7FEmYQf5rt/IatWjSxC/crmyOTvZfYcv3dxMYEkgq4RMMk2Ba2+p1oRvx
         uGEQvQQWpzYQW4wrjSjAhNmKHQP6UQJvqhXkHMLSw1tw07Y7Gktt2wtm7qR4HEBx5dIw
         n6HrcNbtril6+SrQgIgkJxDJSsRu3aQ8S9mKcEscjmdj4IOPoAd5EO3/0SpvzzoVS2Xi
         ziLw==
X-Gm-Message-State: ANoB5pnxMdN+CqiXTsM098AYrHkCWsjrUytU2/SP2MBc7vd1g9mj3gJ3
	i3U+sYtjbrgcr6be0a5qTms=
X-Google-Smtp-Source: AA0mqf7R3EjsE/f2MM3c5yicPRNoufA1vOUCZrRluhmusrV6myk9zahbFvRQoaRlG3nOijvjuvx5mA==
X-Received: by 2002:a7b:cd0e:0:b0:3cf:ca45:3b19 with SMTP id f14-20020a7bcd0e000000b003cfca453b19mr4057679wmj.179.1668269069370;
        Sat, 12 Nov 2022 08:04:29 -0800 (PST)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch. [84.72.105.84])
        by smtp.gmail.com with ESMTPSA id iv16-20020a05600c549000b003cf87623c16sm14605752wmb.4.2022.11.12.08.04.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Nov 2022 08:04:28 -0800 (PST)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/6] arm64: dts: rockchip: Enable video output and HDMI on SOQuartz
Date: Sat, 12 Nov 2022 17:03:59 +0100
Message-Id: <20221112160404.70868-3-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221112160404.70868-1-frattaroli.nicolas@gmail.com>
References: <20221112160404.70868-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221112_080430_942666_60164246 
X-CRM114-Status: GOOD (  12.89  )
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

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B4D7C10F05
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Dec 2023 12:52:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BspVObJtVDTpVvFtQZbdnoQvUjHoGvwB2k9Kc/xI2kA=; b=QXYX81I7KJBoM+
	Wzlut+K2cXVGVxteL31buJGMEVhVpoSrFcdFtF4NVZzmz+503Y0cT02PaiUmR5PNDoTGv5vA9TjPc
	3c/BSglyFKd28xtLunKsiQJwkKrljtqn9NjxS6DM6yu2FVGMlT4dFwEXcK/gO7ZV3IXzfUgyyP6wx
	q3J79QtELw7+C9ACFQohBQW/4Tj3HHlvp/bzqdYeFF6l4o77QJrVeGlW4JOwNf4l87z6RwgTDm5iE
	3FSOLkwP+NmLAcozN3Rp4i4fI/GcLd3gyu4aSKUo0UFrsEZ98PyN7pk6cIooV7YpRxcd35fSOzbOD
	n+C8SoXLl+t69AIcJU3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r9PTf-00FhzN-2P;
	Sat, 02 Dec 2023 12:52:11 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r9PTZ-00FhtY-2F;
	Sat, 02 Dec 2023 12:52:07 +0000
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-a195e0145acso302866266b.2;
        Sat, 02 Dec 2023 04:52:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701521521; x=1702126321; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vGS3uiiSRjNFmcXcLobVydkfz1z0YWeEIsOnLuIOTtk=;
        b=BmrVkal6Ofz1CPI+Su9D093IZDSCLpSxiVKuZ6woxIRFSc/elrZC3+4d/M2yTsM75C
         0olCzQp7AMv4tAs768TpBA4Okn3Q/BmxLhzc5A8ohj9Y7lI6A87BWa0Z7WeDB5gnIgZH
         FRC0CVhQmtMoqhv4pOxk34gTMKuNX9zqvVwNEid3RLQjaOsdeF4rL2ydduXIaegZI2Yw
         4RkFNevghqHNzcmsPkXUDVWxkCcrMcatUO2A0lXjvgxXT0M0AjgIc9HWW1aE13oyQCEZ
         03aDOg/hmRPZIh/ZF+8+Km31ij3c8mk8dfIRtLrVRGv/JAUw3KfPyIRBeg974yJyoEXT
         yvKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701521521; x=1702126321;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vGS3uiiSRjNFmcXcLobVydkfz1z0YWeEIsOnLuIOTtk=;
        b=XYw5i2QcDRQwCRDds1IU/NoysBWIO4rsOTQwFbymDEvlkV1ix/V4Md2r38lMPvgEEo
         olg5xOQfE8VnL1/1d0gq9n+XUyL0tq5+kM/8i4V9c0PFE2GAWhICRW5VMmZ2YNfRDWf4
         OkR/DPRPSYBCq1QwRHheSDZosKYpjasaG8eW2q/B+xjoQNYY2a6YP7LGMflFsMlH/2OX
         YV7hcKssGghRblcYU8RPid+N4mI+5FlZuft9M0LtmxuIS4WwOdaTu+e3BXGIfvsW6QQn
         9uCfUJA0VNFTVF7o8/9BE+XflG4Y8jYpBzQ75/0CVT2/D3YfMuQ2VDWtpkLJ3kE/FG3A
         TD8Q==
X-Gm-Message-State: AOJu0Yx1oabc3mnsevLMrz6ltMnW3kJ03NBHue0xwd3Jgxh/NyOd23Hw
	60Z3yk/Afq3ZtclmAwkMQQ==
X-Google-Smtp-Source: AGHT+IFQCssdJ19Dhg4av1bEqGzWCJHnq4HF6friZV69W7kUuaniNiFQHWBT6X9GqTCcTQpVcwkvXw==
X-Received: by 2002:a17:907:a18f:b0:a19:9b79:8b47 with SMTP id om15-20020a170907a18f00b00a199b798b47mr814246ejc.88.1701521521158;
        Sat, 02 Dec 2023 04:52:01 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:908e:b829:354b:f8ee])
        by smtp.gmail.com with ESMTPSA id g5-20020a170906198500b009c5c5c2c5a4sm3018161ejd.219.2023.12.02.04.52.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Dec 2023 04:52:00 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>
Cc: Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@gmail.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Maxime Ripard <mripard@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-pm@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v2 2/5] ARM: dts: rockchip: Add power-controller for RK3128
Date: Sat,  2 Dec 2023 13:51:41 +0100
Message-ID: <20231202125144.66052-3-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231202125144.66052-1-knaerzche@gmail.com>
References: <20231202125144.66052-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231202_045205_771076_FE8AAB80 
X-CRM114-Status: GOOD (  11.89  )
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

Add power controller and qos nodes for RK3128 in order to use
them as powerdomains.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3128.dtsi | 101 +++++++++++++++++++++++++
 1 file changed, 101 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3128.dtsi b/arch/arm/boot/dts/rockchip/rk3128.dtsi
index 4e8b38604ecd..b72905db04f7 100644
--- a/arch/arm/boot/dts/rockchip/rk3128.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3128.dtsi
@@ -8,6 +8,7 @@
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/pinctrl/rockchip.h>
+#include <dt-bindings/power/rk3128-power.h>
 
 / {
 	compatible = "rockchip,rk3128";
@@ -133,6 +134,106 @@ smp-sram@0 {
 	pmu: syscon@100a0000 {
 		compatible = "rockchip,rk3128-pmu", "syscon", "simple-mfd";
 		reg = <0x100a0000 0x1000>;
+
+		power: power-controller {
+			compatible = "rockchip,rk3128-power-controller";
+			#power-domain-cells = <1>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			power-domain@RK3128_PD_VIO {
+				reg = <RK3128_PD_VIO>;
+				clocks = <&cru ACLK_CIF>,
+					 <&cru HCLK_CIF>,
+					 <&cru DCLK_EBC>,
+					 <&cru HCLK_EBC>,
+					 <&cru ACLK_IEP>,
+					 <&cru HCLK_IEP>,
+					 <&cru ACLK_LCDC0>,
+					 <&cru HCLK_LCDC0>,
+					 <&cru PCLK_MIPI>,
+					 <&cru ACLK_RGA>,
+					 <&cru HCLK_RGA>,
+					 <&cru ACLK_VIO0>,
+					 <&cru ACLK_VIO1>,
+					 <&cru HCLK_VIO>,
+					 <&cru HCLK_VIO_H2P>,
+					 <&cru DCLK_VOP>,
+					 <&cru SCLK_VOP>;
+				pm_qos = <&qos_ebc>,
+					 <&qos_iep>,
+					 <&qos_lcdc>,
+					 <&qos_rga>,
+					 <&qos_vip>;
+				#power-domain-cells = <0>;
+			};
+
+			power-domain@RK3128_PD_VIDEO {
+				reg = <RK3128_PD_VIDEO>;
+				clocks = <&cru ACLK_VDPU>,
+					 <&cru HCLK_VDPU>,
+					 <&cru ACLK_VEPU>,
+					 <&cru HCLK_VEPU>,
+					 <&cru SCLK_HEVC_CORE>;
+				pm_qos = <&qos_vpu>;
+				#power-domain-cells = <0>;
+			};
+
+			power-domain@RK3128_PD_GPU {
+				reg = <RK3128_PD_GPU>;
+				clocks = <&cru ACLK_GPU>;
+				pm_qos = <&qos_gpu>;
+				#power-domain-cells = <0>;
+			};
+
+			power-domain@RK3128_PD_CRYPTO {
+				reg = <RK3128_PD_CRYPTO>;
+				clocks = <&cru HCLK_CRYPTO>,
+					 <&cru SCLK_CRYPTO>;
+				pm_qos = <&qos_crypto>;
+				#power-domain-cells = <0>;
+			};
+		};
+	};
+
+	qos_crypto: qos@10128080 {
+		compatible = "rockchip,rk3128-qos", "syscon";
+		reg = <0x10128080 0x20>;
+	};
+
+	qos_gpu: qos@1012d000 {
+		compatible = "rockchip,rk3128-qos", "syscon";
+		reg = <0x1012d000 0x20>;
+	};
+
+	qos_vpu: qos@1012e000 {
+		compatible = "rockchip,rk3128-qos", "syscon";
+		reg = <0x1012e000 0x20>;
+	};
+
+	qos_rga: qos@1012f000 {
+		compatible = "rockchip,rk3128-qos", "syscon";
+		reg = <0x1012f000 0x20>;
+	};
+
+	qos_ebc: qos@1012f080 {
+		compatible = "rockchip,rk3128-qos", "syscon";
+		reg = <0x1012f080 0x20>;
+	};
+
+	qos_iep: qos@1012f100 {
+		compatible = "rockchip,rk3128-qos", "syscon";
+		reg = <0x1012f100 0x20>;
+	};
+
+	qos_lcdc: qos@1012f180 {
+		compatible = "rockchip,rk3128-qos", "syscon";
+		reg = <0x1012f180 0x20>;
+	};
+
+	qos_vip: qos@1012f200 {
+		compatible = "rockchip,rk3128-qos", "syscon";
+		reg = <0x1012f200 0x20>;
 	};
 
 	gic: interrupt-controller@10139000 {
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

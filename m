Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6CF5C46CCD
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Dec 2023 16:29:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KYCNTd9SGxZSZ3paItvHE+mbbdEytakLpG8fESLeTnc=; b=ksZScrII9N++qf
	dipEPRf+li3d9an43v1ADtl5MRsu3zGevbSToX6f3gxY6w1KSeCIi5mYy59xNJhH3wQ/+jCREYjab
	e7nVKoqXyd5M8dnZ8J7NLXht+W/+IaiVIIXJiGc9yyoNMRU1PsHfmEGW9kZdaxEm+geoYvp6nmE3w
	X57OInj0KwXoaYwoYB5SBh9sS9h8FTL0KCg3FXJXsIlChB410uCaB9KmUQVWtESSu8fyCewL8EAIJ
	IDmJnE96ORvVGpZmb0OBXs9fvM/gXtqwLlNt1FGV9aSmQvBvBa2e7trcJOKBnQp3mNrTsH8ClMcjP
	KkUbTrXTCx0pU63Xep6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rEXXg-006M4i-1Z;
	Sat, 16 Dec 2023 16:29:32 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rEXVd-006K2W-2M;
	Sat, 16 Dec 2023 16:27:27 +0000
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-a1e35c2807fso191394666b.3;
        Sat, 16 Dec 2023 08:27:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702744044; x=1703348844; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gBYs3PhPVI6eUxnSZWKmlMF4qjz6lpemR7OHeO6knFA=;
        b=kA+IyIU9gMB8GcEpVuU4G3py3SHFbQ3GOf0wdS/ZY2h+baih5ZpnO9zp/gIunAl2Pn
         o7rPsI7d+2i9hF8BaTd16zgLnW5gORFiTdr/GN4FsQJLcJl8pkVCV3ze1wrioWGVr+gt
         Uhk3kgmzZWYuYr6aw69aboQ0bdQeFd9+Ybah5PMUC5HiU/eMDcxFPaxnpuFzrIsvhDoy
         dgXsFI08IfYgLj6MLO8YiM8usKxfYmnqPOMaPrRklibO7UjsNPgSezmiFptlToBHUsFP
         zQ0MYkRB5IyKSoCigfd7MX9MEO2T98XO2x4wznIB88h3szbb31bM95/O6lr4nlT3zxoH
         Kx7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702744044; x=1703348844;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gBYs3PhPVI6eUxnSZWKmlMF4qjz6lpemR7OHeO6knFA=;
        b=iaG1V7pdPROwNxqi/7zUvhCFFciUsBvSfTXwAfpg+LyPBAZcTVab7SYWIr0rhzfeJQ
         Gla7H4UlRkf9juTnPPI+o3R8x+QKjpMKYWD1B0YNRZdYuvziASEPyhu/2XSmV4ud0mij
         i+3zzGa3ym7B5tXJYx07QJqVQvZoKlxTcBoA00KIuYbVS5rPdQQOTnP6wOWFFGwBQ8Ph
         Q2aYlhWxfxkgQtFajTeEATreNdfqGhGzs1ELCcejSkhi9WQbayS4EAehQBfZcxR0+5R4
         18xnVvnE6WxPDHHpnkFJWAPObEOkgp9G86jT86yXebvsfydWlgBFDEe09Gmap8GS/9zn
         aRRg==
X-Gm-Message-State: AOJu0YzTzw01mNb1ERsl0fDt1btmrib9TKHDnSGHpO4/XECiNGLZ0+7u
	lnbS0BfyL30EJUECLWUbnQ==
X-Google-Smtp-Source: AGHT+IFL//jIxTYByWAR+rnaaAeoTcePi2y7wDdwHT2lbXxpOe8v9YhxlqSjIVwsz6sRq5BVkqL4xw==
X-Received: by 2002:a17:906:3199:b0:a23:2e05:8465 with SMTP id 25-20020a170906319900b00a232e058465mr339276ejy.6.1702744044454;
        Sat, 16 Dec 2023 08:27:24 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:e807:d345:6f47:1db9])
        by smtp.gmail.com with ESMTPSA id st10-20020a170907c08a00b00a1cd0794696sm11990362ejc.53.2023.12.16.08.27.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Dec 2023 08:27:24 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andyshrk@163.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>
Cc: David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v2 26/27] ARM: dts: rockchip: Add HDMI node for RK3128
Date: Sat, 16 Dec 2023 17:26:37 +0100
Message-ID: <20231216162639.125215-27-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231216162639.125215-1-knaerzche@gmail.com>
References: <20231216162639.125215-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231216_082725_794437_24FC59A0 
X-CRM114-Status: GOOD (  12.62  )
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

RK3128 has Innosilicon based HDMI TX controller similar to the one found in
RK3036.
Add it and the respective port nodes to the SoC device tree.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
changes in v2:
 - no changes

 arch/arm/boot/dts/rockchip/rk3128.dtsi | 33 ++++++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3128.dtsi b/arch/arm/boot/dts/rockchip/rk3128.dtsi
index 1a3bc8b2bc6e..fb98873fd94e 100644
--- a/arch/arm/boot/dts/rockchip/rk3128.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3128.dtsi
@@ -270,6 +270,11 @@ vop: vop@1010e000 {
 		vop_out: port {
 			#address-cells = <1>;
 			#size-cells = <0>;
+
+			vop_out_hdmi: endpoint@0 {
+				reg = <0>;
+				remote-endpoint = <&hdmi_in_vop>;
+			};
 		};
 	};
 
@@ -463,6 +468,34 @@ usb2phy_otg: otg-port {
 		};
 	};
 
+	hdmi: hdmi@20034000 {
+		compatible = "rockchip,rk3128-inno-hdmi";
+		reg = <0x20034000 0x4000>;
+		interrupts = <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru PCLK_HDMI>, <&cru DCLK_VOP>;
+		clock-names = "pclk", "ref";
+		pinctrl-names = "default";
+		pinctrl-0 = <&hdmii2c_xfer &hdmi_hpd &hdmi_cec>;
+		power-domains = <&power RK3128_PD_VIO>;
+		status = "disabled";
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			hdmi_in: port@0 {
+				reg = <0>;
+				hdmi_in_vop: endpoint {
+					remote-endpoint = <&vop_out_hdmi>;
+				};
+			};
+
+			hdmi_out: port@1 {
+				reg = <1>;
+			};
+		};
+	};
+
 	timer0: timer@20044000 {
 		compatible = "rockchip,rk3128-timer", "rockchip,rk3288-timer";
 		reg = <0x20044000 0x20>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

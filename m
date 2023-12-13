Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A339DC19774
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Dec 2023 19:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s3fVJSZvWN7hKQChx2Jl9okDufItzes+NsA9vslkV7o=; b=bVqfd3kxeslttr
	5MftL8VvUWXrfSPkpmlxYa3X6dprat5gLUsLWG5bvOAvbIYPKHPHJ862uXmghhLxB45wwT5mfVwA3
	FKlW2erqSK9eDEcKxor/lR2o7tabdFtTk7EpYlN/Xi6dZ5YthNJ7z66w6ail5pGQE7PR4ddsXzC2A
	f6P+K6s+AD0DQzCMJd5nwuo7x9VyWqmBhViWbwsQw1qeQOuijatONhe7EG8Dgc5dYWkkhE3ecVTjf
	37/NvIMcf64RueCgsmU56Bi/YgWot6UoIFK+NBLOP6to6w8Zihpq60WSxtpk6vY3ntdEDqdcd8jvt
	gQrumdHTc84/cQZLpM+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDVGq-00FsnR-2o;
	Wed, 13 Dec 2023 19:51:52 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDVGZ-00FsWr-0I;
	Wed, 13 Dec 2023 19:51:36 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-40c55872d80so11677455e9.1;
        Wed, 13 Dec 2023 11:51:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702497093; x=1703101893; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+bG6mHprJzSYZBwi1h+X+EBITVK9IcgyHPusQHlrEts=;
        b=kDy0KVBVgsTqO+yDXgzHKcZ1wwGdC7Mkov6Y+XuK1U/q2gVxIsdb7mbHr3cKNlPr2N
         EbGBSkZV4a/xehZW1iwZ8YRNnOhU2HrCWl0uvxNLVR6LKH/Ksjl+TAm96TVxHPq4TaEt
         28rqb7kHX5dpyeo3H8t9dWOR66PS2RuAPBq8ClUwn9vxgcUL6IWq0FNGWGgf7CcslGPe
         mDG4++6WOpZD1E/zvvJdMGzcyEg1rI6LKwoVy+6LY9xRUbLjq8Q8I5pfbavyOfRMhQgW
         1fimsdJdesqRT+H2ohm7BQd9pXxxXnnt3WxhjJJkugPq8ed7HIucSOmc1ibLL2UQ40tx
         n9SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702497093; x=1703101893;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+bG6mHprJzSYZBwi1h+X+EBITVK9IcgyHPusQHlrEts=;
        b=ZGMp3TkAruPAanF0BJZczx9Ll+gDxtFKaKeCovPLZU9iSlJkYP746G1Z1l+iXo45VN
         32TFxEnbFx3SXUHQy/erGtfxGgAgq+oqaR1PwORE+DWUf4M3nLNU7E6ZNZRaCS8VBpSf
         dzkfU8bjokgbFMrT+fXc+jpKcodgcsYUmadsFlxAm3Dl65k1pOI1f4bnc5Z6Hv7jwHSg
         hCfOjcc8Pd6jcVqTHKa5EkDQlnUykBEw9+azHBM6/cvN+Ye4Nijgu+jWL016iMhTl5ai
         a5+S3BAmh8JWp8iG41BjrjlpZTKlA4cOCi/6EdDndOOjf9WFPu09naBY9i7SNT7PSV22
         H7lQ==
X-Gm-Message-State: AOJu0Yx+nO3XPIkGhfSpaeFE5ap1ujR3YUUv2bs4T7nS1A4Or72wZjN9
	5S7hrB2/cxxEW+k0kHiHbA==
X-Google-Smtp-Source: AGHT+IFRAbuvo+AB1xrGk5ZpZVLEeTXGFu7yh6ePcgyz+hlOtupWmzw76K4PJsqzujbcgJRctTp1qw==
X-Received: by 2002:a05:600c:3381:b0:40b:5e4a:2360 with SMTP id o1-20020a05600c338100b0040b5e4a2360mr4804554wmp.98.1702497093548;
        Wed, 13 Dec 2023 11:51:33 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:92dc:8b1c:e01c:b93c])
        by smtp.gmail.com with ESMTPSA id fm14-20020a05600c0c0e00b00407b93d8085sm24050698wmb.27.2023.12.13.11.51.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Dec 2023 11:51:33 -0800 (PST)
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
Subject: [PATCH 10/11] ARM: dts rockchip: Add HDMI node for RK3128
Date: Wed, 13 Dec 2023 20:51:24 +0100
Message-ID: <20231213195125.212923-11-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231213195125.212923-1-knaerzche@gmail.com>
References: <20231213195125.212923-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231213_115135_131924_9A3C6E1C 
X-CRM114-Status: GOOD (  11.80  )
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

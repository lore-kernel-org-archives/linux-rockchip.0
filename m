Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26FB5C10DC1
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Dec 2023 15:36:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IXxXkPjWNQs/qpqrem73CbZofxlBBDNPZvjGfoJuk7E=; b=R6NJsHGlwkbU/O
	es6dOQkOEq8Ewv4jbs7WKM0k3Mbod2KSocErgvwVBUcmVJcSRIo5Z3TrH9j4tw+IU7ejru5TqDG0M
	qenKARXqbm7p66NDGBBQW2uIxS75p1GBRu+LhZ3UCz01AeDi+17+59uMGXj43wwU1u2y6OmL4YVbN
	MRRDD8QL8o4m04sDRiSwbB9u6qwFb9GETpOZBY/Tw5/79guewuvPSoH1X+nGnIkQ9e/3c5ZkpKXPW
	8X95Ep2kmdOrkcse2re1Symu4llWG0oZnW2YZ6mxXuyWkf3dLfJmWQ6exhKUZf+UzSPdXzUfJkSgg
	TbSfn+eO4sqT6VQO1Jvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAAzM-004yQX-1k;
	Mon, 04 Dec 2023 15:36:04 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAAzG-004yNr-22;
	Mon, 04 Dec 2023 15:36:00 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-50be4f03b06so2283260e87.0;
        Mon, 04 Dec 2023 07:35:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701704156; x=1702308956; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/JoGo3S5F18Eq5w0w9lKp48csF80CvWfgslipmXEQ2c=;
        b=ZDcVJOhTaVzEvBqZMTieEEOD6VXwwKuBao4dlFB4dFh7jz8DNDEp/pfFEWSMDWisSZ
         XmtC9xIRiY7l8i/PX+c1gR/Klwoh8xDEfpXqOQrogDhQFDsM/Uz9AmXeDRDHQ347AS/g
         OV0PSKBXhLzHaUKVYjQLY3FlD8VyM8qsHYEgKoQw7GrvJoLMfuToiSdUoHmTHcrjgWlH
         O0CLWsSm+TkL+s/MeThEAG9t+dhfAwxsroKE9+Q4BCqCT4h3tPHLvbTGfm6oew6QR87d
         +YgEJAFBuOupzx4d/0GLeiNNEy5IOnPTZ4Y6vU4Ly502eR21rjmvi8vwPl6qm6f1QEj9
         Mj0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701704156; x=1702308956;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/JoGo3S5F18Eq5w0w9lKp48csF80CvWfgslipmXEQ2c=;
        b=Tp1HK1y6lOV3J+8SoMqW4bKqBzLZ/cxDDZZTV46u/SRuRioD1Zh5grvtuJMAgXOPLn
         FUm+v5br63YEA48pwB/eeMpM3Q3QmzKZnvXqjL1d4jICKJDF2G3ND7Kl7eTYmVbHNWzZ
         7nTJyMrQHf+JREW7QNjx7e0s7L/xhyak0r38dYmYvOLr0pisYtELA6OPr9IwmwVQcBap
         D/rcjA0XYb/ixziy9WtgIi82uUeVql9+azECJoWSKMyEXv8U8sU87CPRj/y8CnpS5B8y
         9B/aiIymbvKmpp2fTIoHymx/0t5wwHcJ0r9kUyGaEBi2D7Pt5eA0jfTeDgIWPwy8NFhu
         24Zg==
X-Gm-Message-State: AOJu0YxcpjQ9NOuqsDSLqqC/RRGF3wKBy858Mgj2TBUfzNxW8RwG+gp6
	FqFvOB6KEsdV4rWK5yWcbA==
X-Google-Smtp-Source: AGHT+IFeR1c6fEMTNf73omsuIShEqHPdSRkJR+GEECA6voE9/MXpZsqiF0j631q2/HOWTWd/oPU3kQ==
X-Received: by 2002:ac2:546d:0:b0:50b:c977:106a with SMTP id e13-20020ac2546d000000b0050bc977106amr1765730lfn.51.1701704155343;
        Mon, 04 Dec 2023 07:35:55 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:55ff:210b:5393:c9d7])
        by smtp.gmail.com with ESMTPSA id h20-20020a05640250d400b0054c77ac01f4sm693194edb.51.2023.12.04.07.35.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Dec 2023 07:35:55 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v3 1/3] ARM: dts: rockchip: Add power-controller for RK3128
Date: Mon,  4 Dec 2023 16:35:45 +0100
Message-ID: <20231204153547.97877-2-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231204153547.97877-1-knaerzche@gmail.com>
References: <20231204153547.97877-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231204_073558_690551_CE79B2C0 
X-CRM114-Status: GOOD (  12.12  )
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
 arch/arm/boot/dts/rockchip/rk3128.dtsi | 88 ++++++++++++++++++++++++++
 1 file changed, 88 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3128.dtsi b/arch/arm/boot/dts/rockchip/rk3128.dtsi
index c0c9f0eaffa3..0676d8b22a1e 100644
--- a/arch/arm/boot/dts/rockchip/rk3128.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3128.dtsi
@@ -8,6 +8,7 @@
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/pinctrl/rockchip.h>
+#include <dt-bindings/power/rk3128-power.h>
 
 / {
 	compatible = "rockchip,rk3128";
@@ -133,6 +134,93 @@ smp-sram@0 {
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
+		};
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

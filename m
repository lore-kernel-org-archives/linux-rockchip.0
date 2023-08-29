Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07702C83F14
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Aug 2023 17:19:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NbAk7g3pbzX6SOVLlHYidEBs9onreaZGXdKzYBCO+Tc=; b=kT96IcEeP36w5r
	B7tXdWhXztWNdO/w7EP5Ob0mKiN5y1Cy+ng9jqTAArAp2tK+EMlP1/fnyAMtjkREMsk9KRRdIV1mT
	TkXFukjNUyJ+W3YDDtjUCcdRZoRWq8xgzBbxe+fHuuggFtO34yIeol8ulxir+LHsMypwsutkHFZ2H
	Ngm5g1S8ZRrAO8pMG2+4ECUNE4BmLNb8F2HpR3K4MfLOIQAzZmPJiot1zzWYYWdMsV1voWBWq0yjw
	ViRa2HVtOoNHr2iLqObxxCHixdEVu7lQj7bVoMo8pnIi8TreK5SY0GB6CdwP7hbO3++r9MU9J41dX
	TnxOsnYhHacZuZi2cIQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2NS-00BxWL-1x;
	Tue, 29 Aug 2023 17:19:42 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2La-00BvWq-1k;
	Tue, 29 Aug 2023 17:17:49 +0000
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-9a2a4a5472dso987285466b.1;
        Tue, 29 Aug 2023 10:17:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693329465; x=1693934265;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zVn9A5G3nnJE19BtxVBvWzOtozFqCP+CXHqAAw8DJNQ=;
        b=b27K62CJiQ+fNyDd0kgfJWF+Ca5wj/0wqhnGz119b5cE+nOb+FyBPPaNzRONJSDjrR
         rXcaWzd5feRR339wfkwB3/8yPB39a9T6o/LPn55vwhhLvUcAuZbo2CfwN3zqDEykQ1N0
         DGeOSoCb9It3jKexuc4G4It/gfPj+uz0wiuC+hWp1KcKKgFD9uTysasqB3QgPYfeSZh7
         D+2ayYgDjIVbn2TKN82W4PVwlwzWdFhJgdnkptvrMMDg+GdJyR3smqzdXi/xbuB/ndB+
         kHsbiAR8Qr7fLZxvz2V1RxKNW+CPI7XJAE7qUHApqXmbMyT6mmLKPKSgQrgngQ0MxuLO
         RD+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693329465; x=1693934265;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zVn9A5G3nnJE19BtxVBvWzOtozFqCP+CXHqAAw8DJNQ=;
        b=Oz5tuRvgCetlNNUtQT9C7Ed5PXJVLxbP9C6TqFiAePmfBJgCC27F1Ynx7TpqAPwjO8
         RRAdnftdNGuJyvPStqlKwxpW+0UbaCrRzudPoD92pWt/SVLKyhht1tH9h/CEvXB3CR6g
         T8qvbqr23ZQwKDxy2Javp1YaU2P8KmvDBaFQbi4/FrAO0+YDl2Q4KgoH+EAVWwNCP0V1
         bD9TcVxouWG7xZ+YGprMjy/+BXzEaRDoIBo3x7X4a+ea+Xjbw5+KLDD98jdLqHUsSVTa
         HSIHZsRMY9p4MUheauxJdaI9pyN86Wmf8doDa6H97TfUjGReRA3IWNTe5gRg+dnbWpQU
         BUGw==
X-Gm-Message-State: AOJu0YxJinbAN90znZr8sKg2bI8ypUYR7aDhKWAK87ChzUiMvtaNwvLH
	JEbHlzJImsNfgPU4azAH+Q==
X-Google-Smtp-Source: AGHT+IGVS1awmweidX6xAv3OC62PyPcHpBoI4b0nE82P4GEfIg0etIKXitlAvzG1CNyrO+3Zg0BtZA==
X-Received: by 2002:a17:907:b609:b0:9a1:b144:30f4 with SMTP id vl9-20020a170907b60900b009a1b14430f4mr3760583ejc.14.1693329465170;
        Tue, 29 Aug 2023 10:17:45 -0700 (PDT)
Received: from U4.lan ([2001:9e8:b958:3410:8e0c:ed68:cd6c:7cb8])
        by smtp.gmail.com with ESMTPSA id a21-20020a1709062b1500b00993cc1242d4sm6115834ejg.151.2023.08.29.10.17.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Aug 2023 10:17:44 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Lee Jones <lee@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Elaine Zhang <zhangqing@rock-chips.com>,
	Johan Jonker <jbx6244@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	alsa-devel@alsa-project.org,
	linux-clk@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH 21/31] ARM: dts: rockchip: add power controller for RK312x
Date: Tue, 29 Aug 2023 19:16:37 +0200
Message-ID: <20230829171647.187787-22-knaerzche@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230829171647.187787-1-knaerzche@gmail.com>
References: <20230829171647.187787-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_101746_652062_22A2462D 
X-CRM114-Status: GOOD (  11.97  )
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

Add the power controller node and the correspondending qos nodes for
RK312x.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk312x.dtsi | 82 ++++++++++++++++++++++++++
 1 file changed, 82 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk312x.dtsi b/arch/arm/boot/dts/rockchip/rk312x.dtsi
index 93560c4cd16a..617306a9edf7 100644
--- a/arch/arm/boot/dts/rockchip/rk312x.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk312x.dtsi
@@ -8,6 +8,7 @@
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/pinctrl/rockchip.h>
+#include <dt-bindings/power/rk3128-power.h>
 
 / {
 	compatible = "rockchip,rk3128";
@@ -133,6 +134,87 @@ smp-sram@0 {
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
+				clocks = <&cru ACLK_RGA>,
+					 <&cru ACLK_LCDC0>,
+					 <&cru ACLK_IEP>,
+					 <&cru ACLK_CIF>,
+					 <&cru ACLK_VIO0>,
+					 <&cru ACLK_VIO1>,
+					 <&cru DCLK_VOP>,
+					 <&cru DCLK_EBC>,
+					 <&cru HCLK_RGA>,
+					 <&cru HCLK_VIO>,
+					 <&cru HCLK_EBC>,
+					 <&cru HCLK_LCDC0>,
+					 <&cru HCLK_IEP>,
+					 <&cru HCLK_CIF>,
+					 <&cru HCLK_VIO_H2P>,
+					 <&cru PCLK_MIPI>,
+					 <&cru SCLK_VOP>;
+				pm_qos = <&qos_rga>,
+					 <&qos_iep>,
+					 <&qos_lcdc>,
+					 <&qos_vip>;
+				#power-domain-cells = <0>;
+			};
+
+			power-domain@RK3128_PD_VIDEO {
+				reg = <RK3128_PD_VIDEO>;
+				clocks = <&cru ACLK_VEPU>,
+					 <&cru ACLK_VDPU>,
+					 <&cru HCLK_VEPU>,
+					 <&cru HCLK_VDPU>,
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
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

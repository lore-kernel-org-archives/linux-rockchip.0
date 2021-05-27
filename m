Return-Path: <SRS0=Ct0Y=KW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77383C4707F
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 May 2021 17:11:35 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4241161222
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 May 2021 17:11:35 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4241161222
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XxGpm9Hb/VXDn9Zid+IHREgDDa+8kfTFAdh+YhLL6GI=; b=hbetD8KRlVvcO3
	JztSHfXl1O1oYovvNERdZs6bvJH9ma21ZrZ84DMYsWK/lAbm/UFu221qV26cN/4EPIvmG4rkSXmHN
	x6rolfxlf1L5jlseRBYFUW10L1JGD0OrFCHlrqscIgi8qpFZArPxwCIKP1VZ6XQXRZTc3q0VQwoJi
	Q6qrbb4JbyUCIUkzO08K3aVzloCITpme02zouNahYXSLBRw709+RQUbPi7m04400ttKNuv5ihAF6P
	3YcMtXUIRqHcVgFNTq0aS+rCcCdEfwOefTAz+yjvU5r/ZjsNQTdAliLgA0apZW0w8PYK+OfEN+QKF
	D89Zu4S3xEYtEtIRLSCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmJXd-007xh1-L8; Thu, 27 May 2021 17:11:29 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmICO-007KNs-MP; Thu, 27 May 2021 15:45:34 +0000
Received: by mail-ej1-x62c.google.com with SMTP id b9so755566ejc.13;
 Thu, 27 May 2021 08:45:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jjQPNqCTQeoJb7uBaprnmexAqxorLpiei4HoVtvtIYE=;
 b=TEf5M4grrCab6c7TWDS9Lg204KTx46/X8XZXDM6EYt3Ml+pQozoNl3JnkFTq/veML1
 12idKeMGDbopUxn2iuYLEMbFdjSFUvGe7BPxC5TGk+JtCxZ66RD2h1Jbgs4YQqGm79NS
 omIuQ7MVtaF+jN4Gq/cuSTD4SfcARykuj8Ex+MfRAR2S6Uj2PjetLEad6+9Ygj02HLWQ
 jaFIcpHZUW3aCVOPKt4+L2dY/8vmGCMNxBvR+b4VK68H/u0eN5MiGcEqIzv9+YAXI/9N
 WX9stbJ9u5HD9en2ya3SrPyCmikv+tPLGsDKoQCwQGRO0yLVmQ+LyDZYHm839lWQ3cjl
 2Lwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jjQPNqCTQeoJb7uBaprnmexAqxorLpiei4HoVtvtIYE=;
 b=HE3DVGYvA06tXHOXZT40sEVvu6Q6qxUZp8h6VGnmHR1Dj9oV2cgzvA+Hv7LihHjy3H
 urPbwvBH3qB4JJ510pEf/J9fZLPqpkqBPv5hhWgVi2RYGgT33aV9qsm1ejtXwK+W7o0M
 Y9m7t2z8yF1CBtGnxeYEyuowtk3W5B9UzyYKoMfcME7+ral5muo4JVGRMVxDU5HNSLVQ
 ldrv4zhpjmsalwxVRjxD8HDuklm/oybXIF61cRAQkEBZ/03lz5CQa0ocoCVVsnZdaKnI
 Wgkg1+4TDAoL2Qv73Klq+P+p2LIRI12QPk6lcMoBBFpzYcYIxHjR63cSDr2KY5sjsxGk
 XUfw==
X-Gm-Message-State: AOAM532X7U9SKlEjL/EFcRTxBnDPGNozTH8Y03Jx4h4uGQM2Ui+FuGBX
 dpfP+RXSScR9oOGjy+wFCA==
X-Google-Smtp-Source: ABdhPJwknc0otwdXSFU0TLh7Bli4AZ5uIWD9znY6x2LsbNvmWlSzxgIxFDL9ll/Iy3i7ljzpAGH+Gg==
X-Received: by 2002:a17:906:fc4:: with SMTP id
 c4mr4760038ejk.111.1622130326371; 
 Thu, 27 May 2021 08:45:26 -0700 (PDT)
Received: from localhost.localdomain ([2a02:810b:f40:e00:fefd:4d98:c981:7f97])
 by smtp.googlemail.com with ESMTPSA id
 u6sm1178826ejr.55.2021.05.27.08.45.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 May 2021 08:45:26 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Ezequiel Garcia <ezequiel@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Philipp Zabel <p.zabel@pengutronix.de>, Lee Jones <lee.jones@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org
Cc: Alex Bee <knaerzche@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 09/12] ARM: dts: rockchip: add power controller for RK322x
Date: Thu, 27 May 2021 17:44:52 +0200
Message-Id: <20210527154455.358869-10-knaerzche@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210527154455.358869-1-knaerzche@gmail.com>
References: <20210525152225.154302-1-knaerzche@gmail.com>
 <20210527154455.358869-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210527_084528_931576_27B78912 
X-CRM114-Status: GOOD (  13.65  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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
RK322x.
Also add the power-domain property to the nodes that are already
present.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---

 Changes in v2:
 - moved power node to appropriate position
 - added #power-domain-cells for RK3228_PD_GPU
 - moved power-domains property after iommous property

 arch/arm/boot/dts/rk322x.dtsi | 113 ++++++++++++++++++++++++++++++++++
 1 file changed, 113 insertions(+)

diff --git a/arch/arm/boot/dts/rk322x.dtsi b/arch/arm/boot/dts/rk322x.dtsi
index 5774bc309eb7..42033909c606 100644
--- a/arch/arm/boot/dts/rk322x.dtsi
+++ b/arch/arm/boot/dts/rk322x.dtsi
@@ -6,6 +6,7 @@
 #include <dt-bindings/pinctrl/rockchip.h>
 #include <dt-bindings/clock/rk3228-cru.h>
 #include <dt-bindings/thermal/thermal.h>
+#include <dt-bindings/power/rk3228-power.h>
 
 / {
 	#address-cells = <1>;
@@ -190,6 +191,65 @@ io_domains: io-domains {
 			status = "disabled";
 		};
 
+		power: power-controller {
+			compatible = "rockchip,rk3228-power-controller";
+			#power-domain-cells = <1>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			power-domain@RK3228_PD_VIO {
+				reg = <RK3228_PD_VIO>;
+				clocks = <&cru ACLK_HDCP>,
+					 <&cru SCLK_HDCP>,
+					 <&cru ACLK_IEP>,
+					 <&cru HCLK_IEP>,
+					 <&cru ACLK_RGA>,
+					 <&cru HCLK_RGA>,
+					 <&cru SCLK_RGA>;
+				pm_qos = <&qos_hdcp>,
+					 <&qos_iep>,
+					 <&qos_rga_r>,
+					 <&qos_rga_w>;
+				#power-domain-cells = <0>;
+			};
+
+			power-domain@RK3228_PD_VOP {
+				reg = <RK3228_PD_VOP>;
+				clocks =<&cru ACLK_VOP>,
+					<&cru DCLK_VOP>,
+					<&cru HCLK_VOP>;
+				pm_qos = <&qos_vop>;
+				#power-domain-cells = <0>;
+			};
+
+			power-domain@RK3228_PD_VPU {
+				reg = <RK3228_PD_VPU>;
+				clocks = <&cru ACLK_VPU>,
+					 <&cru HCLK_VPU>;
+				pm_qos = <&qos_vpu>;
+				#power-domain-cells = <0>;
+			};
+
+			power-domain@RK3228_PD_RKVDEC {
+				reg = <RK3228_PD_RKVDEC>;
+				clocks = <&cru ACLK_RKVDEC>,
+					 <&cru HCLK_RKVDEC>,
+					 <&cru SCLK_VDEC_CABAC>,
+					 <&cru SCLK_VDEC_CORE>;
+				pm_qos = <&qos_rkvdec_r>,
+					 <&qos_rkvdec_w>;
+				#power-domain-cells = <0>;
+			};
+
+			power-domain@RK3228_PD_GPU {
+				reg = <RK3228_PD_GPU>;
+				clocks = <&cru ACLK_GPU>;
+				pm_qos = <&qos_gpu>;
+				#power-domain-cells = <0>;
+			};
+
+		};
+
 		u2phy0: usb2-phy@760 {
 			compatible = "rockchip,rk3228-usb2phy";
 			reg = <0x0760 0x0c>;
@@ -240,6 +300,7 @@ u2phy1_host: host-port {
 				status = "disabled";
 			};
 		};
+
 	};
 
 	uart0: serial@11010000 {
@@ -546,6 +607,7 @@ gpu: gpu@20000000 {
 				  "ppmmu1";
 		clocks = <&cru ACLK_GPU>, <&cru ACLK_GPU>;
 		clock-names = "bus", "core";
+		power-domains = <&power RK3228_PD_GPU>;
 		resets = <&cru SRST_GPU_A>;
 		status = "disabled";
 	};
@@ -556,6 +618,7 @@ vpu_mmu: iommu@20020800 {
 		interrupts = <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru ACLK_VPU>, <&cru HCLK_VPU>;
 		clock-names = "aclk", "iface";
+		power-domains = <&power RK3228_PD_VPU>;
 		#iommu-cells = <0>;
 		status = "disabled";
 	};
@@ -566,6 +629,7 @@ vdec_mmu: iommu@20030480 {
 		interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru ACLK_RKVDEC>, <&cru HCLK_RKVDEC>;
 		clock-names = "aclk", "iface";
+		power-domains = <&power RK3228_PD_RKVDEC>;
 		#iommu-cells = <0>;
 		status = "disabled";
 	};
@@ -579,6 +643,7 @@ vop: vop@20050000 {
 		resets = <&cru SRST_VOP_A>, <&cru SRST_VOP_H>, <&cru SRST_VOP_D>;
 		reset-names = "axi", "ahb", "dclk";
 		iommus = <&vop_mmu>;
+		power-domains = <&power RK3228_PD_VOP>;
 		status = "disabled";
 
 		vop_out: port {
@@ -598,6 +663,7 @@ vop_mmu: iommu@20053f00 {
 		interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru ACLK_VOP>, <&cru HCLK_VOP>;
 		clock-names = "aclk", "iface";
+		power-domains = <&power RK3228_PD_VOP>;
 		#iommu-cells = <0>;
 		status = "disabled";
 	};
@@ -608,6 +674,7 @@ rga: rga@20060000 {
 		interrupts = <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru ACLK_RGA>, <&cru HCLK_RGA>, <&cru SCLK_RGA>;
 		clock-names = "aclk", "hclk", "sclk";
+		power-domains = <&power RK3228_PD_VIO>;
 		resets = <&cru SRST_RGA>, <&cru SRST_RGA_A>, <&cru SRST_RGA_H>;
 		reset-names = "core", "axi", "ahb";
 	};
@@ -618,6 +685,7 @@ iep_mmu: iommu@20070800 {
 		interrupts = <GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru ACLK_IEP>, <&cru HCLK_IEP>;
 		clock-names = "aclk", "iface";
+		power-domains = <&power RK3228_PD_VIO>;
 		#iommu-cells = <0>;
 		status = "disabled";
 	};
@@ -792,6 +860,51 @@ gmac: ethernet@30200000 {
 		status = "disabled";
 	};
 
+	qos_iep: qos@31030080 {
+		compatible = "rockchip,rk3228-qos", "syscon";
+		reg = <0x31030080 0x20>;
+	};
+
+	qos_rga_w: qos@31030100 {
+		compatible = "rockchip,rk3228-qos", "syscon";
+		reg = <0x31030100 0x20>;
+	};
+
+	qos_hdcp: qos@31030180 {
+		compatible = "rockchip,rk3228-qos", "syscon";
+		reg = <0x31030180 0x20>;
+	};
+
+	qos_rga_r: qos@31030200 {
+		compatible = "rockchip,rk3228-qos", "syscon";
+		reg = <0x31030200 0x20>;
+	};
+
+	qos_vpu: qos@31040000 {
+		compatible = "rockchip,rk3228-qos", "syscon";
+		reg = <0x31040000 0x20>;
+	};
+
+	qos_gpu: qos@31050000 {
+		compatible = "rockchip,rk3228-qos", "syscon";
+		reg = <0x31050000 0x20>;
+	};
+
+	qos_vop: qos@31060000 {
+		compatible = "rockchip,rk3228-qos", "syscon";
+		reg = <0x31060000 0x20>;
+	};
+
+	qos_rkvdec_r: qos@31070000 {
+		compatible = "rockchip,rk3228-qos", "syscon";
+		reg = <0x31070000 0x20>;
+	};
+
+	qos_rkvdec_w: qos@31070080 {
+		compatible = "rockchip,rk3228-qos", "syscon";
+		reg = <0x31070080 0x20>;
+	};
+
 	gic: interrupt-controller@32010000 {
 		compatible = "arm,gic-400";
 		interrupt-controller;
-- 
2.27.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

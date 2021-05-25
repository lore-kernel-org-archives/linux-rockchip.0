Return-Path: <SRS0=lIs5=KU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96662C47084
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 May 2021 15:43:01 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5F45860C3D
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 May 2021 15:43:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5F45860C3D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tVum6nZAr5cP6mwOMEs4Bv1OIA0aJ3nIlQsMfAbvXNc=; b=mxBnK6E5E6fu7x
	UCuHRx75vbO/leXXzT9BE/UyCQ2sJCs871oxUMh9NSH2i7OPlGSVXIUuLiK+cFO2An3oVHiGpxWZq
	lDpJO12HvfLZ62CtBWKJgDn652naZMajxmfUKUk1FmkwejJaa+K0EBkYgeWw3xo2U+HfusBPlhZop
	jjltEjKdgroEQKKrigHEcvulRrtz9t9H6ZhUv7YNFSXxm0Pr24xSVmxODHsFbDsQnEKNjLGRH4qRA
	yUWySj1db/HuS5lN8qzoJQClxozw8VXfbBtmIdU5qwPQhKp+In30KmNFfhy4XTszmc6aPmo1eIaOg
	HuuqL2IcZbOVHo+ZrmIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1llZCq-00665S-SB; Tue, 25 May 2021 15:42:57 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1llYtQ-005xNg-UC; Tue, 25 May 2021 15:22:55 +0000
Received: by mail-ej1-x62a.google.com with SMTP id gb17so29920264ejc.8;
 Tue, 25 May 2021 08:22:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+0RnuC0ooSmKbb5ieKew3Le7GefbjO/yixv4+FcIHvM=;
 b=cxIjQV0zVUw5vf1js/4y83zt1j+6OvDreHZ8pb3YEbmQnA15xZ1ZTT4czXaZqudf4K
 XR8yP1lZj+JTgWvccj1EzxFyfUOVKkb/lTBMEZ7iK/T4aXBRoDxTL2hvqOylzzXIFCDe
 qa1WJj64FbTeKjVt2Z9H4GuA+j2oKQrpGlHueLuJ+DePLBaO3EnCLV3JS/jEMac+CXip
 L52EpI37JtI6i/SumSYQM7+n0rvd9Z1e2VhPkc9eIpexE+Jl+71jVbFEx1kmTwRzZAJT
 vWKSc0rxiKazkohVWGXDTULu1Q7qQ0WlwA+uFE486o1qqPou30cuLQTJyqnJCckSzjvL
 UFBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+0RnuC0ooSmKbb5ieKew3Le7GefbjO/yixv4+FcIHvM=;
 b=MXd2LKCArewS/+SFfVoOQNnBLhBhvmXi7HoGYoxuwHxNhVkLm9VT+6rJGIKj9ZVXHs
 gKWiiPIavQhUPkfL3LJUgskeHS57c5d1KKKz93KT/2vcNNRT5tMlfbn2I9wCvF47XbHL
 jqirWmXTHWaIfzadyPRt0QbXCgaw7x6hYvf3Ri9HDdfEv8hUoHz8sQ3twEvSHSLmfgg9
 lrsIpOpc8uAzoT3IYO9FOplsMHiQ/lgkILNdjH0ttwtY0WxJdE2OQr646bknfBv+VaOy
 xO0Y8lDpk6bhdLIQ4cLK9C7o81AIeVHrrKQUAVmaSTx7EFBLQIJu/rmJtLyAZXXs1aQS
 H3gw==
X-Gm-Message-State: AOAM532nLRV5FfupFxmXpyR3HJTQTdpOTKJzLTJpLwZxQCu6JZKUQhqx
 eZdVNsMrEXxGAGaTOs3q6A==
X-Google-Smtp-Source: ABdhPJyzY6ziOl4Z+B6Ig9qAMCAompJ0AbXRnqU9cfG8nRRbiIhL9veqPe0Mx+fa0rpCIP7b8jRWUw==
X-Received: by 2002:a17:906:c0c6:: with SMTP id
 bn6mr28208995ejb.436.1621956171343; 
 Tue, 25 May 2021 08:22:51 -0700 (PDT)
Received: from localhost.localdomain ([2a02:810b:f40:e00:b55:da44:4fe2:2760])
 by smtp.googlemail.com with ESMTPSA id
 e23sm11212945eds.2.2021.05.25.08.22.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 May 2021 08:22:51 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Ezequiel Garcia <ezequiel@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Philipp Zabel <p.zabel@pengutronix.de>, Lee Jones <lee.jones@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org
Cc: Alex Bee <knaerzche@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-staging@lists.linux.dev
Subject: [PATCH 02/10] ARM: dts: rockchip: add power controller for RK3036
Date: Tue, 25 May 2021 17:22:17 +0200
Message-Id: <20210525152225.154302-3-knaerzche@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210525152225.154302-1-knaerzche@gmail.com>
References: <20210525152225.154302-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210525_082253_017862_572B7619 
X-CRM114-Status: GOOD (  14.37  )
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
RK3036.
Also add the power-domain property to the nodes that are already
present.
Note: Since the regiser offsets of the axi interconnect QoS are missing
in the TRM (RK3036 TRM V1.0), they have been taken from vendor kernel.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm/boot/dts/rk3036.dtsi | 51 +++++++++++++++++++++++++++++++++++
 1 file changed, 51 insertions(+)

diff --git a/arch/arm/boot/dts/rk3036.dtsi b/arch/arm/boot/dts/rk3036.dtsi
index 9ccefa8282ba..370dd03939c0 100644
--- a/arch/arm/boot/dts/rk3036.dtsi
+++ b/arch/arm/boot/dts/rk3036.dtsi
@@ -6,6 +6,7 @@
 #include <dt-bindings/pinctrl/rockchip.h>
 #include <dt-bindings/clock/rk3036-cru.h>
 #include <dt-bindings/soc/rockchip,boot-mode.h>
+#include <dt-bindings/power/rk3036-power.h>
 
 / {
 	#address-cells = <1>;
@@ -111,6 +112,7 @@ gpu: gpu@10090000 {
 		assigned-clock-rates = <100000000>;
 		clocks = <&cru SCLK_GPU>, <&cru SCLK_GPU>;
 		clock-names = "bus", "core";
+		power-domains = <&power RK3036_PD_GPU>;
 		resets = <&cru SRST_GPU>;
 		status = "disabled";
 	};
@@ -121,6 +123,7 @@ vop: vop@10118000 {
 		interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru ACLK_LCDC>, <&cru SCLK_LCDC>, <&cru HCLK_LCDC>;
 		clock-names = "aclk_vop", "dclk_vop", "hclk_vop";
+		power-domains = <&power RK3036_PD_VIO>;
 		resets = <&cru SRST_LCDC1_A>, <&cru SRST_LCDC1_H>, <&cru SRST_LCDC1_D>;
 		reset-names = "axi", "ahb", "dclk";
 		iommus = <&vop_mmu>;
@@ -142,10 +145,26 @@ vop_mmu: iommu@10118300 {
 		interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru ACLK_LCDC>, <&cru HCLK_LCDC>;
 		clock-names = "aclk", "iface";
+		power-domains = <&power RK3036_PD_VIO>;
 		#iommu-cells = <0>;
 		status = "disabled";
 	};
 
+	qos_gpu: qos@1012d000 {
+		compatible = "rockchip,rk3036-qos", "syscon";
+		reg = <0x1012d000 0x20>;
+	};
+
+	qos_vpu: qos@1012e000 {
+		compatible = "rockchip,rk3036-qos", "syscon";
+		reg = <0x1012e000 0x20>;
+	};
+
+	qos_vio: qos@1012f000 {
+		compatible = "rockchip,rk3036-qos", "syscon";
+		reg = <0x1012f000 0x20>;
+	};
+
 	gic: interrupt-controller@10139000 {
 		compatible = "arm,gic-400";
 		interrupt-controller;
@@ -301,6 +320,38 @@ grf: syscon@20008000 {
 		compatible = "rockchip,rk3036-grf", "syscon", "simple-mfd";
 		reg = <0x20008000 0x1000>;
 
+		power: power-controller {
+			compatible = "rockchip,rk3036-power-controller";
+			#power-domain-cells = <1>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			power-domain@RK3036_PD_VIO {
+				reg = <RK3036_PD_VIO>;
+				clocks = <&cru ACLK_LCDC>,
+					 <&cru HCLK_LCDC>,
+					 <&cru SCLK_LCDC>;
+				pm_qos = <&qos_vio>;
+				#power-domain-cells = <0>;
+			};
+
+			power-domain@RK3036_PD_VPU {
+				reg = <RK3036_PD_VPU>;
+				clocks = <&cru ACLK_VCODEC>,
+					 <&cru HCLK_VCODEC>;
+				pm_qos = <&qos_vpu>;
+				#power-domain-cells = <0>;
+			};
+
+			power-domain@RK3036_PD_GPU {
+				reg = <RK3036_PD_GPU>;
+				clocks = <&cru SCLK_GPU>;
+				pm_qos = <&qos_gpu>;
+				#power-domain-cells = <0>;
+			};
+
+		};
+
 		reboot-mode {
 			compatible = "syscon-reboot-mode";
 			offset = <0x1d8>;
-- 
2.27.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

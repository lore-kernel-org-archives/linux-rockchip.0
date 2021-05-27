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
	by smtp.lore.kernel.org (Postfix) with ESMTP id ECD5EC47089
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 May 2021 17:07:34 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B1872613B5
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 May 2021 17:07:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B1872613B5
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KRmOjAlZwZ2iKzYEZV9DzujSYgqLkgx/A2KehXamSP8=; b=ewkpG3FmU2sJsR
	P5LebzISRhbvQtZNvFPS8rkTRUZVtr21tCqN2Z2FZlMM8JWm9UeVSKYcIk27ejpzH4wlfG5pWauwV
	0QtUEO2B3g0m/lrFfl0W/EdHx/+3RzbZhm/xwTDKU5BYN/W3jhluwGAKlS5sx++rWfMaUhC80eXVY
	TEu4VWfsRcnfy6JofZLFDWofMz2KFM4B4ZWLxvxPmruwGJKKlkoGlmwkFsgcaffMs7hcI8wwzn5Dk
	wGJJBqo1yUcTO+mHZv8vp00EwWZnuCBFeUd54dBKeGsqdLhwcZSaH1YLtYbjmxzS8JOQUK4IAuizz
	0lQyH42L43CPlA6ZOXrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmJTm-007vsV-Rl; Thu, 27 May 2021 17:07:30 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmICO-007KNO-1y; Thu, 27 May 2021 15:45:32 +0000
Received: by mail-ej1-x62c.google.com with SMTP id lg14so791261ejb.9;
 Thu, 27 May 2021 08:45:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=LhbeDQNh446HkvhryvJVLbpk8j2uXvVEVcUkEuMHp2E=;
 b=FTTHLnFIpjK1cPpPtSC1xxfNnPb+BTJoSy4RBqhZ9LnS3jCXY3cJC7Msfwa5eCWWN+
 n9iJBvmcwloq5Hi3lMdjbDRhJyCs/4JQs3xeXUwm3nh4/XUzQxQhMrAcW27USTVZ12n0
 zeoccaf4855F4n8GvPahZpMxn9g3JzwyVV87n2yNckq//D7L3U4qG66a3aWX7NiwU/FA
 LbAKiYKtrRgaNSTj6lh+pnW7JfMBYcxnzENvZnz6X44QRLP0mifoqMIBN9VjYxtOMFVB
 EY4jttESEbgs7ipEK5z2a5643TnWz9HxaZMRAdBORuKIsQvOoj9Y9OENX5YRq9XhYxww
 Ixhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LhbeDQNh446HkvhryvJVLbpk8j2uXvVEVcUkEuMHp2E=;
 b=Iuc8aGM+Yj5MQSHwPZ/Sq5iDvnPIEZFcnCK+K1m3bx9gCQeBb4Sxt+aSZFKLSWOC20
 WxEBRf1SlR2jZPJ7ZR+tz+oUbcwzWLO/N2morGeS/DrcnPFUnLXgPknZM+Hz2T5epB4k
 g3Ea5+pxr55M+UZjOzEnCUzt+ElDzHoVqhclKZCvphqJnQA3rBsMF5HVvKEJw/5UU8a7
 59tFnMVaZOz9xklsEF4nScG/YRnM+nP1YY15xSMi1u9evabSzPpKK5UjtzkhKbIw+zVW
 5QK0mjZK68D0mBF92cOLKfpoc7XZGQd3DahUnrNvcPBb869XhgwxNOVm+qH7+Jn9S0Oj
 YwKg==
X-Gm-Message-State: AOAM5335I9GKp5waVSBDtsIQ08VWlcZPHXk5y5eS+a8nWwunJOJ7rgqK
 kuoNETbVvUu5Ph5PNlWVkw==
X-Google-Smtp-Source: ABdhPJxjTFNjhfpg3rolbz+my5h7GjiFMYspdhCyqZehvxpDPM6Pu3T20eVZaIpo6PThuHYTyYlGuA==
X-Received: by 2002:a17:906:5d0a:: with SMTP id
 g10mr4425737ejt.349.1622130325404; 
 Thu, 27 May 2021 08:45:25 -0700 (PDT)
Received: from localhost.localdomain ([2a02:810b:f40:e00:fefd:4d98:c981:7f97])
 by smtp.googlemail.com with ESMTPSA id
 u6sm1178826ejr.55.2021.05.27.08.45.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 May 2021 08:45:25 -0700 (PDT)
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
Subject: [PATCH v2 08/12] ARM: dts: rockchip: add power controller for RK3036
Date: Thu, 27 May 2021 17:44:51 +0200
Message-Id: <20210527154455.358869-9-knaerzche@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210527154455.358869-1-knaerzche@gmail.com>
References: <20210525152225.154302-1-knaerzche@gmail.com>
 <20210527154455.358869-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210527_084528_174608_6F866A4E 
X-CRM114-Status: GOOD (  13.94  )
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

 Changes in v2:
 - moved power-domains property after iommus-property

 arch/arm/boot/dts/rk3036.dtsi | 51 +++++++++++++++++++++++++++++++++++
 1 file changed, 51 insertions(+)

diff --git a/arch/arm/boot/dts/rk3036.dtsi b/arch/arm/boot/dts/rk3036.dtsi
index 9ccefa8282ba..76ab663eccf7 100644
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
@@ -124,6 +126,7 @@ vop: vop@10118000 {
 		resets = <&cru SRST_LCDC1_A>, <&cru SRST_LCDC1_H>, <&cru SRST_LCDC1_D>;
 		reset-names = "axi", "ahb", "dclk";
 		iommus = <&vop_mmu>;
+		power-domains = <&power RK3036_PD_VIO>;
 		status = "disabled";
 
 		vop_out: port {
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

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47827E77188
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Dec 2024 17:39:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sF86bISsycsAHx2Gy4kXO0A6d0Ja3lORAhPYAxFi4Ug=; b=daj0r+/95lNCnE
	hoUy+4WMIwBaC5vHP0weB+VaazQ1D766LlnBf3VbZmw//JMHeBsRwvYlWa3qbX/GdWAXvDVCF8D7A
	Q5gmMkQ/kTh0Hvu20xmZg//wZzv4FgKdFiZqnqdikD6/QhpNPUttOPSUUbMC16OZ0ePtVxW5YXw3h
	6CtvDck5+TpeWTtlJsbPQOo1r/SwBjJUr8N2meMjzb0K42LBUL0tUUP/ULDcYEKwHGKqgv60XQbbf
	ubeZAMeZQtdKV3F0/T5/fW6EnE4ota/w/3Rz98+vdoub4KzfmDK5fFxLAoYdrVGkwUSs0mZCD3oU5
	FoCcQ4rZTBiVaTS/2Q1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQrpc-0000000G9xk-3PvJ;
	Thu, 26 Dec 2024 17:39:32 +0000
Received: from mail-pl1-x633.google.com ([2607:f8b0:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tQrly-0000000G9V3-0V8V
	for linux-rockchip@lists.infradead.org;
	Thu, 26 Dec 2024 17:35:47 +0000
Received: by mail-pl1-x633.google.com with SMTP id d9443c01a7336-21636268e43so6859305ad.2
        for <linux-rockchip@lists.infradead.org>; Thu, 26 Dec 2024 09:35:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1735234545; x=1735839345; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=X1dTeAMm/wW0dtPQtk6JGdAaI2aq0m9euZXSH3QbeHI=;
        b=VoqX5NDekfrLZNVxCVaIOojAYqS66iiLk0cSf3w6oap1nk4xSaiC/bNyHwtOi0583Q
         Wd+LMkOpjO8ry7P9fCgqCRge9NxFfjmKYiPnBm6qQE6q2WvgUy5hz0bgqRPWg+wZV42P
         Vfeex3Nl6vzRanesqTZyiZ30K0YshzFibcWllsgQDm0hcxY9qZjbvvfJ7jwBLOdZEnA2
         t70K2fXsoB8r/uZfCpuY/dea8OCutm17xzaJ7uPLyR3o8EN0uhMNV50ghafWOlkV1hqJ
         WvxbTIX774iwJVkMztSyu0TLV1Yuaij+EU0P26T7xPMyDiyuW9Hf2ZS+N3linjWBPBH2
         bcBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735234545; x=1735839345;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=X1dTeAMm/wW0dtPQtk6JGdAaI2aq0m9euZXSH3QbeHI=;
        b=I1bvhjRp7CqFUk4pSpQXrl1sfytAW+nqqFpGujKzsrvdbeaAfk6U5PtGvKmhnS+skv
         USxd+7CIdH6QT6OxYp7Bk2AOOk8NERaPnPZF7hO571NKf3iGuYZub9r0OI+TQOuFYP+2
         kIOiiy5ePCR7SHe/RNX7CTCqW+aQOEfktFE3wgWKMA31OZwiqPcfsiQ5Eu6OyM5ELQSs
         tMX3DFjeZ+c/GOY7oSvf0BLmxH3oN8knyMfzJamjUVIFsHXLqZQejL0u9PH2ChRR9d2H
         CjdeftdnrMPscUdeTA7+hDAC6qlBAmGzJv7Bv38B2g8Yuqcuu/cLjxt68vQZfzf73wEp
         Lu/g==
X-Forwarded-Encrypted: i=1; AJvYcCVCIALwu6zV075H8Rql9XNFOfI7F4Fz77x/7d0MPn51RP2VAivG+eyMxr8lfa0WkkgthOzbq7qjzMWhXwfSBg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzcC5pjUSQKT7pOIb9esgZs9JZrWtE06U1HZk1WQxkq+zXkPpvH
	qa7ylVwZm4ymM49ZRVFwpn24IzMRrWfpiafcRCMymS9ek0HrBwl/E5P0hUglYw8=
X-Gm-Gg: ASbGncvoUZhoTX03YlRdQWaohsTGe0csHNQ0Q2HG+aPm6qgMrGcvxQEOEpxM7j5l6Sh
	HUE2QVPG8wqVuRG9LcKtCdlkjzESWZxNNbVsPGk4A1+RDO5r0SFPRGE2Uml1Ic69nFBjFQjEPSy
	Zg2275XFtV4seGNF3O6kzk38KfRijeA3cp9chhfHU12LNuXq5L857Xp27ZaMGgAje8dD+KrYiON
	WJrnx9nCBsCwNjBKnWAEjsGhHmiPYjIHSCwKwyDdz/5YiIHc3B3nU2wWkq5Mz6xwKH2617B
X-Google-Smtp-Source: AGHT+IEIRjkv8xpdBRFHNmeOGEm+9+EQ5icIZIC9cV5XUaKkB1G4eZT7R8atLlQBaeefj8JDRZndLQ==
X-Received: by 2002:a17:902:ef12:b0:216:52a5:dd41 with SMTP id d9443c01a7336-219e6ec13bcmr374141345ad.31.1735234544922;
        Thu, 26 Dec 2024 09:35:44 -0800 (PST)
Received: from tops-ThinkPad-E14-Gen-5.. ([2405:201:c00a:a918:ba33:f9a0:ac68:19f])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2f4477c8461sm14281147a91.13.2024.12.26.09.35.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Dec 2024 09:35:44 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 1/2] arm64: dts: rockchip: Add HDMI1 node to rk3588
Date: Thu, 26 Dec 2024 23:05:29 +0530
Message-Id: <20241226173530.37037-1-jagan@edgeble.ai>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241226_093546_153447_41383B09 
X-CRM114-Status: GOOD (  10.35  )
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

HDMI1 Output is available RK3588 (not for RK3588S).

Add support for it.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Note: As of 1080p display is working

 .../arm64/boot/dts/rockchip/rk3588-extra.dtsi | 62 +++++++++++++++++++
 1 file changed, 62 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi
index ead151941e84..66bf5e780382 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi
@@ -67,6 +67,11 @@ u2phy1_otg: otg-port {
 		};
 	};
 
+	hdptxphy1_grf: syscon@fd5e4000 {
+		compatible = "rockchip,rk3588-hdptxphy-grf", "syscon";
+		reg = <0x0 0xfd5e4000 0x0 0x100>;
+	};
+
 	i2s8_8ch: i2s@fddc8000 {
 		compatible = "rockchip,rk3588-i2s-tdm";
 		reg = <0x0 0xfddc8000 0x0 0x1000>;
@@ -135,6 +140,47 @@ i2s10_8ch: i2s@fde00000 {
 		status = "disabled";
 	};
 
+	hdmi1: hdmi@fdea0000 {
+		compatible = "rockchip,rk3588-dw-hdmi-qp";
+		reg = <0x0 0xfdea0000 0x0 0x20000>;
+		clocks = <&cru PCLK_HDMITX1>,
+			 <&cru CLK_HDMITX1_EARC>,
+			 <&cru CLK_HDMITX1_REF>,
+			 <&cru MCLK_I2S6_8CH_TX>,
+			 <&cru CLK_HDMIHDP1>,
+			 <&cru HCLK_VO1>;
+		clock-names = "pclk", "earc", "ref", "aud", "hdp", "hclk_vo1";
+		interrupts = <GIC_SPI 173 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 174 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 175 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 176 IRQ_TYPE_LEVEL_HIGH 0>,
+			     <GIC_SPI 361 IRQ_TYPE_LEVEL_HIGH 0>;
+		interrupt-names = "avp", "cec", "earc", "main", "hpd";
+		phys = <&hdptxphy_hdmi1>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&hdmim2_tx1_cec &hdmim0_tx1_hpd
+			     &hdmim1_tx1_scl &hdmim1_tx1_sda>;
+		power-domains = <&power RK3588_PD_VO1>;
+		resets = <&cru SRST_HDMITX1_REF>, <&cru SRST_HDMIHDP1>;
+		reset-names = "ref", "hdp";
+		rockchip,grf = <&sys_grf>;
+		rockchip,vo-grf = <&vo1_grf>;
+		status = "disabled";
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			hdmi1_in: port@0 {
+				reg = <0>;
+			};
+
+			hdmi1_out: port@1 {
+				reg = <1>;
+			};
+		};
+	};
+
 	pcie3x4: pcie@fe150000 {
 		compatible = "rockchip,rk3588-pcie", "rockchip,rk3568-pcie";
 		#address-cells = <3>;
@@ -400,6 +446,22 @@ sata-port@0 {
 		};
 	};
 
+	hdptxphy_hdmi1: phy@fed70000 {
+		compatible = "rockchip,rk3588-hdptx-phy";
+		reg = <0x0 0xfed70000 0x0 0x2000>;
+		clocks = <&cru CLK_USB2PHY_HDPTXRXPHY_REF>, <&cru PCLK_HDPTX1>;
+		clock-names = "ref", "apb";
+		#phy-cells = <0>;
+		resets = <&cru SRST_HDPTX1>, <&cru SRST_P_HDPTX1>,
+			 <&cru SRST_HDPTX1_INIT>, <&cru SRST_HDPTX1_CMN>,
+			 <&cru SRST_HDPTX1_LANE>, <&cru SRST_HDPTX1_ROPLL>,
+			 <&cru SRST_HDPTX1_LCPLL>;
+		reset-names = "phy", "apb", "init", "cmn", "lane", "ropll",
+			      "lcpll";
+		rockchip,grf = <&hdptxphy1_grf>;
+		status = "disabled";
+	};
+
 	usbdp_phy1: phy@fed90000 {
 		compatible = "rockchip,rk3588-usbdp-phy";
 		reg = <0x0 0xfed90000 0x0 0x10000>;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

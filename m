Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 482A6C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 31 Mar 2022 16:15:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+t/HHlxuwjAghITfpzgS35Z9QiJFUr5Qi/k1zyL8+WU=; b=kuPSN60mC9MpmN
	GTIfva9/P/lhU3w7l2DFhJLMywBv6ifupgqTqli90cMMId1wPcfzHZK2XGuuvT0+RbhDTosIXqC88
	ZGTlPGDkBIeoEVDq9kvnQSFXisFNDLPK8W/tbZF7eZA75MXk7IPFgb4C9DmfYvA2qiFbZ6NhovefP
	hrHslgK7jb483LDc6HFihVjdeOjQ+HDtJ4wG9+03AITbsL4HTD8nDUzlJfXe9hRF09D6tP2CTIcBf
	zNiFan9m3EPeBALW6pObziKSASTJ3Y2rRfuLUXhY0UUobBII9t4cNqh8zeB8uTisLEfEocB+XwfY3
	3FwwGgPa8FWJ1SZejK8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZxSH-002v7X-QK; Thu, 31 Mar 2022 16:15:25 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZxS4-002v1Z-0C; Thu, 31 Mar 2022 16:15:13 +0000
Received: by mail-ed1-x531.google.com with SMTP id x34so28726086ede.8;
 Thu, 31 Mar 2022 09:15:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xjEyY3Y7idT2/xjZtTf3oO9KclkwZrkmMKAiZwZLsWQ=;
 b=dqaf3H8pyJfqFWTnZGb7f7uCrEARjp8BxDSW24tcsT69J+NlH/EcQMF91tT7hBRJW7
 eqOrkAsYEweGdXeAIcvlGVBV2u37BFdjYlQsY4yBwK5QhNsv9NkPLWP8QDMop+ZgxYy4
 gU1+pIzf7ed7vK3EDnG4+g1eheaFKEK4k6heGdZWhaiLDVNwnxw1rxzQuWpY4mCXrI3v
 ZlTaJHudv1Jliq5ZkQz8Tacroum5bOq4VxglFzzePVXvNG95n8T4uDSnxygD7dySVCPw
 D5hz+ICtMJYyxUFhb7jMBqq5/WceTNE2/a3G2oYFfr6DSiMTL9qk3aF1oIRw10EfMPcb
 fF5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xjEyY3Y7idT2/xjZtTf3oO9KclkwZrkmMKAiZwZLsWQ=;
 b=enfA/hkQt27W9h8geZ5w+CIgCnH11WBhygvx2Q/wS88rGJhcAjaMzV2Od4Rh5Yv7px
 VToB0K2V3npCAjHv6jjNG1w7Gh5GfREYwEoxCJAn6RKizkMetHEA5RypKr7fgpuhPeCk
 Du7uZhZUXHFLwTCPB8cKYi/cRbWqIfNndlqlls3wTJ5/O7YZlepYcQ5hALUJepXigHwN
 e8GrWm2H58RkKTgsYFw2JxrJZ6syPIPf/5LvXeQYMY8Qv5WPIG1ZyKua5BqTbwZARula
 R499JmpHIokQjXoLHDi9xsG40Z1q+s9hdOkbneejbjqjGZvs/j6kCPS66ki+aSHLLsfG
 S7nA==
X-Gm-Message-State: AOAM532jz+RtD9/vvhNzM0J3pItq5epRYZymgTLTSa6WcNbAU3wD6cfp
 lyt1fyg6ZfL3T+uQ186mZ3w=
X-Google-Smtp-Source: ABdhPJzXn3NJfsGVHSbXv3mgVWGnaMYgEFt6COE/RUp0EjdFoSNUhzEGELqshVrSMgw/HosvsoiNHg==
X-Received: by 2002:a05:6402:270b:b0:419:3383:7a9f with SMTP id
 y11-20020a056402270b00b0041933837a9fmr17248675edd.191.1648743310371; 
 Thu, 31 Mar 2022 09:15:10 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 g4-20020a170906520400b006e0b798a0b8sm7600302ejm.94.2022.03.31.09.15.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Mar 2022 09:15:09 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, davem@davemloft.net,
 kuba@kernel.org, pabeni@redhat.com, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v1 3/3] ARM: dts: rockchip: restyle emac nodes
Date: Thu, 31 Mar 2022 18:14:59 +0200
Message-Id: <20220331161459.16499-3-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220331161459.16499-1-jbx6244@gmail.com>
References: <20220331161459.16499-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220331_091512_086161_9486666C 
X-CRM114-Status: GOOD (  12.72  )
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

The emac_rockchip.txt file is converted to YAML.
Phy nodes are now a subnode of mdio, so restyle
the emac nodes of rk3036/rk3066/rk3188.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3036-evb.dts        | 16 ++++++++++------
 arch/arm/boot/dts/rk3036-kylin.dts      | 16 ++++++++++------
 arch/arm/boot/dts/rk3036.dtsi           |  2 --
 arch/arm/boot/dts/rk3066a-marsboard.dts | 19 +++++++++++--------
 arch/arm/boot/dts/rk3066a-rayeager.dts  | 15 ++++++++++-----
 arch/arm/boot/dts/rk3188-radxarock.dts  | 19 +++++++++++--------
 arch/arm/boot/dts/rk3xxx.dtsi           |  2 --
 7 files changed, 52 insertions(+), 37 deletions(-)

diff --git a/arch/arm/boot/dts/rk3036-evb.dts b/arch/arm/boot/dts/rk3036-evb.dts
index 2a7e6624e..095e0821a 100644
--- a/arch/arm/boot/dts/rk3036-evb.dts
+++ b/arch/arm/boot/dts/rk3036-evb.dts
@@ -15,16 +15,20 @@
 };
 
 &emac {
+	phy-handle = <&phy0>;
+	phy-reset-duration = <10>; /* millisecond */
+	phy-reset-gpios = <&gpio2 RK_PC6 GPIO_ACTIVE_LOW>; /* PHY_RST */
 	pinctrl-names = "default";
 	pinctrl-0 = <&emac_xfer>, <&emac_mdio>;
-	phy = <&phy0>;
-	phy-reset-gpios = <&gpio2 RK_PC6 GPIO_ACTIVE_LOW>; /* PHY_RST */
-	phy-reset-duration = <10>; /* millisecond */
-
 	status = "okay";
 
-	phy0: ethernet-phy@0 {
-		reg = <0>;
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		phy0: ethernet-phy@0 {
+			reg = <0>;
+		};
 	};
 };
 
diff --git a/arch/arm/boot/dts/rk3036-kylin.dts b/arch/arm/boot/dts/rk3036-kylin.dts
index e817eba8c..24c70e925 100644
--- a/arch/arm/boot/dts/rk3036-kylin.dts
+++ b/arch/arm/boot/dts/rk3036-kylin.dts
@@ -80,16 +80,20 @@
 };
 
 &emac {
+	phy-handle = <&phy0>;
+	phy-reset-duration = <10>; /* millisecond */
+	phy-reset-gpios = <&gpio2 RK_PC6 GPIO_ACTIVE_LOW>; /* PHY_RST */
 	pinctrl-names = "default";
 	pinctrl-0 = <&emac_xfer>, <&emac_mdio>;
-	phy = <&phy0>;
-	phy-reset-gpios = <&gpio2 RK_PC6 GPIO_ACTIVE_LOW>; /* PHY_RST */
-	phy-reset-duration = <10>; /* millisecond */
-
 	status = "okay";
 
-	phy0: ethernet-phy@0 {
-		reg = <0>;
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		phy0: ethernet-phy@0 {
+			reg = <0>;
+		};
 	};
 };
 
diff --git a/arch/arm/boot/dts/rk3036.dtsi b/arch/arm/boot/dts/rk3036.dtsi
index e240b89b0..78686fc72 100644
--- a/arch/arm/boot/dts/rk3036.dtsi
+++ b/arch/arm/boot/dts/rk3036.dtsi
@@ -228,8 +228,6 @@
 		compatible = "rockchip,rk3036-emac";
 		reg = <0x10200000 0x4000>;
 		interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
-		#address-cells = <1>;
-		#size-cells = <0>;
 		rockchip,grf = <&grf>;
 		clocks = <&cru HCLK_MAC>, <&cru SCLK_MACREF>, <&cru SCLK_MAC>;
 		clock-names = "hclk", "macref", "macclk";
diff --git a/arch/arm/boot/dts/rk3066a-marsboard.dts b/arch/arm/boot/dts/rk3066a-marsboard.dts
index a66d915aa..e70ba3ccf 100644
--- a/arch/arm/boot/dts/rk3066a-marsboard.dts
+++ b/arch/arm/boot/dts/rk3066a-marsboard.dts
@@ -150,18 +150,21 @@
 #include "tps65910.dtsi"
 
 &emac {
-	status = "okay";
-
-	phy = <&phy0>;
+	phy-handle = <&phy0>;
 	phy-supply = <&vcc_rmii>;
-
 	pinctrl-names = "default";
 	pinctrl-0 = <&emac_xfer>, <&emac_mdio>, <&phy_int>;
+	status = "okay";
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
 
-	phy0: ethernet-phy@0 {
-		reg = <0>;
-		interrupt-parent = <&gpio1>;
-		interrupts = <RK_PD2 IRQ_TYPE_LEVEL_LOW>;
+		phy0: ethernet-phy@0 {
+			reg = <0>;
+			interrupt-parent = <&gpio1>;
+			interrupts = <RK_PD2 IRQ_TYPE_LEVEL_LOW>;
+		};
 	};
 };
 
diff --git a/arch/arm/boot/dts/rk3066a-rayeager.dts b/arch/arm/boot/dts/rk3066a-rayeager.dts
index 12b2e59ae..600ada0d8 100644
--- a/arch/arm/boot/dts/rk3066a-rayeager.dts
+++ b/arch/arm/boot/dts/rk3066a-rayeager.dts
@@ -142,15 +142,20 @@
 };
 
 &emac {
+	phy-handle = <&phy0>;
+	phy-supply = <&vcc_rmii>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&emac_xfer>, <&emac_mdio>, <&rmii_rst>;
-	phy = <&phy0>;
-	phy-supply = <&vcc_rmii>;
 	status = "okay";
 
-	phy0: ethernet-phy@0 {
-		reg = <0>;
-		reset-gpios = <&gpio1 RK_PD6 GPIO_ACTIVE_LOW>;
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		phy0: ethernet-phy@0 {
+			reg = <0>;
+			reset-gpios = <&gpio1 RK_PD6 GPIO_ACTIVE_LOW>;
+		};
 	};
 };
 
diff --git a/arch/arm/boot/dts/rk3188-radxarock.dts b/arch/arm/boot/dts/rk3188-radxarock.dts
index 36c0945f4..e5ed0642d 100644
--- a/arch/arm/boot/dts/rk3188-radxarock.dts
+++ b/arch/arm/boot/dts/rk3188-radxarock.dts
@@ -126,18 +126,21 @@
 };
 
 &emac {
-	status = "okay";
-
+	phy-handle = <&phy0>;
+	phy-supply = <&vcc_rmii>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&emac_xfer>, <&emac_mdio>, <&phy_int>;
+	status = "okay";
 
-	phy = <&phy0>;
-	phy-supply = <&vcc_rmii>;
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
 
-	phy0: ethernet-phy@0 {
-		reg = <0>;
-		interrupt-parent = <&gpio3>;
-		interrupts = <RK_PD2 IRQ_TYPE_LEVEL_LOW>;
+		phy0: ethernet-phy@0 {
+			reg = <0>;
+			interrupt-parent = <&gpio3>;
+			interrupts = <RK_PD2 IRQ_TYPE_LEVEL_LOW>;
+		};
 	};
 };
 
diff --git a/arch/arm/boot/dts/rk3xxx.dtsi b/arch/arm/boot/dts/rk3xxx.dtsi
index 616a828e0..bf285091a 100644
--- a/arch/arm/boot/dts/rk3xxx.dtsi
+++ b/arch/arm/boot/dts/rk3xxx.dtsi
@@ -186,8 +186,6 @@
 		compatible = "snps,arc-emac";
 		reg = <0x10204000 0x3c>;
 		interrupts = <GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>;
-		#address-cells = <1>;
-		#size-cells = <0>;
 
 		rockchip,grf = <&grf>;
 
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

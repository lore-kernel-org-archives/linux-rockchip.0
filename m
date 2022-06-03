Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3FB0C43334
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Jun 2022 16:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TqitnNde/q7yJmsqtmPRxwuc3s/t7jNO4xZeuOtXVJY=; b=TBt3EfEI2QRULF
	096I0V2qltspP8LB+uRddoE7FDSagYnHAIiAzKmGDU6Ij8JLebU1cUrx1A/Av17/6AiuOIIJUzR7h
	phw96uhHkoE/BCXctRt+OOd7ur0bwh6UbqH5F+O0ceLqlc7YOffthbr6zKMfrWdQ+MOFVm+c2poyp
	lxYjzg+WToV56b2RfCDJVtXYEp2AaJllIrIV5Dqmaw8sOHNqBNfD7YKQbxIccSEz6qp+MoQAGfCoY
	eOfQSWzYuL04Un0vM2xy71xdrZMiC939WNpVr/Vd+TAHYGNzLg6GceUXXg1JC+U/tGyShfOkdu/60
	0ga2bMFEuLLG93fpFYsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nxAHd-008B0E-K1; Fri, 03 Jun 2022 16:36:21 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nxAHB-008AqG-GA; Fri, 03 Jun 2022 16:35:55 +0000
Received: by mail-ed1-x530.google.com with SMTP id h19so10912671edj.0;
        Fri, 03 Jun 2022 09:35:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ehXZdnyYhQGdFWJC4VGnIHkQy4QBmtpZ6LdmrEF0kKs=;
        b=K+WAfwU/ngrjgvC2OP5zpGacNsUc/k/WvO2zX9AsWAq0WG4hgiPbpROPoEZWaB/Hl0
         SyYiXHMJ1IMf37UGRk7w25J6H082YxYGD8usNPc2ZizIfy7g5UCxiS3ZR5AI8ybRhl+h
         MskLOIiMapwzluUhrWCvMPFKMMKZA4zzhh0B4Vwchm9hPBF8v4n3bI0oUkBxivIUna1h
         x9RITpAVIIc+S7pvd9hjUYu+Q40xo03vBbC26R9ckZVRbuEQiqIFa6mgj9xcm8pm19d5
         Wobl7EYgvoQ7aA3nphMtkmeJBg1frxNCp0t4ILvkceIMkcg/HBIf2rHzoxsEEJHZ3X3A
         NRtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ehXZdnyYhQGdFWJC4VGnIHkQy4QBmtpZ6LdmrEF0kKs=;
        b=ixe9za4B1G5Bl53HkKXFHJLOG3gt/oj4dYwmB3iflWn9ap+HZs2L3vXnp9P7oo/qOZ
         oOE2aKYCTqglAMBwEraESFgO3ogsOfIks1bNLnBLBCEwKLF20qieEKWno2JjFBSfOaiI
         dJfwaSqAaU64btkeAT8zGGHdgo7/NZvBR84WHaEpZnoc2KkzmAzss0nSx97JQIxBiyKL
         WfWzCgsUgnKPYYoa38cCnt0hm7R9HyFb4OsMZebp3/pTvKtWbP3t9YQI5e3hifPzyTZU
         id4HxoNlrr2AQayRUT7xl58K+I4ewZ1NRGAgU/o4SAw6SqS608dsFFx3M7Dqzm8h2Ga7
         oA+Q==
X-Gm-Message-State: AOAM532gtAT2wrxEu5iaMYzUHisaK6Xqs8Uw3X5yPDS1/kmuWJ1JuABt
	O7y7IjPOs9whJ/UMNGjsFLI=
X-Google-Smtp-Source: ABdhPJwir3sPXB/4KhHIbARo7v439Y/LK1tCuHGIf2ZJnNdNJNvHo/x3d80XUZleYQGtthQOTcBYUg==
X-Received: by 2002:a05:6402:1e92:b0:42d:dc34:e233 with SMTP id f18-20020a0564021e9200b0042ddc34e233mr11965467edf.386.1654274148266;
        Fri, 03 Jun 2022 09:35:48 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id n13-20020a056402060d00b0042dd630eb2csm4106189edv.96.2022.06.03.09.35.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jun 2022 09:35:47 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	netdev@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/3] ARM: dts: rockchip: restyle emac nodes
Date: Fri,  3 Jun 2022 18:35:39 +0200
Message-Id: <20220603163539.537-3-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220603163539.537-1-jbx6244@gmail.com>
References: <20220603163539.537-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220603_093553_589791_A53EF5B6 
X-CRM114-Status: GOOD (  12.50  )
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

The emac_rockchip.txt file is converted to YAML.
Phy nodes are now a subnode of mdio, so restyle
the emac nodes of rk3036/rk3066/rk3188.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---

Changed V2:
  use phy
---
 arch/arm/boot/dts/rk3036-evb.dts        | 16 ++++++++++------
 arch/arm/boot/dts/rk3036-kylin.dts      | 16 ++++++++++------
 arch/arm/boot/dts/rk3036.dtsi           |  2 --
 arch/arm/boot/dts/rk3066a-marsboard.dts | 17 ++++++++++-------
 arch/arm/boot/dts/rk3066a-rayeager.dts  | 15 ++++++++++-----
 arch/arm/boot/dts/rk3188-radxarock.dts  | 19 +++++++++++--------
 arch/arm/boot/dts/rk3xxx.dtsi           |  2 --
 7 files changed, 51 insertions(+), 36 deletions(-)

diff --git a/arch/arm/boot/dts/rk3036-evb.dts b/arch/arm/boot/dts/rk3036-evb.dts
index 2a7e6624e..9fd4d9db9 100644
--- a/arch/arm/boot/dts/rk3036-evb.dts
+++ b/arch/arm/boot/dts/rk3036-evb.dts
@@ -15,16 +15,20 @@
 };
 
 &emac {
-	pinctrl-names = "default";
-	pinctrl-0 = <&emac_xfer>, <&emac_mdio>;
 	phy = <&phy0>;
-	phy-reset-gpios = <&gpio2 RK_PC6 GPIO_ACTIVE_LOW>; /* PHY_RST */
 	phy-reset-duration = <10>; /* millisecond */
-
+	phy-reset-gpios = <&gpio2 RK_PC6 GPIO_ACTIVE_LOW>; /* PHY_RST */
+	pinctrl-names = "default";
+	pinctrl-0 = <&emac_xfer>, <&emac_mdio>;
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
index e817eba8c..67e1e0413 100644
--- a/arch/arm/boot/dts/rk3036-kylin.dts
+++ b/arch/arm/boot/dts/rk3036-kylin.dts
@@ -80,16 +80,20 @@
 };
 
 &emac {
-	pinctrl-names = "default";
-	pinctrl-0 = <&emac_xfer>, <&emac_mdio>;
 	phy = <&phy0>;
-	phy-reset-gpios = <&gpio2 RK_PC6 GPIO_ACTIVE_LOW>; /* PHY_RST */
 	phy-reset-duration = <10>; /* millisecond */
-
+	phy-reset-gpios = <&gpio2 RK_PC6 GPIO_ACTIVE_LOW>; /* PHY_RST */
+	pinctrl-names = "default";
+	pinctrl-0 = <&emac_xfer>, <&emac_mdio>;
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
index a66d915aa..8beecd628 100644
--- a/arch/arm/boot/dts/rk3066a-marsboard.dts
+++ b/arch/arm/boot/dts/rk3066a-marsboard.dts
@@ -150,18 +150,21 @@
 #include "tps65910.dtsi"
 
 &emac {
-	status = "okay";
-
 	phy = <&phy0>;
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
index 12b2e59ae..9aeef36ca 100644
--- a/arch/arm/boot/dts/rk3066a-rayeager.dts
+++ b/arch/arm/boot/dts/rk3066a-rayeager.dts
@@ -142,15 +142,20 @@
 };
 
 &emac {
-	pinctrl-names = "default";
-	pinctrl-0 = <&emac_xfer>, <&emac_mdio>, <&rmii_rst>;
 	phy = <&phy0>;
 	phy-supply = <&vcc_rmii>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&emac_xfer>, <&emac_mdio>, <&rmii_rst>;
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
index 36c0945f4..bb0942d3e 100644
--- a/arch/arm/boot/dts/rk3188-radxarock.dts
+++ b/arch/arm/boot/dts/rk3188-radxarock.dts
@@ -126,18 +126,21 @@
 };
 
 &emac {
-	status = "okay";
-
+	phy = <&phy0>;
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

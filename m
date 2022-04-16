Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2DCB7C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Apr 2022 09:10:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GvQJ2zQLCEYUqGw1Y6Txp5HQldQEL/+FfVLUdvCYBXQ=; b=M8m30szA+V9F2R
	eTKzweMl6cZ+QhKCeqTm0+20597TyMnHsGz7PP83S5ag8brXJ0Pwg+/6jF9ZVu5YmyLIwT2BirjT2
	yliChOPwgCtXaErAiSyMuidVPV5zEfTZLsLeOL5hImlQ3POmNMfDmRWSOOomAfiPbh4vTaxL9J4kB
	IISUDhnNzBFA8dZEfJjZluTaTFHlNjwd88bBysEJYzL84KNihMWGzmTokP/Tteo7YODcpwypQpGCO
	j/b6+qov1dZVPoj8FgDR+zuTTiyslW9kbC/3QIZr3fTK+zxyBhs28YOIks66icf1LrUI+0XiA/3v2
	K6J7SUj5h1/Nwm+yT6QA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nfeRm-00CbCO-CN; Sat, 16 Apr 2022 09:10:26 +0000
Received: from mail-qk1-x72c.google.com ([2607:f8b0:4864:20::72c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nfeQN-00CaTL-Ce; Sat, 16 Apr 2022 09:09:00 +0000
Received: by mail-qk1-x72c.google.com with SMTP id b68so3292063qkc.4;
 Sat, 16 Apr 2022 02:08:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IqOtlYyePRN/r4aPym/C6r8euVVGX9fSqK0zMFP5Scg=;
 b=QIYrB+ufrI3T77S1O/NAar0XMF8MWIL8WyVbqQv2bTO+Oz1DcaXdylO9KKKyG8tc9G
 BZIqFJ2OkO1DLaWKXWmQFdOpj3tLWkhW06GhcWRyUyqHxIonqFxTnCmmduRvI2CFzyk9
 s/QWB/9zjPTy6RRKJUFKq995GZLnr++d1p2ne+dsbQvIjjGi0+odNLiCsE7ErKa5BCXi
 rKzXSlQlXPT84qI18xw0YhnoRkTUfPPcXhwZn2v3Ettu0nuBIIuFCDhL1zFK6xEXFF8i
 YECwsiZ0gnVqQvhxpq1CyjkyzBBevGjCwJdzxcgj8glWSdVoqD63lvLyU7pnrY9kMad/
 ZOIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IqOtlYyePRN/r4aPym/C6r8euVVGX9fSqK0zMFP5Scg=;
 b=BX0Ilg4+WFjsE0ShFs9YhUlENoxGBQBczDJF6mqU4Ijz2PsmePVJQ9YHIxN0w+PhRN
 nku/cmqdXIddOL3hMLdl4KYWUTxwhutCZyl8WUbbeaQZroLb6U5nN7SVWu4QhKwXpOji
 qiAl4xg+OYSlCdEDihBK7OfcKNjjuKj+kzVzxU7Av6Sz7jRf9mubrj/vGGv8AU2gOAdt
 xKVoclvuaR9KJLHilgEAqutJg8G8ueWukOZld7e0TsxRf6LWdZ/dwfYZdRvZtbkpsLrf
 IVepYnELPWDBCY4qsYotbD92Ddg9la9nRjZl8Tj7zf6CLgCJN2vJgymDMcaww7rlXJ9j
 k2BQ==
X-Gm-Message-State: AOAM533aB2xye1+MnmDzWh6eaSBgtRdRCSHy3wO8KqKokMfnlssVndSy
 v9KqMINT/pyiInuH3U4MyIY=
X-Google-Smtp-Source: ABdhPJyPYMTVfW8c/yxfv8fb57FPal3ZuOQEqxZIO+3LQq9LNDTFZHwCRW39ds1hX7LAEZbebsxdFw==
X-Received: by 2002:a05:620a:1654:b0:69c:7035:b31f with SMTP id
 c20-20020a05620a165400b0069c7035b31fmr1513161qko.546.1650100138616; 
 Sat, 16 Apr 2022 02:08:58 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 t19-20020ac85893000000b002e1afa26591sm4630394qta.52.2022.04.16.02.08.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 16 Apr 2022 02:08:58 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, Peter Geis <pgwipeout@gmail.com>,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v5 4/4] arm64: dts: rockchip: enable pcie controller on
 quartz64-a
Date: Sat, 16 Apr 2022 05:08:44 -0400
Message-Id: <20220416090844.597470-5-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220416090844.597470-1-pgwipeout@gmail.com>
References: <20220416090844.597470-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220416_020859_460507_41320953 
X-CRM114-Status: GOOD (  10.35  )
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

Add the nodes to enable the pcie controller on the quartz64 model a
board.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 .../boot/dts/rockchip/rk3566-quartz64-a.dts   | 34 +++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
index 141a433429b5..85926d46337d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
@@ -125,6 +125,18 @@ vbus: vbus {
 		vin-supply = <&vcc12v_dcin>;
 	};
 
+	vcc3v3_pcie_p: vcc3v3_pcie_p {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio0 RK_PC6 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pcie_enable_h>;
+		regulator-name = "vcc3v3_pcie_p";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc_3v3>;
+	};
+
 	vcc5v0_usb: vcc5v0_usb {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc5v0_usb";
@@ -201,6 +213,10 @@ &combphy1 {
 	status = "okay";
 };
 
+&combphy2 {
+	status = "okay";
+};
+
 &cpu0 {
 	cpu-supply = <&vdd_cpu>;
 };
@@ -509,6 +525,14 @@ rgmii_phy1: ethernet-phy@0 {
 	};
 };
 
+&pcie2x1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie_reset_h>;
+	reset-gpios = <&gpio1 RK_PB2 GPIO_ACTIVE_HIGH>;
+	status = "okay";
+	vpcie3v3-supply = <&vcc3v3_pcie_p>;
+};
+
 &pinctrl {
 	bt {
 		bt_enable_h: bt-enable-h {
@@ -534,6 +558,16 @@ diy_led_enable_h: diy-led-enable-h {
 		};
 	};
 
+	pcie {
+		pcie_enable_h: pcie-enable-h {
+			rockchip,pins = <0 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		pcie_reset_h: pcie-reset-h {
+			rockchip,pins = <1 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	pmic {
 		pmic_int_l: pmic-int-l {
 			rockchip,pins = <0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

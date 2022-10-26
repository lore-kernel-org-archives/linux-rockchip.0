Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33E2BC38A2D
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Oct 2022 17:23:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IPnsBF9ryso0OBDSY0CSCZ/3wkwMCraQq7xqDVDjCF8=; b=0P4T6cDKSqmOya
	ojwsvr4HLsI2bzoGgvCitm5WdZCFRfFc2GWHC5maAZpUwXk6zfaQO2jvQwKZPkhwdh18bQJ/dBGrd
	3B2J3no0kl0mzXp/qxSiutSXdWPEX83BTEoZTfAJgTJw0RtlLLxSt2f+qyqwEzAH+97fbv5JbcUPf
	vltZaR100QjNSHwNfX6R2M5/hRx5ljRltXir4sRggOuTd0CvaHpFoZr/0JpBfHP/Scn+maYqCsBwy
	zNv4zjA9VRRCK0IjkySL9SUCyo/E1I2vmE/FNkR8lEUHK/pUxIc+XlskgdzR+6M9hyikZkhoOUrlZ
	rnxYJX4au+nTgJ/UPRqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onk7V-00ALJz-Ds; Wed, 26 Oct 2022 17:23:13 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onk7A-00ALAK-I9; Wed, 26 Oct 2022 17:22:54 +0000
From: Furkan Kardame <f.kardame@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1666804964;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=R0gyPpPgmG+b8fOlXYl6mlZFJ/ZfwYnB2ICez9nbrWU=;
	b=l/35mrcZpdqg1T/BskkJOvUBl8/yyKj5ElY2k0tKvOnUE7XjSJFBROwUhQ7Uf4sFAr1sZi
	8425P1shiHkfuvzSz1OCl8cNDt88VXaXif+8n5qrmMF69ZAEpBQZz6vrK8EW7gOGhuBgGL
	cix2cb8/dJWKF3IYRmwgJ9djvl3svR6d+sLP9lS8ClNOSEDq2lBsfT12qjMjzfrWwfXc/2
	dEQUQfDzYakaz7IJ4rzEvgSGyTEeDbrXJRRfBPGmPu6HTaBpds7bpptI2nxgN+zxnF28Au
	HEim/0C473nxbxHKjXQn2hf8cV+GBlhhtA6ciZhB3/rF3WP6bJ83dHIpe/e1fA==
To: pgwipeout@gmail.com
Cc: heiko@sntech.de,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Furkan Kardame <f.kardame@manjaro.org>
Subject: [PATCH] arm64: dts: rockchip: add rk3566 pcie2 node
Date: Wed, 26 Oct 2022 20:21:53 +0300
Message-Id: <20221026172152.64513-1-f.kardame@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=f.kardame@manjaro.org smtp.mailfrom=f.kardame@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221026_102253_089308_9AA6FE1D 
X-CRM114-Status: UNSURE (   7.34  )
X-CRM114-Notice: Please train this message.
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

This patch adds nodes needed for pcie2
to work on rk3566-roc-pc

Signed-off-by: Furkan Kardame <f.kardame@manjaro.org>
---
 .../arm64/boot/dts/rockchip/rk3566-roc-pc.dts | 34 +++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts b/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
index dba648c2f..ab177c4f9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
@@ -82,6 +82,18 @@ vcc5v0_sys: vcc5v0-sys-regulator {
 		vin-supply = <&usb_5v>;
 	};
 
+	vcc3v3_pcie: vcc3v3-pcie-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio0 RK_PC4 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pcie_enable_h>;
+		regulator-name = "vcc3v3_pcie";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
 	vcc3v3_sys: vcc3v3-sys-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc3v3_sys";
@@ -122,6 +134,10 @@ &combphy1 {
 	status = "okay";
 };
 
+&combphy2 {
+	status = "okay";
+};
+
 &cpu0 {
 	cpu-supply = <&vdd_cpu>;
 };
@@ -447,6 +463,14 @@ rgmii_phy1: ethernet-phy@0 {
 	};
 };
 
+&pcie2x1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie_reset_h>;
+	reset-gpios = <&gpio1 RK_PB2 GPIO_ACTIVE_HIGH>;
+	vpcie3v3-supply = <&vcc3v3_pcie>;
+	status = "okay";
+};
+
 &pinctrl {
 	bt {
 		bt_enable_h: bt-enable-h {
@@ -468,6 +492,16 @@ user_led_enable_h: user-led-enable-h {
 		};
 	};
 
+	pcie {
+		pcie_enable_h: pcie-enable-h {
+			rockchip,pins = <0 RK_PC4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		pcie_reset_h: pcie-reset-h {
+			rockchip,pins = <1 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	pmic {
 		pmic_int: pmic_int {
 			rockchip,pins =
-- 
2.38.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

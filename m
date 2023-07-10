Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE657EB64DA
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Jul 2023 16:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SLxScr8y/nlbmLTodYtjznNKhAmdq+xiM70/Yv0Q4m0=; b=ZQOEBaYzx9RziQ
	vj3aI6iCqstpdh2Se+Obr2Lzxx5u16ehcb6/w3LaAyXO57mBnxPI2iaWshB19LyeLWbLKaqaxgxKb
	ChhDnB9cNnRZjG1xMoq0I/jqOZ0h1/mkBh2X34yUOONyT9tTniMiLAdJDndmUVZZSNJeFajhtl25V
	lVubY5wXw8S4TCJhKbtsPQgktAenWb4yykzm3fQDMlqeVdW+3AkuvAWWw8abR1JYbOt3N6xf7tS9y
	6SM7+W9jch6Xg59fVLDYrOexaUBKFazo6lbLo4aoDy0pH8fQikNqDrVXU4GNDgU4h2DKu/hPw1Va7
	ggtgj6ILvNrkMNBLyncg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qIu89-00CF5m-1I;
	Mon, 10 Jul 2023 16:52:57 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qIu7q-00CEor-2S;
	Mon, 10 Jul 2023 16:52:40 +0000
Received: from jupiter.universe (dyndsl-091-248-189-246.ewe-ip-backbone.de [91.248.189.246])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 77AF56607009;
	Mon, 10 Jul 2023 17:52:32 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1689007952;
	bh=SyT5L6QW7HqAZecCA4MRYTD8aoZGBwujAo3dEnVZY78=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=EQgqj1Q//kViqIzttfWnfi8UGG9Ap0+dTd6xwfUQHpnBaBfnkOSWSxiW3ibv4qJNh
	 B1WKY1qWNlnxnH/JELYsFpEy2HVJHhSB3mYIuj8Fw0EPpiVD4o1NiedBTDTl4tVo5O
	 yL/ofWvms2IAJRCxVnYK/ioKVcwSPrwXYLXQsNevxIDOryWBj6TmDCejSrfHPXxglO
	 IvdIuyVyxmxkfOCVMqGOezk9ovTytdjc7EIThi/liFwqRpVckmmt56wka6Dof92eax
	 U6qonkSGjyidbNhc0vYxk6EG1VLyKlBzuhuYNl6QDgAnCSqM7im5zQLoA9L0+bPUiT
	 9/0A1B3aN0N7g==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 212534805B8; Mon, 10 Jul 2023 18:52:28 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: linux-rockchip@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v1 05/13] arm64: dts: rockchip: rock-5a: add 5V regulator
Date: Mon, 10 Jul 2023 18:52:20 +0200
Message-Id: <20230710165228.105983-6-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230710165228.105983-1-sebastian.reichel@collabora.com>
References: <20230710165228.105983-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230710_095238_932900_A85F4A37 
X-CRM114-Status: UNSURE (   9.92  )
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

Add GPIO controlled 5V regulator, which is used for supplying
the fan, on-board USB hub and HDMI.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../boot/dts/rockchip/rk3588s-rock-5a.dts     | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index 616a6bcfd60b..87864a991b50 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -38,6 +38,20 @@ vcc5v0_sys: vcc5v0-sys {
 		vin-supply = <&vcc12v_dcin>;
 	};
 
+	vcc_5v0: vcc-5v0 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_5v0";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-boot-on;
+		regulator-always-on;
+		enable-active-high;
+		gpio = <&gpio4 RK_PA3 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc_5v0_en>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
 	vcc_1v1_nldo_s3: vcc-1v1-nldo-s3 {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc_1v1_nldo_s3";
@@ -150,6 +164,12 @@ rgmii_phy1: ethernet-phy@1 {
 };
 
 &pinctrl {
+	power {
+		vcc_5v0_en: vcc-5v0-en {
+			rockchip,pins = <4 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	rtl8211f {
 		rtl8211f_rst: rtl8211f-rst {
 			rockchip,pins = <3 RK_PB7 RK_FUNC_GPIO &pcfg_pull_none>;
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

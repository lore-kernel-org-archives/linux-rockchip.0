Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F39CC32771
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Sep 2022 18:42:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iE2eTFOCXNKzTtqkveJUXkqRKjWK6MpK9FJ9E7D2SWM=; b=t7CDY2Qm25UrVC
	onmeXwVbj3UrwgCjIplTAR2+AHaNnI0x1w8CA75i5bqPHuV81iXnwsQbIZpjWn3t+8hcNj9Uy/iPS
	ebJ6OO4qQDeeGnODBlbNSiJ80WUvv/3XFgVcbzgkqD4JKLc6zCqhmEiZngSjs2dkAhTbjtNKAyft6
	u1qXW7odOiMxjdtacWcm5ddu0a8Q8VBrzre94rMeJLxhsQM77KZWYf2qPFMZ1TXqUosPWNrNq3Gkn
	rhmdunmxl6cih2UoFtHmdvMlWGjwApjGUeWt7LtHOK9rMIX/KcSneZ7iXGpeTH2GwACsQ5pQkIGIu
	hLRvIT2TRyGhzKbDlrzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oct3K-006MNP-VV; Mon, 26 Sep 2022 18:42:03 +0000
Received: from hall.aurel32.net ([2001:bc8:30d7:100::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocsz7-006IIi-GN; Mon, 26 Sep 2022 18:37:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=aurel32.net
	; s=202004.hall; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Content-Type:From:Reply-To:
	Subject:Content-ID:Content-Description:X-Debbugs-Cc;
	bh=guTQUyIY3Ak74CaPrHeNLBZ+hPVciKbJ6JW4ThPI6EE=; b=wkF7ieiwQQIoTHYfp0GEjpgjiE
	VAIHPVje++9TPaVC0Lr2L6bxjJiWTnml8+sFg8S9gyG1sv/6mtkhD/apAEJM9tKyRsMa4fLMwGGan
	/e5rCkBEfBrjK5xqERdTXvzJXKZgeBGECPZ6A3+NCrhHBBdhP4s1SDyBKPGO6rr+YqQD44KzfQOwA
	CIc8CNNrY5ITkeuu59c4AA8v7hLTDTAEYsNFyzF/H0GaNFGtKnBomImXQJzoFwmw4IynQK5CVtCtx
	NGftOMUA8mS897MgSK9LP65LqWybl4leNuG8nKlUpDu76CC4MDs+MOUZ7QafVj7QFekotp+cF2KF/
	uagx2tCw==;
Received: from [2a01:e34:ec5d:a741:8a4c:7c4e:dc4c:1787] (helo=ohm.rr44.fr)
	by hall.aurel32.net with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <aurelien@aurel32.net>)
	id 1ocsz4-00B9Pd-Eb; Mon, 26 Sep 2022 20:37:38 +0200
Received: from aurel32 by ohm.rr44.fr with local (Exim 4.96)
	(envelope-from <aurelien@aurel32.net>)
	id 1ocsz1-007wcX-2E;
	Mon, 26 Sep 2022 20:37:35 +0200
From: Aurelien Jarno <aurelien@aurel32.net>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list)
Cc: Dongjin Kim <tobetter@gmail.com>,
	Aurelien Jarno <aurelien@aurel32.net>
Subject: [PATCH v2 12/13] arm64: dts: rockchip: Add PCIEe v3 nodes to ODROID-M1
Date: Mon, 26 Sep 2022 20:37:26 +0200
Message-Id: <20220926183727.1893566-13-aurelien@aurel32.net>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220926183727.1893566-1-aurelien@aurel32.net>
References: <20220926183727.1893566-1-aurelien@aurel32.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220926_113741_667928_914D8DAB 
X-CRM114-Status: UNSURE (   9.11  )
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

Add nodes to ODROID-M1 to support PCIe v3 on the M2 slot.

Signed-off-by: Aurelien Jarno <aurelien@aurel32.net>
---
 .../boot/dts/rockchip/rk3568-odroid-m1.dts    | 34 +++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts b/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
index a595014942aa..a9092c663a6e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-odroid-m1.dts
@@ -96,6 +96,19 @@ simple-audio-card,codec {
 		};
 	};
 
+	vcc3v3_pcie: vcc3v3-pcie-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_pcie";
+		enable-active-high;
+		gpio = <&gpio4 RK_PA7 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc3v3_pcie_en_pin>;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		startup-delay-us = <5000>;
+		vin-supply = <&vcc3v3_sys>;
+	};
+
 	vcc3v3_sys: vcc3v3-sys-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc3v3_sys";
@@ -479,6 +492,18 @@ rgmii_phy0: ethernet-phy@0 {
 	};
 };
 
+&pcie30phy {
+	status = "okay";
+};
+
+&pcie3x2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie_reset_pin>;
+	reset-gpios = <&gpio2 RK_PD6 GPIO_ACTIVE_HIGH>;
+	vpcie3v3-supply = <&vcc3v3_pcie>;
+	status = "okay";
+};
+
 &pinctrl {
 	leds {
 		led_power_pin: led-power-pin {
@@ -489,6 +514,15 @@ led_work_pin: led-work-pin {
 		};
 	};
 
+	pcie {
+		pcie_reset_pin: pcie-reset-pin {
+			rockchip,pins = <2 RK_PD6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+		vcc3v3_pcie_en_pin: vcc3v3-pcie-en-pin {
+			rockchip,pins = <4 RK_PA7 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	pmic {
 		pmic_int_l: pmic-int-l {
 			rockchip,pins = <0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

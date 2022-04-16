Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74929C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Apr 2022 13:56:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Aearhdw/bre6KYgKwzaD6gNllqjnjwTAo1SNPE3EcWY=; b=1rPYL2+7fDnCO/
	9RlrPZ25Vny0BuP6/gSDlTYDV+FM1mqw+C10ebg4vwdwlKqXFwTGnhO5xA06K5Be68+7x2SPEV3jT
	/iprjWh5GHCGNnxqg8XFdQSuGlBS0/R38Ed70cbKnekfaDNnori4PVxEnpgpKsDv+Ko8Sv0roA6L9
	ouIzL7DkJ550sCet4HsemPcleY3DBvpuf580aM/MbPsWT18VSeX4CWv/S7CQ8scN0f1GBfVIYeWnI
	BeTsPYU1PUonRy1zxR9Vqo0yQyXAM8YJSW8iOKixSBVKCyys78Cb/2ihHE2YoEQuf5MEvMqDa/AV0
	ln/Q5Li881VY9XLQrHTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nfiuW-00D2S6-Sk; Sat, 16 Apr 2022 13:56:24 +0000
Received: from mxout4.routing.net ([2a03:2900:1:a::9])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nfits-00D26w-3Z; Sat, 16 Apr 2022 13:55:45 +0000
Received: from mxbox2.masterlogin.de (unknown [192.168.10.89])
 by mxout4.routing.net (Postfix) with ESMTP id 755D91008DF;
 Sat, 16 Apr 2022 13:55:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
 s=20200217; t=1650117339;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=JyHwYPoep9BFDLoB0ZMsq8j0Yw86x9S39Cqz1XCAImc=;
 b=CgGX7EPzowNcfoFBExgbpTHJElkMO5owp4RgN5tZOFLWgF6weR58wvqVNTPBwCuyUBNSFT
 6IglZyfCJOeC3mCqGvnVapmYeW2o+QCIbaXMVJULpRzscQk59TRNe8se4aIKFsNx+1lmHK
 C51JplIIR2eRn54hk3iXGYC9meo1mD4=
Received: from localhost.localdomain (fttx-pool-217.61.150.108.bambit.de
 [217.61.150.108])
 by mxbox2.masterlogin.de (Postfix) with ESMTPSA id 1945C1005BA;
 Sat, 16 Apr 2022 13:55:38 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Johan Jonker <jbx6244@gmail.com>,
 Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org
Subject: [RFC/RFT 6/6] arm64: dts: rockchip: Add PCIe v3 nodes to BPI-R2-Pro
Date: Sat, 16 Apr 2022 15:54:58 +0200
Message-Id: <20220416135458.104048-7-linux@fw-web.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220416135458.104048-1-linux@fw-web.de>
References: <20220416135458.104048-1-linux@fw-web.de>
MIME-Version: 1.0
X-Mail-ID: 62954ed6-c7f0-49ee-8548-52a70c509b55
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220416_065544_347060_FDD2DDB3 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
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

From: Frank Wunderlich <frank-w@public-files.de>

Add Nodes to Bananapi-R2-Pro board to support PCIe v3 and
set pcie regulators to always on.

Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
 .../boot/dts/rockchip/rk3568-bpi-r2-pro.dts   | 79 +++++++++++++++++++
 1 file changed, 79 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
index 2700fb18a3bc..e3a0f7d219a2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
@@ -74,6 +74,67 @@ vcc5v0_sys: vcc5v0-sys {
 		vin-supply = <&dc_12v>;
 	};
 
+	pcie30_avdd0v9: pcie30-avdd0v9 {
+		compatible = "regulator-fixed";
+		regulator-name = "pcie30_avdd0v9";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <900000>;
+		regulator-max-microvolt = <900000>;
+		vin-supply = <&vcc3v3_sys>;
+	};
+
+	pcie30_avdd1v8: pcie30-avdd1v8 {
+		compatible = "regulator-fixed";
+		regulator-name = "pcie30_avdd1v8";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		vin-supply = <&vcc3v3_sys>;
+	};
+
+	/* pi6c pcie clock generator feeds both ports */
+	vcc3v3_pi6c_05: vcc3v3_pi6c_05-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_pcie";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+		regulator-boot-on;
+		enable-active-high;
+		gpios = <&gpio0 RK_PD4 GPIO_ACTIVE_HIGH>;
+		startup-delay-us = <20000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+
+	/* actually fed by vcc3v3_sys, dependent on pi6c clock generator */
+	vcc3v3_minipcie: vcc3v3_minipcie-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_minipcie";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-always-on;
+		regulator-boot-on;
+		enable-active-high;
+		gpio = <&gpio0 RK_PC6 GPIO_ACTIVE_HIGH>;
+		startup-delay-us = <5000>;
+		vin-supply = <&vcc3v3_pi6c_05>;
+	};
+
+	/* actually fed by vcc3v3_sys, dependent on pi6c clock generator */
+	vcc3v3_ngff: vcc3v3_ngff-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_ngff";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-boot-on;
+		enable-active-high;
+		gpio = <&gpio4 RK_PC1 GPIO_ACTIVE_HIGH>;
+		startup-delay-us = <5000>;
+		vin-supply = <&vcc3v3_pi6c_05>;
+	};
+
 	vbus: vbus {
 		compatible = "regulator-fixed";
 		regulator-name = "vbus";
@@ -411,6 +472,24 @@ rgmii_phy1: ethernet-phy@0 {
 	};
 };
 
+&pcie30phy {
+       status = "okay";
+};
+
+&pcie3x1 {
+	rockchip,bifurcation;
+	reset-gpios = <&gpio3 RK_PA1 GPIO_ACTIVE_HIGH>;
+	vpcie3v3-supply = <&vcc3v3_ngff>;
+	status = "okay";
+};
+
+&pcie3x2 {
+	rockchip,bifurcation;
+	reset-gpios = <&gpio2 RK_PD6 GPIO_ACTIVE_HIGH>;
+	vpcie3v3-supply = <&vcc3v3_minipcie>;
+	status = "okay";
+};
+
 &pinctrl {
 	leds {
 		blue_led_pin: blue-led-pin {
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

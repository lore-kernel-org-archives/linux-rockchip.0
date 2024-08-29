Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B271C83F0A
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Aug 2024 12:27:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vww8Q77udAQA4d7cDbWwtyfuv+yAD0yOuv1bJMNBVns=; b=Qbp2y2AbqwVCKr
	AEwESJ0iq4yQIfeQiNvD1/+W0L2bLR0ax2bgx83lujiXwl+KjD9SiektKqgpHykBIZrvxuTUwmJjG
	7Y2wMbxZfoYX6njB4yzWb8fxIKmX0hVAcY9+MFXnFnuoeHRywKvvUZLlV6KyOSrMD8dn1iY1pdqRu
	4tGZscC2RM5nKBVkJg4k5oEA89Njl1sS3bEKCdqjJp7J9pvO11s+WtjSKAx0Hgn45XfAbYaT5a4V5
	9wtS6eVygE4noPp/f5a3/1OfCoENDtBQV3mHPP1YAjH8vKK2AuKTc9lW9w8hoCJ9kFjr92lfL8RUn
	NqMCyZgfYpREuYpycgDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjeFJ-00000001ufh-3s01;
	Thu, 29 Aug 2024 12:27:25 +0000
Received: from muminek.juszkiewicz.com.pl ([213.251.184.221])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjeFB-00000001uZq-2f6D
	for linux-rockchip@lists.infradead.org;
	Thu, 29 Aug 2024 12:27:20 +0000
Received: from localhost (localhost [127.0.0.1])
	by muminek.juszkiewicz.com.pl (Postfix) with ESMTP id A050F260747;
	Thu, 29 Aug 2024 14:27:15 +0200 (CEST)
X-Virus-Scanned: Debian amavis at juszkiewicz.com.pl
Received: from muminek.juszkiewicz.com.pl ([127.0.0.1])
 by localhost (muminek.juszkiewicz.com.pl [127.0.0.1]) (amavis, port 10024)
 with ESMTP id zrElAUXnOw4T; Thu, 29 Aug 2024 14:27:13 +0200 (CEST)
Received: from puchatek.local (83.25.211.12.ipv4.supernova.orange.pl [83.25.211.12])
	by muminek.juszkiewicz.com.pl (Postfix) with ESMTPSA id 692AC260987;
	Thu, 29 Aug 2024 14:27:12 +0200 (CEST)
From: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Date: Thu, 29 Aug 2024 14:26:54 +0200
Subject: [PATCH v6 3/9] arm64: dts: rockchip: move NanoPC-T6 parts to DTS
MIME-Version: 1.0
Message-Id: <20240829-friendlyelec-nanopc-t6-lts-v6-3-edff247e8c02@linaro.org>
References: <20240829-friendlyelec-nanopc-t6-lts-v6-0-edff247e8c02@linaro.org>
In-Reply-To: <20240829-friendlyelec-nanopc-t6-lts-v6-0-edff247e8c02@linaro.org>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
 Jonas Karlman <jonas@kwiboo.se>, Diederik de Haas <didi.debian@cknow.org>, 
 Dragan Simic <dsimic@manjaro.org>, 
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
X-Mailer: b4 0.14.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240829_052717_862652_FB4AE088 
X-CRM114-Status: UNSURE (   9.21  )
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

MiniPCIe slot is present only in first version of NanoPC-T6 (2301).

Signed-off-by: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts  | 24 ++++++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi | 17 ---------------
 2 files changed, 24 insertions(+), 17 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
index 3f8fbec65098..6a16aec7107a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
@@ -14,4 +14,28 @@ / {
 	model = "FriendlyElec NanoPC-T6";
 	compatible = "friendlyarm,nanopc-t6", "rockchip,rk3588";
 
+	vdd_4g_3v3: vdd-4g-3v3-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio4 RK_PC6 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pin_4g_lte_pwren>;
+		regulator-name = "vdd_4g_3v3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc5v0_sys>;
+	};
+};
+
+&pinctrl {
+	usb {
+		pin_4g_lte_pwren: 4g-lte-pwren {
+			rockchip,pins = <4 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
+&u2phy2_host {
+	phy-supply = <&vdd_4g_3v3>;
+	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
index ad8e36a339dc..d199f51a220c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
@@ -170,18 +170,6 @@ vcc3v3_sd_s0: vcc3v3-sd-s0-regulator {
 		regulator-name = "vcc3v3_sd_s0";
 		vin-supply = <&vcc_3v3_s3>;
 	};
-
-	vdd_4g_3v3: vdd-4g-3v3-regulator {
-		compatible = "regulator-fixed";
-		enable-active-high;
-		gpio = <&gpio4 RK_PC6 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&pin_4g_lte_pwren>;
-		regulator-name = "vdd_4g_3v3";
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		vin-supply = <&vcc5v0_sys>;
-	};
 };
 
 &combphy0_ps {
@@ -527,10 +515,6 @@ pcie_m2_1_pwren: pcie-m21-pwren {
 	};
 
 	usb {
-		pin_4g_lte_pwren: 4g-lte-pwren {
-			rockchip,pins = <4 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-
 		typec5v_pwren: typec5v-pwren {
 			rockchip,pins = <1 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
@@ -912,7 +896,6 @@ &uart2 {
 };
 
 &u2phy2_host {
-	phy-supply = <&vdd_4g_3v3>;
 	status = "okay";
 };
 

-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

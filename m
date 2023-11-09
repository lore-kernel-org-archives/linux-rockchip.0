Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 479F9C4167B
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Nov 2023 18:45:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QehJiGmctsXSDc4YLA3WQD9woYFCQ4D+1Sr3jXr7gts=; b=ecNUA1ZuPCAjJZ
	wGo1+yYEOXMrOujeP0Co+2VgtdaBCsMh2EyacgoNmmYZ+lBgi8lIB74VGb7Zrkp5+o4LAG6a2lvmF
	IY2j+FGPdUDbEwkAYAxyZpx8rokCpozigbMEtA96tA1OcjCMYxzSNUPRyJ674AZhYFbrOwGp4a0tA
	DWMqbe0hj/Wi4O1SoDAO8woIQeKZ0fufdUivgtPP1dofeKHfP7JPY74k7eeEBOVy1FdlfKRduMI0X
	nLB1+myAnWcIfbDj/Cmty8w3QZ5Wp+xQkAnSmc+32FTJnQUuEdHWSHrN+qzgReyLHJAWrPQjdcMY4
	6nHpUTJmFCEkut+JgYAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1A1Y-0073FQ-1u;
	Thu, 09 Nov 2023 18:45:04 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1A1U-0073CI-20
	for linux-rockchip@lists.infradead.org;
	Thu, 09 Nov 2023 18:45:02 +0000
Received: from jupiter.universe (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 930B36607413;
	Thu,  9 Nov 2023 18:44:56 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699555496;
	bh=ZUf7+KMB7mHUMnfEwhG5jA7NsEB2Vt5a4r0e0mZrdUE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=DCL0waF5eZ2gElTCx4o2iSeatWr8Fekpn5otBrcMkH1OTocWJRtlJs79VkwE4cdLj
	 ltcJVEYxaCPGxtG1zkJlubDt3dZXQGdzjrxTFq0teRPR8ecRAsZkMSjXmBb6H3t3Oq
	 F94uaXizP+yaaGehOEEx2fEtvtAOFRzY6cSRjpORXCtf6WlJkbyrsEcYysN4lF39xn
	 ejlRbpUvkA+T5K5VYOeSDhta6TFuAYejG0AXu43c8hmofBdqUjAt5UhD6Rn4PuqWWv
	 IAm4XkXDuI5d98o+WBUusquW/E4uB8gzimaHTC1Sbo4molbSzIizb8RV3miA4ooZaJ
	 3vaDnOuNxsk7A==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 0C5AD4800CD; Thu,  9 Nov 2023 19:44:54 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Mark Brown <broonie@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-rockchip@lists.infradead.org,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v1 2/2] arm64: dts: rockchip: add analog audio to RK3588 EVB1
Date: Thu,  9 Nov 2023 19:44:44 +0100
Message-ID: <20231109184453.108676-2-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231109184453.108676-1-sebastian.reichel@collabora.com>
References: <20231109184453.108676-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_104500_912337_CDE52EFF 
X-CRM114-Status: GOOD (  12.47  )
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

Add support for the EVB1 analog audio to its devicetree. Only
the headphone has been tested, since I don't have matching
peripherals to test headset or speakers.

I also didn't manage to record sound from the onboard microphone,
but that also fails with the vendor kernel. Thus I assume the
microphone on my board is fried.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../boot/dts/rockchip/rk3588-evb1-v10.dts     | 97 +++++++++++++++++++
 1 file changed, 97 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
index b9d789d57862..3369065f897d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
@@ -56,6 +56,63 @@ button-escape {
 		};
 	};
 
+	analog-sound {
+		compatible = "simple-audio-card";
+		pinctrl-names = "default";
+		pinctrl-0 = <&hp_detect>;
+		simple-audio-card,name = "RK3588 EVB1 Audio";
+		simple-audio-card,aux-devs = <&amp_headphone>, <&amp_speaker>;
+		simple-audio-card,bitclock-master = <&masterdai>;
+		simple-audio-card,format = "i2s";
+		simple-audio-card,frame-master = <&masterdai>;
+		simple-audio-card,hp-det-gpio = <&gpio1 RK_PD5 GPIO_ACTIVE_LOW>;
+		simple-audio-card,mclk-fs = <256>;
+		simple-audio-card,pin-switches = "Headphones", "Speaker";
+		simple-audio-card,routing =
+			"Speaker Amplifier INL", "LOUT2",
+			"Speaker Amplifier INR", "ROUT2",
+			"Speaker", "Speaker Amplifier OUTL",
+			"Speaker", "Speaker Amplifier OUTR",
+			"Headphones Amplifier INL", "LOUT1",
+			"Headphones Amplifier INR", "ROUT1",
+			"Headphones", "Headphones Amplifier OUTL",
+			"Headphones", "Headphones Amplifier OUTR",
+			"LINPUT1", "Onboard Microphone",
+			"RINPUT1", "Onboard Microphone",
+			"LINPUT2", "Microphone Jack",
+			"RINPUT2", "Microphone Jack";
+		simple-audio-card,widgets =
+			"Microphone", "Microphone Jack",
+			"Microphone", "Onboard Microphone",
+			"Headphone", "Headphones",
+			"Speaker", "Speaker";
+
+		simple-audio-card,cpu {
+			sound-dai = <&i2s0_8ch>;
+		};
+
+		masterdai: simple-audio-card,codec {
+			sound-dai = <&es8388>;
+			system-clock-frequency = <12288000>;
+		};
+	};
+
+	amp_headphone: headphone-amplifier {
+		compatible = "simple-audio-amplifier";
+		enable-gpios = <&gpio1 RK_PD2 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&headphone_amplifier_en>;
+		sound-name-prefix = "Headphones Amplifier";
+	};
+
+	amp_speaker: speaker-amplifier {
+		compatible = "simple-audio-amplifier";
+		enable-gpios = <&gpio1 RK_PD3 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&speaker_amplifier_en>;
+		sound-name-prefix = "Speaker Amplifier";
+	};
+
 	backlight: backlight {
 		compatible = "pwm-backlight";
 		power-supply = <&vcc12v_dcin>;
@@ -240,6 +297,32 @@ hym8563: rtc@51 {
 	};
 };
 
+&i2c7 {
+	status = "okay";
+
+	es8388: audio-codec@11 {
+		compatible = "everest,es8388";
+		reg = <0x11>;
+		clocks = <&cru I2S0_8CH_MCLKOUT>;
+		assigned-clocks = <&cru I2S0_8CH_MCLKOUT>;
+		assigned-clock-rates = <12288000>;
+		AVDD-supply = <&avcc_1v8_codec_s0>;
+		DVDD-supply = <&avcc_1v8_codec_s0>;
+		HPVDD-supply = <&vcc_3v3_s0>;
+		PVDD-supply = <&vcc_3v3_s0>;
+		#sound-dai-cells = <0>;
+	};
+};
+
+&i2s0_8ch {
+	pinctrl-0 = <&i2s0_lrck
+		     &i2s0_mclk
+		     &i2s0_sclk
+		     &i2s0_sdi0
+		     &i2s0_sdo0>;
+	status = "okay";
+};
+
 &mdio0 {
 	rgmii_phy: ethernet-phy@1 {
 		/* RTL8211F */
@@ -273,6 +356,20 @@ &pcie3x4 {
 };
 
 &pinctrl {
+	audio {
+		hp_detect: headphone-detect {
+			rockchip,pins = <1 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		headphone_amplifier_en: headphone-amplifier-en {
+			rockchip,pins = <1 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		speaker_amplifier_en: speaker-amplifier-en {
+			rockchip,pins = <1 RK_PD3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	rtl8111 {
 		rtl8111_isolate: rtl8111-isolate {
 			rockchip,pins = <1 RK_PA4 RK_FUNC_GPIO &pcfg_pull_up>;
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

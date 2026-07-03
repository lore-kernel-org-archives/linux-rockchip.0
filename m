Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3273C43458
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Jul 2026 02:57:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mVUy86iNGbMFbwLrHF8ggEEmhvSl4aenEWlNHj+Wd90=; b=1z3u8jxwAEg59K
	wdhdi4F4cy1B8HzxE9QYCdFmtf9i4QICRzWU88sTu5CuNj8rz+Cp0AD+/b4T4UDlJdK0Xi661tpzY
	4FzrLrsBwS/PgjUVk03RIFdffHANpVo2HQJCbx6OsI5Hjx15VSjiy4BsCfHG/lggqX47YrmL2t6/P
	rf8GcH6SFYXWW0qedi9HrwyokPfIVWg3Nw2V8dNIjohqfR019S1PfRtlDCpOA8psSHLaKVCA2lyFa
	VPaibtSF7JAzejFxDjpupJrVVfW3c36fGtldKYWg1y2HAvcYCyW7AkQrtHhEyqc2gwVIXIZrOzkQD
	9V/qJkWLlHS2YDmnqNfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfU5T-00000005uW8-0pOF;
	Fri, 03 Jul 2026 02:57:07 +0000
Received: from mail-pg1-x52f.google.com ([2607:f8b0:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfU5Q-00000005uVP-19TQ
	for linux-rockchip@lists.infradead.org;
	Fri, 03 Jul 2026 02:57:05 +0000
Received: by mail-pg1-x52f.google.com with SMTP id 41be03b00d2f7-c95d0a54ea5so71511a12.0
        for <linux-rockchip@lists.infradead.org>; Thu, 02 Jul 2026 19:57:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783047423; x=1783652223; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JlV3zJ5RwhKne2jUh8CcjrZlF2RdUTEpohrGS1TCb5w=;
        b=EkH+AHiS+cU3QilD7Q3Fh+CO/3SDcvRSsdNGZIVOC8mWu4z8BPhcNPyqTjaxCdosWn
         ymXqtyAI9Cfm8UA6yWdmBXSwHG0ruLFBFB1crVTz6d5vdcTl+QGdCqpBKnM55rrpniRx
         FQujtO+FTvUZJyAdB0V0mtRtuLR644tOYxHs29qmdSt4jNTDEkpZNsoECqE0yD5BuLz0
         wJaRY4Y0qduMSmJZgrPIV5eMH2XWpcSOUQTK2o5wiQd0C/+71BOz/qESNb2095WCGxeS
         780fcM/eZkIaRtgCT0JUYGIf6bvMd+ruKoe1K8z774X0sgbbT6+uCznzD43XSU08zxNg
         kD9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783047423; x=1783652223;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JlV3zJ5RwhKne2jUh8CcjrZlF2RdUTEpohrGS1TCb5w=;
        b=M258+MVgE04smeqTv0HSFWLdIEGCad1qHUH5KX0CkQxsqy9JrjYyOqNyIQeyvGdbgs
         E0L0veVI5cNseoAH2Eok+4XOFMDoWfoG0TtVVKI6ofkVly7ctz8/SgF4ufLLLNspR9WU
         3hRDwRTSA3skf3gAroq83pZ3xNSAjrJFA/1cYxMAcA3ya6D2z/kxHCbOIvLP5c9vBhkc
         cwyTN3DZVPkyo9RfR6WjI2AdUI2NFl2plc32u00WCEFP7irxUZ0tpZSgk5IMbmUXpKhj
         3865185hapMQKaDx2mV8QBgdapP5XugVDpTHwM7Wny9RQNowbij+/ZRw1AsGrKuradSj
         MeBg==
X-Forwarded-Encrypted: i=1; AFNElJ8CP+WqolJYDT50n/EIpHE4mC+RbfINv5TpUsT+11QxKJzVPCHZYZf8hpLGK7rMQGU01PSP0xP6JtFqFbUd8Q==@lists.infradead.org
X-Gm-Message-State: AOJu0Yyt8Vuzklytsab6UYPMrlLPZ4KYXCZAt2GKExsR1H2gluFlhb8B
	dYqudFA66N1WBBA4iKNNFhjCTCzHxKIEUXLChZr+HBcZz5TV9kF0NVow
X-Gm-Gg: AfdE7cn/3oPRHXK+M4Vv/b+SBIXCLLzqgLYUDSj4tDRwOtgIUoV8MWA9UhCkCJFvIDs
	Com9mvxtj0WlK49MNV7xRquFx4m5yrOtFhON6spuvqVHpGvzXih0xsazrJY+WO6+/bObitANEZy
	SgUcN1aHpneuwxhzsqTzOwD2ihUv8tfBM3A2VgKAPsakh0gET0+CzhZkoPDxPvzfMPBTA69jqWY
	4pvlJWJ72cHoIi+7Y4XEqy4uFejKW0AA9Zuw45SRXIUEx8G5JYenb/Ak2Hy/eL2VnERN7Tw2szf
	aTdkv8ZTojbBnDgJfDs9KkHl2rLtZYX7krafjkwehCxVqwAfiVIKESeEWoQDkZsAQtAbHLGwFmS
	x2edeSQh947kXAmVUK2+LlbqIKYCad2oJL2cZ6oo3QZmpihkPSeDX08niUiybJzhOi9L+M/LXUC
	fTMROEqbqOZhOJ6F3VxCAakfEzKj90CM0p2m0clGrv89awj0WebaBQOgLooa4=
X-Received: by 2002:a05:6a21:4516:b0:398:9379:d04d with SMTP id adf61e73a8af0-3bfed22ecacmr9856159637.24.1783047422829;
        Thu, 02 Jul 2026 19:57:02 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:1b3:a800:5116:5334:8739:4661:fde2])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-13b3c7fa65asm14645620c88.6.2026.07.02.19.56.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jul 2026 19:57:02 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Fabio Estevam <festevam@nabladev.com>,
	stable@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: Fix rk3588s-roc-pc audio description
Date: Thu,  2 Jul 2026 23:56:48 -0300
Message-ID: <20260703025648.180135-1-festevam@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_195704_305189_E5FF8289 
X-CRM114-Status: GOOD (  11.84  )
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

From: Fabio Estevam <festevam@nabladev.com>

The rk3588s-roc-pc ES8388 codec is connected to the i2s0_8ch audio
interface.  Use the matching I2S0 MCLK output for the codec clock
instead of I2S1.

Using the I2S1 MCLK can leave the ALSA PCM running while the codec has
no usable master clock for the active audio path, resulting in silent
headphone output.

Also make the CPU DAI provide bitclock and frame clock.  This matches
the active Rockchip I2S controller side and avoids relying on the codec
to drive the bus clocks.

Route the headphone output to LOUT2 and ROUT2, matching the old 5.10
BSP device tree.  LOUT1 and ROUT1 are used for the speaker route there,
so using them for the headphone widget can leave the headphone jack
silent even while the ALSA path is active.

The old BSP also used hp-con-gpio on GPIO1_A4.  Model that GPIO as a
simple audio amplifier so DAPM enables the headphone connection when the
headphone path is active.

Cc: stable@vger.kernel.org
Fixes: 7f9509791507 ("arm64: dts: rockchip: add DTs for Firefly ROC-RK3588S-PC")
Signed-off-by: Fabio Estevam <festevam@nabladev.com>
---
 .../boot/dts/rockchip/rk3588s-roc-pc.dts      | 23 +++++++++++++------
 1 file changed, 16 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-roc-pc.dts b/arch/arm64/boot/dts/rockchip/rk3588s-roc-pc.dts
index d534d662c40f..99853880aaac 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-roc-pc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-roc-pc.dts
@@ -23,16 +23,19 @@ analog-sound {
 		compatible = "simple-audio-card";
 		pinctrl-names = "default";
 		pinctrl-0 = <&hp_detect>;
+		simple-audio-card,aux-devs = <&headphones_amp>;
 		simple-audio-card,name = "rockchip,es8388";
-		simple-audio-card,bitclock-master = <&masterdai>;
+		simple-audio-card,bitclock-master = <&cpudai>;
 		simple-audio-card,format = "i2s";
-		simple-audio-card,frame-master = <&masterdai>;
+		simple-audio-card,frame-master = <&cpudai>;
 		simple-audio-card,hp-det-gpios = <&gpio1 RK_PA6 GPIO_ACTIVE_LOW>;
 		simple-audio-card,mclk-fs = <256>;
 		simple-audio-card,pin-switches = "Headphones";
 		simple-audio-card,routing =
-			"Headphones", "LOUT1",
-			"Headphones", "ROUT1",
+			"Headphones", "Headphone Amp OUTL",
+			"Headphones", "Headphone Amp OUTR",
+			"Headphone Amp INL", "LOUT2",
+			"Headphone Amp INR", "ROUT2",
 			"LINPUT1", "Microphone Jack",
 			"RINPUT1", "Microphone Jack",
 			"LINPUT2", "Onboard Microphone",
@@ -47,11 +50,17 @@ masterdai: simple-audio-card,codec {
 			system-clock-frequency = <12288000>;
 		};
 
-		simple-audio-card,cpu {
+		cpudai: simple-audio-card,cpu {
 			sound-dai = <&i2s0_8ch>;
 		};
 	};
 
+	headphones_amp: audio-amplifier-headphones {
+		compatible = "simple-audio-amplifier";
+		enable-gpios = <&gpio1 RK_PA4 GPIO_ACTIVE_HIGH>;
+		sound-name-prefix = "Headphone Amp";
+	};
+
 	chosen {
 		stdout-path = "serial2:1500000n8";
 	};
@@ -327,12 +336,12 @@ &i2c3 {
 	es8388: audio-codec@11 {
 		compatible = "everest,es8388", "everest,es8328";
 		reg = <0x11>;
-		clocks = <&cru I2S1_8CH_MCLKOUT>;
+		clocks = <&cru I2S0_8CH_MCLKOUT>;
 		AVDD-supply = <&vcc_3v3_s0>;
 		DVDD-supply = <&vcc_1v8_s0>;
 		HPVDD-supply = <&vcc_3v3_s0>;
 		PVDD-supply = <&vcc_3v3_s0>;
-		assigned-clocks = <&cru I2S1_8CH_MCLKOUT>;
+		assigned-clocks = <&cru I2S0_8CH_MCLKOUT>;
 		assigned-clock-rates = <12288000>;
 		#sound-dai-cells = <0>;
 	};
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

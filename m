Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8BB1CED25F
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Oct 2024 03:15:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RkN0x+mAtUu/WgHElc7dKg5VprbMTXfMGrliSCQ0ym0=; b=AGcOTI+xKy6edQ
	MJiMrT0Pe1ytq4Wd/FsmE3iuTtM/nJR6QpdNtOxglg7hMRT2yYFlvcej1Rt4FWx/ssTQMv9G33RSs
	KrhXhS8bcxJ4CFyhw4k5/0Jeq7CINQDYudf4dSxGBwtuTHuxXWHcSkiP9+p96xePMZxjTnMPAYcsE
	JdQcBaC1ToDjQlZ5KC99GXu3YFtKHTnavSV6yWg0e5Zf6vKAGvmmz3K16/EVl/sj3Zdxcbga5qBdo
	Y4MzXtomKoBIfh7lcZbXn6NOtQALIiriTHqsJVXEkLBsDCvbwrAAIESe9HuI3eytBcr+iCWR685d/
	8sBIpZv20CuCfsIZf1ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sy0gw-00000004NlV-0njm;
	Tue, 08 Oct 2024 03:15:18 +0000
Received: from mail-oa1-x31.google.com ([2001:4860:4864:20::31])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sy0gt-00000004Nkt-25Ow
	for linux-rockchip@lists.infradead.org;
	Tue, 08 Oct 2024 03:15:16 +0000
Received: by mail-oa1-x31.google.com with SMTP id 586e51a60fabf-287dc099cf8so1341764fac.1
        for <linux-rockchip@lists.infradead.org>; Mon, 07 Oct 2024 20:15:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728357314; x=1728962114; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=KLrXhOgzjhjKAqxrCSrhAG+iJGKe+nOofbsxVYCyvqA=;
        b=WPGSUdKtay/K1x8j7GWqxjqY7kmFeU5qdCheTfaXP1a4NxrAH0VwMhH3+ADa2SPqfo
         eG00KRUViZ8IrGGI+MPwFrOsCsvUp/WuvK3ugnxkLgcrjtH2ad6C51MytXCL29gGtRGW
         8td7j9Z3lzBaZOOwHcm3lh9jyPd0PNlN3maTMaqJSOUIdHB0/+fktE7nGm6xEqwzwa/k
         RSxEmu/LCcw5jOxxV4XtQwbcSihmV+W28+4bQxVqo1Ayno0GWymkY3PKHkYEJYLrI4PJ
         Z4h+N0Efb/FxxnwpoS8oqcV1cPw5psFX+63+Alg+eBMZ63THKor5a+4Dz9Dnjt1jl4Rp
         8ltw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728357314; x=1728962114;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KLrXhOgzjhjKAqxrCSrhAG+iJGKe+nOofbsxVYCyvqA=;
        b=Ba6SGxkGM1NDpX6jncQfkOnYdPNTwcprAW2mG2ZXvNNg0ELNjHzhKGk8zph4XtC5xT
         a7qfHhEvEYThwDONBOTVQH94R9TisceeGTzPZ7FhDv3sRFQ3IrEECwOALIYc9rGNJ+CI
         Kk5D9KHdN4WDAbLXFW9NjfkkGjL3NMoFCWjRrui3tG1O9TUh97CNZAw4xK5ID5NVMzoO
         Cw/ByW+alDfb/u8en4WSQn9yarEUOX8GiMJfCPjitc5q8vtNTeWT5WcGT1b4nK5XYoW5
         m9GuqV3b+F6xTIVcyCW3c6T+Psb2vN24LL1Z7aE3MCZKIkwsOUfA3EhGb3dl6htcuncG
         x6vA==
X-Gm-Message-State: AOJu0Yx1V/BMXL40uyDND1FRnqJ0MwxUwxRB2SDYQjR1SU93YCHEtAbD
	i8bT/1JHtr+oAJwobWmVB/D2lDrFl+/HIVykVTfdYlf5uXF7WTRJ
X-Google-Smtp-Source: AGHT+IENDO5jHDHINQf88DRlOttqCjyGwzpY2d4CoUSj8rh01eo4JjrvamhxH5RB9pYDqYoU9RWl8g==
X-Received: by 2002:a05:687c:2bd7:b0:250:70bb:1a97 with SMTP id 586e51a60fabf-287c1e16723mr8347493fac.24.1728357313929;
        Mon, 07 Oct 2024 20:15:13 -0700 (PDT)
Received: from tower.cjhon.com ([2603:8081:ad40:11:26c9:beb2:5db7:e51e])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-287d7067515sm2632343fac.11.2024.10.07.20.15.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Oct 2024 20:15:12 -0700 (PDT)
From: Jimmy Hon <honyuenkwun@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	Jimmy Hon <honyuenkwun@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: analog audio on Orange Pi 5
Date: Mon,  7 Oct 2024 22:14:29 -0500
Message-ID: <20241008031429.2410-1-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.46.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241007_201515_564718_C297A41F 
X-CRM114-Status: UNSURE (   8.46  )
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

Analog audio using es8388 codec via the headset jack and onboard mic

Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
---
 .../boot/dts/rockchip/rk3588s-orangepi-5.dts  | 64 +++++++++++++++++++
 1 file changed, 64 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
index ef3a721d1fc7..c2d1a2f5e5af 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
@@ -36,6 +36,39 @@ button-recovery {
 		};
 	};
 
+	analog-sound {
+		compatible = "simple-audio-card";
+		pinctrl-names = "default";
+		pinctrl-0 = <&hp_detect>;
+		simple-audio-card,name = "rockchip,es8388";
+		simple-audio-card,bitclock-master = <&masterdai>;
+		simple-audio-card,format = "i2s";
+		simple-audio-card,frame-master = <&masterdai>;
+		simple-audio-card,hp-det-gpios = <&gpio1 RK_PD5 GPIO_ACTIVE_LOW>;
+		simple-audio-card,mclk-fs = <256>;
+		simple-audio-card,pin-switches = "Headphones";
+		simple-audio-card,routing =
+			"Headphones", "LOUT1",
+			"Headphones", "ROUT1",
+			"LINPUT1", "Microphone Jack",
+			"RINPUT1", "Microphone Jack",
+			"LINPUT2", "Onboard Microphone",
+			"RINPUT2", "Onboard Microphone";
+		simple-audio-card,widgets =
+			"Microphone", "Microphone Jack",
+			"Microphone", "Onboard Microphone",
+			"Headphone", "Headphones";
+
+		simple-audio-card,cpu {
+			sound-dai = <&i2s1_8ch>;
+		};
+
+		masterdai: simple-audio-card,codec {
+			sound-dai = <&es8388>;
+			system-clock-frequency = <12288000>;
+		};
+	};
+
 	leds {
 		compatible = "gpio-leds";
 		pinctrl-names = "default";
@@ -218,6 +251,19 @@ &i2c6 {
 	pinctrl-0 = <&i2c6m3_xfer>;
 	status = "okay";
 
+	es8388: audio-codec@10 {
+		compatible = "everest,es8388";
+		reg = <0x10>;
+		clocks = <&cru I2S1_8CH_MCLKOUT>;
+		AVDD-supply = <&vcc_3v3_s0>;
+		DVDD-supply = <&vcc_1v8_s0>;
+		HPVDD-supply = <&vcc_3v3_s0>;
+		PVDD-supply = <&vcc_3v3_s0>;
+		assigned-clocks = <&cru I2S1_8CH_MCLKOUT>;
+		assigned-clock-rates = <12288000>;
+		#sound-dai-cells = <0>;
+	};
+
 	usbc0: usb-typec@22 {
 		compatible = "fcs,fusb302";
 		reg = <0x22>;
@@ -281,6 +327,18 @@ hym8563: rtc@51 {
 	};
 };
 
+&i2s1_8ch {
+	rockchip,i2s-tx-route = <3 2 1 0>;
+	rockchip,i2s-rx-route = <1 3 2 0>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2s1m0_sclk
+	             &i2s1m0_mclk
+	             &i2s1m0_lrck
+	             &i2s1m0_sdi1
+	             &i2s1m0_sdo3>;
+	status = "okay";
+};
+
 &mdio1 {
 	rgmii_phy1: ethernet-phy@1 {
 		compatible = "ethernet-phy-ieee802.3-c22";
@@ -314,6 +372,12 @@ hym8563_int: hym8563-int {
 		};
 	};
 
+	sound {
+		hp_detect: hp-detect {
+			rockchip,pins = <1 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	usb-typec {
 		usbc0_int: usbc0-int {
 			rockchip,pins = <0 RK_PD3 RK_FUNC_GPIO &pcfg_pull_up>;
-- 
2.46.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

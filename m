Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E899ECAAD3
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Sep 2022 19:52:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KPWL2CoDT3pAU7llgLwTkaRRbdwoD+njyrOEOCHZnrg=; b=2YiQLulMCCk7Pc
	34HkWZWbink4QXKVR4NomoRehw+641ZhaGkqWa+SLXpMhCpaSXdObo6DCBCkHD807RDAltwurXbgi
	zZFCDjyqm7+CddNPMV5s1Gm0i6WORbn2StrJj6/vCMchEcAbiqGgwcjlC3+t7rUJpBKW4BectOOBa
	sq0EEr8vJdluxBIJfnRB2eGsvqmyv2cYE1XCV9pNKt8ttCg5pf/5ofSSxFWWzlxn4Dcn0v96JE9yt
	3GqnBP8tV+3MJBOng0T5r0mwvtG07YELmgqhQIwM3WJQKSOli16V9w2EKtQ6CMSVCzVKnjFcuFIq7
	b/EaxRcllgxyAWKJGFvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWk34-002Cbb-DK; Fri, 09 Sep 2022 19:52:22 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWk2l-002CNd-BS; Fri, 09 Sep 2022 19:52:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=3Bqx2anVFu2ttnX5WJFb+s4q72mFO3Wf35HaYAmUeEc=; b=dtiVeWqBQlxl+g5Co3RBcqNSeP
	aGxQtJM8mdMfn4V4FIGMixOXTMqLAcm9Pr8bThN1x9bwqbbBt1KI2Civu6dHwfFjZrcviOwEHVWcD
	TasXBmoZaW0E9FnRMCeCiWFpr8f7QBnJu3/r+/PLnz0lyavocTzhVoTEH8PAFJhVlrlIgO3u2JDVy
	ep6g8ThLHsz/dsTvsIInSqrekLQUN+Nni5GqlIx+h1A6nmqP1v+LMR+ILqbq/peBwqlN8brGGtg+9
	f+jTHFJ27dgOu1mJ5GpC3+DOKrv0v/qdLo6KHsHQJcfPX8DrdlqToeESCrzqg2dLFSVOFXDu/y+6i
	vhQU6TVQ==;
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWk2f-00DWYO-4H; Fri, 09 Sep 2022 19:52:03 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 289Joxek025079;
	Sat, 10 Sep 2022 04:51:00 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 3/6] arm64: dts: rockchip: rk3399-rock-4c-plus: sort nodes/properties
Date: Fri,  9 Sep 2022 19:50:03 +0000
Message-Id: <20220909195006.127957-3-naoki@radxa.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220909195006.127957-1-naoki@radxa.com>
References: <20220909195006.127957-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_205157_808817_554A3659 
X-CRM114-Status: UNSURE (   7.23  )
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

sort nodes/properties alphabetically

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 .../boot/dts/rockchip/rk3399-rock-4c-plus.dts | 48 +++++++++----------
 1 file changed, 24 insertions(+), 24 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
index c88a7512e296..fdee9d7b2372 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
@@ -23,15 +23,6 @@ chosen {
 		stdout-path = "serial2:1500000n8";
 	};
 
-	sdio_pwrseq: sdio-pwrseq {
-		compatible = "mmc-pwrseq-simple";
-		clocks = <&rk809 1>;
-		clock-names = "ext_clock";
-		pinctrl-names = "default";
-		pinctrl-0 = <&wifi_enable_h>;
-		reset-gpios = <&gpio0 RK_PB2 GPIO_ACTIVE_LOW>;
-	};
-
 	clkin_gmac: external-gmac-clock {
 		compatible = "fixed-clock";
 		clock-frequency = <125000000>;
@@ -61,6 +52,15 @@ led-1 {
 		};
 	};
 
+	sdio_pwrseq: sdio-pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		clocks = <&rk809 1>;
+		clock-names = "ext_clock";
+		pinctrl-names = "default";
+		pinctrl-0 = <&wifi_enable_h>;
+		reset-gpios = <&gpio0 RK_PB2 GPIO_ACTIVE_LOW>;
+	};
+
 	vcc_3v3: vcc-3v3-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc_3v3";
@@ -71,13 +71,14 @@ vcc_3v3: vcc-3v3-regulator {
 		vin-supply = <&vcc3v3_sys>;
 	};
 
-	vcc5v0_sys: vcc5v0-sys-regulator {
+	vcc3v3_phy1: vcc3v3-phy1-regulator {
 		compatible = "regulator-fixed";
-		regulator-name = "vcc5v0_sys";
+		regulator-name = "vcc3v3_phy1";
 		regulator-always-on;
 		regulator-boot-on;
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc_3v3>;
 	};
 
 	vcc5v0_host1: vcc5v0-host-regulator {
@@ -92,6 +93,15 @@ vcc5v0_host1: vcc5v0-host-regulator {
 		vin-supply = <&vcc5v0_host0_s0>;
 	};
 
+	vcc5v0_sys: vcc5v0-sys-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+	};
+
 	vcc5v0_typec: vcc5v0-typec-regulator {
 		compatible = "regulator-fixed";
 		enable-active-high;
@@ -104,16 +114,6 @@ vcc5v0_typec: vcc5v0-typec-regulator {
 		vin-supply = <&vcc5v0_sys>;
 	};
 
-	vcc3v3_phy1: vcc3v3-phy1-regulator {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc3v3_phy1";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		vin-supply = <&vcc_3v3>;
-	};
-
 	vdd_log: vdd-log-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "vdd_log";
@@ -447,8 +447,8 @@ &i2s2 {
 };
 
 &io_domains {
-	bt656-supply = <&vcc_3v0_s0>;
 	audio-supply = <&vcc_1v8_s0>;
+	bt656-supply = <&vcc_3v0_s0>;
 	gpio1830-supply = <&vcc_3v0_s0>;
 	sdmmc-supply = <&vcc_sdio_s0>;
 	status = "okay";
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

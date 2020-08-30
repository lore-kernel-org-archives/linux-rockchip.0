Return-Path: <SRS0=N1pG=CI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57330C433E2
	for <linux-rockchip@archiver.kernel.org>; Sun, 30 Aug 2020 19:09:30 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 24F60206F0
	for <linux-rockchip@archiver.kernel.org>; Sun, 30 Aug 2020 19:09:30 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="0hvdHbfO"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 24F60206F0
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=adrianschmutzler.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe
	:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=U7DTqtX0ODKvNRSSv57oOGJX57s2lfHXskdOL2ZuUJI=; b=0hvdHbfOUnngPOpzqPUtcfkRvH
	K6B7cTvsFrAflUVpvmVURK1CLZ0todxIsQLHfZBRhBMyUwIXhXFNHkrcCwMF3MzUsDruDLdjXcPRf
	9Kn4E5yfSh6b4uyaQUsBL77+FYnNr+S9CQf3jt/Eep7sLK2ZYtCrurIkpXc2RyaWM5kCGM7RrC9wu
	iDX253rqDMREOsMVyiSMf6PDS9Y5MynRixN51dhdk0iMV5wNiaRhIk0Eujll0YoF4eR89NE8JXDKc
	KWvHnfpWpjRAvJYPvQONtB+/qWgHQ99iDla/xvYoK07qJ+3Q+PstP1vMK3bUbDOWz4kFR59ATJ3t1
	Pf+yYV8A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kCShg-0003gq-Rw; Sun, 30 Aug 2020 19:09:25 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kCShc-0003fv-Qt; Sun, 30 Aug 2020 19:09:22 +0000
Received: from buildfff.adridolf.com ([188.192.134.246]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1N2m7O-1kbW2X31fI-0134bK; Sun, 30 Aug 2020 21:09:13 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org
Subject: [PATCH] ARM: dts: rockchip: replace status value "ok" by "okay"
Date: Sun, 30 Aug 2020 21:08:20 +0200
Message-Id: <20200830190820.20583-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:VMILs0fc/lgB4bgokLKf5qhOXV1lUMnyG4d1PXDT2qD2vO+JfPX
 Pshp2VwJE/pqLFM6IMjBUfLqt5evqw5PIpnfzcs+VbwU+ew3h/UdZyF4glc3TFTu3KGOasu
 kT8mHnV4h+MIt8zMxyvCHDriJd8sc0+o+XBXgQIY7wSMzfbmFToxCqQGebRCMhRpc7BXYeZ
 JksywrS9gs8wt9Gu+TH0w==
X-UI-Out-Filterresults: notjunk:1;V03:K0:XNncUYEP9JI=:SdTCP6QJu3AZtSp01fdciX
 aK4wQDrsrOGzJGm3uDKvJrF8/Mf1/Imo9iCXKWY/S4d6BcBdt4brpWjSGcicpy7DscrifZbpV
 c2f1goQjVcp7Z2h6CSm2ZMG785pSEHzEJpkufg3EVrQRGZ8fG3+zbxzsvUGX5qe7ZAMJxR/5q
 4mkbHk/uogmGGdka/yb6xFqfOMa0Zay8FfCeFVkH5/SoiWkDSOs49BffGIxTC52in1Cw61Q4F
 14VLFj/4lPr41tLjRlClrz3ewJho4IPJEqo1dh90E7V0d3sUeSytSIjcPm8M/9ugP6dKZqTo8
 lcPdUaG9cbeVzGpwe+Roh36uL1wG1ZAQ7aeS4Lwjhxbi5BDrj/IkScyxE6ekuPOw+0m6ziRRT
 NOg8M4NN4K5H622AReJBH86KIZqJOrVRPiqo6IRc0Ab6nYnWajdRFo75A4bH7uohlYq15jndb
 EP3Bm0G5sIYTz3ik5tyMKIjlj5CDQhN/oub+QmakmVlMFX1NHHMOSzKqKL6r/3LmrEJISUJrS
 jKne5qUQYzB9/Q+hQH9VH6lShMiHrzX0kC4mmEimzI26ZaJAATuAHwnAMk5HSv5mbMxa4Nxlc
 ekw1f9PYhJqO2nMKCQ+rTKp+YfYKGzPcYKVIcAdixxEyscFR8KUBCPbsU+g//vMIwFuOqtLzv
 7aN03AU5XFBUymTXctr/sc+OlXhQOtD6yb8Kfq5yvFUQHL+FS8lN29FXXjA3eBk/mSubA1f9y
 8e+knfnpg70ar6jaBs+JKRaPYr/ExmJFW03qmkkjLxGYGQ3kG14aO6cmGnL5uAzws+bDyAeNH
 418S9u6gB3fxp18ePqLnphebARxD6eoAxd+5NTgqhNx0MaLoXWcxBKMOty05nMXW++9tt9DFU
 j1NNFC/xTda+LtZZZwhw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200830_150921_085259_6D9DE056 
X-CRM114-Status: GOOD (  12.51  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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

While the DT parser recognizes "ok" as a valid value for the
"status" property, it is actually mentioned nowhere. Use the
proper value "okay" instead, as done in the majority of files
already.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 arch/arm/boot/dts/rk3288-evb.dtsi                 | 2 +-
 arch/arm/boot/dts/rk3288-firefly-reload-core.dtsi | 2 +-
 arch/arm/boot/dts/rk3288-firefly.dtsi             | 2 +-
 arch/arm/boot/dts/rk3288-miqi.dts                 | 2 +-
 arch/arm/boot/dts/rk3288-popmetal.dts             | 2 +-
 arch/arm/boot/dts/rk3288-r89.dts                  | 2 +-
 arch/arm/boot/dts/rk3288-rock2-square.dts         | 2 +-
 arch/arm/boot/dts/rk3288-tinker.dtsi              | 2 +-
 8 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boot/dts/rk3288-evb.dtsi b/arch/arm/boot/dts/rk3288-evb.dtsi
index 018802df4c0e..c4ca73b40d4a 100644
--- a/arch/arm/boot/dts/rk3288-evb.dtsi
+++ b/arch/arm/boot/dts/rk3288-evb.dtsi
@@ -247,7 +247,7 @@
 	pinctrl-0 = <&rgmii_pins>;
 	tx_delay = <0x30>;
 	rx_delay = <0x10>;
-	status = "ok";
+	status = "okay";
 };
 
 &gpu {
diff --git a/arch/arm/boot/dts/rk3288-firefly-reload-core.dtsi b/arch/arm/boot/dts/rk3288-firefly-reload-core.dtsi
index 61435d8ee37b..36efa36b7190 100644
--- a/arch/arm/boot/dts/rk3288-firefly-reload-core.dtsi
+++ b/arch/arm/boot/dts/rk3288-firefly-reload-core.dtsi
@@ -61,7 +61,7 @@
 	snps,reset-gpio = <&gpio4 RK_PB0 GPIO_ACTIVE_LOW>;
 	tx_delay = <0x30>;
 	rx_delay = <0x10>;
-	status = "ok";
+	status = "okay";
 };
 
 &i2c0 {
diff --git a/arch/arm/boot/dts/rk3288-firefly.dtsi b/arch/arm/boot/dts/rk3288-firefly.dtsi
index e5c4fd4ea67e..7fb582302b32 100644
--- a/arch/arm/boot/dts/rk3288-firefly.dtsi
+++ b/arch/arm/boot/dts/rk3288-firefly.dtsi
@@ -191,7 +191,7 @@
 	snps,reset-gpio = <&gpio4 RK_PB0 GPIO_ACTIVE_LOW>;
 	tx_delay = <0x30>;
 	rx_delay = <0x10>;
-	status = "ok";
+	status = "okay";
 };
 
 &gpu {
diff --git a/arch/arm/boot/dts/rk3288-miqi.dts b/arch/arm/boot/dts/rk3288-miqi.dts
index 213c9eb84f76..e3d13d66f405 100644
--- a/arch/arm/boot/dts/rk3288-miqi.dts
+++ b/arch/arm/boot/dts/rk3288-miqi.dts
@@ -108,7 +108,7 @@
 	snps,reset-gpio = <&gpio4 RK_PB0 GPIO_ACTIVE_LOW>;
 	tx_delay = <0x30>;
 	rx_delay = <0x10>;
-	status = "ok";
+	status = "okay";
 };
 
 &hdmi {
diff --git a/arch/arm/boot/dts/rk3288-popmetal.dts b/arch/arm/boot/dts/rk3288-popmetal.dts
index 6a51940398b5..e738eb732800 100644
--- a/arch/arm/boot/dts/rk3288-popmetal.dts
+++ b/arch/arm/boot/dts/rk3288-popmetal.dts
@@ -149,7 +149,7 @@
 	pinctrl-0 = <&rgmii_pins>;
 	tx_delay = <0x30>;
 	rx_delay = <0x10>;
-	status = "ok";
+	status = "okay";
 };
 
 &hdmi {
diff --git a/arch/arm/boot/dts/rk3288-r89.dts b/arch/arm/boot/dts/rk3288-r89.dts
index a258c7ae5329..527c529c8934 100644
--- a/arch/arm/boot/dts/rk3288-r89.dts
+++ b/arch/arm/boot/dts/rk3288-r89.dts
@@ -107,7 +107,7 @@
 	pinctrl-0 = <&rgmii_pins>;
 	tx_delay = <0x30>;
 	rx_delay = <0x10>;
-	status = "ok";
+	status = "okay";
 };
 
 &hdmi {
diff --git a/arch/arm/boot/dts/rk3288-rock2-square.dts b/arch/arm/boot/dts/rk3288-rock2-square.dts
index 3cca4d0f9b09..c4d1d142d8c6 100644
--- a/arch/arm/boot/dts/rk3288-rock2-square.dts
+++ b/arch/arm/boot/dts/rk3288-rock2-square.dts
@@ -156,7 +156,7 @@
 };
 
 &gmac {
-	status = "ok";
+	status = "okay";
 };
 
 &hdmi {
diff --git a/arch/arm/boot/dts/rk3288-tinker.dtsi b/arch/arm/boot/dts/rk3288-tinker.dtsi
index 90e9be443fe6..9c1e38c54eae 100644
--- a/arch/arm/boot/dts/rk3288-tinker.dtsi
+++ b/arch/arm/boot/dts/rk3288-tinker.dtsi
@@ -137,7 +137,7 @@
 	snps,reset-delays-us = <0 10000 1000000>;
 	tx_delay = <0x30>;
 	rx_delay = <0x10>;
-	status = "ok";
+	status = "okay";
 };
 
 &gpu {
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

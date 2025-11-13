Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E35BCCD6E4E
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Nov 2025 12:45:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0/IQBxOvn9Ro5W38k3yXSK/KPKd4O0c8bvb2yAefflM=; b=LHi+4REWoKV+xC
	xkVKd52M9IxBnHewvJx+fjY400hnaEPhZcyGtZyhrDAPoymGIENEt6xIlAGS8zzlwciX5qNzRGzyf
	ISqfoYQuYZEaWWagJFePtmH92ZYc3uX/4TIZ5itdWgOVl3ZTW69X/l5TYShBvpaiOQwjqMZb8zdgC
	vJDcBVyPgwZ7n7E09V2URnFR6gXud10dWWDV4GiPoXOPoDJzEsERYC77LRQFEXU24HPM8YNOePykJ
	t3Eso/h6SrnrRKDLN5AQoxhf0FG1jtpcSBK64e3RIRFNFSsiCgbiQJAu4QV/07DIeiUWvHqfy7o9h
	zBNIRrWtPznhXbNt6/DA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJWhW-0000000AUZ2-2fft;
	Thu, 13 Nov 2025 12:45:22 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJWhR-0000000AUYD-31PN
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Nov 2025 12:45:18 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 5ADCgQXw030553;
	Thu, 13 Nov 2025 21:42:33 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, pgwipeout@gmail.com, didi.debian@cknow.org,
        jonas@kwiboo.se, ziyao@disroot.org, amadeus@jmu.edu.cn,
        nicolas.frattaroli@collabora.com, pbrobinson@gmail.com,
        wens@kernel.org, detlev.casanova@collabora.com, stephen@radxa.com,
        sebastian.reichel@collabora.com, liujianfeng1994@gmail.com,
        andy.yan@rock-chips.com, dmitry.baryshkov@oss.qualcomm.com,
        kuninori.morimoto.gx@renesas.com, damon.ding@rock-chips.com,
        kylepzak@projectinitiative.io, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v3 3/3] arm64: dts: rockchip: Remove default-state = "off" from LEDs for Radxa boards
Date: Thu, 13 Nov 2025 12:42:22 +0000
Message-ID: <20251113124222.4691-4-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251113124222.4691-1-naoki@radxa.com>
References: <20251113124222.4691-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251113_044517_977330_3F5DA1F0 
X-CRM114-Status: UNSURE (   8.62  )
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

Currently, on Radxa boards, the power LED is turned on immediately
after power-up, independent of software control. The heartbeat LED and
other available LEDs are subsequently turned on by the initial
software, such as U-Boot, to indicate software is running.

However, the device tree description for this behavior is inconsistent
and fragmented, with definitions split between the main Linux DTS
files and separate U-Boot files (u-boot/arch/arm/dts/*-u-boot.dtsi).

This patch addresses inconsistency by removing redundant default-state
= "off" definitions, as this is already the default configuration.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts | 2 --
 arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts | 2 --
 2 files changed, 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts b/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts
index b324527561558..79d316a1d8495 100644
--- a/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts
@@ -62,7 +62,6 @@ leds {
 
 		led-lan {
 			color = <LED_COLOR_ID_GREEN>;
-			default-state = "off";
 			function = LED_FUNCTION_LAN;
 			gpios = <&gpio4 RK_PB5 GPIO_ACTIVE_HIGH>;
 			linux,default-trigger = "netdev";
@@ -78,7 +77,6 @@ led-sys {
 
 		led-wan {
 			color = <LED_COLOR_ID_GREEN>;
-			default-state = "off";
 			function = LED_FUNCTION_WAN;
 			gpios = <&gpio4 RK_PC0 GPIO_ACTIVE_HIGH>;
 			linux,default-trigger = "netdev";
diff --git a/arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts b/arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts
index 854c118418eb8..f737769d4a007 100644
--- a/arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts
@@ -71,7 +71,6 @@ leds-1 {
 
 		led-1 {
 			color = <LED_COLOR_ID_GREEN>;
-			default-state = "off";
 			function = LED_FUNCTION_LAN;
 			linux,default-trigger = "netdev";
 			pwms = <&pwm14 0 1000000 PWM_POLARITY_INVERTED>;
@@ -80,7 +79,6 @@ led-1 {
 
 		led-2 {
 			color = <LED_COLOR_ID_GREEN>;
-			default-state = "off";
 			function = LED_FUNCTION_WAN;
 			linux,default-trigger = "netdev";
 			pwms = <&pwm11 0 1000000 PWM_POLARITY_INVERTED>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

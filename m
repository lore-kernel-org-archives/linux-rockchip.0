Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F291D41C16
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Nov 2024 08:13:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=V/2V4PbbfY3WqegkSyzjhHaAmZe0i3SqxhnBqHSNh6E=; b=VScR7Q5yfLOzyG
	/esjTrN1VJNHyaRdByJX+b/abh33pyoJAcnf6I22An5d2QKJIQ/EDcxiyiDwhUX5Dc5vBMYngLJP4
	c/1V7TERZkkzBrhMereNm3Aori/zG6QzwViUIc0Mvc8W2p2ejIsFSPgR7ekjcT+bkKdNIbswyDBPl
	JbSKOyiKzjCdT/ruW3Cc1sTPq4eal7CxYtG7gmDWOXmOPy4WqwcSzIROg0F3Bu6E7MZeYtxSzosUj
	pEQgQuT6TgC00nv92799g51SdH/0tHQ+AbaaejH4A6ZAMAw3IuZdSW8avr+zyW8pHrhno1keWrZRG
	1VK5ZsQG9Os+xx+4/rCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tB8VW-000000064Ou-3sA9;
	Wed, 13 Nov 2024 08:13:46 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tB8V4-000000064Ix-3zv4
	for linux-rockchip@lists.infradead.org;
	Wed, 13 Nov 2024 08:13:22 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4AD8D5p2026223;
	Wed, 13 Nov 2024 17:13:05 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Subject: [PATCH 1/8] arm64: dts: rockchip: fix eeprom for Radxa ROCK 5A
Date: Wed, 13 Nov 2024 08:12:51 +0000
Message-ID: <20241113081258.2745-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241113_001319_283593_9CE0CAF5 
X-CRM114-Status: UNSURE (   8.37  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, sebastian.reichel@collabora.com, linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>, jbx6244@gmail.com, krzk+dt@kernel.org, dsimic@manjaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

- move eeprom from i2c2 to i2c0 to match with schematic[1]
- add vcc_3v3_pmu regulator and use it as vcc-supply for eeprom

[1] https://dl.radxa.com/rock5/5a/docs/hw/radxa_rock5a_V1.1_sch.pdf

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 .../boot/dts/rockchip/rk3588s-rock-5a.dts     | 23 ++++++++++++++-----
 1 file changed, 17 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index 70a43432bdc5..56c818c45dc0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -113,6 +113,16 @@ vcc5v0_sys: regulator-vcc5v0-sys {
 		vin-supply = <&vcc12v_dcin>;
 	};
 
+	vcc_3v3_pmu: regulator-vcc-3v3-pmu {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_3v3_pmu";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc_3v3_s3>;
+	};
+
 	vcc_5v0: regulator-vcc-5v0 {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc_5v0";
@@ -221,6 +231,13 @@ regulator-state-mem {
 			regulator-off-in-suspend;
 		};
 	};
+
+	eeprom: eeprom@50 {
+		compatible = "belling,bl24c16a", "atmel,24c16";
+		reg = <0x50>;
+		pagesize = <16>;
+		vcc-supply = <&vcc_3v3_pmu>;
+	};
 };
 
 &i2c2 {
@@ -242,12 +259,6 @@ regulator-state-mem {
 			regulator-off-in-suspend;
 		};
 	};
-
-	eeprom: eeprom@50 {
-		compatible = "belling,bl24c16a", "atmel,24c16";
-		reg = <0x50>;
-		pagesize = <16>;
-	};
 };
 
 &i2c3 {
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

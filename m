Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 627F3C04A94
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Jul 2023 14:52:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-ID:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=i7YdBJ7zONr2zNUVgvoAbX50sYVLfN+MX1ONJdYAHKs=; b=GcrDlaMtVI1wJe
	oievrdLx8F7MWrdNQsUNupaGhXMKn345Gzb9Rf4b9PBGR6N0dJLLsEad6MFumhBGzG7+XjIF1MaZO
	8N+veEqal7zeyjXz7ihn+rtFQeruxhoCV55YVhuvf3MK+UrmkVi7/9IoIZ/zaCkQt98fEIuFvZsFK
	R3UFB01BjViUqkTf48/bWhPd2D92tZgIRI87njGuPP1REf7DqDj/mdo62V/l+R/ht7/KMa3NaF5Lb
	HI3ci86xK+fa4+UucjtBIRET+WF0sNrvGAE1CRtKZAu2FOno70YraUVfJ9Y1DmSCYhvAMrxd32h/U
	YCwQaObEDYSZirW14upQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qNwvD-004e2W-35;
	Mon, 24 Jul 2023 14:52:27 +0000
Received: from s.wrqvtzvf.outbound-mail.sendgrid.net ([149.72.126.143])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qNwvA-004e0z-2i
	for linux-rockchip@lists.infradead.org;
	Mon, 24 Jul 2023 14:52:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
	h=from:subject:mime-version:to:cc:content-transfer-encoding:
	content-type:cc:content-type:from:subject:to;
	s=s1; bh=WcPMS8VJ8wZGKcidpFy/HqVz+nWN87bUiNsDE1gwuRs=;
	b=jmjEZFV8G9PUpRXSheQcL4plISa3RZzSmTOYznoXHVGXvcMsEoC4Nop7o+OWT+M1NHHG
	qz3Wp+H26cYeIadd/VX8l+mX2z2ABk7ZLqlmsu7fZlhlc/Mgx26C4piKBhgFYm5+Z5d/ds
	3NLFVWffSas7TqKKdLDV5Q0IbYYpNXfwPMXHbqPGdkN7JLgPoW/6w5LZg0L1ptxRi8CAga
	S8oNOhXMRdcBjGocoAQTDja6qLU3zXYsyisBt0Mhf0usuM879s6tu/aGRk+isP8frKObvj
	obIDbfudqTnJGJPeCkW0mGL/FsjjH1xi+qfem5jLW6AMqjfDZOOk+DBwWV+ulonw==
Received: by filterdrecv-8684c58db7-nfltn with SMTP id filterdrecv-8684c58db7-nfltn-1-64BE901F-40
        2023-07-24 14:52:16.172047943 +0000 UTC m=+6448424.450220586
Received: from bionic.localdomain (unknown)
	by geopod-ismtpd-8 (SG)
	with ESMTP
	id MTXJzVVRT-imukorVRJulQ
	Mon, 24 Jul 2023 14:52:15.522 +0000 (UTC)
From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH] arm64: dts: rockchip: Fix regulators and enable SATA on Radxa
 E25
Date: Mon, 24 Jul 2023 14:52:16 +0000 (UTC)
Message-ID: <20230724145213.3833099-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-SG-EID: =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0hxdxYYdTXqyX82wfI?=
 =?us-ascii?Q?Ra=2FGfuQUGNsOvlZGB3QHxCYxiOjHZP07t=2FuVIOp?=
 =?us-ascii?Q?Tg7CNYgQHfx=2FyVh5KOiYjmJ=2Fl+SMjKQqjv2RWd7?=
 =?us-ascii?Q?6OwJ=2FtwH2iTqqQh0+wdlF=2Fsxda2NTcCFA2=2Fq4rp?=
 =?us-ascii?Q?A1NJeQ7StP9R3Euczt8yX45MYpJrmdacwfstaT=2F?=
 =?us-ascii?Q?02dt0HchrYicf0pKZ6p2A=3D=3D?=
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
	<conor+dt@kernel.org>, Chukun Pan <amadeus@jmu.edu.cn>
Cc: FUKAUMI Naoki <naoki@radxa.com>, Jonas Karlman <jonas@kwiboo.se>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-Entity-ID: P7KYpSJvGCELWjBME/J5tg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230724_075225_303350_6D7D7783 
X-CRM114-Status: GOOD (  13.16  )
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

Despite its name, the regulator vcc3v3_pcie30x1 has nothing to do with
pcie30x1. Instead, it supply power to VBAT1-5 on the M.2 KEY B port as
seen on page 8 of the schematic [1].

pcie30x1 is used for the mini PCIe slot, and as seen on page 9 the
vcc3v3_minipcie regulator is instead related to pcie30x1.

The M.2 KEY B port can be used for WWAN USB2 modules or SATA drives.

Use correct regulator vcc3v3_minipcie for pcie30x1 and enable sata1 node
to fix use of SATA drives on the M.2 slot.

[1] https://dl.radxa.com/cm3p/e25/radxa-e25-v1.4-sch.pdf

Fixes: 2bf2f4d9f673 ("arm64: dts: rockchip: Add Radxa CM3I E25")
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 .../boot/dts/rockchip/rk3568-radxa-e25.dts    | 24 ++++++++++++-------
 1 file changed, 16 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
index 63c4bd873188..72ad74c38a2b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
@@ -47,6 +47,9 @@ vbus_typec: vbus-typec-regulator {
 		vin-supply = <&vcc5v0_sys>;
 	};
 
+	/* actually fed by vcc5v0_sys, dependent
+	 * on pi6c clock generator
+	 */
 	vcc3v3_minipcie: vcc3v3-minipcie-regulator {
 		compatible = "regulator-fixed";
 		enable-active-high;
@@ -54,9 +57,9 @@ vcc3v3_minipcie: vcc3v3-minipcie-regulator {
 		pinctrl-names = "default";
 		pinctrl-0 = <&minipcie_enable_h>;
 		regulator-name = "vcc3v3_minipcie";
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
-		vin-supply = <&vcc5v0_sys>;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc3v3_pi6c_05>;
 	};
 
 	vcc3v3_ngff: vcc3v3-ngff-regulator {
@@ -71,9 +74,6 @@ vcc3v3_ngff: vcc3v3-ngff-regulator {
 		vin-supply = <&vcc5v0_sys>;
 	};
 
-	/* actually fed by vcc5v0_sys, dependent
-	 * on pi6c clock generator
-	 */
 	vcc3v3_pcie30x1: vcc3v3-pcie30x1-regulator {
 		compatible = "regulator-fixed";
 		enable-active-high;
@@ -83,7 +83,7 @@ vcc3v3_pcie30x1: vcc3v3-pcie30x1-regulator {
 		regulator-name = "vcc3v3_pcie30x1";
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
-		vin-supply = <&vcc3v3_pi6c_05>;
+		vin-supply = <&vcc5v0_sys>;
 	};
 
 	vcc3v3_pi6c_05: vcc3v3-pi6c-05-regulator {
@@ -99,6 +99,10 @@ vcc3v3_pi6c_05: vcc3v3-pi6c-05-regulator {
 	};
 };
 
+&combphy1 {
+	phy-supply = <&vcc3v3_pcie30x1>;
+};
+
 &pcie2x1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pcie20_reset_h>;
@@ -117,7 +121,7 @@ &pcie3x1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pcie30x1m0_pins>;
 	reset-gpios = <&gpio0 RK_PC3 GPIO_ACTIVE_HIGH>;
-	vpcie3v3-supply = <&vcc3v3_pcie30x1>;
+	vpcie3v3-supply = <&vcc3v3_minipcie>;
 	status = "okay";
 };
 
@@ -178,6 +182,10 @@ &pwm12 {
 	status = "okay";
 };
 
+&sata1 {
+	status = "okay";
+};
+
 &sdmmc0 {
 	bus-width = <4>;
 	cap-sd-highspeed;
-- 
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

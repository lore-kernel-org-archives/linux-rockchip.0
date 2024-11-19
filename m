Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 525AED6C2AF
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Nov 2024 23:10:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=o4/jLwnkz7eI1jD1PT31u4xE6MRvI2CMYSoAyUhxEFI=; b=B5sjoNxAKsy41/
	1r+BjsXjK8QRGShFqJlQxxPzMqfBN9fcUeGom/tem1cWa+Be/lmR3dzYf1eLJyzUZWm77xrKnMN9I
	acvhfxc/K20p7kLI4coj1gZBN2/wbYFihtwhdW7TirZU7arnFFG+lMdJfDPwZ5YWkTIkLH54myOYF
	BRJ6whVPAMvbenmu/osdC7T1g/sZwoMZGt3gNn2/eYWimvaGRJBwThIEBn+cjhxQ0p3vt9a82c5QK
	NhlhlWnjhcP0w+FC7cci70KV5vg6X8DEk1cTG0G490Fy6Zg4kfvF0VmJ7aY6VbVEFDibHyE8ycfla
	zMyICrl84ONn5u6LZXcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tDXMF-0000000Dwtf-0L3F;
	Tue, 19 Nov 2024 23:10:07 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tDXLJ-0000000Dwmn-2Kt0
	for linux-rockchip@lists.infradead.org;
	Tue, 19 Nov 2024 23:09:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: Message-ID: Date: Subject: Cc:
 To: From; q=dns/txt; s=fe-e1b5cab7be; t=1732057730;
 bh=3YnguvlMq3yVXKBatvax4toDXEpAfggthYQx8MYd0TA=;
 b=N2psSRQmGtYBy2RiSo7IGz3YFIFGkqt/yeyHRX0+8OQHO+m7Pygf7TqAco38Xw3DAqBuHTY8t
 NykojJBzYuzQALGDnPlubxY4KMAFRoDwS7S5xY2Pa6Om4OTc8Qr44fFHaKrR9pAYGFO+nMZ3aX7
 ghlumzh6iBoltNedIuBFJ682XgZd2LDaHpTY06Db0NSR9V+eNIY+bG8DcbTqD/CeHbLE/1eoQUi
 M6pcA7Zmlupm2p4vM3RCvAcf7vUqCCBcZ2rH6bt9M1oo9VXKdlA7d2muPJXeOLVDnoAq6gidlBx
 gQMyIQ5Tp6F6HJ+X6/CnbztViao1hZhjZ/zE6ezFVfew==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonas Karlman <jonas@kwiboo.se>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: rk3308-rock-s0: Fix sdmmc access on v1.1 boards
Date: Tue, 19 Nov 2024 23:08:36 +0000
Message-ID: <20241119230838.4137130-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.47.0
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 673d1a7f0a51d1c96019a6b0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241119_150909_624275_B99A7912 
X-CRM114-Status: GOOD (  10.42  )
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

BootROM leave GPIO4_D6 configured as SDMMC_PWREN function and DW MCI
driver set PRWEN high on MMC_POWER_UP and low on MMC_POWER_OFF.
Similarly U-Boot also set PRWEN high before accessing mmc.

However, HW revision prior to v1.2 must pull GPIO4_D6 low to access
sdmmc. For HW revision v1.2 the state of GPIO4_D6 has no impact.

Model an always-on active low fixed regulator using GPIO4_D6 to fix
use of sdmmc on older HW revisions of the board.

Fixes: adeb5d2a4ba4 ("arm64: dts: rockchip: Add Radxa ROCK S0")
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 .../boot/dts/rockchip/rk3308-rock-s0.dts      | 25 ++++++++++++++++++-
 1 file changed, 24 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308-rock-s0.dts b/arch/arm64/boot/dts/rockchip/rk3308-rock-s0.dts
index bd6419a5c20a..8311af4c8689 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308-rock-s0.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3308-rock-s0.dts
@@ -74,6 +74,23 @@ vcc_io: regulator-3v3-vcc-io {
 		vin-supply = <&vcc5v0_sys>;
 	};
 
+	/*
+	 * HW revision prior to v1.2 must pull GPIO4_D6 low to access sdmmc.
+	 * This is modeled as an always-on active low fixed regulator.
+	 */
+	vcc_sd: regulator-3v3-vcc-sd {
+		compatible = "regulator-fixed";
+		gpios = <&gpio4 RK_PD6 GPIO_ACTIVE_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&sdmmc_2030>;
+		regulator-name = "vcc_sd";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc_io>;
+	};
+
 	vcc5v0_sys: regulator-5v0-vcc-sys {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc5v0_sys";
@@ -181,6 +198,12 @@ pwr_led: pwr-led {
 		};
 	};
 
+	sdmmc {
+		sdmmc_2030: sdmmc-2030 {
+			rockchip,pins = <4 RK_PD6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	wifi {
 		wifi_reg_on: wifi-reg-on {
 			rockchip,pins = <0 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
@@ -233,7 +256,7 @@ &sdmmc {
 	cap-mmc-highspeed;
 	cap-sd-highspeed;
 	disable-wp;
-	vmmc-supply = <&vcc_io>;
+	vmmc-supply = <&vcc_sd>;
 	status = "okay";
 };
 
-- 
2.47.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

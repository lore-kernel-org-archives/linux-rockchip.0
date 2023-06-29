Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2967BC001B0
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Jun 2023 19:02:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=okFyq3ruSliomiUAq3+7FifQfHG2tfu9X9jh3OydFmU=; b=XOCdTOc9FRyFfG
	cwItDfzS13Gzxo2mMMlBwVbuztGR/Iegd0HNFFV7luk7ZqCaBg5vXKmzYqTHzf28lDPfVi3OLJv2p
	L1kE1UV5vfpz9Ob0QzBnazc5z3mUWXscZV/KzLwN/eaTsiNu+pHeyh4wdg6cWOqJVJ414cCQw9PUZ
	aEi8fsgC2Yc3NYqJ0MdRlcaThlQ4qG6g1sUhFboxrXraFY9FLRYuK6LsM6HsG9c4KboJNlOWspjaa
	I+Rezn+3ZlANExJ3gdd+PeuRTrMSjpEhwi0fRSA5pYkGpSLkpizS6HeGuMF8guptMrkv18HAT88Cp
	I7M9ukbJ+552W5YNYCwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qEwu6-001rYf-0F;
	Thu, 29 Jun 2023 19:02:06 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qEwu0-001rVS-2o;
	Thu, 29 Jun 2023 19:02:03 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 6049461602;
	Thu, 29 Jun 2023 19:02:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 675D8C433CD;
	Thu, 29 Jun 2023 19:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688065319;
	bh=FsfFDLqgmY9SMMnUYxeo8rjBO5Tm0rDlY+CxeWfUkLM=;
	h=From:To:Cc:Subject:Date:From;
	b=bxlrOvtFnTjP1ihB+lsVUtsfC5Cu+k+ydf5KfSWby8owRE6antdyGXYE7+Pe9WBi/
	 ybojO9sDMIg2MieYYmmQkntX94anUqoyEDJKHCpOvOzt2PTK9wdfY2Qcso4xv6nwyf
	 8qmgOyLlAOZwORBTCAoacXvH9ffm4SNVry8SOJc1vLzKbuyqXJAH1R193eBjolMaFw
	 0s1N9LjmG5a65lst45acx4Sdsh5KaiaRKd8G2jOTgWD+2V4jxJfqW2RiY2CG0JLt+f
	 nDGcPMIGTg1duCayQLmV42Tw7V7HlUjuF+CUTZRYG4ZoiUZoMvQ2RSrBkoAq779d//
	 IkLiDFb4xboHw==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Lorenz Brun <lorenz@brun.one>,
	Diederik de Haas <didi.debian@cknow.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Sasha Levin <sashal@kernel.org>,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 5.15 1/5] arm64: dts: rockchip: fix USB regulator on ROCK64
Date: Thu, 29 Jun 2023 15:01:52 -0400
Message-Id: <20230629190158.908169-1-sashal@kernel.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 5.15.118
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230629_120200_989458_2CD50D8C 
X-CRM114-Status: GOOD (  13.70  )
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

From: Lorenz Brun <lorenz@brun.one>

[ Upstream commit 03633c4ef1fb5ee119296dfe0c411656a9b5e04f ]

Currently the ROCK64 device tree specifies two regulators, vcc_host_5v
and vcc_host1_5v for USB VBUS on the device. Both of those are however
specified with RK_PA2 as the GPIO enabling them, causing the following
error when booting:

  rockchip-pinctrl pinctrl: pin gpio0-2 already requested by vcc-host-5v-regulator; cannot claim for vcc-host1-5v-regulator
  rockchip-pinctrl pinctrl: pin-2 (vcc-host1-5v-regulator) status -22
  rockchip-pinctrl pinctrl: could not request pin 2 (gpio0-2) from group usb20-host-drv  on device rockchip-pinctrl
  reg-fixed-voltage vcc-host1-5v-regulator: Error applying setting, reverse things back

Looking at the schematic, there are in fact three USB regulators,
vcc_host_5v, vcc_host1_5v and vcc_otg_v5. But the enable signal for all
three is driven by Q2604 which is in turn driven by GPIO_A2/PA2.

Since these three regulators are not controllable separately, I removed
the second one which was causing the error and added labels for all
rails to the single regulator.

Signed-off-by: Lorenz Brun <lorenz@brun.one>
Tested-by: Diederik de Haas <didi.debian@cknow.org>
Link: https://lore.kernel.org/r/20230421213841.3079632-1-lorenz@brun.one
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/rockchip/rk3328-rock64.dts | 14 ++------------
 1 file changed, 2 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
index 1b0f7e4551ea4..522d2d4281033 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
@@ -37,7 +37,8 @@ vcc_sd: sdmmc-regulator {
 		vin-supply = <&vcc_io>;
 	};
 
-	vcc_host_5v: vcc-host-5v-regulator {
+	/* Common enable line for all of the rails mentioned in the labels */
+	vcc_host_5v: vcc_host1_5v: vcc_otg_5v: vcc-host-5v-regulator {
 		compatible = "regulator-fixed";
 		gpio = <&gpio0 RK_PA2 GPIO_ACTIVE_LOW>;
 		pinctrl-names = "default";
@@ -48,17 +49,6 @@ vcc_host_5v: vcc-host-5v-regulator {
 		vin-supply = <&vcc_sys>;
 	};
 
-	vcc_host1_5v: vcc_otg_5v: vcc-host1-5v-regulator {
-		compatible = "regulator-fixed";
-		gpio = <&gpio0 RK_PA2 GPIO_ACTIVE_LOW>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&usb20_host_drv>;
-		regulator-name = "vcc_host1_5v";
-		regulator-always-on;
-		regulator-boot-on;
-		vin-supply = <&vcc_sys>;
-	};
-
 	vcc_sys: vcc-sys {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc_sys";
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

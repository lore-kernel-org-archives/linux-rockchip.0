Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14457CCF9F8
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Nov 2025 03:01:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Sz+KQjqe8COb1fVLvRPNADA4WS6e8sQRgU5LweZkC9U=; b=KUjSxtzKN8T+FH
	fZ7W4ECSLOuY+X4K+Molz4Kf9jNWSBI8lJ5TuynoaXSlkcBnm4OCY3ZIN+YoKZhidvLv5bTbIZLUD
	g7ElTM88WXOvcpoW9wQjUwgS9zrcuF+4wfivFB6nC7kPJaNwKp0sY3wtfBplV03AQgnF7+rKzEE1t
	pTY0XJY9TRnx0tRIOIYB7vCoC3mg9GmxpT3Z8ymjn23QPUniKgNMbBXLVm9en62OC0TljqA/o1Br+
	LipbTDkoO4ZPnwFQq4f5l2bvN6ySMw2bdl7uwD9FrSkXjgUw6vb+14vOGWaKgw/sPet1FzuMEdOqy
	ZqbugSJiJcS5jwuGQRUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vII9W-00000004dsF-1YtT;
	Mon, 10 Nov 2025 03:01:10 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vII9R-00000004drg-1ccD
	for linux-rockchip@lists.infradead.org;
	Mon, 10 Nov 2025 03:01:09 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 5AA30mHk016962;
	Mon, 10 Nov 2025 12:00:48 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        andy.yan@rock-chips.com, dmitry.baryshkov@oss.qualcomm.com,
        sebastian.reichel@collabora.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [RFC PATCH] arm64: dts: rockchip: Fix microSD card detect for Radxa ROCK 5 ITX
Date: Mon, 10 Nov 2025 03:00:36 +0000
Message-ID: <20251110030036.825150-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251109_190105_668745_28B747B0 
X-CRM114-Status: UNSURE (   8.12  )
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

Due to the discussion about cd-gpios and sdmmmc_det pin
functionality[1], it would be better to use cd-gpios for now.

[1] https://lore.kernel.org/linux-rockchip/20240912152538.1.I858c2a0bf83606c8b59ba1ab6944978a398d2ac5@changeid/T/#u

Fixes: 31390eb8ffbf2 ("arm64: dts: rockchip: add ROCK 5 ITX board")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
index bc8140883de47..391c6482e8ee3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
@@ -670,6 +670,12 @@ led_pins: led-pins {
 		};
 	};
 
+	mmc {
+		sdmmc_det_gpio: sdmmc-det-gpio {
+			rockchip,pins = <0 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	pcie {
 		pcie20x1_2_perstn: pcie20x1-2-perstn {
 			rockchip,pins = <3 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
@@ -795,12 +801,13 @@ &sdmmc {
 	bus-width = <4>;
 	cap-mmc-highspeed;
 	cap-sd-highspeed;
+	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
 	disable-wp;
 	max-frequency = <200000000>;
 	no-sdio;
 	no-mmc;
 	pinctrl-names = "default";
-	pinctrl-0 = <&sdmmc_bus4 &sdmmc_clk &sdmmc_cmd &sdmmc_det>;
+	pinctrl-0 = <&sdmmc_bus4 &sdmmc_clk &sdmmc_cmd &sdmmc_det_gpio>;
 	sd-uhs-sdr104;
 	vmmc-supply = <&vcc_3v3_s3>;
 	vqmmc-supply = <&vccio_sd_s0>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

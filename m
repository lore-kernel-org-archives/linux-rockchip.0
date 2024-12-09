Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D433E7717D
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Dec 2024 13:12:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RjMKE2G0n4wNssFbdQDL1qxVMowk34po5zrnGbXn5jg=; b=IDsXOa5XbPrywf
	CRqcnnufZ+VE/8vsIlwZkrEEBGqMlRWRLbdWnkVKPcWAzzbKsFU8xYXZxXj0NXmU9jDNXNLVItixX
	/YHHYLkhS45KePumS+3lupzI2hVlVLUqr4+L19CN4gHUu37KSUblhNyRDZjpUhJpDMSmgfWr3cgkJ
	28R4mQiNtH4rVyKW666Z/s9tuFyd1ZM3DVBpBE3GGjzs30sJWJGjQef/2tiMHix1cqllHmGdSHM+m
	NPPab3Qcx8dEizFx5pUc1gcdlrNCL64SsfPHe/JqDzoduusH03a9++6uO018CVYFewyH+BmKI0Bwh
	3lszReZ9l3HMDgN22PJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKdYO-00000007to3-1zLt;
	Mon, 09 Dec 2024 13:12:00 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKdF5-00000007nYV-0o9Q
	for linux-rockchip@lists.infradead.org;
	Mon, 09 Dec 2024 12:52:06 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4B9CpdQ6031943;
	Mon, 9 Dec 2024 21:51:47 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, sebastian.reichel@collabora.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v4 06/12] arm64: dts: rockchip: remove RTC and related node for Radxa ROCK 5C
Date: Mon,  9 Dec 2024 12:51:25 +0000
Message-ID: <20241209125131.4101-7-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241209125131.4101-1-naoki@radxa.com>
References: <20241209125131.4101-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241209_045203_549649_6A5735BA 
X-CRM114-Status: UNSURE (   6.82  )
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

RTC doesn't exist on actual board. remove it.

Fixes: 3ddf5cdb77e6 ("arm64: dts: rockchip: add Radxa ROCK 5C")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v4:
- none
Changes in v3:
- none
Changes in v2:
- new
---
 .../boot/dts/rockchip/rk3588s-rock-5c.dts     | 23 -------------------
 1 file changed, 23 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
index 01537b47f880..1ba94396aab8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
@@ -350,23 +350,6 @@ regulator-state-mem {
 	};
 };
 
-&i2c5 {
-	pinctrl-names = "default";
-	pinctrl-0 = <&i2c5m2_xfer>;
-	status = "okay";
-
-	rtc@51 {
-		compatible = "haoyu,hym8563";
-		reg = <0x51>;
-		#clock-cells = <0>;
-		clock-output-names = "rtcic_32kout";
-		interrupt-parent = <&gpio0>;
-		interrupts = <RK_PB0 IRQ_TYPE_LEVEL_LOW>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&rtc_int_l>;
-	};
-};
-
 &i2c7 {
 	status = "okay";
 
@@ -451,12 +434,6 @@ pow_en: pow-en {
 		};
 	};
 
-	rtc {
-		rtc_int_l: rtc-int-l {
-			rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-
 	usb {
 		usb_host_pwren_h: usb-host-pwren-h {
 			rockchip,pins = <4 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

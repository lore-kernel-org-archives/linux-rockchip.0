Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD810D62060
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Nov 2024 09:51:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9pKqBhdAQxV9rpWq6LbKLqURww6iaCOrcLUYr1rER7g=; b=4RruPLDgUaVpZx
	L5jmOgN5/mjpqU+rLzC2Zz87WU/WWvtSvsvGCEOkAV3bRK4/VVN4AEYs1h4feK5G/1kxN9kxvPGWf
	47zRK46at7vc9hnCTSrBr42SxqN4JGdl1qEmkQsHcVR4hvQ0zox8PPEhs86VleIcEj/1b6T9Lv78+
	eVSlsUsavJJ4sNAjkVe4KJlHIC26zJ5H+AyQ+J6e/Q7xMyIUh1FxwmoaP0SNMO2ti+QEY86Xkj/zH
	Zl858/Tg4aMmlSCFZM11a9ZsQmC9FX5DSU7PfFzO+r7WBXig2OlHps/CNmCXEFDdbrYfMX9NXxRwa
	CbImC6xNnIB2GaT0NjHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tDKtc-0000000Bx2R-3fKt;
	Tue, 19 Nov 2024 09:51:44 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tDKtT-0000000Bwvn-2pRj
	for linux-rockchip@lists.infradead.org;
	Tue, 19 Nov 2024 09:51:41 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4AJ9pHSH016079;
	Tue, 19 Nov 2024 18:51:18 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, sebastian.reichel@collabora.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v3 02/11] arm64: dts: rockchip: add cd-gpios for sdmmc for Radxa ROCK 5C
Date: Tue, 19 Nov 2024 09:51:03 +0000
Message-ID: <20241119095113.78151-2-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241119095113.78151-1-naoki@radxa.com>
References: <20241119095113.78151-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241119_015135_948000_DB463C25 
X-CRM114-Status: UNSURE (   7.11  )
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

by discussion about cd-gpios and sdmmmc_det pin function[1], it's
better to add cd-gpios for now.

[1] https://lore.kernel.org/linux-rockchip/4920950.GXAFRqVoOG@diego/T/#u

Fixes: 3ddf5cdb77e6 ("arm64: dts: rockchip: add Radxa ROCK 5C")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v3:
- none
Changes in v2:
- none
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
index 997e95bb5b74..3eed50253442 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
@@ -501,6 +501,7 @@ &sdmmc {
 	bus-width = <4>;
 	cap-mmc-highspeed;
 	cap-sd-highspeed;
+	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
 	disable-wp;
 	no-sdio;
 	no-mmc;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

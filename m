Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9568FD41C17
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Nov 2024 08:13:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wlRuyGUTC5itsZ+nCK/eyxq4Jn6SXGdl6mU8z9zOXRI=; b=VAmZZohF8iF67g
	x3byxAoArQD2JMrZJ1sGFQRZAMDSkCLBhk4zxWq4BVHFURISe+wM8Yc53njGPbiDMOIrzGScLK7oY
	uZ/oJ1XoSozy/lETK3w6xPxfyGFSYSsUDPbKVoyTJFS9bhzwYqqg3QEUJyjswGE0kr8rYQ5r7EzoQ
	9NSEi7Asc+mjZ2l+MMh0OGvJHI84EPjVowBRCUrk9TjZDNryypQgImx8tbO1XSTCt472DX1TC4oD7
	1Cq9306Uygmw6FeZ3qmCGhNksge162Mp4DtM+3g4RAJJk7v5Sg0XfbupLHolbC10G4kvZRHMoQCKR
	G1rT949bW+pxMM2GoZEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tB8VV-000000064Nv-36F9;
	Wed, 13 Nov 2024 08:13:45 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tB8V4-000000064Iw-3zcj
	for linux-rockchip@lists.infradead.org;
	Wed, 13 Nov 2024 08:13:21 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4AD8D5p8026223;
	Wed, 13 Nov 2024 17:13:07 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Subject: [PATCH 7/8] arm64: dts: rockchip: fix pwm-fan property for Radxa ROCK 5A
Date: Wed, 13 Nov 2024 08:12:57 +0000
Message-ID: <20241113081258.2745-7-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241113081258.2745-1-naoki@radxa.com>
References: <20241113081258.2745-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241113_001319_303755_22AB5B12 
X-CRM114-Status: UNSURE (   8.25  )
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

fix pwm period to match with vendor kernel[1].

[1] https://github.com/radxa/kernel/blob/linux-6.1-stan-rkr1/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index 39a05491a04b..a6d1dfa68a90 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -63,9 +63,9 @@ io-led {
 
 	fan: pwm-fan {
 		compatible = "pwm-fan";
-		cooling-levels = <0 95 145 195 255>;
+		cooling-levels = <0 64 128 192 255>;
 		fan-supply = <&vcc_5v0>;
-		pwms = <&pwm3 0 50000 0>;
+		pwms = <&pwm3 0 60000 0>;
 		#cooling-cells = <2>;
 	};
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

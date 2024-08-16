Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C358AC531DC
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Aug 2024 11:06:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pXUhEXETHS6DUZxSQ4k7AUuPfRVbS2RKO7edhhfKjz8=; b=QliIWZM+HUAR+x
	32aAix7vqsILQFu7JXlZg3zxarCjuXgBX+/lHc5VO74Qdr4XndhunMIkm2n9P8kAtjyrhC7zwROk5
	yxldqTXSivvzlPhXA4WTzDJku9WQCWEOOrR303l8BkKvuBFl3k+onmbxO0hk+DxTfUV8u8UXsufE8
	AGV5+Y2V2fEku+Nvc6KKhe0rnkm6vx214MaGrRt2HXn2QcMwCpcN+FQ/S2O6APkrwQJiRA1xmZuY5
	di/cMWar8W3FaS14L4/R1aYIKHolPW7w0guxD6sbPHpWA6i4FoPmY6uVcM7EDzF1f17a5DGgWTIkO
	82oDVX/upweyNq1KI/TQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seumO-0000000Ch2A-1Cds;
	Fri, 16 Aug 2024 11:06:00 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seukn-0000000Cgid-3k7K
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Aug 2024 11:04:24 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 47GB4B0L025184;
	Fri, 16 Aug 2024 20:04:12 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH] arm64: dts: rockchip: use "pwm-leds" for multicolor PWM LEDs on Radxa E25
Date: Fri, 16 Aug 2024 20:04:02 +0900
Message-ID: <20240816110402.840-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240816_040422_373119_F8759731 
X-CRM114-Status: UNSURE (   6.71  )
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

to make multicolor PWM LEDs behavior more consistent with vendor
kernel[1], use "pwm-leds" for it on Radxa E25.

[1] https://github.com/radxa/kernel/blob/linux-5.10-gen-rkr4.1/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts#L100-L121

Fixes: 2bf2f4d9f673 ("arm64: dts: rockchip: Add Radxa CM3I E25")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 .../boot/dts/rockchip/rk3568-radxa-e25.dts    | 36 ++++++++++---------
 1 file changed, 20 insertions(+), 16 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
index 72ad74c38a2b..0b527f67bdbd 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
@@ -12,26 +12,30 @@ aliases {
 	};
 
 	pwm-leds {
-		compatible = "pwm-leds-multicolor";
+		compatible = "pwm-leds";
 
-		multi-led {
-			color = <LED_COLOR_ID_RGB>;
+		led-red {
+			color = <LED_COLOR_ID_RED>;
+			default-state = "on";
+			function = LED_FUNCTION_STATUS;
 			max-brightness = <255>;
+			pwms = <&pwm1 0 1000000 0>;
+		};
 
-			led-red {
-				color = <LED_COLOR_ID_RED>;
-				pwms = <&pwm1 0 1000000 0>;
-			};
-
-			led-green {
-				color = <LED_COLOR_ID_GREEN>;
-				pwms = <&pwm2 0 1000000 0>;
-			};
+		led-green {
+			color = <LED_COLOR_ID_GREEN>;
+			default-state = "on";
+			function = LED_FUNCTION_STATUS;
+			max-brightness = <255>;
+			pwms = <&pwm2 0 1000000 0>;
+		};
 
-			led-blue {
-				color = <LED_COLOR_ID_BLUE>;
-				pwms = <&pwm12 0 1000000 0>;
-			};
+		led-blue {
+			color = <LED_COLOR_ID_BLUE>;
+			default-state = "on";
+			function = LED_FUNCTION_STATUS;
+			max-brightness = <255>;
+			pwms = <&pwm12 0 1000000 0>;
 		};
 	};
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

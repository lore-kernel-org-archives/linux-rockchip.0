Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A25CC44512
	for <linux-rockchip@archiver.kernel.org>; Sun, 19 Jul 2026 18:49:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lrEepkI+vs9wnpnwG+iyFyMs1zCSGbZBY1vLvCVx1/c=; b=frjWtdWDgiD+uu
	EcnLlorFJHt6MCv5WYAVKPW6peX8q/B82fqNqzfx5X9jsFkcbX3fvq2pVo0Ii6TWD1QPrcmU9CcEW
	QId+5ZxVt1mrCtTL3r+UnP0kR5VRoAEJs/5Q6HNrvrqQ/x5Gv9YErtAuddcMcviV3odLffskkElbQ
	R3v3PIJ64vIfQvgjDlpIYrOUHL4Jo/it/jrrPznZ1OTQeJDm9gj0bA+3QkdJ1TEeUutRiOKtdx4MI
	r2w9JvH8490LM7Bhc/Sx59RHQ1TXeGazxi8RaHyAS4Wt56oW5vxv2x8+yCP34EJT7tozRBT7q96+H
	wRH80KYtIuOkO95n+s6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlWZo-00000005HLx-42YP;
	Sun, 19 Jul 2026 18:49:24 +0000
Received: from mx0.gmx.wtf ([203.137.112.168])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlWZm-00000005HLX-1V6G
	for linux-rockchip@lists.infradead.org;
	Sun, 19 Jul 2026 18:49:23 +0000
Date: Sun, 19 Jul 2026 20:49:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=vicb.net;
	s=f747d04263f05989; t=1784486957;
	bh=CZ34Dq4h24k1BTVbY3+f0i5vXsK5au8ANUooagJDjfE=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=ptwJp/w3Fd4tu6FELIHC3Z36JqLnKI+uOeHZaCHp+XoYfcg9UxKfHXzgEGKVDgAPT
	 NwxWipCB9GXgjIldQRpHBrPC2COKFajtEdYsPjZddNqcl4FqK3bP7nbRjj8UKc/0rI
	 LQP/w4cjsAvsbUFbMBk74cQ0fJGpWuyWM2c/5OAQMFcvECTYIugK2fPryCnymLZKLy
	 MA9mFHqBev5lkdbxeIjJRN1RJUrPwRMcGD9lcPRB+xfRxxoxKl+zMBDk+QMOsYpchj
	 KkSo4lm2NevH6G5/dO/gWDx8gTV8yeHSco8p9gCj0WcwQKdHHnbU++dF0MGQHaV6Fs
	 UkwY36w3ogbNw==
From: Vic B <linux@vicb.net>
To: linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Jensen Huang <jensenhuang@friendlyarm.com>
Subject: [PATCH v2] arm64: dts: rockchip: fix label of sys_led for nanopi-r4s
Message-ID: <al0cKhqvPbBO_5q8@vicb.net>
References: <alz112qGhm77liqi@vicb.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alz112qGhm77liqi@vicb.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260719_114922_533603_0B43BF63 
X-CRM114-Status: GOOD (  10.83  )
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

This commit corrects the system LED configuration for the NanoPi R4S by
replacing the deprecated label property with color and function.

This changes the resulting label of mislabeled sys_led from red:power
to green:status, while the labels of the other two leds stay intact
(green:lan for lan_led and green:wan for wan_led).

Signed-off-by: Vic B <linux@vicb.net>
---
Changes in v2:

  - use color and function instead of deprecated label as suggested
    by Sashiko AI
---
 arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dtsi | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dtsi
index 4274d1b6e80a..4ad012a9bdc8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dtsi
@@ -14,6 +14,7 @@
 
 /dts-v1/;
 
+#include <dt-bindings/leds/common.h>
 #include "rk3399-nanopi4.dtsi"
 
 / {
@@ -25,19 +26,22 @@ gpio-leds {
 		/delete-node/ led-0;
 
 		lan_led: led-lan {
+			color = <LED_COLOR_ID_GREEN>;
+			function = LED_FUNCTION_LAN;
 			gpios = <&gpio1 RK_PA1 GPIO_ACTIVE_HIGH>;
-			label = "green:lan";
 		};
 
 		sys_led: led-sys {
+			color = <LED_COLOR_ID_GREEN>;
+			function = LED_FUNCTION_STATUS;
 			gpios = <&gpio0 RK_PB5 GPIO_ACTIVE_HIGH>;
-			label = "red:power";
 			default-state = "on";
 		};
 
 		wan_led: led-wan {
+			color = <LED_COLOR_ID_GREEN>;
+			function = LED_FUNCTION_WAN;
 			gpios = <&gpio1 RK_PA0 GPIO_ACTIVE_HIGH>;
-			label = "green:wan";
 		};
 	};
 
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39559C61DDA
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Aug 2026 11:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wt7ezD0utHAxJwl81SO6MhdRyEJ9xw6FkFndAiV7sHc=; b=zHqLXlbPpwofSI
	J7LZw+nDxBmpa34OmJ0mOOuHOxC0wY59i8N7CzoL5GpiwuVZ49IQap7fWS3zSq0ZC2nl9y0gar41L
	2SwRgRMSaI7TiYlAB8oW1zUgRd6Sb7ch+zDVuL5WqznQeYKTxTcZygg0K6S2CqvfYVaSiRqMMNipL
	M5c4awvP38a1S6WIA1A0H4ojBh+KRctlwJcmAF7Z8bJN0grP52HeWp1NEFXt2vyOIbceS6Gj6QpI7
	f9yycCOO/LaBUfcJDpBTY7/En3wEsfEpLsazyljHBctKlLNgco+lNoDghjE+9LpHr3UxtUE1AlAEF
	WVArGPDoApATsGNldPvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzv1w-00000005fb1-1K8D;
	Fri, 28 Aug 2026 11:45:56 +0000
Received: from out-120.mta1.migadu.com ([2001:41d0:203:375::78] helo=mta1.migadu.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzv1s-00000005fXM-3xaP
	for linux-rockchip@lists.infradead.org;
	Fri, 28 Aug 2026 11:45:54 +0000
X-Envelope-To: linux-rockchip@lists.infradead.org
DKIM-Signature: a=rsa-sha256; bh=bVACo8v5FEqx+4/0ojCAbrd58C/+n+Gtjw1O0FYevc8=;
 c=simple/simple; d=cknow-tech.com;
 h=from:to:subject:date:message-id:mime-version:content-type; s=key1;
 t=1787917551; v=1; x=1788522351;
 b=cihW0Gc+3f3bgK24aeajsH2tVR6faDKSCqHTJQimjA8KO7WMo4B67RMhs/4msb0uIptkXCf7
 qM6cebNW56cHouyAtq1LgCH+To/HH9PbC94A1byX3o9otcRfLYQRFJbxXba51cQ1I9AaOWaF03K
 f2lH5CJrjSCYOEZWSTUtC6oTbbTUwuJHdVdbd/3GWHRHpHNUgDatMUxKQpnuDdsdYd69gX6EVpt
 Lf1bDMvfnERny+WNZJQ2OYaCoHTgwZC+zyoNhRyZ0ZfYFq+805Mhg0RRFYT/YRP/G1W9trT7F4G
 NP/KwjvzDEeH7BOOTY0qdWOUKtXm9upODa2zLcYTQP/1g==
X-Envelope-To: linux-rockchip@lists.infradead.org
Received: by smtp.migadu.com with ESMTPS id aac531fba34cc0c3;
	Fri, 28 Aug 2026 11:45:50 +0000
X-Mizu-Trace-ID: aac531fba34cc0c3
X-Migadu-Flow: FLOW_OUT
From: Diederik de Haas <diederik@cknow-tech.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Ricardo Pardini <ricardo@pardini.net>,
	Marcin Juszkiewicz <marcin@juszkiewicz.com.pl>,
	Daniele Briguglio <hello@superkali.me>,
	Hugh Cole-Baker <sigmaris@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Diederik de Haas <diederik@cknow-tech.com>
Subject: [PATCH 3/7] arm64: dts: rockchip: Fix hym8563 pinctrl name and sorting on NanoPC-T6
Date: Fri, 28 Aug 2026 13:43:03 +0200
Message-ID: <20260828114530.1315798-4-diederik@cknow-tech.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260828114530.1315798-1-diederik@cknow-tech.com>
References: <20260828114530.1315798-1-diederik@cknow-tech.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260828_044553_119169_DB1D4717 
X-CRM114-Status: UNSURE (   8.98  )
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

Use the pinctrl names as used in the schematics and use natural sort order
by property names for the hym8563 RTC node.

Signed-off-by: Diederik de Haas <diederik@cknow-tech.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
index 16c35250bacf..84bfb33a4774 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
@@ -536,10 +536,10 @@ hym8563: rtc@51 {
 		reg = <0x51>;
 		#clock-cells = <0>;
 		clock-output-names = "hym8563";
-		pinctrl-names = "default";
-		pinctrl-0 = <&hym8563_int>;
 		interrupt-parent = <&gpio0>;
 		interrupts = <RK_PB0 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-0 = <&rtc_int_l_pin>;
+		pinctrl-names = "default";
 		wakeup-source;
 	};
 };
@@ -704,7 +704,7 @@ hp_det: hp-det {
 	};
 
 	hym8563 {
-		hym8563_int: hym8563-int {
+		rtc_int_l_pin: rtc-int-l-pin {
 			rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
 	};
-- 
2.55.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

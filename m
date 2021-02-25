Return-Path: <SRS0=CMqn=H3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 047A9C433DB
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Feb 2021 13:33:54 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4569864EF5
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Feb 2021 13:33:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4569864EF5
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xbfOIb+a+pW8LQy1FRzplWawId7swUd8DWudeeE+s+s=; b=LuV2LJyxL+1y++ZIinKFJN/w+
	dpLbYaeqJitTmjoa7yPwvhsmLEOk+lA6N3WUXTBC7mLXJd6j8NzY2NEiuAy8KLhtqYvYs1T8IW+Xm
	xKebIorbs8kuRSkc0LDaFoib1zJkv8XjaZ+p9ihODK8q/Z2Pk4FA7k65p6yQVmFITTvcXgHpUJL/r
	B99olmiJ5sbsJ8A7sRbkhnyrkq9d4UonVwopkGyw7gfykQmF5/EdXw6ix59vgbfchw5wkF7RQHl9o
	ifV4mP6ngpILuKwxwXpJsvla20wRVgGGuXHtAvhjWZdA6rlJYjoB2m/Xk/gIypk5GJj4LRAZEflDU
	mncwEDUKg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lFGm4-0002vp-69; Thu, 25 Feb 2021 13:33:48 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lFGln-0002rG-40; Thu, 25 Feb 2021 13:33:33 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lFGlg-00022t-SO; Thu, 25 Feb 2021 14:33:24 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Subject: [PATCH 2/3] arm64: dts: rockchip: used range'd gpu opps on rk3399
Date: Thu, 25 Feb 2021 14:33:21 +0100
Message-Id: <20210225133322.3420724-2-heiko@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210225133322.3420724-1-heiko@sntech.de>
References: <20210225133322.3420724-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210225_083331_280905_9C717237 
X-CRM114-Status: GOOD (  12.44  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 finley.xiao@rock-chips.com, cmuellner@linux.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

Similar to the cpu opps, also use opps with a range on the gpu.
(min, preferred, max). The voltage just needs to be higher than
the minimum and this allows the regulator more freedom if it
can't provide the exact voltage specified, but just say 5mV higher,
as can be seen on rk3399-puma which fails to scale panfrost voltages
nearly completely.

Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-opp.dtsi | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-opp.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-opp.dtsi
index 20b0d60f7ee3..da41cd81ebb7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-opp.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-opp.dtsi
@@ -79,27 +79,27 @@ gpu_opp_table: opp-table2 {
 
 		opp00 {
 			opp-hz = /bits/ 64 <200000000>;
-			opp-microvolt = <825000>;
+			opp-microvolt = <825000 825000 1150000>;
 		};
 		opp01 {
 			opp-hz = /bits/ 64 <297000000>;
-			opp-microvolt = <825000>;
+			opp-microvolt = <825000 825000 1150000>;
 		};
 		opp02 {
 			opp-hz = /bits/ 64 <400000000>;
-			opp-microvolt = <825000>;
+			opp-microvolt = <825000 825000 1150000>;
 		};
 		opp03 {
 			opp-hz = /bits/ 64 <500000000>;
-			opp-microvolt = <875000>;
+			opp-microvolt = <875000 875000 1150000>;
 		};
 		opp04 {
 			opp-hz = /bits/ 64 <600000000>;
-			opp-microvolt = <925000>;
+			opp-microvolt = <925000 925000 1150000>;
 		};
 		opp05 {
 			opp-hz = /bits/ 64 <800000000>;
-			opp-microvolt = <1100000>;
+			opp-microvolt = <1100000 1100000 1150000>;
 		};
 	};
 };
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <SRS0=CMqn=H3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADBFC433DB
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Feb 2021 13:33:45 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BA5A564E85
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Feb 2021 13:33:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BA5A564E85
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sHwc9rWkUaME2b/YhTknpRZIRzahv1l9stDqG+MMhvU=; b=xh1iSCUm/V7ZTUzrhLgtp1rLh
	eUSpUjA61HqKhYq43fvlFgD/LImHWOKYXbf0YzA8/ggCM4HdbS3lWV3vIk7AIZ+N+BDb4OzNfAjkJ
	RdhY+/U9G0/0j9aEv1nQWVIcBXW8UVPlv6Nc4Cd7zY6FMqxiA7P/FzgqMKz6pA2xqHux+vUBGcIax
	kJ+7o7j99HjTbjFQYxUBShd7Yzj/H+WVP6R23UPhqw5sT9PL6lmCocIRXZC2GYR3HvOQx9ax/Ecbe
	yvlwF9vCDG4BsrLsXGal2G/Co4KSvBul+WfQK8gjvTRTrOL9Xj4mfek2/5eIZZBMEYfsKdZt/67ti
	fGDYFgP8g==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lFGlu-0002tT-OJ; Thu, 25 Feb 2021 13:33:38 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lFGln-0002rE-3z; Thu, 25 Feb 2021 13:33:32 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lFGlh-00022t-5Q; Thu, 25 Feb 2021 14:33:25 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Subject: [PATCH 3/3] arm64: dts: rockchip: drop separate opp table on
 rk3399-puma
Date: Thu, 25 Feb 2021 14:33:22 +0100
Message-Id: <20210225133322.3420724-3-heiko@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210225133322.3420724-1-heiko@sntech.de>
References: <20210225133322.3420724-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210225_083331_265948_184C1697 
X-CRM114-Status: GOOD (  12.10  )
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

We're using OPPs with a range now, so the fact that the cpu regulator
on puma can't provide the needed 5mV steps requested in the minimal
voltage values can be handled automatically by the opp framework.

Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi | 51 -------------------
 1 file changed, 51 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
index 4660416c8f38..6ae9032d85f4 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
@@ -21,57 +21,6 @@ module_led: led-0 {
 		};
 	};
 
-	/*
-	 * Overwrite the opp-table for CPUB as this board uses a different
-	 * regulator (FAN53555) that only allows 10mV steps and therefore
-	 * can't reach the operation point target voltages from rk3399-opp.dtsi
-	 */
-	/delete-node/ opp-table1;
-	cluster1_opp: opp-table1 {
-		compatible = "operating-points-v2";
-		opp-shared;
-
-		opp00 {
-			opp-hz = /bits/ 64 <408000000>;
-			opp-microvolt = <800000>;
-			clock-latency-ns = <40000>;
-		};
-		opp01 {
-			opp-hz = /bits/ 64 <600000000>;
-			opp-microvolt = <800000>;
-		};
-		opp02 {
-			opp-hz = /bits/ 64 <816000000>;
-			opp-microvolt = <830000>;
-			opp-suspend;
-		};
-		opp03 {
-			opp-hz = /bits/ 64 <1008000000>;
-			opp-microvolt = <880000>;
-		};
-		opp04 {
-			opp-hz = /bits/ 64 <1200000000>;
-			opp-microvolt = <950000>;
-		};
-		opp05 {
-			opp-hz = /bits/ 64 <1416000000>;
-			opp-microvolt = <1030000>;
-		};
-		opp06 {
-			opp-hz = /bits/ 64 <1608000000>;
-			opp-microvolt = <1100000>;
-		};
-		opp07 {
-			opp-hz = /bits/ 64 <1800000000>;
-			opp-microvolt = <1200000>;
-		};
-		opp08 {
-			opp-hz = /bits/ 64 <1992000000>;
-			opp-microvolt = <1230000>;
-			turbo-mode;
-		};
-	};
-
 	clkin_gmac: external-gmac-clock {
 		compatible = "fixed-clock";
 		clock-frequency = <125000000>;
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

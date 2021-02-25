Return-Path: <SRS0=CMqn=H3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 38CDBC433DB
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Feb 2021 13:33:43 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2E08C64ED3
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Feb 2021 13:33:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2E08C64ED3
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=IsJsauHQjErB2fEMiADQQ+GDh9FfXe83QMwteZ+qqQM=; b=qmTzun2oyCtgcga//M1fPUgTfg
	NKzbnQvKh832SiUomn5ZzF78OfAP/kVUv25WZZwcWwz5bRQdK8jlKtgP4NhofDkoDfaYfsPNK7jKZ
	F7CqWho1mr197rUmo8RH1GOe80t06O3dsWMgfxgtr/xLBa8rDWdqZ/j3bo+XXtVt/i+KxcqCMNIaG
	k1A8vmpsKwTYFw8Mph11bD1VxZuICmn7JRZ6o8HjG/FxXntdaeIrg9+/83q4MzT5etcUPJcdq2DTS
	BiJO+JGZ4Q92twV5cWhg4y4H5FOmukRwdBrYGUkicD7JgF16quOkg8Sb+JF1f6buRsZIkcKDMsfGp
	O4A9WtXw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lFGlv-0002tg-Hp; Thu, 25 Feb 2021 13:33:39 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lFGln-0002rM-45; Thu, 25 Feb 2021 13:33:32 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lFGlg-00022t-Im; Thu, 25 Feb 2021 14:33:24 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Subject: [PATCH 1/3] arm64: dts: rockchip: synchronize rk3399 opps with vendor
 kernel
Date: Thu, 25 Feb 2021 14:33:20 +0100
Message-Id: <20210225133322.3420724-1-heiko@sntech.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210225_083331_272178_53C077CC 
X-CRM114-Status: GOOD (  11.51  )
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

The vendor-kernel did increase the minimum voltage for some low frequency
opps to 825mV citing stability reasons. So do that in mainline as well
and also use the ranged notation the vendor-kernel switched to, to give
a bit more flexibility for different regulator setups.

Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-opp.dtsi | 32 ++++++++++----------
 1 file changed, 16 insertions(+), 16 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-opp.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-opp.dtsi
index d6f1095abb04..20b0d60f7ee3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-opp.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-opp.dtsi
@@ -10,28 +10,28 @@ cluster0_opp: opp-table0 {
 
 		opp00 {
 			opp-hz = /bits/ 64 <408000000>;
-			opp-microvolt = <800000>;
+			opp-microvolt = <825000 825000 1250000>;
 			clock-latency-ns = <40000>;
 		};
 		opp01 {
 			opp-hz = /bits/ 64 <600000000>;
-			opp-microvolt = <800000>;
+			opp-microvolt = <825000 825000 1250000>;
 		};
 		opp02 {
 			opp-hz = /bits/ 64 <816000000>;
-			opp-microvolt = <850000>;
+			opp-microvolt = <850000 850000 1250000>;
 		};
 		opp03 {
 			opp-hz = /bits/ 64 <1008000000>;
-			opp-microvolt = <925000>;
+			opp-microvolt = <925000 925000 1250000>;
 		};
 		opp04 {
 			opp-hz = /bits/ 64 <1200000000>;
-			opp-microvolt = <1000000>;
+			opp-microvolt = <1000000 1000000 1250000>;
 		};
 		opp05 {
 			opp-hz = /bits/ 64 <1416000000>;
-			opp-microvolt = <1125000>;
+			opp-microvolt = <1125000 1125000 1250000>;
 		};
 	};
 
@@ -41,36 +41,36 @@ cluster1_opp: opp-table1 {
 
 		opp00 {
 			opp-hz = /bits/ 64 <408000000>;
-			opp-microvolt = <800000>;
+			opp-microvolt = <825000 825000 1250000>;
 			clock-latency-ns = <40000>;
 		};
 		opp01 {
 			opp-hz = /bits/ 64 <600000000>;
-			opp-microvolt = <800000>;
+			opp-microvolt = <825000 825000 1250000>;
 		};
 		opp02 {
 			opp-hz = /bits/ 64 <816000000>;
-			opp-microvolt = <825000>;
+			opp-microvolt = <825000 825000 1250000>;
 		};
 		opp03 {
 			opp-hz = /bits/ 64 <1008000000>;
-			opp-microvolt = <875000>;
+			opp-microvolt = <875000 875000 1250000>;
 		};
 		opp04 {
 			opp-hz = /bits/ 64 <1200000000>;
-			opp-microvolt = <950000>;
+			opp-microvolt = <950000 950000 1250000>;
 		};
 		opp05 {
 			opp-hz = /bits/ 64 <1416000000>;
-			opp-microvolt = <1025000>;
+			opp-microvolt = <1025000 1025000 1250000>;
 		};
 		opp06 {
 			opp-hz = /bits/ 64 <1608000000>;
-			opp-microvolt = <1100000>;
+			opp-microvolt = <1100000 1100000 1250000>;
 		};
 		opp07 {
 			opp-hz = /bits/ 64 <1800000000>;
-			opp-microvolt = <1200000>;
+			opp-microvolt = <1200000 1200000 1250000>;
 		};
 	};
 
@@ -79,11 +79,11 @@ gpu_opp_table: opp-table2 {
 
 		opp00 {
 			opp-hz = /bits/ 64 <200000000>;
-			opp-microvolt = <800000>;
+			opp-microvolt = <825000>;
 		};
 		opp01 {
 			opp-hz = /bits/ 64 <297000000>;
-			opp-microvolt = <800000>;
+			opp-microvolt = <825000>;
 		};
 		opp02 {
 			opp-hz = /bits/ 64 <400000000>;
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

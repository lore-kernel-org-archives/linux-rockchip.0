Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64875CCF9E9
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Sep 2024 07:56:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aN1gYwVLOKpjT4zkYGD/7BErWE8B2ucYjzGiX4sry8Y=; b=mfxchJLxC1LGko
	mv6xAmolaR7SHOuRkDIFaNfurqjzXZkwAIxMR/2VKY3j2xYMYheO1bVqCRRR9ODkQlsplx5hlD6mx
	Q42iqiHvb0lKyYF8hdEbo+AUTGis2fSZa0id1wIjhWRk7JGPy76VDr0GdzSePgy57/chn9ks44HRH
	YBPi0yucaaz6ENx22QYLxnBWl66kJf9XKUCXLH6QADVtim87h4WFFY9pJf7iapwhOGl1sK3rkJ/5n
	MqH1woIHQZbv/LVeN6KfzsZtcj9m7yE8VsZPs1flBkSYP6eC6D4aJf/FnWnzDo90Iq2SDfiFp7h7h
	7KS2OwvEZDp1cZ5VXZFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stjMD-00000007bU7-1Cp4;
	Thu, 26 Sep 2024 07:56:13 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stjFi-00000007Zqo-1HcR;
	Thu, 26 Sep 2024 07:49:32 +0000
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1727336965;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Q4p8z2L8jrWV5lUcHwvhgC9S3U+XsVqsS61+6JO+Ug0=;
	b=nzB3GlX4509mBvlajAspZW5HkN9N2/9VFLibpkhCwJJ1IIjK56wCw2OEfDXmeTpSB/hZiT
	FzYxYFoHw+BJDXzvEohnXgLUfUZxkMGHNfOiJOoxIuq5v189fr8Y2eXX2PpSHVHGMIG8Ux
	Mnm+v+HGjfj6tQ35fQoNMb87P8v/46omPQK1sp4vA3RmJNx8cdVXjqV+zfLCppHiBsOcws
	mtALiH2Gkno8h2cCpJGZ6irFCGwvvfNCNlYRnvOWpIHBXDdTobEXpRj7CnzE2Pnm+2uewB
	vnIqWS/LDc3E4/qQeYZLfU1CQnTjBUuba/OhwXJofQuESAHCv7QE7d8vJD2kWA==
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	stable@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: Move L3 cache under CPUs in RK356x SoC dtsi
Date: Thu, 26 Sep 2024 09:49:18 +0200
Message-Id: <da07c30302cdb032dbda434438f89692a6cb0a2d.1727336728.git.dsimic@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240926_004930_884779_FE3F85D8 
X-CRM114-Status: GOOD (  10.73  )
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

Move the "l3_cache" node under the "cpus" node in the dtsi file for Rockchip
RK356x SoCs.  There's no need for this cache node to be at the higher level.

Fixes: 8612169a05c5 ("arm64: dts: rockchip: Add cache information to the SoC dtsi for RK356x")
Cc: stable@vger.kernel.org
Signed-off-by: Dragan Simic <dsimic@manjaro.org>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 4690be841a1c..9f7136e5d553 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -113,19 +113,19 @@ cpu3: cpu@300 {
 			d-cache-sets = <128>;
 			next-level-cache = <&l3_cache>;
 		};
-	};
 
-	/*
-	 * There are no private per-core L2 caches, but only the
-	 * L3 cache that appears to the CPU cores as L2 caches
-	 */
-	l3_cache: l3-cache {
-		compatible = "cache";
-		cache-level = <2>;
-		cache-unified;
-		cache-size = <0x80000>;
-		cache-line-size = <64>;
-		cache-sets = <512>;
+		/*
+		 * There are no private per-core L2 caches, but only the
+		 * L3 cache that appears to the CPU cores as L2 caches
+		 */
+		l3_cache: l3-cache {
+			compatible = "cache";
+			cache-level = <2>;
+			cache-unified;
+			cache-size = <0x80000>;
+			cache-line-size = <64>;
+			cache-sets = <512>;
+		};
 	};
 
 	cpu0_opp_table: opp-table-0 {

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

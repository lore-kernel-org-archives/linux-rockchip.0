Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A65BC48BF6
	for <linux-rockchip@archiver.kernel.org>; Sun,  3 Mar 2024 19:05:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RSZHogL49DBWmESgaqDcoyrppyy+ERwxl2mLvqOigA8=; b=cIbT8kqIL8PlpR
	eAwxK4yeQilrnVANTewfM7NqfsNdgD/T1Lz+e78U8FIqs7eJHYgiOFPToCNx6D5Lj9lTFrxzB62Pf
	l935ueDsW3jka1JKbAi8vwp45MNSophOs9HNn2L2UGeaI7AxssOMGdFHe5O3eF7uzOKpWdHJik4Nx
	Xtg/f/nwE+SStUgG0gRcHds6H8/ZBKpheKHDbruyc8TF42BZfNKdQNJGwyXrw1oPUhLGKlTEOo6ww
	OKTfSLkaFHXeBhGS7/Z5iqjt0UygOlObPjNLMCXqfDi8ee0T+mOyGcKD2tZnNBK+SnW9FMUAADo5E
	0Z4BKlJ8zUIWeY7cCY6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rgr8r-00000006WUu-01Ud;
	Sun, 03 Mar 2024 19:04:57 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rgr8m-00000006WQx-189K;
	Sun, 03 Mar 2024 19:04:54 +0000
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1709492679;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=PhdEsgsaQJt/ydW9Y2LBPPTw2gGhmjRcC5/1KGmz7K4=;
	b=ge9Be1XYE5k0igwgLfxN/tTtlKhKW/QbvmJWyFTbGrIvenz3kfBnfp8xcf8e2jygsf2j/E
	cNgYRGH1aswwwEAPIPrkBr+29ZnJ3w2YE9MafsmFYfl2y5vWsFf1R/ADBpxalEYSj7XTgr
	2JbHt9GHguQHzDRZWWTJThXkr79EUZxl2BfAKjCTYLjJ1Rf6IRoy6e5iP6tynPMicsZ+Jj
	04YwwBVmKJEKorKJyjk+RX/JblntjtqV3kvM+6G2EFZ4nfMnNA5mhE4aH8ULpLd4PITNK3
	xD/HsgrJYtWMT9a8/njVU0d/ZQ1JMsevw5schtSBC+oNCP/F5lPl/Kx2yWt/qA==
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Subject: [PATCH] arm64: dts: rockchip: Add cache information to the SoC dtsi for RK3328
Date: Sun,  3 Mar 2024 20:04:27 +0100
Message-Id: <e61173d87f5f41af80e6f87f8820ce8d06f7c20c.1709491127.git.dsimic@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240303_110452_949548_CFCA6A9F 
X-CRM114-Status: GOOD (  11.50  )
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

Add missing cache information to the Rockchip RK3328 SoC dtsi, to allow
the userspace, which includes /proc/cpuinfo and lscpu(1), to present proper
RK3328 cache information.

While there, use a more self-descriptive label for the L2 cache node, which
also makes it more consistent with other SoC dtsi files.

The cache parameters for the RK3328 dtsi were obtained and partially derived
by hand from the cache size and layout specifications found in the following
datasheets, official vendor websites, and technical reference manuals:

  - Rockchip RK3328 datasheet, version 1.4
  - https://opensource.rock-chips.com/wiki_RK3328, accessed on 2024-02-28
  - ARM Cortex-A53 revision r0p3 TRM, version E

For future reference, here's a brief summary of the documentation:

  - All caches employ the 64-byte cache line length
  - Each Cortex-A53 core has 32 KB of L1 2-way, set-associative instruction
    cache and 32 KB of L1 4-way, set-associative data cache
  - The entire SoC has 256 KB of unified L2 16-way, set-associative cache

The RK3328 SoC dtsi is also used for the single RK3318-based supported board.
Unfortunately, no datasheet is available for the RK3318, but some unofficial
sources state that its L2 cache size is the same as RK3328's, so it's perhaps
safe to assume the same for the L1 instruction and data cache sizes.

Signed-off-by: Dragan Simic <dsimic@manjaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 37 ++++++++++++++++++++----
 1 file changed, 32 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 7b4c15c4a9c3..ac2846c33dc9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -46,47 +46,71 @@ cpu0: cpu@0 {
 			cpu-idle-states = <&CPU_SLEEP>;
 			dynamic-power-coefficient = <120>;
 			enable-method = "psci";
-			next-level-cache = <&l2>;
 			operating-points-v2 = <&cpu0_opp_table>;
+			i-cache-size = <0x8000>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <256>;
+			d-cache-size = <0x8000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <128>;
+			next-level-cache = <&l2_cache>;
 		};
 
 		cpu1: cpu@1 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a53";
 			reg = <0x0 0x1>;
 			clocks = <&cru ARMCLK>;
 			#cooling-cells = <2>;
 			cpu-idle-states = <&CPU_SLEEP>;
 			dynamic-power-coefficient = <120>;
 			enable-method = "psci";
-			next-level-cache = <&l2>;
 			operating-points-v2 = <&cpu0_opp_table>;
+			i-cache-size = <0x8000>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <256>;
+			d-cache-size = <0x8000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <128>;
+			next-level-cache = <&l2_cache>;
 		};
 
 		cpu2: cpu@2 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a53";
 			reg = <0x0 0x2>;
 			clocks = <&cru ARMCLK>;
 			#cooling-cells = <2>;
 			cpu-idle-states = <&CPU_SLEEP>;
 			dynamic-power-coefficient = <120>;
 			enable-method = "psci";
-			next-level-cache = <&l2>;
 			operating-points-v2 = <&cpu0_opp_table>;
+			i-cache-size = <0x8000>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <256>;
+			d-cache-size = <0x8000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <128>;
+			next-level-cache = <&l2_cache>;
 		};
 
 		cpu3: cpu@3 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a53";
 			reg = <0x0 0x3>;
 			clocks = <&cru ARMCLK>;
 			#cooling-cells = <2>;
 			cpu-idle-states = <&CPU_SLEEP>;
 			dynamic-power-coefficient = <120>;
 			enable-method = "psci";
-			next-level-cache = <&l2>;
 			operating-points-v2 = <&cpu0_opp_table>;
+			i-cache-size = <0x8000>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <256>;
+			d-cache-size = <0x8000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <128>;
+			next-level-cache = <&l2_cache>;
 		};
 
 		idle-states {
@@ -102,10 +126,13 @@ CPU_SLEEP: cpu-sleep {
 			};
 		};
 
-		l2: l2-cache0 {
+		l2_cache: l2-cache {
 			compatible = "cache";
 			cache-level = <2>;
 			cache-unified;
+			cache-size = <0x40000>;
+			cache-line-size = <64>;
+			cache-sets = <256>;
 		};
 	};
 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

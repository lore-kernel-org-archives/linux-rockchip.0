Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2630C4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Dec 2023 05:01:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=u6+DxiZaZ6g+xgNZBR1XVkx2gt+kG9BmyNRjdDWsmJg=; b=Kl4f0khScAKS/n
	PPtGK6GetP5CK3aKYFa7FTUFxgoDaLdToodzv4DeX9eeeqOxKHrR1P+LnDtx77/v+69ZWcvMtEKLA
	cUzQ+2n249wMganidnvyqN0tNES7fLloPFJDjlJnYYuLB4Hw6yd42HaHnRUz9GoM81YZJKZTw+QL5
	mIWPI7ibt7qr7eqwRArrfm3Z0YXnLq6p8ZR90Ti+z4u2geuJXPFQdly9SnN/uQBcsn5i4tpd0s3m5
	O7XuPr6L/w8DAox0spcPq0IqQLaT2oSICiZlKJhpekZSbNjXdgDspY2xdFijfIzgdJSMDL3A7UfXX
	EinPwmdLr7ym5iqp+5lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rE0Ja-0021f7-2c;
	Fri, 15 Dec 2023 05:00:46 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rE0JV-0021d0-2M;
	Fri, 15 Dec 2023 05:00:44 +0000
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1702616435;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=VcoNo0KyUxk0+n8xUofO+4A/DZAwZQKaiBkiB0Y6XvI=;
	b=RQs34OgL453y+Fw8OnOinVL2+hQ653DAsixlcz8YVzvcq5ta/5DoLGHB4FelWDXYXX5HxP
	8hkp16MfgCV7q3HMRcrpeXRroPxlSsCUspNh6/kcuUq8YPu0PUmR3quirr/jduMRerti4w
	D20f/fPyxft80bFjveotsRbGySIna0ynmUHg5aNnHqtSYLfXXNz2jGRVBkqhgGngq1Htd3
	4ZGUCzYvTUs33nujuWEwE7UTQvmQJauQ/I17G5ko50sxpJgI9w2Wjvr2J8JxppEgnxbz3k
	fJQNn/1HBfd53mC9rCxm7AmPfKtnibILN6243pJZAVXMnpwi2i3XvDICrXAROQ==
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	Kyle Copperfield <kmcopper@danwin1210.me>
Subject: [PATCH] arm64: dts: rockchip: Add cache information to the SoC dtsi for RK3399
Date: Fri, 15 Dec 2023 06:00:33 +0100
Message-Id: <be3cbcae5c40fa72a52845d30dcc66c847a98cfa.1702616304.git.dsimic@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231214_210042_372013_E3C5154E 
X-CRM114-Status: GOOD (  12.64  )
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

Add missing cache information to the Rockchip RK3399 SoC dtsi.  The specified
values were derived by hand from the cache size specifications available from
the RK3399 datasheet;  for future reference, here's a brief summary:

  - Each Cortex-A72 core has 48 KB of L1 instruction cache and
    32 KB of L1 data cache available, four-way set associative
  - Each Cortex-A53 core core has 32 KB of instruction cache and
    32 KB of L1 data cache available, four-way set associative
  - The big (A72) cluster has 1 MB of unified L2 cache available
  - The little (A53) cluster has 512 KB of unified L2 cache available

This patch allows /proc/cpuinfo and lscpu(1) to display proper RK3399 cache
information, and it eliminates the following error in the kernel log:

  cacheinfo: Unable to detect cache hierarchy for CPU 0

While there, add a couple of somewhat useful comments, which may help a bit
anyone going through the RK3399 SoC dtsi.

Co-developed-by: Kyle Copperfield <kmcopper@danwin1210.me>
Signed-off-by: Dragan Simic <dsimic@manjaro.org>
---

Notes:
    It's been a while since Kyle and I worked on this patch, and his email
    address seems to no longer work.  Unfortunately, I have no idea is there
    some other email address that he actually uses now.  However, Kyle needs
    to be mentioned as a co-author of this patch.

 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 64 +++++++++++++++++++++++-
 1 file changed, 62 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index da0dfb237f85..f38c27f87cc9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -41,22 +41,22 @@ cpus {
 		#size-cells = <0>;
 
 		cpu-map {
-			cluster0 {
+			cluster0 {	/* Cortex-A53 */
 				core0 {
 					cpu = <&cpu_l0>;
 				};
 				core1 {
 					cpu = <&cpu_l1>;
 				};
 				core2 {
 					cpu = <&cpu_l2>;
 				};
 				core3 {
 					cpu = <&cpu_l3>;
 				};
 			};
 
-			cluster1 {
+			cluster1 {	/* Cortex-A72 */
 				core0 {
 					cpu = <&cpu_b0>;
 				};
@@ -76,54 +76,89 @@ cpu_l0: cpu@0 {
 			#cooling-cells = <2>; /* min followed by max */
 			dynamic-power-coefficient = <100>;
 			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
+			i-cache-size = <0x8000>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <256>;
+			d-cache-size = <0x8000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <128>;
+			next-level-cache = <&l2_cache_l>;
 		};
 
 		cpu_l1: cpu@1 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a53";
 			reg = <0x0 0x1>;
 			enable-method = "psci";
 			capacity-dmips-mhz = <485>;
 			clocks = <&cru ARMCLKL>;
 			#cooling-cells = <2>; /* min followed by max */
 			dynamic-power-coefficient = <100>;
 			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
+			i-cache-size = <0x8000>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <256>;
+			d-cache-size = <0x8000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <128>;
+			next-level-cache = <&l2_cache_l>;
 		};
 
 		cpu_l2: cpu@2 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a53";
 			reg = <0x0 0x2>;
 			enable-method = "psci";
 			capacity-dmips-mhz = <485>;
 			clocks = <&cru ARMCLKL>;
 			#cooling-cells = <2>; /* min followed by max */
 			dynamic-power-coefficient = <100>;
 			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
+			i-cache-size = <0x8000>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <256>;
+			d-cache-size = <0x8000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <128>;
+			next-level-cache = <&l2_cache_l>;
 		};
 
 		cpu_l3: cpu@3 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a53";
 			reg = <0x0 0x3>;
 			enable-method = "psci";
 			capacity-dmips-mhz = <485>;
 			clocks = <&cru ARMCLKL>;
 			#cooling-cells = <2>; /* min followed by max */
 			dynamic-power-coefficient = <100>;
 			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
+			i-cache-size = <0x8000>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <256>;
+			d-cache-size = <0x8000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <128>;
+			next-level-cache = <&l2_cache_l>;
 		};
 
 		cpu_b0: cpu@100 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a72";
 			reg = <0x0 0x100>;
 			enable-method = "psci";
 			capacity-dmips-mhz = <1024>;
 			clocks = <&cru ARMCLKB>;
 			#cooling-cells = <2>; /* min followed by max */
 			dynamic-power-coefficient = <436>;
 			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
+			i-cache-size = <0xC000>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <256>;
+			d-cache-size = <0x8000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <256>;
+			next-level-cache = <&l2_cache_b>;
 
 			thermal-idle {
 				#cooling-cells = <2>;
@@ -142,14 +177,39 @@ cpu_b1: cpu@101 {
 			#cooling-cells = <2>; /* min followed by max */
 			dynamic-power-coefficient = <436>;
 			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
+			i-cache-size = <0xC000>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <256>;
+			d-cache-size = <0x8000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <256>;
+			next-level-cache = <&l2_cache_b>;
 
 			thermal-idle {
 				#cooling-cells = <2>;
 				duration-us = <10000>;
 				exit-latency-us = <500>;
 			};
 		};
 
+		l2_cache_l: l2-cache-cluster0 {
+			compatible = "cache";
+			cache-level = <2>;
+			cache-unified;
+			cache-size = <0x80000>;
+			cache-line-size = <64>;
+			cache-sets = <512>;
+		};
+
+		l2_cache_b: l2-cache-cluster1 {
+			compatible = "cache";
+			cache-level = <2>;
+			cache-unified;
+			cache-size = <0x100000>;
+			cache-line-size = <64>;
+			cache-sets = <1024>;
+		};
+
 		idle-states {
 			entry-method = "psci";
 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF4C8C54798
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Mar 2024 04:25:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Vg0wh5DW3tNqvOArH75wwMkq837xx4h83Fho26GLsTw=; b=deZdlRpokmkAQM
	6FOi+/hvMYFgnmyS/oZQrPeuDXWm5l2B/V4ZIQD2b9hsxSN7Zmn71W1SQgavXIf2L72iv8SEoAHmP
	++SloQhAErD1rUMiibb4Cu47hpaoh4Xbp/p1WBf5rXbURjVvkKdJLld7x3dUgsUHag5bC5DeR/rbY
	WluKHy9NYeuhT4spXO/FCKGnHp3SJKbwPFf/4LdnUB6uRrlUOUmYOBa19HIm9v+eI3CozWqMMM/YR
	BXQ8XqI4gVeGJwBXU0YkiuoFIZ4D4CYaCHzrsaiR9IGt3XFs5uzQFtjHrO0DU3cBbTBPe7/CAQOAv
	SaWABmpDAVZpKIqHMY0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rioGV-0000000CQkK-0YvX;
	Sat, 09 Mar 2024 04:24:55 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rioGR-0000000CQil-30Rn;
	Sat, 09 Mar 2024 04:24:53 +0000
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1709958289;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=k95tCp5yd8JoavOvinMV7AsxpFcG60G3M9Ytmyw3wrc=;
	b=wJnpVXmhNcJ9qA626hwd/17ny5WlO6FK7ALO9z140sfBSZb/mI95fxTSgrtp4LDXc97kUN
	qPTzU3j/Ctl0Zxq/txGiH8gueVM7Vcf19aCboUB6t3TS+wEt2XeAPsufl1iRzAArTUTQUA
	f+GAw8vhQ/Y7cUIqvSYGDcHV/VkttVy17F9yqHrSOaybR0SzLQZfhcoawd4LGX1kax+RFc
	6JMH7x91LeHfEcE3k08XmeNiJA6NpIioJmhnUyo9eP7bzDSwrmSfLq1/xtWAqyenhu/g7Q
	mIvGoatUUgGDjib/qvsyyzoDIiSO/pl+VmWqQdp+S/DATA3IPALYRLanKYxUTA==
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	didi.debian@cknow.org,
	Anand Moon <linux.amoon@gmail.com>
Subject: [PATCH v2] arm64: dts: rockchip: Add cache information to the SoC dtsi for RK3328
Date: Sat,  9 Mar 2024 05:24:42 +0100
Message-Id: <a681b3c6dbf7b25b1527b11cea5ae0d6d1733714.1709958234.git.dsimic@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240308_202452_080125_607B8E5C 
X-CRM114-Status: GOOD (  14.45  )
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
the userspace, which includes lscpu(1) that uses the virtual files provided
by the kernel under the /sys/devices/system/cpu directory, to display the
proper RK3328 cache information.

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

Reviewed-by: Anand Moon <linux.amoon@gmail.com>
Signed-off-by: Dragan Simic <dsimic@manjaro.org>
---

Notes:
    Changes in v2:
      - Corrected the patch description to more accurately describe the actual
        effects of the patch to the userspace, as spotted by Diederik de Haas
        while testing a similar patch for the Rockchip RK356x SoC dtsi [1]
      - No changes were made to the actual source code patch
      - Collected one Reviewed-by tag
      - Link to v1: https://lore.kernel.org/linux-rockchip/e61173d87f5f41af80e6f87f8820ce8d06f7c20c.1709491127.git.dsimic@manjaro.org/T/#u
    
    [1] https://lore.kernel.org/linux-rockchip/90122541.GozVr7r7Y5@bagend/

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

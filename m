Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F280C47074
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jan 2024 08:50:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=m9lLMylrbIafANMPWCs9fMryUyIs1sGUrN0apUyuNlU=; b=duoSaRWZrlHxNInmuRotxQvMqA
	3E1wwuKxvMkx+Cz47CmfCDLJkEPiNrrmfnKbuGmeMu0K5VCI0o3iyj7es8BL78+VUaOl9VD8GP7IB
	tV78SchoSNsHfWrTtfSy/3xjp8G1aLoJAW8o0EfHvTb2grGC08Q2I+OMZwwillI4fY2vAr60nwFLE
	+OwBEoLSgwisbbPjGOmzBgl7o26aMuDWLa0ggOrbS582iBtfhwLRXr+A3oOA4sk4RLYTsrXGgtRJO
	JJsxgvgr7mI+th6x7nqVAYgwvgumhGmQ5HMztijGcdbWAWrDCPwSnR97vv933pwQFwl6JduNMif2O
	gcs6IQkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLJQh-00DGgM-0a;
	Thu, 04 Jan 2024 08:50:19 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLJQc-00DGdG-1c;
	Thu, 04 Jan 2024 08:50:17 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1704358205;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=nNRHHcXmfQz1s7971EXzOHFeiT9Iqm3xhoYH9L9nmMA=;
	b=PyvOFccN4q0JOoQSx4NNwIU/PDdhdkfrEtBRmrN4kSFu1IOMTY2yjlwOFUZ/1kk7L5n8ug
	mownUtinFtGWiu2lYX8IhBZo+KKVr3ql4b7sdJfaz3jxlgToUW9EgZalOi3ulAVBs4K3iZ
	pt5/fgIq7Le/rwx+ztaDbv/MdxcSSP4LnBoMzrYkyqXljHZIDa8NgKttTWnVbXNRIxHgei
	l3CHwcTmItOowyekY6I7NTsZVUR4bAaMO49Q20kORCsImjLal98DnsX2OgpSIrtkXTx21c
	unIZGE+0oXSm5563IdI2vdMDenrTwt3MTnIsas1F+YR4rkB70fUbIjHtHrRYvw==
Date: Thu, 04 Jan 2024 09:50:04 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, Kyle Copperfield
 <kmcopper@danwin1210.me>
Subject: Re: [PATCH] arm64: dts: rockchip: Add cache information to the SoC
 dtsi for RK3399
In-Reply-To: <be3cbcae5c40fa72a52845d30dcc66c847a98cfa.1702616304.git.dsimic@manjaro.org>
References: <be3cbcae5c40fa72a52845d30dcc66c847a98cfa.1702616304.git.dsimic@manjaro.org>
Message-ID: <665196c24beafec415e4a3123cc625c8@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240104_005015_181557_014E4077 
X-CRM114-Status: GOOD (  27.53  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello,

Just checking, is there something preventing this patch from becoming 
accepted?  I'd appreciate if you'd provide some feedback and let me know 
if there's something in the patch that needs adjusting.

By the way, Stefan Nagy noted that he'll have this patch tested after 
the holidays.  I guess that should help.


On 2023-12-15 06:00, Dragan Simic wrote:
> Add missing cache information to the Rockchip RK3399 SoC dtsi.  The 
> specified
> values were derived by hand from the cache size specifications 
> available from
> the RK3399 datasheet;  for future reference, here's a brief summary:
> 
>   - Each Cortex-A72 core has 48 KB of L1 instruction cache and
>     32 KB of L1 data cache available, four-way set associative
>   - Each Cortex-A53 core core has 32 KB of instruction cache and
>     32 KB of L1 data cache available, four-way set associative
>   - The big (A72) cluster has 1 MB of unified L2 cache available
>   - The little (A53) cluster has 512 KB of unified L2 cache available
> 
> This patch allows /proc/cpuinfo and lscpu(1) to display proper RK3399 
> cache
> information, and it eliminates the following error in the kernel log:
> 
>   cacheinfo: Unable to detect cache hierarchy for CPU 0
> 
> While there, add a couple of somewhat useful comments, which may help a 
> bit
> anyone going through the RK3399 SoC dtsi.
> 
> Co-developed-by: Kyle Copperfield <kmcopper@danwin1210.me>
> Signed-off-by: Dragan Simic <dsimic@manjaro.org>
> ---
> 
> Notes:
>     It's been a while since Kyle and I worked on this patch, and his 
> email
>     address seems to no longer work.  Unfortunately, I have no idea is 
> there
>     some other email address that he actually uses now.  However, Kyle 
> needs
>     to be mentioned as a co-author of this patch.
> 
>  arch/arm64/boot/dts/rockchip/rk3399.dtsi | 64 +++++++++++++++++++++++-
>  1 file changed, 62 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> index da0dfb237f85..f38c27f87cc9 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> @@ -41,22 +41,22 @@ cpus {
>  		#size-cells = <0>;
> 
>  		cpu-map {
> -			cluster0 {
> +			cluster0 {	/* Cortex-A53 */
>  				core0 {
>  					cpu = <&cpu_l0>;
>  				};
>  				core1 {
>  					cpu = <&cpu_l1>;
>  				};
>  				core2 {
>  					cpu = <&cpu_l2>;
>  				};
>  				core3 {
>  					cpu = <&cpu_l3>;
>  				};
>  			};
> 
> -			cluster1 {
> +			cluster1 {	/* Cortex-A72 */
>  				core0 {
>  					cpu = <&cpu_b0>;
>  				};
> @@ -76,54 +76,89 @@ cpu_l0: cpu@0 {
>  			#cooling-cells = <2>; /* min followed by max */
>  			dynamic-power-coefficient = <100>;
>  			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
> +			i-cache-size = <0x8000>;
> +			i-cache-line-size = <64>;
> +			i-cache-sets = <256>;
> +			d-cache-size = <0x8000>;
> +			d-cache-line-size = <64>;
> +			d-cache-sets = <128>;
> +			next-level-cache = <&l2_cache_l>;
>  		};
> 
>  		cpu_l1: cpu@1 {
>  			device_type = "cpu";
>  			compatible = "arm,cortex-a53";
>  			reg = <0x0 0x1>;
>  			enable-method = "psci";
>  			capacity-dmips-mhz = <485>;
>  			clocks = <&cru ARMCLKL>;
>  			#cooling-cells = <2>; /* min followed by max */
>  			dynamic-power-coefficient = <100>;
>  			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
> +			i-cache-size = <0x8000>;
> +			i-cache-line-size = <64>;
> +			i-cache-sets = <256>;
> +			d-cache-size = <0x8000>;
> +			d-cache-line-size = <64>;
> +			d-cache-sets = <128>;
> +			next-level-cache = <&l2_cache_l>;
>  		};
> 
>  		cpu_l2: cpu@2 {
>  			device_type = "cpu";
>  			compatible = "arm,cortex-a53";
>  			reg = <0x0 0x2>;
>  			enable-method = "psci";
>  			capacity-dmips-mhz = <485>;
>  			clocks = <&cru ARMCLKL>;
>  			#cooling-cells = <2>; /* min followed by max */
>  			dynamic-power-coefficient = <100>;
>  			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
> +			i-cache-size = <0x8000>;
> +			i-cache-line-size = <64>;
> +			i-cache-sets = <256>;
> +			d-cache-size = <0x8000>;
> +			d-cache-line-size = <64>;
> +			d-cache-sets = <128>;
> +			next-level-cache = <&l2_cache_l>;
>  		};
> 
>  		cpu_l3: cpu@3 {
>  			device_type = "cpu";
>  			compatible = "arm,cortex-a53";
>  			reg = <0x0 0x3>;
>  			enable-method = "psci";
>  			capacity-dmips-mhz = <485>;
>  			clocks = <&cru ARMCLKL>;
>  			#cooling-cells = <2>; /* min followed by max */
>  			dynamic-power-coefficient = <100>;
>  			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
> +			i-cache-size = <0x8000>;
> +			i-cache-line-size = <64>;
> +			i-cache-sets = <256>;
> +			d-cache-size = <0x8000>;
> +			d-cache-line-size = <64>;
> +			d-cache-sets = <128>;
> +			next-level-cache = <&l2_cache_l>;
>  		};
> 
>  		cpu_b0: cpu@100 {
>  			device_type = "cpu";
>  			compatible = "arm,cortex-a72";
>  			reg = <0x0 0x100>;
>  			enable-method = "psci";
>  			capacity-dmips-mhz = <1024>;
>  			clocks = <&cru ARMCLKB>;
>  			#cooling-cells = <2>; /* min followed by max */
>  			dynamic-power-coefficient = <436>;
>  			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
> +			i-cache-size = <0xC000>;
> +			i-cache-line-size = <64>;
> +			i-cache-sets = <256>;
> +			d-cache-size = <0x8000>;
> +			d-cache-line-size = <64>;
> +			d-cache-sets = <256>;
> +			next-level-cache = <&l2_cache_b>;
> 
>  			thermal-idle {
>  				#cooling-cells = <2>;
> @@ -142,14 +177,39 @@ cpu_b1: cpu@101 {
>  			#cooling-cells = <2>; /* min followed by max */
>  			dynamic-power-coefficient = <436>;
>  			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
> +			i-cache-size = <0xC000>;
> +			i-cache-line-size = <64>;
> +			i-cache-sets = <256>;
> +			d-cache-size = <0x8000>;
> +			d-cache-line-size = <64>;
> +			d-cache-sets = <256>;
> +			next-level-cache = <&l2_cache_b>;
> 
>  			thermal-idle {
>  				#cooling-cells = <2>;
>  				duration-us = <10000>;
>  				exit-latency-us = <500>;
>  			};
>  		};
> 
> +		l2_cache_l: l2-cache-cluster0 {
> +			compatible = "cache";
> +			cache-level = <2>;
> +			cache-unified;
> +			cache-size = <0x80000>;
> +			cache-line-size = <64>;
> +			cache-sets = <512>;
> +		};
> +
> +		l2_cache_b: l2-cache-cluster1 {
> +			compatible = "cache";
> +			cache-level = <2>;
> +			cache-unified;
> +			cache-size = <0x100000>;
> +			cache-line-size = <64>;
> +			cache-sets = <1024>;
> +		};
> +
>  		idle-states {
>  			entry-method = "psci";
> 
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

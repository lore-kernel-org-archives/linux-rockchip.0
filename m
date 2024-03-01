Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2CCEC5475B
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Mar 2024 06:31:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bOWOyjnbRpYEsxU9vCDnMwZr0lvf3dFubDDAu1E1LFo=; b=gsJR6f/Wfncf4ekRkwRQG56NME
	2YbC3R1k1HqdMfLyKGHMFBLYGkQS3J4veJjAvtNk1kxMQ2n6OOSq7udOADI4QJhd1EChPu8jBScUq
	PdMVQPJzZxOFsw9PB0zfhW6LZf/1ID+NsgyrFFnit1kH+pyaK5HThO8NFgyVrKOb0WrOcHqzNIKGd
	FANW/g7rolqx8IFrqZK+UOour4dqQ2eEFxRorBZlcrmw/qH390ApupUtM5QiRiyW7JUuAH6rwFytp
	kc66eVIFyKv+UZ85j69QclvsoQX2Hgfo/Zkskmo/C5ksga1vc0D5stgHd2jX2D2hVcLGv4xNeXjEv
	TGqLKOnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfwQl-0000000GZox-3yIe;
	Fri, 01 Mar 2024 06:31:39 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfwQh-0000000GZns-3cJG;
	Fri, 01 Mar 2024 06:31:37 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1709274694;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=19oA5w8w18TqO556/nPS0fE6RqgBrglWY5neguw7rv0=;
	b=AWbAp8k0/oAKMHwsquQrculVXUVQt/nBI9yI/n32WQSAve3Kkacd72OGZhTEMIfpQaI3oo
	rvoORGDg7gm+yVfRi4AhUYV4LijY5pSmuTm0G+NCy1kQ5uV10i1rWD/mINb9inwJhI3t1x
	Guge50tM8ZESHCS9TBtB8B0WXUeqbmfKYk2FLRqibFxutBhrpaEJxg0t/5LY7osxlZSSjd
	h40Z+7IQizvgTACWzodMdEdSAj4NvpQTVqzthujohmWH6ehII9vCe34dDbPU/BMuyTYZyT
	+QA6s8VaOAmXulo8N5praFq5SwmrsvHRjqtokPTX12nCbSmPFN9qDn/1i7OJJA==
Date: Fri, 01 Mar 2024 07:31:33 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Alexey Charkov <alchark@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Daniel Lezcano
 <daniel.lezcano@linaro.org>, Viresh Kumar <viresh.kumar@linaro.org>, Chen-Yu
 Tsai <wens@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 4/5] arm64: dts: rockchip: Add OPP data for CPU cores
 on RK3588
In-Reply-To: <20240229-rk-dts-additions-v3-4-6afe8473a631@gmail.com>
References: <20240229-rk-dts-additions-v3-0-6afe8473a631@gmail.com>
 <20240229-rk-dts-additions-v3-4-6afe8473a631@gmail.com>
Message-ID: <ed2b97a0487455aaef6a6e6144165512@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240229_223136_248344_D5F11603 
X-CRM114-Status: GOOD (  25.95  )
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

On 2024-02-29 20:26, Alexey Charkov wrote:
> By default the CPUs on RK3588 start up in a conservative performance
> mode. Add frequency and voltage mappings to the device tree to enable
> dynamic scaling via cpufreq.
> 
> OPP values are adapted from Radxa's downstream kernel for Rock 5B [1],
> stripping them down to the minimum frequency and voltage combinations
> as expected by the generic upstream cpufreq-dt driver, and also 
> dropping
> those OPPs that don't differ in voltage but only in frequency (keeping
> the top frequency OPP in each case).

Please, let's consider extracting the OPPs into a separate 
rk3588s-opp.dtsi
file, as I already explained in detail and proposed in the message 
linked
below.  To be fair, it might also be seen as redundant, because the 
RK3399
does that because of the need for different OPPs for different RK3399 
SoC
variants, but it would make leaving the TSADC disabled 100% safe.

Though, the RK3328 SoC dtsi also leaves the TSADC disabled on the SoC 
level
and enables it for each RK3328-based board, so I'm no longer sure do we
really need a separate rk3588s-opp.dtsi file to be on the 100% safe side
with the TSADC disabled on the RK3588(s) SoC level.

- 
https://lore.kernel.org/linux-rockchip/ad00189e1a25ca90128be6c8b3841b77@manjaro.org/

> Note that this patch ignores voltage scaling for the CPU memory
> interface which the downstream kernel does through a custom cpufreq
> driver, and which is why the downstream version has two sets of voltage
> values for each OPP (the second one being meant for the memory
> interface supply regulator). This is done instead via regulator
> coupling between CPU and memory interface supplies on affected boards.

I'm still digging through various documents, to find a more clear 
explanation
of what those *_MEM_* voltages are exactly for.  I'll reply in more 
detail in
the respective patch thread, of course.

> This has been tested on Rock 5B with u-boot 2023.11 compiled from
> Collabora's integration tree [2] with binary bl31 and appears to be
> stable both under active cooling and passive cooling (with throttling)
> 
> [1] 
> https://github.com/radxa/kernel/blob/stable-5.10-rock5/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> [2] 
> https://gitlab.collabora.com/hardware-enablement/rockchip-3588/u-boot
> 
> Signed-off-by: Alexey Charkov <alchark@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 122 
> ++++++++++++++++++++++++++++++
>  1 file changed, 122 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> index 9bf197358642..bd39c5c47bfb 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> @@ -97,6 +97,7 @@ cpu_l0: cpu@0 {
>  			clocks = <&scmi_clk SCMI_CLK_CPUL>;
>  			assigned-clocks = <&scmi_clk SCMI_CLK_CPUL>;
>  			assigned-clock-rates = <816000000>;
> +			operating-points-v2 = <&cluster0_opp_table>;
>  			cpu-idle-states = <&CPU_SLEEP>;
>  			i-cache-size = <32768>;
>  			i-cache-line-size = <64>;
> @@ -116,6 +117,7 @@ cpu_l1: cpu@100 {
>  			enable-method = "psci";
>  			capacity-dmips-mhz = <530>;
>  			clocks = <&scmi_clk SCMI_CLK_CPUL>;
> +			operating-points-v2 = <&cluster0_opp_table>;
>  			cpu-idle-states = <&CPU_SLEEP>;
>  			i-cache-size = <32768>;
>  			i-cache-line-size = <64>;
> @@ -135,6 +137,7 @@ cpu_l2: cpu@200 {
>  			enable-method = "psci";
>  			capacity-dmips-mhz = <530>;
>  			clocks = <&scmi_clk SCMI_CLK_CPUL>;
> +			operating-points-v2 = <&cluster0_opp_table>;
>  			cpu-idle-states = <&CPU_SLEEP>;
>  			i-cache-size = <32768>;
>  			i-cache-line-size = <64>;
> @@ -154,6 +157,7 @@ cpu_l3: cpu@300 {
>  			enable-method = "psci";
>  			capacity-dmips-mhz = <530>;
>  			clocks = <&scmi_clk SCMI_CLK_CPUL>;
> +			operating-points-v2 = <&cluster0_opp_table>;
>  			cpu-idle-states = <&CPU_SLEEP>;
>  			i-cache-size = <32768>;
>  			i-cache-line-size = <64>;
> @@ -175,6 +179,7 @@ cpu_b0: cpu@400 {
>  			clocks = <&scmi_clk SCMI_CLK_CPUB01>;
>  			assigned-clocks = <&scmi_clk SCMI_CLK_CPUB01>;
>  			assigned-clock-rates = <816000000>;
> +			operating-points-v2 = <&cluster1_opp_table>;
>  			cpu-idle-states = <&CPU_SLEEP>;
>  			i-cache-size = <65536>;
>  			i-cache-line-size = <64>;
> @@ -194,6 +199,7 @@ cpu_b1: cpu@500 {
>  			enable-method = "psci";
>  			capacity-dmips-mhz = <1024>;
>  			clocks = <&scmi_clk SCMI_CLK_CPUB01>;
> +			operating-points-v2 = <&cluster1_opp_table>;
>  			cpu-idle-states = <&CPU_SLEEP>;
>  			i-cache-size = <65536>;
>  			i-cache-line-size = <64>;
> @@ -215,6 +221,7 @@ cpu_b2: cpu@600 {
>  			clocks = <&scmi_clk SCMI_CLK_CPUB23>;
>  			assigned-clocks = <&scmi_clk SCMI_CLK_CPUB23>;
>  			assigned-clock-rates = <816000000>;
> +			operating-points-v2 = <&cluster2_opp_table>;
>  			cpu-idle-states = <&CPU_SLEEP>;
>  			i-cache-size = <65536>;
>  			i-cache-line-size = <64>;
> @@ -234,6 +241,7 @@ cpu_b3: cpu@700 {
>  			enable-method = "psci";
>  			capacity-dmips-mhz = <1024>;
>  			clocks = <&scmi_clk SCMI_CLK_CPUB23>;
> +			operating-points-v2 = <&cluster2_opp_table>;
>  			cpu-idle-states = <&CPU_SLEEP>;
>  			i-cache-size = <65536>;
>  			i-cache-line-size = <64>;
> @@ -348,6 +356,120 @@ l3_cache: l3-cache {
>  		};
>  	};
> 
> +	cluster0_opp_table: opp-table-cluster0 {
> +		compatible = "operating-points-v2";
> +		opp-shared;
> +
> +		opp-1008000000 {
> +			opp-hz = /bits/ 64 <1008000000>;
> +			opp-microvolt = <675000 675000 950000>;
> +			clock-latency-ns = <40000>;
> +		};
> +		opp-1200000000 {
> +			opp-hz = /bits/ 64 <1200000000>;
> +			opp-microvolt = <712500 712500 950000>;
> +			clock-latency-ns = <40000>;
> +		};
> +		opp-1416000000 {
> +			opp-hz = /bits/ 64 <1416000000>;
> +			opp-microvolt = <762500 762500 950000>;
> +			clock-latency-ns = <40000>;
> +			opp-suspend;
> +		};
> +		opp-1608000000 {
> +			opp-hz = /bits/ 64 <1608000000>;
> +			opp-microvolt = <850000 850000 950000>;
> +			clock-latency-ns = <40000>;
> +		};
> +		opp-1800000000 {
> +			opp-hz = /bits/ 64 <1800000000>;
> +			opp-microvolt = <950000 950000 950000>;
> +			clock-latency-ns = <40000>;
> +		};
> +	};
> +
> +	cluster1_opp_table: opp-table-cluster1 {
> +		compatible = "operating-points-v2";
> +		opp-shared;
> +
> +		opp-1200000000 {
> +			opp-hz = /bits/ 64 <1200000000>;
> +			opp-microvolt = <675000 675000 1000000>;
> +			clock-latency-ns = <40000>;
> +		};
> +		opp-1416000000 {
> +			opp-hz = /bits/ 64 <1416000000>;
> +			opp-microvolt = <725000 725000 1000000>;
> +			clock-latency-ns = <40000>;
> +		};
> +		opp-1608000000 {
> +			opp-hz = /bits/ 64 <1608000000>;
> +			opp-microvolt = <762500 762500 1000000>;
> +			clock-latency-ns = <40000>;
> +		};
> +		opp-1800000000 {
> +			opp-hz = /bits/ 64 <1800000000>;
> +			opp-microvolt = <850000 850000 1000000>;
> +			clock-latency-ns = <40000>;
> +		};
> +		opp-2016000000 {
> +			opp-hz = /bits/ 64 <2016000000>;
> +			opp-microvolt = <925000 925000 1000000>;
> +			clock-latency-ns = <40000>;
> +		};
> +		opp-2208000000 {
> +			opp-hz = /bits/ 64 <2208000000>;
> +			opp-microvolt = <987500 987500 1000000>;
> +			clock-latency-ns = <40000>;
> +		};
> +		opp-2400000000 {
> +			opp-hz = /bits/ 64 <2400000000>;
> +			opp-microvolt = <1000000 1000000 1000000>;
> +			clock-latency-ns = <40000>;
> +		};
> +	};
> +
> +	cluster2_opp_table: opp-table-cluster2 {
> +		compatible = "operating-points-v2";
> +		opp-shared;
> +
> +		opp-1200000000 {
> +			opp-hz = /bits/ 64 <1200000000>;
> +			opp-microvolt = <675000 675000 1000000>;
> +			clock-latency-ns = <40000>;
> +		};
> +		opp-1416000000 {
> +			opp-hz = /bits/ 64 <1416000000>;
> +			opp-microvolt = <725000 725000 1000000>;
> +			clock-latency-ns = <40000>;
> +		};
> +		opp-1608000000 {
> +			opp-hz = /bits/ 64 <1608000000>;
> +			opp-microvolt = <762500 762500 1000000>;
> +			clock-latency-ns = <40000>;
> +		};
> +		opp-1800000000 {
> +			opp-hz = /bits/ 64 <1800000000>;
> +			opp-microvolt = <850000 850000 1000000>;
> +			clock-latency-ns = <40000>;
> +		};
> +		opp-2016000000 {
> +			opp-hz = /bits/ 64 <2016000000>;
> +			opp-microvolt = <925000 925000 1000000>;
> +			clock-latency-ns = <40000>;
> +		};
> +		opp-2208000000 {
> +			opp-hz = /bits/ 64 <2208000000>;
> +			opp-microvolt = <987500 987500 1000000>;
> +			clock-latency-ns = <40000>;
> +		};
> +		opp-2400000000 {
> +			opp-hz = /bits/ 64 <2400000000>;
> +			opp-microvolt = <1000000 1000000 1000000>;
> +			clock-latency-ns = <40000>;
> +		};
> +	};
> +
>  	firmware {
>  		optee: optee {
>  			compatible = "linaro,optee-tz";

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

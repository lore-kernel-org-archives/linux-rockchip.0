Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99B55C48285
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Jan 2024 05:08:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KuOS98z0xDEvCPHdVxFP3eDL+Qr+yKlqSYfDFZU+HVs=; b=obitss3/mQS/7X5qafjSZk5nK0
	6WPSheBs8MsQ7VTFxK7fpYLGA2YMiumF2V/VjVS7PPmyQbUNhwK6UwDNvYHJHSi/BTwkjRvMd0H/S
	nDeFa4+1l1ecJWbhmes4kVEWXL6eFhEmymA0EWddzt/kw5AFEI5uZErcG232zgk+7eanDdErXe+7q
	KLRpwK8723O4EUWgVoxkQUBO3T/uOFhLEZTHfa6ExHgeYHES0Ehu47js0XSQ0QkWEVn/AyjUuS0oe
	7g8MxDW0zGEVqiCESSfwUjstggWXP9aX+zkugJwZUGUOjPAmMAPRcsdge3tBvOPuaMzkgkADkmPeS
	WfgEKLIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rV2pw-00000001VFV-3Ygq;
	Wed, 31 Jan 2024 05:08:36 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rV2pt-00000001VES-2CzB;
	Wed, 31 Jan 2024 05:08:35 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1706677712;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=dFaxIwxEmyt5THRnWn7HLhXsgUMlYlkFF7eFCp1ek/g=;
	b=SKWMr+XdnjWACiQxgwrji/XGE94Cz/zzma1cpB55I+LTJxedRtmOA+jwXHJ+TwC6+SpCUd
	AG7OqABrcNjdgO+YJVv2uYELGMiusfhmtBUGDjKYSg1CrvI7ZRaIKuYs2yO1v9cpz4ZQBj
	T4Yqzyd9rWhi0OjfO3EZ4qMDrihrwR0tMnoE5xCrbxwAd036rhL1/z8CNvM7b7BLv7u8AE
	3t1HaYp3VqF0k3YN8E6LUJQ2D7KbfMzCXmHBeERn8zlUfH3jxY8F4pls06dYiCLKTAguZt
	GvVGfd+n5n6nJzmh38meWvSvzXAqHxRlhdXJ9zxxHfoP2y5kMoO/BgS2LqQ8Ng==
Date: Wed, 31 Jan 2024 06:08:31 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Alexey Charkov <alchark@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Daniel Lezcano
 <daniel.lezcano@linaro.org>, Viresh Kumar <viresh.kumar@linaro.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 4/4] arm64: dts: rockchip: Add further granularity in
 RK3588 CPU OPPs
In-Reply-To: <20240130-rk-dts-additions-v2-4-c6222c4c78df@gmail.com>
References: <20240130-rk-dts-additions-v2-0-c6222c4c78df@gmail.com>
 <20240130-rk-dts-additions-v2-4-c6222c4c78df@gmail.com>
Message-ID: <400e19a3f7b2de674a1db457b675233f@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240130_210833_911895_67E0AD8B 
X-CRM114-Status: GOOD (  15.11  )
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

Hello Alexey,

On 2024-01-30 19:21, Alexey Charkov wrote:
> This introduces additional OPPs that share the same voltage as
> another OPP already present in the .dtsi but with lower frequency.
> 
> The idea is to try and limit system throughput more gradually upon
> reaching the throttling condition for workloads that are close to
> sustainable power already, thus avoiding needless performance loss.
> 
> My limited synthetic benchmarking [1] showed around 3.8% performance
> benefit when these are in place, other things equal (not meant to
> be comprehensive though).

I'm fine with this two-patch approach, so this important new feature
can be merged quicker, hopefully in the current merge window.  We can
add more OPPs later, after the additional testing is performed, of
course if all checks out as expected.

> [1] 
> https://lore.kernel.org/linux-rockchip/CABjd4YxqarUCbZ-a2XLe3TWJ-qjphGkyq=wDnctnEhdoSdPPpw@mail.gmail.com/T/#me92aa0ee25e6eeb1d1501ce85f5af4e58b3b13c5
> 
> Signed-off-by: Alexey Charkov <alchark@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 87 
> +++++++++++++++++++++++++++++++
>  1 file changed, 87 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> index af8b932a04c1..506676985a7e 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> @@ -360,6 +360,21 @@ cluster0_opp_table: opp-table-cluster0 {
>  		compatible = "operating-points-v2";
>  		opp-shared;
> 
> +		opp-408000000 {
> +			opp-hz = /bits/ 64 <408000000>;
> +			opp-microvolt = <675000 675000 950000>;
> +			clock-latency-ns = <40000>;
> +		};
> +		opp-600000000 {
> +			opp-hz = /bits/ 64 <600000000>;
> +			opp-microvolt = <675000 675000 950000>;
> +			clock-latency-ns = <40000>;
> +		};
> +		opp-816000000 {
> +			opp-hz = /bits/ 64 <816000000>;
> +			opp-microvolt = <675000 675000 950000>;
> +			clock-latency-ns = <40000>;
> +		};
>  		opp-1008000000 {
>  			opp-hz = /bits/ 64 <1008000000>;
>  			opp-microvolt = <675000 675000 950000>;
> @@ -392,6 +407,27 @@ cluster1_opp_table: opp-table-cluster1 {
>  		compatible = "operating-points-v2";
>  		opp-shared;
> 
> +		opp-408000000 {
> +			opp-hz = /bits/ 64 <408000000>;
> +			opp-microvolt = <675000 675000 1000000>;
> +			clock-latency-ns = <40000>;
> +			opp-suspend;
> +		};
> +		opp-600000000 {
> +			opp-hz = /bits/ 64 <600000000>;
> +			opp-microvolt = <675000 675000 1000000>;
> +			clock-latency-ns = <40000>;
> +		};
> +		opp-816000000 {
> +			opp-hz = /bits/ 64 <816000000>;
> +			opp-microvolt = <675000 675000 1000000>;
> +			clock-latency-ns = <40000>;
> +		};
> +		opp-1008000000 {
> +			opp-hz = /bits/ 64 <1008000000>;
> +			opp-microvolt = <675000 675000 1000000>;
> +			clock-latency-ns = <40000>;
> +		};
>  		opp-1200000000 {
>  			opp-hz = /bits/ 64 <1200000000>;
>  			opp-microvolt = <675000 675000 1000000>;
> @@ -422,6 +458,21 @@ opp-2208000000 {
>  			opp-microvolt = <987500 987500 1000000>;
>  			clock-latency-ns = <40000>;
>  		};
> +		opp-2256000000 {
> +			opp-hz = /bits/ 64 <2256000000>;
> +			opp-microvolt = <1000000 1000000 1000000>;
> +			clock-latency-ns = <40000>;
> +		};
> +		opp-2304000000 {
> +			opp-hz = /bits/ 64 <2304000000>;
> +			opp-microvolt = <1000000 1000000 1000000>;
> +			clock-latency-ns = <40000>;
> +		};
> +		opp-2352000000 {
> +			opp-hz = /bits/ 64 <2352000000>;
> +			opp-microvolt = <1000000 1000000 1000000>;
> +			clock-latency-ns = <40000>;
> +		};
>  		opp-2400000000 {
>  			opp-hz = /bits/ 64 <2400000000>;
>  			opp-microvolt = <1000000 1000000 1000000>;
> @@ -433,6 +484,27 @@ cluster2_opp_table: opp-table-cluster2 {
>  		compatible = "operating-points-v2";
>  		opp-shared;
> 
> +		opp-408000000 {
> +			opp-hz = /bits/ 64 <408000000>;
> +			opp-microvolt = <675000 675000 1000000>;
> +			clock-latency-ns = <40000>;
> +			opp-suspend;
> +		};
> +		opp-600000000 {
> +			opp-hz = /bits/ 64 <600000000>;
> +			opp-microvolt = <675000 675000 1000000>;
> +			clock-latency-ns = <40000>;
> +		};
> +		opp-816000000 {
> +			opp-hz = /bits/ 64 <816000000>;
> +			opp-microvolt = <675000 675000 1000000>;
> +			clock-latency-ns = <40000>;
> +		};
> +		opp-1008000000 {
> +			opp-hz = /bits/ 64 <1008000000>;
> +			opp-microvolt = <675000 675000 1000000>;
> +			clock-latency-ns = <40000>;
> +		};
>  		opp-1200000000 {
>  			opp-hz = /bits/ 64 <1200000000>;
>  			opp-microvolt = <675000 675000 1000000>;
> @@ -463,6 +535,21 @@ opp-2208000000 {
>  			opp-microvolt = <987500 987500 1000000>;
>  			clock-latency-ns = <40000>;
>  		};
> +		opp-2256000000 {
> +			opp-hz = /bits/ 64 <2256000000>;
> +			opp-microvolt = <1000000 1000000 1000000>;
> +			clock-latency-ns = <40000>;
> +		};
> +		opp-2304000000 {
> +			opp-hz = /bits/ 64 <2304000000>;
> +			opp-microvolt = <1000000 1000000 1000000>;
> +			clock-latency-ns = <40000>;
> +		};
> +		opp-2352000000 {
> +			opp-hz = /bits/ 64 <2352000000>;
> +			opp-microvolt = <1000000 1000000 1000000>;
> +			clock-latency-ns = <40000>;
> +		};
>  		opp-2400000000 {
>  			opp-hz = /bits/ 64 <2400000000>;
>  			opp-microvolt = <1000000 1000000 1000000>;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

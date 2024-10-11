Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD1F9CFD2EB
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Oct 2024 08:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tAZ08w2K9pbBfNsGfYqMAz78TT/FIgQVEaekzSli6r0=; b=h+uKQ0fYTCFjg5
	myJ7DLsAvuaQl0w41gKKPbh73Oti0yIEgJtZRYJFOwZEGJoDF3FcmreqILxDTxRguALspws0xSW1M
	rhLnCZQtfVjAE1JOWYMnq1FImOR3bfwTNQ/k/gIGfokpq/YDCgappwg9vU1G6UwyKzCK+dajK5h2G
	ka9coL7cibfBqSxT1Gsly1af5AtI86vA2WFSXiyJvl8dtK8drtyvBTgdNA3O2wcxT+4g3XrCMpTkB
	lNie3ZCZ1HLxRISp4LAbx7oDiL33ivPnUFYtgVTnm7GpsSTVhKehhe7jZHpchVkub/4DZcRm/mdD8
	6pPRVrOaVkD6bM9Z9cVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szBPP-0000000Fk8P-1zGW;
	Fri, 11 Oct 2024 08:54:03 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szBNz-0000000Fjw4-3lQ9
	for linux-rockchip@lists.infradead.org;
	Fri, 11 Oct 2024 08:52:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1728636747;
 bh=PR7Qyd/O87/6PBrhIOrZqQvu9qgOrZhgZxSmRsZHQyM=;
 b=VUlXF4sqoLJdCxvQQoPl8Ysw+0cx7AlSGYR+dOV5srqCzL5ChiptITjXLC/xFwEUIaqe7DF37
 wUTY2uuQossUmpGPttvuBjLTvF9JZ0zEqcbuue6A41hv+w7fPZ3t5E7oXdglh4iG4vP2qdxYYBM
 zk12Zctr6TiO16qoRa2duaE980XCKFMXDrd9hbx7FgrLVaQblR83dX8li5fpGkSOu5KTWRKIHpN
 LBcSN/CZVfKSNi5QWpdqsejY6PZGMGQoJPS1sTqQs7nseXVL29fIYXVlnTFjdL0bplg0qg7HheV
 3a+OZWgENTMkTKMP9/beMaj7wcpMydkrVly9QMwnU7SA==
Message-ID: <86ff39fe-cc88-4cf4-a1ad-6398a74ceb11@kwiboo.se>
Date: Fri, 11 Oct 2024 10:52:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: Prevent thermal runaways in RK3308
 SoC dtsi
To: Dragan Simic <dsimic@manjaro.org>, heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, stable@vger.kernel.org
References: <d3e9dc4201d38894b09f3198368428153a3af1a4.1728555461.git.dsimic@manjaro.org>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <d3e9dc4201d38894b09f3198368428153a3af1a4.1728555461.git.dsimic@manjaro.org>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 6708e747ea3bbe7728966137
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241011_015236_259496_E4636876 
X-CRM114-Status: GOOD (  16.32  )
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

Hi Dragan,

On 2024-10-10 12:19, Dragan Simic wrote:
> Until the TSADC, thermal zones, thermal trips and cooling maps are defined
> in the RK3308 SoC dtsi, none of the CPU OPPs except the slowest one may be
> enabled under any circumstances.  Allowing the DVFS to scale the CPU cores
> up without even just the critical CPU thermal trip in place can rather easily
> result in thermal runaways and damaged SoCs, which is bad.
> 
> Thus, leave only the lowest available CPU OPP enabled for now.

This feel like a very aggressive limitation, to only allow the
opp-suspend rate, that is not even used under normal load.

I let my Rock Pi S board with a RK3308B variant run "stress -c 8" for
around 10 hours and the reported temp only reach around 50-55 deg c,
ambient temp around 20 deg c and board laying flat on a table without
any enclosure or heat sink.

This was running with performance as scaling_governor and cpu running
the 1008000 opp.

Most RK3308 variants datasheets list 1.3 GHz as max rate for CPU,
the K-variant lists 1.2 GHz, and the -S-variants seem to have both
reduced voltage and max rate.

The OPPs for this SoC already limits max rate to 1 GHz and is more than
likely good enough to not reach the max temperature of 115-125 deg c as
rated in datasheets and vendor DTs.

Adding the tsadc and trips (same/similar as px30) will probably allow us
to add/use the "missing" 1.2 and 1.3 GHz OPPs.

Regards,
Jonas

> 
> Fixes: 6913c45239fd ("arm64: dts: rockchip: Add core dts for RK3308 SOC")
> Cc: stable@vger.kernel.org
> Signed-off-by: Dragan Simic <dsimic@manjaro.org>
> ---
>  arch/arm64/boot/dts/rockchip/rk3308.dtsi | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
> index 31c25de2d689..a7698e1f6b9e 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
> @@ -120,16 +120,19 @@ opp-600000000 {
>  			opp-hz = /bits/ 64 <600000000>;
>  			opp-microvolt = <950000 950000 1340000>;
>  			clock-latency-ns = <40000>;
> +			status = "disabled";
>  		};
>  		opp-816000000 {
>  			opp-hz = /bits/ 64 <816000000>;
>  			opp-microvolt = <1025000 1025000 1340000>;
>  			clock-latency-ns = <40000>;
> +			status = "disabled";
>  		};
>  		opp-1008000000 {
>  			opp-hz = /bits/ 64 <1008000000>;
>  			opp-microvolt = <1125000 1125000 1340000>;
>  			clock-latency-ns = <40000>;
> +			status = "disabled";
>  		};
>  	};
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

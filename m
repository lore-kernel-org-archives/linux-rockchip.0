Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A646CFD2FD
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Oct 2024 09:07:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OSw2LfTgcghSr0h2MzHVY6H4YumYfKzQLGcOYFTuiqY=; b=1gmvS47NDPMX5JtSZHbLNzxhkr
	62tLRIXHD7W3u7KqjkBxz+FGT/sP8BLzycJRa7G+8Tda/4o+9K9wdll6yTz0d/ytx1f/z2RKgQMSr
	TTohUbB9uQetF4u/jZLrh7vK9SWkre8310OcjofmmwZ6NDX1nJIYU210zViFDYMYaqPu/E38VHBba
	RhdffFRtwfqWwXekSQKYphPJhhLPkM6QLaIHVlp1jdWhKyPnLPy36c4XMddzm9qF2LEiadIkFYfi7
	ROf06m6FiCyR/Zs8984xugqRzxA1EF7T5tzLnN6V4Luee051WUHv5prS5IggFcjFrDdc79/wKm4XF
	RCVTKICA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szBcZ-0000000FmaA-0ulE;
	Fri, 11 Oct 2024 09:07:39 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szBZh-0000000FmG9-2bjO;
	Fri, 11 Oct 2024 09:04:43 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1728637479;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=9IwHXICNlB47Mb3S6Hx/Vh96+vbK4fXXn18CeBnTOBM=;
	b=cEFUoYYNfEhpxueydoz7/VZusF9OzIuICMZv9QCSyLfRqitWo8Ly2vItuij+pGwHe4rs6u
	KBk7i7Y+S/cLXmxxmhohiT6GaXJvory0k4kgpsyNFEd9RtXi8YXvmIw5laNCptLZnFU+Yh
	bR7eexLuYInYSH685eMqJpippQkqGBKbXrWvCaisz5jvwd9o/7RmtU7qQtJX8CZpb6+Par
	AyvYCOjFPBrRyoMHOfeRmRu+YSyOYEOoK/pSTqe+ZIRmhJ+ktkLmkXyexn4oU7fHgG3xe6
	ZtJhH5t9Kpti8U6MvD3JgoIAIJWRJjuTRbnId7UYSjx0oA0hLvitj9aAlRyj3A==
Date: Fri, 11 Oct 2024 11:04:38 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, stable@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Prevent thermal runaways in RK3308
 SoC dtsi
In-Reply-To: <86ff39fe-cc88-4cf4-a1ad-6398a74ceb11@kwiboo.se>
References: <d3e9dc4201d38894b09f3198368428153a3af1a4.1728555461.git.dsimic@manjaro.org>
 <86ff39fe-cc88-4cf4-a1ad-6398a74ceb11@kwiboo.se>
Message-ID: <01e42e08965e58a337b9b531c10446fd@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241011_020441_996853_32CAD3F4 
X-CRM114-Status: GOOD (  22.12  )
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

Hello Jonas,

On 2024-10-11 10:52, Jonas Karlman wrote:
> On 2024-10-10 12:19, Dragan Simic wrote:
>> Until the TSADC, thermal zones, thermal trips and cooling maps are 
>> defined
>> in the RK3308 SoC dtsi, none of the CPU OPPs except the slowest one 
>> may be
>> enabled under any circumstances.  Allowing the DVFS to scale the CPU 
>> cores
>> up without even just the critical CPU thermal trip in place can rather 
>> easily
>> result in thermal runaways and damaged SoCs, which is bad.
>> 
>> Thus, leave only the lowest available CPU OPP enabled for now.
> 
> This feel like a very aggressive limitation, to only allow the
> opp-suspend rate, that is not even used under normal load.
> 
> I let my Rock Pi S board with a RK3308B variant run "stress -c 8" for
> around 10 hours and the reported temp only reach around 50-55 deg c,
> ambient temp around 20 deg c and board laying flat on a table without
> any enclosure or heat sink.
> 
> This was running with performance as scaling_governor and cpu running
> the 1008000 opp.

Thanks for testing all that!  That's very low CPU temperature under
stress testing indeed.  Maybe the cooling gets worse and the CPU
temperature goes higher if the board is installed into some small
enclosure with no natural or forced airflow?

> Most RK3308 variants datasheets list 1.3 GHz as max rate for CPU,
> the K-variant lists 1.2 GHz, and the -S-variants seem to have both
> reduced voltage and max rate.
> 
> The OPPs for this SoC already limits max rate to 1 GHz and is more than
> likely good enough to not reach the max temperature of 115-125 deg c as
> rated in datasheets and vendor DTs.
> 
> Adding the tsadc and trips (same/similar as px30) will probably allow 
> us
> to add/use the "missing" 1.2 and 1.3 GHz OPPs.

With these insights, I agree that the patch might have been a bit
too extreme, but it also promotes good practices when it comes to
upstreaming.  The general rule is not to add CPU or GPU OPPs with
no proper thermal configuration already in place.

The patch has already been merged, and as I already noted, [1] I'll
try to implement, test and submit the proper thermal configuration
ASAP.  It's up Heiko to decide whether to drop this patch or not.

[1] 
https://lore.kernel.org/linux-rockchip/df92710498f66bcb4580cb2cd1573fb2@manjaro.org/

>> Fixes: 6913c45239fd ("arm64: dts: rockchip: Add core dts for RK3308 
>> SOC")
>> Cc: stable@vger.kernel.org
>> Signed-off-by: Dragan Simic <dsimic@manjaro.org>
>> ---
>>  arch/arm64/boot/dts/rockchip/rk3308.dtsi | 3 +++
>>  1 file changed, 3 insertions(+)
>> 
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi 
>> b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
>> index 31c25de2d689..a7698e1f6b9e 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
>> @@ -120,16 +120,19 @@ opp-600000000 {
>>  			opp-hz = /bits/ 64 <600000000>;
>>  			opp-microvolt = <950000 950000 1340000>;
>>  			clock-latency-ns = <40000>;
>> +			status = "disabled";
>>  		};
>>  		opp-816000000 {
>>  			opp-hz = /bits/ 64 <816000000>;
>>  			opp-microvolt = <1025000 1025000 1340000>;
>>  			clock-latency-ns = <40000>;
>> +			status = "disabled";
>>  		};
>>  		opp-1008000000 {
>>  			opp-hz = /bits/ 64 <1008000000>;
>>  			opp-microvolt = <1125000 1125000 1340000>;
>>  			clock-latency-ns = <40000>;
>> +			status = "disabled";
>>  		};
>>  	};

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

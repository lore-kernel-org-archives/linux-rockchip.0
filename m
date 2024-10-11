Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF955CFC61B
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Oct 2024 08:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yBM/TY5e3qkIFdvQDogFtiYVnUho4E+6D0UsAUYwX+M=; b=Pw6j0YuMOpSPa/WGRQkDlfk2xN
	C+GHyL8Ph38Iiafc6yxbTuDpa2PPPdTVmubuaE8cTjDiHBGOCNLMxgyKOCEqYpscIbjGL8sdANcIS
	WjDLycVDTRNpa7+evdUqqHrnD+hB3TBZmEZCWFzXI/ylOCoJNqWiAvyUrGalQS75toR5+e6kPfwxY
	I4fl5aiD1pcSeqmt2lfvFMYqnRv0aHZtcRXFyLKZ6/YudOmxaHBQC+Eeq0yoyo8CSmHn7szzurk0Z
	96tdlizjIu30b4ZVIQ9RSn2cIExAOJM9JWP7HICuy8hxb1CLj2PZvICjvzdOCF0qzg5JI/gVPIg3d
	56XmfjzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szAxE-0000000FgLz-1d8K;
	Fri, 11 Oct 2024 08:24:56 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szAvb-0000000Fg8R-28ds;
	Fri, 11 Oct 2024 08:23:32 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1728634993;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Wtd4w3kPmY8STzgl3hbVfL0jzi8Spp87zTee4Cx7AxI=;
	b=aXloB4Bkt0Wtzcjbb28+LTGW/hzvUuVayg8nQDwrKVsHFY1UbGGO3G5qNPJ6/RE8A4CTRw
	G5v0XBUaAbhWY7/pyUVr7W2s0NVUpKV913bsFaWVUmK1kRWhGOkeAatdz11tRIwvZ3yD18
	5p6kvBY9bgcxkPaYEcmq1r7QDnWvd7ls03Jhq//X7fBORaghVLe/SxhNZcU3WsWhzAjnL+
	ScRiDn3zsDu9fHO7hXOD74VB/Ub7LwfBB+e2rpMxbBujicSnF2+WSkn4jwxuP5SO11qO9O
	NwESBzH69NHTZuuFvZQnm+qGa0i8pHxdNu3gSe78yMU0mVTF+X8QVAjKgh23Tw==
Date: Fri, 11 Oct 2024 10:23:13 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Diederik de Haas <didi.debian@cknow.org>
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add dtsi file for RK3399S SoC
 variant
In-Reply-To: <D4STH4Z8LTHN.2X4BJJVACFSIS@cknow.org>
References: <c32622e4a6897378d9df81c8c3eda1bdb9211e0b.1728632052.git.dsimic@manjaro.org>
 <D4STH4Z8LTHN.2X4BJJVACFSIS@cknow.org>
Message-ID: <20da65423e77e13511cc7c7bb39e0246@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241011_012316_028967_31233773 
X-CRM114-Status: GOOD (  18.46  )
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

Hello Diederik,

On 2024-10-11 10:00, Diederik de Haas wrote:
> On Fri Oct 11, 2024 at 9:40 AM CEST, Dragan Simic wrote:
>> Following the hierarchical representation of the SoC data that's been 
>> already
>> established in the commit 296602b8e5f7 ("arm64: dts: rockchip: Move 
>> RK3399
>> OPPs to dtsi files for SoC variants"), add new SoC dtsi file for the 
>> Rockchip
>> RK3399S SoC, which is yet another variant of the Rockchip RK3399 SoC.
>> ...
>> The RK3399S variant is used in the Pine64 PinePhone Pro only, [1] 
>> whose board
>> dts file included the necessary adjustments to the CPU DVFS OPPs.  
>> This commit
>> effectively moves those adjustments into the separate RK3399S SoC dtsi 
>> file,
>> following the above-mentioned "encapsulation" approach.
>> ...
>> ---
>> ...
>>  .../dts/rockchip/rk3399-pinephone-pro.dts     |  23 +---
>>  arch/arm64/boot/dts/rockchip/rk3399-s.dtsi    | 123 
>> ++++++++++++++++++
>>  2 files changed, 124 insertions(+), 22 deletions(-)
>>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-s.dtsi
>> 
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts 
>> b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
>> index 1a44582a49fb..eee6cfb6de01 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
>> +++ b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
>> @@ -13,7 +13,7 @@
>>  #include <dt-bindings/input/gpio-keys.h>
>>  #include <dt-bindings/input/linux-event-codes.h>
>>  #include <dt-bindings/leds/common.h>
>> -#include "rk3399.dtsi"
>> +#include "rk3399-s.dtsi"
>> 
>>  / {
>>  	model = "Pine64 PinePhone Pro";
>> @@ -456,27 +456,6 @@ mpu6500@68 {
>>  	};
>>  };
>> 
>> -&cluster0_opp {
>> -	opp04 {
>> -		status = "disabled";
>> -	};
>> -
>> -	opp05 {
>> -		status = "disabled";
>> -	};
>> -};
>> -
>> -&cluster1_opp {
>> -	opp06 {
>> -		opp-hz = /bits/ 64 <1500000000>;
>> -		opp-microvolt = <1100000 1100000 1150000>;
>> -	};
>> -
>> -	opp07 {
>> -		status = "disabled";
>> -	};
>> -};
>> -
>>  &io_domains {
>>  	bt656-supply = <&vcc1v8_dvp>;
>>  	audio-supply = <&vcca1v8_codec>;
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-s.dtsi 
>> b/arch/arm64/boot/dts/rockchip/rk3399-s.dtsi
>> new file mode 100644
>> index 000000000000..e54f451af9f3
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/rockchip/rk3399-s.dtsi
>> @@ -0,0 +1,123 @@
>> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>> +/*
>> + * Copyright (c) 2016-2017 Fuzhou Rockchip Electronics Co., Ltd
>> + */
>> +
>> +#include "rk3399-base.dtsi"
>> +
>> +/ {
>> +	cluster0_opp: opp-table-0 {
>> +		compatible = "operating-points-v2";
>> +		opp-shared;
>> +
>> +		opp00 {
>> +			opp-hz = /bits/ 64 <408000000>;
>> +			opp-microvolt = <825000 825000 1250000>;
>> +			clock-latency-ns = <40000>;
>> +		};
>> +		opp01 {
>> +			opp-hz = /bits/ 64 <600000000>;
>> +			opp-microvolt = <825000 825000 1250000>;
>> +		};
>> +		opp02 {
>> +			opp-hz = /bits/ 64 <816000000>;
>> +			opp-microvolt = <850000 850000 1250000>;
>> +		};
> 
> Is there a reason why there isn't a line separator between the various
> opp nodes? Normally there is one between nodes.
> Note that in rk3588-opp.dtsi there are no separator lines between the
> opp nodes, while they do exist between other nodes.
> And in rk356x.dtsi the opp nodes do have a separator line.

That has also bothered me. :)  I already had a look around in various
dts(i) files long time ago and there seems to be no preferred layout.

In this particular case, it's better to have no separator lines because
that's what we already have lacking in rk3399.dtsi, rk3399-t.dtsi, etc.,
so running something like "diff rk3399.dtsi rk3399-s.dtsi" makes it easy
to see what actually differs in the RK3399 SoC variants, without having
to filter out any whitespace differences.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

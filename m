Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ADE01CF2578
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Oct 2024 20:03:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=L3TiPo8+nPZ4Jn95N+cTEEZuE0zzmH/TKKbOG1SBwKY=; b=tKYlhZYhtRR3q3SIKJh4xKa6i+
	ShTKHfxlozmCruv19jj9zIkIL0NwD9XOhmkfpmI4FWayhi+SUbjfDXow7pOo7X2qs9PNEB9/RHFsO
	P4Cj+ZcYfoIYWKgKHqrUQQ4SRTZBqgnVL20zIEDRwEJr3fPq2o+uuBw3JeIRTPqLj4xatpg+6bCyQ
	GNGHmJAypLLyzFAZK+lpM1u4AKdH1IK5SzjOZkbwdlcu53is90/++IomI0toPnaRdHpWCAlHVP1t5
	96gwawjDCKSsSeFOi+E+2v37+3jRACnLwa88wtkaHw/xqykjy57U/NZSzqVXBXGAPSsA1A/7pthDQ
	kyTcvxzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sziKG-00000001mS3-30gN;
	Sat, 12 Oct 2024 20:02:56 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sziIs-00000001mKW-0yNX;
	Sat, 12 Oct 2024 20:01:32 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1728763287;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=IMzLkVtpuqhbfDhxMx/Dnmpxb8+f+kODoX6QtilGTB4=;
	b=G+Nj+eUSD5ppx1fw2MEZUoYdLD9HoMpDFs9qE3KdI5yPz5/qoKbjpXgi6cDvs5QaXcHrFS
	szGJWmVs7EcbUkhXNZHpJshjX4jQz5A80Q33FSAHeeQZ2dGARjPJJuwb9ztmAaGR6geu2M
	Yi2BqMbd8Qt/CkIB0AkDUaqc9jXangO7hzZbt3rKK4dtzQpTzXt8KWsBGobn5arVqa+mPO
	oFbyzV3FYSFaaotriGqdfU6JXr5gddmhwObssiKWxF4Hif0jls3WypAgLRybfp0RPKpT9u
	WQ4n8VuC9ztIlhp0NUtRuZLyFxPOJGGyHHTwS29JXsLB2OSCDIMb6Vf4dMxY9w==
Date: Sat, 12 Oct 2024 22:01:27 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Diederik de Haas <didi.debian@cknow.org>
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org
Subject: Re: [PATCH 2/3] arm64: dts: rockchip: Prepare RK356x SoC dtsi files
 for per-variant OPPs
In-Reply-To: <D4U30AUOH6UR.1QPH47KN5EWE4@cknow.org>
References: <cover.1728752527.git.dsimic@manjaro.org>
 <cc2aed3116a57dd50e2bb15ab41b12784adfafe3.1728752527.git.dsimic@manjaro.org>
 <D4U30AUOH6UR.1QPH47KN5EWE4@cknow.org>
Message-ID: <e03fec2aa3bedb4710b27717cb2394df@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241012_130130_752439_1A384EAE 
X-CRM114-Status: GOOD (  27.08  )
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

On 2024-10-12 21:41, Diederik de Haas wrote:
> On Sat Oct 12, 2024 at 7:04 PM CEST, Dragan Simic wrote:
>> Rename the Rockchip RK356x SoC dtsi files and, consequently, adjust 
>> their
>> contents appropriately, to prepare them for the ability to specify 
>> different
>> CPU and GPU OPPs for each of the supported RK356x SoC variants.
>> 
>> The first new RK356x SoC variant to be introduced is the RK3566T, 
>> which the
>> Pine64 Quartz64 Zero SBC is officially based on. [1]  Some other SBCs 
>> are
>> also based on the RK3566T variant, including Radxa ROCK 3C and ZERO 
>> 3E/3W,
>> but the slight trouble is that Radxa doesn't state that officially.  
>> Though,
>> it's rather easy to spot the RK3566T on such boards, because their 
>> official
>> specifications state that the maximum frequency for the Cortex-A55 
>> cores is
>> lower than the "full-fat" RK3566's 1.8 GHz. [2][3][4]
> 
> I think we changed terminology from "full-fat" to something else in the
> rk3588 variant? Would be nice to be consisten.

Back then, it was about the naming of one of the dtsi files, [*] not
about using "full-fat" in the commit description.  Using "full-fat"
in one of the file names was just part of the RFC, as a temporary
solution.  OTOH, frankly, I don't feel like using "full-fat" in this
commit description is inappropriate or inconsistent.

[*] 
https://lore.kernel.org/linux-rockchip/673dcf47596e7bc8ba065034e339bb1bbf9cdcb0.1716948159.git.dsimic@manjaro.org/T/#u

>> These changes follow the approach used for the Rockchip RK3588 SoC 
>> variants,
>> which was introduced and described further in commit def88eb4d836 
>> ("arm64:
>> dts: rockchip: Prepare RK3588 SoC dtsi files for per-variant OPPs").  
>> Please
>> see that commit for a more detailed explanation.
>> 
>> No functional changes are introduced, which was validated by 
>> decompiling and
> 
> No functional changes ...

This will be covered later in my response...

>> comparing all affected board dtb files before and after these changes. 
>>  In
>> more detail, the affected dtb files have some of their blocks shuffled 
>> around
>> a bit and some of their phandles have different values, as a result of 
>> the
>> changes to the order in which the building blocks from the parent dtsi 
>> files
>> are included, but they effectively remain the same as the originals.
>> 
>> [1] https://wiki.pine64.org/wiki/Quartz64
>> [2] 
>> https://dl.radxa.com/rock3/docs/hw/3c/radxa_rock3c_product_brief.pdf
>> [3] 
>> https://dl.radxa.com/zero3/docs/hw/3e/radxa_zero_3e_product_brief.pdf
>> [4] 
>> https://dl.radxa.com/zero3/docs/hw/3w/radxa_zero_3w_product_brief.pdf
>> 
>> Related-to: def88eb4d836 ("arm64: dts: rockchip: Prepare RK3588 SoC 
>> dtsi files for per-variant OPPs")
>> Signed-off-by: Dragan Simic <dsimic@manjaro.org>
>> ---
>>  .../{rk3566.dtsi => rk3566-base.dtsi}         |   2 +-
>>  arch/arm64/boot/dts/rockchip/rk3566.dtsi      | 116 
>> ++++++++++++++----
>>  arch/arm64/boot/dts/rockchip/rk3568.dtsi      | 114 +++++++++++++++--
>>  .../{rk356x.dtsi => rk356x-base.dtsi}         |  87 -------------
>>  4 files changed, 202 insertions(+), 117 deletions(-)
>>  copy arch/arm64/boot/dts/rockchip/{rk3566.dtsi => rk3566-base.dtsi} 
>> (95%)
>>  rename arch/arm64/boot/dts/rockchip/{rk356x.dtsi => rk356x-base.dtsi} 
>> (96%)
>> 
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3566.dtsi 
>> b/arch/arm64/boot/dts/rockchip/rk3566-base.dtsi
>> similarity index 95%
>> copy from arch/arm64/boot/dts/rockchip/rk3566.dtsi
>> copy to arch/arm64/boot/dts/rockchip/rk3566-base.dtsi
>> index 6c4b17d27bdc..e56e0b6ba941 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3566.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3566-base.dtsi
>> @@ -1,6 +1,6 @@
>>  // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>> 
>> -#include "rk356x.dtsi"
>> +#include "rk356x-base.dtsi"
>> 
>>  / {
>>  	compatible = "rockchip,rk3566";
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3566.dtsi 
>> b/arch/arm64/boot/dts/rockchip/rk3566.dtsi
>> index 6c4b17d27bdc..3fcca79279f7 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3566.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3566.dtsi
>> @@ -1,35 +1,107 @@
>>  // SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>> 
>> -#include "rk356x.dtsi"
>> +#include "rk3566-base.dtsi"
>> 
>>  / {
>> -	compatible = "rockchip,rk3566";
>> +	cpu0_opp_table: opp-table-0 {
>> +		compatible = "operating-points-v2";
>> +		opp-shared;
>> +
>> +		opp-408000000 {
>> +			opp-hz = /bits/ 64 <408000000>;
>> +			opp-microvolt = <850000 850000 1150000>;
>> +			clock-latency-ns = <40000>;
>> +		};
>> +
>> +		opp-600000000 {
>> +			opp-hz = /bits/ 64 <600000000>;
>> +			opp-microvolt = <850000 850000 1150000>;
>> +			clock-latency-ns = <40000>;
>> +		};
>> +
>> +		opp-816000000 {
>> +			opp-hz = /bits/ 64 <816000000>;
>> +			opp-microvolt = <850000 850000 1150000>;
>> +			clock-latency-ns = <40000>;
>> +			opp-suspend;
>> +		};
> 
> Just like with patch 1 of this series, drop the blank line?

I believe I've already explained the reasoning behind that. [**]

[**] 
https://lore.kernel.org/linux-rockchip/0a1f13d06ec3668c136997e72d0aea44@manjaro.org/

>> +
>> +		opp-1104000000 {
>> +			opp-hz = /bits/ 64 <1104000000>;
>> +			opp-microvolt = <900000 900000 1150000>;
>> +			clock-latency-ns = <40000>;
>> +		};
>> +
>> +		opp-1416000000 {
>> +			opp-hz = /bits/ 64 <1416000000>;
>> +			opp-microvolt = <1025000 1025000 1150000>;
>> +			clock-latency-ns = <40000>;
>> +		};
>> +
>> +		opp-1608000000 {
>> +			opp-hz = /bits/ 64 <1608000000>;
>> +			opp-microvolt = <1100000 1100000 1150000>;
>> +			clock-latency-ns = <40000>;
>> +		};
>> +
>> +		opp-1800000000 {
>> +			opp-hz = /bits/ 64 <1800000000>;
>> +			opp-microvolt = <1150000 1150000 1150000>;
>> +			clock-latency-ns = <40000>;
>> +		};
>> +	};
>> +
>> +	gpu_opp_table: opp-table-1 {
>> +		compatible = "operating-points-v2";
>> +
>> +		opp-200000000 {
>> +			opp-hz = /bits/ 64 <200000000>;
>> +			opp-microvolt = <850000 850000 1000000>;
>> +		};
>> +
>> +		opp-300000000 {
>> +			opp-hz = /bits/ 64 <300000000>;
>> +			opp-microvolt = <850000 850000 1000000>;
>> +		};
>> +
>> +		opp-400000000 {
>> +			opp-hz = /bits/ 64 <400000000>;
>> +			opp-microvolt = <850000 850000 1000000>;
>> +		};
>> +
>> +		opp-600000000 {
>> +			opp-hz = /bits/ 64 <600000000>;
>> +			opp-microvolt = <900000 900000 1000000>;
>> +		};
>> +
>> +		opp-700000000 {
>> +			opp-hz = /bits/ 64 <700000000>;
>> +			opp-microvolt = <950000 950000 1000000>;
>> +		};
>> +
>> +		opp-800000000 {
>> +			opp-hz = /bits/ 64 <800000000>;
>> +			opp-microvolt = <1000000 1000000 1000000>;
>> +		};
>> +	};
>>  };
>> 
>> -&pipegrf {
>> -	compatible = "rockchip,rk3566-pipe-grf", "syscon";
> 
> This seems unrelated?

Yes, it looks completely out of place, but it's just the way this
diff ended up looking like.  It's actually fine.

>> +&cpu0 {
>> +	operating-points-v2 = <&cpu0_opp_table>;
>>  };
>> 
>> -&power {
>> -	power-domain@RK3568_PD_PIPE {
>> -		reg = <RK3568_PD_PIPE>;
>> -		clocks = <&cru PCLK_PIPE>;
>> -		pm_qos = <&qos_pcie2x1>,
>> -			 <&qos_sata1>,
>> -			 <&qos_sata2>,
>> -			 <&qos_usb3_0>,
>> -			 <&qos_usb3_1>;
>> -		#power-domain-cells = <0>;
>> -	};
> 
> This seems unrelated to me and possibly a functional change?
> If this was intended, then a description in the commit message would be
> nice why this is appropriate and possibly moved to a separate patch?

Just another instance of the diff ending up looking strange,
while there are actually no such changes.

>> +&cpu1 {
>> +	operating-points-v2 = <&cpu0_opp_table>;
>> +};
>> +
>> +&cpu2 {
>> +	operating-points-v2 = <&cpu0_opp_table>;
>>  };
>> 
>> -&usb_host0_xhci {
>> -	phys = <&usb2phy0_otg>;
>> -	phy-names = "usb2-phy";
>> -	extcon = <&usb2phy0>;
>> -	maximum-speed = "high-speed";
> 
> This also looks unrelated and a functional change?

Already explained above.

>> +&cpu3 {
>> +	operating-points-v2 = <&cpu0_opp_table>;
>>  };
>> 
>> -&vop {
>> -	compatible = "rockchip,rk3566-vop";
> 
> This also looks unrelated?

Already explained above.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C17ACCFA13
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Sep 2024 09:47:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kT9hqcocQ7Z1usQelZwM3FgS3Cvs+mPgBxjTQic1ElA=; b=mSvqo8JorkIdsn68ZWOHNtMHQZ
	FJm3X/U/JGc8jm3o94pS2YlWluWc6jVkuTtx0hVxC8haEpqrgcxo+dhIj2z1/lCjUK83rsafYbrZq
	iDPLnuPdWEepq6dUyPHnRZ1TIy4SVQhe6U1qNO6nLL0NWDn3/R7aRV9DUEzzcDBG3dS2YaTQonlu/
	Rg/GOO3kI6OLkgEcEepy8uRte2rILXScwwEV7ZjGzSDvzxx1BE7IJUbHYcNA9BlarUBDqA/pw4CG1
	V3so+n1puV9j/X16b9iEPNArGNgqJilFdwawi+c3JjLqv6Hq56VE9C41sOuSZSKDI+9Sr2ua6SUpm
	T6IiCFwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stl6A-00000007wew-46Gs;
	Thu, 26 Sep 2024 09:47:46 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stkv2-00000007uTH-26P0;
	Thu, 26 Sep 2024 09:36:18 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1727343374;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=nro0VeXsPWDiC4P3tUhqYu7l5pTbMR920vC1Wc7Li0c=;
	b=xRZjG3jmKHLtNlc2LBKCppMizR+S8E+xrKtSFrT3CleBSAa1GzZdlPUKwBYnaICacxucJP
	SIrXwdOBtgt74wvxprD9w7OUAgzz/YcC7AgOYweaqrX/UpiGb3W9gGxZh7E5XctKLwkzrT
	4z6iJ2n8p/yWGczFxz7EkssWOaFWeGpkjKUHpv1+TKnu6DoWB/cZ/6bvcajQ7djJSJO1fO
	kVjkEQRf8trbGS1NdL1oyY7JruPl3ahFXg2yVImOb2+eDcd8xWu9/4OzbCEJ9+TzndMWoD
	HC/fUEgQ0QCR4yVzmISCIndAKizcc8/Q6IXNY0KV1y20Xj2BsMK8LUWT1KNaaw==
Date: Thu, 26 Sep 2024 11:36:13 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Robin Murphy <robin.murphy@arm.com>
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, stable@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Move L3 cache under CPUs in RK356x
 SoC dtsi
In-Reply-To: <2aa03ce3-1cca-4b3a-935d-6b1b68ebbb6e@arm.com>
References: <da07c30302cdb032dbda434438f89692a6cb0a2d.1727336728.git.dsimic@manjaro.org>
 <2aa03ce3-1cca-4b3a-935d-6b1b68ebbb6e@arm.com>
Message-ID: <c3593744e00a9817533609326ee66346@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240926_023616_916537_F2CB92A2 
X-CRM114-Status: GOOD (  19.28  )
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

Hello Robin,

On 2024-09-26 11:24, Robin Murphy wrote:
> On 2024-09-26 8:49 am, Dragan Simic wrote:
>> Move the "l3_cache" node under the "cpus" node in the dtsi file for 
>> Rockchip
>> RK356x SoCs.  There's no need for this cache node to be at the higher 
>> level.
> 
> Except it does arguably represent the physical topology - the L3 cache
> doesn't belong to the CPUs, it belongs to the DSU, which very much is
> "outside" the CPUs.

That's a very good point, thanks!  I knew there must have been
a very good reason why I placed the L3 cache outside the CPUs
originally, in the commit 8612169a05c5 referenced below, but I
also somehow managed to forget that reason for a moment. :)

Let's drop this patch, and I'll submit another patch for the
RK3588 SoC dtsi files that moves the L3 cache outside the CPUs,
to reflect the physical topology better.

>> Fixes: 8612169a05c5 ("arm64: dts: rockchip: Add cache information to 
>> the SoC dtsi for RK356x")
>> Cc: stable@vger.kernel.org
>> Signed-off-by: Dragan Simic <dsimic@manjaro.org>
>> ---
>>   arch/arm64/boot/dts/rockchip/rk356x.dtsi | 24 
>> ++++++++++++------------
>>   1 file changed, 12 insertions(+), 12 deletions(-)
>> 
>> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi 
>> b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
>> index 4690be841a1c..9f7136e5d553 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
>> @@ -113,19 +113,19 @@ cpu3: cpu@300 {
>>   			d-cache-sets = <128>;
>>   			next-level-cache = <&l3_cache>;
>>   		};
>> -	};
>>   -	/*
>> -	 * There are no private per-core L2 caches, but only the
>> -	 * L3 cache that appears to the CPU cores as L2 caches
>> -	 */
>> -	l3_cache: l3-cache {
>> -		compatible = "cache";
>> -		cache-level = <2>;
>> -		cache-unified;
>> -		cache-size = <0x80000>;
>> -		cache-line-size = <64>;
>> -		cache-sets = <512>;
>> +		/*
>> +		 * There are no private per-core L2 caches, but only the
>> +		 * L3 cache that appears to the CPU cores as L2 caches
>> +		 */
>> +		l3_cache: l3-cache {
>> +			compatible = "cache";
>> +			cache-level = <2>;
>> +			cache-unified;
>> +			cache-size = <0x80000>;
>> +			cache-line-size = <64>;
>> +			cache-sets = <512>;
>> +		};
>>   	};
>>     	cpu0_opp_table: opp-table-0 {
>> 
>> _______________________________________________
>> Linux-rockchip mailing list
>> Linux-rockchip@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-rockchip
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

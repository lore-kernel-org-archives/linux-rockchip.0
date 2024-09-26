Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC668CCF9E9
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Sep 2024 08:33:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sPhz9ge/9pQsuA0Le+kYHwyuw2PyC0R0sfbh+7Jur3o=; b=LoDwUhS+BDtxwt97fPSnEkpeKq
	1CEZWLr7iuoHLcHBEp8/uMngckOrAw/d3kaILhDVtxvIgFrJI31XUceLVOOxTBh6V0vz7TDFMpKt/
	w62fH61gg0D9QZwvssypqNafc/jkFcj558iGz4v8ELh6XLtbebFwrFfGF+OshDfPXavN7nmH6eKIk
	mcR5lWK7qNtqNT7PqzI4MyiXtvhONtaYLBsYfKQg8gLyf4Tc9UgUMNxKxImzkgDXr9/hnTOuKx2Gz
	m2Tq1kz8XHcDiQdc3G0MBXdLINxv5MeF193gD5nkqZ+/LmeOC6CLN5OA+3jDqC6sOd+UarEJZWYke
	SCerQWvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stjwL-00000007h1B-3pBh;
	Thu, 26 Sep 2024 08:33:33 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stjvA-00000007gvM-0QMH;
	Thu, 26 Sep 2024 08:32:22 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1727339537;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=1Cujcqo+iQwaB51AOH25qP+3PrnYOZl6IbH7tj3OMjI=;
	b=llo7TmdY2al+SnSku0mZMt1+FieHQkAnezMq62KeeU6p/7fJQOIXS1nP7/tU+xHVWRa/xb
	hwENaeddf7y9aF+Iw5PmMobELYUJKAk4AeR4T9ADCaBp57NpVY/+r0/WKrWSLqcAvCUU+F
	VOMbaN2b72qZs1AGn9KLYtnFjFtEYa4IIePhA4SIVxjrYX8hwKFYQeN7oGyLaFHDA2xMdL
	Gsslv1OWVZXFnje2Rs0AU2dAIG+sK6RoOvBsn/hOyPQ1pYV7rrqxez0Ib8sevEVG/En2VN
	QMeZSGMRQPHVJTBNdCdHMVxUpnvfYw+J8KP3HKbU85nka4bnJDdqr9iPFUIIfg==
Date: Thu, 26 Sep 2024 10:32:17 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, stable@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Move L3 cache under CPUs in RK356x
 SoC dtsi
In-Reply-To: <3938446.fW5hKsROvD@phil>
References: <da07c30302cdb032dbda434438f89692a6cb0a2d.1727336728.git.dsimic@manjaro.org>
 <3938446.fW5hKsROvD@phil>
Message-ID: <57d360d73054d1bad8566e3fe0ee1921@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240926_013220_543256_FE5E9524 
X-CRM114-Status: GOOD (  21.88  )
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

Hello Heiko,

On 2024-09-26 10:24, Heiko Stuebner wrote:
> Am Donnerstag, 26. September 2024, 09:49:18 CEST schrieb Dragan Simic:
>> Move the "l3_cache" node under the "cpus" node in the dtsi file for 
>> Rockchip
>> RK356x SoCs.  There's no need for this cache node to be at the higher 
>> level.
>> 
>> Fixes: 8612169a05c5 ("arm64: dts: rockchip: Add cache information to 
>> the SoC dtsi for RK356x")
>> Cc: stable@vger.kernel.org
> 
> I think the commit message needs a bit more rationale on why this is a
> stable-worthy fix. Because from the move and commit message it reads
> like a styling choice ;-) .
> 
> I do agree that it makes more sense as child of cpus, but the commit
> message should also elaborate on why that would matter for stable.

Thanks for your feedback!  Perhaps it would be the best to simply drop 
the
submission to stable kernels...  Believe it or not, :) I spent a fair 
amount
of time deliberating over the submission to stable, but now I think it's
simply better to omit that and not increase the amount of patches that 
go
into stable unnecessary.

Would you like me to send the v2 with no Cc to stable, or would you 
prefer
to drop that line yourself?


>> Signed-off-by: Dragan Simic <dsimic@manjaro.org>
>> ---
>>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 24 
>> ++++++++++++------------
>>  1 file changed, 12 insertions(+), 12 deletions(-)
>> 
>> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi 
>> b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
>> index 4690be841a1c..9f7136e5d553 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
>> @@ -113,19 +113,19 @@ cpu3: cpu@300 {
>>  			d-cache-sets = <128>;
>>  			next-level-cache = <&l3_cache>;
>>  		};
>> -	};
>> 
>> -	/*
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
>>  	};
>> 
>>  	cpu0_opp_table: opp-table-0 {
>> 
> 
> 
> 
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

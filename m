Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D6BECCFA13
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Sep 2024 09:30:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gwpg53iJxW3F1igs0/37My4wyW8+WoZhAoLtbDfymyY=; b=jvneVk9w2pLSMW
	9QR4+CjLJNy7uoIfjiZvog/NZWKr3AOAC5n+ZnuZa8lUDUUnk3RlVX16QZ2ii0d0kZlINK88WGPnx
	bzXUFfGR7fLeNrOgNhFpHRTKG5mKAsQAwi3Hcy56EDh96oNBMndjxqRHAUnRrQEJvfGxqLTnmFvIt
	FW9DqUPVu5e26X/sX9ZmLJI7RkhWjzFwHYJfK2lCxBXL2zYEOPL4QgB58+RpyQ5oBYrrqPPOHublU
	HPG03g7QnFMCwnudnY9ixiS+tPKXmwQ1D4OxuUqV4M18EDm/AfOBioa7oF8TiJOBc+5jHhdsC681H
	Q2Z5OZtPWIBmHcMC/NWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stkpi-00000007tB6-1cV7;
	Thu, 26 Sep 2024 09:30:46 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stkjp-00000007s1j-12TL;
	Thu, 26 Sep 2024 09:24:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 355CB12FC;
	Thu, 26 Sep 2024 02:25:07 -0700 (PDT)
Received: from [10.57.75.132] (unknown [10.57.75.132])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D75183F6A8;
	Thu, 26 Sep 2024 02:24:35 -0700 (PDT)
Message-ID: <2aa03ce3-1cca-4b3a-935d-6b1b68ebbb6e@arm.com>
Date: Thu, 26 Sep 2024 10:24:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: Move L3 cache under CPUs in RK356x
 SoC dtsi
To: Dragan Simic <dsimic@manjaro.org>, linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, stable@vger.kernel.org
References: <da07c30302cdb032dbda434438f89692a6cb0a2d.1727336728.git.dsimic@manjaro.org>
From: Robin Murphy <robin.murphy@arm.com>
Content-Language: en-GB
In-Reply-To: <da07c30302cdb032dbda434438f89692a6cb0a2d.1727336728.git.dsimic@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240926_022441_442256_11AF6660 
X-CRM114-Status: GOOD (  19.49  )
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

On 2024-09-26 8:49 am, Dragan Simic wrote:
> Move the "l3_cache" node under the "cpus" node in the dtsi file for Rockchip
> RK356x SoCs.  There's no need for this cache node to be at the higher level.

Except it does arguably represent the physical topology - the L3 cache 
doesn't belong to the CPUs, it belongs to the DSU, which very much is 
"outside" the CPUs.

Thanks,
Robin.

> 
> Fixes: 8612169a05c5 ("arm64: dts: rockchip: Add cache information to the SoC dtsi for RK356x")
> Cc: stable@vger.kernel.org
> Signed-off-by: Dragan Simic <dsimic@manjaro.org>
> ---
>   arch/arm64/boot/dts/rockchip/rk356x.dtsi | 24 ++++++++++++------------
>   1 file changed, 12 insertions(+), 12 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> index 4690be841a1c..9f7136e5d553 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> @@ -113,19 +113,19 @@ cpu3: cpu@300 {
>   			d-cache-sets = <128>;
>   			next-level-cache = <&l3_cache>;
>   		};
> -	};
>   
> -	/*
> -	 * There are no private per-core L2 caches, but only the
> -	 * L3 cache that appears to the CPU cores as L2 caches
> -	 */
> -	l3_cache: l3-cache {
> -		compatible = "cache";
> -		cache-level = <2>;
> -		cache-unified;
> -		cache-size = <0x80000>;
> -		cache-line-size = <64>;
> -		cache-sets = <512>;
> +		/*
> +		 * There are no private per-core L2 caches, but only the
> +		 * L3 cache that appears to the CPU cores as L2 caches
> +		 */
> +		l3_cache: l3-cache {
> +			compatible = "cache";
> +			cache-level = <2>;
> +			cache-unified;
> +			cache-size = <0x80000>;
> +			cache-line-size = <64>;
> +			cache-sets = <512>;
> +		};
>   	};
>   
>   	cpu0_opp_table: opp-table-0 {
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

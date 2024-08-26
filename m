Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63CDBC5321E
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Aug 2024 07:46:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Cc:From:References:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+CxIzw55bbnYdUiEcv0n5Euq7InmQ+SCMITdefcDz6I=; b=jVHRi2smGDHp9R
	IbXEzn7K0xR45HYwb4fo5LhxqtjiVQOdC1a+Ys0GqalyzAxmW6Q6KtfiMhMFih7/rqtFcHW+h7Qew
	kGMtX9w1bFZf1D+/nPeGjHGMAKwSzytkPXMS6RKLUwOcrUWYC8FfL+ElBrDCQx629JzCtK7EVMQuL
	BU7Bq33qgFRIva9h4xGGy3W+dBHvCRL+cKZhmEXzUzxG5/YQLugMv4GCZrJtFyBhQO3Vmht80jsfr
	VFX88Vu0/b0raQRGkcBpm4RyNduFccebOM3g/8HCLFHTv8u11Mr97gEeB6z4ICWn8KjVbWK9WkHO3
	2Kbw2WE9oytPvcoCdKWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siUQs-00000006JGN-1qnt;
	Mon, 26 Aug 2024 07:46:34 +0000
Received: from [129.204.178.38] (helo=classfun.cn)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siUQ3-00000006J9q-2JsW;
	Mon, 26 Aug 2024 07:45:45 +0000
Received: from [192.168.0.160] (unknown [14.153.79.170])
	(Authenticated sender: bigfoot)
	by classfun.cn (Postfix) with ESMTPSA id 21858789DF;
	Mon, 26 Aug 2024 15:45:33 +0800 (CST)
DKIM-Filter: OpenDKIM Filter v2.11.0 classfun.cn 21858789DF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=classfun.cn;
	s=default; t=1724658338;
	bh=m5/rFI10QPDFYm6oHs30udevEbWy1s0fAFZ7HUo6nKU=;
	h=Date:Subject:To:References:From:Cc:In-Reply-To:From;
	b=UYIt0vymjXO0pPbBCdZajGwZOFuifJhyVT320kIjBgeOkzFuxZibkag7/1fN8mo9i
	 pOfrm20CGGJwuthziD0PI73lrTeK1LUgMduoyDvNK2U9zJ5yextJaxLvEpiipo3u0k
	 mqXx5XSzzywBQ6HS7qNVPRR0CLJQX4fdD75kHPqE=
Message-ID: <25346f43-642a-477d-8df5-91ddf2765d69@classfun.cn>
Date: Mon, 26 Aug 2024 15:46:49 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: add dts for LCKFB Taishan Pi
 RK3566
To: Krzysztof Kozlowski <krzk@kernel.org>
References: <20240826044530.726458-1-bigfoot@classfun.cn>
 <20240826044530.726458-4-bigfoot@classfun.cn>
 <wacysftuozwpumrw262tltoxqrldlju7mzj5fnxxcjheycjvzr@wb7mcnbiv6ic>
Content-Language: en-US
From: Junhao Xie <bigfoot@classfun.cn>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, Chukun Pan <amadeus@jmu.edu.cn>,
 FUKAUMI Naoki <naoki@radxa.com>, Dragan Simic <dsimic@manjaro.org>,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Junhao Xie <bigfoot@classfun.cn>
In-Reply-To: <wacysftuozwpumrw262tltoxqrldlju7mzj5fnxxcjheycjvzr@wb7mcnbiv6ic>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_004543_914413_9970142C 
X-CRM114-Status: GOOD (  12.56  )
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

On 2024/8/26 14:06, Krzysztof Kozlowski  wrote:
> On Mon, Aug 26, 2024 at 12:44:13PM +0800, Junhao Xie wrote:
>> Add dts for LCKFB Taishan Pi.
>>

[...]

> 
>> +	dc_12v: dc-12v {
> 
> Use some reasonable prefix or suffix (regulator) for all regulator
> nodes. Or even: use name for all fixed regulators which matches current
> format recommendation: 'regulator-[0-9]v[0-9]'
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/regulator/fixed-regulator.yaml?h=v6.11-rc1#n46
> 

Thanks, I will rename it to dc-12v-regulator

[...]

>> +
>> +&sdhci {
>> +	bus-width = <8>;
>> +	max-frequency = <200000000>;
>> +	non-removable;
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&emmc_bus8 &emmc_clk &emmc_cmd &emmc_datastrobe &emmc_rstnout>;
>> +	status = "okay";
> 
> Keep status the last.
> 
> Best regards,
> Krzysztof
> 
> 

Thanks for your review, I will fix all problems and post patch v2!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

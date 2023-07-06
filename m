Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9356EB64DD
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Jul 2023 17:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=armWHoQFYxwQW6Y6JktpYULel2tVTTVrSmdMMRZ4Cu4=; b=fpXdli2CQN1S9sj/9nDDpapGJG
	jz7J8rvr7bNE+yI7NxZweMbQrX+DMapYegz5pfkRGm0CFA2fwIeS66KyY7rreoC74xmtbQ3blayq2
	A6PbhetpD6CLywVNInkDOsmLmURcOQTVg4FUKe59bRMy8sFnNnTw9n2Q+dWDiSVI31JhAW9JTUlry
	g8uHeDz1o5lGsWr1YQGCGYj5V8/PWemr2vQQSSoJIMZdUoaPcxcKxW2TXLjZrKwzVB/RtHBSTeytC
	c+cjuUbQ2n/QA3Ookjgf4pYfQZIpRVyXacTomeZqcsS2TLL/jCqBJChR24+p+P6a5yTs2oaQ3M2M1
	w4jl+d/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qHT70-002KWG-26;
	Thu, 06 Jul 2023 17:49:50 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qHT6w-002KUk-1o;
	Thu, 06 Jul 2023 17:49:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9A197D75;
	Thu,  6 Jul 2023 10:50:21 -0700 (PDT)
Received: from [10.57.27.160] (unknown [10.57.27.160])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EF5D43F740;
	Thu,  6 Jul 2023 10:49:37 -0700 (PDT)
Message-ID: <9d9245fb-463f-c967-46e5-cfc0ac832792@arm.com>
Date: Thu, 6 Jul 2023 18:49:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [RFT PATCH 1/3] arm64: dts: rockchip: correct audio-codec
 interrupt flag in eaidk-610
Content-Language: en-GB
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230705064823.9210-1-krzysztof.kozlowski@linaro.org>
 <941ead9e-9e46-b5cb-0a8b-345df6606484@linaro.org>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <941ead9e-9e46-b5cb-0a8b-345df6606484@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230706_104946_647057_12852630 
X-CRM114-Status: GOOD (  16.52  )
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

On 2023-07-06 14:54, Krzysztof Kozlowski wrote:
> On 05/07/2023 08:48, Krzysztof Kozlowski wrote:
>> GPIO_ACTIVE_x flags are not correct in the context of interrupt flags.
>> These are simple defines so they could be used in DTS but they will not
>> have the same meaning: GPIO_ACTIVE_HIGH = 0 = IRQ_TYPE_NONE.
>>
>> Correct the interrupt flags, assuming the author of the code wanted same
>> logical behavior behind the name "ACTIVE_xxx", this is:
>>    ACTIVE_LOW  => IRQ_TYPE_LEVEL_LOW
> 
> This should be HIGH in both cases. I will send a v2.

Also the titles say "audio-codec" but they're all touching SDIO WiFi 
modules ;)

Cheers,
Robin.

>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> ---
>>   arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts b/arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts
>> index d1f343345f67..6464ef4d113d 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts
>> +++ b/arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts
>> @@ -773,7 +773,7 @@ brcmf: wifi@1 {
>>   		compatible = "brcm,bcm4329-fmac";
>>   		reg = <1>;
>>   		interrupt-parent = <&gpio0>;
>> -		interrupts = <RK_PA3 GPIO_ACTIVE_HIGH>;
>> +		interrupts = <RK_PA3 IRQ_TYPE_LEVEL_HIGH>;
> 
> Best regards,
> Krzysztof
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

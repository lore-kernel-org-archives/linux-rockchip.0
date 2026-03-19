Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDA7E1075275
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Mar 2026 08:04:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nfioUPqRkBbixEszFiQkmQRHgnzCAQid+O5ycd68xUM=; b=voN442/rXBhl2L
	KdlvEm6JySUolzrjG6n+w9SGrU+6Jf04BTmBaPHANYq0Sh/PeKvG/a6xkfUg7kh0BvRG9aJmP6y9a
	ure8EXo+k6OFM4cL3egrkOULseBm7rIlzkieK+URnhmD0qamCBoDPgQ22Mnddv7DTLBYvTSotxbdU
	xcV3GOydx0Zq4fLY/UY1aj/es6lzyyefLSJ+OSoC1DBqWFLrGytOyU/sdomaplLrphztEgXAbytt3
	v7vYnv1AYeUiIrKo7K9hFHk9C7O02df/1Kfud0EIE97OR9H/jA1opj+TF6n1Yl0k13vvOjTzw6s8T
	kS1Uy74TQm2FNWAHc5rQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w38MZ-0000000ACZ6-3anR;
	Thu, 19 Mar 2026 08:04:15 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w38MV-0000000ACXt-3xJ3;
	Thu, 19 Mar 2026 08:04:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1773907448;
	bh=oddScRKYzaeDQ9pGWNCQ6oWoxk9xdprHLqYG2eBVmlQ=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=a8OcSNGBcqdOsgpeikZ6TXswpBrTS9I3QHnKk4mNa0ibBWD068edwm47HjayT4h9W
	 kxWXUEBdKKC3YD7ccz827IEJHKzS+rNgyqGqeYACcKdFDPNLbot5QEmfSaYqxiNZef
	 Z7Me4f46esE/NOqrpk5CnbXQb6wR7RTn8E0qZq7mq9DoIfsAk01VzTJo2FSBq8ZZGc
	 LsHtwOI8bBu5RjlzRVl7IoJAvLTZ2O4HTJyXlwwqo8OT6fexWio6egKG2laLdeJ0RM
	 cfmnbWJPA03dE3djLFFy3BHb+pBsujxk8g5X/ZGCXG90x3S3PipBHzGxjnmySWmJEG
	 PGL7qpyblQgng==
Received: from [10.40.0.100] (185-67-175-126.lampert.tv [185.67.175.126])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: mriesch)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 79FE417E0EB4;
	Thu, 19 Mar 2026 09:04:07 +0100 (CET)
Message-ID: <d9a9be92-7439-4899-8be2-adf7f0490790@collabora.com>
Date: Thu, 19 Mar 2026 09:04:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/9] media: dt-bindings: add rockchip rk3588 vicap
To: Conor Dooley <conor@kernel.org>
Cc: Mehdi Djait <mehdi.djait@linux.intel.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Kever Yang <kever.yang@rock-chips.com>,
 Jagan Teki <jagan@amarulasolutions.com>,
 =?UTF-8?B?0JrRg9C30L3QtdGG0L7QsiDQnNC40YXQsNC40Ls=?=
 <mai.kuznetsov.misha@gmail.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Collabora Kernel Team <kernel@collabora.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250430-rk3588-vicap-v2-0-77de5ee9048e@collabora.com>
 <20250430-rk3588-vicap-v2-2-77de5ee9048e@collabora.com>
 <20260318-mumbo-lumber-b550932a5423@spud>
Content-Language: en-US
From: Michael Riesch <michael.riesch@collabora.com>
In-Reply-To: <20260318-mumbo-lumber-b550932a5423@spud>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260319_010412_183523_C9F1E497 
X-CRM114-Status: GOOD (  14.30  )
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

Hi Conor,

On 3/18/26 18:52, Conor Dooley wrote:
> [...]
>>  
>>    resets:
>> -    items:
>> -      - description: ARST
>> -      - description: HRST
>> -      - description: DRST
>> -      - description: PRST
>> -      - description: IRST
>> +    minItems: 5
>> +    maxItems: 9
>>  
>>    reset-names:
>> -    items:
>> -      - const: arst
>> -      - const: hrst
>> -      - const: drst
>> -      - const: prst
>> -      - const: irst
>> +    minItems: 5
>> +    maxItems: 9
> 
>> +allOf:
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            const: rockchip,rk3568-vicap
>> +    then:
>> +      properties:
>> +        clocks:
>> +          minItems: 4
>> +          maxItems: 4
> 
> Anything here that repeats the outermost constraint should be dropped,
> so no minItems here..

I already took a look at similar VICAPs (e.g., R3576) that will have
more clocks. This is way I left this one in here.

But I guess I will remove it and add it again when e.g. RK3576 VICAP
support is added.

>> [...]
> 
>> +
>> +        reset-names:
>> +          items:
>> +            - const: arst
>> +            - const: hrst
>> +            - const: drst
>> +            - const: irst0
> 
> Were you willing to reuse "irst" for the 0th irst, all the repetition
> wouldn't be needed. I assume it represents the reset for the port at
> address 0, so it wouldn't even be a different meaning on each device.

Not quite I think. "{a,h,d}rst" are the same on all variants, then there
is "prst" and "irst" on RK3568 and "irst{0-5}" on RK3588. So I thought
that writing it out explicitly for each variant is more readable (even
though it may need a few characters more).

OK?

I'll try to send out a new version later today.

Best regards,
Michael

> 
>> +            - const: irst1
>> +            - const: irst2
>> +            - const: irst3
>> +            - const: irst4
>> +            - const: irst5
>> +
>>  additionalProperties: false
>>  
>>  examples:
>>
>> -- 
>> 2.39.5
>>
>>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

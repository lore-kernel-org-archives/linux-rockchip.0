Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7008CCDE006
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Nov 2025 07:12:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PMRvf33Br4ekgR8gYr9jgRkSDeK/o0ssTEXSo4SABkI=; b=hL4+kAiXBjn2UW
	5XXpQa2WSGCGAITPyVNIffRM4ufEvXPICSpSQFLWlA7zJWt/dawsE6fZTG9AbbB5vYA17xJATcy1F
	5e0yCEFlhWVy3Cm96FDt84Tc8kLYsu80dx3ce2b9KJZH98JgOehp2WZzWo79+FMuVh8rAUKVOJc1B
	7QQ+UqmyEyOQGv+Sf850B2xAX2z96M5q8UKbwlsRMM6M85JBmevgi3HNd7ejL62iUIX5w/RGpkagJ
	jdtWXIn8xkD+Mc44Fv8HbZ0z5YfZaCfDBb4WMgBcemvdQyfXvw0QjCY8rqWd4a8c3ZiFEQVS9rMaw
	1jSgA6QTpXEdYRivyANw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJnyh-0000000BjGt-3DLH;
	Fri, 14 Nov 2025 07:12:15 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJnyf-0000000BjGZ-0SQw
	for linux-rockchip@lists.infradead.org;
	Fri, 14 Nov 2025 07:12:14 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 6C1CE43C35;
	Fri, 14 Nov 2025 07:12:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 84443C113D0;
	Fri, 14 Nov 2025 07:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763104332;
	bh=bfQ1ZLsBAds0j6ibLwiSL4xWiijnFqeBR06qt8zrRkY=;
	h=Date:Subject:From:To:Cc:References:In-Reply-To:From;
	b=uEUI4ywRdEPum2zM2Ga7E4hoAauDjdu6IvJxfY6TgGQIBD84K9dRZxN64zfR9BLyD
	 WW2frrsjA2qdYdW7QKkVMtqWRQDffuc4pTMrlFsuyEgVaZw5xfpZIxyYKqs/gxuGjB
	 GjRpBKrKDdwH5sW7WvgL+70IuhRQkzSQtW9+/4ty9s60Dy1S7MW7tCJjllN8d1U9u8
	 KnQ6t2y+QJe8Bz72MEjD9UJ5by0N9saCqtTrsFbm9LAZYaDH/zLjOjkUhWIoxUfKT9
	 3txbfcp6idn5b91TNKXQmWFz25z7ofecgW+zN3EbXYmOVjPcewFiLRCkOVZeC9ccnp
	 v/3tmYijttnDQ==
Message-ID: <2177a0f0-68df-495c-b267-18e3d9b6ca80@kernel.org>
Date: Fri, 14 Nov 2025 08:12:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 1/3] dt-bindings: arm: rockchip: Add Radxa CM5 IO Board
From: Krzysztof Kozlowski <krzk@kernel.org>
To: FUKAUMI Naoki <naoki@radxa.com>, heiko@sntech.de
Cc: joseph.kogut@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, jonas@kwiboo.se, kever.yang@rock-chips.com,
 i@next.chainsx.cn, honyuenkwun@gmail.com, quentin.schulz@cherry.de,
 dsimic@manjaro.org, pbrobinson@gmail.com, amadeus@jmu.edu.cn,
 jbx6244@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20251105051335.17652-1-naoki@radxa.com>
 <20251105051335.17652-2-naoki@radxa.com>
 <ce6e6369-a7e4-4a35-80f8-70ef41c3b877@kernel.org>
 <A6C1199E2A0D3F37+f3fe0fd5-4ca5-4d3d-bc1d-45f46b48f89b@radxa.com>
 <93deab54-bd5e-433e-acbc-13f6ead47f43@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 a/A=
In-Reply-To: <93deab54-bd5e-433e-acbc-13f6ead47f43@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251113_231213_448258_175469D6 
X-CRM114-Status: GOOD (  11.18  )
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

On 05/11/2025 08:08, Krzysztof Kozlowski wrote:
> On 05/11/2025 07:57, FUKAUMI Naoki wrote:
>> On 11/5/25 15:43, Krzysztof Kozlowski wrote:
>>> On 05/11/2025 06:13, FUKAUMI Naoki wrote:
>>>> Add device tree binding documentation for the Radxa CM5 IO Board.
>>>>
>>>> Link: https://dl.radxa.com/cm5/radxa_cm5_product_brief.pdf
>>>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>>>> Signed-off-by: Joseph Kogut <joseph.kogut@gmail.com>
>>>
>>> Wrong DCO chain.
>>>
>>>> ---
>>>>   Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
>>>
>>> NAK, you just stolen ownership of an already posted patch.
>>
>> Read "Changes in v6" and patches; my patches are not the same as v5.
>> Your reply is totally inappropriate.
> 
> Inappropriate is taking authorship of someone's patch, because we all
> expect to preserve the original authorship. That's not only basic
> decency but actually a standard.
> 
> Additionally, read Joseph's reply that he wants to continue the work:
> https://lore.kernel.org/all/CAMWSM7iHtAxewW4JkRqRsifVnccqeFviaCgeOyprKDr92FOurg@mail.gmail.com/
> 
> You clearly do not understand how to continue with someone's work.
> 
> It is still a NAK.

And I still wait for justification why you took authorship of this
patch, because to my eye you changed here nothing.

So what did you change HERE that you think you are the author now?

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

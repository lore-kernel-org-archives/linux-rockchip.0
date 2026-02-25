Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B587FD375D
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Feb 2026 13:37:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QPAW9wfyasKTNvA6TS91yIavpyO46oedW429Wn36iQg=; b=oGcct70iqmZIO5
	+7nlBup2w7VblZh4IfTmopQAYWtZB39bJ4IfWoiO1eYZguYyLS2YZakvuasahJ5BD6eSlx1cuYj6v
	Ys6isEUst2EOBlD1zjSwqee0HXjXm2qT6aclVKUUP8mj8Nu69dTMx6UUnaYCX4aH559Wn46gbp4EY
	YNVkeOJU5Tn2hz/6c+56WN5akZXEGGjmW/m8DzY+aWNO4UsoeO5QQsYt7xN6Axxqw+faZ7uGsRRAO
	dD/W+wzj2F9oL96XaJLukKb9jSCtezuqAX8zEOo9OcYWdHqgaZNKwKgAwyVrHLdOpH0p5xcygwx/d
	sB1+9dMbfrTMz/eINh/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvF4U-000000047EK-0YDa;
	Wed, 25 Feb 2026 13:36:58 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvF4Q-000000047Dg-41Te;
	Wed, 25 Feb 2026 13:36:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1772026582;
	bh=LL4ZOGnPWc2hAcsIaVPBMhFQys9LOPURRwJVpf6n/Pw=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=bTjVLuxdNmDer6Vg9iTxCZJWTufcRZQ8LRxQLpwsdB1mkyUFmAI4hDziIxw47c+gH
	 5UAwNQGgLYQRO7LEN2k7hVlqb3CPW1ShoRu8fEncJgvo35pS6A9QF8T7OiknOQDE+F
	 1ZGm+nN9hQTmDkA/hk1pGZXVPKmytdO1+CDf8FSbarbiFIkVhdvom2JF2w74DKSYT7
	 OiA5oDv2MsEMrDirg9E0UIol8lR9QCtyP64W18O7q2UlPdUzNNGHkSynwrvWDhaQVP
	 K1KQp+cr/Q4ZZGoAZNp05LdzVvwGyVDm6EO5YMzEWdrQS6ah7lRN6g4EtRlX8d43go
	 S3FvhtbwaX48w==
Received: from [192.168.1.90] (unknown [86.123.23.225])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 7C73717E03E6;
	Wed, 25 Feb 2026 14:36:21 +0100 (CET)
Message-ID: <d5a244f3-5f1b-4bcb-8042-646320a47b6c@collabora.com>
Date: Wed, 25 Feb 2026 15:36:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/3] media: dt-bindings: rockchip,vdec: Add alternative
 reg-names order for RK35{76,88}
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Detlev Casanova <detlev.casanova@collabora.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Hans Verkuil <hverkuil@kernel.org>
Cc: kernel@collabora.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Conor Dooley <conor.dooley@microchip.com>,
 linux-media@vger.kernel.org
References: <20260225-vdec-reg-order-rk3576-v3-0-5a2ebe1b11a8@collabora.com>
 <20260225-vdec-reg-order-rk3576-v3-1-5a2ebe1b11a8@collabora.com>
 <9bb74438-e759-46a7-9fa1-2c6b1fced76b@kernel.org>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <9bb74438-e759-46a7-9fa1-2c6b1fced76b@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260225_053655_182544_E6D56C60 
X-CRM114-Status: GOOD (  24.13  )
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

On 2/25/26 2:26 PM, Krzysztof Kozlowski wrote:
> On 25/02/2026 13:19, Cristian Ciocaltea wrote:
>> With the introduction of the RK3588 SoC, and RK3576 afterwards, the
>> 'link' and 'cache' register blocks have been provided for the video
>> decoder unit in addition to the existing 'function' one, which now shows
>> up in between them (from address-based ordering point of view).
>>
>> However, the binding does not properly describe this hardware layout, as
>> the new blocks are listed after the old one.  Therefore it breaks the
>> convention expecting the unit address to indicate the first register
>> range.
>>
>> Since the binding changes have been already released and a fix would
>> bring up an ABI break, mark the current 'reg-names' listing as
>> deprecated and introduce an alternative 'link,function,cache' one.
>>
>> Additionally, drop the 'reg' description items as the order is not fixed
>> anymore, while the information they offer is not very relevant anyway.
>>
>> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
>> ---
>>  .../devicetree/bindings/media/rockchip,vdec.yaml      | 19 ++++++++++++-------
>>  1 file changed, 12 insertions(+), 7 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
>> index 809fda45b3bd..3f6072e8baa5 100644
>> --- a/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
>> +++ b/Documentation/devicetree/bindings/media/rockchip,vdec.yaml
>> @@ -28,16 +28,21 @@ properties:
>>  
>>    reg:
>>      minItems: 1
>> -    items:
>> -      - description: The function configuration registers base
>> -      - description: The link table configuration registers base
>> -      - description: The cache configuration registers base
>> +    maxItems: 3
>>  
>>    reg-names:
>> -    items:
>> +    oneOf:
>>        - const: function
> 
> This is confusing, I think I missed that in previous patch because it
> did not leave that part or I misread the diff hunk - why do you allow
> one entry?

That's for the older SoCs, e.g. RK3288, RK3399, as the 'link' and 'cache' blocks
are only available for RK3576 & RK3588.

> 
> If the first entry is function, then all others MUST built on top, thus
> this:
> 
>> +          - const: link
>> +          - const: function
>> +          - const: cache
> 
> is not correct.
> 
> No, you don't change the orders. So again, if you have such binding,
> then you just fix the unit address leaving the binding as is.

Changing the unit address would mean it will point inside the register range,
rather than at the beginning of it.

Sorry, but I don't quite get why would this be a better approach than just
properly list the items according to the HW layout, i.e. following the
address-based ordering?

Thanks,
Cristian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE65BC02182
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jan 2025 08:12:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8U33iCUn7uR6crzeK5lz/niWMDaOGlA/VfwxRsnXCKc=; b=FLN1yKz830mFnw
	Js7g6Hex+vQAZOzD1324K19EIE+wRofWHxlnIuZwEJQipjM7dfAtn764Zfs06fcd/y3X83JO3oKqB
	6FhAI82OyN8xE8v6iLDnenqxfWfsYGpPrKmX8qHTx184PIsW4/PPHI0glIkalJ4wCD1zXyaOC4FnL
	h22PAED4anV9vAFmtQRLJEOyj83HVqeeWjslqmn6PSyOpICiPvE8MpSaaDVPmTHv/0lMikRtL7h57
	HGmsqulEIMIkdaZNrwiyaofoWkvNdy9wXKstm/MfNe8yKvkqKnNgfCeUVPg4S+pbb7kd2MHVyasGn
	bsE7I49M+PXX4evj/9RA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tasK9-0000000Bx4u-0zAB;
	Thu, 23 Jan 2025 08:12:25 +0000
Received: from m16.mail.163.com ([117.135.210.2])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tasIp-0000000BwhX-1tSn;
	Thu, 23 Jan 2025 08:11:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=BXyofrVnYuyYwzI7LGAdKQQArMh8Hu8gMywmqLa91A0=; b=q
	VQqZvDR1/UJdOvpmORbgMSebNXA6d6tzM08WEiXHcHYkv7vXZCnCdjcvQgROPajY
	vOGmjCEaNLw5yecn3zPAZrXLDrP68s/GZSbxhykBTBkSlGwh/P5YlrJQur0TSY2t
	97pIlWyrILQiC0Md/0iCXyIyHqaZ3t3GL6Z7H6pcaw=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-141 (Coremail) ; Thu, 23 Jan 2025 16:10:05 +0800
 (CST)
X-Originating-IP: [58.22.7.114]
Date: Thu, 23 Jan 2025 16:10:05 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Krzysztof Kozlowski" <krzk@kernel.org>
Cc: heiko@sntech.de, hjc@rock-chips.com, krzk+dt@kernel.org,
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org, derek.foreman@collabora.com,
	detlev.casanova@collabora.com, daniel@fooishbar.org, robh@kernel.org,
	sebastian.reichel@collabora.com,
	"Andy Yan" <andy.yan@rock-chips.com>
Subject: Re:Re: [PATCH v12 12/13] dt-bindings: display: vop2: Add rk3576
 support
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20240801(9da12a7b)
 Copyright (c) 2002-2025 www.mailtech.cn 163com
In-Reply-To: <77ea5067-deb2-41d4-ab82-ce19ac018ba3@kernel.org>
References: <20250121103254.2528004-1-andyshrk@163.com>
 <20250121103500.2528258-1-andyshrk@163.com>
 <20250122-amber-moth-of-upgrade-fa8331@krzk-bin>
 <5eb4acaa.6df6.1948d68332d.Coremail.andyshrk@163.com>
 <77ea5067-deb2-41d4-ab82-ce19ac018ba3@kernel.org>
X-NTES-SC: AL_Qu2YBfqatkAr4yOZZOkfmkcVgOw9UcO5v/Qk3oZXOJF8jCrr+CUnVkFMJFbsweeONhCLrheYTj1O48h1bZN6b5MbTaya5DqRSALoAlPBehXcjA==
MIME-Version: 1.0
Message-ID: <11e72cc2.55fd.19492361487.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: jSgvCgCnbwNd+ZFnfWZdAA--.20373W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqRPdXmeR6wnIewADsd
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250123_001103_853081_4DF5B085 
X-CRM114-Status: UNSURE (   8.88  )
X-CRM114-Notice: Please train this message.
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



Hi Krzysztof,
At 2025-01-22 17:55:34, "Krzysztof Kozlowski" <krzk@kernel.org> wrote:
>On 22/01/2025 10:46, Andy Yan wrote:
>>>> -      The VOP interrupt is shared by several interrupt sources, such as
>>>> -      frame start (VSYNC), line flag and other status interrupts.
>>>> +      For VOP version under rk3576, the interrupt is shared by several interrupt
>>>> +      sources, such as frame start (VSYNC), line flag and other interrupt status.
>>>> +      For VOP version from rk3576 there is a system interrupt for bus error, and
>>>> +      every video port has it's independent interrupts for vsync and other video
>>>> +      port related error interrupts.
>>>> +
>>>> +  interrupt-names:
>>>> +    items:
>>>> +      - const: sys
>>>> +      - const: vp0
>>>> +      - const: vp1
>>>> +      - const: vp2
>>>>  
>>>>    # See compatible-specific constraints below.
>>>>    clocks:
>>>> @@ -135,6 +147,8 @@ allOf:
>>>>          interrupts:
>>>>            maxItems: 1
>>>
>>> So this change moves to this patch.
>>>
>>>>  
>>>> +        interrupt-names: false
>>>> +
>>>>          ports:
>>>>            required:
>>>>              - port@0
>>>> @@ -148,6 +162,39 @@ allOf:
>>>>        required:
>>>>          - rockchip,grf
>>>>  
>>>> +  - if:
>>>> +      properties:
>>>> +        compatible:
>>>> +          contains:
>>>> +            enum:
>>>> +              - rockchip,rk3576-vop
>>>> +    then:
>>>> +      properties:
>>>> +        clocks:
>>>> +          minItems: 5
>>>
>>> No. You did not implement my comment at all.
>>>
>>> So again:
>>> "Why minItems? Nothing in this patch makes sense for me. Neither changing
>>> existing binding nor new binding for rk3576."
>> 
>> Do you mean because I already defined minItems of clocks is 5 on the top, so 
>> there is no need to redefine the same minItems here ?
>
>Lists must be constrained. This is not constrained from the max items
>and you repeat existing constrain.
>
>For every variable list you need to provide min and maxItems, except the
>edge cases when dimension matches top level dimension.
>
>Standard example is:
>
>https://elixir.bootlin.com/linux/v6.11-rc6/source/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml#L127
>
>which I mention on mailing lists multiple times. Also described this

>case exactly on my two talks...


Do you mean these two talks[0][1] ?
[0] https://eoss24.sched.com/event/1aBEf/whack-a-mole-with-dts-validation-in-the-linux-kernel-krzysztof-kozlowski-linaro?linkback=grid
[1] https://eoss2023.sched.com/event/1LcNo/how-to-get-your-dt-schema-bindings-accepted-in-less-than-10-iterations-krzysztof-kozlowski-linaro 

>
>> 
>>>
>>> To address such comment, come with reasonable answer to "why". Not just
>>> send the same. It's a waste of my time to keep reviewing the same.
>> 
>> Before sending this patch, I asked you what the next step should be, but you didn't respond.
>
>You asked whether splitting is correct and I did not object that. I
>already said: " You need to split reorganizing", then you asked if you
>can split, so sorry, I am not going to keep repeating the same multiple
>times.
>
>But anyway this is not about the split, so you did not question last
>time how to do it. You just skipped my paragraph asking for "Why?".
>
>
>
>Best regards,
>Krzysztof
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

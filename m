Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90C16CEF17D
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Oct 2024 14:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RHzstIEkAsWRuE7NX0udiX+7k7w3Q5yJuzHPY0Acg3E=; b=cGOEhvXRVvHVLA
	ZA19o6BOHAjw/vk9JTNbczRp6YeE/lJiYDNYHIxfqu0VzDBxeonTWBaH9mWffO20NxV2b0NeVa26o
	4CNxKsougI2bYKgibVWALiHgDgFNHGxUHC44b2MNOnSRqv1yQwMpgvDtGJLA+ffVohANCZKVZcUqt
	2Z0iPwmFAlGH88dFjcr+GONwRI1nxoChWcr9tM2kr9aktFv6ukLC+1Yu9gEvPY3cCZat9iQjPTQUY
	7PmKv5eq/eabWGin5zYuFo42SS/VwVyFkeIo7uqsWlpRzFFG58dgWXG43zs3F0McQYbsW1WPCp/12
	8Qze+21yHgGbGAG14IVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syBRQ-00000006DqC-1mvZ;
	Tue, 08 Oct 2024 14:44:00 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syBKb-00000006C0J-22QP;
	Tue, 08 Oct 2024 14:36:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id D9B1CA41F43;
	Tue,  8 Oct 2024 14:36:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B1F88C4CEC7;
	Tue,  8 Oct 2024 14:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728398216;
	bh=oYAO6+RnfqjPS2tYqJIFO8e6XQXrhYZz+XrfGjL0Ufc=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=EmxSa4+byuIFypF0CQ4LUE2nJ4QP+VhgDuYtB2KguvnZjhi5nEODDMa+ZWt+LqzwU
	 jL8AoUBr3kyOMzjDzTj5sPXahJJKFawG9HqplnI2SIpN72E2A+/kiium2dbKoWyIB3
	 tf7rV0I+xH7QRIg/Lf4ee3TCHkFTziDgAnw9Z3oxy5gd1zb+YW6cRJ7Jzc+jxsx9Ui
	 khA5rzwKiHNtWx3eD7BwlYkwogY+4PRoTcrILH7ALP5gYdQvRgeqKQeWMNegVKgumx
	 syOUqioLSNd9y+NwOfAkDQkco1/wxdRFB9nXE0bWTj1EdkH6vTBi2JOWYGkX/ftZqH
	 hzSLLXbMmV7bg==
Message-ID: <3a45f6c8-bf2f-4227-b03a-4cf07a43b8a3@kernel.org>
Date: Tue, 8 Oct 2024 16:36:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/3] dt-bindings: phy: rockchip,inno-usb2phy: add
 rk3576
To: Frank Wang <frawang.cn@gmail.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, heiko@sntech.de, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 william.wu@rock-chips.com, tim.chen@rock-chips.com, frank.wang@rock-chips.com
References: <20240929061025.3704-1-frawang.cn@gmail.com>
 <20240929061025.3704-2-frawang.cn@gmail.com>
 <4czjtesext2ulsmcym2cpjavni7zuve2sdgyiqxkjkaxrl2gpf@7nqylzgd5f55>
 <b3046637-7a35-49ef-a2b4-2f44355980a7@gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <b3046637-7a35-49ef-a2b4-2f44355980a7@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_073657_800114_264C60C5 
X-CRM114-Status: GOOD (  17.63  )
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

On 08/10/2024 05:04, Frank Wang wrote:
> Hi Krzysztof,
> 
> On 2024/9/30 3:36, Krzysztof Kozlowski wrote:
>> On Sun, Sep 29, 2024 at 02:10:24PM +0800, Frank Wang wrote:
>>> From: Frank Wang <frank.wang@rock-chips.com>
>>>
>>> Add compatible for the USB2 phy in the Rockchip RK3576 SoC.
>>>
>>> This change also refactor the clocks list as there are new clocks
>>> adding used for the USB MMU in RK3576 SoC.
>>>
>>> Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
>>> ---
>>> Changelog:
>>> v4:
>>>   - refactor the clocks list used if:then:
>>>
>>> v3:
>>>   - narrowed rk3576 clocks by compatible property.
>>>
>>> v2:
>>>   - Categorize clock names by oneOf keyword.
>>>
>>> v1:
>>>   - https://patchwork.kernel.org/project/linux-phy/patch/20240923025326.10467-1-frank.wang@rock-chips.com/
>>>
>>>   .../bindings/phy/rockchip,inno-usb2phy.yaml   | 46 ++++++++++++++++++-
>>>   1 file changed, 44 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
>>> index 5254413137c6..fc2c03d01a20 100644
>>> --- a/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
>>> +++ b/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
>>> @@ -20,6 +20,7 @@ properties:
>>>         - rockchip,rk3366-usb2phy
>>>         - rockchip,rk3399-usb2phy
>>>         - rockchip,rk3568-usb2phy
>>> +      - rockchip,rk3576-usb2phy
>>>         - rockchip,rk3588-usb2phy
>>>         - rockchip,rv1108-usb2phy
>>>   
>>> @@ -34,10 +35,12 @@ properties:
>>>       const: 0
>>>   
>>>     clocks:
>>> -    maxItems: 1
>>> +    minItems: 1
>>> +    maxItems: 3
>>>   
>>>     clock-names:
>>> -    const: phyclk
>>> +    minItems: 1
>>> +    maxItems: 3
>>>   
>>>     assigned-clocks:
>>>       description:
>>> @@ -172,6 +175,45 @@ allOf:
>>>               - interrupts
>>>               - interrupt-names
>>>   
>>> +  - if:
>>> +      properties:
>>> +        compatible:
>>> +          contains:
>>> +            enum:
>>> +              - rockchip,px30-usb2phy
>>> +              - rockchip,rk3128-usb2phy
>>> +              - rockchip,rk3228-usb2phy
>>> +              - rockchip,rk3308-usb2phy
>>> +              - rockchip,rk3328-usb2phy
>>> +              - rockchip,rk3366-usb2phy
>>> +              - rockchip,rk3399-usb2phy
>>> +              - rockchip,rk3568-usb2phy
>>> +              - rockchip,rk3588-usb2phy
>>> +              - rockchip,rv1108-usb2phy
>>> +    then:
>>> +      properties:
>>> +        clocks:
>>> +          maxItems: 1
>>> +        clock-names:
>>> +          const: phyclk
>> maxItems: 1 instead
> 
> Sorry for late reply.
> 
> Do you mean use "maxItems: 1" instead of "const: phyclk" ?
> 
> 
>>> +
>>> +  - if:
>>> +      properties:
>>> +        compatible:
>>> +          contains:
>>> +            enum:
>>> +              - rockchip,rk3576-usb2phy
>>> +    then:
>>> +      properties:
>>> +        clocks:
>>> +          minItems: 3
>>> +          maxItems: 3
>>> +        clock-names:
>>> +          items:
>>> +            - const: phyclk
>>> +            - const: aclk
>>> +            - const: aclk_slv
>> This list goes to the top property with minItems: 1. Here you have only
>> minItems: 3.
>>
>> This way you have only one definition of entire list with same order of
>> items between variants.
> 
> For rockchip,rk3576-usb2phy, three clocks are all required, and the 
> driver does not care about the order of the clocks.
> 
> So is the above definition correct?

Of course not. What I wrote is correct.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

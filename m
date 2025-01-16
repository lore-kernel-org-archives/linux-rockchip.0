Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB84DC02180
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jan 2025 08:30:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z9+CPtK4kesP6MnDP5EhLDLbogClyymW8kRfrqq7heM=; b=hbGnHRWVEmaEtw
	JwfezWAB8H09UgdOYWbVpDOI7LrK8GrkL26vOM0mIazrp9xQB3cGK0WQuLzryAWsASrH1VSW3s1X2
	77rkdQUycDiFUmNO02Er/rj5x6WB4n7FHtL7zkhnEOF52ouJAvMZn8XG4A/Ii8Vm/KkJPyyQW9XVK
	l5K7yBbXYOnE88jibGM424cDSAuEbISIwrakrpRSD59RqRQEuWdm7ldAXl6A87qLTsmkWINMSwdrU
	LEVCIpgXEuIlHrC3aYauPgjDFLBTOUl5SRqzGs3yG+ydUvqGGfaQp6oSNDULT8iS0DV8F1JRK9WIj
	vODl/pkfG7HsSS5mdhFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tYLH9-0000000EDXY-3xjN;
	Thu, 16 Jan 2025 08:30:51 +0000
Received: from m16.mail.163.com ([220.197.31.4])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tYLFs-0000000EDGd-0V9A;
	Thu, 16 Jan 2025 08:29:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=Jp2pRXZexydmXCI8/gUBpp2H+ifwmmcIHVvnsMZb7WQ=; b=E
	LQKfR9zxZAtMMzT1A2dBhZXdQx/30olE98zDgaBrKpADjtLqAQVPQ8ZgpqEcWDCg
	sfrZJAgBSczhHm7BztA++MFtdmc30BTWE7MH/403H2owp6PCk7uj7KwOrasjG6zj
	iVbx27CiKttvDu+MoK+/28jEyjSIHUhQ5nHlCcgGHY=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-117 (Coremail) ; Thu, 16 Jan 2025 16:27:42 +0800
 (CST)
X-Originating-IP: [58.22.7.114]
Date: Thu, 16 Jan 2025 16:27:42 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Krzysztof Kozlowski" <krzk@kernel.org>
Cc: heiko@sntech.de, hjc@rock-chips.com, krzk+dt@kernel.org,
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org, derek.foreman@collabora.com,
	detlev.casanova@collabora.com, daniel@fooishbar.org, robh@kernel.org,
	sebastian.reichel@collabora.com,
	"Andy Yan" <andy.yan@rock-chips.com>
Subject: Re:Re:Re: [PATCH v11 10/11] dt-bindings: display: vop2: Add rk3576
 support
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20240801(9da12a7b)
 Copyright (c) 2002-2025 www.mailtech.cn 163com
In-Reply-To: <3a93b0e3.1b0c.1945a1f4dbd.Coremail.andyshrk@163.com>
References: <20250111112614.432247-1-andyshrk@163.com>
 <20250111112614.432247-11-andyshrk@163.com>
 <i5mp7wrogfc7w3fbmvqgqxsbgcx4xnfnjik4rpd35amdwgppan@fistrhikrrmd>
 <3a93b0e3.1b0c.1945a1f4dbd.Coremail.andyshrk@163.com>
X-NTES-SC: AL_Qu2YBfyauUgt5CecZulS/DNQ2YpmHKvs4olgqcQkZd0qqTHPyz4QZ0BuLUbI3d7Zvc2YEN/kNIz7hm45G8K9
MIME-Version: 1.0
Message-ID: <652ec3b0.6e7b.1946e39b31e.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: dSgvCgD3v47+wohnYKRYAA--.37488W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqRXWXmeIvFiXEgADs5
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250116_002932_528392_837C67A3 
X-CRM114-Status: UNSURE (   8.29  )
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

At 2025-01-12 18:46:28, "Andy Yan" <andyshrk@163.com> wrote:
>
>Hi Krzysztof,
>
>At 2025-01-12 17:27:18, "Krzysztof Kozlowski" <krzk@kernel.org> wrote:
>>On Sat, Jan 11, 2025 at 07:26:08PM +0800, Andy Yan wrote:
>>>    # See compatible-specific constraints below.
>>>    clocks:
>>> @@ -120,43 +133,98 @@ allOf:
>>>        properties:
>>>          compatible:
>>>            contains:
>>> -            const: rockchip,rk3588-vop
>>> +            enum:
>>> +              - rockchip,rk3566-vop
>>> +              - rockchip,rk3568-vop
>>>      then:
>>>        properties:
>>>          clocks:
>>> -          minItems: 7
>>> +          minItems: 5
>>
>>That's wrong, why maxItems became minItems? How is this related to rk3576?
>>
>>> +
>>>          clock-names:
>>> -          minItems: 7
>>> +          minItems: 5
>>
>>You are doing here way too much. You need to split reorganizing, so we
>>will see what comes new.
>>
>>And of course you need to explain why you are changing EXISTING binding
>>(I am not talking about shuffling around - you change the binding).
>
>How about split this patch to two: One rework the existing binding,  make it
>more suitable for expanding to include new SoCs.
>Then add rk3576 in the second patch ?

Can you confirm whether this approach is acceptable?  I want to  clarify  with you
before sending the next version.


>
>
>>
>>
>>> +
>>> +        interrupts:
>>> +          maxItems: 1
>>> +
>>> +        interrupt-names: false
>>>  
>>>          ports:
>>>            required:
>>>              - port@0
>>>              - port@1
>>>              - port@2
>>> -            - port@3
>>> +
>>> +        rockchip,vo1-grf: false
>>> +        rockchip,vop-grf: false
>>> +        rockchip,pmu: false
>>>  
>>>        required:
>>>          - rockchip,grf
>>> -        - rockchip,vo1-grf
>>> -        - rockchip,vop-grf
>>> -        - rockchip,pmu
>>>  
>>> -    else:
>>> +  - if:
>>> +      properties:
>>> +        compatible:
>>> +          contains:
>>> +            enum:
>>> +              - rockchip,rk3576-vop
>>> +    then:
>>>        properties:
>>> +        clocks:
>>> +          minItems: 5
>>
>>
>>Why minItems? Nothing in this patch makes sense for me. Neither changing
>>existing binding nor new binding for rk3576.
>>
>>> +
>>> +        clock-names:
>>> +          minItems: 5
>>> +
>>> +        interrupts:
>>> +          minItems: 4
>>> +
>>> +        interrupt-names:
>>> +          minItems: 4
>>> +
>>> +        ports:
>>> +          required:
>>> +            - port@0
>>> +            - port@1
>>> +            - port@2
>>> +
>>>          rockchip,vo1-grf: false
>>>          rockchip,vop-grf: false
>>> -        rockchip,pmu: false
>>>  
>>> +      required:
>>> +        - rockchip,grf
>>> +        - rockchip,pmu
>>> +
>>> +  - if:
>>> +      properties:
>>> +        compatible:
>>> +          contains:
>>> +            const: rockchip,rk3588-vop
>>> +    then:
>>> +      properties:
>>>          clocks:
>>> -          maxItems: 5
>>> +          minItems: 7
>>
>>And again weird change to the binding.
>>
>>Best regards,
>>Krzysztof
>>
>>
>>_______________________________________________
>>Linux-rockchip mailing list
>>Linux-rockchip@lists.infradead.org
>>http://lists.infradead.org/mailman/listinfo/linux-rockchip
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5ED95C369A3
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Sep 2024 07:18:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LV2ytqBt4l+BAUn6XEUQ4igDB2AJETafDwR6UAHvU+w=; b=PeG3tjErreLx0z
	/MtSXqqcnHDMZxLf9LLJt5P0V6GRsFnqQ241ti3oXl4gnTQes86wEGNqvMgO6PRetCo/LYaqJaN9L
	RDjeOhfP+97FyEoW/KsBJyPhHrlyWFKNw46B/gaknv/YcDDo6kteLI8ZPVlC3yXeIpi8Fgh8xDSis
	/ExtOZLgcIfN4sbehD1uVhzsa042sIcKQmLqbukYWDwawN1hoo8Rc+u6F8IfQW1ur7fBzH95dVDUP
	W4IyAVSIjUjDQT8RzvtvA3PmPHdq8FkiKydawcEsMiFz3/K31SyX8+5JmchPjUH1k6RtUaihj0bRc
	6uV2aHyMxXjnGIiaC9WQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stMIV-00000004I1f-2vVa;
	Wed, 25 Sep 2024 07:18:51 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stMGV-00000004HPq-0Oa6;
	Wed, 25 Sep 2024 07:16:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 534195C5D15;
	Wed, 25 Sep 2024 07:16:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 90D41C4CEC3;
	Wed, 25 Sep 2024 07:16:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727248606;
	bh=wlACnvaHMg42FGtJEoBPkQSfA29gqh3WPsl/M0+9Cu8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=SkaoKo+tJ04Oi1whNH0iQvQ2ebWfeKjM+QaIaYnvG9aEQgpHXSHn7PBnV6Gi/rR1v
	 Ah4EnaOJqO1wlqdD89A04+6DN1HA2wEbFYVVuUiWNdqauze62x9wYeaPTtXhwMl7eG
	 db8vtygygIVh0k0DZuxqOyzh66JK12v7bsOEkIuU3PnGcxQHYvYRBJD+kdQ8gbfAZP
	 02RghyUDTvBzqw9PdCm4s+onpBT1KbPDA5l+idkljBG8vWrUS7nFKqGCVo4oqVHCTk
	 ksVo39J0Ke5/8IeHcpUpck723uk4EKUOhmO2e12zxRnGpkupAbJkTBIpTquJhdtidj
	 JkgJu8hoFLt/Q==
Message-ID: <2a4200ac-3ea2-4449-94ac-c4b9f37ad800@kernel.org>
Date: Wed, 25 Sep 2024 09:16:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: rockchip,inno-usb2phy: add
 rk3576
To: Frank Wang <frawang.cn@gmail.com>, Conor Dooley <conor@kernel.org>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, heiko@sntech.de, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 william.wu@rock-chips.com, tim.chen@rock-chips.com,
 Frank Wang <frank.wang@rock-chips.com>
References: <20240924085510.20863-1-frawang.cn@gmail.com>
 <20240924-overtly-curable-13df2e7fdc9b@spud>
 <87146372-6d05-4994-8f64-47f4cb07e2b4@gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <87146372-6d05-4994-8f64-47f4cb07e2b4@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240925_001647_302589_A4EB03E9 
X-CRM114-Status: GOOD (  15.01  )
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

On 25/09/2024 04:09, Frank Wang wrote:
> Hi Conor,
> 
> On 2024/9/25 0:11, Conor Dooley wrote:
>> On Tue, Sep 24, 2024 at 04:55:09PM +0800, Frank Wang wrote:
>>> From: Frank Wang <frank.wang@rock-chips.com>
>>>
>>> Add compatible for the USB2 phy in the Rockchip RK3576 SoC.
>>>
>>> Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
>>> ---
>>> Changelog:
>>> v2:
>>>   - Categorize clock names by oneOf keyword.
>>>
>>> v1:
>>>   - https://patchwork.kernel.org/project/linux-phy/patch/20240923025326.10467-1-frank.wang@rock-chips.com/
>>>
>>>   .../bindings/phy/rockchip,inno-usb2phy.yaml      | 16 ++++++++++++++--
>>>   1 file changed, 14 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
>>> index 5254413137c64..8af4e0f8637fc 100644
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
>>> @@ -34,10 +35,20 @@ properties:
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
>> clock-names isn't a required property, you can't allow jumbling the order
>> like this does without breaking the ABI. Why can't the new device have
>> phyclk in position 1?
> 
> I sent a draft changes in patch v1 comments which put the "phyclk" in 

No, you did not. You sent buggy code which was never tested.

> position 1, Krzysztof said I have messed the order, so I reorder them in v2.

No, I did not. I said your current code (from your reply or patch v2)
messes the order. Even though I sent you reply that this code is wrong,
you still decided to ignore my feedback and send it.

To be clear:
NAK

> Did I misunderstand? anyway, should the changes like the below?

Read all the answers again instead of putting wrong words to wrong patches.


Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

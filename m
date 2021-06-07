Return-Path: <SRS0=vLt7=LB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ED121C47082
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jun 2021 17:05:37 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B422E60FEF
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jun 2021 17:05:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B422E60FEF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=aYNYOMWohxUNuSzW46QwiKrmoYYqqQnJ1n9fsrCuWhY=; b=dP1rhbgCxpqs3niXRqpme4yOdx
	z4BEaShAPBid0WL8f3mxf2EZGjACZlUd7f0fQDaWeGBVyDV+YMzP2uu4FHJw0zn9Ijshb/e5F5H2Y
	IRnMDO7ANTRe5sYkjqIt2Xymht0oAClIgzqKWuVlUW1yPU69fvp/ndF3OztKoMLphK5y7MjKa420H
	ZVeANZiMFEqpq7QuOJPU/jgE0Bg3KlxA6HCYwwgwAjnPkH9reqkr3I9h3DzPGvPUUEOX63WpJWnQ/
	XB5Dm+n6+8R5MRGapZu81wHFIWK5/Wyl8FOYPFoXCGDIlqeqYxxA/IyDepgqwhDr/qxmCyE3vV6gv
	R2mEXlzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqIgv-004fqD-U6; Mon, 07 Jun 2021 17:05:33 +0000
Received: from mail-ej1-f53.google.com ([209.85.218.53])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqIgq-004fmh-N1; Mon, 07 Jun 2021 17:05:32 +0000
Received: by mail-ej1-f53.google.com with SMTP id ci15so27840658ejc.10;
 Mon, 07 Jun 2021 10:05:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=vrWddwWHw9uPgT90OED9mI59lJfe1xzoeVULMb6Xu3I=;
 b=vOMlssHEtFlFXMQxi2c6WwrCgLYjEIUc/VEJn4yGw0dPyPTLqjae3B1QdECCW8MJ6A
 sXWeU6ynNlqgvouzxPQk4qwQo61CM+ok+tYlkiuuJxewaCeVHfYMP4yrQn8lpueU2Ruf
 trk5MsyEKpEyZlMv1B5JtW3Icw59wFyd3VNGcDF6DyxkueJxHasR8JQ8Wqyqrm3uvrir
 D+7Be5dFY+KxUKdjmCagzQqFeILMq9+LxrzON3J38i0ktG+qIQm17/ezHDNZBe54IPYX
 fU/CTNkJKHCwkffOdzNCZsJOYoaHBhMG0QSI8FNXWN8+j5j5jXh9n/lMG777l9Iue+c8
 77PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=vrWddwWHw9uPgT90OED9mI59lJfe1xzoeVULMb6Xu3I=;
 b=K3m0G5lOBK039GEWl+fGYEYAfg2M0d+olKnkOMG5JT9k40E/oRJawsMJmhM6Kc1ciU
 wfPzeBD6AZj7RkrCOdus+ESM9Qu6KN4i4DesDBICcbeq0YFXryBRwF+oqxBkXghmtMF7
 skbG3t9OI1MGP0ZV/UtlpkC182HOFcoae4FW7cA7YfY36XgBJBtyMdbzBWHyWmoia3am
 5GXbP/xQakRP5TVp0DhEbva7sVrzweqXF80RtOEOMin0+WK0S86D5FqLeXUdUEOc2R+s
 9T+4r3hgh/oXIe1QV5eYngjkKeozPBoVmlH4HTshIoDei2YhPmzZWh4G0GY6aHKEyxZU
 UecA==
X-Gm-Message-State: AOAM533VkqZouA679D1Grc1mnF4pgJZvkljssgAUhyjq4FJNJ7i9hy5D
 UHEuqXRmEehuyrO51rba12I=
X-Google-Smtp-Source: ABdhPJwt055ZeOAcDRjhVFOzQkOYa90oEcJZ/OcMXCyPgqJpMV0jz1h4Fm3+oAc2i5cs5/Rz6JC8Pg==
X-Received: by 2002:a17:907:1c9e:: with SMTP id
 nb30mr10363749ejc.0.1623085466935; 
 Mon, 07 Jun 2021 10:04:26 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 x13sm6753581ejj.21.2021.06.07.10.04.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 07 Jun 2021 10:04:26 -0700 (PDT)
Subject: Re: [PATCH] arm64: dts: rockchip: add EEPROM node for NanoPi R4S
To: Tianling Shen <cnsztl@gmail.com>
Cc: Chen-Yu Tsai <wens@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Marty Jones <mj8263788@gmail.com>,
 Pavel Machek <pavel@ucw.cz>, devicetree <devicetree@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
References: <20210607081727.4723-1-cnsztl@gmail.com>
 <9258ab23-ef65-2c3d-f0d2-ca5f77d7c12a@gmail.com>
 <CAGb2v65ck=LV+UCdQoaUtEjFaTaHr9-wmGmpkCCkebUOuYtikw@mail.gmail.com>
 <f085da86-8b6d-ba99-2d0a-736ec02424db@gmail.com>
 <CAOP2_TiHwYhLVLOEx-Vgx6k3XmHgNsiyR8CqrWyABnP0AidMBg@mail.gmail.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <b5cc8e2b-10b6-de5d-38dd-5e5cfd84e984@gmail.com>
Date: Mon, 7 Jun 2021 19:04:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <CAOP2_TiHwYhLVLOEx-Vgx6k3XmHgNsiyR8CqrWyABnP0AidMBg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210607_100528_816738_4EB0252F 
X-CRM114-Status: GOOD (  28.60  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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



On 6/7/21 6:01 PM, Tianling Shen wrote:
> Hi Johan,
> 
> On Mon, Jun 7, 2021 at 6:26 PM Johan Jonker <jbx6244@gmail.com> wrote:
>>
>> Hi Chen-Yu,
>>
>> On 6/7/21 11:40 AM, Chen-Yu Tsai wrote:
>>> On Mon, Jun 7, 2021 at 5:31 PM Johan Jonker <jbx6244@gmail.com> wrote:
>>>>
>>>> Hi Tianling,
>>>>
>>>> On 6/7/21 10:17 AM, Tianling Shen wrote:
>>>>> NanoPi R4S has a EEPROM attached to the 2nd I2C bus (U92), which
>>>>> stores the MAC address.
>>>>>
>>>>> Signed-off-by: Tianling Shen <cnsztl@gmail.com>
>>>>> ---
>>>>>  arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts | 9 +++++++++
>>>>>  1 file changed, 9 insertions(+)
>>>>>
>>>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
>>>>> index cef4d18b599d..4a82f50a07c5 100644
>>>>> --- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
>>>>> +++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
>>>>> @@ -68,6 +68,15 @@
>>>>>       status = "disabled";
>>>>>  };
>>>>>
>>>>> +&i2c2 {
>>>>> +     eeprom@51 {
>>>>> +             compatible = "microchip,24c02", "atmel,24c02";
>>>>> +             reg = <0x51>;
>>>>> +             pagesize = <16>;
>>>>
>>>>> +             read-only; /* This holds our MAC */
>>>>
>>>> The mainline dts files should be generic I think.
>>>> Any comment about "use", partitions or write ability should be avoided.
>>>> It's up the user.
>>>
>>
>>> Per the datasheet for this specific EEPROM, the latter half (128 bytes)
>>> is read-only in hardware by design though.
>>
>> The 24AA02XEXX is programmed at the factory with a
>> globally unique node address stored in the upper half
>> of the array and permanently write-protected. The
>> remaining 1,024 bits are available for application use.
>>
> 

> In my opinion, as this contains data programmed by the factory, would
> it be okay to keep it read-only?

This chip is not completely read-only.
There might be users that like to try some other mac_address or store
something else in that lower part. Is this then still possible?
Generic DT describes hardware independent from what Linux drivers or
other OS are capable off.
This factory mac_addres is permanently write-protected, so no need to
keep the rest read-only.

     nvmem-cells = <&new_mac_address_in_lower_part>;
     nvmem-cells-names = "mac-address";

> 
>> Just a question...
>>
>>     nvmem-cells = <&mac_address>;
>>     nvmem-cells-names = "mac-address";
>>
>> Which part does this point to?
>>
>> Can we use the lower part to store/rewrite this too?
>>
>> ===
>>
>> From at24.yaml:
>>
>>             items:
>>               - pattern:
>> "^(atmel|catalyst|microchip|nxp|ramtron|renesas|rohm|st),(24(c|cs|lc|mac)[0-9]+|spd)$"
>>               - pattern: "^atmel,(24(c|cs|mac)[0-9]+|spd)$"
>>
>> How does Microchip 24AA025E48 fit the regex?
>> What compatible would you advise?
> 
> It seems that 24AA025E48 is a variant of 24MAC402 [1], and
> `atmel,24c02` will be okay in this case.
> 1. https://lkml.org/lkml/2018/1/24/494

Ask Heiko. ;)

As long as it does not generate more notifications then we already have.

> 
> Thanks,
> Tianling.
> 
>>
>> ===
>>
>> Johan
>>
>>>
>>> ChenYu
>>>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

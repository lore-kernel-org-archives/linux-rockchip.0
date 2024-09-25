Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DDA04C369B1
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Sep 2024 09:34:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rQey1D3EjtuNpu1ybnaj6WiGNnyg7O9MQX/roN89a08=; b=z09dpfFGanT+ll
	LJMNFVCu555l4ebRAXXW1289X6GExheUGrO37OBh7uccLCo376S1+WQnFi6z5fhDLac1IyYqNgiE2
	kyUc8xoNh2ZW8H3IkG3OFSbEuHNPCpXRpqxLPLW+GIxP2tHPwKO6nA/4YuFUBunr1eAJS2gt+gi05
	eT8Rl13Krnv1aXSsprKiqJ+c35Bsn2jYcAqn6qmEQzvcTKOVAIcoTm02Et7I4/r8rnj4hdxuIt7AO
	jb8HTTeKqLSuJ1H1qdBrDMrZCjPtp+9oBnS9HccZHd5OKzDAKuCXiy3ZLOtUlY8Sfl2i2WI0JG8fA
	5SGY3OQL7lG44Lg86aSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stOPx-00000004cm6-1kpB;
	Wed, 25 Sep 2024 09:34:41 +0000
Received: from mail-pj1-x102a.google.com ([2607:f8b0:4864:20::102a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stOOo-00000004cfb-00V6;
	Wed, 25 Sep 2024 09:33:31 +0000
Received: by mail-pj1-x102a.google.com with SMTP id 98e67ed59e1d1-2da516e6940so1228617a91.3;
        Wed, 25 Sep 2024 02:33:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727256808; x=1727861608; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wTnW+x3uiY9PZFBuRS08htcBxI/l7aF5p3MhMKHERVk=;
        b=bscrQFU9/2S+D6V35eFQGdtOfob9kPIe/LmwYei3T8TNktVp4OzPnNApem1ygD36vY
         w+2cYng7w2ZKCnwhDAezxfI8M8j7eNhiWtNgGswWe/ahrZcJpXKKkOZwIBTwjfI0EaU5
         82ohmukpm7IFasgeBlTpoowobuC/bBjsJv19W3Fos9hwRGh/7mwgRhQqq1UkRGmZvmbF
         Hyx/2f1AyjW3guhtgKH1Z3GklXeb6fTqP8CW/ogX/PuOoe6J5XJnFIQEAYyNzptTinEz
         ovvGjJQp/QYVPY+p79S0bDCDLKcWy26ORtIvK9SU/2wYw0r61NOYB6om2SEsaqn5aaY+
         iU/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727256808; x=1727861608;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wTnW+x3uiY9PZFBuRS08htcBxI/l7aF5p3MhMKHERVk=;
        b=XDzTLko44GF93crbx+cET+TeZNdMAULJeE0FMo8QKhK5P9kYgQSx1mHTp8jutaqHfO
         FYB2I6wyAF28RP+K+qvtbfKHwJRRqSy9w8JGtB+FpIkqGiOA0l0AmR43YIUoEPBeoReW
         km/KVyMbWeIwC98IMAIeN30+KBf0lvCoxHETJsJJ5pIMKmYKg9b3t3yzyCz+1qxRQHQD
         zhlkNfZitLZqAlTcD/63lz3oPbsxStuE/7JcJV+zX6xBX51WK8JtEU9iMQzt95ayeQWZ
         ehe29BKrOA/QLvQehtZnTYN1QFyxkRqrZBT74nB2zcRg9ArkI3VUp2sGqW9tvlbQpDAg
         JwnQ==
X-Forwarded-Encrypted: i=1; AJvYcCUhi1Cq2F7PAw5pCMOTG2YP9r4pdNdmIFDZiLbMPvY1yvU9Oc5rFj8aWPKOfcJYVdAAvSFpagmANX97@lists.infradead.org, AJvYcCV5yYxvcg1k5TZHkFKrzeE37PUhDdM9MUWf+VJ8UVKs9gfILRHyxQwGcKksd+K7/uds/54yV0uFsijPhzQuhY/h@lists.infradead.org, AJvYcCVsewbirLdD49gee4BFa7+2jw0r302cBhxr7f4CnDZNQNetOmB1EI+7iZ8b08BKD1dzBUD/N2pzB+l2tW2mIOM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy+sUfKUFKDikeJFkEt6MjtUjbjxgXiRVtE73ZQiX+sm08brhxU
	V4K9qRCsVZmFudKgLsrOgOdcoENhD47X9GYoDbd1jCA56Pvj+iCp
X-Google-Smtp-Source: AGHT+IFoqwRa4nudCQClQnXhVG/UtD92iscogH08fGdF4mcVCB1T5D4jAdS0xo8eFS8JNXfP2KU3og==
X-Received: by 2002:a17:902:c409:b0:207:428d:ecc0 with SMTP id d9443c01a7336-20afc4d8c51mr12165995ad.8.1727256808306;
        Wed, 25 Sep 2024 02:33:28 -0700 (PDT)
Received: from [192.168.60.56] ([103.29.142.67])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20af16e070dsm21527165ad.9.2024.09.25.02.33.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Sep 2024 02:33:27 -0700 (PDT)
Message-ID: <ea3b0968-ffff-4629-b65b-db508f6e1395@gmail.com>
Date: Wed, 25 Sep 2024 17:33:22 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: rockchip,inno-usb2phy: add
 rk3576
To: Krzysztof Kozlowski <krzk@kernel.org>, Conor Dooley <conor@kernel.org>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, heiko@sntech.de, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 william.wu@rock-chips.com, tim.chen@rock-chips.com,
 Frank Wang <frank.wang@rock-chips.com>
References: <20240924085510.20863-1-frawang.cn@gmail.com>
 <20240924-overtly-curable-13df2e7fdc9b@spud>
 <87146372-6d05-4994-8f64-47f4cb07e2b4@gmail.com>
 <2a4200ac-3ea2-4449-94ac-c4b9f37ad800@kernel.org>
Content-Language: en-US
From: Frank Wang <frawang.cn@gmail.com>
In-Reply-To: <2a4200ac-3ea2-4449-94ac-c4b9f37ad800@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240925_023330_077995_67675FCF 
X-CRM114-Status: GOOD (  19.05  )
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

Hi Krzysztof,

On 2024/9/25 15:16, Krzysztof Kozlowski wrote:
> On 25/09/2024 04:09, Frank Wang wrote:
>> Hi Conor,
>>
>> On 2024/9/25 0:11, Conor Dooley wrote:
>>> On Tue, Sep 24, 2024 at 04:55:09PM +0800, Frank Wang wrote:
>>>> From: Frank Wang <frank.wang@rock-chips.com>
>>>>
>>>> Add compatible for the USB2 phy in the Rockchip RK3576 SoC.
>>>>
>>>> Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
>>>> ---
>>>> Changelog:
>>>> v2:
>>>>    - Categorize clock names by oneOf keyword.
>>>>
>>>> v1:
>>>>    - https://patchwork.kernel.org/project/linux-phy/patch/20240923025326.10467-1-frank.wang@rock-chips.com/
>>>>
>>>>    .../bindings/phy/rockchip,inno-usb2phy.yaml      | 16 ++++++++++++++--
>>>>    1 file changed, 14 insertions(+), 2 deletions(-)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
>>>> index 5254413137c64..8af4e0f8637fc 100644
>>>> --- a/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
>>>> +++ b/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
>>>> @@ -20,6 +20,7 @@ properties:
>>>>          - rockchip,rk3366-usb2phy
>>>>          - rockchip,rk3399-usb2phy
>>>>          - rockchip,rk3568-usb2phy
>>>> +      - rockchip,rk3576-usb2phy
>>>>          - rockchip,rk3588-usb2phy
>>>>          - rockchip,rv1108-usb2phy
>>>>    
>>>> @@ -34,10 +35,20 @@ properties:
>>>>        const: 0
>>>>    
>>>>      clocks:
>>>> -    maxItems: 1
>>>> +    minItems: 1
>>>> +    maxItems: 3
>>>>    
>>>>      clock-names:
>>>> -    const: phyclk
>>>> +    minItems: 1
>>>> +    maxItems: 3
>>> clock-names isn't a required property, you can't allow jumbling the order
>>> like this does without breaking the ABI. Why can't the new device have
>>> phyclk in position 1?
>> I sent a draft changes in patch v1 comments which put the "phyclk" in
> No, you did not. You sent buggy code which was never tested.
>
>> position 1, Krzysztof said I have messed the order, so I reorder them in v2.
> No, I did not. I said your current code (from your reply or patch v2)
> messes the order. Even though I sent you reply that this code is wrong,
> you still decided to ignore my feedback and send it.
Sorry I misunderstood the 'oneOf' and "order" you said.

I shall amend the patch and send v3 later.

BR.
Frank

> To be clear:
> NAK
>
>> Did I misunderstand? anyway, should the changes like the below?
> Read all the answers again instead of putting wrong words to wrong patches.
>
>
> Best regards,
> Krzysztof
>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

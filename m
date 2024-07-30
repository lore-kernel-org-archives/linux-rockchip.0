Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2F83C3DA7F
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Jul 2024 11:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Subject:References:In-Reply-To:
	Message-ID:Date:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kkUh4LSrRatvM7sCks0FvQCVA73K6HSp1pdbubdep7s=; b=vkYWEfdCIx3+TP
	L6ZQlVJ7wLizMvAMZlSMXr8WAJ8JMIw7/aCGAec7+KksBrJOZlvgmgrlF1MGLwzR6QzXAz8UDICLP
	XMpE5g/7YGaDR87lmkhiHsDv491E4+bZFr6aS2mKauPBbiwfOj43madDmaYhiv11KQdTpS5N+sCEP
	v24GqXI1nU+6DqyJOle/gND4YoQAEJLaTrKANfa/yIljhZxTCKwp+M4cl9eQO3d2uLRfocT+TaRIW
	2Ra1qMjOzp59ZZUnbuMbvhV1mw+WM0cmJnN369KxG3oAOlOVPGICV3F8LP/9KB9x/lKUYDnH/eO08
	7MpSOe61fQY4BxZW61rA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYksb-0000000Ery6-0Fjk;
	Tue, 30 Jul 2024 11:18:57 +0000
Received: from mail-pf1-x42d.google.com ([2607:f8b0:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYkqq-0000000ErTf-3ZQT
	for linux-rockchip@lists.infradead.org;
	Tue, 30 Jul 2024 11:17:12 +0000
Received: by mail-pf1-x42d.google.com with SMTP id d2e1a72fcca58-70d150e8153so2707029b3a.0
        for <linux-rockchip@lists.infradead.org>; Tue, 30 Jul 2024 04:17:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1722338227; x=1722943027; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:subject:user-agent
         :references:in-reply-to:message-id:date:cc:to:from:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zMjbsaf9Qg0PIMOUCDvNeB4fJscDIysusSNb+GlHnFs=;
        b=MITJEyxFSJDckhwaquWKxhDZISJVUHA+y3yvBfaDE3oMdf6DGu25LyQO8TwU7tAzF7
         DFJwGocxAxF3C9lSo06kep1GjG/B/Vz9y+TgEzkyhYTZv/O9Z7DdAHelk56RbUROI1/u
         0LSROUZ3izKgvrkGie0YFPuAy/KlC1xaYy4iY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722338227; x=1722943027;
        h=content-transfer-encoding:mime-version:subject:user-agent
         :references:in-reply-to:message-id:date:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zMjbsaf9Qg0PIMOUCDvNeB4fJscDIysusSNb+GlHnFs=;
        b=dXGicVbpSCZV0xJlvTGA1uVq9myvOWYCllxu0gHeR1NBqUrULxlhvPvEhK0cnUg2Mi
         O/mCXdK+mldu0a8A1wXz81YKSqiDJ3uo1wCt/gGOdDDwukxAMTkg1Rwy+je0auCHEXrQ
         BaYNg5rKW+WVUVWpQVXcLbw2m72vMkNEhzidUMZLkwbtCroagPGy+gGQ4LfZHv6uB1qc
         8pQo3lpUeaVoO4AnoSzCLEPs+bmPvWGQYqQhDYh+oa92loCRYIIiSHB2ANCnZVTBidgK
         OodRg8zSBtnEAsNfZoCXh0zKjlwVk2P2WVY0Q5y4pNtUCu8s9jTgZOp2LKBz9vQK+gDn
         sW4Q==
X-Forwarded-Encrypted: i=1; AJvYcCXTArg2mrSdQT2cUw9ZZU4LRz7OXPOhhJMbQ9fhVIRELVi6C69LhXyqu9eyMpSeFiN/RqXx9ZmpcSzRIVUY0vvK/HE8kobV063ml3rpdfO0nhlF
X-Gm-Message-State: AOJu0YxVjU8ZQOZotgfW8a4LFLeGv/z/UBam+DXNMycQuuafOzGvVYbQ
	9zKMNY0P4GTgPtD4dbqRGG+vOZ5+WQS2b9jhNnNTZW4j/e8I8dooRJLlovPj2A==
X-Google-Smtp-Source: AGHT+IH4GPuLW4JZ70pCnepe2Vow6yWK71i6a+LS+KmDte3yg0ALlYZIjJj1WsTlusgr/MqCrENMNw==
X-Received: by 2002:a05:6a20:7346:b0:1be:c41d:b6b7 with SMTP id adf61e73a8af0-1c4e47fb70fmr3042955637.19.1722338226714;
        Tue, 30 Jul 2024 04:17:06 -0700 (PDT)
Received: from [192.168.178.38] (f215227.upc-f.chello.nl. [80.56.215.227])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70ead81272esm8462046b3a.97.2024.07.30.04.16.59
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Jul 2024 04:17:06 -0700 (PDT)
From: Arend Van Spriel <arend.vanspriel@broadcom.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, Jacobe Zang <jacobe.zang@wesion.com>, <robh@kernel.org>, <krzk+dt@kernel.org>, <heiko@sntech.de>, <kvalo@kernel.org>, <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>, <pabeni@redhat.com>, <conor+dt@kernel.org>, Linus Walleij <linus.walleij@linaro.org>
CC: <efectn@protonmail.com>, <dsimic@manjaro.org>, <jagan@edgeble.ai>, <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>, <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>, <arend@broadcom.com>, <linux-wireless@vger.kernel.org>, <netdev@vger.kernel.org>, <megi@xff.cz>, <duoming@zju.edu.cn>, <bhelgaas@google.com>, <minipli@grsecurity.net>, <brcm80211@lists.linux.dev>, <brcm80211-dev-list.pdl@broadcom.com>, <nick@khadas.com>
Date: Tue, 30 Jul 2024 13:16:57 +0200
Message-ID: <191035b8c28.279b.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
In-Reply-To: <3d3b8e0a-7492-4db1-bd73-c30a488edaa7@kernel.org>
References: <20240730033053.4092132-1-jacobe.zang@wesion.com>
 <20240730033053.4092132-3-jacobe.zang@wesion.com>
 <191025b5268.279b.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
 <f45c1fa7-f321-4a1f-b65c-6ed326a18268@kernel.org>
 <191030eac78.279b.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
 <3d3b8e0a-7492-4db1-bd73-c30a488edaa7@kernel.org>
User-Agent: AquaMail/1.51.5 (build: 105105504)
Subject: Re: [PATCH v5 2/5] dt-bindings: net: wireless: brcm4329-fmac: add clock description for AP6275P
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_041709_945630_5EF884FF 
X-CRM114-Status: GOOD (  19.59  )
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

On July 30, 2024 12:18:20 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:

> On 30/07/2024 11:52, Arend Van Spriel wrote:
>> On July 30, 2024 11:01:43 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>>
>>> On 30/07/2024 08:37, Arend Van Spriel wrote:
>>>> + Linus W
>>>>
>>>> On July 30, 2024 5:31:15 AM Jacobe Zang <jacobe.zang@wesion.com> wrote:
>>>>
>>>>> Not only AP6275P Wi-Fi device but also all Broadcom wireless devices allow
>>>>> external low power clock input. In DTS the clock as an optional choice in
>>>>> the absence of an internal clock.
>>>>>
>>>>> Reviewed-by: Arend van Spriel <arend.vanspriel@broadcom.com>
>>>>> Signed-off-by: Jacobe Zang <jacobe.zang@wesion.com>
>>>>> ---
>>>>> .../bindings/net/wireless/brcm,bcm4329-fmac.yaml          | 8 ++++++++
>>>>> 1 file changed, 8 insertions(+)
>>>>>
>>>>> diff --git
>>>>> a/Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac.yaml
>>>>> b/Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac.yaml
>>>>> index 2c2093c77ec9a..a3607d55ef367 100644
>>>>> --- a/Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac.yaml
>>>>> +++ b/Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac.yaml
>>>>> @@ -122,6 +122,14 @@ properties:
>>>>> NVRAM. This would normally be filled in by the bootloader from platform
>>>>> configuration data.
>>>>>
>>>>> +  clocks:
>>>>> +    items:
>>>>> +      - description: External Low Power Clock input (32.768KHz)
>>>>> +
>>>>> +  clock-names:
>>>>> +    items:
>>>>> +      - const: lpo
>>>>> +
>>>>
>>>> We still have an issue that this clock input is also present in the
>>>> bindings specification broadcom-bluetooth.yaml (not in bluetooth
>>>> subfolder). This clock is actually a chip resource. What happens if both
>>>> are defined and both wifi and bt drivers try to enable this clock? Can this
>>>> be expressed in yaml or can we only put a textual warning in the property
>>>> descriptions?
>>>
>>> Just like all clocks, what would happen? It will be enabled.
>>
>> Oh, wow! Cool stuff. But seriously is it not a problem to have two entities
>> controlling one and the same clock? Is this use-case taken into account by
>> the clock framework?
>
> Yes, it is handled correctly. That's a basic use-case, handled by CCF
> since some years (~12?). Anyway, whatever OS is doing (or not doing)
> with the clocks is independent of the bindings here. The question is

Agree. Probably the bindings would not be the place to document this if it 
would be an issue.

> about hardware - does this node, which represents PCI interface of the
> chip, has/uses the clocks.

The schematics I found for the wifi module and the khadas edge platform 
show these are indeed wired to the chip.

Regards,
Arend

> Best regards,
> Krzysztof




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

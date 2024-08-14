Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1972BC52D7B
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Aug 2024 16:47:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Subject:References:In-Reply-To:
	Message-ID:Date:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iT1kvpWbIpRs2FvErDMZlpKRqwLy9fl6PGu3VqsefJA=; b=i0O+8/o6fqUcuv
	OrLJCAT19zAeoBushF3CamnULeHlJeuU9wwQ2NR1Y8nenzp3eeaGsKmG8aQ1aOIjuVtQvV81LLLcs
	hcFRyC/g22mOVQ9wSPFlfId9iVveubK+TXv5ZzbvjCYLcLy5eEgfSGbgeFtFLZzmPW09ZiAsrVYsz
	wBo6QD+X/EMXyHX0JbdV10UnOOvnmFcJTrJ61JukuPXlxQno9vMHH+aADv0TwKnJCwZGPH8iWuD9I
	PQh5GOwlBjWvSasd5VwLfevxNbLBV/mJA1qmBE3nulPl1LTYrqtD7xDyoDzJgCQ1V6RNRceoUJE6+
	b5u5EnKS6tcYrEZ6pQzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seHA9-00000007j1K-49TV;
	Wed, 14 Aug 2024 16:47:54 +0000
Received: from mail-qk1-x72e.google.com ([2607:f8b0:4864:20::72e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seH9V-00000007ivC-36PF
	for linux-rockchip@lists.infradead.org;
	Wed, 14 Aug 2024 16:47:15 +0000
Received: by mail-qk1-x72e.google.com with SMTP id af79cd13be357-7a1d81dc0beso615285a.2
        for <linux-rockchip@lists.infradead.org>; Wed, 14 Aug 2024 09:47:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1723654031; x=1724258831; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:subject:user-agent
         :references:in-reply-to:message-id:date:cc:to:from:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0LOkC2hr5mjD/XmAuAJdpJW2ttXWug85zZK1Co9ZjIE=;
        b=AE6o2la5EUWu7Tb7g7OteUwokrS/iZbdtrNfzXHishhIKcNrULVvoe3o0odUrpVB33
         v22BB5qqHD2Tt2h+Sf0MQUp2Ib48iI+lG33L/PlcpF4Lwowow/n80+yaQx+QfFzLIG2E
         itlwjggmSeMUI8cwMh5hQg0cYAusqZkODfXiI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723654031; x=1724258831;
        h=content-transfer-encoding:mime-version:subject:user-agent
         :references:in-reply-to:message-id:date:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0LOkC2hr5mjD/XmAuAJdpJW2ttXWug85zZK1Co9ZjIE=;
        b=L0O3EXEnItyq8P13RlCAqsetnErkjQDeUA/4MeHYf91ttmXdOpz31gh92W30Iuk8/+
         pWDFpRWOhorKGrj88WqN7sig0ylRhR4Fp2c0PV08zKW0ttnowWXOMT7wU/7ti4Ym0I8Z
         BdV2P5JWpq47qCVTa8YqK95kpNg37HZRXP+QUY4SmeUCBGYoR6xYSbkJu/1rXaI83+h0
         NwYqBWGtURqty6D+U4Vv/JrTraVVTUOhUFK+Q9na3o7LqJRGRzed4DDJQnc3AQgILCo2
         7SDFBwAOmQQ5DXmJjuTR26yNM9y2/Hfh7X7+CgZ3ZS+b5OVKaxLydEzRiCMYTijLFyzi
         MDaw==
X-Forwarded-Encrypted: i=1; AJvYcCWbSzph1h/Ef7FUpL7kmtww1cWCMjm1Y8yXT7HjCEGAd4jlett0Xd8bNiJ5wtLod0eRiRtVxul2nm4VQN6jgECiTyTbqv0mw56wRXJrxhHDMO3H
X-Gm-Message-State: AOJu0Yy8WODOzJ0XVQS5WviLybPxx55UZpiNmZsIAjQIkhD9NLoAV0LR
	dabUiKb0MQE+oJQXhM47GbthCEgu7ji4zwmEVas8x3RZP0fegh3/z5z/0dLk7w==
X-Google-Smtp-Source: AGHT+IHTM4N5IaCtzNPE7RF5w4uRXrZaZMciTBo9YGWGeU+4Fzw/BBwdcOTRcfKTQ2pPneokkJCaEA==
X-Received: by 2002:a05:620a:404b:b0:79f:12e9:1e71 with SMTP id af79cd13be357-7a4ee26d137mr414754385a.0.1723654031043;
        Wed, 14 Aug 2024 09:47:11 -0700 (PDT)
Received: from [192.168.178.38] (f215227.upc-f.chello.nl. [80.56.215.227])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7a4c7d6494esm454743585a.2.2024.08.14.09.47.04
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Aug 2024 09:47:10 -0700 (PDT)
From: Arend Van Spriel <arend.vanspriel@broadcom.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Krzysztof Kozlowski <krzk@kernel.org>, Jacobe Zang <jacobe.zang@wesion.com>, <robh@kernel.org>, <krzk+dt@kernel.org>, <heiko@sntech.de>, <kvalo@kernel.org>, <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>, <pabeni@redhat.com>, <conor+dt@kernel.org>
CC: <efectn@protonmail.com>, <dsimic@manjaro.org>, <jagan@edgeble.ai>, <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>, <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>, <arend@broadcom.com>, <linux-wireless@vger.kernel.org>, <netdev@vger.kernel.org>, <megi@xff.cz>, <duoming@zju.edu.cn>, <bhelgaas@google.com>, <minipli@grsecurity.net>, <brcm80211@lists.linux.dev>, <brcm80211-dev-list.pdl@broadcom.com>, <nick@khadas.com>
Date: Wed, 14 Aug 2024 18:47:04 +0200
Message-ID: <19151c92b40.279b.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
In-Reply-To: <f504a3e7-cb18-41ce-a76d-267d464b6b05@linaro.org>
References: <20240813082007.2625841-1-jacobe.zang@wesion.com>
 <20240813082007.2625841-2-jacobe.zang@wesion.com>
 <1914cb2b1a8.279b.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
 <e7401e25-7802-4dc3-9535-226f32b52be1@kernel.org>
 <062d8d4e-6d61-4f11-a9c0-1bbe1bfe0542@broadcom.com>
 <1e442710-a233-4ab2-a551-f28ba6394b5b@linaro.org>
 <180f7459-39fa-4e96-83d6-504e7802dc94@broadcom.com>
 <df52a968-96be-4f05-8d6f-32a2abde1d91@linaro.org>
 <f504a3e7-cb18-41ce-a76d-267d464b6b05@linaro.org>
User-Agent: AquaMail/1.51.5 (build: 105105504)
Subject: Re: [PATCH v10 1/5] dt-bindings: net: wireless: brcm4329-fmac: add pci14e4,449d
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_094713_902289_546F52F2 
X-CRM114-Status: GOOD (  26.51  )
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

On August 14, 2024 4:08:52 PM Krzysztof Kozlowski 
<krzysztof.kozlowski@linaro.org> wrote:

> On 14/08/2024 13:15, Krzysztof Kozlowski wrote:
>> On 14/08/2024 12:59, Arend van Spriel wrote:
>>> On 8/14/2024 12:39 PM, Krzysztof Kozlowski wrote:
>>>> On 14/08/2024 12:08, Arend van Spriel wrote:
>>>>> On 8/14/2024 10:53 AM, Krzysztof Kozlowski wrote:
>>>>>> On 13/08/2024 19:04, Arend Van Spriel wrote:
>>>>>>> On August 13, 2024 10:20:24 AM Jacobe Zang <jacobe.zang@wesion.com> wrote:
>>>>>>>
>>>>>>>> It's the device id used by AP6275P which is the Wi-Fi module
>>>>>>>> used by Rockchip's RK3588 evaluation board and also used in
>>>>>>>> some other RK3588 boards.
>>>>>>>
>>>>>>> Hi Kalle,
>>>>>>>
>>>>>>> There probably will be a v11, but wanted to know how this series will be
>>>>>>> handled as it involves device tree bindings, arm arch device tree spec, and
>>>>>>> brcmfmac driver code. Can it all go through wireless-next?
>>>>>>
>>>>>> No, DTS must not go via wireless-next. Please split it from the series
>>>>>> and provide lore link in changelog for bindings.
>>>>>
>>>>> Hi Krzysztof,
>>>>>
>>>>> Is it really important how the patches travel upstream to Linus. This
>>>>> binding is specific to Broadcom wifi devices so there are no
>>>>> dependencies(?). To clarify what you are asking I assume two separate
>>>>> series:
>>>>>
>>>>> 1) DT binding + Khadas Edge2 DTS  -> devicetree@vger.kernel.org
>>>>> reference to:
>>>>> https://patch.msgid.link/20240813082007.2625841-1-jacobe.zang@wesion.com
>>>>>
>>>>> 2) brcmfmac driver changes  -> linux-wireless@vger.kernel.org
>>>>
>>>> No. I said only DTS is separate. This was always the rule, since forever.
>>>>
>>>> Documentation/devicetree/bindings/submitting-patches.rst
>>>
>>> I am going slightly mad (by Queen). That documents says:
>>>
>>> 1) The Documentation/ and include/dt-bindings/ portion of the patch
>>> should
>>> be a separate patch.
>>>
>>> and
>>>
>>> 4) Submit the entire series to the devicetree mailinglist at
>>>
>>> devicetree@vger.kernel.org
>>>
>>> Above I mentioned "series", not "patch". So 1) is a series of 3 patches
>>> (2 changes to the DT binding file and 1 patch for the Khadas Edge2 DTS.
>>> Is that correct?
>>
>> My bookmark to elixir.bootling does not work, so could not paste
>> specific line. Now it works, so:
>>
>> https://elixir.bootlin.com/linux/v6.11-rc3/source/Documentation/devicetree/bindings/submitting-patches.rst#L79
>>
>> The rule was/is:
>> 1. Binding for typical devices always go via subsystem tree, with the
>> driver changes.
>> There can be exceptions from above, e.g. some subsystems do not pick up
>> bindings, so Rob does. But how patches are organized is not an exception
>> - it is completely normal workflow.
>>
>> 2. DTS *always* goes via SoC maintainer. DTS cannot go via any other
>> driver subsystem tree. There is no exception here. There cannot be an
>> exception, because it would mean the hardware depends on driver, which
>> is obviously false.
>
> In case my message was not clear: we talk here about organizing
> patchsets, not individual patches. If you ask about patches, then DTS,
> bindings and driver are all separate patches. This set already is split
> like that, so this was fine and I did not comment on it. Only through
> whom the DTS patch goes - separate tree.

I used the "series" which is my term for "patchset". Sorry for confusion. 
So "[PATCH 3/5] arm64: dts: rockchip: Add AP6275P wireless support to 
Khadas Edge 2" should be submitted to rockchip soc related tree and the 
rest can go through the wireless-next tree. Got it.

Regards,
Arend
---
$ ./scripts/get_maintainer.pl -f 
arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts
Rob Herring <robh@kernel.org> (maintainer:OPEN FIRMWARE AND FLATTENED 
DEVICE TREE BINDINGS)
Krzysztof Kozlowski <krzk+dt@kernel.org> (maintainer:OPEN FIRMWARE AND 
FLATTENED DEVICE TREE BINDINGS)
Conor Dooley <conor+dt@kernel.org> (maintainer:OPEN FIRMWARE AND FLATTENED 
DEVICE TREE BINDINGS)
Heiko Stuebner <heiko@sntech.de> (maintainer:ARM/Rockchip SoC 
support,commit_signer:11/11=100%,authored:1/11=9%,removed_lines:1/1=100%)
Muhammed Efe Cetin <efectn@protonmail.com> 
(commit_signer:10/11=91%,authored:10/11=91%,added_lines:685/685=100%)
Dragan Simic <dsimic@manjaro.org> (commit_signer:1/11=9%)
devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE 
TREE BINDINGS)
linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support)
linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support)
linux-kernel@vger.kernel.org (open list)

>
> And just in case: this is neither specific to wireless nor to Broadcom.
> This is for entire Linux kernel.
>
> Best regards,
> Krzysztof




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

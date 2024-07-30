Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54363C3DA61
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Jul 2024 10:08:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Subject:References:In-Reply-To:
	Message-ID:Date:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3+ThBA7mcTiyvG21GO6Wxjy7ruPlI4KyEN1zRsMknEc=; b=X896fiG3iCDX69
	Vh6M47bbqvQ6edDO+BMA64LJcB8j4MT1CxqVpVwiSNtv2JsXXmiSppQ+YhsLMlIsTE8oi6Z+kqqzU
	v23YyG0+UMogvsfB8DOsqTV0HPU9q16wPRtC751utwof2gIVbqdiiZ1Md/E1eO6Nyh9b2D5syObQD
	9BKl1s+2awbyBnEM1AbdqpNAeEp6SVZmsHQ2fUDuz3lsHr+bCzB/Cr0TYale6H4/PAhl+3NTGJ0gC
	IYcGhl/IG3+n+BypSbkOOsd60sC3RX8N5Kjbk/ShxsNDRyLfc0QVML/MCCDQ45YS/enTPsXolrfTE
	2glqa/2pU7hWRkmd4X4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYjmU-0000000EfJ0-3Qv0;
	Tue, 30 Jul 2024 10:08:34 +0000
Received: from mail-pf1-x431.google.com ([2607:f8b0:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYjmR-0000000EfHj-3JHx
	for linux-rockchip@lists.infradead.org;
	Tue, 30 Jul 2024 10:08:33 +0000
Received: by mail-pf1-x431.google.com with SMTP id d2e1a72fcca58-70d150e8153so2665737b3a.0
        for <linux-rockchip@lists.infradead.org>; Tue, 30 Jul 2024 03:08:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1722334111; x=1722938911; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:subject:user-agent
         :references:in-reply-to:message-id:date:cc:to:from:from:to:cc
         :subject:date:message-id:reply-to;
        bh=it0G31C3nK4iT57/TuCykaOG5f+2KUhsEgQE63zlvQ8=;
        b=dPihcGUlclCBw3CoE/zqnM4oYplTovNxalE5hn6CyD/2+Pe9AiInqBh2VQ9th/6mdn
         kOe1VFPX8U1Fpe8ESUcMcXzIvYuCUScCdbzRGrgThW9ejk75nbssU/CNT5ARN3UTiLLN
         l/Ahhch0qSvRn2cGEzfwRV169nCW4rO2Om9uM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722334111; x=1722938911;
        h=content-transfer-encoding:mime-version:subject:user-agent
         :references:in-reply-to:message-id:date:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=it0G31C3nK4iT57/TuCykaOG5f+2KUhsEgQE63zlvQ8=;
        b=QonGuLPzkbKsPq0o+/bWyDT6hZ+uCVttUF1Hsw38RG/1N5H+rl8/EVjCT+4g5trn34
         iIWqTYXFvnTvb53cS2uTo1a+nQ7GTFGn4g3hs0s24LtTP8HQIf0EPih4HzlVOVNDe4lY
         jemms4XkGpA/4DgnuEkAh7j/EVNTyHZrsouVt9hCH9+2rneBdQ033AX4ZJJOBTBWkfLI
         qpeiW2iGK3s0SdEBLcysZ/PWbh+SODP20AbtpWc0uNj0TCaNHQDPnpM/Yjx9Cw/IML8q
         SRN/0iCfK7s7j5jjYW6/rlHWjz0EzFHRc+BL2zyeV6+nnDDXFLLbSNc0IuatHtVV8Y8V
         GO5g==
X-Forwarded-Encrypted: i=1; AJvYcCUcEs6/8LBYBqo9DatH71sh7ABhoaOeC4T/FNIeHb2yFYsV6YLjG1LyP74MiGR78vX1k9a7w42kC7QcwkJy9zSgrciH5ToyQDhuayqm55VYSp+z
X-Gm-Message-State: AOJu0YzhfCYqVDCKHZ+3Q4H/fppMtyhfs62sHaqNeAEl43u9peOLLsOM
	X6BurY6KuAAw62yaGtRkNP/pYx2fK+Q2aCZI/VqVILeEVfGDPiIRm+PREOu4eg==
X-Google-Smtp-Source: AGHT+IGshW2OzxRzfxWGvcbO0sAFmjyAkWIraUtC7GDL6IIXZLZQRc2Ic/SOA1XlSk6flzreTwMvTw==
X-Received: by 2002:a05:6a00:3e22:b0:70b:5368:a212 with SMTP id d2e1a72fcca58-70efe49ddcbmr2198191b3a.15.1722334110893;
        Tue, 30 Jul 2024 03:08:30 -0700 (PDT)
Received: from [192.168.178.38] (f215227.upc-f.chello.nl. [80.56.215.227])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70ead6e33e2sm8106343b3a.28.2024.07.30.03.08.21
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Jul 2024 03:08:30 -0700 (PDT)
From: Arend Van Spriel <arend.vanspriel@broadcom.com>
To: Jacobe Zang <jacobe.zang@wesion.com>, Krzysztof Kozlowski <krzk@kernel.org>, <robh@kernel.org>, <krzk+dt@kernel.org>, <heiko@sntech.de>, <kvalo@kernel.org>, <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>, <pabeni@redhat.com>, <conor+dt@kernel.org>, Linus Walleij <linus.walleij@linaro.org>
CC: <efectn@protonmail.com>, <dsimic@manjaro.org>, <jagan@edgeble.ai>, <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>, <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>, <arend@broadcom.com>, <linux-wireless@vger.kernel.org>, <netdev@vger.kernel.org>, <megi@xff.cz>, <duoming@zju.edu.cn>, <bhelgaas@google.com>, <minipli@grsecurity.net>, <brcm80211@lists.linux.dev>, <brcm80211-dev-list.pdl@broadcom.com>, Nick Xie <nick@khadas.com>
Date: Tue, 30 Jul 2024 12:08:19 +0200
Message-ID: <191031cb638.279b.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
In-Reply-To: <TYZPR03MB7001AA581B8B63AC19A7977C80B02@TYZPR03MB7001.apcprd03.prod.outlook.com>
References: <20240730033053.4092132-1-jacobe.zang@wesion.com>
 <20240730033053.4092132-3-jacobe.zang@wesion.com>
 <191025b5268.279b.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
 <f45c1fa7-f321-4a1f-b65c-6ed326a18268@kernel.org>
 <191030eac78.279b.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
 <TYZPR03MB7001AA581B8B63AC19A7977C80B02@TYZPR03MB7001.apcprd03.prod.outlook.com>
User-Agent: AquaMail/1.51.5 (build: 105105504)
Subject: Re: [PATCH v5 2/5] dt-bindings: net: wireless: brcm4329-fmac: add clock description for AP6275P
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_030831_851868_59A729C1 
X-CRM114-Status: GOOD (  14.97  )
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

On July 30, 2024 12:00:25 PM Jacobe Zang <jacobe.zang@wesion.com> wrote:

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
> I have enabled the same clock both in bluetooth and wifi just now, they worked
> well. Maybe this make sense?

What happens if you unload one of the drivers? Also would like to know if 
you are using an nvram file. If so can you share it's content.

Regards,
Arend




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

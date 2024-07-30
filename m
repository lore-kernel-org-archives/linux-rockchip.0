Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3342C3DA49
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Jul 2024 09:53:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Subject:References:In-Reply-To:
	Message-ID:Date:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7+9zNrjAvrDi+1Abjs7Is7kjjDTMfPtuGGl0wdzsE1E=; b=1fHTozojHC2UOV
	BQ4P9Kqt2aDaHjXWsbj0skbctXApwWHR3lg568WYFizL80UaBA/xvLPgokJ4PEBF9WSLTzNRDxGxQ
	HbJUyRpWDrpzGWWQerydgvLNhFB2SN647BIN38em+M2j0+6/0lbYJ1+TC2fBqj6WAj5fEIyvB0vBW
	3zfduU1R0ncRCA3blLUvHLVYgG2YGnAz6ev6teOGKeOlqD6yBRku2dSSfdmO8mzmLIuoQ2/SOxG5s
	HkUGFpRRZzEPBHyuxWFqW9a6vHAFlXP/R61lsOq3wTpVxRgSZAC4FWZ3cH0gUX09FL6HqrUJpAEcj
	vIrc7j+qys1zyaVG5Auw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYjXw-0000000EcEk-20ub;
	Tue, 30 Jul 2024 09:53:32 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYjXU-0000000EcAB-1Wkf
	for linux-rockchip@lists.infradead.org;
	Tue, 30 Jul 2024 09:53:06 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-52f04b3cb33so9807669e87.0
        for <linux-rockchip@lists.infradead.org>; Tue, 30 Jul 2024 02:53:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1722333181; x=1722937981; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:subject:user-agent
         :references:in-reply-to:message-id:date:cc:to:from:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RA46jBL+SPUUXOwt3hGVdpN7JmCGwJMtQwXehgaQlLY=;
        b=HHJOxXxepYwssoX65TdF588v9AHUnVykcnYT2c9uTAL44GWpMjuGQZOS0NPF3So7tw
         0stoNR4ckld1mo48ONWKbegz1zd4bF6ZEzyaaM8VtLDLURSEadNzmDf5T5cYW4W2WMX7
         qVBiGlfOGaAAo8aRD/May2QcYW8yUKOAeIS2I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722333181; x=1722937981;
        h=content-transfer-encoding:mime-version:subject:user-agent
         :references:in-reply-to:message-id:date:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RA46jBL+SPUUXOwt3hGVdpN7JmCGwJMtQwXehgaQlLY=;
        b=jMqIA/fnLh4UIVAJDPhNIv8rEFIhIH21XhdHXITUtajX0BD5NO90Tt9UfkMzgqsXjY
         ehay3z37Ria3cnZipxinvvIUyme3ghGovOHCFkKqLRxfMcqSjUhmE8f1qWn0N5TA4nEy
         lJ7XoI3jLZnDkUywBuy0zsIBKg8gwB+Ku2mZrkrDHk2GYAICUq241/9DUA5UODssNUk/
         vS0tPMnVzCUxAYmMUmx3/P9GC2cniw2+WJpW9o0/c+EJTn+RLjQJT/XoMEpdOsDHAMg6
         gpWQXOYHAC2x6dQI4zr9BHKWre4mih/sYB209qSSgnPo5yt1NubWegxNCZteW7QyvO8Z
         RimQ==
X-Forwarded-Encrypted: i=1; AJvYcCVDvAiNBPk3WDZmRWqZWyBpkDNOtbSvUrrwgO2ugk2yorGpJXXGAkdvAkAwTdIjuvJWJIqkkucHitBONrK8lMwxIv/QPWMbMfW306NiOJIjmqnn
X-Gm-Message-State: AOJu0Yy60XfKcYi0/S6UQ1cE4QIcREgTnEQgyCM4MrhxfufaVRvNvd4C
	5q8yNcSLPLx2/23ylyFvwNeLs+J6koAp96qhhuN5+3YMdVQYUba3w0CnFM3vpA==
X-Google-Smtp-Source: AGHT+IHlCt/1eobcVjTAVX4BrkBS2kd5LjzvzW4U/MFQXgveeXv+o8QcHY9jzRml82ZRhYYMl0R/EQ==
X-Received: by 2002:a05:6512:2c0d:b0:529:b718:8d00 with SMTP id 2adb3069b0e04-5309b2694e5mr8676169e87.8.1722333181165;
        Tue, 30 Jul 2024 02:53:01 -0700 (PDT)
Received: from [192.168.178.38] (f215227.upc-f.chello.nl. [80.56.215.227])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a7acad41961sm624701966b.131.2024.07.30.02.52.59
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Jul 2024 02:53:00 -0700 (PDT)
From: Arend Van Spriel <arend.vanspriel@broadcom.com>
To: Krzysztof Kozlowski <krzk@kernel.org>, Jacobe Zang <jacobe.zang@wesion.com>, <robh@kernel.org>, <krzk+dt@kernel.org>, <heiko@sntech.de>, <kvalo@kernel.org>, <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>, <pabeni@redhat.com>, <conor+dt@kernel.org>, Linus Walleij <linus.walleij@linaro.org>
CC: <efectn@protonmail.com>, <dsimic@manjaro.org>, <jagan@edgeble.ai>, <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>, <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>, <arend@broadcom.com>, <linux-wireless@vger.kernel.org>, <netdev@vger.kernel.org>, <megi@xff.cz>, <duoming@zju.edu.cn>, <bhelgaas@google.com>, <minipli@grsecurity.net>, <brcm80211@lists.linux.dev>, <brcm80211-dev-list.pdl@broadcom.com>, <nick@khadas.com>
Date: Tue, 30 Jul 2024 11:52:59 +0200
Message-ID: <191030eac78.279b.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
In-Reply-To: <f45c1fa7-f321-4a1f-b65c-6ed326a18268@kernel.org>
References: <20240730033053.4092132-1-jacobe.zang@wesion.com>
 <20240730033053.4092132-3-jacobe.zang@wesion.com>
 <191025b5268.279b.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
 <f45c1fa7-f321-4a1f-b65c-6ed326a18268@kernel.org>
User-Agent: AquaMail/1.51.5 (build: 105105504)
Subject: Re: [PATCH v5 2/5] dt-bindings: net: wireless: brcm4329-fmac: add clock description for AP6275P
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_025304_540783_117D1467 
X-CRM114-Status: GOOD (  14.78  )
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

On July 30, 2024 11:01:43 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:

> On 30/07/2024 08:37, Arend Van Spriel wrote:
>> + Linus W
>>
>> On July 30, 2024 5:31:15 AM Jacobe Zang <jacobe.zang@wesion.com> wrote:
>>
>>> Not only AP6275P Wi-Fi device but also all Broadcom wireless devices allow
>>> external low power clock input. In DTS the clock as an optional choice in
>>> the absence of an internal clock.
>>>
>>> Reviewed-by: Arend van Spriel <arend.vanspriel@broadcom.com>
>>> Signed-off-by: Jacobe Zang <jacobe.zang@wesion.com>
>>> ---
>>> .../bindings/net/wireless/brcm,bcm4329-fmac.yaml          | 8 ++++++++
>>> 1 file changed, 8 insertions(+)
>>>
>>> diff --git
>>> a/Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac.yaml
>>> b/Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac.yaml
>>> index 2c2093c77ec9a..a3607d55ef367 100644
>>> --- a/Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac.yaml
>>> +++ b/Documentation/devicetree/bindings/net/wireless/brcm,bcm4329-fmac.yaml
>>> @@ -122,6 +122,14 @@ properties:
>>> NVRAM. This would normally be filled in by the bootloader from platform
>>> configuration data.
>>>
>>> +  clocks:
>>> +    items:
>>> +      - description: External Low Power Clock input (32.768KHz)
>>> +
>>> +  clock-names:
>>> +    items:
>>> +      - const: lpo
>>> +
>>
>> We still have an issue that this clock input is also present in the
>> bindings specification broadcom-bluetooth.yaml (not in bluetooth
>> subfolder). This clock is actually a chip resource. What happens if both
>> are defined and both wifi and bt drivers try to enable this clock? Can this
>> be expressed in yaml or can we only put a textual warning in the property
>> descriptions?
>
> Just like all clocks, what would happen? It will be enabled.

Oh, wow! Cool stuff. But seriously is it not a problem to have two entities 
controlling one and the same clock? Is this use-case taken into account by 
the clock framework?

Regards,
Arend



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

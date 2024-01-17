Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45D23C47DA2
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Jan 2024 10:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lGhSbW1/kuwBPXUJnLaS+B3mWgPwBpukRedD/1c6UnM=; b=vBlAgi4WCXfXmN
	YzbucX/SuDbXVGLrNGYpbNTnD/ulIxKqRl2c9PLV4Qg4gn49IKz+oDmO1pQJio89mCZluVYK3pYi3
	AZqJXRNIdbLnO2oh0EZvuSA1ig9uAmzGMXDAVdSEva26SbucGhITMHK/Ps+FgzO/bWWIJuVu1CVV0
	66bYNm/+f1TVasqXevMT4yK+SaEXRjaWFQ0vwpXvbDGxwfrtirmGfFU8Eiotajvk7i9gEdyOGeIEc
	Nw1hObID5S8Qiu/yMsZh56xb9gIzGfS2n+GKJKIhecOk5lShXGgI59qDX3EGwBWZEkRkUwprKFZvl
	1SVlC1PUGLDH/dg9LGxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQ3cH-00FMVt-32;
	Wed, 17 Jan 2024 10:57:53 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQ3cF-00FMUS-0O
	for linux-rockchip@lists.infradead.org;
	Wed, 17 Jan 2024 10:57:52 +0000
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-55976b32185so1990103a12.3
        for <linux-rockchip@lists.infradead.org>; Wed, 17 Jan 2024 02:57:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705489069; x=1706093869; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IqRs833wrue5a9LxBwlTRwYAWi+orhAtCOaaV0wmytU=;
        b=ashSnWN6j5DL5YfAL1c4IPmxL0cwzWPPqSlzjMy6BhUjvFOEFoUBPfTg4B56YxBD9p
         jKEZ2xYjdQm0jQEwzgKzxrG4PYMs0KMq5TVZm+fbIjZe+DcNaNDQH2H0TrMfHZGMBH1K
         JqoasgMrKRf0e4uw0mn/TrrRIYk/MneRy9x7E429wP+Jy9AJe2Qt6Lj77uNT95nOgu4Y
         cQhWpJYv8pyaExgfve7rrfP6bBdU8KdEA8hDIewZUTCjiUv0KJPEA7P05rIluGR3GexY
         w3bjHh4hwKrQkAIYLBA/QN6dIjsE8K8Wmu/RPMCCA3fhubUzhvLkSrONpyjY+h3QPHre
         tGHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705489069; x=1706093869;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IqRs833wrue5a9LxBwlTRwYAWi+orhAtCOaaV0wmytU=;
        b=AZr/WQbrJrmlD81U+Y0t/gjd3cnCVHBKoZGHudYCLD6FmYSoYyVzL79wI+YHHMld5N
         2LgfFzknu0YFEYhpzfm0FOu2QpNp7SnRbc4N24BR1ER2mq76AGO1fqlfwOJovjjp191V
         qS94yLZY/rTxH+IeuM2hN5GAzqAv5DY2Gdys6pZ6uuO2PjydKXDlk1v+9YcCkBKeaUC6
         LC381prslYFvupc0BNc/4caRXi55LBaQl+wcahQLgEjVklNwc75kvvYb3xA/DX9gMAUe
         6f0utaI+tczt5kEx5yzFoKG4jpdUppk1OoSMm4fQOSn9Y1/+NIWNPG2uD8bSw1yQwXrM
         E+/Q==
X-Gm-Message-State: AOJu0YweACI18y1J8rmJ+RdbkH9PhhQCdg8N2TGpwJll10KymQ03nr83
	QuU5XvrFxaJ1Yc8GZ9dGzZ8/UYIkFaIozQ==
X-Google-Smtp-Source: AGHT+IE/2D1PKynNN/qkS/0Bm4zLgx8w+AoPYT1OxKZ+GVRgiiNcjeWSH5vM173Vzbi7NNFjTG0IxA==
X-Received: by 2002:aa7:cb45:0:b0:559:d34f:b056 with SMTP id w5-20020aa7cb45000000b00559d34fb056mr510634edt.21.1705489069670;
        Wed, 17 Jan 2024 02:57:49 -0800 (PST)
Received: from [192.168.1.20] ([178.197.215.66])
        by smtp.gmail.com with ESMTPSA id h14-20020a056402094e00b00559cc2082dcsm976372edz.19.2024.01.17.02.57.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Jan 2024 02:57:49 -0800 (PST)
Message-ID: <d3a764d1-c8bb-4ad6-be0d-40d37efaad69@linaro.org>
Date: Wed, 17 Jan 2024 11:57:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: rockchip: Add rk809 support for rk817
 audio codec
Content-Language: en-US
To: Tim Lunn <tim@feathertop.org>, Rob Herring <robh@kernel.org>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Chris Zhong <zyw@rock-chips.com>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Lee Jones <lee@kernel.org>, Zhang Qing <zhangqing@rock-chips.com>,
 linux-kernel@vger.kernel.org
References: <20240116084618.3112410-1-tim@feathertop.org>
 <20240116084618.3112410-2-tim@feathertop.org>
 <20240116193701.GA286794-robh@kernel.org>
 <64bce36c-468a-43b6-9d8d-0c20fbd53939@feathertop.org>
 <71413ca3-1a14-4eda-ad29-dc5fcbe5afb3@linaro.org>
 <6d828e2d-a25b-4784-9905-4a264b7d78fe@feathertop.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <6d828e2d-a25b-4784-9905-4a264b7d78fe@feathertop.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240117_025751_180286_D289051A 
X-CRM114-Status: GOOD (  10.81  )
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

On 17/01/2024 11:38, Tim Lunn wrote:
> 
> On 1/17/24 21:12, Krzysztof Kozlowski wrote:
>> On 17/01/2024 10:37, Tim Lunn wrote:
>>>> You can drop the description.
>>> Yes just 1 clock, i will fix this.
>>>>> +
>>>>> +  clock-names:
>>>>> +    description:
>>>>> +      The clock name for the codec clock.
>>>> Drop.
>>> Just drop the description? I dont think can drop the clock names as the
>>> driver use the name to lookup clock:
>> Description. But anyway the problem is that adding clocks should be
>> separate patch with its own explanation.
>>
> Right, but I am not actually adding any clocks, just documenting what is 
> already there.

You are. Binding did not have any clocks, now it has.

> There are already boards using this codec with rk809 in dts files and is 
> working fine from driver side.



Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

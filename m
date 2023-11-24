Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69AAAC61DF4
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Nov 2023 07:58:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YqPhtYKvS3Usd4XiVMPdjuf5MTq5se9birsojI94Of0=; b=nkakSsHh/PEQed
	V4dnjQQWSr3g8uQT81sLPNyZjxlGFhyofcCsVMBI09sbfC6Syrns/cyiHUOV0gVS2JEq3SIxB0P84
	IoMgNmQeFVd5FX5ETn8eX8KojW+/u5gSCfb+3WyRcL3Q85pkHg768ymjZdZW6YcPAfdjkf/94o2xx
	BTt5WKgtJ0hA83MTkbJXxNaP3kWjqQOkzp+cuYg3TeoDwL+fYvwMqaYIzy2a2pft2MDhFdsxnj7x6
	3Ucb6zr/fz8QoOjjO+7/K86ieuzCd98Ccsb8ymUm5yzjgPoMR33mAM565nUyEd6mXAI/OWj5eyIa0
	/9E8y/KHphgLYWF3R2jQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r6R4a-006Qxg-2c;
	Fri, 24 Nov 2023 07:58:00 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r6R4S-006Qsw-1L
	for linux-rockchip@lists.infradead.org;
	Fri, 24 Nov 2023 07:57:54 +0000
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-a03a9009572so215481066b.3
        for <linux-rockchip@lists.infradead.org>; Thu, 23 Nov 2023 23:57:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700812668; x=1701417468; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FzE7mRENdLHC52cj5OrLy4S5FuvRYLj1lRgGEqKnTVc=;
        b=cRxrpgKgUAeug+KqbSWARlEtXtR1SgJM1y1f6BxTJk3IhJqQXJISK/orDgMsBTQiLJ
         zKUO7ZNs9Lehilr/kDtvCQfwkg33j8Tl1uRIbIs2YAo6cSQxCGRcJ+k2l+eQhteZgSnQ
         vDn1hsrJh9YmJwBd2u0mmlG5ynSNG5j80F43zZQXkYNKSW6zgHouEhKXTSbmwK+GgbOk
         8RmOoirihHdgpqLpPQwRNyyXabZIC56T5x5YWt96+0TL9J0Jsot1fP5HKjnq2wlm3eIR
         usPpPn4tdU6Hp4B+otbhUiGU2M+bRqcpa8M2wIZHrUP+aXtwc9reGXt+s2uMtLErCcO7
         XWLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700812668; x=1701417468;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FzE7mRENdLHC52cj5OrLy4S5FuvRYLj1lRgGEqKnTVc=;
        b=cxXl2VqPSrbAmWK5QBH8DVT0r+wLCeig4GShzsnaOfJsR8EbIe6b2DNjw9bZ2wK6N6
         s7CfOMgcB29PD8l3yU7+hwHBh1s16rF9oH4jjstHbqVad2JYhJrp0sTKEv8GXLKrN8sa
         71K51Ea42QF/8ND9XhNLVqOx673KtdESuRauAqiQgZnlhMRYImyv2HCSvRfQHSD7rjtS
         /Zm9Nq4jC/M+ctmdy50kDUW+s0b0sCzM1gLMewVJSLfhE/YgM1ghpRyOXEG/yWZEKE/M
         e+rwiKmjsYXDU9jyWrDE6OpqPL7ztqM/5l84mgYJWMULA9bDCMXMu0iCAg/fnoXgm/rz
         5j6A==
X-Gm-Message-State: AOJu0Yy4Mhjn0flePGojSgMKwKVxW93U0VDnTLMNccB5ozFNWUSZl0yQ
	k/7cz0e7YuPEigJD8WJJ/7DhdQ==
X-Google-Smtp-Source: AGHT+IEpswcRtTdhGch0exVvPbOgk2/rQmWFgtyQ6i4JRwkukMiiz2c0xDe8cFnI3Lme54QcHHtg2Q==
X-Received: by 2002:a17:907:bc7:b0:9e1:a5eb:8cb4 with SMTP id ez7-20020a1709070bc700b009e1a5eb8cb4mr1091023ejc.58.1700812668352;
        Thu, 23 Nov 2023 23:57:48 -0800 (PST)
Received: from [192.168.1.20] ([178.197.218.100])
        by smtp.gmail.com with ESMTPSA id hg12-20020a1709072ccc00b009fe1dd221a3sm1761600ejc.92.2023.11.23.23.57.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Nov 2023 23:57:47 -0800 (PST)
Message-ID: <b7a11c77-94ac-445c-a513-5bc58e1dfdd1@linaro.org>
Date: Fri, 24 Nov 2023 08:57:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC WIP 1/2] dt-bindings: net: rockchip-dwmac: add
 rockchip,phy-wol property
Content-Language: en-US
To: Javier Carrasco <javier.carrasco@wolfvision.net>,
 Conor Dooley <conor@kernel.org>
Cc: "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 David Wu <david.wu@rock-chips.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Jose Abreu <joabreu@synopsys.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com
References: <20231123-dwmac-rk_phy_wol-v1-0-bf4e718081b9@wolfvision.net>
 <20231123-dwmac-rk_phy_wol-v1-1-bf4e718081b9@wolfvision.net>
 <20231123-operable-frustrate-6c71ab0dafbf@spud>
 <73080fc7-d655-48f2-bd59-a5e171d12e19@wolfvision.net>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <73080fc7-d655-48f2-bd59-a5e171d12e19@wolfvision.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231123_235752_456023_EBAF6C13 
X-CRM114-Status: GOOD (  17.87  )
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

On 23/11/2023 20:36, Javier Carrasco wrote:
> On 23.11.23 18:20, Conor Dooley wrote:
>> On Thu, Nov 23, 2023 at 01:14:13PM +0100, Javier Carrasco wrote:
>>> This property defines if PHY WOL is preferred. If it is not defined, MAC
>>> WOL will be preferred instead.
>>>
>>> Signed-off-by: Javier Carrasco <javier.carrasco@wolfvision.net>
>>> ---
>>>  Documentation/devicetree/bindings/net/rockchip-dwmac.yaml | 6 ++++++
>>>  1 file changed, 6 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
>>> index 70bbc4220e2a..fc4b02a5a375 100644
>>> --- a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
>>> +++ b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
>>> @@ -91,6 +91,12 @@ properties:
>>>        The phandle of the syscon node for the peripheral general register file.
>>>      $ref: /schemas/types.yaml#/definitions/phandle
>>>  
>>> +  rockchip,phy-wol:
>>> +    type: boolean
>>> +    description:
>>> +      If present, indicates that PHY WOL is preferred. MAC WOL is preferred
>>> +      otherwise.
>>
>> Although I suspect this isn't, it sounds like software policy. What
>> attribute of the hardware determines which is preferred?
> 
> Maybe the word "preferred" set off a red flag. The description is taken
> from the mediatek,mac-wol, which is used to set the same flag with
> inverted logic (I could invert my logic to call mine rockchip,mac-wol
> and use a description without "preferences").
> 
> This property is used to enable the PHY WOL in case the MAC is powered
> off in suspend mode, so it cannot provide WOL. This is done by a PMIC as
> defined in the device tree and that should not be something the software
> could tweak.

I wonder if generic wakeup-source property could not be used. WOL is a
bit different because it allows to actually turn on the computer, but
otherwise it is also a wake-up.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

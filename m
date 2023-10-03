Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B233E7543A
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Oct 2023 09:18:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CXxPe+btsOFQHEw0Sw2WG/yZ/JSjNc1mKAwC8ZT1Qvc=; b=JXQ/kaglXq6jzp
	usuifjg6HtrywTWljHodS1lzV9nTLGB37w56BAna2M+1p9+Z1pap6MnF5Sugp6ovlOtOS04o+j9yf
	2ydQ0iKqihX5KIUbC3JD6zNn7D5Jy8MkA4V52lCNSPLUtVShu1w0vfR4aRnC7iqUz9TINhQ6xiXof
	4EEYtCUmLb/NbonCIMPoU+xz4kM+Mqa4lWO80M5MoAQy6rrRqgz8nLBOTrIYamIWWeu60i9a/m9oo
	TACTRIQHRIn1Q9jWa715o8ebD65oJ+Spj8AoBuGLh6dnuLmGFrt93+WRdrweXEkADrxDfD8w7h91h
	3h0NUTdwDhOXrVIkPyOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qnbXN-00EDwm-0t;
	Tue, 03 Oct 2023 09:17:53 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qnbXJ-00EDur-2w
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Oct 2023 09:17:52 +0000
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-53627feca49so1036718a12.1
        for <linux-rockchip@lists.infradead.org>; Tue, 03 Oct 2023 02:17:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696324660; x=1696929460; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dG62fHmSAmPy/hq8VeKinTVmXs7wBP/IZaUYZJwyGGY=;
        b=zg8PQsyDm0Zb+81wN5JDphz8OjgoVe6icLK9JqYsaBTawdVLZNV+bTpJMgIr19uBlu
         7DkDYzVbJ8uhPAw9/HF3IndX2y0QV7opmdiV2K5cnhgwoyLdB/8JB/pANPtKVEc3wFHz
         ytB6FuK1ejPHBgNl1LWQYUQGlzjFOgtRyqJMLkjz3oXmp/nKlZ8rwYdL85xWyVsys6CI
         QCiS0ouiP17VTnkeFois3YxJWhndPBPgocR42WjyD4rLI05JrgHc7mB6vO+cJejDCx0G
         b3NUBGr4cAge1uglHyysmmuwtXxu64mj24mBrCVc6nkiLNu/XKhq95uyVpm4vyb941kl
         gZPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696324660; x=1696929460;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dG62fHmSAmPy/hq8VeKinTVmXs7wBP/IZaUYZJwyGGY=;
        b=e0vMqzdrtNoAecMHSoHSXt/krlqAi4hrpCI45dCVSb0uTI+cgg3gtq4Af8ViEubYor
         N9ePTKvvll4fyCkua9mW3Ahr0ExXm+5HXsRY3hiha806g9viDOw/b4dVDvZqnWgoDDG5
         iNqpxIqpS6XfKo3AfXcMUO4BE0Hx+UCh1JKsL4KIOfn7c1C+PQ4tM3OQVkKLgGLLPq4r
         gijeV/GFIq+21hIJk2ko9AR7x/ZHBu1HkYQfRCXxlFHHr5jK8SWQYGcp3vp8igkUPfQt
         ldVxa7fX2+j2BXnlh+++wkye/fwyA2TQjjqVNOZ1nQGPVzQ0J0rhO72rsoIIc+3TTVdo
         TAMw==
X-Gm-Message-State: AOJu0Yzxolslcal/WrM2BuLO+GVpVqjXWNWOAdEj4VIfiCtFSUFyozUs
	B77Nm1sIQD03vbryXmcHT1C3SA==
X-Google-Smtp-Source: AGHT+IHWqtm3dXFLc0G4eQiSBOfmV/eA5IvHJJzXJbt56Gb26c9gozSgci5uLCmWc8b4Vq9mvPZ+ZQ==
X-Received: by 2002:a17:906:10d1:b0:9b2:955a:e375 with SMTP id v17-20020a17090610d100b009b2955ae375mr11058131ejv.23.1696324659935;
        Tue, 03 Oct 2023 02:17:39 -0700 (PDT)
Received: from [192.168.1.197] (5-157-101-10.dyn.eolo.it. [5.157.101.10])
        by smtp.gmail.com with ESMTPSA id a7-20020a17090682c700b009adc5802d08sm719878ejy.190.2023.10.03.02.17.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Oct 2023 02:17:39 -0700 (PDT)
Message-ID: <f2863562-33dc-443c-950d-2024c07943a1@linaro.org>
Date: Tue, 3 Oct 2023 11:17:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 1/3] media: dt-bindings: media: add rockchip-vip
Content-Language: en-US
To: Mehdi Djait <mehdi.djait@bootlin.com>, Rob Herring <robh@kernel.org>
Cc: mchehab@kernel.org, heiko@sntech.de, ezequiel@vanguardiasur.com.ar,
 hverkuil-cisco@xs4all.nl, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, paul.kocialkowski@bootlin.com,
 miquel.raynal@bootlin.com, maxime.chevallier@bootlin.com,
 luca.ceresoli@bootlin.com, thomas.petazzoni@bootlin.com,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
References: <cover.1695981374.git.mehdi.djait@bootlin.com>
 <6fa90df50c201dec70165c5138bc837f5a8829b5.1695981374.git.mehdi.djait@bootlin.com>
 <20231002171801.GA1942512-robh@kernel.org> <ZRvTdm5cTMT1tHlM@pc-86.home>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 xsFNBFVDQq4BEAC6KeLOfFsAvFMBsrCrJ2bCalhPv5+KQF2PS2+iwZI8BpRZoV+Bd5kWvN79
 cFgcqTTuNHjAvxtUG8pQgGTHAObYs6xeYJtjUH0ZX6ndJ33FJYf5V3yXqqjcZ30FgHzJCFUu
 JMp7PSyMPzpUXfU12yfcRYVEMQrmplNZssmYhiTeVicuOOypWugZKVLGNm0IweVCaZ/DJDIH
 gNbpvVwjcKYrx85m9cBVEBUGaQP6AT7qlVCkrf50v8bofSIyVa2xmubbAwwFA1oxoOusjPIE
 J3iadrwpFvsZjF5uHAKS+7wHLoW9hVzOnLbX6ajk5Hf8Pb1m+VH/E8bPBNNYKkfTtypTDUCj
 NYcd27tjnXfG+SDs/EXNUAIRefCyvaRG7oRYF3Ec+2RgQDRnmmjCjoQNbFrJvJkFHlPeHaeS
 BosGY+XWKydnmsfY7SSnjAzLUGAFhLd/XDVpb1Een2XucPpKvt9ORF+48gy12FA5GduRLhQU
 vK4tU7ojoem/G23PcowM1CwPurC8sAVsQb9KmwTGh7rVz3ks3w/zfGBy3+WmLg++C2Wct6nM
 Pd8/6CBVjEWqD06/RjI2AnjIq5fSEH/BIfXXfC68nMp9BZoy3So4ZsbOlBmtAPvMYX6U8VwD
 TNeBxJu5Ex0Izf1NV9CzC3nNaFUYOY8KfN01X5SExAoVTr09ewARAQABzTRLcnp5c3p0b2Yg
 S296bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmc+wsGUBBMBCgA+FiEE
 m9B+DgxR+NWWd7dUG5NDfTtBYpsFAmI+BxMCGwMFCRRfreEFCwkIBwIGFQoJCAsCBBYCAwEC
 HgECF4AACgkQG5NDfTtBYptgbhAAjAGunRoOTduBeC7V6GGOQMYIT5n3OuDSzG1oZyM4kyvO
 XeodvvYv49/ng473E8ZFhXfrre+c1olbr1A8pnz9vKVQs9JGVa6wwr/6ddH7/yvcaCQnHRPK
 mnXyP2BViBlyDWQ71UC3N12YCoHE2cVmfrn4JeyK/gHCvcW3hUW4i5rMd5M5WZAeiJj3rvYh
 v8WMKDJOtZFXxwaYGbvFJNDdvdTHc2x2fGaWwmXMJn2xs1ZyFAeHQvrp49mS6PBQZzcx0XL5
 cU9ZjhzOZDn6Apv45/C/lUJvPc3lo/pr5cmlOvPq1AsP6/xRXsEFX/SdvdxJ8w9KtGaxdJuf
 rpzLQ8Ht+H0lY2On1duYhmro8WglOypHy+TusYrDEry2qDNlc/bApQKtd9uqyDZ+rx8bGxyY
 qBP6bvsQx5YACI4p8R0J43tSqWwJTP/R5oPRQW2O1Ye1DEcdeyzZfifrQz58aoZrVQq+innR
 aDwu8qDB5UgmMQ7cjDSeAQABdghq7pqrA4P8lkA7qTG+aw8Z21OoAyZdUNm8NWJoQy8m4nUP
 gmeeQPRc0vjp5JkYPgTqwf08cluqO6vQuYL2YmwVBIbO7cE7LNGkPDA3RYMu+zPY9UUi/ln5
 dcKuEStFZ5eqVyqVoZ9eu3RTCGIXAHe1NcfcMT9HT0DPp3+ieTxFx6RjY3kYTGLOwU0EVUNc
 NAEQAM2StBhJERQvgPcbCzjokShn0cRA4q2SvCOvOXD+0KapXMRFE+/PZeDyfv4dEKuCqeh0
 hihSHlaxTzg3TcqUu54w2xYskG8Fq5tg3gm4kh1Gvh1LijIXX99ABA8eHxOGmLPRIBkXHqJY
 oHtCvPc6sYKNM9xbp6I4yF56xVLmHGJ61KaWKf5KKWYgA9kfHufbja7qR0c6H79LIsiYqf92
 H1HNq1WlQpu/fh4/XAAaV1axHFt/dY/2kU05tLMj8GjeQDz1fHas7augL4argt4e+jum3Nwt
 yupodQBxncKAUbzwKcDrPqUFmfRbJ7ARw8491xQHZDsP82JRj4cOJX32sBg8nO2N5OsFJOcd
 5IE9v6qfllkZDAh1Rb1h6DFYq9dcdPAHl4zOj9EHq99/CpyccOh7SrtWDNFFknCmLpowhct9
 5ZnlavBrDbOV0W47gO33WkXMFI4il4y1+Bv89979rVYn8aBohEgET41SpyQz7fMkcaZU+ok/
 +HYjC/qfDxT7tjKXqBQEscVODaFicsUkjheOD4BfWEcVUqa+XdUEciwG/SgNyxBZepj41oVq
 FPSVE+Ni2tNrW/e16b8mgXNngHSnbsr6pAIXZH3qFW+4TKPMGZ2rZ6zITrMip+12jgw4mGjy
 5y06JZvA02rZT2k9aa7i9dUUFggaanI09jNGbRA/ABEBAAHCwXwEGAEKACYCGwwWIQSb0H4O
 DFH41ZZ3t1Qbk0N9O0FimwUCYDzvagUJFF+UtgAKCRAbk0N9O0Fim9JzD/0auoGtUu4mgnna
 oEEpQEOjgT7l9TVuO3Qa/SeH+E0m55y5Fjpp6ZToc481za3xAcxK/BtIX5Wn1mQ6+szfrJQ6
 59y2io437BeuWIRjQniSxHz1kgtFECiV30yHRgOoQlzUea7FgsnuWdstgfWi6LxstswEzxLZ
 Sj1EqpXYZE4uLjh6dW292sO+j4LEqPYr53hyV4I2LPmptPE9Rb9yCTAbSUlzgjiyyjuXhcwM
 qf3lzsm02y7Ooq+ERVKiJzlvLd9tSe4jRx6Z6LMXhB21fa5DGs/tHAcUF35hSJrvMJzPT/+u
 /oVmYDFZkbLlqs2XpWaVCo2jv8+iHxZZ9FL7F6AHFzqEFdqGnJQqmEApiRqH6b4jRBOgJ+cY
 qc+rJggwMQcJL9F+oDm3wX47nr6jIsEB5ZftdybIzpMZ5V9v45lUwmdnMrSzZVgC4jRGXzsU
 EViBQt2CopXtHtYfPAO5nAkIvKSNp3jmGxZw4aTc5xoAZBLo0OV+Ezo71pg3AYvq0a3/oGRG
 KQ06ztUMRrj8eVtpImjsWCd0bDWRaaR4vqhCHvAG9iWXZu4qh3ipie2Y0oSJygcZT7H3UZxq
 fyYKiqEmRuqsvv6dcbblD8ZLkz1EVZL6djImH5zc5x8qpVxlA0A0i23v5QvN00m6G9NFF0Le
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <ZRvTdm5cTMT1tHlM@pc-86.home>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231003_021749_950909_9ABD01F4 
X-CRM114-Status: GOOD (  11.99  )
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

On 03/10/2023 10:40, Mehdi Djait wrote:

>>> +maintainers:
>>> +  - Mehdi Djait <mehdi.djait@bootlin.com>
>>> +
>>> +description: |-
>>
>> Don't need '|-'.
>>
>>> +  Rockchip Video Input Processor present on PX30, RK1808, RK3128 and RK3288
>>
>> Write complete sentences.
>>
>>
>>
>>> +
>>> +properties:
>>> +  compatible:
>>> +    const: rockchip,px30-vip
>>
>> I see 4 SoCs listed, but only 1 compatible.
>>
> 
> PX30 is the only SoC I have used to test the driver. What is the best
> way to proceed here ? Change the description ?
> 

The best is to have bindings complete for all of the four SoCs, even if
you did not test the driver on them. The "complete" means
hardware-complete, so what the datasheet/spec is saying.

If anything is missing, could be added later.

You can change the description and drop other SoCs as well.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

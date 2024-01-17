Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 249ACC47422
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Jan 2024 10:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aY5sis44qrUqPLVUCnCVF8tfVVfAKnxQsCMD933jlyE=; b=HgXpbKGrLI8VGh
	opMzYAigp+fPzxLP4avpEuWfgIDGiycXroYO1+TyFqvjv39VW1UsuAuzxEqp5HWSCwn49StMEmLUB
	458mwTbSS4yETXW05oFOcerXUd64gIAcrHkzS0BWPtirlLXMuvyG85rRM05kr+qk/JRL8zR991mgb
	BYLoITPm2HPuQuz4r9W9rvp5FxwbBgG5Pgs5Tg9iYdw1B5zzS7NyEH6NcM6Id3Di+yF3R6wQFvDF5
	Z3DBMf+db4PggNnniN31B0LqlkaAF/TxkJJksm9Ljyun0JDYEqpWGIPdo+WurZEBjDXQwrsK7ZsaB
	5La0yxr/8NSCK1H9I1Dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQ2uC-00FE38-1A;
	Wed, 17 Jan 2024 10:12:20 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQ2u8-00FE1Q-0v
	for linux-rockchip@lists.infradead.org;
	Wed, 17 Jan 2024 10:12:17 +0000
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-50e7d6565b5so12901856e87.0
        for <linux-rockchip@lists.infradead.org>; Wed, 17 Jan 2024 02:12:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705486334; x=1706091134; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fLz4I1weXAmYca488G/BVTkRV5enYY8Li2toFrdjODE=;
        b=gIOrgbUfUpJg+HRQZEQkUrOi8FTVy2U4Tb9vxsToUOeBy3XC8wTeVGsfoSnULBugO6
         103iZgnK3LJYxsPjMXNAzFdmBEyhl4nr59UOp42vEgX9F6n4FCqV9AJEr0KFTuCNrGVZ
         UprXxDuv+b5+MVILYm06v8Tb8fGWYRcsf0BruhUih/2fWaUI+4RhiC96bVrS0jTkHcjH
         ZRcJctXeGHG3xs5aPHLBrzudSFpsCC/1RGCp/V0V0nuhikeLOn+2obDMmquX1Lpd5i5S
         vosEMo8Abo8LKoFUaHjqjx4KMM/xbs72n0OXTB1kGiJRqPrhYfJVrumilxoPu60qQ2RW
         GBMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705486334; x=1706091134;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fLz4I1weXAmYca488G/BVTkRV5enYY8Li2toFrdjODE=;
        b=dGGENg4TXQ9m39AS1EHs4X19iWCGWPm/UJIwQ8EjPKS8wsZsmR4cMFAoMvP3kP4uyM
         Dj+l1LjHZw/AoFFoYvk04W7aOarAQI/pktB1ZiYShzfhUm/ZuvltiozRtmLOiltWH0ky
         I+lGi3d8jiYsVzHg+zHiwDVH0HMGzQrdnrVxL+LFq4zLhw/EBKoPZ97RcE35VpRwBOPs
         CfsNANEoT+Jz4+ebR13w40wz3olUNe+VCdbCNoMB3u0Icwgbx972WykowLXpCAo/eEuy
         PhPvgr7Pjy9Unxto0znE3snrTI9WYnat9moH5RYfk6PyOck3p5xncDruJV+2RPz9UhO+
         qaXw==
X-Gm-Message-State: AOJu0YzRul5CpRYL/dTmU+CT87VMSkyd1MMTE9vcT7OHGkAJOo1GBqwd
	aundGeuRxX5msIv6WrM/sVVhdTQ0nPb5FQ==
X-Google-Smtp-Source: AGHT+IGHUS47ntGtAxqgSc16gGw4A7eJz5ipanrm2FHcARnMas7/Pt79IoAoxDaiz42CzBkaXPgCsA==
X-Received: by 2002:a05:6512:239c:b0:50b:e724:62a8 with SMTP id c28-20020a056512239c00b0050be72462a8mr5089885lfv.92.1705486333780;
        Wed, 17 Jan 2024 02:12:13 -0800 (PST)
Received: from [192.168.1.20] ([178.197.215.66])
        by smtp.gmail.com with ESMTPSA id p13-20020a05640243cd00b005597b0380ebsm2312997edc.92.2024.01.17.02.12.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Jan 2024 02:12:13 -0800 (PST)
Message-ID: <71413ca3-1a14-4eda-ad29-dc5fcbe5afb3@linaro.org>
Date: Wed, 17 Jan 2024 11:12:11 +0100
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
In-Reply-To: <64bce36c-468a-43b6-9d8d-0c20fbd53939@feathertop.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240117_021216_370419_02894973 
X-CRM114-Status: GOOD (  16.23  )
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

On 17/01/2024 10:37, Tim Lunn wrote:
>> You can drop the description.
> Yes just 1 clock, i will fix this.
>>
>>> +
>>> +  clock-names:
>>> +    description:
>>> +      The clock name for the codec clock.
>> Drop.
> Just drop the description? I dont think can drop the clock names as the 
> driver use the name to lookup clock:

Description. But anyway the problem is that adding clocks should be
separate patch with its own explanation.


> 
> devm_clk_get(pdev->dev.parent, "mclk");
>>
>>> +    items:
>>> +      - const: mclk
>>> +
>>> +  '#sound-dai-cells':
>>> +    description:
>>> +      Needed for the interpretation of sound dais.
>> Common property, don't need the description.
> Ok
>>
>>> +    const: 0
>>> +
>>> +  codec:
>>> +    description: |
>>> +      The child node for the codec to hold additional properties. If no
>>> +      additional properties are required for the codec, this node can be
>>> +      omitted.
>> Why do you need a child node here? Just put the 1 property in the parent
>> node.
> This is how the existing rk817 codec driver was setup. I suppose it was 
> copied from downstream, where there are more properties than just the 
> one. I don't know if there was any intention (or need) to implement 
> those other properties.
>>

You need to clearly express ABI requirements in the commit msg.
Otherwise you will get a review like for new bindings.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

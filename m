Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D99FEC54E58
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Mar 2024 11:02:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IU2yUiZArC0ajCQj4EPzwJWsFz4Lx3rE/DXmQiS8EEU=; b=anFDRaovf2FOfb
	n1j4UQENcDhkFPZGH8oz4yLLLQoGdpcMeSuzZo/ZqCl1WloYqOMTK9+w3lNcLAfUD0WZ6vbRrv7BL
	wFxpLgjgK3b08kI0dl1r7bfU5Un1QXO6AkjrReYCcwe6w/b9llb28M5iWkvw3Dtl1rJzn6w0v5zx9
	0oIuymQpZN+OKVZD9j6LISf9WEMYzIEm/NqvAJFT/Nfrc9xTBxVWtSVqDNuPs62AQ9plxh2hk+2YO
	0G81q7DDhGb1G4HdD2qRAYJj6meCpqt+TFX8RgHCDq4NL7sGpvnSymZJbL1fFszVo30I2Yah1l1L4
	nPxdgNl9jmngUb4adFMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnz8m-0000000AEE9-3dfa;
	Sat, 23 Mar 2024 11:02:20 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnz8k-0000000AEDL-2OnY
	for linux-rockchip@lists.infradead.org;
	Sat, 23 Mar 2024 11:02:20 +0000
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-56bfaf98245so311142a12.2
        for <linux-rockchip@lists.infradead.org>; Sat, 23 Mar 2024 04:02:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711191734; x=1711796534; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=dq9iZxQWSEhkDSaw4XzDPMOvLVbhwjj2yH4g9CSlP7k=;
        b=aQid7ZyHVlai38JBupveCvlQHEMswSC2IiUu4jVOSGSrLSZOvsV04Ejpr7Hh2sISZR
         AUjFYZw9lVp2hBkkecB8u+htWkO8n8rnVx5thJCoYuE9WWlMMjsu6OEOCZuskvZtzh02
         DyyWkjFL0qUuk7o9toVPpIRT2SQHFpgTzIA5epvz4pMoPvx+xYLPvQBKyKoogY+fCSop
         GICYNEG5Flnk/Dy80b/WzFEc3g1R21cjTKOZGMvfshNP10i8Ta0iM6eWn9h6+fOdCN8o
         FkgEkBhYqEcvhAtw2k2RooJmoFupJO2nWK5rZ42NsHtsOE8sFYZck5DxIf0CpL49lTPz
         a+Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711191734; x=1711796534;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dq9iZxQWSEhkDSaw4XzDPMOvLVbhwjj2yH4g9CSlP7k=;
        b=nUBDt4Q3k7GS9JeJ1ju7xhGTy+Nr1izuDlcHx4ZKkW0MdRJ6pF6Oa5q4pUtpgJUDf/
         aOF+eLEtEheD3/ZkXJ7A2HrL3Wpa/745iK02ElBExAEcnTzhOZlxmoOBbNuZQqsDW1q3
         3kIhnXj+98lq9BD7cNUK0fX9c5YmxQCmz88URGJiWzzgzb5EYO8POJIi00g5lOpeNp45
         IF/zIRUsfPdi1k2GIunD15qujjpls1GAIqYZqHD3aQL/BPKz6C9FrqJ1sKun+SXOlSi6
         tv8qU0jaPkkf42juHRNJUagmXneb6WJLU99eib0Z3oRcdteE6a+Y03JrfRCHMk+N4E95
         5FQA==
X-Forwarded-Encrypted: i=1; AJvYcCWnBi7zsGux5jD3WOxb+wRBAmUS+RJqMxxsbUvNsnhPwmlvz1m1d9OXjYwBpWaj3g4XCyA6rpYNsBPEm6cP+xjL3+zuTY9KPvC8HPum11j4T5a9
X-Gm-Message-State: AOJu0YwMyvm73KheANd8btc2LacjqziqyxW1qmNLDJVUZHoE/UbB6CEu
	7yCWC1Dy6osOPk8Mp+9DRXbAA6bqxt1QZFhlrLGZ087mqdJa5VcoJUASp9sPJzA=
X-Google-Smtp-Source: AGHT+IFgRdL1ldCMZPGdtxNQwCeQt6fRjLSGiWKoxzjM+E933CWvgDGRRxcb0E5RDdjN2Q3HQajR3Q==
X-Received: by 2002:a50:9984:0:b0:56b:f2d6:4be1 with SMTP id m4-20020a509984000000b0056bf2d64be1mr1436258edb.4.1711191734212;
        Sat, 23 Mar 2024 04:02:14 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id q3-20020a5085c3000000b005645961ad39sm767848edh.47.2024.03.23.04.02.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Mar 2024 04:02:13 -0700 (PDT)
Message-ID: <f892767c-7e01-4099-b674-0eca6edf7bba@linaro.org>
Date: Sat, 23 Mar 2024 12:02:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/5] dt-bindings: mfd: Add rk816 binding
To: Alex Bee <knaerzche@gmail.com>, Lee Jones <lee@kernel.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Linus Walleij <linus.walleij@linaro.org>, Liam Girdwood
 <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>
Cc: Chris Zhong <zyw@rock-chips.com>, Zhang Qing <zhangqing@rock-chips.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org
References: <20240323085852.116756-1-knaerzche@gmail.com>
 <20240323085852.116756-2-knaerzche@gmail.com>
 <bfe79f3d-1615-45a4-81f7-7e30740308d7@linaro.org>
 <3c0d5aa2-55fb-4827-bcd4-256e6ae55ee9@gmail.com>
Content-Language: en-US
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
In-Reply-To: <3c0d5aa2-55fb-4827-bcd4-256e6ae55ee9@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240323_040218_636751_5D705139 
X-CRM114-Status: GOOD (  14.28  )
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

On 23/03/2024 11:56, Alex Bee wrote:
> Hi Krzysztof,
> 
> Am 23.03.24 um 11:32 schrieb Krzysztof Kozlowski:
>> On 23/03/2024 09:58, Alex Bee wrote:
>>> Add DT binding document for Rockchip's RK816 PMIC
>>>
>>> Signed-off-by: Alex Bee <knaerzche@gmail.com>
>>> ---
>>> changes since v1:
>>>    - lowercase/hyphens for regulator node names
>>>    - rename "-reg" to "-regulator" to make node names generic
>> I don't understand why did you do it. I did not ask for it. If you want
>> to rename, drop redundant regulator or reg suffix from node names.
> You didn't ask for that, thats true.
> 
> I did it regardless, since node names should be generic and the "-reg"

device node names, here you do not have devices.

> suffix is not. They are all subnodes of "regulators", indeed, but I don't
> think dropping the suffix completely makes the binding any better, since
> there is a boost(-switch) and an otg-switch which are also subnodes of
> "regulators" and they are just switches.

Adding "regulator" suffix does not make them more generic... anyway,
that's not expected pattern. First, do you see such code anywhere?
Second, the regulator node names should be usually named as the name of
physical component. That's the most common pattern.

Please do not bring some exceptions from coding style just for your
device. Your device is not special.

You did not respond to rest of my comments, so I assume you agree 100%
with them.

Also, please trim the replies from unneeded context.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

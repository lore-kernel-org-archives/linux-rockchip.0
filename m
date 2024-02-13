Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA1D0C4829A
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Feb 2024 11:52:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OH5mXVbucraEfQDYj8jm9KQz/tlk8dYahlUE0WTiJsQ=; b=1mTeFDcy+R99AU
	8zUomb0P2+1DmcddAjQy3gz4dpqIcfXg6CO+y7c4P9MdDN5JlNIy8iY3IrunibYF4w9sq5mqSS7hb
	a9bduzve4cRthWwAzlVz54pYWXQ6m0XWOEmsoNm7ndntvkX/jurtMYxILnRwPcYIAuvZiw+047h0n
	uieaAMfY8d8olwLolVVjmYwjl9zjq7ZO8rEKOu0Slj9yz2RjVrQBx4e94wk94vRa66uZONtFqLg/W
	wPODcUCmWf7RHUYkPx+Uev4hvq0OIE/7rnmsu3rsN6dLQUunH1qWEUjCwNbLFpB7To0R/zPVejqWA
	vTJvoIQWnYIygrhzfuJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZrKZ-000000094z4-19xa;
	Tue, 13 Feb 2024 11:52:07 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZrKW-000000094yP-2xbq
	for linux-rockchip@lists.infradead.org;
	Tue, 13 Feb 2024 11:52:06 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-411bf7e4fc0so3274785e9.2
        for <linux-rockchip@lists.infradead.org>; Tue, 13 Feb 2024 03:52:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707825122; x=1708429922; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=d/8hvfnB52WKyQuDYeSY+T60yEnMttg2LqXyXeds56w=;
        b=ctHPiu8dnez7SVZJOBsZWD33jmLVOM/nvU+xF9wjjyR5qg56b0oj+hEasAOpgHKDk2
         lxjOpo0f7LX9muXKNrdhf4KVJ1fI+ElUR/7SRq2qBxZogcYD0+QUqUFjNtTwRuAXxfAX
         WrKvjVFqYFWYtl7T63Tue0uKoQeubspNZlvZN0zICaeB5vsgT3SVXuZbFkc2Q9Ha4dFV
         p1+xeX7HPHCIhXBU8RB8hyMZaPJMlwcOA4kgFlM+wPxMrYB3PqdNL7gHwIg+pysLNwY2
         UZLoonqAZtUl5rAIa9ga1vbNQnKvVx9VUOKetAfHZlAuHyRE/eoHUf2mCdZ5UgMITYQj
         qT1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707825122; x=1708429922;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=d/8hvfnB52WKyQuDYeSY+T60yEnMttg2LqXyXeds56w=;
        b=IIV7xql73GeQddlD8Ys+qE2BlhyPSOJdALcdCYrwu6Jos0U6Ef8BJFY+j0B2Igq+9V
         GNQXrTpBUxuOpXf6+qjHxhDh5upSsProKHxQBsUpXigI0lD8929c+xk1iWfFNPC47MCx
         Mu628giNV8oB/z3FqNLGPMyocAkUq0+Mu7CFWFy+/Cwi8c8NBQZC5F1zeUDyBWeGStNC
         tXOgu0RS3wmmxgDc8fULUQDjJq/CjaqmcOl1ZuW4zxEzj2lETYKObeyuvhBz5fqkcpN+
         ipitQFkC3a/NwIzCiMjZTWZHq9l5DSNDCm1jhXZsmD5lLxyQ1M3asp8b5TyXBGoQX/tA
         KvDw==
X-Forwarded-Encrypted: i=1; AJvYcCVREzCbSd+GANpTyKJFq8J8vlbleO1vFuxP5yr5X1iJwjV6nGtpmQnIvPQy+3bRa6Nm+McgDJkrLA9ekRWv6vKZwsh5+dPknXzO45cVf6pb6sFr
X-Gm-Message-State: AOJu0YxKKhx078OAVhyH2YVXxbc2yZsJZC2um4Bl1f197rHy7MMUY9o6
	5S+7nxBrudWWH0ialB0Ff/k7vBe0p9IjQpu5Qz+KL4VFimwJL/Pl6GPBJXCCOtc=
X-Google-Smtp-Source: AGHT+IHonkkurPUvJavEJpeMYX9VSCpuekmQBUsogxy3x8teNWtObawj37dzh2fc1R7htZFP4Udrxw==
X-Received: by 2002:a05:600c:4709:b0:40e:e834:3d86 with SMTP id v9-20020a05600c470900b0040ee8343d86mr8201325wmo.37.1707825122315;
        Tue, 13 Feb 2024 03:52:02 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXKMaS9AuJ7XQ3rkJVqEFEokJo3tjRWlKUvffNx5SXum2LJHH3Bvw0+P7i2To8z3wox0BEW8GkCSwe+SXVk3znoZmyeshQISrNsyjs7zMDUyJFL38qjuUmhfy5k4SegeW8Wp5aIs6dRoHJYx0xDPZUi8/TBF+rF36VGvWP2GTKRiaBchP2AOHZFbrJxURBoUNQf5tGycsufQQObs88oRRy4vzTCA0pxcCXin917IQaQ9nac097iwu1NoLeih0Vcc4b5VRf+pNj4zpcDfxeTg8LL0+gFv2fptmONcPLI4r5S9DaNNlKW4Naw1H80d72U7w4uHzakpGcWtRFSf8hehB+bBzJn35LwduBRv4A5QXdL3WIA4f26kw28jVrFyBL3AY4qHh80wcDU61ArYNO55urLifMR8JDj1v3Wam/JYebbFY4c/4vr88kiVXpT5AGcjvOPd+JJf3fy4doEHm6PlHFEIFJikG92FVTH2soa2Gew4rq2bcqdOJLA3uISsCqtEkPHV6RITM5ictW24MYhvREgM41McQU7s/geUbKFl/KbGSK7JUU9thr1zfQcSsTi1J9B9OZg89vKL/lwCnmCoNRtpNkSPoZJs9Jle3JBf+Aa
Received: from [192.168.1.20] ([178.197.223.6])
        by smtp.gmail.com with ESMTPSA id ce9-20020a5d5e09000000b0033cddadde6esm1090631wrb.80.2024.02.13.03.51.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Feb 2024 03:52:01 -0800 (PST)
Message-ID: <840738f2-abfb-422e-bf2a-c2763e76197b@linaro.org>
Date: Tue, 13 Feb 2024 12:51:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/7] dt-bindings: display: Document ST7703 panel rotation
Content-Language: en-US
To: Chris Morgan <macroalpha82@gmail.com>, linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 tzimmermann@suse.de, mripard@kernel.org, maarten.lankhorst@linux.intel.com,
 daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
 quic_jesszhan@quicinc.com, neil.armstrong@linaro.org, megi@xff.cz,
 kernel@puri.sm, agx@sigxcpu.org, heiko@sntech.de, conor+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 Chris Morgan <macromorgan@hotmail.com>
References: <20240212184950.52210-1-macroalpha82@gmail.com>
 <20240212184950.52210-4-macroalpha82@gmail.com>
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
In-Reply-To: <20240212184950.52210-4-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240213_035204_776396_77E72C65 
X-CRM114-Status: UNSURE (   5.62  )
X-CRM114-Notice: Please train this message.
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

On 12/02/2024 19:49, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Document the rotation property for ST7703 based panels.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

(with or without empty line removal)

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

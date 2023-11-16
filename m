Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2AA97C197A0
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Nov 2023 20:26:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S9O3w9Cxkgk1WuY/vmOWpBPSiOtakhyImEoHjobZA/E=; b=SJgu+r8W+o+gvq
	3ylij2uS07vxexQUKM6oLx71sFLVsQ3pfBGsyoK6d76AsV5SWw843orOtqPPnlU6mgmcQHyl0n5Pg
	ayT8vvP/iN2xZpZkafL81d6K36FnItAsg/mqImo4SGPJHdYGjC0KuYmK57Vsk1p6e4mR5iFWWBCBi
	8H8PqFuw1GsJZOMffU0YKDF7Zcqqf5zq5+YZYoCdekUC+HE0aYIXmBRaEzwBX82w4B8ovqDgPpN/i
	d7bSeRpI6GCn6iU0l8c9Z/Bp8B33+nwM4mr8wk2OJSwDjl1/NBBJxfIlQoNVq8W/AXYbNHue+3Cjs
	k8ikYICZvexm4oSTsX3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r3iw0-004j5k-2M;
	Thu, 16 Nov 2023 20:25:56 +0000
Received: from mail-qv1-xf2b.google.com ([2607:f8b0:4864:20::f2b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r3ivy-004j4i-06
	for linux-rockchip@lists.infradead.org;
	Thu, 16 Nov 2023 20:25:55 +0000
Received: by mail-qv1-xf2b.google.com with SMTP id 6a1803df08f44-677e94e40cfso5071586d6.3
        for <linux-rockchip@lists.infradead.org>; Thu, 16 Nov 2023 12:25:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700166351; x=1700771151; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ftw8OKM8jyV6wgLm4ISZDKT4DP+MTpHnPMcabpyZU+U=;
        b=MJWIODobz9krxpwa4yLacscFaLrF9Cws9CCXnAe/bsMsf0CEYJDBc01xm8SweEgQZ8
         0eBDyIW7Q5nzU37DRF1d7OkKPkpmk1QQU+QUw2LcUXD8RWBZ7NdmG2R0T3UbWMpxVMI3
         oJuROxOQEmK8BS3AdWfT/uTuqHGRnZxzWYEG+WXZPO4lFjSrm3LDYWAc2ICVxrSY2Ypt
         o2GmzoxJoO9oEeviqaG1JyLol7X7ece7oOHxuppoZgYD0a2wVnoQvQV3gtGNNSLzS2QC
         vtb5nWdn0IFYyewkk4yi86KA7uAmLfZoOsuuUoWZlmzua7od7wrKc/bDIQ2aoMexKKW1
         8l4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700166351; x=1700771151;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ftw8OKM8jyV6wgLm4ISZDKT4DP+MTpHnPMcabpyZU+U=;
        b=K3Duumdl3ORCdqZaZzHsxp5lrCXlTkMDvKO+AMpmq5Tco7razXd7i6mGdtf7UAlYGe
         3hATl1S58DKox6rWhmzp/tlIt3CM3ey+AQ44lKigr7wDrO1nH9SR6kDrkwte5oxG5gS0
         ND2p4LvnVQ8WfuI1V+vNji5DZF/ELGdoTexyeMJPzyp5/XN94MOD1Gcvm9lsoegSjQh9
         57MarfpqLuVnxwPx9XnNqouKXl3LbJEsXRhunc9mxm3JzWKTQ/EgOlyeAW3B0HqPbY3C
         a/xa2XhWxlcdg9Z352bzT53zjBdFsAurbnsAsLtDClz9skLn/8m2VPL8UCRYETK2pBoX
         giXQ==
X-Gm-Message-State: AOJu0Yy0o6i8MAbrK6mgeKpx80akLSRo0o5XI40k8QWspa7jY3HZhj1j
	8QauFiBe+mZ1z7KZueIyr3CAGw==
X-Google-Smtp-Source: AGHT+IFZgRgJHjHqSPRblG/k/ByjAcOsouz1erMh7YXYb+Cp4Zsi5gQCczw6iOSLR5882xWb7rD+oQ==
X-Received: by 2002:a05:6214:268f:b0:66d:fa0:ab2f with SMTP id gm15-20020a056214268f00b0066d0fa0ab2fmr12375291qvb.18.1700166351706;
        Thu, 16 Nov 2023 12:25:51 -0800 (PST)
Received: from [10.44.189.251] ([12.161.6.169])
        by smtp.gmail.com with ESMTPSA id ee11-20020a0562140a4b00b0065d051fc445sm51695qvb.55.2023.11.16.12.25.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Nov 2023 12:25:51 -0800 (PST)
Message-ID: <bf1e2146-0322-45a7-abc6-945f5887f474@linaro.org>
Date: Thu, 16 Nov 2023 21:25:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 6/6] dt-bindings: arm: rockchip: Add Powkiddy RK2023
Content-Language: en-US
To: Chris Morgan <macroalpha82@gmail.com>, linux-rockchip@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 sebastian.reichel@collabora.com, daniel@ffwll.ch, airlied@gmail.com,
 sam@ravnborg.org, neil.armstrong@linaro.org, heiko@sntech.de,
 conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 Chris Morgan <macromorgan@hotmail.com>
References: <20231116001742.2340646-1-macroalpha82@gmail.com>
 <20231116001742.2340646-7-macroalpha82@gmail.com>
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
In-Reply-To: <20231116001742.2340646-7-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231116_122554_074374_DA93C371 
X-CRM114-Status: UNSURE (   8.12  )
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

On 16/11/2023 01:17, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add support for the Powkiddy RK2023. The Powkiddy RK2023 is a handheld
> gaming device with a 3.5 inch screen powered by the Rockchip RK3566
> SoC. The device looks physically different from the Powkiddy RGB30,
> but is functionally identical except for the panel.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---

Subject prefix is wrong. It's:
ARM: dts: rockchip:

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

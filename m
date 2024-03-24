Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BAFDDCD11BF
	for <linux-rockchip@archiver.kernel.org>; Sun, 24 Mar 2024 10:45:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j73flB7R6oQMLXofo/OXD56H7g4HcyxRpxTO8in+KGc=; b=C6Il+DDWDNwrEP
	OtLPQZFtNETqCfldD64z6oO4REil8FamK/6DvdET74OYrFxNiPQduWd/c8NNi3W1DLqwnZ7Z1idH4
	eka4rCiKf7D7i7KLSXI95ORhuFqWvBYEB54FjDp5ZIV1scUznMxZH0FfpTsqFeyh1B3H0LWObpULo
	e+1z/kbe/G7II5es70SAF5bpNZrYrYxzu2lsjqLr3O67qNJYwEYrheGJkWNQlhQZVG43nEo72Mfq6
	9T6UvnuyTzrzJx6lGNmtkjaK7gV/zx2cgaUDJg0dSgLkpG+RZjuTwMCpwDDwGnxtp4FQrOmZYJqqf
	uwKBSMGO+Nk6txyVneDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roLLs-0000000CNWa-428x;
	Sun, 24 Mar 2024 10:45:21 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roLLo-0000000CNUv-06Th
	for linux-rockchip@lists.infradead.org;
	Sun, 24 Mar 2024 10:45:18 +0000
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2d46c44dcc0so41687821fa.2
        for <linux-rockchip@lists.infradead.org>; Sun, 24 Mar 2024 03:45:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711277113; x=1711881913; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=u/NpqECjV96CvVZSJ4zc4oqG9jgeQP/IE7NYaN5ewl8=;
        b=RZJ20CzFNqwucPle6b/xMOwbkNW3rX6zEPfzNYhN88zz5Q0Ln7OtokdgDepMPloZUv
         zRWU5BOtF0xazslJbvZEUYj3Du4XMKTUgHm/sNIymKcq4zgrDepxJ23bUnUlYas/QFPz
         Y1nwUXsc5C4CoVCev2y+4auIW82+sO8zd3hMjPV0BGGBJW8UnVn3ftYiXffMKKy//o/l
         JSMF+VMQ8BnFA1h+X0muWD8JgoS8sZwhscpab59hErGZYHSOAx3Hrxy5QY8JvUKqWr2L
         fsu4XrpWAx2Knl4nxJbCZhXUpaGIbp29OtqOj6PgBISMAZTUQ26Lp05UhC2TSDobYEol
         fxqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711277113; x=1711881913;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u/NpqECjV96CvVZSJ4zc4oqG9jgeQP/IE7NYaN5ewl8=;
        b=W512gkGAIozzWonOXRYuL1x+qOGGUUm1PbbEwnbRKj1Qy5b+txSK6FLJeYMgq3uWuE
         AQgQwkqbc4/dc9kKwjEQJzE8rjXTmAtwC1/g7fG7uiALd8vwV+7czsGzXNRGuhTE09Vi
         P/dQJrdiCiDnkNLg0MVUn4+EYdhQMRt15TRJf8tSRDAwsovMsead02q4RbYCECu7NzPQ
         FeldmrUR8DbMay3xTPKa00hlEwqJRjkX0YmszVM7TLNCF+SDzHEc3nr9t3Wt5kXOzzA/
         wN3lZ0qY4X7vY4jW3m2ZBJNokn3TC5Bg+n40SkPYcsbqhRQRnyYRZCnplzLkysuZm4Sr
         HccQ==
X-Forwarded-Encrypted: i=1; AJvYcCVA1cvOtomxZOJh5jbn5dsx4/WE123h2/Tf8/LX7se+Tpekyj7pnFtCek3wsWQQK4qPFwSfVx8E0PDo4FOFYYleyFxT/FTE5WDTxmqzfqxClkgE
X-Gm-Message-State: AOJu0YwYfIstgWVSOpenm1L3B7sTr6HC7FuVg1RVZnBohmThSAWsAf+V
	6vPAbNqG5JwSvXTS+lI13x8UdkUJQHKxRpWoewR1/0eQPNO4e6dt7LqG5gDCVz0=
X-Google-Smtp-Source: AGHT+IEm2F8zU4cto57yGTyMt/v99Q9Vgqo+PIreOkzMTw8RX3Y0RQrNFUuKErlIZzhrixVlw7fnAg==
X-Received: by 2002:a05:651c:547:b0:2d4:5404:3e8e with SMTP id q7-20020a05651c054700b002d454043e8emr2808754ljp.42.1711277112775;
        Sun, 24 Mar 2024 03:45:12 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id j31-20020a05600c1c1f00b004147b824b08sm4965067wms.7.2024.03.24.03.45.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 24 Mar 2024 03:45:12 -0700 (PDT)
Message-ID: <0005257d-8022-4a66-a802-0c920d259ccd@linaro.org>
Date: Sun, 24 Mar 2024 11:45:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/1] arm64: dts: rockchip: disable analog audio for
 rock-5b
To: Pratham Patel <prathampatel@thefossguy.com>, robh@kernel.org
Cc: krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, heiko@sntech.de,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240324062816.145858-1-prathampatel@thefossguy.com>
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
In-Reply-To: <20240324062816.145858-1-prathampatel@thefossguy.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240324_034516_376624_30A52909 
X-CRM114-Status: GOOD (  17.83  )
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

On 24/03/2024 07:28, Pratham Patel wrote:
> The addition of `of: property: fw_devlink: Fix stupid bug in remote-endpoint parsing`

Please refer to commits using commit sha () syntax, as mentioned in
submitting patches.

> has surfaced an issue with the analog audio property in the devicetree
> for the rock-5b. Booting kernels v6.7.9+ and v6.8.0+ would cause the
> following call trace:
> 
> [   21.595068] Call trace:
> [   21.595288]  smp_call_function_many_cond+0x174/0x5f8
> [   21.595728]  on_each_cpu_cond_mask+0x2c/0x40
> [   21.596109]  cpuidle_register_driver+0x294/0x318
> [   21.596524]  cpuidle_register+0x24/0x100
> [   21.596875]  psci_cpuidle_probe+0x2e4/0x490
> [   21.597247]  platform_probe+0x70/0xd0
> [   21.597575]  really_probe+0x18c/0x3d8
> [   21.597905]  __driver_probe_device+0x84/0x180
> [   21.598294]  driver_probe_device+0x44/0x120
> [   21.598669]  __device_attach_driver+0xc4/0x168
> [   21.599063]  bus_for_each_drv+0x8c/0xf0
> [   21.599408]  __device_attach+0xa4/0x1c0
> [   21.599748]  device_initial_probe+0x1c/0x30
> [   21.600118]  bus_probe_device+0xb4/0xc0
> [   21.600462]  device_add+0x68c/0x888
> [   21.600775
> ]  platform_device_add+0x19c/0x270
> [   21.601154]  platform_device_register_full+0xdc/0x178
> [   21.601602]  psci_idle_init+0xa0/0xc8
> [   21.601934]  do_one_initcall+0x60/0x290
> [   21.602275]  kernel_init_freeable+0x20c/0x3e0
> [   21.602664]  kernel_init+0x2c/0x1f8
> [   21.602979]  ret_from_fork+0x10/0x20
> 
> This is a temporary workaround to at least have the SBC boot. There are
> a few more SBCs that _might_ have this issue. I suspect that the
> rock-5a and nanopc-t6 might also have this issue but I do not own either
> board to verify this claim, yet.
> 
> Closes: https://lore.kernel.org/regressions/28S1EMw5YOnQIBpQ8_qaZZ6c9Go-j6-lLuWWbRpe6-MtRUd7Ay-uXq8JHbVVtJv3LzpxjI8jYg7ukNntbN22PVV-hOWbuTY8FNWgvM4zSwI=@thefossguy.com/T/#m69eedea6fbcb0591d54a9ccd478c2782ef045547
> 
> Signed-off-by: Pratham Patel <prathampatel@thefossguy.com>
> ---
>  .../boot/dts/rockchip/rk3588-rock-5b.dts      | 110 +++++++++---------
>  1 file changed, 57 insertions(+), 53 deletions(-)
> 
> diff --git a/arch/arm64/boot/d
> ts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> index 1fe8b2a0e..6d3b9f52c 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> @@ -20,22 +20,24 @@ chosen {
>  		stdout-path = "serial2:1500000n8";
>  	};
>  
> -	analog-sound {
> -		compatible = "audio-graph-card";
> -		label = "rk3588-es8316";
> -
> -		widgets = "Microphone", "Mic Jack",
> -			  "Headphone", "Headphones";
> -
> -		routing = "MIC2", "Mic Jack",
> -			  "Headphones", "HPOL",
> -			  "Headphones", "HPOR";
> -
> -		dais = <&i2s0_8ch_p0>;
> -		hp-det-gpio = <&gpio1 RK_PD5 GPIO_ACTIVE_HIGH>;
> -		pinctrl-names = "default";
> -		pinctrl-0 = <&hp_detect>;
> -	};
> +	/*
> +	 *analog-sound {
> +	 *	compatible = "audio-graph-card";
> +	 *	label = "rk3588-es8316";

Do not comment out code. Instead disable the nodes and provide
appropriate comment describing reason.

Anyway, this does not look like correct solution. DTS is independent of
OS, so bug in fwlink does not matter for DTS. Either DTS is a correct
hardware representation or not.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

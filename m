Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CCA8C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Dec 2023 16:07:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D+DGMo7T8LGzW+H3eypHGEjs7T18wcmBTx5aroQGHhU=; b=3ghAJA18IYceHU
	o8i7pxtNVLqNj59VdNb2MkYo28CFzueLd2Hf/wYTAfsqA7Wq+DNyAvYAvH3+3uTzspYJ1Sb85kB3n
	yHun39hSXv0wY9ewKjSbPOvAG4wcZmMUy6TbEW7oGVopQBVfHPu/ICH5d8ITHxSdWVgBXdMDLwtnF
	97hyFeP7rzpTaXsETuY+SfA5HPNmcqI7U/1GC0cDIUIlH68S4oBpuSv6l2HOPQZ2zhB+Aky/V3DWL
	lU7rCSw5gwXa035RdB7Dv9k5SKzYntZn6GMsiCbqH1RROQEOj576IZPD2i9HJkYZY4LAUc+UymyqV
	aoHIIG3RPBtf/l4JZUUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDoFK-000l6m-2x;
	Thu, 14 Dec 2023 16:07:34 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDoFH-000l5h-36
	for linux-rockchip@lists.infradead.org;
	Thu, 14 Dec 2023 16:07:33 +0000
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-55202565d48so2015068a12.0
        for <linux-rockchip@lists.infradead.org>; Thu, 14 Dec 2023 08:07:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702570050; x=1703174850; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wCm7hm2Q32RWzxlkJWAENcxDAOzqYtnHB2jwyu8n2FI=;
        b=nfu1T7p1z71jmSzNFILhsbm2UhKS6ZoFkGA44a8SqCPew34T0qOS2+DFdDC3oSi//s
         MIiwx4UVCwVNDfoXUvsNGdG7xwZbPYWPHEjmrs1rxLoJlQs6S1NGvKB9FPNuRzcbG0Xr
         kXQWPmHhN2d3OgQSRtmXVq1B8u5eLVVyNwXJIgti0/CBwe6EWcAXk/oP81njE36k98wy
         pORbcM0P+PNNJWlAkwZlEyb3Y5PEhAY5PfuGLsxPMzhQcdd9VZ7bBPloCnW0N0QY1oAr
         t5xmo9WvNzdTFUtBfXZ0K7Fqoqp5pzSq2UDfO6QSYLDpcjxw/twQwFEPg7QuKCx0p7OP
         U+RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702570050; x=1703174850;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wCm7hm2Q32RWzxlkJWAENcxDAOzqYtnHB2jwyu8n2FI=;
        b=kKIIGIjvYMoXsFimp00fFzH6QH4KzwnjWC4bj5D7JIJNftJA8+qnxrZLHyX5KTBuKM
         5BZnJUQ1d2FpA2Ez2MJDPgS//LE+Kp0oSskS/PLJtrYK2Nb346Z83hcx7LgQYp6/eqqy
         v9qHOMBMj3mJWoz/n9dH027GxhYCQNrmfh57XVLdTmaf+5z6L4zLq7Bx0Q8HL3+aEtk/
         dQupqFy54Sc3wtpBNnPRbSmLlpnebzbq3HgkCH0ePoIWnE1QIyyWnICG9JzAyzI8IPIm
         L/KFbaXZyZrh14LP8j5LiwBnOBruZ6NqcmF5kSz7S1bzgsGf0waNkGEUj4Rekd0p5X8H
         4izQ==
X-Gm-Message-State: AOJu0Yx8thmfZbgk7mBm+DlAHqowGfxCb0JqYXOOPQ2tcig1dUMWvZzI
	nxoGCwRnw2XD7lSPsTug2xYUdQ==
X-Google-Smtp-Source: AGHT+IFIV8hHhs6BCYx/j/vneSUxeIC9+OrWm+pf+Q9EE92p6Ls2acv5BezkB8jCS4UoaeEobNeifQ==
X-Received: by 2002:a50:d785:0:b0:551:49af:b362 with SMTP id w5-20020a50d785000000b0055149afb362mr2636354edi.78.1702570049932;
        Thu, 14 Dec 2023 08:07:29 -0800 (PST)
Received: from [192.168.1.20] ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id a4-20020a509e84000000b0054ccc3b2109sm7126498edf.57.2023.12.14.08.07.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Dec 2023 08:07:29 -0800 (PST)
Message-ID: <df84a0cc-cb38-431f-864b-012ada7bb0d5@linaro.org>
Date: Thu, 14 Dec 2023 17:07:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 01/11] dt-bindings: display: rockchip,inno-hdmi: Document
 RK3128 compatible
Content-Language: en-US
To: Alex Bee <knaerzche@gmail.com>, Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, Andy Yan
 <andyshrk@163.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>
Cc: David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20231213195125.212923-1-knaerzche@gmail.com>
 <20231213195125.212923-2-knaerzche@gmail.com>
 <c4e394c6-c21f-4102-8c3a-f9530c0ca547@linaro.org>
 <288857ab-bebd-4f80-9cdc-9b04fa6c7386@gmail.com>
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
In-Reply-To: <288857ab-bebd-4f80-9cdc-9b04fa6c7386@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231214_080732_013275_CB6FFC80 
X-CRM114-Status: GOOD (  16.96  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMTQvMTIvMjAyMyAxNjoyMiwgQWxleCBCZWUgd3JvdGU6Cj4gCj4gQW0gMTQuMTIuMjMgdW0g
MDg6NTMgc2NocmllYiBLcnp5c3p0b2YgS296bG93c2tpOgo+PiBPbiAxMy8xMi8yMDIzIDIwOjUx
LCBBbGV4IEJlZSB3cm90ZToKPj4+IERvY3VtZW50IHRoZSBjb21wYXRpYmxlIGZvciBSSzMxMjgn
cyBIRE1JIGNvbnRyb2xsZXIgYmxvY2suCj4+PiBUaGUgaW50ZWdyYXRpb24gZm9yIHRoaXMgU29D
IGlzIHNvbWV3aGF0IGRpZmZlcmVudCBoZXJlOiBJdCBuZWVkcyB0aGUgUEhZJ3MKPj4gUGxlYXNl
IHdyYXAgY29tbWl0IG1lc3NhZ2UgYWNjb3JkaW5nIHRvIExpbnV4IGNvZGluZyBzdHlsZSAvIHN1
Ym1pc3Npb24KPj4gcHJvY2VzcyAobmVpdGhlciB0b28gZWFybHkgbm9yIG92ZXIgdGhlIGxpbWl0
KToKPj4gaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5jb20vbGludXgvdjYuNC1yYzEvc291cmNlL0Rv
Y3VtZW50YXRpb24vcHJvY2Vzcy9zdWJtaXR0aW5nLXBhdGNoZXMucnN0I0w1OTcKPiBPSy4gTm90
IHN1cmUgd2h5IGNoZWNrcGF0Y2ggLS1zdHJpY3TCoCBkaWRuJ3QgdGVsbCBtZSB0aGF0IEknbSBv
dmVyIHRoZSAKPiBsaW1pdCBoZXJlLgo+Pgo+Pj4gcmVmZXJlbmNlIGNsb2NrIHJhdGUgdG8gY2Fs
Y3VsYXRlIHRoZSBkZGMgYnVzIGZyZXF1ZW5jeSBjb3JyZWN0bHkuIFRoaXMKPj4+IGNsb2NrIGlz
IHBhcnQgb2YgYSBwb3dlci1kb21haW4gKFBEX1ZJTyksIHNvIHRoaXMgZ2V0cyBhZGRlZCBhcyBh
biBvcHRpb25hbAo+Pj4gcHJvcGVydHkgdG9vLgo+PiBJZiBjbG9jayBpcyBwYXJ0IG9mIHBvd2Vy
IGRvbWFpbiwgdGhlbiB0aGUgcG93ZXIgZG9tYWluIG11c3QgYmUgaW4gdGhlCj4+IGNsb2NrIGNv
bnRyb2xsZXIsIG5vdCBoZXJlLiBTbyBlaXRoZXIgeW91IHB1dCBwb3dlciBkb21haW4gaW4gd3Jv
bmcKPj4gcGxhY2Ugb3IgeW91IHVzZWQgaW5jb3JyZWN0IHJlYXNvbiBmb3IgYSBjaGFuZ2UuCj4g
IMKgUm9ja2NoaXAgZGVmaW5lcyBpdCdzIHBvd2VyZG9tYWlucyBwZXIgY2xvY2sgYW5kIEkgd2Fz
IGxpdHRsZSB0byBtdWNoIAo+IGluIHRoYXQgd29ybGQgd2hlbiB3cml0aW5nIHRoaXMuIEFjdHVh
bGx5IHRoZSBjb250cm9sbGVyIGl0c2VsZiBpcyBwYXJ0IAo+IG9mIHRoZSBwb3dlcmRvbWFpbi4g
V2lsbCByZXBocmFzZS4KCkRvZXMgaXQgbWVhbiB5b3UgaGF2ZSBsaWtlIDIwMCBkaWZmZXJlbnQg
cG93ZXIgZG9tYWlucyBpbiBvbmUgU29DPyBUaGVuCmhvdyBhcmUgdGhleSBkaWZmZXJlbnQgdGhh
biBjbG9jayBpZiB0aGVyZSBpcyBvbmUtdG8tb25lIG1hcHBpbmc/Cgo+Pj4gU2lnbmVkLW9mZi1i
eTogQWxleCBCZWUgPGtuYWVyemNoZUBnbWFpbC5jb20+Cj4+PiAtLS0KPj4+ICAgLi4uL2Rpc3Bs
YXkvcm9ja2NoaXAvcm9ja2NoaXAsaW5uby1oZG1pLnlhbWwgIHwgMzAgKysrKysrKysrKysrKysr
KystLQo+Pj4gICAxIGZpbGUgY2hhbmdlZCwgMjggaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMo
LSkKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L2Rpc3BsYXkvcm9ja2NoaXAvcm9ja2NoaXAsaW5uby1oZG1pLnlhbWwgYi9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9yb2NrY2hpcC9yb2NrY2hpcCxpbm5vLWhkbWku
eWFtbAo+Pj4gaW5kZXggOTY4ODljODY4NDlhLi45ZjAwYWJjYmZiMzggMTAwNjQ0Cj4+PiAtLS0g
YS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9yb2NrY2hpcC9yb2Nr
Y2hpcCxpbm5vLWhkbWkueWFtbAo+Pj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL2Rpc3BsYXkvcm9ja2NoaXAvcm9ja2NoaXAsaW5uby1oZG1pLnlhbWwKPj4+IEBAIC0x
NCw2ICsxNCw3IEBAIHByb3BlcnRpZXM6Cj4+PiAgICAgY29tcGF0aWJsZToKPj4+ICAgICAgIGVu
dW06Cj4+PiAgICAgICAgIC0gcm9ja2NoaXAscmszMDM2LWlubm8taGRtaQo+Pj4gKyAgICAgIC0g
cm9ja2NoaXAscmszMTI4LWlubm8taGRtaQo+Pj4gICAKPj4+ICAgICByZWc6Cj4+PiAgICAgICBt
YXhJdGVtczogMQo+Pj4gQEAgLTIyLDEwICsyMywyMSBAQCBwcm9wZXJ0aWVzOgo+Pj4gICAgICAg
bWF4SXRlbXM6IDEKPj4+ICAgCj4+PiAgICAgY2xvY2tzOgo+Pj4gLSAgICBtYXhJdGVtczogMQo+
Pj4gKyAgICBtaW5JdGVtczogMQo+Pj4gKyAgICBpdGVtczoKPj4+ICsgICAgICAtIGRlc2NyaXB0
aW9uOiBUaGUgSERNSSBjb250cm9sbGVyIG1haW4gY2xvY2sKPj4+ICsgICAgICAtIGRlc2NyaXB0
aW9uOiBUaGUgSERNSSBQSFkgcmVmZXJlbmNlIGNsb2NrCj4+PiAgIAo+Pj4gICAgIGNsb2NrLW5h
bWVzOgo+Pj4gLSAgICBjb25zdDogcGNsawo+Pj4gKyAgICBtaW5JdGVtczogMQo+Pj4gKyAgICBp
dGVtczoKPj4+ICsgICAgICAtIGNvbnN0OiBwY2xrCj4+PiArICAgICAgLSBlbnVtOgo+Pj4gKyAg
ICAgICAgICAtIHBjbGsKPj4+ICsgICAgICAgICAgLSByZWYKPj4gVGhhdCdzIHdheSBvdmVyY29t
cGxpY2F0ZWQuIEp1c3QgaXRlbXMgbGlzdGluZyB0aGUgbmFtZXMgYW5kIG1pbkl0ZW1zOgo+PiAx
LiBTZWUgb3RoZXIgYmluZGluZ3MgaG93IHRoaXMgaXMgZG9uZS4KPiBPSy4KPj4+ICsKPj4+ICsg
IHBvd2VyLWRvbWFpbnM6Cj4+PiArICAgIG1heEl0ZW1zOiAxCj4+IElzIGl0IHJlbGV2YW50IHRv
IGV4aXN0aW5nIGRldmljZT8KPiAKPiBXaWxsIG1vdmUgdG8gbmV3IHZhcmlhbnQgb25seS4KPiAK
CkRlZmluaXRpb24gc2hvdWxkIGJlIGhlcmUsIGJ1dCBpbiBpZjp0aGVuOiBpdCBzaG91bGQgYmUg
ZGlzYWxsb3dlZAooOmZhbHNlKSBmb3Igb3RoZXIgdmFyaWFudHMuCgpCZXN0IHJlZ2FyZHMsCkty
enlzenRvZgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK

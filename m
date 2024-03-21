Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 394BCC54E68
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Mar 2024 08:14:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0G7q8ONRgEPH3cL5PAfD6fs41mXBDy0qaRvQIMqzHHE=; b=Rc6s0iRM22Yoz7
	eWiPB7onAaz2pdykOtHtp0GgCXQZc5RZWOerllkIuGMGqs/yqMDVUAxdducM3F64hc9+4s4r0Dsct
	VzanqAUW40iI8hq7kfj8zL2RXkytN5kjhDsf5bGZuroXYvozk16xOyRcU/ZMAyjiZYqr1rX0FlMFG
	muB5X68ycCqhdcBg4gEM3HEZ4oVuHwqn8QiV8FoXtab6OYtEwShHVqyL+wNJVL2roOu0E40Nv6n0B
	Ho/Xgruo8yMtrjc/tJWUiQmFMdTvify9Tr4p9dTrc/0S1uZNvgbIw0gjBUnE1PKTU+qbP7Fd9L1wB
	K1wRr/O2E4Loa8d7CmDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnDZE-00000002GUx-1gJb;
	Thu, 21 Mar 2024 08:14:28 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rnDZA-00000002GSv-3ptq
	for linux-rockchip@lists.infradead.org;
	Thu, 21 Mar 2024 08:14:26 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-a46f60cc80aso86787666b.0
        for <linux-rockchip@lists.infradead.org>; Thu, 21 Mar 2024 01:14:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711008857; x=1711613657; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=NCOmmYreo3TqSmNJZGfyOp9uKTfz511Rez39xvtR9Uc=;
        b=rDRFbMH3ofjGv7AijHUvfKvvx6S7Nfhxn+ISOJUi7zjbvYSCkGvyQ48RWonxgRD9vh
         jjUw+70RB0Hq8b0joMwRsaBYGv/OW28WspX5sQFpjS6moIUliRnduBPhygoyc7Sqil+9
         0fJoUKxN/RbY7m1ufocPcWVfbSnt36l4z3vf5mH0KRwb4d7Xz5KwoyeHWbkmoRBumVHH
         iJud+bCFTcIsjUJ4Jl/Fbu1ON6l4UspI+dV9bxr31Ubds6ThY4VMgpw2TPuQ7lTjk18u
         rV6JkDbajtJAUbiOytxO/y2xyZySNpEBHgAN64MgILHmB0+kO60kCtrNDJrlzPIJyB+p
         ZDQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711008857; x=1711613657;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NCOmmYreo3TqSmNJZGfyOp9uKTfz511Rez39xvtR9Uc=;
        b=bvC7emMe57GWAMGIDjtAv58uA7DxwUBFJs0eZ/7IzVc0eaJunYx+Z/9ZLv4BDf0zE7
         /3v/TWiylsaS47Z8m7yA8lVSp4L4CXxB8M53sW8cBaK6zyAcUoV6s3p3w5suXAgpu+Pl
         hFS3bhF4OKf2TleGtp+LKLrS+MnkVwbJXkJFqWg4/1f/VE66g+tTnuaMMzqfFU6niLq9
         PHMr0cqgEYktqrVkuNUfUzNRPxJp2gj/eqYFTXbKxO5HZJo/cJGWgShzvWZEFAHE9BI4
         CTEaWZ0pp97ZQZgB4QVggAUC50u5vrZ7AgIDDwBWKbyhxQ+RSMuF+qGOXIKycCwAC1lh
         UyJA==
X-Forwarded-Encrypted: i=1; AJvYcCWnZJ70BVdupoE3gyQ/NXmeCzdhP8GjNQHLsefpVAoctaUN83IQdNN0VzwYeLR9gyI1YYXD1qeTF/l1du+oP5wSwGfPs9tufqNNpSjipC0TkV/d
X-Gm-Message-State: AOJu0YzoUY6Wm9bgSKLhM35cbEIrzUi39R4BRMSR91ePa9/avndeOJlu
	ajbVyYfhDoiDEfDMIL2lRFFvi1fcRsLD+Lj3BrSDHlvPUiJWd851oXknK6mFAHA=
X-Google-Smtp-Source: AGHT+IEnXmwG0cHdNGYlJnnJKe3ix9zq7K84PQN1l6LAvZ3rQkl8g2fkP5DkSOeGZLtbFhZgNY15Sw==
X-Received: by 2002:a17:906:6899:b0:a47:f6a:3673 with SMTP id n25-20020a170906689900b00a470f6a3673mr638500ejr.18.1711008857348;
        Thu, 21 Mar 2024 01:14:17 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id dn21-20020a17090794d500b00a465ee3d2cesm8079853ejc.218.2024.03.21.01.14.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Mar 2024 01:14:16 -0700 (PDT)
Message-ID: <41f1b8a6-1f65-4cb9-9638-d63384b95318@linaro.org>
Date: Thu, 21 Mar 2024 09:14:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] dt-bindings: iommu: rockchip: Fix rk3588 variant
To: Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>, linux-kernel@vger.kernel.org
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Dragan Simic <dsimic@manjaro.org>,
 Shreeya Patel <shreeya.patel@collabora.com>,
 Chris Morgan <macromorgan@hotmail.com>, Andy Yan <andy.yan@rock-chips.com>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 iommu@lists.linux.dev
References: <20240320173736.2720778-1-linkmauve@linkmauve.fr>
 <20240320173736.2720778-2-linkmauve@linkmauve.fr>
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
In-Reply-To: <20240320173736.2720778-2-linkmauve@linkmauve.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240321_011424_972688_40902A95 
X-CRM114-Status: GOOD (  15.12  )
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

T24gMjAvMDMvMjAyNCAxODozNywgRW1tYW51ZWwgR2lsIFBleXJvdCB3cm90ZToKPiBUaGUgZG9j
dW1lbnRhdGlvbiBnb3QgYWRkZWQgaW4gZjhhYTUxOTk3NmIzOGU2N2FhZTAyZDJkYjNlMjk5ODUx
MzMwNWU4MCwKClBsZWFzZSB1c2UgY29tbWl0IFNIQSAoKSBzeW50YXggKHNlZSBzdWJtaXR0aW5n
IHBhdGNoZXMpLgoKPiBidXQgaXQgaGFzbuKAmXQgYmVlbiBhZGRlZCB0byB0aGUgZHJpdmVyIHNv
IGl0IHdhcyB1bnVzZWQuCgpFaD8gVGhhdCdzIG5vdCBob3cgdGhpcyB3b3Jrcy4KCj4gCj4gU2ln
bmVkLW9mZi1ieTogRW1tYW51ZWwgR2lsIFBleXJvdCA8bGlua21hdXZlQGxpbmttYXV2ZS5mcj4K
PiAtLS0KPiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLmR0c2kgfCAyICst
CgpUaGF0J3MgRFRTLCBub3QgYmluZGluZ3MuCgo+ICBkcml2ZXJzL2lvbW11L3JvY2tjaGlwLWlv
bW11LmMgICAgICAgICAgICB8IDMgKysrCgpEcml2ZXIgY29kZSBjYW5ub3QgYmUgY29tYmluZWQg
d2l0aCBEVFMgaW4gb25lIHBhdGNoLgoKPiAgMiBmaWxlcyBjaGFuZ2VkLCA0IGluc2VydGlvbnMo
KyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazM1ODhzLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4
OHMuZHRzaQo+IGluZGV4IDg3YjgzYzg3YmQ1NS4uMmEyM2I0ZGMzNmU0IDEwMDY0NAo+IC0tLSBh
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy5kdHNpCj4gKysrIGIvYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLmR0c2kKPiBAQCAtNzA0LDcgKzcwNCw3IEBA
IHZwMzogcG9ydEAzIHsKPiAgCX07Cj4gIAo+ICAJdm9wX21tdTogaW9tbXVAZmRkOTdlMDAgewo+
IC0JCWNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszNTg4LWlvbW11IiwgInJvY2tjaGlwLHJrMzU2
OC1pb21tdSI7Cj4gKwkJY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazM1ODgtaW9tbXUiOwoKTkFL
LgoKCkJlc3QgcmVnYXJkcywKS3J6eXN6dG9mCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

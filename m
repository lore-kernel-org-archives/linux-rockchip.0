Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4CA6C47258
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Jan 2024 07:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EFoQAUDJ6IqkhH0nKtgwEFNB+XuPXgb4KEfYh7sy8oI=; b=jf2szxa97n2f5h
	rDi/G/Va7F3eUPJgF3JK0oYf5HAIgx/X9v6QNnxeWzCHm0FUbmAndjorbQ6LgRiAKT11oMLwNg0l9
	qZFOX8/kP+PTw3izUnBUL2EwzKFyYYThm3Wtp8JXPXy17KYCQj6xB6SaphAaO2lCY0oRQvlV9+GlI
	mycOVY8OsgstqOcvqIrtkZMRiB6qfiUMaZgL4jbkbdPkEBu4qs39VXmu8d3OcamVkFOK/rX7nNJwK
	ZiVNIdDn2fQfv1fpWKg8CuIlslE2Q/O7CS2hvvn3r78A+V+oepDyW5jKI2zicpp4rm0+y5Qp5GBHS
	+iAKbdnaaG11sgkta4CA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSBM9-00FPhJ-0r;
	Tue, 23 Jan 2024 07:38:01 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSBM7-00FPgg-0F
	for linux-rockchip@lists.infradead.org;
	Tue, 23 Jan 2024 07:38:00 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-40e8d3b29f2so47603825e9.1
        for <linux-rockchip@lists.infradead.org>; Mon, 22 Jan 2024 23:37:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705995477; x=1706600277; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=u+FF5OsJQz/H/Si0+E1+MCz2gWZ2lfyn+V2mF5Wn6F8=;
        b=qC3dl3pJCTTex5ooiMQsRXy3Q3KRaUIOHmTAoZinR86/PTzX0164KXNThu2NEgv9dQ
         jStqF5SvVMXsODKTzLyGe3TOMT/RrtYdaN+Wks+GZO0qwBWps9Y7oeusyA+Kg1YR4n8Q
         g0JZqtrR9IVjrobA2JFrdL+tK1ktXgFQoMtLPsuQqewd4MKg3XJx87KFTYYfa26v2bwM
         PD95CbNRRe8+JkyeMtdL1JFozFTQIrJ+UulijUGZ8E6NXzjiLbxXyKHciOAbNPcx5f8X
         JJh+SmzBLIr4c3tUos6R52ThS8VMYSjZZiduUpRi9RNS/jNzOyGFZVsCdUYpKcqTASpo
         UHHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705995477; x=1706600277;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=u+FF5OsJQz/H/Si0+E1+MCz2gWZ2lfyn+V2mF5Wn6F8=;
        b=nH2z4b3iQb4CP9pODKpx6hdeVKqbTf0/pWzDir86zhgUAg+Fiy8Cf/h8qAdjYtUZPO
         JxyOdXc+iJ8mYjMNNKuRx0sdg7rl/7JYjqDu7W7qu4gl+PjjJjraSuw/MyMiTwxG2rZx
         ndGahtxxvYPKqkzRvLeFoV0q2WLcsLLt0cCt9We6XfknfbaCv1huojQIbxwDGA2o/GRa
         C/xXJtXwDVMvGmVxPpdl5PZmYUfN5f6WOC/PZyBVXR5/zIJXHMRJtOb9oiTKZ6IGe0/P
         ZTPtNrxiESd0QEQuMLrLnf2UGjlc+vhOGDHP/yy/19J1U4hrR7o0gu6+gSl7J/T7Z2f2
         TN4w==
X-Gm-Message-State: AOJu0YzRIG6pDASZ5XU05Onipdo/o2Dz2RpyhecG6B8WA+tVWxoIc5S4
	rwsuxzIVOPW+fyP7LAqGX1B+RTYaFlnxBhdtRbL3AqZnmJueTdh99NRNrAhwCS4=
X-Google-Smtp-Source: AGHT+IHFUWf2APSfGy/S9i3DycmpbSDXp2UlTmYeRaQrQ1u8PqG8UE72vd/tIqrKDgMsfm8+gY9wZw==
X-Received: by 2002:a05:600c:468b:b0:40e:8e2b:3ce8 with SMTP id p11-20020a05600c468b00b0040e8e2b3ce8mr154066wmo.51.1705995476894;
        Mon, 22 Jan 2024 23:37:56 -0800 (PST)
Received: from [192.168.1.20] ([178.197.215.66])
        by smtp.gmail.com with ESMTPSA id bg42-20020a05600c3caa00b0040e3733a32bsm44965380wmb.41.2024.01.22.23.37.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jan 2024 23:37:56 -0800 (PST)
Message-ID: <0b0a4c9f-0549-4566-a900-b1d7de5838d5@linaro.org>
Date: Tue, 23 Jan 2024 08:37:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/3] dt-bindings: rockchip: rk809: Document audio codec
 properties
Content-Language: en-US
To: Tim Lunn <tim@feathertop.org>, linux-rockchip@lists.infradead.org,
 conor.dooley@microchip.com, robh+dt@kernel.org, devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org, Chris Zhong <zyw@rock-chips.com>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Lee Jones <lee@kernel.org>, Zhang Qing <zhangqing@rock-chips.com>,
 linux-kernel@vger.kernel.org
References: <20240120135529.899403-1-tim@feathertop.org>
 <20240120135529.899403-3-tim@feathertop.org>
 <04ccf5f5-1f02-42f9-b1fc-b781c54d7ae9@linaro.org>
 <93d775df-af84-44ff-870e-f720a33ddf34@feathertop.org>
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
In-Reply-To: <93d775df-af84-44ff-870e-f720a33ddf34@feathertop.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240122_233759_113532_0A40106E 
X-CRM114-Status: GOOD (  18.74  )
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

T24gMjMvMDEvMjAyNCAwNToxMCwgVGltIEx1bm4gd3JvdGU6Cj4gCj4gT24gMS8yMi8yNCAxOTox
NCwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPj4gT24gMjAvMDEvMjAyNCAxNDo1NSwgVGlt
IEx1bm4gd3JvdGU6Cj4+PiBSb2NrY2hpcCBSSzgwOSBzaGFyZXMgdGhlIHNhbWUgYXVkaW8gY29k
ZWMgYmxvY2sgYXMgdGhlIHJrODE3IG1mZCwgYW5kCj4+PiBpcyBjb21wYXRpYmxlIHdpdGggdGhl
IGV4aXN0aW5nIHJrODE3X2NvZGVjIGRyaXZlci4KPj4gUGxlYXNlIHVzZSBzdWJqZWN0IHByZWZp
eGVzIG1hdGNoaW5nIHRoZSBzdWJzeXN0ZW0uIFlvdSBjYW4gZ2V0IHRoZW0gZm9yCj4+IGV4YW1w
bGUgd2l0aCBgZ2l0IGxvZyAtLW9uZWxpbmUgLS0gRElSRUNUT1JZX09SX0ZJTEVgIG9uIHRoZSBk
aXJlY3RvcnkKPj4geW91ciBwYXRjaCBpcyB0b3VjaGluZy4KPiBPayBJIHdpbGwgY2hlY2sgdGhp
cy4KPj4KPj4+IFRoaXMgcGF0Y2ggaW50cm9kdWNlcyB0byB0aGUgYmluZGluZyB0aGUgc3RhbmRh
cmQgcHJvcGVydHkgI3NvdW5kLWRhaS1jZWxscwo+Pj4gYW5kIGFsc28gYW4gb3B0aW9uYWwgY29k
ZWMgY2hpbGQgbm9kZSB0byBob2xkIGNvZGVjIHNwZWNpZmljIHByb3BlcnRpZXMuCj4+PiBDdXJy
ZW50bHkgdGhlcmUgaXMgb25seSBvbmUgcHJvcGVydHkgaW4gdGhpcyBub2RlIGhvd2V2ZXIgdGhl
IGRvd25zdHJlYW0KPj4+IGRyaXZlciBzaG93cyBhIG51bWJlciBvZiBvdGhlciBwcm9wZXJ0aWVz
IHRoYXQgYXJlIHN1cHBvcnRlZCBieSB0aGUgY29kZWMKPj4+IGhhcmR3YXJlLCB0aGF0IGNvdWxk
IGJlIGltcGxlbWVudGVkIGluIHRoZSBmdXR1cmUuIFRoaXMgbWFpbnRhaW5zIHRoZQo+Pj4gZXhp
c3RpbmcgZHJpdmVyIEFCSSBhbmQga2VlcHMgY29uc2lzdGVuY3kgd2l0aCB0aGUgcms4MTcgYmlu
ZGluZ3MuCj4+IFNvIHlvdSBhcmUgYWRkaW5nIGEgbmV3IG5vZGU/IEp1c3QgZm9yIG9uZSBwcm9w
ZXJ0eT8gTm8sIGp1c3QgcHV0IGl0Cj4+IGludG8gcGFyZW50IG5vZGUuCj4gVGhlIGV4aXN0aW5n
IHVwc3RyZWFtIGNvZGVjIGRyaXZlciBwYXJzZXMgdGhlIHByb3BlcnR5IGZyb20gdGhlICJjb2Rl
YyIgCj4gc3ViLW5vZGUsIGlmIEkKPiBtb3ZlIGl0IHRvIHRoZSBwYXJlbnQgbm9kZSBoZXJlLCBJ
IHdpbGwgbmVlZCB0byBwYXRjaCB0aGUgY29kZWMgZHJpdmVyIAo+IHRvIHNlYXJjaCBpbiBib3Ro
IGxvY2F0aW9ucywKPiBzbyBhcyB0byBub3QgYnJlYWsgdGhlIHJrODE3IGJpbmRpbmdzLsKgIElm
IHRoYXQgaXMgcHJlZmVycmVkLCBJIGNhbiBkbyAKPiBpdCB0aGF0IHdheS4KCllvdXIgbG9uZyBj
b21taXQgbXNnIGhhcyBqdXN0IHZlcnkgc2hvcnQgbWVudGlvbiBhYm91dCBleGlzdGluZyBkcml2
ZXIKYW5kIHRoZSByZXN0IGlzIG5vdCBoZWxwZnVsLiBQbGVhc2UgcmVwaHJhc2UgdG8gZXhwbGFp
biB3aHkgYW5kIHdoYXQgeW91CmFyZSBkb2luZyBpdC4KCj4+Cj4+IERvd25zdHJlYW0gZHJpdmVy
IGRvZXMgbm90IG1hdHRlciBhdCBhbGwgaW4gdGhhdCBhc3BlY3QuCj4+Cj4gVGhlIGNvZGVjIGhh
cmR3YXJlIHN1cHBvcnRzIGFkZGl0aW9uYWwgcHJvcGVydGllcyBidXQgdGhleSBhcmUgbm90IAo+
IGltcGxlbWVudGVkIGN1cnJlbnRseSBpbgo+IHVwc3RyZWFtIGRyaXZlci4KCgpBZ2FpbjogaXQg
ZG9lcyBub3QgbWF0dGVyLiBCaW5kaW5ncyBhcmUgbm90IGFib3V0IGRyaXZlcnMuCgpCZXN0IHJl
Z2FyZHMsCktyenlzenRvZgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK

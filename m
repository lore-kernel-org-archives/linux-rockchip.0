Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21EBFC4167B
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Dec 2023 09:59:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=45h8wbZZWnU8TfEdN0xBh5ll3esInGT7heseK+B/sHw=; b=bKCOiAfDDekp4B
	5u8l9QDWyvmVSR00K1I+96uuv0C+GcHtcUtygvNvisZspCbf84wScHSYjybVlBNxKMZ5rr+mEoy6a
	WiGQKbesf/IMPEfmATOs6M2Qi7gIebv9AaN3zXcb9bZG9LTOl8G2NfgEaLVs7XcIdhuoUe3Qmfmbb
	rH2GW7UsocZIWDqgPiwJ3odYY1ZKoWZFVbAqpqNe9J/3QKkh2rFs4b1UjM+I/qPtQAeeyFCdvNhPA
	LSdtbMNRUJsdQVt7u+FSfSamiomNBghcRXB2XMty5xzZBhXOeNI952DECUxSImE//wh/17QZN7x1H
	l2n4O2I/KAyr5IUmpgPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rCd4F-004XRK-1d;
	Mon, 11 Dec 2023 09:59:15 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rCd45-004XOa-0F
	for linux-rockchip@lists.infradead.org;
	Mon, 11 Dec 2023 09:59:12 +0000
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-3334a701cbbso4439600f8f.0
        for <linux-rockchip@lists.infradead.org>; Mon, 11 Dec 2023 01:59:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702288742; x=1702893542; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=+8ZYGpDqXB7DKk7WEUaqFLKAG8Tztk8Kini09NyiSQw=;
        b=biacRSnKgW2LYVVgQY+9jGfFbpcaNV78I0gD1+Sc1X1iqHC/Pf2hZiR3thGQ4TFBTH
         FP+K/Y6yc+pZjAyrW+oa/aYCkt2ytYH6rs3i70roVudUtpPrudTisaVxLJz7DbxF3d+l
         3XXRBLhoI3EuBtWKs5dDRVYT25jI7r6pR2M5O7naXeep8rm7jIWcjS9Quwq9GxJZhlLe
         mQxiu5XnavTcKpICQguifxLyyXBF1IJXD08IoA5xOIgTlKBrvYsB3tmsPdzU3Jmnl0n9
         Z8Jh74sxl0qd2YrvAbVRJMqodI/KDCoYwEyAKu4nqR0nNwflveKNyrbWRwMt0HHpbCWJ
         Diyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702288742; x=1702893542;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+8ZYGpDqXB7DKk7WEUaqFLKAG8Tztk8Kini09NyiSQw=;
        b=ohEJS/bja2igo1H62U+poUEd4pshkBdKfIQS7tKBgJP/C85PzOKeaOTUr4VSA60Dp3
         OvwnTc+NHoZFYtF/tD9ptMLzONSjZ+sVz8FgjxIgQUybOrr9WM7GabAFqJtSbkjAIcmA
         YpQe8xJIufk1y8Xq6LG1ifhrGNTn2+5bbmKBRG6o0JvhV78RztdU8aBZ2bvwmwQOIlbK
         jjlnn0Iwv7grjX3e2H432sDgEcE5Lhq9LlfRyxrJDA0sJlfOD9Bz5q2IM0auqXBVaJKQ
         LeiRPyJ4nlA1AHBJOgKU1Fvl42jMOqrZrDKNMQ/8phr8sDbp0MxjoDvpboqX8Ek29j4w
         cyXQ==
X-Gm-Message-State: AOJu0YxnmZB3/xHgLoFcStVrP3sr3epA+JHNklDcM66AugvNh1lT4qCd
	S51aaS53DkQRq2biIi2WPWJaEg==
X-Google-Smtp-Source: AGHT+IH0EDdrIWl1aQW1z4Yjlt3s2DKMEUoxlEu8XgspXqBEWQPoRn+4E7spd9DDtbuNjgEnAgCdnQ==
X-Received: by 2002:a05:6000:1b06:b0:334:b160:7e00 with SMTP id f6-20020a0560001b0600b00334b1607e00mr1483847wrz.151.1702288741937;
        Mon, 11 Dec 2023 01:59:01 -0800 (PST)
Received: from [192.168.1.20] ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id g12-20020adfa48c000000b003335eded7f5sm8206605wrb.68.2023.12.11.01.59.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Dec 2023 01:59:01 -0800 (PST)
Message-ID: <f61a9382-a2b9-44a8-a33e-4c4f8d6cae50@linaro.org>
Date: Mon, 11 Dec 2023 10:58:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/5] arm64: dts: rockchip: Add support for rk3588 based
 board Cool Pi CM5 EVB
To: Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
References: <20231210080313.1667013-1-andyshrk@163.com>
 <20231210080629.1667589-1-andyshrk@163.com>
 <2b58450a-1bde-424b-ab69-a3834914522c@linaro.org>
 <14ab4c8c.4fa1.18c58488bf2.Coremail.andyshrk@163.com>
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
In-Reply-To: <14ab4c8c.4fa1.18c58488bf2.Coremail.andyshrk@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231211_015905_236234_034174D8 
X-CRM114-Status: GOOD (  11.03  )
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

T24gMTEvMTIvMjAyMyAxMDo0OSwgQW5keSBZYW4gd3JvdGU6Cj4+PiArCj4+PiArCWJhY2tsaWdo
dDogYmFja2xpZ2h0IHsKPj4+ICsJCWNvbXBhdGlibGUgPSAicHdtLWJhY2tsaWdodCI7Cj4+PiAr
CQlwb3dlci1zdXBwbHkgPSA8JnZjYzEydl9kY2luPjsKPj4+ICsJCXB3bXMgPSA8JnB3bTIgMCAy
NTAwMCAwPjsKPj4+ICsJCWVuYWJsZS1ncGlvcyA9IDwmZ3BpbzQgUktfUEEzIEdQSU9fQUNUSVZF
X0hJR0g+Owo+Pj4gKwkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPj4+ICsJCXBpbmN0cmwt
MCA9IDwmYmxfZW4+Owo+Pj4gKwkJc3RhdHVzID0gIm9rYXkiOwo+Pgo+PiBUaGlzIGlzIGEgZnJp
ZW5kbHkgcmVtaW5kZXIgZHVyaW5nIHRoZSByZXZpZXcgcHJvY2Vzcy4KPj4KPj4gSXQgc2VlbXMg
bXkgb3Igb3RoZXIgcmV2aWV3ZXIncyBwcmV2aW91cyBjb21tZW50cyB3ZXJlIG5vdCBmdWxseQo+
PiBhZGRyZXNzZWQuIE1heWJlIHRoZSBmZWVkYmFjayBnb3QgbG9zdCBiZXR3ZWVuIHRoZSBxdW90
ZXMsIG1heWJlIHlvdQo+PiBqdXN0IGZvcmdvdCB0byBhcHBseSBpdC4gUGxlYXNlIGdvIGJhY2sg
dG8gdGhlIHByZXZpb3VzIGRpc2N1c3Npb24gYW5kCj4+IGVpdGhlciBpbXBsZW1lbnQgYWxsIHJl
cXVlc3RlZCBjaGFuZ2VzIG9yIGtlZXAgZGlzY3Vzc2luZyB0aGVtLgo+IAo+IFllc++8jCBpdCBz
ZWVtcyB0aGF0IHRoZSBjb21tZW50cyB3ZXJlIGxvc3TvvIwgSSBkaWRuJ3QgZ2V0IGFueSBjb21t
ZW50cyBhYm91dCBQQVRDSCA1IGluIG15IFYxLgo+IEFueXdheSwgSSB3aWxsIGNoZWNrIHRoaXMg
cGF0Y2ggYWdhaW4sIGFuZCBmaXggdGhlIGlzc3VlIEkgZmluZCBieSBteXNlbGYuCgpJIGRvbid0
IGhhdmUgdG8gcmVwZWF0IHRoZSBzYW1lIGNvbW1lbnQgZm9yIGV2ZXJ5IHNhbWUgdGhpbmcgdG8g
Zml4LgpJdCdzIHlvdXIgdGFzayB0byBmaXggYWxsIG9jY3VycmVuY2VzIG9mIHRoZSBzYW1lIGlz
c3VlLgoKQmVzdCByZWdhcmRzLApLcnp5c3p0b2YKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

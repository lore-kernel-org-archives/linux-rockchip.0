Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BAA0CDB483
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Oct 2023 10:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4QEWIWRK1asnLTZgj1hk2Ued+aChHHGI4s6cqr+NEGc=; b=hRsAS85lk+R+WU
	lFjGqMAY0J8BLFNakcvNrNt4cZBSnVATYIz1dkKcwVo2P8ZEH4ygICnx+eI86e1Y9HDJQLCzFgDzf
	7GKswWhJ7R4RD8PTE1mjn9fbpyzj8jeQiARFjJXd/BtLbiryEgEB3L2KNfztIBQ/o43E3/Uxu40Dm
	g7FqCnsa1L/x3NwE/3LMRyNB2xFZKvFZclO98ok+Ok2Mdy2yGHMZaCL+PuwhKlmMotc+xUz5NDMhr
	6TM5h+K9oGoRea4cB/ultsnWwXLBbkX15uFkuWQLZSaiIzxjSyaUEBtUYCNu0pdHiMGr/iEsxYU8G
	ihUG/Xyw8h+FGAzolQDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qtQIc-00GxDB-1T;
	Thu, 19 Oct 2023 10:30:42 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qtQIY-00GxA0-2u
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Oct 2023 10:30:41 +0000
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-99de884ad25so1256262166b.3
        for <linux-rockchip@lists.infradead.org>; Thu, 19 Oct 2023 03:30:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697711435; x=1698316235; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0B+b7JLUwcMhw4p875zbvWn8QWUDGtzTdAXnCZAVGIA=;
        b=swAb1H1wtYsM+KeKAADPvyIwZ3LuV9z0tcCxigkYW4s74rBLTAlXWd2loWCE/D6fgg
         z9Yj+6jhXI5knD23wcovhnHJd8tE816fLwWUBfuc7RHjFjDXt6MPa0LyaX3yDN5BGpV5
         mU2kXnOQhKDYutp8CaEXt1/NroUN1U+/bDadGTD0y/yBm+YBIoL3NbdXVlwvTFZX00kf
         79ZXibsRQh2ZQmTKaQE7hjOVbLPRmvknIV4pRryOsS0VFHPMmyPN23Ex0ceqy8yL9102
         XEWfw3iuCBG22/5FZ1KKK/rn0YI/A/7zM0r8EOx97YTMo84cwyPsWpBBaOAZjgRdSvcb
         9sKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697711435; x=1698316235;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0B+b7JLUwcMhw4p875zbvWn8QWUDGtzTdAXnCZAVGIA=;
        b=FXbtoO8iZZ71caapPLB4J8hiQ6DhrmcO2Af1KNgsa7tyQIMk3m79TjilAl41vHzc2G
         3eCLzpNYDsyXyBKgC2LrBZnJfwMTo3BpcIEkziq1WoVIV3XGJHdM3ku728z55NvVErkZ
         jHx5HMv2BXVpF2Nauvr5/JyC4EHNcjk3aTaW+ivi2ZWd86OczmOL7BbcyMfpEGPoQanH
         46gO+Fq9nkIZV/m1seEdGH1VYPl7uqmtiAuqnHNmiiYLM6Zsb+ALr5gLHWlGSz1PGppH
         bpRGajcC26BtB/VcowpmDiPTRXS2lPAvrlq/fjqorMMwCu58CGGz5pTp8Vq41fElbejC
         wKlA==
X-Gm-Message-State: AOJu0YyZ7o5yQDKub3LyP7aZCuvzP2VLTtTHfgVrrkkeoLV2CHN/jk7j
	K/ZLOSGAkoJ4XQYISDCT69FTjg==
X-Google-Smtp-Source: AGHT+IFxBNvjmap4pUMVnzgwvHkhOaHIVEW26TJzsF3p/7lviXWQonS1LgleLQn/pnBC2fXiKlvnMg==
X-Received: by 2002:a17:906:c115:b0:9a5:c54f:da1c with SMTP id do21-20020a170906c11500b009a5c54fda1cmr1464907ejc.47.1697711435031;
        Thu, 19 Oct 2023 03:30:35 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id y26-20020a170906519a00b00993a37aebc5sm3217821ejk.50.2023.10.19.03.30.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Oct 2023 03:30:33 -0700 (PDT)
Message-ID: <a7b6115e-9490-47cf-8054-ac616dea62fd@linaro.org>
Date: Thu, 19 Oct 2023 12:30:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/4] dt-bindings: mfd: rk8xx: Deprecate
 rockchip,system-power-controller
Content-Language: en-US
To: Lee Jones <lee@kernel.org>, =?UTF-8?Q?Ond=C5=99ej_Jirman?= <megi@xff.cz>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20231010174138.1888396-1-megi@xff.cz>
 <20231010174138.1888396-2-megi@xff.cz> <20231019102945.GA2424087@google.com>
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
In-Reply-To: <20231019102945.GA2424087@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231019_033038_991968_1BA75BB4 
X-CRM114-Status: GOOD (  12.53  )
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

T24gMTkvMTAvMjAyMyAxMjoyOSwgTGVlIEpvbmVzIHdyb3RlOgo+IE9uIFR1ZSwgMTAgT2N0IDIw
MjMsIE9uZMWZZWogSmlybWFuIHdyb3RlOgo+IAo+PiBGcm9tOiBPbmRyZWogSmlybWFuIDxtZWdp
QHhmZi5jej4KPj4KPj4gRGVwcmVjYXRlIHN1cHBvcnQgZm9yIHRoaXMgcHJvcGVydHkgaW4gZmF2
b3Igb2Ygc3RhbmRhcmQKPj4gc3lzdGVtLXBvd2VyLWNvbnRyb2xsZXIgb25lLgo+Pgo+PiBTaWdu
ZWQtb2ZmLWJ5OiBPbmRyZWogSmlybWFuIDxtZWdpQHhmZi5jej4KPj4gLS0tCj4+ICBEb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWZkL3JvY2tjaGlwLHJrODA1LnlhbWwgfCAzICsr
Kwo+PiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9yb2NrY2hpcCxyazgw
OC55YW1sIHwgMyArKysKPj4gIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQv
cm9ja2NoaXAscms4MDkueWFtbCB8IDMgKysrCj4+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvbWZkL3JvY2tjaGlwLHJrODE3LnlhbWwgfCAzICsrKwo+PiAgRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9yb2NrY2hpcCxyazgxOC55YW1sIHwgMyArKysKPj4g
IDUgZmlsZXMgY2hhbmdlZCwgMTUgaW5zZXJ0aW9ucygrKQo+IAo+IEkgZG9uJ3Qgc2VlIGFueXRo
aW5nIHdyb25nIHdpdGggaXQuCj4gCj4gSXQgd291bGQgYmUgbmljZSB0byBoYXZlIGEgRFQgQWNr
IHRob3VnaC4KClJvYiBnYXZlIHJldmlldyBvbiAxMnRoIE9jdC4KCkJlc3QgcmVnYXJkcywKS3J6
eXN6dG9mCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=

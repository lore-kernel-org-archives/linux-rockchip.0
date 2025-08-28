Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A2C3C8303F
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Aug 2025 17:27:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yvIFdfZVAKq6O813DHY7frQqb//UcC1DdtCiKE9FpaY=; b=M0fAzwX2sCNkSe
	DlIVJuuzL7gopZxkq4Khu8evVfTf9UQ3AMyzM1UtlT7zVTtJ8ptRg2Kg4PHQvprzEQcDJ/nXur92a
	ZLvYV7fJKNj3i9Cz1YBrwGZ+Tj7QoARAP4Um6jojRFGn3izD/2XRacbxKV4DHUbZtV4iVT43ixsKJ
	Mf9OJymR4N8tTAutkj8XZNRD1Fj0SKrCs/GjXNPhmLL7RbDmjqw94k1nbhLherEGQcRfl9K/FtYZx
	r2a0nRu3whG/8sjiYao+MR9u5/Xy6VvgP9JDIVMgXTB+jVyG1QlysTscYkQ/e6yojlFisGB9U47XF
	0jgalwrDfppbY2aIJrvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urgPi-00000002V9o-1Hw9;
	Thu, 28 Aug 2025 17:27:54 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urdJ5-00000001rAo-3jDC
	for linux-rockchip@lists.infradead.org;
	Thu, 28 Aug 2025 14:08:53 +0000
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-afcb7ae6ed0so137538166b.3
        for <linux-rockchip@lists.infradead.org>; Thu, 28 Aug 2025 07:08:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756390130; x=1756994930; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Y/I5abWNDNo4EBfij41U+MSxFH8HWMmL5CHi8kMoycQ=;
        b=a4NN5jtNNcTM+WpwGh7XqhJWwaZb39X7RB+9kGYIbqNp+qGFQhZjvEr1UHBglRErnr
         JIjB8pBHHMqDGwREoZsc0MLaXgK9cqHA1WHX38SMUw3ZJ/4xBrkBNka4ASK+N5wQ9Tu8
         Obs0KYbaYvOTpuTUT2ygxZqyqHFuuYeHuz9tz3J4KMSvCPK/XZz5VZd8KqKM65lHi/YC
         jo2Iz5ASVuR5/xbv27hu44YYWy9raBHML+etxZphPgMp+Ba0EDR0FtP+0DLO90SKeAlr
         ImwQ8dVJqg44BnH4C8MzCcptBGNCphZGqaXSMEpNrnqY2QkKNu7yE9mbAn+mNH7KwQin
         xSUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756390130; x=1756994930;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Y/I5abWNDNo4EBfij41U+MSxFH8HWMmL5CHi8kMoycQ=;
        b=StDH+gxMQ5fv7bMc4dEDVzyKZGFLzSiPSTPM2xbKmIkOSEfIMA9rCky4ZPhADvwrw6
         jLI8aUZF8NvX9IxXbgPKKshdI1L/xfYJmB0m8dR7ni6SZgSYj7BCl+NJTFzPdUE6Jqci
         zqdlLdcrJes18dnEP0723cY1jyzV3z03NIx8S+rzKdxKtpHYy3vplEFQKJOnE5PFMAIu
         e5Xk1y8vzVYrmGF2mTjVxDJ1nnfF8XrUhaiaE8CmHIKN5kNjMX8039xTq/rT16Td957A
         8rKd1T9cEX3yiuiqYegfwoWMx3xYiJwKRLm+joH7Ym34kKmCVfvJphseL5GJ0ECMoBq4
         12Ng==
X-Forwarded-Encrypted: i=1; AJvYcCWQfkTKlxll7o+8S/uvFBCwM6yz/olQGYGKCRRqODrfn7FOZGFB4KJe9eT/0q+XCEFqLNEV++WNRZBxiNelKw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yyh0fd+nB2Ye7KV9T26JrjGL5vU0alkkQixhkrpfQfW53Kvv+nD
	2juiTSztp9zZQrwQfO990J5j8XTCjvXmQjRCk44JjXOGfpi8IVoxwf2YMGj5FmbX9vw=
X-Gm-Gg: ASbGncvLqOjnpzldPL0DKJFNvAJOHvUVBnU7Hhfl3BvOa7yYcMgX0EZeJTMl/qErzgP
	KpFMYEEMTPcwtMwbZawvWJS99P0XUHYmZ1AimAPiV5/U/Q8YFSMHznsHZKNAU+MGLfMcS/mwi4O
	3/eylvvWR2VdcIXySmGJsoA7ayz23tt3FMnMZzGYEVTOlLvbgbtUyeA6QAaS4y0p6/2sOh/rzEP
	cI6t/JYiY47mH6O+g/o++/s903e9BNbT+583QxEJQR6/zbbQQ6pQ0j731ZkqZV3gA3x0u/GIsu6
	42mfnIdctViIXfrNYQX35p5xrlwRXvjBgdanfLowcxZ6/sh1uWrf9djrPNIf4YzsIjzkUTJuM5n
	PH2Om5s+IMlo1xlp6fKgbY+4G9FLw83D5wOoasX0A1Vo8V0argfyZyX4jC7fW2uwfAATe6R5QAT
	66Tqw=
X-Google-Smtp-Source: AGHT+IHN82XFu68/fEKA3udTLRRIIvxajvSPhjBeGGRAN6IcAlWeL50Yku5UnjGbIWRGKBGVvUPHpQ==
X-Received: by 2002:a17:907:97c7:b0:afe:97eb:4327 with SMTP id a640c23a62f3a-afe97eb470emr1149862766b.20.1756390129962;
        Thu, 28 Aug 2025 07:08:49 -0700 (PDT)
Received: from [10.41.150.230] ([77.241.232.17])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-61cf65b3d7asm207720a12.41.2025.08.28.07.08.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Aug 2025 07:08:49 -0700 (PDT)
Message-ID: <82f447d1-89ae-450f-813e-02c3d8228895@linaro.org>
Date: Thu, 28 Aug 2025 16:08:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 06/13] media: rockchip: add a driver for the rockchip
 camera interface
To: Michael Riesch <michael.riesch@collabora.com>,
 Mehdi Djait <mehdi.djait@linux.intel.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 =?UTF-8?Q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Gerald Loacker <gerald.loacker@wolfvision.net>,
 Markus Elfring <Markus.Elfring@web.de>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Kever Yang <kever.yang@rock-chips.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Collabora Kernel Team <kernel@collabora.com>,
 Paul Kocialkowski <paulk@sys-base.io>,
 Alexander Shiyan <eagle.alexander923@gmail.com>,
 Val Packett <val@packett.cool>, Rob Herring <robh@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Mehdi Djait <mehdi.djait@bootlin.com>
References: <20240220-rk3568-vicap-v10-0-62d8a7b209b4@collabora.com>
 <20240220-rk3568-vicap-v10-6-62d8a7b209b4@collabora.com>
 <3b4173cb-655d-48ea-b86a-a036f666cf40@linaro.org>
 <23ccc744-745d-4a31-a79c-2d64bf1ed43d@collabora.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <23ccc744-745d-4a31-a79c-2d64bf1ed43d@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250828_070851_958440_529EEC16 
X-CRM114-Status: GOOD (  44.79  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMjgvMDgvMjAyNSAxMjowMywgTWljaGFlbCBSaWVzY2ggd3JvdGU6Cj4gSGkgQnJ5YW4sCj4g
Cj4gVGhhbmtzIGZvciB5b3VyIGNvbW1lbnRzIDotKQo+IAo+IE9uIDgvMjYvMjUgMDg6MjEsIEJy
eWFuIE8nRG9ub2dodWUgd3JvdGU6Cj4+IE9uIDE5LzA4LzIwMjUgMDA6MjUsIE1pY2hhZWwgUmll
c2NoIHZpYSBCNCBSZWxheSB3cm90ZToKPiAKPiBbLi4uXQo+IAo+Pj4gKwo+Pj4gK3N0YXRpYyB2
b2lkIHJrY2lmX2R2cF9zdG9wX3N0cmVhbWluZyhzdHJ1Y3QgcmtjaWZfc3RyZWFtICpzdHJlYW0p
Cj4+PiArewo+Pj4gK8KgwqDCoCBzdHJ1Y3QgcmtjaWZfZGV2aWNlICpya2NpZiA9IHN0cmVhbS0+
cmtjaWY7Cj4+PiArwqDCoMKgIHUzMiB2YWw7Cj4+PiArCj4+PiArwqDCoMKgIHZhbCA9IHJrY2lm
X2R2cF9yZWFkKHJrY2lmLCBSS0NJRl9EVlBfQ1RSTCk7Cj4+Cj4+IFRoaXMgZHZwX3JlYWQgc3R1
ZmYgbG9va3MgYSBiaXQgZnVubnkgdG8gbWUsIHlvdSBoYXZlIGEgbG9va3VwIHdoaWNoIGNhbgo+
PiByZXR1cm4gMCBmb3IgdW5rbm93biByZWdpc3RlcnMuCj4+Cj4+IFByb2JhYmx5IG5vdCB0aGUg
Y2FzZSB3aXRoIGEgY29udHJvbCByZWdpc3RlciBsaWtlIHRoaXMgb25lIGJ1dCwgZm9yCj4+IGFy
Z3VtZW50IHNha2UgaWYgUktDSUZfRFZQX0NUUkwgd2FzIG5vdCBhIHZhbGlkIHJlZ2lzdGVyIGku
ZS4KPj4gcmtjaWZfZHZwX3JlYWQoKSB3b3VsZCByZXR1cm4gMCBhbmQgeW91J2Qgc3RpbGwgYWN0
IG9uIHRoYXQgZGF0YSB0bwo+PiB3cml0ZSBiYWNrIHRvIGFuIHVua293biByZWdpc3Rlci4KPiAK
PiAuLi53aGljaCB3b3VsZCB0aGVuIGhpdCB0aGUgc2FtZSBjaGVjayBpbiBya2NpZl9kdnBfd3Jp
dGUgYW5kIHNpbXBseQo+IHJldHVybiB3aXRob3V0IHdyaXRpbmcgYW55dGhpbmcuIEFsc28sIHRo
ZSBXQVJOX09OX09OQ0UgaW4gdGhlIGxvb2t1cAo+IHdvdWxkIGNvbXBsYWluIGFuZCBpbmRpY2F0
ZSB0aGF0IHRoZSBkcml2ZXIgZGV2ZWxvcGVyIG1hZGUgc29tZSBtaXN0YWtlLgo+IEkgaG9wZSB0
aGF0IHRoZSBkcml2ZXIgZGV2ZWxvcGVyIGlzIHRodXMgbnVkZ2VkIHRvd2FyZHMgZml4aW5nIHRo
ZSBjb2RlCj4gdGhleSB3cm90ZS4KPiAKPj4gV291bGQgeW91IG5vdCBiZSBiZXR0ZXIgb2ZmIGhh
dmluZyBzYXkgY2FsbGJhY2tzIHRvIGNvbnRhaW4gY2FzZXMgd2hlcmUKPj4gcmVnaXN0ZXJzIGFy
ZSBwb3RlbnRpYWxseSBub3QgcHJlc2VudAo+Pgo+PiBvcHMtPnVwZGF0ZV9tYXliZV9ub3RfcHJl
c2VudF9yZWcoKTsKPj4KPj4gZm9sbG93ZWQgYnkgd3JpdGVzIHRvIHJlZ2lzdGVycyB0aGF0IHdv
dWxkIGFsYXd5cyBiZSB0aGVyZSA/Cj4gCj4gSSdsbCB0aGluayBhYm91dCB0aGF0IGluIG1vcmUg
ZGV0YWlsLCBidXQgcmlnaHQgbm93IG15IHRob3VnaHRzIGFyZSB0aGF0Cj4gaWYgYW55IG9mIHRo
ZSByZWdpc3RlcnMgYmVsb3cgYXJlIG5vdCB2YWxpZCwgdGhpcyBwaWVjZSBvZiBoYXJkd2FyZSBp
cwo+IHByZXR0eSB1c2VsZXNzIGFuZCB0aGVyZSBpcyBzb21ldGhpbmcgcm90dGVuIGluIHRoZSBk
cml2ZXIuIFRodXMsIHdlCj4gY29tcGxhaW4gbG91ZGx5IHRvIHRoZSBkZXZlbG9wZXIuClRoZSBk
ZXZlbG9wZXIgaXMgeW91IHRob3VnaCA6KQoKQW55d2F5IHNlZW1zIGEgYml0IHdlaXJkIHRvIG1l
IHRvIHJldHVybiBpbnZhbGlkIHJlZ2lzdGVycywgeW91IHRydXN0IAp5b3Vyc2VsZiByaWdodCA/
Cgo+Pj4gK8KgwqDCoCBya2NpZl9kdnBfd3JpdGUocmtjaWYsIFJLQ0lGX0RWUF9DVFJMLAo+Pj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdmFsICYgKH5SS0NJRl9DVFJMX0VOQUJMRV9DQVBUVVJF
KSk7Cj4+PiArwqDCoMKgIHJrY2lmX2R2cF93cml0ZShya2NpZiwgUktDSUZfRFZQX0lOVEVOLCAw
eDApOwo+Pj4gK8KgwqDCoCBya2NpZl9kdnBfd3JpdGUocmtjaWYsIFJLQ0lGX0RWUF9JTlRTVEFU
LCAweDNmZik7Cj4+PiArwqDCoMKgIHJrY2lmX2R2cF93cml0ZShya2NpZiwgUktDSUZfRFZQX0ZS
QU1FX1NUQVRVUywgMHgwKTsKPj4+ICsKPj4+ICvCoMKgwqAgc3RyZWFtLT5zdG9wcGluZyA9IGZh
bHNlOwo+Pj4gK30KPj4+ICsKPj4+ICtzdGF0aWMgdm9pZCBya2NpZl9kdnBfcmVzZXRfc3RyZWFt
KHN0cnVjdCBya2NpZl9kZXZpY2UgKnJrY2lmKQo+Pj4gK3sKPj4+ICvCoMKgwqAgdTMyIGN0bCA9
IHJrY2lmX2R2cF9yZWFkKHJrY2lmLCBSS0NJRl9EVlBfQ1RSTCk7Cj4+PiArCj4+PiArwqDCoMKg
IHJrY2lmX2R2cF93cml0ZShya2NpZiwgUktDSUZfRFZQX0NUUkwsCj4+PiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBjdGwgJiAoflJLQ0lGX0NUUkxfRU5BQkxFX0NBUFRVUkUpKTsKPj4+ICvCoMKg
wqAgcmtjaWZfZHZwX3dyaXRlKHJrY2lmLCBSS0NJRl9EVlBfQ1RSTCwgY3RsIHwKPj4+IFJLQ0lG
X0NUUkxfRU5BQkxFX0NBUFRVUkUpOwo+Pj4gK30KPj4+ICsKPj4+ICtzdGF0aWMgdm9pZCBya2Np
Zl9kdnBfc2V0X2Nyb3Aoc3RydWN0IHJrY2lmX3N0cmVhbSAqc3RyZWFtLCB1MTYgbGVmdCwKPj4+
IHUxNiB0b3ApCj4+PiArewo+Pj4gK8KgwqDCoCBzdHJ1Y3QgcmtjaWZfZGV2aWNlICpya2NpZiA9
IHN0cmVhbS0+cmtjaWY7Cj4+PiArwqDCoMKgIHUzMiB2YWw7Cj4+PiArCj4+PiArwqDCoMKgIHZh
bCA9IFJLQ0lGX1hZX0NPT1JEKGxlZnQsIHRvcCk7Cj4+PiArwqDCoMKgIHJrY2lmX2R2cF93cml0
ZShya2NpZiwgUktDSUZfRFZQX0NST1AsIHZhbCk7Cj4+PiArfQo+Pj4gKwo+Pj4gK2lycXJldHVy
bl90IHJrY2lmX2R2cF9pc3IoaW50IGlycSwgdm9pZCAqY3R4KQo+Pj4gK3sKPj4+ICvCoMKgwqAg
c3RydWN0IGRldmljZSAqZGV2ID0gY3R4Owo+Pj4gK8KgwqDCoCBzdHJ1Y3QgcmtjaWZfZGV2aWNl
ICpya2NpZiA9IGRldl9nZXRfZHJ2ZGF0YShkZXYpOwo+Pj4gK8KgwqDCoCBzdHJ1Y3QgcmtjaWZf
c3RyZWFtICpzdHJlYW07Cj4+PiArwqDCoMKgIHUzMiBpbnRzdGF0LCBsYXN0bGluZSwgbGFzdHBp
eCwgY2lmX2ZybXN0Owo+Pj4gK8KgwqDCoCBpcnFyZXR1cm5fdCByZXQgPSBJUlFfTk9ORTsKPj4+
ICsKPj4+ICvCoMKgwqAgaWYgKCFya2NpZi0+bWF0Y2hfZGF0YS0+ZHZwKQo+Pj4gK8KgwqDCoMKg
wqDCoMKgIHJldHVybiByZXQ7Cj4+Cj4+IFdvdWxkbid0IHlvdSBiZSBiZXR0ZXIgb2ZmIGNvbmRp
dGlvbmFsbHkgcmVnaXN0ZXJpbmcgeW91ciBJU1IgaWYKPj4gbWF0Y2hfZGF0YS0+ZHZwIGlzIHRy
dWUgaW5zdGVhZCA/Cj4gCj4gQXMgeW91IGhhdmUgc3VyZWx5IHNlZW4sIHRoZSBJU1IgaXMgc2hh
cmVkIGJldHdlZW4gYWxsIGludGVyZmFjZXMsIGkuZS4sCj4gRFZQIGFuZCBNSVBJLiBOb3cgdGhl
IGN1cnJlbnRseSBzdXBwb3J0ZWQgbW9kZWxzIGFsbCBoYXZlIGEgRFZQIGFuZCB5b3VyCj4gc3Vn
Z2VzdGlvbiB3b3VsZCB3b3JrLiBIb3dldmVyLCBJIHRoaW5rIHRoZSBSSzM1NjIgVklDQVAgY2Fu
IGJlIGVhc2lseQo+IHN1cHBvcnRlZCBieSB0aGlzIGRyaXZlciBidXQgZG9lcyBub3QgZmVhdHVy
ZSBhIERWUCAoc2V2ZXJhbCBNSVBJCj4gaW50ZXJmYWNlcywgdGhvdWdoKS4gSW4gdGhpcyBjYXNl
IG1hdGNoX2RhdGEtPmR2cCBldmFsdWF0ZXMgdG8gZmFsc2UgYnV0Cj4gc3RpbGwgdGhlcmUgaXMg
dGhlIG5lZWQgdG8gcmVnaXN0ZXIgdGhlIElTUi4KCldoeSBub3QgaGF2ZSBzZXBhcmF0ZSBJU1Jz
IHRoZW4gd2l0aCBzaGFyZWQgY29kZSBjYWxsaW5nIGludG8gYSBmdW5jdGlvbiA/CgpBbiBJU1Ig
aW4gbXkgbWluZCBzaG91bGQgZmlyZSBmb3IgaGFyZHdhcmUgd2UgaGF2ZSBhIGNsZWFyIGlkZWEg
YWJvdXQgCmFuZCBvbmx5IGRvIHNvIGluIGV4Y2VwdGlvbmFsIChwdW4gaW50ZW5kZWQpIGNpcmN1
bXN0YW5jZXMuCgpTbyBJJ2Qgc3VnZ2VzdCB0d28gSVNScyBjYWxsaW5nIGludG8gd2hhdGV2ZXIg
c2hhcmVkIGNvZGUgeW91IGRlZW0gCm5lY2Vzc2FyeSBhcyBvcHBvc2VkIHRvIE5VTEwgY2hlY2tp
bmcgaW4geW91ciBJU1IuCj4gCj4+Cj4+PiArCj4+PiArwqDCoMKgIGludHN0YXQgPSBya2NpZl9k
dnBfcmVhZChya2NpZiwgUktDSUZfRFZQX0lOVFNUQVQpOwo+Pj4gK8KgwqDCoCBjaWZfZnJtc3Qg
PSBya2NpZl9kdnBfcmVhZChya2NpZiwgUktDSUZfRFZQX0ZSQU1FX1NUQVRVUyk7Cj4+PiArwqDC
oMKgIGxhc3RsaW5lID0gUktDSUZfRkVUQ0hfWShya2NpZl9kdnBfcmVhZChya2NpZiwKPj4+IFJL
Q0lGX0RWUF9MQVNUX0xJTkUpKTsKPj4+ICvCoMKgwqAgbGFzdHBpeCA9IFJLQ0lGX0ZFVENIX1ko
cmtjaWZfZHZwX3JlYWQocmtjaWYsIFJLQ0lGX0RWUF9MQVNUX1BJWCkpOwo+Pj4gKwo+Pj4gK8Kg
wqDCoCBpZiAoaW50c3RhdCAmIFJLQ0lGX0lOVFNUQVRfRlJBTUVfRU5EKSB7Cj4+PiArwqDCoMKg
wqDCoMKgwqAgcmtjaWZfZHZwX3dyaXRlKHJrY2lmLCBSS0NJRl9EVlBfSU5UU1RBVCwKPj4+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgUktDSUZfSU5UU1RBVF9GUkFNRV9FTkRfQ0xS
IHwKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgUktDSUZfSU5UU1RBVF9MSU5F
X0VORF9DTFIpOwo+Pj4gKwo+Pj4gK8KgwqDCoMKgwqDCoMKgIHN0cmVhbSA9ICZya2NpZi0+aW50
ZXJmYWNlc1tSS0NJRl9EVlBdLnN0cmVhbXNbUktDSUZfSUQwXTsKPj4+ICsKPj4+ICvCoMKgwqDC
oMKgwqDCoCBpZiAoc3RyZWFtLT5zdG9wcGluZykgewo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgcmtjaWZfZHZwX3N0b3Bfc3RyZWFtaW5nKHN0cmVhbSk7Cj4+PiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCB3YWtlX3VwKCZzdHJlYW0tPndxX3N0b3BwZWQpOwo+Pj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgcmV0ID0gSVJRX0hBTkRMRUQ7Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBn
b3RvIG91dDsKPj4+ICvCoMKgwqDCoMKgwqDCoCB9Cj4+PiArCj4+PiArwqDCoMKgwqDCoMKgwqAg
aWYgKGxhc3RsaW5lICE9IHN0cmVhbS0+cGl4LmhlaWdodCkgewo+Pj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgdjRsMl9lcnIoJnJrY2lmLT52NGwyX2RldiwKPj4+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCAiYmFkIGZyYW1lLCBpcnE6JSN4IGZybXN0OiUjeCBzaXplOiVkeCVk
XG4iLAo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGludHN0YXQsIGNpZl9m
cm1zdCwgbGFzdHBpeCwgbGFzdGxpbmUpOwo+Pj4gKwo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgcmtjaWZfZHZwX3Jlc2V0X3N0cmVhbShya2NpZik7Cj4+PiArwqDCoMKgwqDCoMKgwqAgfQo+
Pj4gKwo+Pj4gK8KgwqDCoMKgwqDCoMKgIHJrY2lmX3N0cmVhbV9waW5ncG9uZyhzdHJlYW0pOwo+
Pj4gKwo+Pj4gK8KgwqDCoMKgwqDCoMKgIHJldCA9IElSUV9IQU5ETEVEOwo+Pj4gK8KgwqDCoCB9
Cj4+PiArb3V0Ogo+Pj4gK8KgwqDCoCByZXR1cm4gcmV0Owo+Pj4gK30KPj4+ICsKPj4+ICtpbnQg
cmtjaWZfZHZwX3JlZ2lzdGVyKHN0cnVjdCBya2NpZl9kZXZpY2UgKnJrY2lmKQo+Pj4gK3sKPj4+
ICvCoMKgwqAgc3RydWN0IHJrY2lmX2ludGVyZmFjZSAqaW50ZXJmYWNlOwo+Pj4gK8KgwqDCoCB1
bnNpZ25lZCBpbnQgc3RyZWFtc19udW07Cj4+PiArwqDCoMKgIGludCByZXQ7Cj4+PiArCj4+PiAr
wqDCoMKgIGlmICghcmtjaWYtPm1hdGNoX2RhdGEtPmR2cCkKPj4+ICvCoMKgwqDCoMKgwqDCoCBy
ZXR1cm4gMDsKPj4KPj4gSWYgeW91IGRvbid0IHJlZ2lzdGVyIHRoZSBkZXZpY2Ugd2hlbiBtYXRj
aF9kYXRhLT5kdnAgaXMgZmFsc2UsIHRoZW4gSQo+PiB0aGluayB5b3UgY2FuIHJlbGF4IHRoZSBj
YXJyeS1vbiBjaGVja3MgZWxzZXdoZXJlIG9uIG1hdGNoX2RhdGEtPmR2cCwKPj4gbm90IGluY2x1
ZGluZyBkdnBfdW5yZWdpc3Rlcgo+IAo+ICsxIEknbGwgcmV2aWV3IGFsbCBpbnN0YW5jZXMgb2Yg
dGhpcyBjaGVjay4KPiAKPj4gVGhlIHJlc3Qgb2YgdGhlIGZpbGUgYXMgSSBicmVpZmx5IHNraW0g
aXQgbG9va3MgT0sgdG8gbWUsIGl0cyBhIGJpdCBiaWcKPj4gdGhvdWdoLgo+Pgo+PiBXb3VsZCBp
dCBiZSBwb3NzaWJsZSB0byBicmVhayB0aGlzIHBhdGNoIHVwIGEgbGl0dGxlIGJpdCA/IE1pZ2h0
IG1ha2UgaXQKPj4gZWFzaWVyIGZvciBvdGhlciByZXZpZXdlcnMgdG8gZ2l2ZSBhbiBTb0IgZm9y
IHNtYWxsZXIgY2h1bmtzLgo+IAo+IEkgc3VwcG9zZSB3aGF0IEkgY291bGQgZG8gaXMgc3BsaXQg
dGhpcyB1cCBpbnRvIGZpdmUgcGF0Y2hlcywgYXMgdGhlCj4gY29tbWl0IG1lc3NhZ2UgYWxyZWFk
eSBvdXRsaW5lczoKPiAKPiAxKSBhZGQgYSBiYXNpYyBkcml2ZXIgKG5vLW9wIHNrZWxldG9uIG9u
bHkpCj4gMikgYWJzdHJhY3Rpb24gZm9yIHRoZSBwaW5nLXBvbmcgc2NoZW1lIHRvIGFsbG93IGZv
ciBmdXR1cmUgZXh0ZW5zaW9ucwo+IDMpIGFic3RyYWN0aW9uIGZvciB0aGUgSU5URVJGQUNFIGFu
ZCBDUk9QIHBhcnRzIHRvIGFsbG93IGZvciBmdXR1cmUKPiAgICAgZXh0ZW5zaW9ucwo+IDQpIHN1
cHBvcnQgZm9yIHRoZSBQWDMwIFZJUAo+IDUpIHN1cHBvcnQgZm9yIHRoZSBSSzM1NjggVklDQVAg
RFZQCj4gCj4gUGxlYXNlIG5vdGUgdGhhdCBpbiB0aGlzIGNhc2UgSSB3b3VsZCByZXdvcmsgdGhl
IHBhdGNoIGZvciBhIGZpbmFsCj4gKHRoaXMtdGltZS1yZWFsbHktZmluYWwpIHRpbWUgYW5kIGRy
b3AgdGhpcyBlbGFib3JhdGUgY28tZGV2ZWxvcGVkLWJ5Cj4gbGlzdCwgYXMgdGhlIHBhdGNoIGlu
IHF1ZXN0aW9uIHdpbGwgdGhlbiBoYXZlIG5vdGhpbmcgdG8gZG8gaXQgYWxsIHdpdGgKPiBhbnl0
aGluZyB3aGF0IHdhcyBiZWZvcmUgdjIgb2YgdGhpcyBzZXJpZXMuCgpJJ2xsIGxlYXZlIHRoYXQg
dXAgdG8geW91LCBJJ2xsIHN0aWxsIHJldmlldyB5b3VyIHYxMSBidXQsIGEgc2xpZ2h0bHkgCnNt
YWxsZXIgc2luZ2xlIHBhdGNoIHRvIGRpZ2VzdCB3b3VsZCBiZSBhcHByZWNpYXRlZC4KCi0tLQpi
b2QKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK

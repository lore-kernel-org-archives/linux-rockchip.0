Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7704C47DD9
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Jan 2024 16:21:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=89VnjGLZMg8aniERIX26BpwQ078f+fm+kvVKgrOz9mo=; b=c2MERYs5gRKdYUxAZNxxlUG9X5
	z6TDAWWMuiIIJTGAGgTox0uKr5zCy0JoN4WhZA98j3/9kV6SHgT0McKpyAXef6UUQTt4eY6onaR4o
	zdBxb8v5ErWrXT6b+y31VGPRfrQIktVC2eF4PALb5VIgvy1aQMD+4Kb4ngY4EzwsR5HXM0fGJft4p
	Wu6LaZhg67zJZth6nbYko74bS1qxp8yTY00unvEwqPY7R4zHLiLE1HUwvLrDZnSe5jJMRXTcSk2Cu
	QdC4LXgwXBqtjAIrhzqK7A/CBWZe/shS0JTK00ulZO/FaWleVt9oTar/WZHjOBNXzY26UlnM3IIvC
	9cfvrmqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQrcM-0065rV-2C;
	Fri, 19 Jan 2024 16:21:18 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQrcJ-0065qk-08
	for linux-rockchip@lists.infradead.org;
	Fri, 19 Jan 2024 16:21:16 +0000
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-3392291b21bso514206f8f.1
        for <linux-rockchip@lists.infradead.org>; Fri, 19 Jan 2024 08:21:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705681273; x=1706286073; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4Et99TJn/9LrcxnPBg5MmEqO0M8peYvrbI0bmYPvx2M=;
        b=DEOxQPF56d6lNiYxmXLhJL6eSmLtSkaB6aMdt266ZsO8HHdWzmKC3jN6wiXSTfc0gs
         2uITBzFgLp357SF7fYnrgV5xWWs5K022md0UjXPg53Zu9im/u11lV7/yKqLiYkUvU2tq
         WDfjV9jybzZHXd3cr9tUS/GoWu1zgVOcsd0buZtManT5+WWjdXYIq60Wg4gU3sF7NNoP
         5TXQPab3JX44aQiNd5nkfl29jWWbwA+u4UzR5jKUEI8Wcu2qjINle5HV9R5i0b7+gxVJ
         wYYCfQWPNF/P8rl5Ae4+AK3M6MEiBxL4oa3+vIA5Y/moWMQhuReY1j63Rqf5rzW08JcV
         BRLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705681273; x=1706286073;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4Et99TJn/9LrcxnPBg5MmEqO0M8peYvrbI0bmYPvx2M=;
        b=hvKjofui1qeg2wSObdTQju5rjDQMbfsFU4/sfPy9iufUZ+qvCnoUPlc8Rfbf9oSIR0
         3kOYpQ/wj+8oauJXDBZ3qR3lqqb20vgGYUCxztpim5FblP3GVQxVJmZ/ZwNxLUFCcaxV
         TwKz4+1XTbXio7G0sB0WWjPTPZzvnWjb/bnyluWooxoDjhk4BZRP6RMQnFkH7lNXMSUI
         Oyzf1TOKaxR1raC+QiXLMZasxazmUNPiWUQ9zXNavlQvZHD88EcqM0YNqbTLeT8k30nO
         r+3qR1mJMa6lYJON2ipLSmDGbvU2rHOn6g5C8+aTY9oL0gGlZSfLFUwTNgkqN75aVxKh
         5nng==
X-Gm-Message-State: AOJu0YxMglXjbBKQekRJD/wvyby6PkNOukD2y4Ud3UtrhdnGFygBvEsM
	S9q9tP+N0FWaJqFKAgYH4K03W4vwUUH4nx6YRwHBOBMxn7wn66zd4MiE2ebHM2M=
X-Google-Smtp-Source: AGHT+IEksNHi+z3W/UPJGCEhYWxuI2PhBzwQkLHsDvVjtq+JN3bnKj1kybphCbVmjTWLW27uO5WXLg==
X-Received: by 2002:a5d:4904:0:b0:338:d6c5:e9e9 with SMTP id x4-20020a5d4904000000b00338d6c5e9e9mr641365wrq.138.1705681272827;
        Fri, 19 Jan 2024 08:21:12 -0800 (PST)
Received: from ?IPV6:2a05:6e02:1041:c10:80ec:9cf:f853:831a? ([2a05:6e02:1041:c10:80ec:9cf:f853:831a])
        by smtp.googlemail.com with ESMTPSA id n13-20020a5d51cd000000b0033673ddd81csm6808214wrv.112.2024.01.19.08.21.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Jan 2024 08:21:12 -0800 (PST)
Message-ID: <c517f26c-34bc-4b99-b744-8e2549cd28b5@linaro.org>
Date: Fri, 19 Jan 2024 17:21:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: rockchip: enable built-in thermal
 monitoring on rk3588
Content-Language: en-US
To: Alexey Charkov <alchark@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Christopher Obbard <chris.obbard@collabora.com>,
 =?UTF-8?B?VGFtw6FzIFN6xbFjcw==?= <szucst@iit.uni-miskolc.hu>,
 Shreeya Patel <shreeya.patel@collabora.com>,
 Kever Yang <kever.yang@rock-chips.com>, Jagan Teki <jagan@edgeble.ai>,
 Chris Morgan <macromorgan@hotmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240106222357.23835-1-alchark@gmail.com>
 <20240109192608.5981-1-alchark@gmail.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20240109192608.5981-1-alchark@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240119_082115_096377_D9096ACF 
X-CRM114-Status: GOOD (  21.31  )
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

T24gMDkvMDEvMjAyNCAyMDoxOSwgQWxleGV5IENoYXJrb3Ygd3JvdGU6Cj4gSW5jbHVkZSB0aGVy
bWFsIHpvbmVzIGluZm9ybWF0aW9uIGluIGRldmljZSB0cmVlIGZvciByazM1ODggdmFyaWFudHMK
PiBhbmQgZW5hYmxlIHRoZSBidWlsdC1pbiB0aGVybWFsIHNlbnNpbmcgQURDIG9uIFJBRFhBIFJv
Y2sgNUIKPiAKPiBTaWduZWQtb2ZmLWJ5OiBBbGV4ZXkgQ2hhcmtvdiA8YWxjaGFya0BnbWFpbC5j
b20+Cj4gLS0tCj4gQ2hhbmdlcyBpbiB2MjoKPiAgIC0gRHJvcHBlZCByZWR1bmRhbnQgY29tbWVu
dHMKPiAgIC0gSW5jbHVkZWQgYWxsIENQVSBjb3JlcyBpbiBjb29saW5nIG1hcHMKPiAgIC0gU3Bs
aXQgY29vbGluZyBtYXBzIGludG8gbW9yZSBncmFudWxhciBvbmVzIHV0aWxpemluZyBUU0FEQwo+
ICAgICBjaGFubmVscyAxLTMgd2hpY2ggbWVhc3VyZSB0ZW1wZXJhdHVyZSBieSBzZXBhcmF0ZSBD
UFUgY2x1c3RlcnMKPiAgICAgaW5zdGVhZCBvZiBjaGFubmVsIDAgd2hpY2ggbWVhc3VyZXMgdGhl
IGNlbnRlciBvZiB0aGUgU29DIGRpZQo+IC0tLQo+ICAgLi4uL2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzU4OC1yb2NrLTViLmR0cyAgICAgIHwgICA0ICsKPiAgIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszNTg4cy5kdHNpICAgICB8IDE1MSArKysrKysrKysrKysrKysrKysKPiAgIDIgZmls
ZXMgY2hhbmdlZCwgMTU1IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi5kdHMgYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzU4OC1yb2NrLTViLmR0cwo+IGluZGV4IGE1YTEwNDEzMTQwMy4uZjlk
NTQwMDAwZGUzIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsz
NTg4LXJvY2stNWIuZHRzCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1
ODgtcm9jay01Yi5kdHMKPiBAQCAtNzcyLDMgKzc3Miw3IEBAICZ1c2JfaG9zdDFfZWhjaSB7Cj4g
ICAmdXNiX2hvc3QxX29oY2kgewo+ICAgCXN0YXR1cyA9ICJva2F5IjsKPiAgIH07Cj4gKwo+ICsm
dHNhZGMgewo+ICsJc3RhdHVzID0gIm9rYXkiOwo+ICt9Owo+IGRpZmYgLS1naXQgYS9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszNTg4cy5kdHNpCj4gaW5kZXggOGFhMDQ5OWY5YjAzLi44ZDU0OTk4ZDBlY2Mg
MTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLmR0c2kK
PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMuZHRzaQo+IEBAIC0x
MCw2ICsxMCw3IEBACj4gICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvcmVzZXQvcm9ja2NoaXAscmsz
NTg4LWNydS5oPgo+ICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL3BoeS9waHkuaD4KPiAgICNpbmNs
dWRlIDxkdC1iaW5kaW5ncy9hdGEvYWhjaS5oPgo+ICsjaW5jbHVkZSA8ZHQtYmluZGluZ3MvdGhl
cm1hbC90aGVybWFsLmg+Cj4gICAKPiAgIC8gewo+ICAgCWNvbXBhdGlibGUgPSAicm9ja2NoaXAs
cmszNTg4IjsKPiBAQCAtMjExMiw2ICsyMTEzLDE1NiBAQCB0c2FkYzogdHNhZGNAZmVjMDAwMDAg
ewo+ICAgCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwo+ICAgCX07Cj4gICAKPiArCXRoZXJtYWxfem9u
ZXM6IHRoZXJtYWwtem9uZXMgewo+ICsJCS8qIHNlbnNvciBuZWFyIHRoZSBjZW50ZXIgb2YgdGhl
IHdob2xlIGNoaXAgKi8KPiArCQlzb2NfdGhlcm1hbDogc29jLXRoZXJtYWwgewo+ICsJCQlwb2xs
aW5nLWRlbGF5LXBhc3NpdmUgPSA8MjA+OwoKVGhlcmUgaXMgbm8gbWl0aWdhdGlvbiBzZXQgZm9y
IHRoaXMgdGhlcm1hbCB6b25lLiBJdCBpcyBwb2ludGxlc3MgdG8gCnNwZWNpZnkgYSBwYXNzaXZl
IHBvbGxpbmcuCgo+ICsJCQlwb2xsaW5nLWRlbGF5ID0gPDEwMDA+OwoKVGhlIGRyaXZlciBpcyBp
bnRlcnJ1cHQgZHJpdmVuLiBObyBuZWVkIHRvIHBvbGwuCgo+ICsJCQlzdXN0YWluYWJsZS1wb3dl
ciA9IDwyMTAwPjsKClRoZXJlIGlzIG5vIG1pdGlnYXRpb24gd2l0aCB0aGlzIHRoZXJtYWwgem9u
ZS4gU3BlY2lmeWluZyBhIHN1c3RhaW5hYmxlIApwb3dlciBkb2VzIG5vdCBtYWtlIHNlbnNlLgoK
PiArCQkJdGhlcm1hbC1zZW5zb3JzID0gPCZ0c2FkYyAwPjsKPiArCj4gKwkJCXRyaXBzIHsKPiAr
CQkJCXNvY19jcml0OiBzb2MtY3JpdCB7Cj4gKwkJCQkJdGVtcGVyYXR1cmUgPSA8MTE1MDAwPjsK
PiArCQkJCQloeXN0ZXJlc2lzID0gPDIwMDA+OwoKVGhpcyB0cmlwIHBvaW50IGxlYWRzIHRvIGEg
c3lzdGVtIHNodXRkb3duIC8gcmVib290LiBJdCBpcyBub3QgbmVjZXNzYXJ5IAp0byBzcGVjaWZ5
IGEgaHlzdGVyZXNpcy4KCj4gKwkJCQkJdHlwZSA9ICJjcml0aWNhbCI7Cj4gKwkJCQl9Owo+ICsJ
CQl9Owo+ICsJCX07Cj4gKwo+ICsJCS8qIHNlbnNvciBiZXR3ZWVuIEE3NiBjb3JlcyAwIGFuZCAx
ICovCj4gKwkJYmlnY29yZTBfdGhlcm1hbDogYmlnY29yZTAtdGhlcm1hbCB7Cj4gKwkJCXBvbGxp
bmctZGVsYXktcGFzc2l2ZSA9IDwyMD47Cj4gKwkJCXBvbGxpbmctZGVsYXkgPSA8MTAwMD47CgpU
aGUgZHJpdmVyIGlzIGludGVycnVwdCBkcml2ZW4uIE5vIG5lZWQgdG8gcG9sbC4KCj4gKwkJCXRo
ZXJtYWwtc2Vuc29ycyA9IDwmdHNhZGMgMT47Cj4gKwo+ICsJCQl0cmlwcyB7Cj4gKwkJCQliaWdj
b3JlMF9hbGVydDogYmlnY29yZTAtYWxlcnQgewo+ICsJCQkJCXRlbXBlcmF0dXJlID0gPDg1MDAw
PjsKPiArCQkJCQloeXN0ZXJlc2lzID0gPDIwMDA+Owo+ICsJCQkJCXR5cGUgPSAicGFzc2l2ZSI7
Cj4gKwkJCQl9Owo+ICsJCQkJYmlnY29yZTBfY3JpdDogYmlnY29yZTAtY3JpdCB7Cj4gKwkJCQkJ
dGVtcGVyYXR1cmUgPSA8MTE1MDAwPjsKPiArCQkJCQloeXN0ZXJlc2lzID0gPDIwMDA+Owo+ICsJ
CQkJCXR5cGUgPSAiY3JpdGljYWwiOwo+ICsJCQkJfTsKPiArCQkJfTsKPiArCQkJY29vbGluZy1t
YXBzIHsKPiArCQkJCW1hcDAgewo+ICsJCQkJCXRyaXAgPSA8JmJpZ2NvcmUwX2FsZXJ0PjsKPiAr
CQkJCQljb29saW5nLWRldmljZSA9Cj4gKwkJCQkJCTwmY3B1X2IwIFRIRVJNQUxfTk9fTElNSVQg
VEhFUk1BTF9OT19MSU1JVD4sCj4gKwkJCQkJCTwmY3B1X2IxIFRIRVJNQUxfTk9fTElNSVQgVEhF
Uk1BTF9OT19MSU1JVD47Cj4gKwkJCQkJY29udHJpYnV0aW9uID0gPDEwMjQ+OwoKSWYgeW91IHNw
ZWNpZnkgdGhlIGNvbnRyaWJ1dGlvbiwgdGhhdCBtZWFucyBpdCBpcyBleHBlY3RlZCB0byB1c2Ug
dGhlIApJUEEgZ292ZXJub3IuIEhvd2V2ZXIsIHRoaXMgb25lIG5lZWRzIGFuIGV4dHJhIHRyaXAg
cG9pbnQgYmVmb3JlICdhbGVydCcgCnRvIGJlZ2luIGNvbGxlY3RpbmcgdGVtcGVyYXR1cmVzIGlu
IG9yZGVyIHRvIGluaXRpYWxpemUgdGhlIFBJRCBsb29wIG9mIAp0aGUgSVBBLgoKPiArCQkJCX07
Cj4gKwkJCX07Cj4gKwkJfTsKPiArCj4gKwkJLyogc2Vuc29yIGJldHdlZW4gQTc2IGNvcmVzIDIg
YW5kIDMgKi8KPiArCQliaWdjb3JlMl90aGVybWFsOiBiaWdjb3JlMi10aGVybWFsIHsKPiArCQkJ
cG9sbGluZy1kZWxheS1wYXNzaXZlID0gPDIwPjsKPiArCQkJcG9sbGluZy1kZWxheSA9IDwxMDAw
PjsKClRoZSBkcml2ZXIgaXMgaW50ZXJydXB0IGRyaXZlbi4gTm8gbmVlZCB0byBwb2xsLgoKPiAr
CQkJdGhlcm1hbC1zZW5zb3JzID0gPCZ0c2FkYyAyPjsKPiArCj4gKwkJCXRyaXBzIHsKPiArCQkJ
CWJpZ2NvcmUyX2FsZXJ0OiBiaWdjb3JlMi1hbGVydCB7Cj4gKwkJCQkJdGVtcGVyYXR1cmUgPSA8
ODUwMDA+Owo+ICsJCQkJCWh5c3RlcmVzaXMgPSA8MjAwMD47Cj4gKwkJCQkJdHlwZSA9ICJwYXNz
aXZlIjsKPiArCQkJCX07Cj4gKwkJCQliaWdjb3JlMl9jcml0OiBiaWdjb3JlMi1jcml0IHsKPiAr
CQkJCQl0ZW1wZXJhdHVyZSA9IDwxMTUwMDA+Owo+ICsJCQkJCWh5c3RlcmVzaXMgPSA8MjAwMD47
Cj4gKwkJCQkJdHlwZSA9ICJjcml0aWNhbCI7Cj4gKwkJCQl9Owo+ICsJCQl9Owo+ICsJCQljb29s
aW5nLW1hcHMgewo+ICsJCQkJbWFwMSB7Cj4gKwkJCQkJdHJpcCA9IDwmYmlnY29yZTJfYWxlcnQ+
Owo+ICsJCQkJCWNvb2xpbmctZGV2aWNlID0KPiArCQkJCQkJPCZjcHVfYjIgVEhFUk1BTF9OT19M
SU1JVCBUSEVSTUFMX05PX0xJTUlUPiwKPiArCQkJCQkJPCZjcHVfYjMgVEhFUk1BTF9OT19MSU1J
VCBUSEVSTUFMX05PX0xJTUlUPjsKPiArCQkJCQljb250cmlidXRpb24gPSA8MTAyND47Cj4gKwkJ
CQl9Owo+ICsJCQl9Owo+ICsJCX07Cj4gKwo+ICsJCS8qIHNlbnNvciBiZXR3ZWVuIHRoZSBmb3Vy
IEE1NSBjb3JlcyAqLwo+ICsJCWxpdHRsZV9jb3JlX3RoZXJtYWw6IGxpdHRsZWNvcmUtdGhlcm1h
bCB7Cj4gKwkJCXBvbGxpbmctZGVsYXktcGFzc2l2ZSA9IDwyMD47Cj4gKwkJCXBvbGxpbmctZGVs
YXkgPSA8MTAwMD47CgpUaGUgZHJpdmVyIGlzIGludGVycnVwdCBkcml2ZW4uIE5vIG5lZWQgdG8g
cG9sbC4KCj4gKwkJCXRoZXJtYWwtc2Vuc29ycyA9IDwmdHNhZGMgMz47Cj4gKwo+ICsJCQl0cmlw
cyB7Cj4gKwkJCQlsaXR0bGVjb3JlX2FsZXJ0OiBsaXR0bGVjb3JlLWFsZXJ0IHsKPiArCQkJCQl0
ZW1wZXJhdHVyZSA9IDw4NTAwMD47Cj4gKwkJCQkJaHlzdGVyZXNpcyA9IDwyMDAwPjsKPiArCQkJ
CQl0eXBlID0gInBhc3NpdmUiOwo+ICsJCQkJfTsKPiArCQkJCWxpdHRsZWNvcmVfY3JpdDogbGl0
dGxlY29yZS1jcml0IHsKPiArCQkJCQl0ZW1wZXJhdHVyZSA9IDwxMTUwMDA+Owo+ICsJCQkJCWh5
c3RlcmVzaXMgPSA8MjAwMD47Cj4gKwkJCQkJdHlwZSA9ICJjcml0aWNhbCI7Cj4gKwkJCQl9Owo+
ICsJCQl9Owo+ICsJCQljb29saW5nLW1hcHMgewo+ICsJCQkJbWFwMiB7Cj4gKwkJCQkJdHJpcCA9
IDwmbGl0dGxlY29yZV9hbGVydD47Cj4gKwkJCQkJY29vbGluZy1kZXZpY2UgPQo+ICsJCQkJCQk8
JmNwdV9sMCBUSEVSTUFMX05PX0xJTUlUIFRIRVJNQUxfTk9fTElNSVQ+LAo+ICsJCQkJCQk8JmNw
dV9sMSBUSEVSTUFMX05PX0xJTUlUIFRIRVJNQUxfTk9fTElNSVQ+LAo+ICsJCQkJCQk8JmNwdV9s
MiBUSEVSTUFMX05PX0xJTUlUIFRIRVJNQUxfTk9fTElNSVQ+LAo+ICsJCQkJCQk8JmNwdV9sMyBU
SEVSTUFMX05PX0xJTUlUIFRIRVJNQUxfTk9fTElNSVQ+Owo+ICsJCQkJCWNvbnRyaWJ1dGlvbiA9
IDwxMDI0PjsKPiArCQkJCX07Cj4gKwkJCX07Cj4gKwkJfTsKPiArCj4gKwkJLyogc2Vuc29yIG5l
YXIgdGhlIFBEX0NFTlRFUiBwb3dlciBkb21haW4gKi8KPiArCQljZW50ZXJfdGhlcm1hbDogY2Vu
dGVyLXRoZXJtYWwgewo+ICsJCQlwb2xsaW5nLWRlbGF5LXBhc3NpdmUgPSA8MjA+Owo+ICsJCQlw
b2xsaW5nLWRlbGF5ID0gPDEwMDA+OwoKU2FtZSBjb21tZW50IGFzIGFib3ZlIGZvciAic29jLXRo
ZXJtYWwiCgo+ICsJCQl0aGVybWFsLXNlbnNvcnMgPSA8JnRzYWRjIDQ+Owo+ICsKPiArCQkJdHJp
cHMgewo+ICsJCQkJY2VudGVyX2NyaXQ6IGNlbnRlci1jcml0IHsKPiArCQkJCQl0ZW1wZXJhdHVy
ZSA9IDwxMTUwMDA+Owo+ICsJCQkJCWh5c3RlcmVzaXMgPSA8MjAwMD47Cj4gKwkJCQkJdHlwZSA9
ICJjcml0aWNhbCI7Cj4gKwkJCQl9Owo+ICsJCQl9Owo+ICsJCX07Cj4gKwo+ICsJCWdwdV90aGVy
bWFsOiBncHUtdGhlcm1hbCB7Cj4gKwkJCXBvbGxpbmctZGVsYXktcGFzc2l2ZSA9IDwyMD47Cj4g
KwkJCXBvbGxpbmctZGVsYXkgPSA8MTAwMD47CgpTYW1lIGNvbW1lbnQgYXMgYWJvdmUgZm9yICJz
b2MtdGhlcm1hbCIKCgoKPiArCQkJdGhlcm1hbC1zZW5zb3JzID0gPCZ0c2FkYyA1PjsKPiArCj4g
KwkJCXRyaXBzIHsKPiArCQkJCWdwdV9jcml0OiBncHUtY3JpdCB7Cj4gKwkJCQkJdGVtcGVyYXR1
cmUgPSA8MTE1MDAwPjsKPiArCQkJCQloeXN0ZXJlc2lzID0gPDIwMDA+Owo+ICsJCQkJCXR5cGUg
PSAiY3JpdGljYWwiOwo+ICsJCQkJfTsKPiArCQkJfTsKPiArCQl9Owo+ICsKPiArCQlucHVfdGhl
cm1hbDogbnB1LXRoZXJtYWwgewo+ICsJCQlwb2xsaW5nLWRlbGF5LXBhc3NpdmUgPSA8MjA+Owo+
ICsJCQlwb2xsaW5nLWRlbGF5ID0gPDEwMDA+OwoKU2FtZSBjb21tZW50IGFzIGFib3ZlIGZvciAi
c29jLXRoZXJtYWwiCgoKPiArCQkJdGhlcm1hbC1zZW5zb3JzID0gPCZ0c2FkYyA2PjsKPiArCj4g
KwkJCXRyaXBzIHsKPiArCQkJCW5wdV9jcml0OiBucHUtY3JpdCB7Cj4gKwkJCQkJdGVtcGVyYXR1
cmUgPSA8MTE1MDAwPjsKPiArCQkJCQloeXN0ZXJlc2lzID0gPDIwMDA+Owo+ICsJCQkJCXR5cGUg
PSAiY3JpdGljYWwiOwo+ICsJCQkJfTsKPiArCQkJfTsKPiArCQl9Owo+ICsJfTsKPiArCj4gICAJ
c2FyYWRjOiBhZGNAZmVjMTAwMDAgewo+ICAgCQljb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzU4
OC1zYXJhZGMiOwo+ICAgCQlyZWcgPSA8MHgwIDB4ZmVjMTAwMDAgMHgwIDB4MTAwMDA+OwoKLS0g
CjxodHRwOi8vd3d3LmxpbmFyby5vcmcvPiBMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0
d2FyZSBmb3IgQVJNIFNvQ3MKCkZvbGxvdyBMaW5hcm86ICA8aHR0cDovL3d3dy5mYWNlYm9vay5j
b20vcGFnZXMvTGluYXJvPiBGYWNlYm9vayB8CjxodHRwOi8vdHdpdHRlci5jb20vIyEvbGluYXJv
b3JnPiBUd2l0dGVyIHwKPGh0dHA6Ly93d3cubGluYXJvLm9yZy9saW5hcm8tYmxvZy8+IEJsb2cK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==

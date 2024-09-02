Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58DE2CD13CF
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Sep 2024 11:01:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=idaOvLvQq+udnbIKI+/rNS3LVlZOxKunBP5JBHIo460=; b=wOZ5EtQubDlJ0s
	ovQTUJweWV5UalDdr/cNgi6sLK6SUt4fov4c6TTWyT+9ioshKCzehr+2SOkP8Q9MuKG3riYX1EQwW
	PrP8Cq1f3nTyeXqcPNprULR0lApKB12IG2UfQYU3bdpzUGalhI4PvF5TC+jilG3seHZBR4bzYDg1I
	DZ+Ag6OyoAS4HeE41Y7DhjcX3PzJThM4Pyk1D+YIwd8Cph2hS0ZTzIAT3z7eo2oU9JOhNSoCsF76I
	KrszDk8z7Son9/MAQANkGDXw2dDfMp1EOGSj7Rgc2AnN0v8GH6bUQ9v7Yx17/VtoyZ5rOVBpw9+rA
	ir7o7THY89n+fupM6jPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sl4ny-0000000E1rv-1FMe;
	Mon, 02 Sep 2024 11:01:06 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sl4mb-0000000E1VO-2Bpy
	for linux-rockchip@lists.infradead.org;
	Mon, 02 Sep 2024 10:59:43 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-42c53379a3fso2691645e9.0
        for <linux-rockchip@lists.infradead.org>; Mon, 02 Sep 2024 03:59:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725274780; x=1725879580; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=IE7X1McDmWnrZdJLkqa3vbwEqyyfI/WuVigow1tXc8U=;
        b=ubrlI5b4qtKZZiRZgoO4P/VK7/s4N8zg3TMBm6Ys/P0QEY9KP8CYDF/N0qTqD4VhlV
         M27+uGMKbClTTKscHztM16O/NHi2yoFwCGHmPfq5CDRL10OUCJMg44IPtY0hn6rpbfxu
         xSsoMbZJ3qJ6TnJC5UCixHqb9B1WmvgmErfX28ET07qP8MJ8FCwKFmACb5fAU72zYyVG
         G09G/H1KBg3W4HxUfApWndkrsM+ukdDowk6/0HmWel2TVp6jUjQ5V1KXI0CdYAsvDLsP
         AYYnFQUQuoMaMGu9xptK9Su14KxEj6vcpNg+UFq/FIO0V3j3gAA0pBWhEcVGUKH0ldhV
         YvpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725274780; x=1725879580;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IE7X1McDmWnrZdJLkqa3vbwEqyyfI/WuVigow1tXc8U=;
        b=UwJ51Qv94/0/x6+0xRKbJhZBKwj/w/4h4WTS6tTUHSBq7O8xgAw03o1Ki1DwrllkDA
         HBtDbB2C/UeQxeNmYTzB+Vet3HkIKfqf2lHDKQEjJl+LUvQpo1l9CsVMW67QZ6tLqOvq
         rXN7ISCOJCtj3YzYymLjLrPwC733nroBXY3WpUIQCgTiRovaAIlBwDJFHMv4WghCM0Bf
         4Aw+bpA+6lTdIgkOuSojwWzL19MlpyelM9DoVTsMcdI3QGDpj1ZcmcQK+BvttgHS2vrz
         1U3deV5KUoIs2YDejZGPoX1PPtCSTLAEUaY8pyjFaIaaEgeUjt3mWBozAGDMkIJACv1p
         vh5Q==
X-Forwarded-Encrypted: i=1; AJvYcCWLwlWmslwrE/YBxXvzCfAyMssBASNZ4S/UwHH2z6gZgJtPCTttDgrZXiINiujuvP8JZpJYykxEAHwPT9nKcw==@lists.infradead.org
X-Gm-Message-State: AOJu0YyuMKBoRLnRrxj8tozzJQdQHIRoLgrpDgMzru05DBLIjy62noSb
	TK52neqEXKcsN3tfDK8GZ1W3EPa347lnTeExnkZoZP+UwPN7sQOqczKAEmsnqXQ=
X-Google-Smtp-Source: AGHT+IHMSQcNGlrslcjYxClbm93xqtFH4EJ8YFSlB2X890aLSJu8AKnz6Np+du645tZJoW+16AJrhA==
X-Received: by 2002:a05:600c:1554:b0:425:6962:4253 with SMTP id 5b1f17b1804b1-42bbb43d5e4mr40381915e9.4.1725274779523;
        Mon, 02 Sep 2024 03:59:39 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.82])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42ba639671dsm169616265e9.5.2024.09.02.03.59.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Sep 2024 03:59:38 -0700 (PDT)
Message-ID: <842861a7-861e-42d5-80c2-854ee22707ec@linaro.org>
Date: Mon, 2 Sep 2024 12:59:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] gpio: rockchip: fix OF node leak in probe()
To: Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Linus Walleij <linus.walleij@linaro.org>, Heiko Stuebner
 <heiko@sntech.de>, Jianqun Xu <jay.xu@rock-chips.com>,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240826150832.65657-1-krzysztof.kozlowski@linaro.org>
 <CAMRc=MfzApzPVauqTm75PTGogRsW=cHH_zu_mCKnysvDTY8R7Q@mail.gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <CAMRc=MfzApzPVauqTm75PTGogRsW=cHH_zu_mCKnysvDTY8R7Q@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240902_035941_613428_A510F685 
X-CRM114-Status: GOOD (  15.30  )
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

T24gMDIvMDkvMjAyNCAxMjoyMywgQmFydG9zeiBHb2xhc3pld3NraSB3cm90ZToKPiBPbiBNb24s
IEF1ZyAyNiwgMjAyNCBhdCA1OjA44oCvUE0gS3J6eXN6dG9mIEtvemxvd3NraQo+IDxrcnp5c3p0
b2Yua296bG93c2tpQGxpbmFyby5vcmc+IHdyb3RlOgo+Pgo+PiBEcml2ZXIgY29kZSBpcyBsZWFr
aW5nIE9GIG5vZGUgcmVmZXJlbmNlIGZyb20gb2ZfZ2V0X3BhcmVudCgpIGluCj4+IHByb2JlKCku
Cj4+Cj4+IEZpeGVzOiA5MzZlZTI2NzVlZWUgKCJncGlvL3JvY2tjaGlwOiBhZGQgZHJpdmVyIGZv
ciByb2NrY2hpcCBncGlvIikKPj4gU2lnbmVkLW9mZi1ieTogS3J6eXN6dG9mIEtvemxvd3NraSA8
a3J6eXN6dG9mLmtvemxvd3NraUBsaW5hcm8ub3JnPgo+PiAtLS0KPj4gIGRyaXZlcnMvZ3Bpby9n
cGlvLXJvY2tjaGlwLmMgfCAxICsKPj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+
Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncGlvL2dwaW8tcm9ja2NoaXAuYyBiL2RyaXZlcnMv
Z3Bpby9ncGlvLXJvY2tjaGlwLmMKPj4gaW5kZXggMGJkMzM5ODEzMTEwLi4zNjVhYjk0Nzk4M2Mg
MTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3Bpby9ncGlvLXJvY2tjaGlwLmMKPj4gKysrIGIvZHJp
dmVycy9ncGlvL2dwaW8tcm9ja2NoaXAuYwo+PiBAQCAtNzEzLDYgKzcxMyw3IEBAIHN0YXRpYyBp
bnQgcm9ja2NoaXBfZ3Bpb19wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+PiAg
ICAgICAgICAgICAgICAgcmV0dXJuIC1FTk9ERVY7Cj4+Cj4+ICAgICAgICAgcGN0bGRldiA9IG9m
X3BpbmN0cmxfZ2V0KHBjdGxucCk7Cj4+ICsgICAgICAgb2Zfbm9kZV9wdXQocGN0bG5wKTsKPj4g
ICAgICAgICBpZiAoIXBjdGxkZXYpCj4+ICAgICAgICAgICAgICAgICByZXR1cm4gLUVQUk9CRV9E
RUZFUjsKPj4KPj4gLS0KPj4gMi40My4wCj4+Cj4gCj4gSG93IGFib3V0IHVzaW5nIF9fZnJlZShk
ZXZpY2Vfbm9kZSk/CgpJIGNhbiBidXQgSSBmaW5kIGl0IGxlc3MgcmVhZGFibGUuIEV4aXN0aW5n
IGNvZGUsIGFmdGVyIG15IHBhdGNoLCBpcwpwcmV0dHkgc3RyYWlnaHRmb3J3YXJkOgoKICAgICAg
ICBzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wID0gZGV2LT5vZl9ub2RlOwogICAgICAgIHN0cnVjdCBk
ZXZpY2Vfbm9kZSAqcGN0bG5wID0gb2ZfZ2V0X3BhcmVudChucCk7CiAgICAgICAgc3RydWN0IHBp
bmN0cmxfZGV2ICpwY3RsZGV2ID0gTlVMTDsKICAgICAgICAuLi4KCiAgICAgICAgaWYgKCFucCB8
fCAhcGN0bG5wKQogICAgICAgICAgICAgICAgcmV0dXJuIC1FTk9ERVY7CgogICAgICAgIHBjdGxk
ZXYgPSBvZl9waW5jdHJsX2dldChwY3RsbnApOwogICAgICAgIG9mX25vZGVfcHV0KHBjdGxucCk7
CiAgICAgICAgaWYgKCFwY3RsZGV2KQogICAgICAgICAgICAgICAgcmV0dXJuIC1FUFJPQkVfREVG
RVI7CgoKU28gX19mcmVlKCkgd291bGQgc2FmZSBvbmx5IG9uZSBvZl9ub2RlX3B1dCgpIGFuZCBn
cm93IGl0cyBzY29wZQpzaWduaWZpY2FudGx5LiBBYm92ZSBwYXR0ZXJuIC0gb2ZfZ2V0ICsgdXNl
ICsgb2Zfbm9kZV9wdXQgLSBpcyBwcmV0dHkKc2VsZi1jb250YWluZWQgYW5kIHJlYWRhYmxlLgoK
QmVzdCByZWdhcmRzLApLcnp5c3p0b2YKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

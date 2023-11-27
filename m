Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7A6CC0755A
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Nov 2023 09:27:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NFEWuoSu8nCHRim6CYP+WJI1Y0QoXAJ2PtUdBZO9O7k=; b=eAD7Tmt7ljnOTg
	VOiumQ8ndM6a5RcNanJZSn3C7thZGsZMK9MSRzfq+R8AdNnm9e+uULwy8HgSXeLGxEefORqN0R0cy
	mIy+kaFro93ldIv6poRvhMNXvQAigiEUK4yRckhyZ3Y68FgzBYDpNdnrrmYIgvQGRdlwbn67SP9XY
	S2RqW7CSlKAAMyy6mScRwq2JJgWbNqfWzF0901aHzpIr0ltLKNcO0SNys2E2L1eGjkZyWZuG3EdUL
	KAWm06XM4Zp5vGMAGXmchQnVaOpzGcZmTbQict8EGOWy1IlLlEw0LwQMj5Zankgl4sjEL5kI3O0+P
	e+5l+A8HaFrm8m4/8H0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7Xu9-001yHJ-39;
	Mon, 27 Nov 2023 09:27:49 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7Xu5-001yGP-2A
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Nov 2023 09:27:47 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-a00d5b0ec44so544857066b.0
        for <linux-rockchip@lists.infradead.org>; Mon, 27 Nov 2023 01:27:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701077264; x=1701682064; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lrmaHyuEvzQlfjveyzKyXYh/y9m2kH1eqL1NoD2v4Oc=;
        b=CoLnrsAh3XEK7Ss/HUtH4apaDUm7QhRw4KGZoUIdDR/GAf1ZJS0806A9zUjX3hDUuo
         7rOOy1k/t8MyCUvA530nwlFxgWMFXMhu6jshWL23EWxBwEu0AY/5os5++WNqO41FnrjW
         buc8ENbVaNE1sZ6v/6ZIfIdQQwrVAOHqmJs42rX8ppVlFQGkCC6734eTrnqZm4C/UY5D
         bPaCYC/KwGs7qJMeua3pNUcO9WwBXHz0wYwVXmqr1ZEJyLyRWFaxhia7NzBv4Rg1ZW83
         o84k4RcEshfOY9qSuIMA6C7TEhdI4pY1f/yR2o247bRP0HKl48K4qHcl8V7ko2fzEC4B
         8cIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701077264; x=1701682064;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lrmaHyuEvzQlfjveyzKyXYh/y9m2kH1eqL1NoD2v4Oc=;
        b=kAEHzrc/i6Mzf40jbNleN36QYzROcSJpzqfDXqIdljGSMwbXM1Jptoj9Gc4EvHp8OK
         xf79GESygKfe9ji4JdxXfaU9AQ2BEuEjW0Ga2/AdYJVQAGQg/A//7mxXKgDtswUT63xT
         bi1cKV1RfxTfdBW8J2lOiUYRpGc5I9ynOO5fR1W0nQUvS3qfEgczkvpg+WvH6eZm7/yh
         nZ25BaP4eYYf8+M0WDZnC34kO+WaNW96O2Z84m3wLYKavoUNC+gqwfPvoF6RCuwf3EJx
         T9qyChm5++N2SKjVR9ts24Ty7IoNKB86AJHXklB365M3G8f1uwhspmykYK3rJwChI0V9
         5deg==
X-Gm-Message-State: AOJu0YwhRJ9/cVrBlF8iHaedemEdCScKoYqj7oYWvaFtXqcnk++OG+4L
	8GYv3UhjosibRzF/JzqgSAiNZg==
X-Google-Smtp-Source: AGHT+IFamcLrDlDTk6+K564OMPM/StUOpJThaMJeZcT9DkKuGh7+NPZH8VubdIBK2SAi9n5PGIjpRw==
X-Received: by 2002:a17:906:5195:b0:a03:9a89:5aaf with SMTP id y21-20020a170906519500b00a039a895aafmr7139056ejk.6.1701077263760;
        Mon, 27 Nov 2023 01:27:43 -0800 (PST)
Received: from [192.168.1.20] ([178.197.223.109])
        by smtp.gmail.com with ESMTPSA id xo25-20020a170907bb9900b00a0b6541b592sm3016866ejc.88.2023.11.27.01.27.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Nov 2023 01:27:43 -0800 (PST)
Message-ID: <7b8a830d-42d0-4220-b9fe-3f5fff43e74d@linaro.org>
Date: Mon, 27 Nov 2023 10:27:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/9] ARM: dts: rockchip: rv1126: Add i2c2 nodes
Content-Language: en-US
To: Tim Lunn <tim@feathertop.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org
Cc: Jagan Teki <jagan@edgeble.ai>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
References: <20231122122232.952696-1-tim@feathertop.org>
 <20231122122232.952696-5-tim@feathertop.org>
 <813224c2-398d-4c2d-8909-1839ce63be60@linaro.org> <4762834.KRxA6XjA2N@diego>
 <b0c637f5-5abf-420b-8b02-839eba68799e@linaro.org>
 <d5fef204-a4db-4452-9e22-8928b9db54d5@feathertop.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <d5fef204-a4db-4452-9e22-8928b9db54d5@feathertop.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231127_012745_734034_E84F34D6 
X-CRM114-Status: GOOD (  15.33  )
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

T24gMjcvMTEvMjAyMyAxMDoyMywgVGltIEx1bm4gd3JvdGU6Cj4gSGkKPiAKPiBPbiAxMS8yNy8y
MyAxNzo1MiwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPj4gT24gMjcvMTEvMjAyMyAwMDow
NiwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4+PiBIaSBLcnp5c3p0b2YsCj4+Pgo+Pj4gQW0gTWl0
dHdvY2gsIDIyLiBOb3ZlbWJlciAyMDIzLCAxMzoyOTo0NyBDRVQgc2NocmllYiBLcnp5c3p0b2Yg
S296bG93c2tpOgo+Pj4+IE9uIDIyLzExLzIwMjMgMTM6MjIsIFRpbSBMdW5uIHdyb3RlOgo+Pj4+
PiBBZGQgaTJjMiBub2RlIGFuZCBpMmMyX3hmZXIgcGluY3RybCBmb3IgUm9ja2NoaXAgUlYxMTI2
Cj4+Pj4+Cj4+Pj4+IFNpZ25lZC1vZmYtYnk6IFRpbSBMdW5uIDx0aW1AZmVhdGhlcnRvcC5vcmc+
Cj4+Pj4+IC0tLQo+Pj4+Pgo+Pj4+PiAobm8gY2hhbmdlcyBzaW5jZSB2MSkKPj4+Pj4KPj4+Pj4g
ICBhcmNoL2FybS9ib290L2R0cy9yb2NrY2hpcC9ydjExMjYtcGluY3RybC5kdHNpIHwgMTAgKysr
KysrKysrKwo+Pj4+PiAgIGFyY2gvYXJtL2Jvb3QvZHRzL3JvY2tjaGlwL3J2MTEyNi5kdHNpICAg
ICAgICAgfCAxNSArKysrKysrKysrKysrKysKPj4+Pj4gICAyIGZpbGVzIGNoYW5nZWQsIDI1IGlu
c2VydGlvbnMoKykKPj4+Pj4KPj4+Pj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRzL3Jv
Y2tjaGlwL3J2MTEyNi1waW5jdHJsLmR0c2kgYi9hcmNoL2FybS9ib290L2R0cy9yb2NrY2hpcC9y
djExMjYtcGluY3RybC5kdHNpCj4+Pj4+IGluZGV4IDRmODViN2IzZmM0Yy4uMTY3YTQ4YWZhM2E0
IDEwMDY0NAo+Pj4+PiAtLS0gYS9hcmNoL2FybS9ib290L2R0cy9yb2NrY2hpcC9ydjExMjYtcGlu
Y3RybC5kdHNpCj4+Pj4+ICsrKyBiL2FyY2gvYXJtL2Jvb3QvZHRzL3JvY2tjaGlwL3J2MTEyNi1w
aW5jdHJsLmR0c2kKPj4+Pj4gQEAgLTg3LDYgKzg3LDE2IEBAIGkyYzBfeGZlcjogaTJjMC14ZmVy
IHsKPj4+Pj4gICAJCQkJPDAgUktfUEI1IDEgJnBjZmdfcHVsbF9ub25lX2Rydl9sZXZlbF8wX3Nt
dD47Cj4+Pj4+ICAgCQl9Owo+Pj4+PiAgIAl9Owo+Pj4+PiArCWkyYzIgewo+Pj4+PiArCQkvb21p
dC1pZi1uby1yZWYvCj4+Pj4+ICsJCWkyYzJfeGZlcjogaTJjMi14ZmVyIHsKPj4+Pj4gKwkJCXJv
Y2tjaGlwLHBpbnMgPQo+Pj4+PiArCQkJCS8qIGkyYzJfc2NsICovCj4+Pj4+ICsJCQkJPDAgUktf
UEMyIDEgJnBjZmdfcHVsbF9ub25lX2Rydl9sZXZlbF8wX3NtdD4sCj4+Pj4+ICsJCQkJLyogaTJj
Ml9zZGEgKi8KPj4+Pj4gKwkJCQk8MCBSS19QQzMgMSAmcGNmZ19wdWxsX25vbmVfZHJ2X2xldmVs
XzBfc210PjsKPj4+Pj4gKwkJfTsKPj4+Pj4gKwl9Owo+Pj4+PiAgIAlwd20yIHsKPj4+Pj4gICAJ
CS9vbWl0LWlmLW5vLXJlZi8KPj4+Pj4gICAJCXB3bTJtMF9waW5zOiBwd20ybTAtcGlucyB7Cj4+
Pj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybS9ib290L2R0cy9yb2NrY2hpcC9ydjExMjYuZHRzaSBi
L2FyY2gvYXJtL2Jvb3QvZHRzL3JvY2tjaGlwL3J2MTEyNi5kdHNpCj4+Pj4+IGluZGV4IDZjNWM5
MjhmMDZjNy4uY2YxZGY3NWRmNDE4IDEwMDY0NAo+Pj4+PiAtLS0gYS9hcmNoL2FybS9ib290L2R0
cy9yb2NrY2hpcC9ydjExMjYuZHRzaQo+Pj4+PiArKysgYi9hcmNoL2FybS9ib290L2R0cy9yb2Nr
Y2hpcC9ydjExMjYuZHRzaQo+Pj4+PiBAQCAtMjEsNiArMjEsNyBAQCAvIHsKPj4+Pj4gICAKPj4+
Pj4gICAJYWxpYXNlcyB7Cj4+Pj4+ICAgCQlpMmMwID0gJmkyYzA7Cj4+Pj4+ICsJCWkyYzIgPSAm
aTJjMjsKPj4+PiBObywgdGhpcyBzaG91bGQgYmUgcGVyLWJvYXJkIHRvIG1hdGNoIGJvYXJkIGxh
YmVsaW5nL3NjaGVtYXRpY3MuCj4+PiBBdCBsZWFzdCBmb3IgaTJjLCB1YXJ0cyBhbmQgaS5lLiBz
cGkgLi4uIFJvY2tjaGlwIG1hbnVhbHMsIHBpbiBuYW1pbmdzCj4+PiBhbmQgYWxzbyBhbGwgYm9h
cmQgc2NoZW1hdGljcyBJJ3ZlIHNlZW4gc28gZmFyIGFyZSB2ZXJ5IGNvbnNpc3RlbnQgZm9yCj4+
PiB0aGVzZSAuLi4gaTJjMiBmb3IgZXhhbXBsZSBpcyBsYWJsZWQgaTJjMiBib3RoIGluIHRoZSBw
aW5zIGluIHRoZSBzb2NzCj4+PiBhbmQgYWxzbyBpbiB0aGUgYm9hcmQtc2NoZW1hdGljcyB1c2lu
ZyB0aGVtLgo+Pj4KPj4+IFNvIHdoaWxlIEkgY2FuIGFncmVlIHRoYXQgdGhpbmdzIGxpa2UgbW1j
LWFsaWFzZXMgbWlnaHQgYmUgYm9hcmQtc3BlY2lmaWMsCj4+PiBJIGRvIHRoaW5rIGFsaWFzZXMg
Zm9yIHRoZSBjb3JlIGJ1c3NlcyBzaG91bGQgYmUgYWJsZSB0byBsaXZlIGluIHRoZSBzb2MgZHRz
aQo+Pj4gYXMgZm9yIGFsbCBSb2NrY2hpcCBTb0NzIHNvIGZhcj8KPj4gSWYgeW91IGRvIG5vdCBs
aXN0IGhlcmUgYWxsIGFsaWFzZXMsIGl0IGlzIGFscmVhZHkgYm9hcmQtc3BlY2lmaWMsIGlzbid0
IGl0Pwo+Pgo+PiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1yb2NrY2hpcC9DQUs4UDNh
MjVpWWtzdWJDblFiMS1lNXlqPWNyRXNLMzdSQjlIbjRaR1pNd2NWVnJHN2dAbWFpbC5nbWFpbC5j
b20vCj4gSSBoYWQgb25seSBhZGRlZCBhbGlhc2VzIGZvciBub2RlcyB0aGF0IGFyZSBpbXBsZW1l
bnRlZC4gUlYxMTI2IGhhcyA2IAo+IGkyYyBidXNzZXMgYnV0IHNvIGZhciBub3QgYWxsIHRoZXNl
IGV4aXN0IGluIHRoZSBzb2MuZHRzaS4KPiAKCk9LLCB0aGF0IHdvdWxkIGV4cGxhaW4gd2h5IHlv
dSBoYXZlIG9ubHkgdHdvLiBBbnl3YXksIGl0IGlzIGp1c3QgZ2VuZXJpYwpndWlkZWxpbmUsIHNv
IHVwIHRvIEhlaWtvIHdoYXQgdG8gZG8gd2l0aCBpdC4KCkJlc3QgcmVnYXJkcywKS3J6eXN6dG9m
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=

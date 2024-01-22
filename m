Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27327C47DD3
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Jan 2024 00:05:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dZg/kyo+aGbvjbqnp0r/nTMU+IfS9AZ6uLpzp8aDRpY=; b=ryYODsMzLY0oSH
	YAuSZwCFdcJ4HfaGgSunPrYZ1NsUzf7pgziiXB/NFmf3SoAw8A55WFvzPCWlC3a1Brc/5AG8sBD1r
	V3ub3n/+XNcZh2hKMdi8YJ4UiiApVGMro85rIK3gP3DBBDpG6b9wYu5swYgyrjA0HBf4HBvcTlZma
	NNkvLrEPcJRxirTvffFhAMwYtVHdzs6rnmw9qYEL2mCOSN0y4y2SFeP2MOARNksh0FMpVvPKazFup
	hIXd56k6ENsTru6ynZQfy0kmmj7IlwNd8O4ygd2af2FoUEmBAjeWhKbYwREl1Om5eYimSnMiSGHoQ
	mifM9fAE5TkOWkBhgaMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rRho2-00AER5-1M;
	Mon, 22 Jan 2024 00:04:50 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rRhnw-00AEQ5-2F
	for linux-rockchip@lists.infradead.org;
	Mon, 22 Jan 2024 00:04:48 +0000
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-337d90030bfso2363441f8f.2
        for <linux-rockchip@lists.infradead.org>; Sun, 21 Jan 2024 16:04:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705881880; x=1706486680; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zlEZyotr7lQewRwJXfl4AVVs7IqSe9mLqbTp7FrGZ4c=;
        b=MUz2W0gCYR6/1PLtRQYh5/gWknCrB7zo9NMmovBa2xJkqBcdtPJb0KX0AwhKAdlL+r
         wBdOymBX9vf6sIDNtwKRyOaOxt/U54Rsl1IB7zYi0uUs+dSQsk0CTRpiuQKshIqaN7es
         cNvl3c8lUOLcAn26S/Iv+Ztl7rhbnmXwwUBOAicxTQ86ZXqdoGSgmMRZ9w4Lw336XTcd
         Hsv+381Npaqjet+HrzN/wvGdie4d5Yq+feBxHtgc1jIKLmWRQAIoavD2MGGDCOsE1ok2
         dRWTJcYTrPadtADcM5WrWxbIXI+1S8SHsfbXwOlQHBsp+blwcCWNQppIoQWwKKPHs0Z/
         Ljjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705881880; x=1706486680;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zlEZyotr7lQewRwJXfl4AVVs7IqSe9mLqbTp7FrGZ4c=;
        b=Ctpcipe7vSaQl2fySfTixnlhRZr0+jo9q9fTv/VYyA1pOMB8LhnE5b+LyHe7ciBvJr
         JCH5L9tuOwnEFcUAzo6hbzb2BQ2yv/GyuZ/NmUs+NWhH7sN2rEeT5OsYsqQ656Zw73H3
         YO/JaiDP/+rNPbRkIah6x/jpWc0IXEOeWT+S/h6EE6jTQSzZX/W5yF0O73nyRyUAEzZF
         OPoaQEbCmJja1T5bO6QGFyKLXFxj3I7GWc6wko3YYZDXix9e+/9hsR8l06HQJyDaDqhn
         zdBXUWMWuABRKELuy/7nxC4uznPW4zZxYGemB4seZeIO6qRLbqxIYPwyxbWBI9VLPYA5
         M08w==
X-Gm-Message-State: AOJu0YwRJdzTeczNlCsFt1L2VLpeEsckcMeAzEnbLBPf29KJ/LCeHgde
	DVSq8ZkEzUCci+kGm5s9wLZuYZZc84UBrw8tr2SVjtLVIMe9b1WB9U0caBHYtoA=
X-Google-Smtp-Source: AGHT+IGRUcJnOFsQp7DY+zsXgFaLMfVCir7fUcEIhdDpS5U3lN7oKicfCyySWRw9DEHt6YVffn2IfQ==
X-Received: by 2002:a05:6000:142:b0:337:d4ca:d754 with SMTP id r2-20020a056000014200b00337d4cad754mr910481wrx.263.1705881879492;
        Sun, 21 Jan 2024 16:04:39 -0800 (PST)
Received: from ?IPV6:2a05:6e02:1041:c10:371e:2a86:62f0:bc48? ([2a05:6e02:1041:c10:371e:2a86:62f0:bc48])
        by smtp.googlemail.com with ESMTPSA id s15-20020a5d6a8f000000b00336898daceasm10011000wru.96.2024.01.21.16.04.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 21 Jan 2024 16:04:39 -0800 (PST)
Message-ID: <e45f72c2-0b5b-44dd-ad39-e7e5bd17ae26@linaro.org>
Date: Mon, 22 Jan 2024 01:04:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: rockchip: enable built-in thermal
 monitoring on rk3588
Content-Language: en-US
To: Alexey Charkov <alchark@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>,
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
 <c517f26c-34bc-4b99-b744-8e2549cd28b5@linaro.org>
 <CABjd4YxYpsvf+ghHTn1z8TAZxQb-2dFOQaVSm8zHKSSWOokqww@mail.gmail.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <CABjd4YxYpsvf+ghHTn1z8TAZxQb-2dFOQaVSm8zHKSSWOokqww@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240121_160444_798072_2011DBA3 
X-CRM114-Status: GOOD (  23.51  )
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

CkhpIEFsZXhleSwKCgpPbiAyMS8wMS8yMDI0IDIwOjU3LCBBbGV4ZXkgQ2hhcmtvdiB3cm90ZToK
PiBPbiBGcmksIEphbiAxOSwgMjAyNCBhdCA4OjIx4oCvUE0gRGFuaWVsIExlemNhbm8KPiA8ZGFu
aWVsLmxlemNhbm9AbGluYXJvLm9yZz4gd3JvdGU6Cj4gSGVsbG8gRGFuaWVsLAo+IAo+IFRoYW5r
cyBhIGxvdCBmb3IgeW91ciByZXZpZXcgYW5kIGNvbW1lbnRzISBQbGVhc2Ugc2VlIHNvbWUgcmVm
bGVjdGlvbnMgYmVsb3cuCj4gCj4+IE9uIDA5LzAxLzIwMjQgMjA6MTksIEFsZXhleSBDaGFya292
IHdyb3RlOgo+Pj4gSW5jbHVkZSB0aGVybWFsIHpvbmVzIGluZm9ybWF0aW9uIGluIGRldmljZSB0
cmVlIGZvciByazM1ODggdmFyaWFudHMKPj4+IGFuZCBlbmFibGUgdGhlIGJ1aWx0LWluIHRoZXJt
YWwgc2Vuc2luZyBBREMgb24gUkFEWEEgUm9jayA1Qgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IEFs
ZXhleSBDaGFya292IDxhbGNoYXJrQGdtYWlsLmNvbT4KPj4+IC0tLQo+Pj4gQ2hhbmdlcyBpbiB2
MjoKPj4+ICAgIC0gRHJvcHBlZCByZWR1bmRhbnQgY29tbWVudHMKPj4+ICAgIC0gSW5jbHVkZWQg
YWxsIENQVSBjb3JlcyBpbiBjb29saW5nIG1hcHMKPj4+ICAgIC0gU3BsaXQgY29vbGluZyBtYXBz
IGludG8gbW9yZSBncmFudWxhciBvbmVzIHV0aWxpemluZyBUU0FEQwo+Pj4gICAgICBjaGFubmVs
cyAxLTMgd2hpY2ggbWVhc3VyZSB0ZW1wZXJhdHVyZSBieSBzZXBhcmF0ZSBDUFUgY2x1c3RlcnMK
Pj4+ICAgICAgaW5zdGVhZCBvZiBjaGFubmVsIDAgd2hpY2ggbWVhc3VyZXMgdGhlIGNlbnRlciBv
ZiB0aGUgU29DIGRpZQo+Pj4gLS0tCj4+PiAgICAuLi4vYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4
LXJvY2stNWIuZHRzICAgICAgfCAgIDQgKwo+Pj4gICAgYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazM1ODhzLmR0c2kgICAgIHwgMTUxICsrKysrKysrKysrKysrKysrKwo+Pj4gICAgMiBm
aWxlcyBjaGFuZ2VkLCAxNTUgaW5zZXJ0aW9ucygrKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9hcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1yb2NrLTViLmR0cyBiL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNWIuZHRzCj4+PiBpbmRleCBhNWExMDQxMzE0
MDMuLmY5ZDU0MDAwMGRlMyAxMDA2NDQKPj4+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszNTg4LXJvY2stNWIuZHRzCj4+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzU4OC1yb2NrLTViLmR0cwo+Pj4gQEAgLTc3MiwzICs3NzIsNyBAQCAmdXNiX2hv
c3QxX2VoY2kgewo+Pj4gICAgJnVzYl9ob3N0MV9vaGNpIHsKPj4+ICAgICAgICBzdGF0dXMgPSAi
b2theSI7Cj4+PiAgICB9Owo+Pj4gKwo+Pj4gKyZ0c2FkYyB7Cj4+PiArICAgICBzdGF0dXMgPSAi
b2theSI7Cj4+PiArfTsKPj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzU4OHMuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy5k
dHNpCj4+PiBpbmRleCA4YWEwNDk5ZjliMDMuLjhkNTQ5OThkMGVjYyAxMDA2NDQKPj4+IC0tLSBh
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy5kdHNpCj4+PiArKysgYi9hcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMuZHRzaQo+Pj4gQEAgLTEwLDYgKzEwLDcg
QEAKPj4+ICAgICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9yZXNldC9yb2NrY2hpcCxyazM1ODgtY3J1
Lmg+Cj4+PiAgICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvcGh5L3BoeS5oPgo+Pj4gICAgI2luY2x1
ZGUgPGR0LWJpbmRpbmdzL2F0YS9haGNpLmg+Cj4+PiArI2luY2x1ZGUgPGR0LWJpbmRpbmdzL3Ro
ZXJtYWwvdGhlcm1hbC5oPgo+Pj4KPj4+ICAgIC8gewo+Pj4gICAgICAgIGNvbXBhdGlibGUgPSAi
cm9ja2NoaXAscmszNTg4IjsKPj4+IEBAIC0yMTEyLDYgKzIxMTMsMTU2IEBAIHRzYWRjOiB0c2Fk
Y0BmZWMwMDAwMCB7Cj4+PiAgICAgICAgICAgICAgICBzdGF0dXMgPSAiZGlzYWJsZWQiOwo+Pj4g
ICAgICAgIH07Cj4+Pgo+Pj4gKyAgICAgdGhlcm1hbF96b25lczogdGhlcm1hbC16b25lcyB7Cj4+
PiArICAgICAgICAgICAgIC8qIHNlbnNvciBuZWFyIHRoZSBjZW50ZXIgb2YgdGhlIHdob2xlIGNo
aXAgKi8KPj4+ICsgICAgICAgICAgICAgc29jX3RoZXJtYWw6IHNvYy10aGVybWFsIHsKPj4+ICsg
ICAgICAgICAgICAgICAgICAgICBwb2xsaW5nLWRlbGF5LXBhc3NpdmUgPSA8MjA+Owo+Pgo+PiBU
aGVyZSBpcyBubyBtaXRpZ2F0aW9uIHNldCBmb3IgdGhpcyB0aGVybWFsIHpvbmUuIEl0IGlzIHBv
aW50bGVzcyB0bwo+PiBzcGVjaWZ5IGEgcGFzc2l2ZSBwb2xsaW5nLgo+IAo+IEluZGVlZCwgaXQg
bWFrZXMgc2Vuc2UgdG8gbWUuIFRoZXJlIHNlZW1zIHRvIGJlIGEgY2F0Y2ggdGhvdWdoIGluIHRo
YXQKPiB0aGUgZHJpdmVyIGNhbGxzIHRoZSBnZW5lcmljIHRoZXJtYWxfb2Zfem9uZV9yZWdpc3Rl
ciBkdXJpbmcgdGhlCj4gaW5pdGlhbCBwcm9iZSwgd2hpY2ggZXhwZWN0cyBib3RoIG9mIHRob3Nl
IHBvbGxpbmcgZGVsYXlzIHRvIGJlCj4gcHJlc2VudCBpbiB0aGUgZGV2aWNlIHRyZWUsIG90aGVy
d2lzZSBpdCBzaW1wbHkgcmVmdXNlcyB0byBhZGQgdGhlCj4gcmVzcGVjdGl2ZSB0aGVybWFsIHpv
bmUsIHNlZSBkcml2ZXJzL3RoZXJtYWwvdGhlcm1hbF9vZi5jOjUwMgoKVXN1YWxseToKCnBvbGxp
bmctZGVsYXktcGFzc2l2ZSA9IDwwPjsKcG9sbGluZy1kZWxheSA9IDwwPjsKCmNmOgoKZ2l0IGdy
ZXAgInBvbGxpbmctZGVsYXkgPSA8MD4iIGFyY2gvYXJtNjQvYm9vdC9kdHMKCj4+PiArICAgICAg
ICAgICAgICAgICAgICAgcG9sbGluZy1kZWxheSA9IDwxMDAwPjsKPj4KPj4gVGhlIGRyaXZlciBp
cyBpbnRlcnJ1cHQgZHJpdmVuLiBObyBuZWVkIHRvIHBvbGwuCj4gCj4gU2FtZSBoZXJlIGFzIGFi
b3ZlCj4gCj4+PiArICAgICAgICAgICAgICAgICAgICAgc3VzdGFpbmFibGUtcG93ZXIgPSA8MjEw
MD47Cj4+Cj4+IFRoZXJlIGlzIG5vIG1pdGlnYXRpb24gd2l0aCB0aGlzIHRoZXJtYWwgem9uZS4g
U3BlY2lmeWluZyBhIHN1c3RhaW5hYmxlCj4+IHBvd2VyIGRvZXMgbm90IG1ha2Ugc2Vuc2UuCj4g
Cj4gVGhhbmtzLCB3aWxsIGRyb3AgdGhpcyBpbiB2MyEKPiAKPj4+ICsgICAgICAgICAgICAgICAg
ICAgICB0aGVybWFsLXNlbnNvcnMgPSA8JnRzYWRjIDA+Owo+Pj4gKwo+Pj4gKyAgICAgICAgICAg
ICAgICAgICAgIHRyaXBzIHsKPj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHNvY19j
cml0OiBzb2MtY3JpdCB7Cj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IHRlbXBlcmF0dXJlID0gPDExNTAwMD47Cj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIGh5c3RlcmVzaXMgPSA8MjAwMD47Cj4+Cj4+IFRoaXMgdHJpcCBwb2ludCBsZWFk
cyB0byBhIHN5c3RlbSBzaHV0ZG93biAvIHJlYm9vdC4gSXQgaXMgbm90IG5lY2Vzc2FyeQo+PiB0
byBzcGVjaWZ5IGEgaHlzdGVyZXNpcy4KPiAKPiBTaW1pbGFyIHRvIHRoZSBhYm92ZSwgdGhlIGdl
bmVyaWMgdGhlcm1hbF9vZiBjb2RlIHJlZnVzZXMgdG8gYWRkIHRoZQo+IHRyaXAgcG9pbnQgaWYg
aXQgaGFzIG5vIGh5c3RlcmVzaXMgcHJvcGVydHkgZGVmaW5lZCAocmVnYXJkbGVzcyBvZiB0aGUK
PiB0cmlwIHR5cGUpLCBzZWUgZHJpdmVycy90aGVybWFsL3RoZXJtYWxfb2YuYzoxMDkKCmh5c3Rl
cmVzaXMgPSA8MD47CgoKLS0gCjxodHRwOi8vd3d3LmxpbmFyby5vcmcvPiBMaW5hcm8ub3JnIOKU
giBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKCkZvbGxvdyBMaW5hcm86ICA8aHR0
cDovL3d3dy5mYWNlYm9vay5jb20vcGFnZXMvTGluYXJvPiBGYWNlYm9vayB8CjxodHRwOi8vdHdp
dHRlci5jb20vIyEvbGluYXJvb3JnPiBUd2l0dGVyIHwKPGh0dHA6Ly93d3cubGluYXJvLm9yZy9s
aW5hcm8tYmxvZy8+IEJsb2cKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==

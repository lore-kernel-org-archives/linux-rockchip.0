Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 735D1C61D9B
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Nov 2023 09:09:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g4p/IynDNFzn5SoUdxsFmYTHiCxPmaNUaAsN0ooVvYM=; b=k7vM25nPzsXfWc
	PfSVDjEOyw4rWmNKwW/auY39wR1wM4zvqKTAizONsj73rxnswdfMkoXCkXATzhetFniHO4X1NzsCP
	jyEY7+5DOG2HHOIK7TjcuViH7bDOVi0rMkW8hTON31vI1CUxOiAbJQhx2rrUr5dyrCG4M97qv54vP
	piBAlg+IH2dEyYYydujCmTTfeI7rYDVP6McvwTbz1S4zm5OP3BKTHlnZ4iB3OdI1gL9zzDC+b1PC1
	sAGyFquYgBvneLuQUGWL1V0u84b4bK0K97Il28Dk3Db6PtQxWvZ0E/TfY8EK3SLR8aNaLWAes/NYL
	0QuA0yD8/aVODfIvBvCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5jEb-0019sa-0Y;
	Wed, 22 Nov 2023 09:09:25 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5jEW-0019qZ-1S
	for linux-rockchip@lists.infradead.org;
	Wed, 22 Nov 2023 09:09:23 +0000
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-9ffb5a4f622so381843466b.0
        for <linux-rockchip@lists.infradead.org>; Wed, 22 Nov 2023 01:09:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700644157; x=1701248957; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MDFjP3+fhsNw2akKUYyFDvgsffeDkDBRgEKMO0HpZCE=;
        b=eXXCao3DSXlkoD6b5vXMXIqpehHkMF3vaq/J55LQXMETVhBOL4aJo0qqkCdo8Blowm
         fscI69wISB8cG/G5bZK31rzQgJ5kQY889OXBkrFXevnDYpf9AVHl+UZFVvdzweGzwz5B
         HFLebOjjkOFqKzyF8b362OmSDxol42HPxf9VmLdE6QbpQQWAEdF6HpSQj74Nvyl5DdnH
         eoRlOuCkuVZhvszvajUE9uNOAj5fRYKlCKY7r/WCSf/4NE6Y31y2X7TT2xfket0GTDxg
         3KP2phzlVFzAqG7jyav+m+1D11wpowGDzLcLZk2tPj6xIUPGQSW0Lov9KNaFjj3kmq9d
         EoCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700644157; x=1701248957;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MDFjP3+fhsNw2akKUYyFDvgsffeDkDBRgEKMO0HpZCE=;
        b=Egeo/8lMt1VRHNsmjU0kzPhE7J5cowD1NC66krhWzT/L9QoGwxraeEJnkJaNpInf9N
         HYUcvJVumF4rRIl6fWx+FRj/7HeNoTqkJYNuJ+XVXIZYeIYQ+rVJglrK8UyxoBQOQs79
         oprciijX+5BIVwr8VdJw7oqu+IJnS0JfS6smq0pwtmxf31v85HZZ9vQYpo+dJNqG39JZ
         lQoSO0sf06NTFnLFn6YYbzjxyaUPrIlCOL/+3Q8+KVTh5pBj45p0324OXts70jzGHqrE
         teF4aQmp2NIY0gIiHp17W/hbhuvNM4H1WSN8D9RXCLP4tSAKKDTr7AcCLmjjTndQ26Go
         T1yA==
X-Gm-Message-State: AOJu0YzmmM1DbdGkywyv3f0lujOxsStS5OKKFnveU0iurPomKRiN/Gwb
	4fVe4U4ph3iao1e3JvyM7YLYXw==
X-Google-Smtp-Source: AGHT+IFZl7wEgdnoEFdZt9B2cqKnVzkpgrZ9sNjK/LyuMgkAxnpNZnVfrON3J8adQtDbtSUeNatAmw==
X-Received: by 2002:a17:906:f0c2:b0:9fc:1236:beff with SMTP id dk2-20020a170906f0c200b009fc1236beffmr1098949ejb.65.1700644157026;
        Wed, 22 Nov 2023 01:09:17 -0800 (PST)
Received: from [192.168.1.20] ([178.197.218.100])
        by smtp.gmail.com with ESMTPSA id o15-20020a17090637cf00b009fee12d0dcdsm3392502ejc.15.2023.11.22.01.09.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Nov 2023 01:09:16 -0800 (PST)
Message-ID: <2ced2e38-e81d-4f9b-a6c0-6ac2d1a0fff9@linaro.org>
Date: Wed, 22 Nov 2023 10:09:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] docs: dt-bindings: add DTS Coding Style document
Content-Language: en-US
To: Michal Simek <michal.simek@amd.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Dragan Simic <dsimic@manjaro.org>, wens@kernel.org,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 Andrew Davis <afd@ti.com>, Arnd Bergmann <arnd@arndb.de>,
 Bjorn Andersson <andersson@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, Nishanth Menon <nm@ti.com>,
 Olof Johansson <olof@lixom.net>, linux-rockchip@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-msm@vger.kernel.org
References: <20231120084044.23838-1-krzysztof.kozlowski@linaro.org>
 <6b288a2e-d147-4bd3-b1d4-daf56295d939@gmail.com>
 <01f9ce3b-e6e5-4b05-bf7f-0b3a5f74910a@linaro.org>
 <CAGb2v64Vf5dDwq=KTrxwc=+w+0KUD2KVPMjmHg68Y_yukES5dQ@mail.gmail.com>
 <7232a48b-b9ad-44b5-ae6a-d12dad70b3c4@linaro.org>
 <58a9caacc1226c7c3a2bdfe73ef1791f@manjaro.org>
 <cc4c789c-b595-41eb-b543-9e03549c6e61@amd.com>
 <CAMuHMdWm-gRPHeHyuX3_eR+9chJEw3iiZwCNBnoiRPHzoMAs6w@mail.gmail.com>
 <808270d3-2274-4fb7-a397-38538503b67c@amd.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <808270d3-2274-4fb7-a397-38538503b67c@amd.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_010920_489536_D002F37A 
X-CRM114-Status: GOOD (  22.09  )
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

T24gMjIvMTEvMjAyMyAwOTo1NywgTWljaGFsIFNpbWVrIHdyb3RlOgo+IEhpIEdlZXJ0LAo+IAo+
IE9uIDExLzIyLzIzIDA5OjUzLCBHZWVydCBVeXR0ZXJob2V2ZW4gd3JvdGU6Cj4+IEhpIE1pY2hh
bCwKPj4KPj4gT24gV2VkLCBOb3YgMjIsIDIwMjMgYXQgOTo1MOKAr0FNIE1pY2hhbCBTaW1layA8
bWljaGFsLnNpbWVrQGFtZC5jb20+IHdyb3RlOgo+Pj4gT24gMTEvMjIvMjMgMDk6MjksIERyYWdh
biBTaW1pYyB3cm90ZToKPj4+PiBPbiAyMDIzLTExLTIyIDA5OjIxLCBLcnp5c3p0b2YgS296bG93
c2tpIHdyb3RlOgo+Pj4+PiBPbiAyMi8xMS8yMDIzIDA5OjA5LCBDaGVuLVl1IFRzYWkgd3JvdGU6
Cj4+Pj4+PiBPbiBXZWQsIE5vdiAyMiwgMjAyMyBhdCA0OjA14oCvUE0gS3J6eXN6dG9mIEtvemxv
d3NraQo+Pj4+Pj4gPGtyenlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4gd3JvdGU6Cj4+Pj4+
Pj4KPj4+Pj4+PiBPbiAyMS8xMS8yMDIzIDE0OjUwLCBSYWZhxYIgTWnFgmVja2kgd3JvdGU6Cj4+
Pj4+Pj4+PiArT3JkZXIgb2YgUHJvcGVydGllcyBpbiBEZXZpY2UgTm9kZQo+Pj4+Pj4+Pj4gKy0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPj4+Pj4+Pj4+ICsKPj4+Pj4+Pj4+ICtG
b2xsb3dpbmcgb3JkZXIgb2YgcHJvcGVydGllcyBpbiBkZXZpY2Ugbm9kZXMgaXMgcHJlZmVycmVk
Ogo+Pj4+Pj4+Pj4gKwo+Pj4+Pj4+Pj4gKzEuIGNvbXBhdGlibGUKPj4+Pj4+Pj4+ICsyLiByZWcK
Pj4+Pj4+Pj4+ICszLiByYW5nZXMKPj4+Pj4+Pj4+ICs0LiBTdGFuZGFyZC9jb21tb24gcHJvcGVy
dGllcyAoZGVmaW5lZCBieSBjb21tb24gYmluZGluZ3MsIGUuZy4gd2l0aG91dAo+Pj4+Pj4+Pj4g
KyAgIHZlbmRvci1wcmVmaXhlcykKPj4+Pj4+Pj4+ICs1LiBWZW5kb3Itc3BlY2lmaWMgcHJvcGVy
dGllcwo+Pj4+Pj4+Pj4gKzYuIHN0YXR1cyAoaWYgYXBwbGljYWJsZSkKPj4+Pj4+Pj4+ICs3LiBD
aGlsZCBub2Rlcywgd2hlcmUgZWFjaCBub2RlIGlzIHByZWNlZGVkIHdpdGggYSBibGFuayBsaW5l
Cj4+Pj4+Pj4+PiArCj4+Pj4+Pj4+PiArVGhlICJzdGF0dXMiIHByb3BlcnR5IGlzIGJ5IGRlZmF1
bHQgIm9rYXkiLCB0aHVzIGl0IGNhbiBiZSBvbWl0dGVkLgo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBJIHRo
aW5rIGl0IHdvdWxkIHJlYWxseSBoZWxwIHRvIGluY2x1ZGUgcG9zaXRpb24gb2YgI2FkZHJlc3Mt
Y2VsbHMgYW5kCj4+Pj4+Pj4+ICNzaXplLWNlbGxzIGhlcmUuIEluIHNvbWUgZmlsZXMgSSBzYXcg
dGhlbSBhYm92ZSAiY29tcGF0aWJsZSIgdGhhdCBzZWVtcwo+Pj4+Pj4+PiB1bmludHVpdGl2ZS4g
U29tZSBwcmVmZXIgcHV0dGluZyB0aGVtIGF0IGVuZCB3aGljaCBJIHRoaW5rIG1ha2VzIHNlbnNl
Cj4+Pj4+Pj4+IGFzIHRoZXkgYWZmZWN0IGNoaWxkcmVuIG5vZGVzLgo+Pj4+Pj4+Pgo+Pj4+Pj4+
PiBXaGF0ZXZlciB5b3UgY2hvb3NlIGl0J2QgYmUganVzdCBuaWNlIHRvIGhhdmUgdGhpbmdzIGNv
bnNpc3RlbnQuCj4+Pj4+Pj4KPj4+Pj4+PiBUaGlzIGlzIGEgc3RhbmRhcmQvY29tbW9uIHByb3Bl
cnR5LCB0aHVzIGl0IGdvZXMgdG8gKDQpIGFib3ZlLgo+Pj4+Pj4KPj4+Pj4+IEl0J3MgcHJvYmFi
bHkgYSBtaXgsIGJ1dCBBRkFJSyBhIGxvdCBvZiB0aGUgZGV2aWNlIHRyZWVzIGluIHRyZWUgaGF2
ZQo+Pj4+Pj4gIyotY2VsbHMgYWZ0ZXIgInN0YXR1cyIuIEluIHNvbWUgY2FzZXMgdGhleSBhcmUg
YWRkZWQgaW4gdGhlIGJvYXJkCj4+Pj4+PiAuZHRzIGZpbGVzLCBub3QgdGhlIGNoaXAvbW9kdWxl
IC5kdHNpIGZpbGVzLgo+Pj4+Pgo+Pj4+PiBFeGlzdGluZyBEVFMgaXMgbm90IGEgZ29vZCBleGFt
cGxlIDopCj4+Pj4+Cj4+Pj4+Pgo+Pj4+Pj4gKzEgdGhhdCBpdCBtYWtlcyBzZW5zZSBhdCB0aGUg
ZW5kIGFzIHRoZXkgYWZmZWN0IGNoaWxkIG5vZGVzLgo+Pj4+Pgo+Pj4+PiBJIHN0aWxsIGluc2lz
dCB0aGF0IHN0YXR1cyBtdXN0IGJlIHRoZSBsYXN0LCBiZWNhdXNlOgo+Pj4+PiAxLiBNYW55IFNv
QyBub2RlcyBoYXZlIGFkZHJlc3Mvc2l6ZSBjZWxscyBidXQgZG8gbm90IGhhdmUgYW55IGNoaWxk
cmVuCj4+Pj4+IChJMkMsIFNQSSksIHNvIHdlIHB1dCB1c2VsZXNzIGluZm9ybWF0aW9uIGF0IHRo
ZSBlbmQuCj4+Pj4+IDIuIFN0YXR1cyBzaG91bGQgYmUgdGhlIGZpbmFsIGluZm9ybWF0aW9uIHRv
IHNheSB3aGV0aGVyIHRoZSBub2RlIGlzCj4+Pj4+IHJlYWR5IG9yIGlzIG5vdC4gSSByZWFkIHRo
ZSBub2RlLCBjaGVjayBwcm9wZXJ0aWVzIGFuZCB0aGVuIGxvb2sgYXQgdGhlIGVuZDoKPj4+Pj4g
YS4gTGFjayBvZiBzdGF0dXMgbWVhbnMgaXQgaXMgcmVhZHkuCj4+Pj4+IGIuIHN0YXR1cz1kaXNh
YmxlZCBtZWFucyBkZXZpY2Ugc3RpbGwgbmVlZHMgYm9hcmQgcmVzb3VyY2VzL2N1c3RvbWl6YXRp
b24KPj4+Pgo+Pj4+IEkgYWdyZWUgd2l0aCB0aGUgInN0YXR1cyIgYmVsb25naW5nIHRvIHRoZSB2
ZXJ5IGVuZCwgYmVjYXVzZSBpdCdzIGJvdGggbG9naWNhbAo+Pj4+IGFuZCBtdWNoIG1vcmUgcmVh
ZGFibGUuICBBbHNvLCAic3RhdHVzIiBpcyBleHBlY3RlZCB0byBiZSBtb2RpZmllZCBpbiB0aGUK
Pj4+PiBkZXBlbmRlbnQgRFQgZmlsZXMsIHdoaWNoIG1ha2VzIGl0IGtpbmQgb2Ygdm9sYXRpbGUg
YW5kIGV2ZW4gbW9yZSBkZXNlcnZpbmcgdG8KPj4+PiBiZSBwbGFjZWQgbGFzdC4KPj4+Cj4+PiBJ
IGFtIGp1c3QgY3VyaW91cyBpZiBoYXZpbmcgc3RhdHVzIHByb3BlcnR5IGF0IHRoZSBlbmQgd29u
J3QgYWZmZWN0Cj4+PiBleGVjdXRpb24vYm9vdCB1cCB0aW1lLiBOb3Qgc3VyZSBob3cgaXQgaXMg
ZG9uZSBpbiBMaW51eCBidXQgaW4gVS1Cb290IGF0IGxlYXN0Cj4+PiAod2Ugd2FudCB0byBoYXZl
IERUcyBpbiBzeW5jIGJldHdlZW4gTGludXggYW5kIFUtQm9vdCkgb2ZfZmluZF9wcm9wZXJ0eSBp
cwo+Pj4gcHJldHR5IG11Y2ggYmlnIGxvb3Agb3ZlciBhbGwgcHJvcGVydGllcy4gQW5kIHN0YXR1
cyBwcm9wZXJ0eSBkZWZpbmVkIGF0IHRoZSBlbmQKPj4+IG1lYW5zIGdvaW5nIG92ZXIgYWxsIG9m
IHRoZW0gdG8gZmluZCBpdCBvdXQgdG8gaWYgZGV2aWNlIGlzIHByZXNlbnQuCj4+PiBOb3Qgc3Vy
ZSBpZiBMaW51eCB3b3JrcyBpbiB0aGUgc2FtZSB3YXkgYnV0IGF0IGxlYXN0IG9mX2dldF9wcm9w
ZXJ0eSBpcyBkb25lIGluCj4+PiB0aGUgc2FtZSB3YXkuCj4+Cj4+IEFzIHRoZSBkZWZhdWx0IGlz
ICJva2F5IiwgeW91IGhhdmUgdG8gbG9vcCBvdmVyIGFsbCBwcm9wZXJ0aWVzIGFueXdheS4KPiAK
PiBObyBkb3VidCBpZiB5b3UgZG9uJ3QgZGVmaW5lIHN0YXR1cyBwcm9wZXJ0eSB0aGF0IHlvdSBu
ZWVkIHRvIGxvb3Agb3ZlciBhbGwgb2YgCj4gdGhlbS4gV2Ugbm9ybWFsbHkgZGVzY3JpYmUgdGhl
IHdob2xlIFNPQyB3aXRoIHByZXR0eSBtdWNoIGFsbCBJUHMgc3RhdHVzID0gCj4gZGlzYWJsZWQg
YW5kIHRoZW4gaW4gYm9hcmQgZmlsZSB3ZSBhcmUgY2hhbmdpbmcgaXQgdG8gb2theSBiYXNlZCBv
biB3aGF0IGl0IGlzIAo+IGFjdHVhbGx5IHdpcmVkIG91dC4KPiBJdCBtZWFucyBvbiBvdXIgc3lz
dGVtcyBhbGwgbm9kZXMgaGF2ZSBzdGF0dXMgcHJvcGVydGllcy4gSWYgeW91IGhhdmUgaXQgYXQg
Cj4gZmlyc3QgeW91IGRvbid0IG5lZWQgdG8gZ28gb3ZlciBhbGwuCgpXZSBuZXZlciBzYWNyaWZp
Y2VkIGNvZGUgcmVhZGFiaWxpdHkgaW4gZmF2b3Igb2YgY29kZSBleGVjdXRpb24gc3BlZWQsCnNv
IG5laXRoZXIgc2hvdWxkIHdlIGRvIGl0IGhlcmUuCgpJZiB0aGUgc3BlZWQgaXMgYSBwcm9ibGVt
LCBwcm9qZWN0IGNhbiBzdGlsbCBhZGQgYSBmbGFnIHRvIGR0YyB0bwpyZS1zaHVmZmxlIHByb3Bl
cnRpZXMgaW4gRkRUIGRlcGVuZGluZyBvbiBpdHMgbmVlZHMuCgpCZXN0IHJlZ2FyZHMsCktyenlz
enRvZgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK

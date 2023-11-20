Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81351C2BB3F
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Nov 2023 19:31:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G0DbneURvBvOzUZPghdr7gZLqnXZ//C132Hon1kGzAY=; b=W7dWIDjIpf6zTO
	ict0yfvfcGqryYIqnANhaCIR+7Rtx/A4GLqQL7icruJw9EM6kMjL8neHybC3Ih4Bgl+YJ2JHsXOs/
	lQlmNqoFYSrmD0xt1oEoHAHPQudV21L8jpz24UHDBUxc4Vb2VEsHPDwkKuVeLTTB81E+UNQT+Ngro
	NpusPi6ZU0ifWHnKVD9lfs5jwmeBIBRQH24LfGoj/rqo+N4Q1zIagxFHLBMFRO/2W01aqcYPMWjfA
	5awc6STQBMJr61sSHAcf8aUI5vBscIZLf9C4LQ6LxxD1N4HISp2sOCuEwlx9vZ2IEKydMZeOep9ZB
	RrUcmEgWToKNCUNnqAIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r59zP-00Ehzm-1Y;
	Mon, 20 Nov 2023 19:31:23 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r59zM-00Ehy3-13
	for linux-rockchip@lists.infradead.org;
	Mon, 20 Nov 2023 19:31:22 +0000
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-9ffb5a4f622so137284266b.0
        for <linux-rockchip@lists.infradead.org>; Mon, 20 Nov 2023 11:31:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700508676; x=1701113476; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aSVotS49d/36yA5tzTUTHDX/PosQTkAamLhbxQgGhzk=;
        b=OkBbmhjlUH/WN69IRc3LGQWc2cqIAh4PNRuiV0OnTuJVOZ5vDfMm6XDI6SIHLx91JB
         IchzKejx7ZprHbF6qbGzRBxNE3vBlpatVGwWtS+K9Uyt/4sq2IuHuPHqUImEBsg/gVvb
         FqQLummXBIluaImr91CK6f0tFxDSJwWissvFky4a78ZOFQocc954OBIKqKwYg27intuM
         cxXvf5x6urlRiSkt5EI5XXIY88dHJWHpZUoBISNstAKQw6egl/24AOicN7xCmJMuzk+l
         RfPE7leX9hWTK7Fq8EJu5UVwCAnI7whKZdRCqF3mPIVUQbwsd1W9pHtrONZP9zNoUkdg
         x9kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700508676; x=1701113476;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aSVotS49d/36yA5tzTUTHDX/PosQTkAamLhbxQgGhzk=;
        b=fAzxOyJ98N5Efj14f+NHOHZcJZh2zGp809LeQlxGqZWqt8ySDAsVdJdMn08yP8eAxN
         D6p6VVGm2JEvK9/LE2hVC/9/Vf+IGKbCZK2dcpvjzgaN/2ZJCBiLiiV8IaFD1SpH6E2E
         74daPQMI6UJNz8+zkxv1EwV86AYMfybFUWRJHDFRtSWrR/rUr8VZ+TVhnc+lhNopFT3g
         iu5RRAsGE7J78cTD3VJ37R7Drqo7y+73A9eOkrIgZla6zi9BL1THpk+4XvA/xk8/TeGX
         XVuIW6+NnnAxEr+DzkX+RHJw760wcjeaFF91TkK6MebHDrNEnhnJ27vLvgjrikjDJ1C6
         kdFQ==
X-Gm-Message-State: AOJu0YwLxyK23TxoTCaMNPBWM0ucu3VzbLHR7xeD8aULYYkBAnPmHoZD
	+egZ6QWk4DdFoXCZul0yND07iA==
X-Google-Smtp-Source: AGHT+IHf8NrqouxYhlMoKQdA5WAg5kK1bQnqIvg5KQ+C7VVfL7D37N0/kUgcv6pwOVqEUG4ADLcZJA==
X-Received: by 2002:a17:906:10b:b0:9e6:59d5:820d with SMTP id 11-20020a170906010b00b009e659d5820dmr6066678eje.2.1700508676462;
        Mon, 20 Nov 2023 11:31:16 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.11])
        by smtp.gmail.com with ESMTPSA id dv8-20020a170906b80800b009fdc15b5304sm1692803ejb.102.2023.11.20.11.31.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Nov 2023 11:31:15 -0800 (PST)
Message-ID: <acfdce81-f117-4a1a-a9fe-e2b4b8922adb@linaro.org>
Date: Mon, 20 Nov 2023 20:31:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] docs: dt-bindings: add DTS Coding Style document
Content-Language: en-US
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Michal Simek <michal.simek@amd.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 Andrew Davis <afd@ti.com>, Arnd Bergmann <arnd@arndb.de>,
 Bjorn Andersson <andersson@kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Heiko Stuebner <heiko@sntech.de>, Konrad Dybcio <konrad.dybcio@linaro.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, Nishanth Menon <nm@ti.com>,
 Olof Johansson <olof@lixom.net>, linux-rockchip@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-msm@vger.kernel.org
References: <20231120084044.23838-1-krzysztof.kozlowski@linaro.org>
 <19358871-009d-4498-9c13-90d5338b1e9f@amd.com>
 <76fa8f61-fe31-4040-a38d-cc05be3f4f17@linaro.org>
 <CAMuHMdW4WPJT0Km7w8RWrGJaztk6QDGoFAn0bdGbrEsw81R1FA@mail.gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <CAMuHMdW4WPJT0Km7w8RWrGJaztk6QDGoFAn0bdGbrEsw81R1FA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231120_113120_377271_B3F39B7F 
X-CRM114-Status: GOOD (  20.21  )
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

T24gMjAvMTEvMjAyMyAyMDoxOCwgR2VlcnQgVXl0dGVyaG9ldmVuIHdyb3RlOgo+IEhpIEtyenlz
enRvZiwKPiAKPiBPbiBNb24sIE5vdiAyMCwgMjAyMyBhdCAzOjUz4oCvUE0gS3J6eXN6dG9mIEtv
emxvd3NraQo+IDxrcnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmc+IHdyb3RlOgo+PiBPbiAy
MC8xMS8yMDIzIDE1OjAxLCBNaWNoYWwgU2ltZWsgd3JvdGU6PiA+Cj4+PiBPbiAxMS8yMC8yMyAw
OTo0MCwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPj4+PiBEb2N1bWVudCBwcmVmZXJyZWQg
Y29kaW5nIHN0eWxlIGZvciBEZXZpY2V0cmVlIHNvdXJjZXMgKERUUyBhbmQgRFRTSSksCj4+Pj4g
dG8gYnJpbmcgY29uc2lzdGVuY3kgYW1vbmcgYWxsIChzdWIpYXJjaGl0ZWN0dXJlcyBhbmQgZWFz
ZSBpbiByZXZpZXdzLgo+IAo+Pj4+ICtPcmdhbml6aW5nIERUU0kgYW5kIERUUwo+Pj4+ICstLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLQo+Pj4+ICsKPj4+PiArVGhlIERUU0kgYW5kIERUUyBmaWxlcyBz
aG91bGQgYmUgb3JnYW5pemVkIGluIGEgd2F5IHJlcHJlc2VudGluZyB0aGUgY29tbW9uCj4+Pj4g
KyhhbmQgcmUtdXNhYmxlKSBwYXJ0cyBvZiB0aGUgaGFyZHdhcmUuICBUeXBpY2FsbHkgdGhpcyBt
ZWFucyBvcmdhbml6aW5nIERUU0kKPj4+PiArYW5kIERUUyBmaWxlcyBpbnRvIHNldmVyYWwgZmls
ZXM6Cj4+Pj4gKwo+Pj4+ICsxLiBEVFNJIHdpdGggY29udGVudHMgb2YgdGhlIGVudGlyZSBTb0Mg
KHdpdGhvdXQgbm9kZXMgZm9yIGhhcmR3YXJlIG5vdCBwcmVzZW50Cj4+Pj4gKyAgIG9uIHRoZSBT
b0MpLgo+Pj4+ICsyLiBJZiBhcHBsaWNhYmxlOiBEVFNJIHdpdGggY29tbW9uIG9yIHJlLXVzYWJs
ZSBwYXJ0cyBvZiB0aGUgaGFyZHdhcmUgKGUuZy4KPj4+PiArICAgZW50aXJlIFN5c3RlbS1vbi1N
b2R1bGUpLgo+Pj4KPj4+IERUUy9EVFNJIC0gU09NcyBjYW4gYWN0dWFsbHkgcnVuIGFzIHRoZXkg
YXJlIHRoYXQncyB3aHkgaXQgaXMgZmFpciB0byBzYXkgdGhhdAo+Pj4gdGhlcmUgZG9lc24ndCBu
ZWVkIHRvIGJlIERUUyByZXByZXNlbnRpbmcgdGhlIGJvYXJkLgo+Pgo+PiBJIGhhdmUgbmV2ZXIg
c2VlbiBhIFNvTSB3aGljaCBjYW4gcnVuIHdpdGhvdXQgZWxhYm9yYXRlIGhhcmR3YXJlLWhhY2tp
bmcKPj4gKGUuZy4gY29ubmVjdGluZyBtdWx0aXBsZSB3aXJlcyB0byB0aGUgU29NIHBpbnMpLiBU
aGUgZGVmaW5pdGlvbiBvZiB0aGUKPj4gU29NIGlzIHRoYXQgaXQgaXMgYSBtb2R1bGUuIE1vZHVs
ZSBjYW4gYmUgcmUtdXNlZCwganVzdCBsaWtlIFNvQy4KPiAKPiAvbWUgbG9va3MgYXQgaGlzIGJv
YXJkIGZhcm0uLi4KPiAKPiBUaGUgUmVuZXNhcyBXaGl0ZS1IYXdrIENQVSBib2FyZCBjYW4gYmUg
dXNlZCBzdGFuZGFsb25lLCBhbmQgaGFzIGEKPiBzZXBhcmF0ZSBwb3dlciBpbnB1dCBjb25uZWN0
b3IgZm9yIHRoaXMgb3BlcmF0aW9uIG1vZGUuICBBcyBpdCBoYXMgUkFNLAo+IEV0aGVybmV0LCBz
ZXJpYWwgY29uc29sZSwgZU1NQywgYW5kIGV2ZW4gbWluaS1EUCwgaXQgY2FuIHNlcnZlIHVzZWZ1
bAo+IHB1cnBvc2VzIG9uIGl0cyBvd24uCj4gSSBhZ3JlZSBpdCdzIG5vdCBhIHN1cGVyLWdvb2Qg
ZXhhbXBsZSwgYXMgdGhlIGJvYXJkIGlzIG5vdCByZWFsbHkgYQo+ICJTb00iLCBhbmQgd2UgY3Vy
cmVudGx5IGRvbid0IGhhdmUgcjhhNzc5ZzAtd2hpdGUtaGF3ay1jcHUuZHRzLCBvbmx5Cj4gcjhh
Nzc5ZzAtd2hpdGUtaGF3ay1jcHUuZHRzaS4KPiAKPiBUaGUgUlovQTJNIENQVSBCb2FyZCBpcyBh
IHJlYWwgU29NLCB3aGljaCBjYW4gYmUgcG93ZXJlZCBvdmVyIFVTQi4KPiBJdCBoYXMgbGVzcyBz
dGFuZGFyZCBjb25uZWN0b3JzIChtaWNyb1NELCBVU0IsIE1JUEkgQ1NJLTIpLCBidXQgc3RpbGwK
PiBzdWZmaWNpZW50IGZlYXR1cmVzIHRvIGJlIHVzYWJsZSBvbiBpdHMgb3duLgo+IEFnYWluLCB3
ZSdyZSBkb2luZyBhIGJhZCBqb2IsIGFzIHdlIG9ubHkgaGF2ZSBhIERUUyBmb3IgdGhlIGZ1bGwg
ZXZhbAo+IGJvYXJkIChyN3M5MjEwLXJ6YTJtZXZiLmR0cykuCj4gCj4gSSBndWVzcyB0aGVyZSBh
cmUgKG1hbnkpIG90aGVyIGV4YW1wbGVzLi4uCgpPSywgSSBuZXZlciBoYWQgc3VjaCBpbiBteSBo
YW5kcy4gQW55d2F5LCB0aGUgU29NIHdoaWNoIGNhbiBydW4Kc3RhbmRhbG9uZSAgaGFzIGEgbWVh
bmluZyBvZiBhIGJvYXJkLCBzbyBob3cgZXhhY3RseSB5b3Ugd2FudCB0bwpyZXBocmFzZSB0aGUg
cGFyYWdyYXBoPwoKQmVzdCByZWdhcmRzLApLcnp5c3p0b2YKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

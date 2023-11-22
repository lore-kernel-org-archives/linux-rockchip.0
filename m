Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94543C61D92
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Nov 2023 08:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aXmQQY3EMFJTZ3Y5QdQhoDq/DHf7Ky9BzLxopLPaumQ=; b=vqHxY6s26opA6k
	I82eMybPENEgEOoWCxi901wXi59RqUItk85JsKHINzriieGfd7xl2ZghXNZ97X6zsD2xZyBU9GTi+
	A4YnyxksPsR502pI5P/iVBfIORL68UJL/hBJbe/I+P1hPTnlIfbdCXbWiSGo7XCwtaDFg9bQJpCIB
	6OlTnMj3QHui8kwvVe9VEa6XC5ks7H0HzA6ibgqSsC9osfA4YvEhZuSPNbDjaH/YQBcSmpqtF1KMZ
	dJ3PUvBSCXjouMJPhmnKdaeYZ+6slJcnNZ1Uvb7nL4Zg/wBbhWyLl9E3R5ejxFxkFJdeppLA0dTok
	4Tg5sGuTzJUKNhbI7vNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5ibJ-0013YD-31;
	Wed, 22 Nov 2023 08:28:49 +0000
Received: from mail-yw1-f169.google.com ([209.85.128.169])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5ibG-0013WW-1N;
	Wed, 22 Nov 2023 08:28:47 +0000
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-5c85e8fdd2dso50850727b3.2;
        Wed, 22 Nov 2023 00:28:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700641721; x=1701246521;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Gha+lhz98cqfqHPVBYNZIJYx9aE1nB2ARipNu2FhWYQ=;
        b=aojB6oIibT+KRMhkXwCOtwkKI6hyd7JomQLdVUPLQZrzaSaWxi/iCV1f2NY+lujjNN
         zBjj6G6ACp3Eo07LXSq8E+DoBIOo2s4MAM2/xEGAiWidMT6Sa0ScEzSjq39mD1tWP/1D
         ZUsj3zYmf3CbO/HcoqZNnxwCsKDHRrN2xRMjUdEiwwkxNdznTM+nHUl7DA2IZeV9CNB9
         ncBjVFcFibTgi2L2xa9w+gxewvJAn8hJec61NX5KSZwiDyGowMSVrhM7nM+0A/RdObdn
         bX2nDBAY9H8YLK3O7po70F62YyVMl9jiiek/yAz3h4vfwoFE7/O45zNO46q7EiwZD8nk
         xwmw==
X-Gm-Message-State: AOJu0Yz6PaILQd4e2DQjSM1VVa9xXgKlJYr1tjhgXBGiq9wFFzNQUyNG
	oy+Clg+rEbKTc1sGY4AzhBPF1aTBoblhhA==
X-Google-Smtp-Source: AGHT+IHyBh02cCo+CFPiZb3pe+qTI+CpnsToJwqWDpf8/QmB3C+Foc+kTs7vg0x+dgeLd3FZYLcoEQ==
X-Received: by 2002:a81:8485:0:b0:5ca:81ff:b5e5 with SMTP id u127-20020a818485000000b005ca81ffb5e5mr1646071ywf.12.1700641721468;
        Wed, 22 Nov 2023 00:28:41 -0800 (PST)
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com. [209.85.219.177])
        by smtp.gmail.com with ESMTPSA id w202-20020a0dd4d3000000b005ca265f0c68sm20545ywd.42.2023.11.22.00.28.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Nov 2023 00:28:41 -0800 (PST)
Received: by mail-yb1-f177.google.com with SMTP id 3f1490d57ef6-daf7ed42ea6so6374260276.0;
        Wed, 22 Nov 2023 00:28:41 -0800 (PST)
X-Received: by 2002:a25:cec5:0:b0:d9b:dae4:63fa with SMTP id
 x188-20020a25cec5000000b00d9bdae463famr1414014ybe.34.1700641720963; Wed, 22
 Nov 2023 00:28:40 -0800 (PST)
MIME-Version: 1.0
References: <20231120084044.23838-1-krzysztof.kozlowski@linaro.org>
 <6b288a2e-d147-4bd3-b1d4-daf56295d939@gmail.com> <01f9ce3b-e6e5-4b05-bf7f-0b3a5f74910a@linaro.org>
 <CAGb2v64Vf5dDwq=KTrxwc=+w+0KUD2KVPMjmHg68Y_yukES5dQ@mail.gmail.com> <7232a48b-b9ad-44b5-ae6a-d12dad70b3c4@linaro.org>
In-Reply-To: <7232a48b-b9ad-44b5-ae6a-d12dad70b3c4@linaro.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 22 Nov 2023 09:28:22 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXDUF7i9GdXSyHbmUtwmCCXf-sXQDbrGAKTtQ9=TSNFjA@mail.gmail.com>
Message-ID: <CAMuHMdXDUF7i9GdXSyHbmUtwmCCXf-sXQDbrGAKTtQ9=TSNFjA@mail.gmail.com>
Subject: Re: [PATCH v2] docs: dt-bindings: add DTS Coding Style document
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: wens@kernel.org, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, Andrew Davis <afd@ti.com>, 
	Arnd Bergmann <arnd@arndb.de>, Bjorn Andersson <andersson@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Heiko Stuebner <heiko@sntech.de>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Michal Simek <michal.simek@amd.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Nishanth Menon <nm@ti.com>, Olof Johansson <olof@lixom.net>, 
	linux-rockchip@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-amlogic@lists.infradead.org, linux-arm-msm@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_002846_463863_2DB46880 
X-CRM114-Status: GOOD (  35.13  )
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

T24gV2VkLCBOb3YgMjIsIDIwMjMgYXQgOToyMeKAr0FNIEtyenlzenRvZiBLb3psb3dza2kKPGty
enlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4gd3JvdGU6Cj4gT24gMjIvMTEvMjAyMyAwOTow
OSwgQ2hlbi1ZdSBUc2FpIHdyb3RlOgo+ID4gT24gV2VkLCBOb3YgMjIsIDIwMjMgYXQgNDowNeKA
r1BNIEtyenlzenRvZiBLb3psb3dza2kKPiA+IDxrcnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5v
cmc+IHdyb3RlOgo+ID4+IE9uIDIxLzExLzIwMjMgMTQ6NTAsIFJhZmHFgiBNacWCZWNraSB3cm90
ZToKPiA+Pj4+ICtPcmRlciBvZiBOb2Rlcwo+ID4+Pj4gKy0tLS0tLS0tLS0tLS0tCj4gPj4+PiAr
Cj4gPj4+PiArMS4gTm9kZXMgd2l0aGluIGFueSBidXMsIHRodXMgdXNpbmcgdW5pdCBhZGRyZXNz
ZXMgZm9yIGNoaWxkcmVuLCBzaGFsbCBiZQo+ID4+Pj4gKyAgIG9yZGVyZWQgaW5jcmVtZW50YWxs
eSBieSB1bml0IGFkZHJlc3MuCj4gPj4+PiArICAgQWx0ZXJuYXRpdmVseSBmb3Igc29tZSBzdWIt
YXJjaGl0ZWN0dXJlcywgbm9kZXMgb2YgdGhlIHNhbWUgdHlwZSBjYW4gYmUKPiA+Pj4+ICsgICBn
cm91cGVkIHRvZ2V0aGVyIChlLmcuIGFsbCBJMkMgY29udHJvbGxlcnMgb25lIGFmdGVyIGFub3Ro
ZXIgZXZlbiBpZiB0aGlzCj4gPj4+PiArICAgYnJlYWtzIHVuaXQgYWRkcmVzcyBvcmRlcmluZyku
Cj4gPj4+PiArCj4gPj4+PiArMi4gTm9kZXMgd2l0aG91dCB1bml0IGFkZHJlc3NlcyBzaG91bGQg
YmUgb3JkZXJlZCBhbHBoYS1udW1lcmljYWxseSBieSB0aGUgbm9kZQo+ID4+Pj4gKyAgIG5hbWUu
ICBGb3IgYSBmZXcgdHlwZXMgb2Ygbm9kZXMsIHRoZXkgY2FuIGJlIG9yZGVyZWQgYnkgdGhlIG1h
aW4gcHJvcGVydHkKPiA+Pj4+ICsgICAoZS5nLiBwaW4gY29uZmlndXJhdGlvbiBzdGF0ZXMgb3Jk
ZXJlZCBieSB2YWx1ZSBvZiAicGlucyIgcHJvcGVydHkpLgo+ID4+Pj4gKwo+ID4+Pj4gKzMuIFdo
ZW4gZXh0ZW5kaW5nIG5vZGVzIGluIHRoZSBib2FyZCBEVFMgdmlhICZsYWJlbCwgdGhlIGVudHJp
ZXMgc2hvdWxkIGJlCj4gPj4+PiArICAgb3JkZXJlZCBhbHBoYS1udW1lcmljYWxseS4KPiA+Pj4K
PiA+Pj4gSnVzdCBhbiBpZGVhLiBXb3VsZCB0aGF0IG1ha2UgKG1vcmUpIHNlbnNlIHRvIG1ha2Ug
JmxhYmVsLWxpa2UgZW50cmllcwo+ID4+PiBtYXRjaCBvcmRlciBvZiBub2RlcyBpbiBpbmNsdWRl
ZCAuZHRzKGkpPwo+ID4+Pgo+ID4+PiBBZHZlbnRhZ2VzOgo+ID4+PiAxLiBXZSBrZWVwIHVuaXQg
YWRkcmVzcyBpbmNyZW1lbnRhbCBvcmRlciB0aGF0IGlzIHVubGlrZWx5IHRvIGNoYW5nZQo+ID4+
Pgo+ID4+PiBEaXNhZHZlbnRhZ2VzOgo+ID4+PiAxLiBNb3JlIGRpZmZpY3VsdCB0byB2ZXJpZnkK
PiA+Pgo+ID4+IFJvYiBhbHNvIHByb3Bvc2VkIHRoaXMgYW5kIEkgYmVsaWV2ZSBhYm92ZSBkaXNh
ZHZhbnRhZ2UgaGVyZSBpcyBjcnVjaWFsLgo+ID4+IElmIHlvdSBhZGQgbmV3IFNvQyB3aXRoIGJv
YXJkIERUUyB5b3UgYXJlIGZpbmUuIEJ1dCBpZiB5b3UgYWRkIG9ubHkgbmV3Cj4gPj4gYm9hcmQs
IHRoZSBvcmRlciBvZiBlbnRyaWVzIGxvb2sgcmFuZG9tIGluIHRoZSBkaWZmIGh1bmsuIFJldmll
d2VyIG11c3QKPiA+PiBvcGVuIFNvQyBEVFNJIHRvIGJlIGFibGUgdG8gcmV2aWV3IHRoZSBwYXRj
aCB3aXRoIGJvYXJkIERUUy4KPiA+Pgo+ID4+IElmIHJldmlldyBpcyB0cmlja3kgYW5kIHdlIGRv
IG5vdCBoYXZlIHRvb2wgdG8gcGVyZm9ybSBpdCBhdXRvbWF0aWNhbGx5LAo+ID4+IEkgYW0gc3Vy
ZSBzdWJtaXNzaW9ucyB3aWxsIGhhdmUgZGlzb3JkZXJlZCBib2FyZCBEVFMuCj4gPj4KPiA+Pj4K
PiA+Pj4KPiA+Pj4+ICtFeGFtcGxlOjoKPiA+Pj4+ICsKPiA+Pj4+ICsgICAgLy8gU29DIERUU0kK
PiA+Pj4+ICsKPiA+Pj4+ICsgICAgLyB7Cj4gPj4+PiArICAgICAgICAgICAgY3B1cyB7Cj4gPj4+
PiArICAgICAgICAgICAgICAgICAgICAvLyAuLi4KPiA+Pj4+ICsgICAgICAgICAgICB9Owo+ID4+
Pj4gKwo+ID4+Pj4gKyAgICAgICAgICAgIHBzY2kgewo+ID4+Pj4gKyAgICAgICAgICAgICAgICAg
ICAgLy8gLi4uCj4gPj4+PiArICAgICAgICAgICAgfTsKPiA+Pj4+ICsKPiA+Pj4+ICsgICAgICAg
ICAgICBzb2NAIHsKPiA+Pj4+ICsgICAgICAgICAgICAgICAgICAgIGRtYTogZG1hLWNvbnRyb2xs
ZXJAMTAwMDAgewo+ID4+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAvLyAuLi4KPiA+
Pj4+ICsgICAgICAgICAgICAgICAgICAgIH07Cj4gPj4+PiArCj4gPj4+PiArICAgICAgICAgICAg
ICAgICAgICBjbGs6IGNsb2NrLWNvbnRyb2xsZXJAODAwMDAgewo+ID4+Pj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAvLyAuLi4KPiA+Pj4+ICsgICAgICAgICAgICAgICAgICAgIH07Cj4g
Pj4+PiArICAgICAgICAgICAgfTsKPiA+Pj4+ICsgICAgfTsKPiA+Pj4+ICsKPiA+Pj4+ICsgICAg
Ly8gQm9hcmQgRFRTCj4gPj4+PiArCj4gPj4+PiArICAgICZjbGsgewo+ID4+Pj4gKyAgICAgICAg
ICAgIC8vIC4uLgo+ID4+Pj4gKyAgICB9Owo+ID4+Pj4gKwo+ID4+Pj4gKyAgICAmZG1hIHsKPiA+
Pj4+ICsgICAgICAgICAgICAvLyAuLi4KPiA+Pj4+ICsgICAgfTsKPiA+Pj4+ICsKPiA+Pj4+ICsK
PiA+Pj4+ICtPcmRlciBvZiBQcm9wZXJ0aWVzIGluIERldmljZSBOb2RlCj4gPj4+PiArLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+ID4+Pj4gKwo+ID4+Pj4gK0ZvbGxvd2luZyBv
cmRlciBvZiBwcm9wZXJ0aWVzIGluIGRldmljZSBub2RlcyBpcyBwcmVmZXJyZWQ6Cj4gPj4+PiAr
Cj4gPj4+PiArMS4gY29tcGF0aWJsZQo+ID4+Pj4gKzIuIHJlZwo+ID4+Pj4gKzMuIHJhbmdlcwo+
ID4+Pj4gKzQuIFN0YW5kYXJkL2NvbW1vbiBwcm9wZXJ0aWVzIChkZWZpbmVkIGJ5IGNvbW1vbiBi
aW5kaW5ncywgZS5nLiB3aXRob3V0Cj4gPj4+PiArICAgdmVuZG9yLXByZWZpeGVzKQo+ID4+Pj4g
KzUuIFZlbmRvci1zcGVjaWZpYyBwcm9wZXJ0aWVzCj4gPj4+PiArNi4gc3RhdHVzIChpZiBhcHBs
aWNhYmxlKQo+ID4+Pj4gKzcuIENoaWxkIG5vZGVzLCB3aGVyZSBlYWNoIG5vZGUgaXMgcHJlY2Vk
ZWQgd2l0aCBhIGJsYW5rIGxpbmUKPiA+Pj4+ICsKPiA+Pj4+ICtUaGUgInN0YXR1cyIgcHJvcGVy
dHkgaXMgYnkgZGVmYXVsdCAib2theSIsIHRodXMgaXQgY2FuIGJlIG9taXR0ZWQuCj4gPj4+Cj4g
Pj4+IEkgdGhpbmsgaXQgd291bGQgcmVhbGx5IGhlbHAgdG8gaW5jbHVkZSBwb3NpdGlvbiBvZiAj
YWRkcmVzcy1jZWxscyBhbmQKPiA+Pj4gI3NpemUtY2VsbHMgaGVyZS4gSW4gc29tZSBmaWxlcyBJ
IHNhdyB0aGVtIGFib3ZlICJjb21wYXRpYmxlIiB0aGF0IHNlZW1zCj4gPj4+IHVuaW50dWl0aXZl
LiBTb21lIHByZWZlciBwdXR0aW5nIHRoZW0gYXQgZW5kIHdoaWNoIEkgdGhpbmsgbWFrZXMgc2Vu
c2UKPiA+Pj4gYXMgdGhleSBhZmZlY3QgY2hpbGRyZW4gbm9kZXMuCj4gPj4+Cj4gPj4+IFdoYXRl
dmVyIHlvdSBjaG9vc2UgaXQnZCBiZSBqdXN0IG5pY2UgdG8gaGF2ZSB0aGluZ3MgY29uc2lzdGVu
dC4KPiA+Pgo+ID4+IFRoaXMgaXMgYSBzdGFuZGFyZC9jb21tb24gcHJvcGVydHksIHRodXMgaXQg
Z29lcyB0byAoNCkgYWJvdmUuCj4gPgo+ID4gSXQncyBwcm9iYWJseSBhIG1peCwgYnV0IEFGQUlL
IGEgbG90IG9mIHRoZSBkZXZpY2UgdHJlZXMgaW4gdHJlZSBoYXZlCj4gPiAjKi1jZWxscyBhZnRl
ciAic3RhdHVzIi4gSW4gc29tZSBjYXNlcyB0aGV5IGFyZSBhZGRlZCBpbiB0aGUgYm9hcmQKPiA+
IC5kdHMgZmlsZXMsIG5vdCB0aGUgY2hpcC9tb2R1bGUgLmR0c2kgZmlsZXMuCj4KPiBFeGlzdGlu
ZyBEVFMgaXMgbm90IGEgZ29vZCBleGFtcGxlIDopCj4KPiA+Cj4gPiArMSB0aGF0IGl0IG1ha2Vz
IHNlbnNlIGF0IHRoZSBlbmQgYXMgdGhleSBhZmZlY3QgY2hpbGQgbm9kZXMuCj4KPiBJIHN0aWxs
IGluc2lzdCB0aGF0IHN0YXR1cyBtdXN0IGJlIHRoZSBsYXN0LCBiZWNhdXNlOgo+IDEuIE1hbnkg
U29DIG5vZGVzIGhhdmUgYWRkcmVzcy9zaXplIGNlbGxzIGJ1dCBkbyBub3QgaGF2ZSBhbnkgY2hp
bGRyZW4KPiAoSTJDLCBTUEkpLCBzbyB3ZSBwdXQgdXNlbGVzcyBpbmZvcm1hdGlvbiBhdCB0aGUg
ZW5kLgo+IDIuIFN0YXR1cyBzaG91bGQgYmUgdGhlIGZpbmFsIGluZm9ybWF0aW9uIHRvIHNheSB3
aGV0aGVyIHRoZSBub2RlIGlzCj4gcmVhZHkgb3IgaXMgbm90LiBJIHJlYWQgdGhlIG5vZGUsIGNo
ZWNrIHByb3BlcnRpZXMgYW5kIHRoZW4gbG9vayBhdCB0aGUgZW5kOgo+IGEuIExhY2sgb2Ygc3Rh
dHVzIG1lYW5zIGl0IGlzIHJlYWR5Lgo+IGIuIHN0YXR1cz1kaXNhYmxlZCBtZWFucyBkZXZpY2Ug
c3RpbGwgbmVlZHMgYm9hcmQgcmVzb3VyY2VzL2N1c3RvbWl6YXRpb24KCisxIGZvciBzdGF0dXMg
YXQgdGhlIGVuZCAoYmVmb3JlIGNoaWxkcmVuKSwgc28gaXQncyBlYXN5IHRvIGZpbmQuCkFsc28s
IHJlYWxpdHkgY2FuIGxvb2sgbGlrZSB0aGUgZXhhbXBsZSBpbiB0aGUgYmluZGluZ3MsIHdpdGgg
YW4gb3B0aW9uYWwKc3RhdHVzIHByb3BlcnR5IGFwcGVuZGVkLgoKR3J7b2V0amUsZWV0aW5nfXMs
CgogICAgICAgICAgICAgICAgICAgICAgICBHZWVydAoKLS0gCkdlZXJ0IFV5dHRlcmhvZXZlbiAt
LSBUaGVyZSdzIGxvdHMgb2YgTGludXggYmV5b25kIGlhMzIgLS0gZ2VlcnRAbGludXgtbTY4ay5v
cmcKCkluIHBlcnNvbmFsIGNvbnZlcnNhdGlvbnMgd2l0aCB0ZWNobmljYWwgcGVvcGxlLCBJIGNh
bGwgbXlzZWxmIGEgaGFja2VyLiBCdXQKd2hlbiBJJ20gdGFsa2luZyB0byBqb3VybmFsaXN0cyBJ
IGp1c3Qgc2F5ICJwcm9ncmFtbWVyIiBvciBzb21ldGhpbmcgbGlrZSB0aGF0LgogICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIC0tIExpbnVzIFRvcnZhbGRzCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

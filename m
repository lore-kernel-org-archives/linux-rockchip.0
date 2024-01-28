Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 908D6C47258
	for <linux-rockchip@archiver.kernel.org>; Sun, 28 Jan 2024 20:09:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=enMYnLYyOsZLTa0xpv9DSqWvD93jm7FZo2LaHpDCZHs=; b=gOBYp9vo84t8Xl
	wwXNmsEu1UAFX08IP3NxGKhjUYV2C2117J31wQmygWKKMXe2pDJYQaWp7W+gRq1UTdFkZtw5JDlha
	0nCKS3ec26IUiCg+JpTtkbomuknN2pD/3Hol/brHfGnru7NMbzMBTKRksdffEro2TjOAhyHIsaefH
	DGx+956LrsSF9cEsukkxA5hS2ndjlXhJJKTaPmw2f+4ZS0HPvCSeo0Wd7mdgspU9BBS5wDynpSdTd
	kKmSxIMV3jNU9BAcUGd9YOHDkfC9ie4HYq68nq4bMC33c+WdMxzHwhGdsL+RPFpR03v1Bnme7Ibqs
	iTGSAVWzCDjLUXgmoM4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUBSf-0000000AR6U-23c7;
	Sun, 28 Jan 2024 20:09:01 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUBSc-0000000AR5b-1Iz2;
	Sun, 28 Jan 2024 20:08:59 +0000
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-55a035669d5so2396087a12.2;
        Sun, 28 Jan 2024 12:08:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706472533; x=1707077333; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hpcFb9CQUcmE0qw9BfWGbhCG2pDHXS8RAhRX4upBQ/0=;
        b=nLo8aX5bjwo9pD0p83DvszMZ6iYRY3qR2FmTEd+V9BpQDaVhZ0BE7p9zqghBEiL/23
         qlVTipa3EtRFq1McPdA7Mw1zFoQU1m+LsY4VATAsiiqZ5VRPCEZjjpQuhVb5b+kv+cit
         GVfc7BUoGlzb1TLfoWenRI39NSt/G0vkjRc/ahy/hFG0kGkzHpu/AvCYxfgus9cG9L0Y
         GIlROSRCOPR9+jNqh3Tgh0aGjoD6iNvrO8fj0tbnYbm21cXO8ne0YRMOmEoxxc1/J6oy
         IBn9KCh7VB/p6wOgagxMSOU70nzeIVu0ReOGm2ctb3YZ0mfQgWwKqcBmrugCTVHVrB+P
         XIvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706472533; x=1707077333;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hpcFb9CQUcmE0qw9BfWGbhCG2pDHXS8RAhRX4upBQ/0=;
        b=fvXhuHYEkHvJ2Kz1vI0UL1cWDaD71HFzZ9ZcZi0G+Mb+2C3rCvAqdb7T5U8ZWPrA9G
         aVxd7nd41v6POFd/tPpv2YG/yiUxK3eSaGG2bD4vNp3WXWXcAImo9m9xeQ4VUpJl3aGq
         QJW8jULcFDoj68+4U76108+mNXI2R76DMdKQ4vrKX+xPASpGU+XSkl9mrxI5UY0MbDvj
         E1o1+yXF8VffDiV5TBrX7jSi/9FwWo+opc2/eQEk0lL7cp5YNvQZ/iUXsP5QcQUaZqjd
         TUq3OSpB5YO7W8YjdMzOwBIeFakvi+PdJxhNf/ou2mqXE04FT+4ojviTohDpW9RD1Qof
         0fcg==
X-Gm-Message-State: AOJu0YxOk9z3hnVJxUklo7hwSanOxAaXiuJP9bgMET+JrwR0EykaQWP/
	iW81+mt/1Ud3M+p3kA7vT8Pj0yeCftqLAgfy+u39OLybRmluoDhM2eTE1x4Cums2y4q7QuONmA/
	pjo7Jibee+g6fpBviMIqevUbuFt0=
X-Google-Smtp-Source: AGHT+IEOEjeCTkeOpSuhG+HjHqJqutXlzhA2zejgtwIdHI9kusmjwwmozj7v/6JbFoiL4ZomYyqtT+oyEnlfzY2Vm0g=
X-Received: by 2002:a17:906:65cf:b0:a31:8b26:47ee with SMTP id
 z15-20020a17090665cf00b00a318b2647eemr2671421ejn.55.1706472533292; Sun, 28
 Jan 2024 12:08:53 -0800 (PST)
MIME-Version: 1.0
References: <20240125-rk-dts-additions-v1-0-5879275db36f@gmail.com>
 <20240125-rk-dts-additions-v1-3-5879275db36f@gmail.com> <df062818d21f3318c033859d0e95efc7@manjaro.org>
 <b5b1900a6e309890f449ec91594b8d6c@manjaro.org>
In-Reply-To: <b5b1900a6e309890f449ec91594b8d6c@manjaro.org>
From: Alexey Charkov <alchark@gmail.com>
Date: Mon, 29 Jan 2024 00:08:41 +0400
Message-ID: <CABjd4YxqarUCbZ-a2XLe3TWJ-qjphGkyq=wDnctnEhdoSdPPpw@mail.gmail.com>
Subject: Re: [PATCH 3/4] arm64: dts: rockchip: enable temperature driven fan
 control on Rock 5B
To: Dragan Simic <dsimic@manjaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Daniel Lezcano <daniel.lezcano@linaro.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240128_120858_413211_E8B19221 
X-CRM114-Status: GOOD (  32.43  )
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

T24gU3VuLCBKYW4gMjgsIDIwMjQgYXQgMTI6MjfigK9BTSBEcmFnYW4gU2ltaWMgPGRzaW1pY0Bt
YW5qYXJvLm9yZz4gd3JvdGU6Cj4KPiBIZWxsbyBBbGV4ZXksCgpIZWxsbyBEcmFnYW4sCgo+IE9u
IDIwMjQtMDEtMjYgMDA6MTMsIERyYWdhbiBTaW1pYyB3cm90ZToKPiA+IE9uIDIwMjQtMDEtMjQg
MjE6MzAsIEFsZXhleSBDaGFya292IHdyb3RlOgo+ID4+IFRoaXMgZW5hYmxlcyB0aGVybWFsIG1v
bml0b3Jpbmcgb24gUmFkeGEgUm9jayA1QiBhbmQgbGlua3MgdGhlIFBXTQo+ID4+IGZhbiBhcyBh
biBhY3RpdmUgY29vbGluZyBkZXZpY2UgbWFuYWdlZCBhdXRvbWF0aWNhbGx5IGJ5IHRoZSB0aGVy
bWFsCj4gPj4gc3Vic3lzdGVtLCB3aXRoIGEgdGFyZ2V0IFNvQyB0ZW1wZXJhdHVyZSBvZiA1NUMK
PiA+Pgo+ID4+IFNpZ25lZC1vZmYtYnk6IEFsZXhleSBDaGFya292IDxhbGNoYXJrQGdtYWlsLmNv
bT4KPiA+PiAtLS0KPiA+PiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9j
ay01Yi5kdHMgfCAyNQo+ID4+ICsrKysrKysrKysrKysrKysrKysrKysrKy0KPiA+PiAgMSBmaWxl
IGNoYW5nZWQsIDI0IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiA+Pgo+ID4+IGRpZmYg
LS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1yb2NrLTViLmR0cwo+
ID4+IGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi5kdHMKPiA+
PiBpbmRleCA5YjdiZjZjZWM4YmQuLmM0Yzk0ZTBiNjE2MyAxMDA2NDQKPiA+PiAtLS0gYS9hcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1yb2NrLTViLmR0cwo+ID4+ICsrKyBiL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNWIuZHRzCj4gPj4gQEAgLTUy
LDcgKzUyLDcgQEAgbGVkX3JnYl9iIHsKPiA+Pgo+ID4+ICAgICAgZmFuOiBwd20tZmFuIHsKPiA+
PiAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJwd20tZmFuIjsKPiA+PiAtICAgICAgICAgICAg
Y29vbGluZy1sZXZlbHMgPSA8MCA5NSAxNDUgMTk1IDI1NT47Cj4gPj4gKyAgICAgICAgICAgIGNv
b2xpbmctbGV2ZWxzID0gPDAgMTIwIDE1MCAxODAgMjEwIDI0MCAyNTU+Owo+ID4+ICAgICAgICAg
ICAgICBmYW4tc3VwcGx5ID0gPCZ2Y2M1djBfc3lzPjsKPiA+PiAgICAgICAgICAgICAgcHdtcyA9
IDwmcHdtMSAwIDUwMDAwIDA+Owo+ID4+ICAgICAgICAgICAgICAjY29vbGluZy1jZWxscyA9IDwy
PjsKPiA+PiBAQCAtMTgwLDYgKzE4MCwyNSBAQCAmY3B1X2wzIHsKPiA+PiAgICAgIGNwdS1zdXBw
bHkgPSA8JnZkZF9jcHVfbGl0X3MwPjsKPiA+PiAgfTsKPiA+Pgo+ID4+ICsmcGFja2FnZV90aGVy
bWFsIHsKPiA+PiArICAgIHBvbGxpbmctZGVsYXkgPSA8MTAwMD47Cj4gPj4gKwo+ID4+ICsgICAg
dHJpcHMgewo+ID4+ICsgICAgICAgICAgICBwYWNrYWdlX2ZhbjogcGFja2FnZS1mYW4gewo+ID4+
ICsgICAgICAgICAgICAgICAgICAgIHRlbXBlcmF0dXJlID0gPDU1MDAwPjsKPiA+PiArICAgICAg
ICAgICAgICAgICAgICBoeXN0ZXJlc2lzID0gPDIwMDA+Owo+ID4+ICsgICAgICAgICAgICAgICAg
ICAgIHR5cGUgPSAiYWN0aXZlIjsKPiA+PiArICAgICAgICAgICAgfTsKPiA+PiArICAgIH07Cj4g
Pj4gKwo+ID4+ICsgICAgY29vbGluZy1tYXBzIHsKPiA+PiArICAgICAgICAgICAgbWFwLWZhbiB7
Cj4gPj4gKyAgICAgICAgICAgICAgICAgICAgdHJpcCA9IDwmcGFja2FnZV9mYW4+Owo+ID4+ICsg
ICAgICAgICAgICAgICAgICAgIGNvb2xpbmctZGV2aWNlID0gPCZmYW4gVEhFUk1BTF9OT19MSU1J
VCBUSEVSTUFMX05PX0xJTUlUPjsKPiA+PiArICAgICAgICAgICAgfTsKPiA+PiArICAgIH07Cj4g
Pj4gK307Cj4gPgo+ID4gSXQgc2hvdWxkIGJlIGJldHRlciB0byBoYXZlIHR3byBuZXcgdHJpcHMg
YW5kIHR3byBuZXcgY29vbGluZyBtYXBzCj4gPiBkZWZpbmVkLCBpbnN0ZWFkIG9mIGhhdmluZyBq
dXN0IG9uZSB0cmlwL21hcCBwYWlyLCBsaWtlIHRoaXM6Cj4gPgo+ID4gJnBhY2thZ2VfdGhlcm1h
bCB7Cj4gPiAgICAgICBwb2xsaW5nLWRlbGF5ID0gPDEwMDA+Owo+ID4KPiA+ICAgICAgIHRyaXBz
IHsKPiA+ICAgICAgICAgICAgICAgcGFja2FnZV93YXJtOiBwYWNrYWdlLXdhcm0gewo+ID4gICAg
ICAgICAgICAgICAgICAgICAgIHRlbXBlcmF0dXJlID0gPDU1MDAwPjsKPiA+ICAgICAgICAgICAg
ICAgICAgICAgICBoeXN0ZXJlc2lzID0gPDIwMDA+Owo+ID4gICAgICAgICAgICAgICAgICAgICAg
IHR5cGUgPSAiYWN0aXZlIjsKPiA+ICAgICAgICAgICAgICAgfTsKPiA+Cj4gPiAgICAgICAgICAg
ICAgIHBhY2thZ2VfaG90OiBwYWNrYWdlLWhvdCB7Cj4gPiAgICAgICAgICAgICAgICAgICAgICAg
dGVtcGVyYXR1cmUgPSA8NjUwMDA+Owo+ID4gICAgICAgICAgICAgICAgICAgICAgIGh5c3RlcmVz
aXMgPSA8MjAwMD47Cj4gPiAgICAgICAgICAgICAgICAgICAgICAgdHlwZSA9ICJhY3RpdmUiOwo+
ID4gICAgICAgICAgICAgICB9Owo+ID4gICAgICAgfTsKPiA+Cj4gPiAgICAgICBjb29saW5nLW1h
cHMgewo+ID4gICAgICAgICAgICAgICBtYXBYIHsKPiA+ICAgICAgICAgICAgICAgICAgICAgICB0
cmlwID0gPCZwYWNrYWdlX3dhcm0+Owo+ID4gICAgICAgICAgICAgICAgICAgICAgIGNvb2xpbmct
ZGV2aWNlID0gPCZmYW4gVEhFUk1BTF9OT19MSU1JVCAxPjsKPiA+ICAgICAgICAgICAgICAgfTsK
PiA+Cj4gPiAgICAgICAgICAgICAgIG1hcFkgewo+ID4gICAgICAgICAgICAgICAgICAgICAgIHRy
aXAgPSA8JnBhY2thZ2VfaG90PjsKPiA+ICAgICAgICAgICAgICAgICAgICAgICBjb29saW5nLWRl
dmljZSA9IDwmZmFuIDIgVEhFUk1BTF9OT19MSU1JVD47Cj4gPiAgICAgICAgICAgICAgIH07Cj4g
PiAgICAgICB9Owo+ID4gfTsKPiA+Cj4gPiBUaGUgaWRlYSBiZWhpbmQgdGhpcyBhcHByb2FjaCBp
cyB0byBrZWVwIHRoZSBmYW4gc3Bpbm5pbmcgYXQgdGhlIGxvd2VzdAo+ID4gYXZhaWxhYmxlIHNw
ZWVkIHVudGlsIHRoZSBwYWNrYWdlIHRlbXBlcmF0dXJlIHJlYWNoZXMgdGhlIHNlY29uZCB0cmlw
J3MKPiA+IHRlbXBlcmF0dXJlIGxldmVsLCBhdCB3aGljaCBwb2ludCB0aGUgZmFuIHN0YXJ0cyBy
YW1waW5nIHVwLiAgQW4KPiA+IGFwcHJvYWNoCj4gPiBsaWtlIHRoaXMgaXMgYWxyZWFkeSBlbXBs
b3llZCBieSB0aGUgUGluZTY0IFJvY2tQcm82NCBTQkMuCj4gPgo+ID4gVGhpcyB3YXksIHdlJ2xs
IGJlIGRvaW5nIG91ciBiZXN0IHRvIGtlZXAgdGhlIGZhbiBub2lzZSBkb3duOyAgb2YKPiA+IGNv
dXJzZSwKPiA+IGl0IHdpbGwgZGVwZW5kIG9uIHRoZSBwYXJ0aWN1bGFyIGhlYXRzaW5rIGFuZCBm
YW4gY29tYm8gaG93IGxvbmcgdGhlCj4gPiBmYW4KPiA+IGNhbiBiZSBrZXB0IGF0IHRoZSBsb3dl
c3Qgc3BlZWQsIGJ1dCB3ZSBzaG91bGQgYWltIGF0IHN1cHBvcnRpbmcgYXMKPiA+IG1hbnkKPiA+
IGRpZmZlcmVudCBjb29saW5nIHNldHVwcyBhcyBwb3NzaWJsZSwgYW5kIGFzIHdlbGwgYXMgcG9z
c2libGUsIG91dCBvZgo+ID4gdGhlCj4gPiBib3ggYW5kIHdpdGggbm8gYWRkaXRpb25hbCB0d2Vh
a2luZyByZXF1aXJlZC4KPiA+Cj4gPiBQbGVhc2Ugbm90aWNlICJtYXBYIiBhbmQgIm1hcFkiIGFz
IHRoZSBuYW1lcyBvZiB0aGUgYWRkaXRpb25hbCBjb29saW5nCj4gPiBtYXBzLAo+ID4gd2hlcmUg
WCBhbmQgWSBhcmUgc2ltcGx5IHRoZSBuZXh0IGxvd2VzdCBhdmFpbGFibGUgaW5kaWNlcywgd2hp
Y2ggaXMKPiA+IHByZXR0eQo+ID4gbXVjaCB0aGUgdXN1YWwgd2F5IHRvIG5hbWUgdGhlIGFkZGl0
aW9uYWwgY29vbGluZyBtYXBzLgo+Cj4gSnVzdCBjaGVja2luZywgaGF2ZSB5b3Ugc2VlbiB0aGlz
PyAgUXVpdGUgYSBmZXcgbWVzc2FnZXMgd2VyZSBleGNoYW5nZWQKPiBvbiB0aGUgc2FtZSBkYXks
IHNvIGp1c3Qgd2FudGVkIHRvIG1ha2Ugc3VyZSB5b3UgZGlkbid0IG1pc3MgdGhpcyBvbmUuCgpZ
ZXMsIHRoYW5rIHlvdSBmb3IgcG9pbnRpbmcgaXQgb3V0IGFuZCBmb2xsb3dpbmcgdXAuCgpJJ3Zl
IGJlZW4gdGVzdGluZyBkaWZmZXJlbnQgc2V0dXBzIHRvIGdldCBteSB0aG91Z2h0cyB0b2dldGhl
ciBvbiB0aGlzCm9uZS4gTG9uZyBzdG9yeSBzaG9ydCwgeW91ciBzdWdnZXN0ZWQgc2V0dXAgaW5k
ZWVkIG1ha2VzIHRoZSBzeXN0ZW0KcXVpZXRlciBtb3N0IG9mIHRoZSB0aW1lIHdoaWxlIHN0aWxs
IGJlaW5nIHNhZmVseSBmYXIgZnJvbSBoaXR0aW5nIHRoZQp0aHJvdHRsaW5nIHRocmVzaG9sZCwg
dGhvdWdoIGl0IGFwcGVhcnMgdGhhdCB0aGUgbWFpbiBpbmZsdWVuY2UgaXMKZnJvbSB0aGUgaGln
aGVyIHRlbXBlcmF0dXJlIHZhbHVlIGluIHRoZSBzZWNvbmQgdHJpcCAoYWZ0ZXIgd2hpY2ggdGhl
CmZhbiBhY2NlbGVyYXRlcykgcmF0aGVyIHRoYW4gZnJvbSB0aGUgcHJlc2VuY2Ugb2YgdGhlIGZp
cnN0IHRyaXAgYW5kCnRoZSBjb3JyZXNwb25kaW5nIGNvb2xpbmcgbWFwIGNhcHBlZCBhdCB0aGUg
bWluaW11bS1zcGVlZCBmYW4gYWN0aW9uLgoKSW4gbXkgb2JzZXJ2YXRpb24sIHRoZSBzeXN0ZW0g
cmFyZWx5IGNyb3NzZXMgdGhlIDU1QyB0aHJlc2hvbGQgdW5kZXIKcGFydGlhbCBsb2FkLCBhbmQg
d2hlbiB0aGUgbG9hZCBpcyBoaWdoIChlLmcuIGNvbXBpbGluZyBzdHVmZiB3aXRoIDgKY29uY3Vy
cmVudCBqb2JzKSBpdCB0YWtlcyB+MiBzZWNvbmRzIHRvIGdvIGZyb20gYmVsb3cgdGhlIGZpcnN0
IHRyaXAKcG9pbnQgdG8gYWJvdmUgdGhlIHNlY29uZCB0cmlwIHBvaW50LCBzbyB0aGUgZmFuIGRv
ZXNuJ3QgcmVhbGx5IGdldAp0aGUgY2hhbmNlIHRvIHN0YXkgYXQgaXRzIGxlaXN1cmVseSBmaXJz
dCBzdGF0ZS4KClNvIGZyYW5rbHkgSSdtIGluY2xpbmVkIHRvIGxlYXZlIG9uZSB0cmlwIHBvaW50
IGhlcmUsIGFuZCBzaW1wbHkKY2hhbmdlIGl0cyB0ZW1wZXJhdHVyZSB0aHJlc2hvbGQgZnJvbSA1
NUMgdG8gNjVDIC0ganVzdCB0byBrZWVwIGl0CnNpbXBsZS4KCldoYXQgZG8geW91IHRoaW5rPwoK
QmVzdCByZWdhcmRzLApBbGV4ZXkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81B84C47258
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Jan 2024 14:47:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UQq4h9b04P+kDX0wMd/ZpuCDqpOKvHH/O04qnXxAEWM=; b=kj4qgGJS3oN+uh
	ebfWX4Aob/57SYxAsAnwjlS2j449kb7O2dOfIWgOw0zZmHhlqPi6UJSxhIO9ljHTISRnMF8/Uc6da
	ggSUfRqCAXRh+jMMa7erpmJk+nk4VpqntwJuoSXt1Nxt5GudLyKl2TrJg0i1ubuqGtu200/KzuKRu
	O3MNLJDr5D5gaikYuKJA4QyLehcXAKUCqAFFGQY//58NLoWyVKjB3QFPGzCzR4u0n93f5+0MZbFFV
	ErGwe7+xP40qpR9EC8vk/J+nhlsDXixddWdMGZCEMhuCgsvwi4DxYBUv02Fk+HZHmIdXWp2x+VUxQ
	wpjuT/ZT0XIJ75FpjDog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rT10c-00000000Qfm-35FE;
	Thu, 25 Jan 2024 14:47:14 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rT10Y-00000000QeI-0d8E;
	Thu, 25 Jan 2024 14:47:12 +0000
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-a31713c8bdbso83642266b.2;
        Thu, 25 Jan 2024 06:47:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706194028; x=1706798828; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n4hX8W9xNuyyOSQCgz2SgdgTnuDIhAWJKxtpQ17e4fg=;
        b=nC+0OH6DsKruKWrvF2+gd3FYPzfZvkxyBOGh7lpa60Gc8IWIBMbKy+cARaRlcTL16Y
         RVGIWrgA9FJv243oL3pKcjBC1S+5Ehi7cSJ23cHg5n74XjDDTmuvSTuwP/vRTjXL14Ao
         4unedeejTyRSmcZ4B3fAPqTZn4H2mQCHwbgMokD7hYQ7hFJZU7LHkwYUz1KIrWgrJDaY
         V2TVXyMVWmyjp1zLrXio0ebdgbdsKrm2iDH4Kpy3YXrSLGzpwt1D817NN1y8TMkIRwc3
         jx/xetSCdlquYWvav9zfP2nUf2JIGodRflmdWn/Vr1GOOtXPMg5KIhgclHlJ0IULEto6
         OiUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706194028; x=1706798828;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=n4hX8W9xNuyyOSQCgz2SgdgTnuDIhAWJKxtpQ17e4fg=;
        b=vnBeWx0sQG4gdZtTqmHXZlVEaabmT+eybYjsgX64MM4vLNNUeSUh6jq1t7cxj6AHjX
         ciukX8z5DxVG3hztMlcG7zgySOGnJBtb2fb7AEg4xBIR3fIwJDK9KHLyrGJMJYe8fLTP
         JDH28X71tI95z15fZYhkrWsX9BSU8QtPsb7dEIiTPC5QwiJlM3pcS9zcMIkgMocKSYkF
         TUnPmGd/7c/fo9ZqmObRNt7WDw01zmrPDDvl9r/IFsIVbfb9CQPgsG3R2U6NuG7UEXd7
         ZJCZ/LZxPrjEDgO5TE0eCCFwkWgU8Zur4R1myJ6T5LZTKcT67LnocxxBU6vEeNWBe76Y
         Fu1w==
X-Gm-Message-State: AOJu0YwtGu2G44xyhM1XQ2TJPlXv8Olo2T3nqmJTqwYOyLSnL1atW+c8
	8ClYoxfCSXJHnfyVIRwNCSmmPJJhVHd46MiiAbI/C9ShGaJo8InCVGhZe4PfcSyeFMzzetkpCLH
	V+LRa46/mq2tedFYW0ok8SdRNALM=
X-Google-Smtp-Source: AGHT+IERmim/LImtnzip9nkUi3TvGcZu8W1l3NIHibtypa8XUy+GTjk74KgDQQaqjeana1FBSWPhP1KA24QsBIRzYyE=
X-Received: by 2002:a17:907:1591:b0:a2e:d32b:6fc7 with SMTP id
 cf17-20020a170907159100b00a2ed32b6fc7mr537611ejc.119.1706194027557; Thu, 25
 Jan 2024 06:47:07 -0800 (PST)
MIME-Version: 1.0
References: <20240125-rk-dts-additions-v1-0-5879275db36f@gmail.com>
 <20240125-rk-dts-additions-v1-2-5879275db36f@gmail.com> <245f5692-be30-4216-8b13-988092793732@linaro.org>
 <CABjd4Yz3RTeog0gvYaSK3A5H8NzQpYeqmjRWN1QDHjVPG9qTpA@mail.gmail.com> <e65d4640-9bb0-4c34-8eab-865ce8dd59bf@linaro.org>
In-Reply-To: <e65d4640-9bb0-4c34-8eab-865ce8dd59bf@linaro.org>
From: Alexey Charkov <alchark@gmail.com>
Date: Thu, 25 Jan 2024 18:46:56 +0400
Message-ID: <CABjd4YwysdWU6CYxC3s13OZFTf2oXc2+bW0bi+19FovcE+hK3Q@mail.gmail.com>
Subject: Re: [PATCH 2/4] arm64: dts: rockchip: enable built-in thermal
 monitoring on rk3588
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Dragan Simic <dsimic@manjaro.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240125_064710_236651_8A8551D5 
X-CRM114-Status: GOOD (  38.09  )
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

T24gVGh1LCBKYW4gMjUsIDIwMjQgYXQgMjowMuKAr1BNIERhbmllbCBMZXpjYW5vCjxkYW5pZWwu
bGV6Y2Fub0BsaW5hcm8ub3JnPiB3cm90ZToKPgo+IE9uIDI1LzAxLzIwMjQgMDk6MjYsIEFsZXhl
eSBDaGFya292IHdyb3RlOgo+ID4gT24gVGh1LCBKYW4gMjUsIDIwMjQgYXQgMTo1NuKAr0FNIERh
bmllbCBMZXpjYW5vCj4gPiA8ZGFuaWVsLmxlemNhbm9AbGluYXJvLm9yZz4gd3JvdGU6Cj4gPj4K
PiA+PiBPbiAyNC8wMS8yMDI0IDIxOjMwLCBBbGV4ZXkgQ2hhcmtvdiB3cm90ZToKPiA+Pj4gSW5j
bHVkZSB0aGVybWFsIHpvbmVzIGluZm9ybWF0aW9uIGluIGRldmljZSB0cmVlIGZvciByazM1ODgg
dmFyaWFudHMKPiA+Pgo+ID4+IFRoZXJlIGlzIGFuIGVuZXJneSBtb2RlbCBmb3IgdGhlIENQVXMu
IEJ1dCBmaW5kaW5nIG91dCB0aGUgc3VzdGFpbmFibGUKPiA+PiBwb3dlciBtYXkgYmUgYSBiaXQg
dHJpY2t5LiBTbyBJIHN1Z2dlc3QgdG8gcmVtb3ZlIGV2ZXJ5dGhpbmcgcmVsYXRlZCB0bwo+ID4+
IHRoZSBwb3dlciBhbGxvY2F0b3IgaW4gdGhpcyBjaGFuZ2UgYW5kIHByb3Bvc2UgYSBkZWRpY2F0
ZWQgY2hhbmdlIHdpdGgKPiA+PiBhbGwgdGhlIHBvd2VyIGNvbmZpZ3VyYXRpb24gKHdoaWNoIGlu
Y2x1ZGVzIHByb3BlciBrX3AqIGNvZWZmaWNpZW50cyB0bwo+ID4+IGJlIHNldCBmcm9tIHVzZXJz
cGFjZSB0byBoYXZlIGEgZmxhdCBtaXRpZ2F0aW9uIGZpZ3VyZSkuCj4gPj4KPiA+PiBUaGF0IGlt
cGxpZXMgcmVtb3ZpbmcgdGhlICJjb250cmlidXRpb24iIHByb3BlcnRpZXMgaW4gdGhpcyBkZXNj
cmlwdGlvbi4KPiA+Cj4gPiBBbHJpZ2h0LCBJJ2xsIGp1c3QgZHJvcCB0aG9zZSAiY29udHJpYnV0
aW9uIiBwcm9wZXJ0aWVzLCB0aGFua3MhCj4gPgo+ID4+IFNvbWUgY29tbWVudHMgYmVsb3cgYnV0
IGRlZmluaXRpdmVseSB0aGlzIHZlcnNpb24gaXMgY2xvc2UgdG8gYmUgb2suCj4gPgo+ID4gWWF5
ISA6KQo+ID4KPiA+Pj4gU2lnbmVkLW9mZi1ieTogQWxleGV5IENoYXJrb3YgPGFsY2hhcmtAZ21h
aWwuY29tPgo+ID4+PiAtLS0KPiA+Pj4gICAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azM1ODhzLmR0c2kgfCAxNjUgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gPj4+ICAg
IDEgZmlsZSBjaGFuZ2VkLCAxNjUgaW5zZXJ0aW9ucygrKQo+ID4+Pgo+ID4+PiBkaWZmIC0tZ2l0
IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLmR0c2kgYi9hcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMuZHRzaQo+ID4+PiBpbmRleCAzNmIxYjdhY2ZlNmEu
LjEzMWI5ZWIyMTM5OCAxMDA2NDQKPiA+Pj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazM1ODhzLmR0c2kKPiA+Pj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazM1ODhzLmR0c2kKPiA+Pj4gQEAgLTEwLDYgKzEwLDcgQEAKPiA+Pj4gICAgI2luY2x1ZGUg
PGR0LWJpbmRpbmdzL3Jlc2V0L3JvY2tjaGlwLHJrMzU4OC1jcnUuaD4KPiA+Pj4gICAgI2luY2x1
ZGUgPGR0LWJpbmRpbmdzL3BoeS9waHkuaD4KPiA+Pj4gICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdz
L2F0YS9haGNpLmg+Cj4gPj4+ICsjaW5jbHVkZSA8ZHQtYmluZGluZ3MvdGhlcm1hbC90aGVybWFs
Lmg+Cj4gPj4+Cj4gPj4+ICAgIC8gewo+ID4+PiAgICAgICAgY29tcGF0aWJsZSA9ICJyb2NrY2hp
cCxyazM1ODgiOwo+ID4+PiBAQCAtMjIyOCw2ICsyMjI5LDE3MCBAQCB0c2FkYzogdHNhZGNAZmVj
MDAwMDAgewo+ID4+PiAgICAgICAgICAgICAgICBzdGF0dXMgPSAiZGlzYWJsZWQiOwo+ID4+PiAg
ICAgICAgfTsKPiA+Pj4KPiA+Pj4gKyAgICAgdGhlcm1hbF96b25lczogdGhlcm1hbC16b25lcyB7
Cj4gPj4+ICsgICAgICAgICAgICAgLyogc2Vuc29yIG5lYXIgdGhlIGNlbnRlciBvZiB0aGUgd2hv
bGUgY2hpcCAqLwo+ID4+PiArICAgICAgICAgICAgIHBhY2thZ2VfdGhlcm1hbDogcGFja2FnZS10
aGVybWFsIHsKPiA+Pj4gKyAgICAgICAgICAgICAgICAgICAgIHBvbGxpbmctZGVsYXktcGFzc2l2
ZSA9IDwwPjsKPiA+Pj4gKyAgICAgICAgICAgICAgICAgICAgIHBvbGxpbmctZGVsYXkgPSA8MD47
Cj4gPj4+ICsgICAgICAgICAgICAgICAgICAgICB0aGVybWFsLXNlbnNvcnMgPSA8JnRzYWRjIDA+
Owo+ID4+PiArCj4gPj4+ICsgICAgICAgICAgICAgICAgICAgICB0cmlwcyB7Cj4gPj4+ICsgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHBhY2thZ2VfY3JpdDogcGFja2FnZS1jcml0IHsKPiA+
Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB0ZW1wZXJhdHVyZSA9IDwx
MTUwMDA+Owo+ID4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGh5c3Rl
cmVzaXMgPSA8MD47Cj4gPj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
dHlwZSA9ICJjcml0aWNhbCI7Cj4gPj4+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIH07
Cj4gPj4+ICsgICAgICAgICAgICAgICAgICAgICB9Owo+ID4+PiArICAgICAgICAgICAgIH07Cj4g
Pj4+ICsKPiA+Pj4gKyAgICAgICAgICAgICAvKiBzZW5zb3IgYmV0d2VlbiBBNzYgY29yZXMgMCBh
bmQgMSAqLwo+ID4+PiArICAgICAgICAgICAgIGJpZ2NvcmUwX3RoZXJtYWw6IGJpZ2NvcmUwLXRo
ZXJtYWwgewo+ID4+PiArICAgICAgICAgICAgICAgICAgICAgcG9sbGluZy1kZWxheS1wYXNzaXZl
ID0gPDIwPjsKPiA+Pgo+ID4+IDIwbXMgc2VlbXMgdmVyeSBzaG9ydCwgaXMgdGhpcyB2YWx1ZSBv
biBwdXJwb3NlPyBPciBqdXN0IHBpY2tlZCB1cAo+ID4+IGFyYml0cmFyaWx5Pwo+ID4KPiA+IEZy
YW5rbHksIEkgc2ltcGx5IHVzZWQgdGhlIHZhbHVlIHRoYXQgUmFkeGEncyBkb3duc3RyZWFtIERU
UyBzZXRzIGZvcgo+ID4gbXkgYm9hcmQuIDEwMG1zIHNlZW0gdG8gd29yayBqdXN0IGFzIHdlbGwu
Cj4gPgo+ID4+IElmIGl0IGlzIHBvc3NpYmxlLCBwZXJoYXBzIHlvdSBzaG91bGQgcHJvZmlsZSB0
aGUgdGVtcGVyYXR1cmUgb2YgdGhlc2UKPiA+PiB0aGVybWFsIHpvbmVzIChDUFVzIG9uZXMpLiBU
aGVyZSBpcyBhIHRvb2wgaW4KPiA+PiA8bGludXhkaXI+L3Rvb2xzL3RoZXJtYWwvdGhlcm1vbWV0
ZXIgdG8gZG8gdGhhdC4KPiA+Pgo+ID4+IFlvdSBjYW4gbWVhc3VyZSB3aXRoIDEwbXMgc2FtcGxp
bmcgcmF0ZSB3aGVuIHJ1bm5pbmcgZm9yIGluc3RhbmNlCj4gPj4gZGhyeXN0b25lIHBpbm5lZCBv
biBiMCBhbmQgYjEsIHRoZW4gb24gYjIgYW5kIGIzLiBBbmQgZmluYWxseSBvbiB0aGUKPiA+PiBz
bWFsbCBjbHVzdGVyLgo+ID4KPiA+IEl0IHNlZW1zIHRyaWNreSB0byBpc29sYXRlIHRoZSBlZmZl
Y3RzIGZyb20ganVzdCBvbmUgb2YgdGhlIENQVQo+ID4gY2x1c3RlcnMsIGFzIHRoZWlyIGluZGl2
aWR1YWwgdGhlcm1hbCBvdXRwdXRzIGFyZSBub3QgdGhhdCBoaWdoLgo+ID4KPiA+IEZvciBteSB0
ZXN0aW5nIEkgZGlzYWJsZWQgdGhlIGZhbiAoYnV0IGRpZG4ndCByZW1vdmUgdGhlIGhlYXRzaW5r
IHRvCj4gPiBhdm9pZCB3YXN0aW5nIHRoZSB0aGVybWFsIGludGVyZmFjZSB0YXBlKSwKPgo+IEl0
IGlzIG9rIGJ1dCB0aGUgc3lzdGVtIHdpbGwgaGF2ZSBtb3JlIGhlYXQgY2FwYWNpdHkgYW5kIGl0
IHdpbGwgYmUKPiBuZWNlc3NhcnkgdG8gc2F0dXJhdGUgaXQgYmVmb3JlIHJ1bm5pbmcgdGhlIHRl
c3RzLiBJT1cgd2FybSB1cCB0aGUKPiBzeXN0ZW0gYnkgcnVubmluZyB0aGVybWFsIHN0cmVzcyB0
ZXN0cyBzZXZlcmFsIHRpbWVzLgo+Cj4gPiBhbmQgdHJpZWQgbG9hZGluZyBDUFVzIHdpdGgKPiA+
IHN0cmVzcy1uZy4gSGVyZSBhcmUgdGhlIG9ic2VydmF0aW9uczoKPgo+IFVzdWFsbHkgSSB1c2Ug
ZHJoeXN0b25lIHRvIHRoZXJtYWwgc3RyZXNzIHRoZSBjb3JlcyAoZS4gb25lIG1pbnV0ZSkuCgpI
bW0sIGNvdWxkIHlvdSBwbGVhc2UgcG9pbnQgdG8gdGhlIHNvdXJjZSBwYWNrYWdlIG9yIHJlcG8g
dG8gZ2V0IHRoZQp2ZXJzaW9uIG9mIGRocnlzdG9uZSB5b3UgdXNlPyBJIGNvdWxkIG9ubHkgZmlu
ZCB0aGUgb2xkIHNoYXIgWzFdIGFuZCBhCkRlYmlhbiB2ZXJzaW9uIHdpdGggYWRkZWQgTWFrZWZp
bGUgWzJdLCBidXQgbmVpdGhlciBzZWVtcyB0byBwcm9kdWNlCm11bHRpcGxlIHRocmVhZHMuCgpJ
dCBkb2Vzbid0IHNlZW0gdG8gYmUgcGFja2FnZWQgZm9yIGVpdGhlciBHZW50b28gb3IgRmVkb3Jh
IHVuZm9ydHVuYXRlbHkuCgpJbmRlZWQsIEknbSBnZXR0aW5nIGhpZ2hlciB0aGVybWFsIGxvYWQg
KHZzLiBzdHJlc3MtbmcgLS1jcHUpIGV2ZW4gYnkKc2ltcGx5IGNvbXBpbGluZyBrZXJuZWwgc291
cmNlcywgYWx0aG91Z2ggSSdkIGV4cGVjdCBpdCB0byB3YWl0IGZvcgptZW1vcnkgYW5kL29yIElP
IHF1aXRlIGEgbG90LgoKWzFdIGh0dHBzOi8vd3d3Lm5ldGxpYi5vcmcvYmVuY2htYXJrL2Rocnkt
YwpbMl0gaHR0cHM6Ly9naXRodWIuY29tL3FyaXMvZGhyeXN0b25lLWRlYgoKVGhhbmtzIGEgbG90
LApBbGV4ZXkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK

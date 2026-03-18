Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14829FCD0DC
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Mar 2026 08:39:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n51sfZMsySRIwybOBMYXotm9s+42MDWmFdr26UWKf6M=; b=EbXWNYj7wnQ76f
	Ut1o/zahypieRtMaFJVACRnZYsxAGsgc58c03+wP/ZSKV2wDf1fFGA8PhCMfluXFQ4v8z6gOXJ1wF
	7Y18IGMCnY7IinrSgYQ2FqpQZrG0dJ7ygJx+6Jv3fWxlYaMX0Fp3pgsjAgS6GXl/6GFd3ihgDKLqB
	NNnVyz2C16EubhBEn8B2wuAhq0Ox60AeYQJClg+klGrUwIa704Sjtqg8jLMo4VF4y24MfrdhrPx2V
	R9SxBcd5IN8nUuwHD9S9an8+Xxz8M89e5ZaMRThz6cJe6KzO/Kdty9HP7HleexUnS4Ey7MfpiZCSk
	B6vnmCVZsh/IN5b+vBZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2mQq-000000083oh-0PSK;
	Wed, 18 Mar 2026 08:39:12 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2mQn-000000083oT-43l7;
	Wed, 18 Mar 2026 08:39:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 1157860054;
	Wed, 18 Mar 2026 08:39:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 70DA5C19421;
	Wed, 18 Mar 2026 08:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773823148;
	bh=uGu9YbU+16zs5mB3ZXB2rvRR4G1yd2IDXMtm7HSCqAI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=DimhpEzevqwFWdfUytn9NDtjhQ2JNMsksYl0rWGbbBPeln20eQtJdhUtiHi0Is1Bk
	 7vS6tXWflFhuFKF4UVwFk5OHdmVI6qwc0sqXx0M3Hspjla6+X9bdNF2+hLDdUuqT95
	 aAhOnuqo7RRjX8+ordbQ22rZ25VKE+8j89RfrUYSq5QpD4Ecvqf+xEvadz+Wb/w+2Q
	 YZXqVJKFTYVBxKniTOdpYrsqBSPOyYe/DxK87dsjdeyI29zbAxucnAjC6WC0QYfQCs
	 qakx9J8bHoadQW0IrVdk8OCS9ppbzqwwVnUhNJZlUtyHfzAft1du3lGf6Lg4ldmTpf
	 CvZUSx/erqY1Q==
Message-ID: <c816a7b4-5237-4732-85af-26b70dce57f5@kernel.org>
Date: Wed, 18 Mar 2026 09:39:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/5] arm64: dts: rockchip: Add HUSB311 Type-C
 controller on RK3576 EVB1
To: Alexey Charkov <alchark@flipper.net>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Gene Chen <gene_chen@richtek.com>, Heiko Stuebner <heiko@sntech.de>,
 Yuanshen Cao <alex.caoys@gmail.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
References: <20260317-husb311-v2-0-03c17c986abe@flipper.net>
 <20260317-husb311-v2-5-03c17c986abe@flipper.net>
 <20260318-able-goose-of-downpour-db3bbd@quoll>
 <d925c15d-add5-4f2a-8eac-fa7dd1b56bf2@kernel.org>
 <CAKTNdwH7RswOSBZyVKvsHfhZ3-xwyDs7ywOHuafMFb1-xNf0PA@mail.gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 a/A=
In-Reply-To: <CAKTNdwH7RswOSBZyVKvsHfhZ3-xwyDs7ywOHuafMFb1-xNf0PA@mail.gmail.com>
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

T24gMTgvMDMvMjAyNiAwOTozMCwgQWxleGV5IENoYXJrb3Ygd3JvdGU6Cj4gT24gV2VkLCBNYXIg
MTgsIDIwMjYgYXQgMTI6MTnigK9QTSBLcnp5c3p0b2YgS296bG93c2tpIDxrcnprQGtlcm5lbC5v
cmc+IHdyb3RlOgo+Pgo+PiBPbiAxOC8wMy8yMDI2IDA5OjE3LCBLcnp5c3p0b2YgS296bG93c2tp
IHdyb3RlOgo+Pj4gT24gVHVlLCBNYXIgMTcsIDIwMjYgYXQgMTA6MDg6MDJQTSArMDQwMCwgQWxl
eGV5IENoYXJrb3Ygd3JvdGU6Cj4+Pj4gUm9ja2NoaXAgUkszNTc2IEVWQjEgYm9hcmQgaGFzIGEg
SHluZXRlayBIVVNCMzExIFVTQiBUeXBlLUMgY29udHJvbGxlciBvbgo+Pj4+IGl0cyBUeXBlLUMg
T1RHIHBvcnQsIHdoaWNoIGFsc28gc3VwcG9ydHMgRGlzcGxheVBvcnQgQWx0ZXJuYXRlIE1vZGUu
Cj4+Pj4KPj4+PiBBZGQgdGhlIHJlcXVpcmVkIERUIG5vZGVzIHRvIGVuYWJsZSBiYXNpYyBIVVNC
MzExIG9wZXJhdGlvbi4KPj4+Pgo+Pj4+IE5vdGUgdGhhdCBmb3IgZnVsbCBzdXBwb3J0IG9mIG1v
ZGUgYW5kIG9yaWVudGF0aW9uIHN3aXRjaGluZywgdGhlIFVTQkRQCj4+Pj4gUEhZIHNjaGVtYSBt
YXkgbmVlZCB0byBiZSBleHBhbmRlZCwgc3VjaCBhcyBpbiBbMV0uIFRoaXMgaXMgbGVmdCBvdXQg
Zm9yCj4+Pj4gbm93IHVudGlsIHRoZSByZXNwZWN0aXZlIHNjaGVtYSBpcyBmaW5hbGl6ZWQgYW5k
IG1lcmdlZC4KPj4+Pgo+Pj4+IFsxXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1yb2Nr
Y2hpcC8yMDI2MDMxMy1yb2NrY2hpcC11c2JkcC1jbGVhbnVwLXYzLTEtM2U4ZmU4OWEzNWI1QGNv
bGxhYm9yYS5jb20vCj4+Pj4KPj4+PiBTaWduZWQtb2ZmLWJ5OiBBbGV4ZXkgQ2hhcmtvdiA8YWxj
aGFya0BmbGlwcGVyLm5ldD4KPj4+PiAtLS0KPj4+PiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazM1NzYtZXZiMS12MTAuZHRzIHwgMjAgKysrKysrKysrKysrKysrKysrKysKPj4+PiAg
MSBmaWxlIGNoYW5nZWQsIDIwIGluc2VydGlvbnMoKykKPj4+Cj4+PiBEVFMgcGF0Y2ggbXVzdCBu
b3QgYmUgaW4gdGhpcyBwYXRjaHNldC4gRG9uJ3QgbWl4IGl0Lgo+Pgo+PiBJbiBjYXNlIEkgYW0g
dG9vIHZhZ3VlOiBieSBkb24ndCBtaXggaXQsIEkgbWVhbiAtIHNlcGFyYXRlIERUUyBjaGFuZ2Vz
Cj4+IHRvIGluZGVwZW5kZW50IHBhdGNoc2V0LiBUaGV5IGNhbm5vdCBiZSBjb21iaW5lZCBpbnRv
IFVTQiBwb3N0aW5nLgo+IAo+IFRoYW5rcyBLcnp5c3p0b2YuIEkgd2lsbCBzcGxpdCB0aGVtIG91
dCBpbiB0aGUgbmV4dCBzdWJtaXNzaW9uLiBJCj4gdGhpbmsgaXQncyBpbXBvcnRhbnQgdG8gZmly
c3QgYWdyZWUgb24gdGhlIHVzZSBvZiBmYWxsYmFjayBjb21wYXRpYmxlcwo+IGFuZCB0aGUgYmVz
dCB3YXkgdG8gaGFuZGxlIHRoZSAoYWxyZWFkeSBxdWV1ZWQgdXAgaW4gbmV4dCkgRVQ3MzA0Cj4g
cGF0Y2hlcyB0aGlzIGN5Y2xlIGJlZm9yZSB0aGVpciBiaW5kaW5ncyBoaXQgbWFpbmxpbmUuIFRo
ZW4sIEkgY2FuCj4gcmViYXNlIGFuZCBzcXVhc2gvc3BsaXQgZXZlcnl0aGluZyBhcyByZXF1aXJl
ZC4KClRoZXNlIGFyZSBpbmRlcGVuZGVudCBwcm9ibGVtcy4gQnV0IGlmIHlvdSB3YW50IHRvIGNv
bm5lY3QgdGhlbSwgdGhlbgpoZXJlIHlvdSBoYXZlOgpJZiBJIHJldmlldyB0aGUgcGF0Y2gsIEdy
ZWcgd2lsbCB0YWtlIGV2ZXJ5dGhpbmcsIGRlZmVhdGluZyB0aGUgcHVycG9zZQpvZiBteSBjb21t
ZW50LiBTbyBhcyB5b3UgY2FuIHNlZSwgSSBzaG91bGQgcmF0aGVyIG5vdCByZXZpZXcgdGhlbSB0
bwphY2hpZXZlIG9uZSBvZiBteSBnb2Fscy4KCkJlc3QgcmVnYXJkcywKS3J6eXN6dG9mCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

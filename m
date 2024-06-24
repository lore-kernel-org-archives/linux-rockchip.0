Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B394C2D0D1
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Jun 2024 18:06:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Q1pbwEECB7BN1fS0YQjyC+ecL17gq4HUvVJy+07pSy0=; b=FR5fFG+m6t1mytf4LcB8V++WEY
	pFEN3kjJ82ODR9U6uBcoTY2xnhUJU+kStEK84OwWWfpcqkH1LtSyZ3nCaXIsbhDwShC6wxomowRxw
	A8mKAotNwbMlznpvvdzo1wMXwjjB0sQbvbvMLBpjiY5OvETeqIH3STTT6LQAmLOM+EkI4obJJ8MC2
	7oUjUVf+MVjtv+3ZplaQhjfZFtHbIK1lP8pnhl3CT3pnOlUnHw+Ldr0+Z5Zee/XZsQvdsC6sRsIJX
	cp7B1onDxCiBs2IR3qL0nct6oJ+RPCEzHnpX7OR9mBxMZEusacWAmD03YOolUdCwxoRMAHKSvTpqQ
	BslSlwAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLo5H-00000000E8A-1qew;
	Mon, 24 Jun 2024 18:06:31 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLo5A-00000000E6O-1eFI;
	Mon, 24 Jun 2024 18:06:26 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1719252380;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=tCy+hRmCRW5AO/hvJe9xg4i+qzJBreY+fC5iGKmnDJg=;
	b=xibedBFtXNM7aHmHNwmzvGHYjglaqn2uCn+wqMVRdkGBAdys5HGPgIEY7PE87bovwoF/mQ
	Cea1tJOoVBGcoRGicxPSGgE847H46H1VVWC2nBL9t6wlhhllsal/w/xNqqfQC/iabRaC7l
	PKA0hAo/9AYLR6dfFS8Zg7VUs+zzlduScdLKgSCgiO39m93rH0Ao81sNNZpIF3IXqQJFZq
	sJziTxYaxVtkuFQRnjqQHXE+yoTO48BpHpROT4fRHYZSDN39aUTNShJxu+b+SWqRsdGaSM
	U3QoWBjnHjtHLNA3EfpHw2+YZHp21xXYg1Y679CXP5g85rQ0TPhwtJcNV/q3yw==
Date: Mon, 24 Jun 2024 20:06:19 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Alexey Charkov <alchark@gmail.com>
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 robh+dt@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Delete the SoC variant dtsi for
 RK3399Pro
In-Reply-To: <CABjd4YziNk1NJb6p+AxAVK0CR7igE3-6h-sN4MEWwyoW2qaKfw@mail.gmail.com>
References: <4449f7d4eead787308300e2d1d37b88c9d1446b2.1717308862.git.dsimic@manjaro.org>
 <ba9d41461f5d56947d7851473637722b@manjaro.org>
 <CABjd4YziNk1NJb6p+AxAVK0CR7igE3-6h-sN4MEWwyoW2qaKfw@mail.gmail.com>
Message-ID: <84e5719fad4d405bf188ee86d12bb251@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240624_110624_628762_5951DAF9 
X-CRM114-Status: GOOD (  14.02  )
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

SGVsbG8gQWxleGV5LAoKT24gMjAyNC0wNi0yNCAxOTo1OSwgQWxleGV5IENoYXJrb3Ygd3JvdGU6
Cj4gT24gTW9uLCBKdW4gMjQsIDIwMjQgYXQgOTo1NeKAr1BNIERyYWdhbiBTaW1pYyA8ZHNpbWlj
QG1hbmphcm8ub3JnPiAKPiB3cm90ZToKPj4gSnVzdCBjaGVja2luZywgYXJlIHRoZXJlIGFueSBj
b21tZW50cyBvbiB0aGlzIHBhdGNoPyAgSXMgdGhlcmUgCj4+IHNvbWV0aGluZwo+PiBtb3JlIEkg
Y2FuIGRvIHRvIGhhdmUgaXQgYWNjZXB0ZWQ/Cj4gCj4gSGVpa28gaGFzIGFscmVhZHkgYXBwbGll
ZCBpdCBxdWlldGx5IGEgY291cGxlIG9mIGRheXMgYWdvIFsxXSwgYW5kCj4gYWxzbyBtZXJnZWQg
dGhlIHY1IHRoZXJtYWwgYW5kIE9QUCBjb2RlIHRoYXQgSSByZWJhc2VkIG9uIHRvcCBvZiB0aGlz
Cj4gcGF0Y2ggb2YgeW91cnMuCgpZZXMsIEkgc2F3IHRoYXQgYWxyZWFkeSwgYnV0IHRoaXMgcGF0
Y2ggaXMgYSBkaWZmZXJlbnQgb25lLCBpdCdzIGFib3V0CmRlbGV0aW5nIHRoZSByZWR1bmRhbnQg
LmR0c2kgZm9yIFJLMzM5OVByby4gOikKClJlZ2FyZGluZyB5b3VyIHY1LCBJJ3ZlIGhhZCBzb21l
IGhlYWx0aCBpc3N1ZXMsIHNvIEkgdW5mb3J0dW5hdGVseSAKaGF2ZW4ndAptYW5hZ2VkIHRvIHJl
dmlldyBpdCBhbmQgdGVzdCBpbiBkZXRhaWwgeWV0LiAgSSdsbCBkbyB0aGF0IGFzIHNvb24gYXMg
CnBvc3NpYmxlLAphbmQgSSdsbCBjb21lIGJhY2sgd2l0aCBhbnkgY29tbWVudHMgSSBtaWdodCBo
YXZlLgoKPiBbMV0gCj4gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5l
bC9naXQvbW1pbmQvbGludXgtcm9ja2NoaXAuZ2l0L2NvbW1pdC8/aD1mb3ItbmV4dCZpZD1kZWY4
OGViNGQ4MzY1YTRhYTA2NGQyODQwNWQwMzU1MGE5ZDBhM2JlCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

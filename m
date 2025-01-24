Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4F6DC02181
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Jan 2025 10:08:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=j0FFlsqzGsgWOniyC9L+WXmaIJNDI+KZWvM5ma8Oha4=; b=xUOnte/hcxYhlwJJpZl9dFO0dJ
	7UpzNRL03CdD1XN1MBiu803hFXotfTrHTnKM42BKObDzMO+W8P4iENKa0jAf+VdJLXNJldWxcHC1s
	wW0Kx0Kt6ZoGvvD61oFByPE6+m8bAw2xVB0c+++jkYqOWyMjxWlhK8Hk4aygtWBp09BFv4qzWNbsv
	LNMscCAqzJwPzOJnhqK3cgrXfVdFsGMFM9MzFdz+WXxAf6KvM3Z9MRUcLBhym4+LV4dkW/ltMxH0q
	OYoycids9tRjIiNOsnzTH/WUeTMhF5XqVJjYj5BRePNPh2v4mTWIlDd+zUnCnmSL02tBVXnIuHb8a
	G0Tbdq4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tbGbp-0000000EQnP-1bsa;
	Fri, 24 Jan 2025 10:08:17 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tbGaQ-0000000EQgk-3dFA;
	Fri, 24 Jan 2025 10:06:52 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1737713208;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=GKwdTEzM5lSaWxcEJQL3dOATIOQEUYkzh3DpFXffH58=;
	b=TcGThC+GsdFJdZ4xP0tnYgTpMftKU8XSefORI5jxJhNQJJ4GvobaG+aC2S3tdNNGn8hrIJ
	x/Mdi7Eqe7IILPSprRDF6ERrdTwuod+ApSMBhCxcYb50PhnjwzF4YnuDCLoY/F/u0IG/+v
	5dxdcWnuPslFwrEH6o3YsCtYreBE3K23h1/WpoECGE/5t7wdWds6PqZXOPShJSffQ9b8gK
	iaKsB85Ul3uglAtYsTDyhbibr7X1azgjlsuPuSTDuWPTnR2ZZKjM4wgHqB2ME0LxZUcm7h
	7Udp5m5xw07iGmFXgwmHLG8EWdy/kR+i2OqaitqILv4u2cwZuD+JM6l8pqkbEg==
Date: Fri, 24 Jan 2025 11:06:47 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Alexey Charkov <alchark@gmail.com>
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>, Rob Herring
 <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, devicetree@vger.kernel.org, Sebastian Reichel
 <sebastian.reichel@collabora.com>, stable@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: Fix broken tsadc pinctrl binding
 for rk3588
In-Reply-To: <CABjd4YwA8P9LVuDviO6xydkHpuuOY7XT0pk1oa+FDqOo=uZN4A@mail.gmail.com>
References: <20250124052611.3705-1-eagle.alexander923@gmail.com>
 <CABjd4YwA8P9LVuDviO6xydkHpuuOY7XT0pk1oa+FDqOo=uZN4A@mail.gmail.com>
Message-ID: <a76f315f023a3f8f5435e0681119b4eb@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250124_020651_209739_AA739469 
X-CRM114-Status: GOOD (  22.10  )
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

SGVsbG8gQWxleGV5LAoKT24gMjAyNS0wMS0yNCAwOTozMywgQWxleGV5IENoYXJrb3Ygd3JvdGU6
Cj4gT24gRnJpLCBKYW4gMjQsIDIwMjUgYXQgOToyNuKAr0FNIEFsZXhhbmRlciBTaGl5YW4KPiA8
ZWFnbGUuYWxleGFuZGVyOTIzQGdtYWlsLmNvbT4gd3JvdGU6Cj4+IAo+PiBUaGVyZSBpcyBubyBw
aW5jdHJsICJncGlvIiBhbmQgIm90cG91dCIgKHByb2JhYmx5IGRlc2lnbmVkIGFzIAo+PiAib3V0
cHV0IikKPj4gaGFuZGxpbmcgaW4gdGhlIHRzYWRjIGRyaXZlci4KPj4gTGV0J3MgdXNlIHByb3Bl
ciBiaW5kaW5nICJkZWZhdWx0IiBhbmQgInNsZWVwIi4KPiAKPiBUaGlzIGxvb2tzIHJlYXNvbmFi
bGUsIGhvd2V2ZXIgSSd2ZSB0cmllZCBpdCBvbiBteSBSYWR4YSBSb2NrIDVDIGFuZAo+IHRoZSBk
cml2ZXIgc3RpbGwgZG9lc24ndCBjbGFpbSBHUElPMCBSS19QQTEgZXZlbiB3aXRoIHRoaXMgY2hh
bmdlLiBBcwo+IGEgcmVzdWx0LCBhIHNpbXVsYXRlZCB0aGVybWFsIHJ1bmF3YXkgY29uZGl0aW9u
IChJJ3ZlIGNoYW5nZWQgdGhlCj4gdHNodXQgdGVtcGVyYXR1cmUgdG8gNjUwMDAgYW5kIHRzaHV0
IG1vZGUgdG8gMSkgZG9lc24ndCB0cmlnZ2VyIGEgUE1JQwo+IHJlc2V0LCBldmVuIHRob3VnaCBh
IGRpcmVjdCBgZ3Bpb3NldCAwIDE9MGAgZG9lcy4KPiAKPiBBcmUgYW55IGFkZGl0aW9uYWwgY2hh
bmdlcyBuZWVkZWQgdG8gdGhlIGRyaXZlciBpdHNlbGY/CgpJJ3ZlIGJlZW4gZGlnZ2luZyB0aHJv
dWdoIHRoaXMgcGF0Y2ggdGhlIHdob2xlIFRTQURDL09UUCB0aGluZyBpbiB0aGUKbGFzdCBjb3Vw
bGUgb2YgaG91cnMsIGFuZCBBRkFJSyBzb21lIHBhcnRzIG9mIHRoZSB1cHN0cmVhbSBkcml2ZXIg
YXJlCnN0aWxsIG1pc3NpbmcsIGluIGNvbXBhcmlzb24gd2l0aCB0aGUgZG93bnN0cmVhbSBkcml2
ZXIuCgpJJ3ZlIGdvdCBzb21lIHNtYWxsIHN1Z2dlc3Rpb25zIGZvciB0aGUgcGF0Y2ggaXRzZWxm
LCBidXQgdGhlIGlzc3VlCnlvdSBvYnNlcnZlZCBpcyBvYnZpb3VzbHkgb2YgaGlnaGVyIHByaW9y
aXR5LCBhbmQgSSd2ZSBzaW5nbGVkIGl0IG91dAphcyB3ZWxsIHdoaWxlIGRpZ2dpbmcgdGhyb3Vn
aCB0aGUgY29kZS4KCkNvdWxkIHlvdSwgcGxlYXNlLCB0cnkgdGhlIHBhdGNoIGJlbG93IHF1aWNr
bHksIHRvIHNlZSBpcyBpdCBnb2luZyB0bwpmaXggdGhlIGlzc3VlIHlvdSBvYnNlcnZlZD8gIEkn
dmUgZ290IHNvbWUgIklSTCBzdHVmZiIgdG8gdGFrZSBjYXJlIG9mCnRvZGF5LCBzbyBJIGNhbid0
IHRlc3QgaXQgbXlzZWxmLCBhbmQgaXQgd291bGQgYmUgZ3JlYXQgdG8ga25vdyBpcyBpdAp0aGUg
cmlnaHQgcGF0aCB0byB0aGUgcHJvcGVyIGZpeC4KCmRpZmYgLS1naXQgaS9kcml2ZXJzL3RoZXJt
YWwvcm9ja2NoaXBfdGhlcm1hbC5jIAp3L2RyaXZlcnMvdGhlcm1hbC9yb2NrY2hpcF90aGVybWFs
LmMKaW5kZXggZjU1MWRmNDhlZWY5Li42MmYwZTE0YThkOTggMTAwNjQ0Ci0tLSBpL2RyaXZlcnMv
dGhlcm1hbC9yb2NrY2hpcF90aGVybWFsLmMKKysrIHcvZHJpdmVycy90aGVybWFsL3JvY2tjaGlw
X3RoZXJtYWwuYwpAQCAtMTU2OCw2ICsxNTY4LDExIEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfdGhl
cm1hbF9wcm9iZShzdHJ1Y3QgCnBsYXRmb3JtX2RldmljZSAqcGRldikKICAgICAgICAgdGhlcm1h
bC0+Y2hpcC0+aW5pdGlhbGl6ZSh0aGVybWFsLT5ncmYsIHRoZXJtYWwtPnJlZ3MsCiAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgdGhlcm1hbC0+dHNodXRfcG9sYXJpdHkpOwoKKyAg
ICAgICBpZiAodGhlcm1hbC0+dHNodXRfbW9kZSA9PSBUU0hVVF9NT0RFX0dQSU8pCisgICAgICAg
ICAgICAgICBwaW5jdHJsX3NlbGVjdF9kZWZhdWx0X3N0YXRlKGRldik7CisgICAgICAgZWxzZQor
ICAgICAgICAgICAgICAgcGluY3RybF9zZWxlY3Rfc2xlZXBfc3RhdGUoZGV2KTsKKwogICAgICAg
ICBmb3IgKGkgPSAwOyBpIDwgdGhlcm1hbC0+Y2hpcC0+Y2huX251bTsgaSsrKSB7CiAgICAgICAg
ICAgICAgICAgZXJyb3IgPSByb2NrY2hpcF90aGVybWFsX3JlZ2lzdGVyX3NlbnNvcihwZGV2LCB0
aGVybWFsLAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
JnRoZXJtYWwtPnNlbnNvcnNbaV0sCgpJZiB5b3UgY291bGQgdGVzdCBpdCwgcGxlYXNlLCBpdCB3
b3VsZCBiZSBncmVhdCwgYW5kIEknZCBwcmVwYXJlIHRoZQpwcm9wZXIgcGF0Y2ggdG9tb3Jyb3cg
b3Igc28uCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==

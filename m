Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61BD7C982DA
	for <linux-rockchip@archiver.kernel.org>; Sun, 20 Sep 2026 21:59:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aA1fobWO3tUbxFri6+9+XCdNvOsykUE1AXk9v0wqlXE=; b=UcFesKFKiVAN+Y
	fGItKwuB/bnaCZ32e4de94418NG28ABepsknhaTqLCCLc+bSXy7kycr17HzDAlyTWda7Gr4yGi/8w
	jjlTwzI0INi2NN96BSv/TY3XYwB627uPw5VWVwpT/XCagczGdeVH1nmbATQWhL8i1jL8KmzJx62l/
	PIsrmbmGSey+x1STEDjw3MW03sPd7A+3K5EH33j4H9slHQvXKAlhMVOKzH3B8DZtu39paFBVecL1C
	tsfpQGC6w1tk7Shv9z75W3qpqg7nRVQ3pabAvuIoIqdbXG8L8yUJUT+reSX6HqRLBqbYhm9mCCQru
	Xk6Cjwdkv1864tWQAQ4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8PZ1-00000000Ulc-4AdM;
	Sun, 20 Sep 2026 21:59:11 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8PYx-00000000Ul5-36Ee;
	Sun, 20 Sep 2026 21:59:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=jH89/eRi22ETk60jcZZWWsxXWB9XkoRdP5UQ7ZiQNJs=; b=eUYQMERMUGvmRYPWE9MG/fAeiZ
	5Hl3Nu2wuESMYC0X1UD3fj10sMty5If4a2lM6qA2MmqGUXllc0JQHAAa4MwyEGZZl1kpJClvLUDVh
	S7BetuprJn8+VQGwvRHM1OiYFiEpZFI5nTblGCtUU7hasHw8pB6gHaIluYQ+7dRMUmhM5+YIilNhH
	HNIiyIgS32IU0ndzCf43RbL8FM3WzLSpVoz7+mKMG3ivnBJwa/vRdm6Ofl7Plby+SG+DCsPdT8tQl
	El3CLNPJPrPs/iMHS8NpS1BTyUNLbYZ6inJLGQSwnU3MiOD7nnT4wYoXED4Mp1Yd6SfTHxh4qNY4C
	QN0t+haw==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Coia Prant <coiaprant@gmail.com>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>,
 netdev@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Coia Prant <coiaprant@gmail.com>
Subject: Re: [PATCH net] net: ethernet: stmmac: dwmac-rk: fix bulk clock leak when the
 PHY clock fails
Date: Sun, 20 Sep 2026 23:58:45 +0200
Message-ID: <4340525.usfYGdeWWP@diego>
In-Reply-To: <20260919174223.2356964-1-coiaprant@gmail.com>
References: <20260919174223.2356964-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260920_145907_794000_6221424A 
X-CRM114-Status: GOOD (  12.93  )
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

QW0gU2Ftc3RhZywgMTkuIFNlcHRlbWJlciAyMDI2LCAxOTo0MjoyMyBNaXR0ZWxldXJvcMOkaXNj
aGUgU29tbWVyemVpdCBzY2hyaWViIENvaWEgUHJhbnQ6Cj4gZ21hY19jbGtfZW5hYmxlKCkgZW5h
YmxlcyB0aGUgYnVsayBjbG9ja3MgZmlyc3QgYW5kIHRoZW4gdGhlIG9wdGlvbmFsCj4gUEhZIGNs
b2NrLiBJZiBjbGtfcHJlcGFyZV9lbmFibGUoKSBvbiB0aGUgUEhZIGNsb2NrIGZhaWxzLCB0aGUg
ZnVuY3Rpb24KPiByZXR1cm5zIHdpdGhvdXQgcm9sbGluZyBiYWNrIHRoZSBidWxrIGNsb2Nrcywg
YW5kIGJzcF9wcml2LT5jbGtfZW5hYmxlZAo+IHN0YXlzIGZhbHNlLCBzbyB0aGUgbGF0ZXIgZ21h
Y19jbGtfZW5hYmxlKGJzcF9wcml2LCBmYWxzZSkgYmVjb21lcyBhCj4gbm8tb3AgYW5kIHRoZSBi
dWxrIGNsb2NrIHJlZmVyZW5jZXMgYXJlIGxlYWtlZC4KPiAKPiBBZGQgdGhlIG1pc3NpbmcgY2xr
X2J1bGtfZGlzYWJsZV91bnByZXBhcmUoKSBvbiB0aGF0IGZhaWx1cmUgcGF0aC4KPiAKPiBGaXhl
czogZWE0NDlmN2ZhMGJmICgibmV0OiBldGhlcm5ldDogc3RtbWFjOiBkd21hYy1yazogcmV3b3Jr
IG9wdGlvbmFsIGNsb2NrIGhhbmRsaW5nIikKPiBTaWduZWQtb2ZmLWJ5OiBDb2lhIFByYW50IDxj
b2lhcHJhbnRAZ21haWwuY29tPgoKVGhhbmtzIGZvciBjYXRjaGluZyB0aGlzCgpSZXZpZXdlZC1i
eTogSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KCj4gLS0tCj4gIGRyaXZlcnMvbmV0
L2V0aGVybmV0L3N0bWljcm8vc3RtbWFjL2R3bWFjLXJrLmMgfCAzICsrKwo+ICAxIGZpbGUgY2hh
bmdlZCwgMyBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L3N0bWljcm8vc3RtbWFjL2R3bWFjLXJrLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9zdG1p
Y3JvL3N0bW1hYy9kd21hYy1yay5jCj4gaW5kZXggOGQ3MDQyZTY4OTI2MS4uZjNhOThiZDlkNmVh
ZCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9zdG1pY3JvL3N0bW1hYy9kd21h
Yy1yay5jCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvc3RtaWNyby9zdG1tYWMvZHdtYWMt
cmsuYwo+IEBAIC0xMTYzLDcgKzExNjMsMTAgQEAgc3RhdGljIGludCBnbWFjX2Nsa19lbmFibGUo
c3RydWN0IHJrX3ByaXZfZGF0YSAqYnNwX3ByaXYsIGJvb2wgZW5hYmxlKQo+ICAKPiAgCQkJcmV0
ID0gY2xrX3ByZXBhcmVfZW5hYmxlKGJzcF9wcml2LT5jbGtfcGh5KTsKPiAgCQkJaWYgKHJldCkK
PiArCQkJCWNsa19idWxrX2Rpc2FibGVfdW5wcmVwYXJlKGJzcF9wcml2LT5udW1fY2xrcywKPiAr
CQkJCQkJCSAgIGJzcF9wcml2LT5jbGtzKTsKPiAgCQkJCXJldHVybiByZXQ7Cj4gKwkJCX0KPiAg
Cj4gIAkJCXJrX2NvbmZpZ3VyZV9pb19jbGtzZWwoYnNwX3ByaXYpOwo+ICAJCQlya191bmdhdGVf
cm1paV9jbG9jayhic3BfcHJpdik7Cj4gCgoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

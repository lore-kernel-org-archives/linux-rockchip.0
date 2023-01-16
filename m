Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58C3EC46467
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Jan 2023 10:42:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7G+iAgiymmZrLnck+a2MKlJ4+tVxQWzbf5Ye/zvO0DY=; b=dfjqrO0aiReKKt
	tc+ic+MEyDLuUO+/+RwlENgAPs1DcBt90S8brpVwm92wdlB49NP0uz35mmFzMWGtJKtFvvDkK3yf+
	u+xQsV+11A5HtPHJzFJRaS4prgaDE/fA1Wouy+z1Bt/Erlqk/CDE/P2b/dtMwcjh3gpTxCCOWmc7K
	YMyIi5c8KJ/Rf4hlaJV2TLxnviCxej2DGWZIvbQFE7vPB98//CUSQgktLtnpswUsxmVsn4dIuNHGT
	kvoQFkyE/Vnv2793oH2OndMW1hVMhxVaNxPNggGJriL1bB4qwA//q+Zkj0EQWMzkTs419yZ+EBbnD
	4sd4A0qKxVCw3WtsI7Og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHMwc-009ikX-W8; Mon, 16 Jan 2023 10:42:27 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHMwY-009ig7-Pb
	for linux-rockchip@lists.infradead.org; Mon, 16 Jan 2023 10:42:24 +0000
Received: from [192.168.0.192] (unknown [194.146.248.75])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: andrzej.p)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 1A84B6602B33;
	Mon, 16 Jan 2023 10:42:18 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1673865738;
	bh=xij3rwdRDRnxNe9fbFCug+kKCRkyGZuk5HRqHXMn734=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=TuHE446oUwwn8hpiRvkBLfCFnRI5fZhkkArAP7gGM9Gl7YWLAkt4xWOTYx53RP9ni
	 QrHGUTR0Bf1NRJZCjpXo5+SqPv4bU9yIOAFOm1hkZ5gtyenUlJWoFUNWbEyujnazv7
	 c0VSl5ORgrj1QBkTyD6COgmtYLjzxQ24+FYYDxgvDjO9PF/bu5g5SbNF9MpJv1NUuQ
	 gxUkZKoAHsYsC8wmsKSlLZw6OafJlTkQ6C/Qk4cQGS9SpDuC2LIjLwgaTxP1qHDC6G
	 LHg6YvujLLrD8cgOaM3VHPNmI0d32tvaeUWddWSZX5f/VS9fxSjUNHhxnf0PmEd/8F
	 y7ANx7rKh/OJg==
Message-ID: <2835d8cb-2652-1ac5-fff1-23928c0e569c@collabora.com>
Date: Mon, 16 Jan 2023 11:42:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v2 10/12] staging: media: rkvdec: Wrapper for pixel format
 preparation
Content-Language: en-US
To: Sebastian Fricke <sebastian.fricke@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 Jonas Karlman <jonas@kwiboo.se>, Alex Bee <knaerzche@gmail.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Collabora Kernel-domain <kernel@collabora.com>,
 Robert Beckett <bob.beckett@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
References: <20230101-patch-series-v2-6-2-rc1-v2-0-fa1897efac14@collabora.com>
 <20230101-patch-series-v2-6-2-rc1-v2-10-fa1897efac14@collabora.com>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
In-Reply-To: <20230101-patch-series-v2-6-2-rc1-v2-10-fa1897efac14@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230116_024222_991844_7F04BF17 
X-CRM114-Status: GOOD (  17.56  )
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

SGkgU2ViYXN0aWFuLAoKVyBkbml1IDEyLjAxLjIwMjMgb8KgMTM6NTYsIFNlYmFzdGlhbiBGcmlj
a2UgcGlzemU6Cj4gUmVkdWNlIGNvZGUgZHVwbGljYXRpb24gYnkgY3JlYXRpbmcgYSB3cmFwcGVy
IGFyb3VuZCB0aGUgcHJlcGFyYXRpb24gb2YKPiB0aGUgYHY0bDJfcGl4X2Zvcm1hdF9tcGxhbmVg
IHN0cnVjdHVyZSBhbmQgdGhlIGNhbGN1bGF0aW9uIG9mIHRoZQo+IGltYWdlIHNpemUuCj4gCj4g
U2lnbmVkLW9mZi1ieTogU2ViYXN0aWFuIEZyaWNrZSA8c2ViYXN0aWFuLmZyaWNrZUBjb2xsYWJv
cmEuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9zdGFnaW5nL21lZGlhL3JrdmRlYy9ya3ZkZWMuYyB8
IDI5ICsrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgMTUg
aW5zZXJ0aW9ucygrKSwgMTQgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
c3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVjLmMgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmt2
ZGVjL3JrdmRlYy5jCj4gaW5kZXggOGQ5NDhiY2M0ZTQ2Li5iMzAzYzZlMDI4NmQgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL3JrdmRlYy9ya3ZkZWMuYwo+ICsrKyBiL2RyaXZl
cnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVjLmMKPiBAQCAtMjcsNiArMjcsMTcgQEAKPiAg
ICNpbmNsdWRlICJya3ZkZWMuaCIKPiAgICNpbmNsdWRlICJya3ZkZWMtcmVncy5oIgo+ICAgCj4g
K3N0YXRpYyB2b2lkIHJrdmRlY19maWxsX2RlY29kZWRfcGl4Zm10KHN0cnVjdCBya3ZkZWNfY3R4
ICpjdHgsCj4gKwkJCQkgICAgICAgc3RydWN0IHY0bDJfcGl4X2Zvcm1hdF9tcGxhbmUgKnBpeF9t
cCkKPiArewo+ICsJdjRsMl9maWxsX3BpeGZtdF9tcChwaXhfbXAsIHBpeF9tcC0+cGl4ZWxmb3Jt
YXQsCj4gKwkJCSAgICBwaXhfbXAtPndpZHRoLCBwaXhfbXAtPmhlaWdodCk7Cj4gKwlwaXhfbXAt
PnBsYW5lX2ZtdFswXS5zaXplaW1hZ2UgKz0gMTI4ICoKPiArCQlESVZfUk9VTkRfVVAocGl4X21w
LT53aWR0aCwgMTYpICoKPiArCQlESVZfUk9VTkRfVVAocGl4X21wLT5oZWlnaHQsIDE2KTsKPiAr
CXBpeF9tcC0+ZmllbGQgPSBWNEwyX0ZJRUxEX05PTkU7Cj4gK30KPiArCj4gICBzdGF0aWMgaW50
IHJrdmRlY19xdWV1ZV9idXN5KHN0cnVjdCBya3ZkZWNfY3R4ICpjdHgsIGVudW0gdjRsMl9idWZf
dHlwZSBidWZfdHlwZSkKPiAgIHsKPiAgIAlzdHJ1Y3QgdmIyX3F1ZXVlICp2cTsKPiBAQCAtMjQ4
LDEzICsyNTksOSBAQCBzdGF0aWMgdm9pZCBya3ZkZWNfcmVzZXRfZGVjb2RlZF9mbXQoc3RydWN0
IHJrdmRlY19jdHggKmN0eCkKPiAgIAo+ICAgCXJrdmRlY19yZXNldF9mbXQoY3R4LCBmLCB2YWxp
ZF9mbXQpOwo+ICAgCWYtPnR5cGUgPSBWNEwyX0JVRl9UWVBFX1ZJREVPX0NBUFRVUkVfTVBMQU5F
Owo+IC0JdjRsMl9maWxsX3BpeGZtdF9tcCgmZi0+Zm10LnBpeF9tcCwKPiAtCQkJICAgIGN0eC0+
Y29kZWRfZm10X2Rlc2MtPmRlY29kZWRfZm10c1swXSwKPiAtCQkJICAgIGN0eC0+Y29kZWRfZm10
LmZtdC5waXhfbXAud2lkdGgsCj4gLQkJCSAgICBjdHgtPmNvZGVkX2ZtdC5mbXQucGl4X21wLmhl
aWdodCk7Cj4gLQlmLT5mbXQucGl4X21wLnBsYW5lX2ZtdFswXS5zaXplaW1hZ2UgKz0gMTI4ICoK
PiAtCQlESVZfUk9VTkRfVVAoZi0+Zm10LnBpeF9tcC53aWR0aCwgMTYpICoKPiAtCQlESVZfUk9V
TkRfVVAoZi0+Zm10LnBpeF9tcC5oZWlnaHQsIDE2KTsKPiArCWYtPmZtdC5waXhfbXAud2lkdGgg
PSBjdHgtPmNvZGVkX2ZtdC5mbXQucGl4X21wLndpZHRoOwo+ICsJZi0+Zm10LnBpeF9tcC5oZWln
aHQgPSBjdHgtPmNvZGVkX2ZtdC5mbXQucGl4X21wLmhlaWdodDsKPiArCXJrdmRlY19maWxsX2Rl
Y29kZWRfcGl4Zm10KGN0eCwgJmYtPmZtdC5waXhfbXApOwoKU3RyaWN0bHkgdGVjaG5pY2FsbHkg
dGhpcyBmdW5jdGlvbiBoYXMgX25vdF8gYmVlbiBzZXR0aW5nIHBpeF9tdC0+ZmllbGQKdG8gVjRM
Ml9GSUVMRF9OT05FLCBidXQgYWZ0ZXIgdGhpcyBjaGFuZ2UgdGhlcmUgZXhpc3RzIHN1Y2ggYSAi
c2lkZSBlZmZlY3QiLgpNYXliZSBpdCBpcyBhY3R1YWxseSBkZXNpcmVkLCBvciBtYXliZSBpdCBi
ZWluZyBtaXNzaW5nIGluIHRoZSBub3QgcGF0Y2hlZAp2ZXJzaW9uIHdhcyBhIG1pc3Rha2UgaW4g
dGhlIGZpcnN0IHBsYWNlLiBKdXN0IGxldHRpbmcgeW91IGtub3cgc28gdGhhdAp5b3UgY2FuIG1h
a2Ugc3VyZSBwaXhfbXAtPmZpZWxkIGJlaW5nIGFjdHVhbGx5IHNldCBub3cgaXMgb2sgaW4gdGhl
IGNvbnRleHQKb2Ygcmt2ZGVjX3F1ZXVlX2J1c3koKS4KClJlZ2FyZHMsCgpBbmRyemVqCgo+ICAg
fQo+ICAgCj4gICBzdGF0aWMgaW50IHJrdmRlY19lbnVtX2ZyYW1lc2l6ZXMoc3RydWN0IGZpbGUg
KmZpbGUsIHZvaWQgKnByaXYsCj4gQEAgLTMyNCwxMyArMzMxLDcgQEAgc3RhdGljIGludCBya3Zk
ZWNfdHJ5X2NhcHR1cmVfZm10KHN0cnVjdCBmaWxlICpmaWxlLCB2b2lkICpwcml2LAo+ICAgCQkJ
CSAgICAgICAmcGl4X21wLT5oZWlnaHQsCj4gICAJCQkJICAgICAgICZjb2RlZF9kZXNjLT5mcm1z
aXplKTsKPiAgIAo+IC0JdjRsMl9maWxsX3BpeGZtdF9tcChwaXhfbXAsIHBpeF9tcC0+cGl4ZWxm
b3JtYXQsCj4gLQkJCSAgICBwaXhfbXAtPndpZHRoLCBwaXhfbXAtPmhlaWdodCk7Cj4gLQlwaXhf
bXAtPnBsYW5lX2ZtdFswXS5zaXplaW1hZ2UgKz0KPiAtCQkxMjggKgo+IC0JCURJVl9ST1VORF9V
UChwaXhfbXAtPndpZHRoLCAxNikgKgo+IC0JCURJVl9ST1VORF9VUChwaXhfbXAtPmhlaWdodCwg
MTYpOwo+IC0JcGl4X21wLT5maWVsZCA9IFY0TDJfRklFTERfTk9ORTsKPiArCXJrdmRlY19maWxs
X2RlY29kZWRfcGl4Zm10KGN0eCwgcGl4X21wKTsKPiAgIAo+ICAgCXJldHVybiAwOwo+ICAgfQo+
IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30001C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Nov 2023 10:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7/15woGN2Vv82VfwCRpQ4E0Az/WGhKGKpzDNy8Yxy2Q=; b=v7uGvG+DZOSsUJ
	5pjKJJ2PHy8z7kcC5sY5eDT2orZgBLHv58c1+tj7HMZbyByPsUhJ9hBNAf8JkGR83sz+OTSDJjeTq
	GFRB+olMGspik341HVgiXaKTTe5frt8EzWQ/XKL6N8TgNOBbjGTsxaXcekzFtGiHftehvfrucNHjA
	e2psd4kocViTPDqldyqGUWkYhW8TudENzuNdGahWt1NGteI7Cd0Nchsz+VauKKZH4sjQiuEXRkynH
	yINDm39Et/heK79Phiyhsn62ta0u/NnHN8mH1B++aQPNk3rxgjrj4gojVAawSekAXfDUJKAPDRcrv
	YtSEWsDuhkuKi3OAgo6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r11yO-005shN-1t;
	Thu, 09 Nov 2023 10:09:16 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r11yJ-005sfH-2x;
	Thu, 09 Nov 2023 10:09:13 +0000
Received: from [100.116.125.19] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: andrzej.p)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id D8BE36607435;
	Thu,  9 Nov 2023 10:09:08 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699524550;
	bh=aeVeUG1Bv88ZjGIClWEmz4XfSpRJX1aTzaeyOElvMGM=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=k57Pw8VUIO6ZkT1V+3dq3Vyl9GislRp5LQvodV7d+URgmVEIDNpXN9d7t+HF5EzMq
	 Yo73slhYGCR1ij0YA4QTIdLGr+SSh+uVNPNV9XFNueAf7T6GnM6JltQ1Uj76v8Vgq2
	 vQI1O/z9aoW3sRmkXNX5hEsqPtSM34PYftnMU+v4h7neHTEFNX+AIoEWzV4/JdVSsz
	 rUpKP3CYxTn/HZGeBgYy2RWigK4Uj2NH8PZWclYaY900eKPsx9px7/554Ywb9RNcso
	 wnwDKwkJeEKRVIj1P34NgsSUq+eBiBMWzePVLkE/MLzEkCBqI01TJfx0t6cqjUbiUf
	 4TRJMeGzrP6+g==
Message-ID: <b3027a75-80e1-4583-a25b-5cb8523a1d8f@collabora.com>
Date: Thu, 9 Nov 2023 11:09:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v14 24/56] media: pci: netup_unidvb: Stop direct calls to
 queue num_buffers field
Content-Language: en-US
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, mchehab@kernel.org,
 tfiga@chromium.org, m.szyprowski@samsung.com, ming.qian@nxp.com,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 gregkh@linuxfoundation.org, hverkuil-cisco@xs4all.nl,
 nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, kernel@collabora.com,
 Sergey Kozlov <serjk@netup.ru>, Abylay Ospan <aospan@netup.ru>
References: <20231031163104.112469-1-benjamin.gaignard@collabora.com>
 <20231031163104.112469-25-benjamin.gaignard@collabora.com>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
In-Reply-To: <20231031163104.112469-25-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_020912_117939_B9FC6273 
X-CRM114-Status: GOOD (  14.24  )
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

VyBkbml1IDMxLjEwLjIwMjMgb8KgMTc6MzAsIEJlbmphbWluIEdhaWduYXJkIHBpc3plOgo+IFVz
ZSB2YjJfZ2V0X251bV9idWZmZXJzKCkgdG8gYXZvaWQgdXNpbmcgcXVldWUgbnVtX2J1ZmZlcnMg
ZmllbGQgZGlyZWN0bHkuCj4gVGhpcyBhbGxvd3MgdXMgdG8gY2hhbmdlIGhvdyB0aGUgbnVtYmVy
IG9mIGJ1ZmZlcnMgaXMgY29tcHV0ZWQgaW4gdGhlCj4gZnV0dXJlLgo+IAo+IFNpZ25lZC1vZmYt
Ynk6IEJlbmphbWluIEdhaWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgoK
UmV2aWV3ZWQtYnk6IEFuZHJ6ZWogUGlldHJhc2lld2ljeiA8YW5kcnplai5wQGNvbGxhYm9yYS5j
b20+Cgo+IENDOiBTZXJnZXkgS296bG92IDxzZXJqa0BuZXR1cC5ydT4KPiBDQzogQWJ5bGF5IE9z
cGFuIDxhb3NwYW5AbmV0dXAucnU+Cj4gLS0tCj4gICBkcml2ZXJzL21lZGlhL3BjaS9uZXR1cF91
bmlkdmIvbmV0dXBfdW5pZHZiX2NvcmUuYyB8IDUgKysrLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAz
IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
bWVkaWEvcGNpL25ldHVwX3VuaWR2Yi9uZXR1cF91bmlkdmJfY29yZS5jIGIvZHJpdmVycy9tZWRp
YS9wY2kvbmV0dXBfdW5pZHZiL25ldHVwX3VuaWR2Yl9jb3JlLmMKPiBpbmRleCBkODViZmJiNzdh
MjUuLjU1Nzk4NWJhMjVkYiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21lZGlhL3BjaS9uZXR1cF91
bmlkdmIvbmV0dXBfdW5pZHZiX2NvcmUuYwo+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGNpL25ldHVw
X3VuaWR2Yi9uZXR1cF91bmlkdmJfY29yZS5jCj4gQEAgLTI5MywxMiArMjkzLDEzIEBAIHN0YXRp
YyBpbnQgbmV0dXBfdW5pZHZiX3F1ZXVlX3NldHVwKHN0cnVjdCB2YjJfcXVldWUgKnZxLAo+ICAg
CQkJCSAgICBzdHJ1Y3QgZGV2aWNlICphbGxvY19kZXZzW10pCj4gICB7Cj4gICAJc3RydWN0IG5l
dHVwX2RtYSAqZG1hID0gdmIyX2dldF9kcnZfcHJpdih2cSk7Cj4gKwl1bnNpZ25lZCBpbnQgcV9u
dW1fYnVmcyA9IHZiMl9nZXRfbnVtX2J1ZmZlcnModnEpOwo+ICAgCj4gICAJZGV2X2RiZygmZG1h
LT5uZGV2LT5wY2lfZGV2LT5kZXYsICIlcygpXG4iLCBfX2Z1bmNfXyk7Cj4gICAKPiAgIAkqbnBs
YW5lcyA9IDE7Cj4gLQlpZiAodnEtPm51bV9idWZmZXJzICsgKm5idWZmZXJzIDwgVklERU9fTUFY
X0ZSQU1FKQo+IC0JCSpuYnVmZmVycyA9IFZJREVPX01BWF9GUkFNRSAtIHZxLT5udW1fYnVmZmVy
czsKPiArCWlmIChxX251bV9idWZzICsgKm5idWZmZXJzIDwgVklERU9fTUFYX0ZSQU1FKQo+ICsJ
CSpuYnVmZmVycyA9IFZJREVPX01BWF9GUkFNRSAtIHFfbnVtX2J1ZnM7Cj4gICAJc2l6ZXNbMF0g
PSBQQUdFX0FMSUdOKE5FVFVQX0RNQV9QQUNLRVRTX0NPVU5UICogMTg4KTsKPiAgIAlkZXZfZGJn
KCZkbWEtPm5kZXYtPnBjaV9kZXYtPmRldiwgIiVzKCkgbmJ1ZmZlcnM9JWQgc2l6ZXNbMF09JWRc
biIsCj4gICAJCV9fZnVuY19fLCAqbmJ1ZmZlcnMsIHNpemVzWzBdKTsKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B4CFC4332F
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Nov 2023 11:36:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rrHCdE3AZYc8qwG8agXMUwDIqFN462fpSQ0szt+a6SE=; b=wWM3eMXX4YUqlS
	XYaqHTiF2tZJ6g8uMoitoVLuBmzlGrAxOxk8SuI4cAgjOJWn1RiRJKtyC2VvQ6BgsaS7qpmKi50n0
	DoQ4+gZBh+QN4q9XJSlzKzGwjeW4kajQn4YNWZC4OytaIZJ/BQ1A5xSziskAKwR/cSlDATQR9c7/h
	6nkzMh18JBTZCtncf07eXfctwgCwcqLupv9z1kUyoGCShtjPaGh6qASBhDuWpGgZZ7JunuvVDG/KI
	EjGqwk7mpiYcxM7CusMFFree7viUzl2V/kdSuT9sf+zAILL0fw9thGLqo9hweLkjWJwU9ZOtcgyUE
	pNIvtCJIOHhEJrTAVbMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r13KZ-0065MT-0A;
	Thu, 09 Nov 2023 11:36:15 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r13KV-0065LT-2K;
	Thu, 09 Nov 2023 11:36:13 +0000
Received: from [100.116.125.19] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: andrzej.p)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id E3BB66607421;
	Thu,  9 Nov 2023 11:36:08 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699529770;
	bh=0/A01qhv+t/yxdlH4Uvpb5ikYV4gg6UyE57UO6NZhgw=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=FG515hO3HjrUoULvSvT8VrKX3xPTGhoWcL+Y7qvZnyMA2aPTy1YXj9DAPO31UMTjV
	 M/ZEPpT/iG2nkXY83ACoykIN132N+TFuiFhdo0aWI6PGD5X7Phrc3REt048TB4woQk
	 9iGfao44RM9abMps+U1mSCMncgz79o40ckh7ufYYzdUX2YVX4PQF0X8HBebiEDSSWG
	 4Cecd4zyffcfzbnw5gccysBL1rHboOZlrtGTDdpVvF3o/E3Zp4+oya3OKcYFCZnsNO
	 65Bkdk/aIsPuTaaKA4VzyvIPvAuXZbKmazdg5DnfnFxIDoHo1fE31/HeQZjIqUw2dE
	 /cc2HV0dy3luA==
Message-ID: <ff26f953-35cc-4206-a8e9-86cf05acdc71@collabora.com>
Date: Thu, 9 Nov 2023 12:36:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v14 41/56] media: usb: hackrf: Stop direct calls to queue
 num_buffers field
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
 Antti Palosaari <crope@iki.fi>
References: <20231031163104.112469-1-benjamin.gaignard@collabora.com>
 <20231031163104.112469-42-benjamin.gaignard@collabora.com>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
In-Reply-To: <20231031163104.112469-42-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_033611_892637_B7881550 
X-CRM114-Status: GOOD (  14.56  )
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
b20+Cgo+IENDOiBBbnR0aSBQYWxvc2FhcmkgPGNyb3BlQGlraS5maT4KPiAtLS0KPiAgIGRyaXZl
cnMvbWVkaWEvdXNiL2hhY2tyZi9oYWNrcmYuYyB8IDUgKysrLS0KPiAgIDEgZmlsZSBjaGFuZ2Vk
LCAzIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvbWVkaWEvdXNiL2hhY2tyZi9oYWNrcmYuYyBiL2RyaXZlcnMvbWVkaWEvdXNiL2hhY2tyZi9o
YWNrcmYuYwo+IGluZGV4IDNlNTM1YmUyYzUyMC4uOWMwZWNkNWYwNTZjIDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvbWVkaWEvdXNiL2hhY2tyZi9oYWNrcmYuYwo+ICsrKyBiL2RyaXZlcnMvbWVkaWEv
dXNiL2hhY2tyZi9oYWNrcmYuYwo+IEBAIC03NTMsMTIgKzc1MywxMyBAQCBzdGF0aWMgaW50IGhh
Y2tyZl9xdWV1ZV9zZXR1cChzdHJ1Y3QgdmIyX3F1ZXVlICp2cSwKPiAgIAkJdW5zaWduZWQgaW50
ICpucGxhbmVzLCB1bnNpZ25lZCBpbnQgc2l6ZXNbXSwgc3RydWN0IGRldmljZSAqYWxsb2NfZGV2
c1tdKQo+ICAgewo+ICAgCXN0cnVjdCBoYWNrcmZfZGV2ICpkZXYgPSB2YjJfZ2V0X2Rydl9wcml2
KHZxKTsKPiArCXVuc2lnbmVkIGludCBxX251bV9idWZzID0gdmIyX2dldF9udW1fYnVmZmVycyh2
cSk7Cj4gICAKPiAgIAlkZXZfZGJnKGRldi0+ZGV2LCAibmJ1ZmZlcnM9JWRcbiIsICpuYnVmZmVy
cyk7Cj4gICAKPiAgIAkvKiBOZWVkIGF0IGxlYXN0IDggYnVmZmVycyAqLwo+IC0JaWYgKHZxLT5u
dW1fYnVmZmVycyArICpuYnVmZmVycyA8IDgpCj4gLQkJKm5idWZmZXJzID0gOCAtIHZxLT5udW1f
YnVmZmVyczsKPiArCWlmIChxX251bV9idWZzICsgKm5idWZmZXJzIDwgOCkKPiArCQkqbmJ1ZmZl
cnMgPSA4IC0gcV9udW1fYnVmczsKPiAgIAkqbnBsYW5lcyA9IDE7Cj4gICAJc2l6ZXNbMF0gPSBQ
QUdFX0FMSUdOKGRldi0+YnVmZmVyc2l6ZSk7Cj4gICAKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

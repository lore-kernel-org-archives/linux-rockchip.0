Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CAA35C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Nov 2023 11:33:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5mfMeoyr2LjNWVaws6q63MEi+OcIozlJP4wlC3mh5DY=; b=04InUGnuHi9DmB
	giPuwL41x3/j9NSayLfT2WVR5zpgQhNZOqM34ZNw0IfsdZ+cuVtYM3sUcrLmpF1mlWmh6Ox0Wa8zG
	b7sobMdIq1l26X+/XpUiWRgpBpatR/3YkHEl0luV6+hPqwTWdH9O8PQRzFJiZ5WggzKh5tx+nu5np
	pJx+cCVDXbCloFNRLuSAP8mTSKkULmaTeU5TyOua3nW+CCz4KW7mFgl3Zjzp0Bto2t+yTG2oi4fGj
	6U0E566Pga2Odxr77k/xKNAsGw/orDOr20/z9RphJzICqsaOCAAZIM6rMEmX33YjhmAFnEYLhqlQ0
	PC3MhG3dUWA3K3ja1yaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r13I0-006521-0V;
	Thu, 09 Nov 2023 11:33:36 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r13Hw-0064zz-1R;
	Thu, 09 Nov 2023 11:33:33 +0000
Received: from [100.116.125.19] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: andrzej.p)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 7A420660745F;
	Thu,  9 Nov 2023 11:33:26 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699529607;
	bh=RL6tVdN786HzuIYtIKZ/wRgGAmwBs43mCyxPsiLz9tw=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=QsYIjutQbzLX8OoAaohFvDooKFHRyMfCxu9xhlBcvz5CbNb91+vOXg8w8EcIlJG2v
	 fL8sF04sDQIoXbiFxxnlcv0NCo1HT2FLF1FSrbER5jT6sO+WNC03usaXAklGtYXJk/
	 sOeENSxF+kI0zUHImHEaZOk60rpQ4EUoeQU6oTjuEPVh2ihRqV17M/O35sCrZF6JRb
	 dzwv9/KZuUctUWWijHZmYoH5leTYYPQFe/qJW0hvyAlDHjmrDxN1ELbwBrr763w1qw
	 l6axlxOUp/TY85dgPsY4CPCYS2w+2SlQuZBCNMb6mJEnTMT/XmCQNwrfkOya2KmXn0
	 buvlQTLD0uL2w==
Message-ID: <f0961dc1-3584-48f5-9c78-57543859ba53@collabora.com>
Date: Thu, 9 Nov 2023 12:33:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v14 39/56] media: usb: airspy: Stop direct calls to queue
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
 linux-staging@lists.linux.dev, kernel@collabora.com
References: <20231031163104.112469-1-benjamin.gaignard@collabora.com>
 <20231031163104.112469-40-benjamin.gaignard@collabora.com>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
In-Reply-To: <20231031163104.112469-40-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_033332_615280_89F2410E 
X-CRM114-Status: GOOD (  14.37  )
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
b20+Cgo+IC0tLQo+ICAgZHJpdmVycy9tZWRpYS91c2IvYWlyc3B5L2FpcnNweS5jIHwgNSArKyst
LQo+ICAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiAK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS91c2IvYWlyc3B5L2FpcnNweS5jIGIvZHJpdmVy
cy9tZWRpYS91c2IvYWlyc3B5L2FpcnNweS5jCj4gaW5kZXggNDYyZWI4NDIzNTA2Li5lMjRlNjU1
ZmIxZGIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tZWRpYS91c2IvYWlyc3B5L2FpcnNweS5jCj4g
KysrIGIvZHJpdmVycy9tZWRpYS91c2IvYWlyc3B5L2FpcnNweS5jCj4gQEAgLTQ4MiwxMiArNDgy
LDEzIEBAIHN0YXRpYyBpbnQgYWlyc3B5X3F1ZXVlX3NldHVwKHN0cnVjdCB2YjJfcXVldWUgKnZx
LAo+ICAgCQl1bnNpZ25lZCBpbnQgKm5wbGFuZXMsIHVuc2lnbmVkIGludCBzaXplc1tdLCBzdHJ1
Y3QgZGV2aWNlICphbGxvY19kZXZzW10pCj4gICB7Cj4gICAJc3RydWN0IGFpcnNweSAqcyA9IHZi
Ml9nZXRfZHJ2X3ByaXYodnEpOwo+ICsJdW5zaWduZWQgaW50IHFfbnVtX2J1ZnMgPSB2YjJfZ2V0
X251bV9idWZmZXJzKHZxKTsKPiAgIAo+ICAgCWRldl9kYmcocy0+ZGV2LCAibmJ1ZmZlcnM9JWRc
biIsICpuYnVmZmVycyk7Cj4gICAKPiAgIAkvKiBOZWVkIGF0IGxlYXN0IDggYnVmZmVycyAqLwo+
IC0JaWYgKHZxLT5udW1fYnVmZmVycyArICpuYnVmZmVycyA8IDgpCj4gLQkJKm5idWZmZXJzID0g
OCAtIHZxLT5udW1fYnVmZmVyczsKPiArCWlmIChxX251bV9idWZzICsgKm5idWZmZXJzIDwgOCkK
PiArCQkqbmJ1ZmZlcnMgPSA4IC0gcV9udW1fYnVmczsKPiAgIAkqbnBsYW5lcyA9IDE7Cj4gICAJ
c2l6ZXNbMF0gPSBQQUdFX0FMSUdOKHMtPmJ1ZmZlcnNpemUpOwo+ICAgCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

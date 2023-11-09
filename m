Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3E8CC4167D
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Nov 2023 11:30:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nnx2pWnizaisC7glz7Nf1WSFWgQm5AUPdHvCcfAQwDA=; b=sQROpou9eyq8xZ
	u9xKrpQ6LVCEnHneHkF0J6HiT69ebnbfTmPFDLtqA5aj57sbYV6AG9tCsTHzTvtW5jQ3Q0k1IBUwT
	A3MEDIA6mR3kFj+Yyd9mLzZRa2KFbUoEL/Afebt55gS1ACGYeqSDRLnp7cUPJgw9G/mHSk1KLhRLd
	gI1cVKJt0qG4X0V22BSDGDDJjwPyLYKM1pDHItjuFETrbliR2qcbZ+sG3g+uYM3MYUb/Hm2KwiL/w
	QBSUpBV/0509UnNeHJ0AWwwVsHnBbo4R40tiguMBzcEKH/aGPoZpjQfXjnv2IIQex/jGYKMrnMr5m
	LEu/MDoBGvMPumwZv/cQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r13Eq-0064UP-1c;
	Thu, 09 Nov 2023 11:30:20 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r13Em-0064Sd-0v;
	Thu, 09 Nov 2023 11:30:17 +0000
Received: from [100.116.125.19] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: andrzej.p)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id A43096607421;
	Thu,  9 Nov 2023 11:30:13 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699529415;
	bh=SVwWJoku0b2gF9Msm+qmkDJT0wgIhMp4EHQn46CbvKQ=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=XTzMyPLGtG7ot69/B3qnKksFGi+wYvy2qUIZq9vDHeuBWwPSjFg1waygDHk/Z1f9w
	 rf0aJ52auDd2kRdzE/OOhydhIUIFk3SI78eHztTvaV4RqLcyvnce1H+eA62F8d9jyI
	 Iljv87MInMY3+AZbaJjU9YvTaLWqcgBxg1J4Y77B1ErzvoAgwL0pq7czm+l+3DkuSt
	 bjtH3cbsM3owmsjkUJz60pujw+dBQuWmJYh4/E9CyEUcHuMwmbAel786rAsy6qNkmE
	 G98AJOCk6Xck6lutnSll6wNnsXxS5JO2XENUrkiHvQ/c1hBLalrDlWwMCofbiKOaH8
	 eiP+XvuXiAVjA==
Message-ID: <c8788939-15e2-44ee-b478-c377a7964f0e@collabora.com>
Date: Thu, 9 Nov 2023 12:30:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v14 37/56] media: renesas: Stop direct calls to queue
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
 Fabrizio Castro <fabrizio.castro.jz@renesas.com>
References: <20231031163104.112469-1-benjamin.gaignard@collabora.com>
 <20231031163104.112469-38-benjamin.gaignard@collabora.com>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
In-Reply-To: <20231031163104.112469-38-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_033016_450268_C5C917C2 
X-CRM114-Status: GOOD (  14.53  )
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
b20+Cgo+IENDOiBGYWJyaXppbyBDYXN0cm8gPGZhYnJpemlvLmNhc3Ryby5qekByZW5lc2FzLmNv
bT4KPiAtLS0KPiAgIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcmVuZXNhcy9yY2FyX2RyaWYuYyB8
IDUgKysrLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25z
KC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcmVuZXNhcy9yY2Fy
X2RyaWYuYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcmVuZXNhcy9yY2FyX2RyaWYuYwo+IGlu
ZGV4IDI5MmM1YmY5ZTUwYy4uZjIxZDA1MDU0MzQxIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbWVk
aWEvcGxhdGZvcm0vcmVuZXNhcy9yY2FyX2RyaWYuYwo+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxh
dGZvcm0vcmVuZXNhcy9yY2FyX2RyaWYuYwo+IEBAIC00MjQsMTAgKzQyNCwxMSBAQCBzdGF0aWMg
aW50IHJjYXJfZHJpZl9xdWV1ZV9zZXR1cChzdHJ1Y3QgdmIyX3F1ZXVlICp2cSwKPiAgIAkJCXVu
c2lnbmVkIGludCBzaXplc1tdLCBzdHJ1Y3QgZGV2aWNlICphbGxvY19kZXZzW10pCj4gICB7Cj4g
ICAJc3RydWN0IHJjYXJfZHJpZl9zZHIgKnNkciA9IHZiMl9nZXRfZHJ2X3ByaXYodnEpOwo+ICsJ
dW5zaWduZWQgaW50IHFfbnVtX2J1ZnMgPSB2YjJfZ2V0X251bV9idWZmZXJzKHZxKTsKPiAgIAo+
ICAgCS8qIE5lZWQgYXQgbGVhc3QgMTYgYnVmZmVycyAqLwo+IC0JaWYgKHZxLT5udW1fYnVmZmVy
cyArICpudW1fYnVmZmVycyA8IDE2KQo+IC0JCSpudW1fYnVmZmVycyA9IDE2IC0gdnEtPm51bV9i
dWZmZXJzOwo+ICsJaWYgKHFfbnVtX2J1ZnMgKyAqbnVtX2J1ZmZlcnMgPCAxNikKPiArCQkqbnVt
X2J1ZmZlcnMgPSAxNiAtIHFfbnVtX2J1ZnM7Cj4gICAKPiAgIAkqbnVtX3BsYW5lcyA9IDE7Cj4g
ICAJc2l6ZXNbMF0gPSBQQUdFX0FMSUdOKHNkci0+Zm10LT5idWZmZXJzaXplKTsKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

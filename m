Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38746C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Nov 2023 10:29:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lfZDhtGBW8YeqxZQBkbDpD3HL8Tz1yjshSNaeejqsr8=; b=ydTCSEeLayvd4m
	keZPkOUoqsN4Nyu8uP/XrvG4Fkot+MtT7jm5yYt9HzkMXkVdg4w4RiOYyXmq3WkJThLYAIeUtvfD2
	FD9Fvt6RqDL2a2T9217ItmuO5GhWzTEP++He1cio2oVWmCI8AqIzUpwfUPqgEfGeR1sXcWPRaMB32
	parb6IXW/ujzNtm2xCKsn7n7hrULeETP3BqkACbeBhXvxiC0ZbPjM+Vg0uNJ9Hm9vny3PFMtngnkH
	BgsD6m0XZB0VDn0usaRmI+Ak4uRX3AKSB4bXiJyxRevTEogUzbfMzQpykjMOBsHM4wiCUo8bpEvey
	J3Kcm2znfKQ+S2Y+74WQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r12HR-005x8B-0c;
	Thu, 09 Nov 2023 10:28:57 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r12HN-005x6o-1R;
	Thu, 09 Nov 2023 10:28:54 +0000
Received: from [100.116.125.19] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: andrzej.p)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 96104660747A;
	Thu,  9 Nov 2023 10:28:50 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699525731;
	bh=YUI2716BL9MVVQKR0wOZgCkV9ZOFJ6M0hDxDFXWF8Os=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=VduSF+4jFjCIiOCw9PdW4Xm9Hk4QGuGR5xTJ46FG+sS1ktnWtunI7b3tg/OqJUIPa
	 CuMwLN1yJisi8JFrb2oFENwUbCmWBKLb1Z/JLpAoMd2qfHCKRw2Hzr5RfAI2MqSAIE
	 uu+mi6eZpgyvFbmwviQUyIfssORhuPElWeooCByiYm7A0aOzYdipB8ZrOaKTr9V6Pc
	 90LWux9RryGgf/ag0l7/BfZoETFy1RY+igfM/q0qsWFi2eTxS0qBv9gVOvzGsbLnI8
	 u+KRjmP/Xtn1QtyMmKM3uoQ99HFgGYgBHGdazZZKdfZ+CAo29Hr//67/FMEN736MLB
	 if7F4ggybw02g==
Message-ID: <919d0ff4-2e8b-4481-970c-5b9aa0f882bb@collabora.com>
Date: Thu, 9 Nov 2023 11:28:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v14 29/56] media: verisilicon: Stop direct calls to queue
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
 <20231031163104.112469-30-benjamin.gaignard@collabora.com>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
In-Reply-To: <20231031163104.112469-30-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_022853_613204_B56E3594 
X-CRM114-Status: GOOD (  12.59  )
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
b20+Cgo+IENDOiBFemVxdWllbCBHYXJjaWEgPGV6ZXF1aWVsQHZhbmd1YXJkaWFzdXIuY29tLmFy
Pgo+IC0tLQo+ICAgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fcG9z
dHByb2MuYyB8IDIgKy0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxl
dGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxp
Y29uL2hhbnRyb19wb3N0cHJvYy5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNv
bi9oYW50cm9fcG9zdHByb2MuYwo+IGluZGV4IDY0ZDZmYjg1MmFlOS4uOGY4ZjE3ZTY3MWNlIDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX3Bv
c3Rwcm9jLmMKPiArKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRy
b19wb3N0cHJvYy5jCj4gQEAgLTE5NSw3ICsxOTUsNyBAQCBpbnQgaGFudHJvX3Bvc3Rwcm9jX2Fs
bG9jKHN0cnVjdCBoYW50cm9fY3R4ICpjdHgpCj4gICAJc3RydWN0IGhhbnRyb19kZXYgKnZwdSA9
IGN0eC0+ZGV2Owo+ICAgCXN0cnVjdCB2NGwyX20ybV9jdHggKm0ybV9jdHggPSBjdHgtPmZoLm0y
bV9jdHg7Cj4gICAJc3RydWN0IHZiMl9xdWV1ZSAqY2FwX3F1ZXVlID0gJm0ybV9jdHgtPmNhcF9x
X2N0eC5xOwo+IC0JdW5zaWduZWQgaW50IG51bV9idWZmZXJzID0gY2FwX3F1ZXVlLT5udW1fYnVm
ZmVyczsKPiArCXVuc2lnbmVkIGludCBudW1fYnVmZmVycyA9IHZiMl9nZXRfbnVtX2J1ZmZlcnMo
Y2FwX3F1ZXVlKTsKPiAgIAlzdHJ1Y3QgdjRsMl9waXhfZm9ybWF0X21wbGFuZSBwaXhfbXA7Cj4g
ICAJY29uc3Qgc3RydWN0IGhhbnRyb19mbXQgKmZtdDsKPiAgIAl1bnNpZ25lZCBpbnQgaSwgYnVm
X3NpemU7CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=

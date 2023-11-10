Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7BDEC4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Nov 2023 09:25:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PkH9xwpOajhM/CCHnp7Z9URP6ce6UDFbmEskp4aoQmU=; b=uuZ/4aHP6qP0nH
	DObNSBcx1+CSAJmjQH7GJvf5BhTwP9QTYdK6c1nBZeZspu95QUEF7r6pALT8Sitypg65uFA/jsccT
	PKB1E9jnGV3EhmK6NvQUs6sOzCm5KxLZwaJqefPEn+2+2ccs8oy4mNrSX6P8PEZPsdG6GcRvAyHoV
	ijIN5luYDg2viTUQT/9ilGCo8gdSCUcrNE4N5pDAR2KQruj6qK9fH73j4qFx6wqIrZzTmBz9xJnPt
	g5gvJZKKOJrFFDunBQdX78w58dCYxAORUhdGxpejjg2lWWcMsdhTqpfF8iTyFoPZLzeKdcHTYjtqy
	x+hxEpJl9YBijBWIpa3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1Nli-008BEW-1T;
	Fri, 10 Nov 2023 09:25:38 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1Nle-008BD4-1Y;
	Fri, 10 Nov 2023 09:25:35 +0000
Received: from [100.116.125.19] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: andrzej.p)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 13A0F66073D3;
	Fri, 10 Nov 2023 09:25:32 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699608333;
	bh=n3+n4ksLRFYR42r5lq33koWRbtaxd52htHZoJWv8Q2c=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=mOD4VV5XkUr+52siDkPiIOaMx3IS3FOP/uD/XzskUk9EQBcQ5ReyAB2vNY+Dt52Ed
	 fVRkhuhHFSlJf5wGMZpBtOMVTXkftf18t0vYFYBuQasAjWad71XARhpmz6ghjaRwUA
	 ifI2jPLDFhheIv2D2IUHNNzfCYYzMKVlz2Jk+jjuf0Pw82JjbvrggCk3F50xfZg782
	 R9m83Ernj1bylVxDMyqT6TDZKsU9nifIDCOdHsDPfIqwn4NSCyHMIDOB21YpJuKtDn
	 QSK/n2BYzQdLt5B6N5+IR2WA7dO0crqUpW97Fs8SAhZnABE+zSle1oi0erDWOeBClK
	 g0dSUGCaQIbug==
Message-ID: <78109ad6-afbc-46eb-ba25-b4fc35c59c3c@collabora.com>
Date: Fri, 10 Nov 2023 10:25:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v15 19/56] media: dvb-core: Do not initialize twice queue
 num_buffer field
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
References: <20231109163512.179524-14-benjamin.gaignard@collabora.com>
 <20231109163512.179524-20-benjamin.gaignard@collabora.com>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
In-Reply-To: <20231109163512.179524-20-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_012534_652558_D7B56572 
X-CRM114-Status: GOOD (  10.84  )
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

VyBkbml1IDkuMTEuMjAyMyBvwqAxNzozNCwgQmVuamFtaW4gR2FpZ25hcmQgcGlzemU6Cj4gVGhl
IGFib3ZlIG1lbXNldCBhbHJlYWR5IHplcm9lZCBhbGwgdGhlIGN0eCBmaWVsZHMsIGl0IGlzIHVz
ZWxlc3MKPiB0byBkbyBpdCBoZXJlIGFnYWluLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEJlbmphbWlu
IEdhaWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgoKUmV2aWV3ZWQtYnk6
IEFuZHJ6ZWogUGlldHJhc2lld2ljeiA8YW5kcnplai5wQGNvbGxhYm9yYS5jb20+Cgo+IC0tLQo+
ICAgZHJpdmVycy9tZWRpYS9kdmItY29yZS9kdmJfdmIyLmMgfCAzIC0tLQo+ICAgMSBmaWxlIGNo
YW5nZWQsIDMgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvZHZi
LWNvcmUvZHZiX3ZiMi5jIGIvZHJpdmVycy9tZWRpYS9kdmItY29yZS9kdmJfdmIyLmMKPiBpbmRl
eCAzYTk2NmZkZjgxNGMuLjE2N2ZmODJhNmZlZCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21lZGlh
L2R2Yi1jb3JlL2R2Yl92YjIuYwo+ICsrKyBiL2RyaXZlcnMvbWVkaWEvZHZiLWNvcmUvZHZiX3Zi
Mi5jCj4gQEAgLTE2Nyw4ICsxNjcsNiBAQCBpbnQgZHZiX3ZiMl9pbml0KHN0cnVjdCBkdmJfdmIy
X2N0eCAqY3R4LCBjb25zdCBjaGFyICpuYW1lLCBpbnQgbm9uYmxvY2tpbmcpCj4gICAKPiAgIAlt
ZW1zZXQoY3R4LCAwLCBzaXplb2Yoc3RydWN0IGR2Yl92YjJfY3R4KSk7Cj4gICAJcS0+dHlwZSA9
IERWQl9CVUZfVFlQRV9DQVBUVVJFOwo+IC0JLyoqY2FwdHVyZSB0eXBlKi8KPiAtCXEtPmlzX291
dHB1dCA9IDA7Cj4gICAJLyoqb25seSBtbWFwIGlzIHN1cHBvcnRlZCBjdXJyZW50bHkqLwo+ICAg
CXEtPmlvX21vZGVzID0gVkIyX01NQVA7Cj4gICAJcS0+ZHJ2X3ByaXYgPSBjdHg7Cj4gQEAgLTE3
Nyw3ICsxNzUsNiBAQCBpbnQgZHZiX3ZiMl9pbml0KHN0cnVjdCBkdmJfdmIyX2N0eCAqY3R4LCBj
b25zdCBjaGFyICpuYW1lLCBpbnQgbm9uYmxvY2tpbmcpCj4gICAJcS0+b3BzID0gJmR2Yl92YjJf
cW9wczsKPiAgIAlxLT5tZW1fb3BzID0gJnZiMl92bWFsbG9jX21lbW9wczsKPiAgIAlxLT5idWZf
b3BzID0gJmR2Yl92YjJfYnVmX29wczsKPiAtCXEtPm51bV9idWZmZXJzID0gMDsKPiAgIAlyZXQg
PSB2YjJfY29yZV9xdWV1ZV9pbml0KHEpOwo+ICAgCWlmIChyZXQpIHsKPiAgIAkJY3R4LT5zdGF0
ZSA9IERWQl9WQjJfU1RBVEVfTk9ORTsKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

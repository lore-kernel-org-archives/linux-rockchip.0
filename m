Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D2F0C4167D
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Nov 2023 10:07:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b8ZY7nn4HfOacNhTq8Gj384PErgHL/7tCUmulIY/GLM=; b=CAqut6CzzfJTlg
	jWXBcsirhCWo9bMpgcaekwlMu/GcoW7twUCuW4cC2mw8k/YF+Ex95/tV2M9N+34b76DopSf+xVDA3
	dgmxYNxIVBrr+LqeAIRu8CcDS80QO27URbWmm0q6dglvbxu9M0Ri07zDgXbSkVKIMkpdSNo41ciDZ
	Ne4DjO94uSOYp42fyRkV7ZGi0WC1jXeOhL8YLEFNy3yzPsTJT2SE94+xlDxzGIwOaF6WNADZ6Nh4n
	vBmK7sLG3M5FKFGATTxFxxhLiHU+907u1Xfr1zSE6dgIp5Ec9hs+nERoms3nNX08R67ZskfV5A5eJ
	q/ldOqznCqhX48WIHGzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r11wg-005sGh-0I;
	Thu, 09 Nov 2023 10:07:30 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r11wa-005sAk-0q;
	Thu, 09 Nov 2023 10:07:26 +0000
Received: from [100.116.125.19] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: andrzej.p)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 1479B6607435;
	Thu,  9 Nov 2023 10:07:21 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699524442;
	bh=2u4132PKQo/IFXxEHHXQCfjEEBtnpTKPKk3Jkg0X8BA=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=aPdvntNYeqjb+XoPa1QOJWzij5Diogua7gCy81chfR2XskUq1ILkXzf2tZRnG3JP7
	 phwa5ILJKXBUJNil2qBTzLotFJcrNeFLUPu1d7XoMzWtTPyFR1nLM6DwIxHdkvoj1/
	 Jp6XyNdh9JXMySrU9kpIB5DXb8A3RAHMx9n0kucsSkAZAzg9mkO+utTdnp+dE47s4z
	 uVauM1T92AGxYC5Vo2ibB5bJMDeIHosARg3QA0cjpXGm6PKhRK45DpdILnmtsPYnsf
	 mL5JH3wTXwWXQgMh75/hAjYMUUVm/cjfq6YltNYU97n0DQyVSdQAJouj849HgL22hl
	 WSSDwlp0gymLQ==
Message-ID: <c4f47aaa-d712-4905-b77d-6fe1b897d94b@collabora.com>
Date: Thu, 9 Nov 2023 11:07:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v14 23/56] media: pci: cx18: Stop direct calls to queue
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
 Sergey Kozlov <serjk@netup.ru>, Abylay Ospan <aospan@netup.ru>
References: <20231031163104.112469-1-benjamin.gaignard@collabora.com>
 <20231031163104.112469-24-benjamin.gaignard@collabora.com>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
In-Reply-To: <20231031163104.112469-24-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_020724_443795_857D57D2 
X-CRM114-Status: GOOD (  15.99  )
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
cGFuIDxhb3NwYW5AbmV0dXAucnU+Cj4gLS0tCj4gICBkcml2ZXJzL21lZGlhL3BjaS9jeDE4L2N4
MTgtc3RyZWFtcy5jIHwgNSArKystLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygr
KSwgMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wY2kvY3gx
OC9jeDE4LXN0cmVhbXMuYyBiL2RyaXZlcnMvbWVkaWEvcGNpL2N4MTgvY3gxOC1zdHJlYW1zLmMK
PiBpbmRleCA1OTc0NzI3NTRjNGMuLmNmYmM0YTkwNzgwMiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L21lZGlhL3BjaS9jeDE4L2N4MTgtc3RyZWFtcy5jCj4gKysrIGIvZHJpdmVycy9tZWRpYS9wY2kv
Y3gxOC9jeDE4LXN0cmVhbXMuYwo+IEBAIC0xMDQsNiArMTA0LDcgQEAgc3RhdGljIGludCBjeDE4
X3F1ZXVlX3NldHVwKHN0cnVjdCB2YjJfcXVldWUgKnZxLAo+ICAgCQkJICAgIHVuc2lnbmVkIGlu
dCAqbmJ1ZmZlcnMsIHVuc2lnbmVkIGludCAqbnBsYW5lcywKPiAgIAkJCSAgICB1bnNpZ25lZCBp
bnQgc2l6ZXNbXSwgc3RydWN0IGRldmljZSAqYWxsb2NfZGV2c1tdKQo+ICAgewo+ICsJdW5zaWdu
ZWQgaW50IHFfbnVtX2J1ZnMgPSB2YjJfZ2V0X251bV9idWZmZXJzKHZxKTsKPiAgIAlzdHJ1Y3Qg
Y3gxOF9zdHJlYW0gKnMgPSB2YjJfZ2V0X2Rydl9wcml2KHZxKTsKPiAgIAlzdHJ1Y3QgY3gxOCAq
Y3ggPSBzLT5jeDsKPiAgIAl1bnNpZ25lZCBpbnQgc3ppbWFnZTsKPiBAQCAtMTIxLDggKzEyMiw4
IEBAIHN0YXRpYyBpbnQgY3gxOF9xdWV1ZV9zZXR1cChzdHJ1Y3QgdmIyX3F1ZXVlICp2cSwKPiAg
IAkgKiBMZXQncyByZXF1ZXN0IGF0IGxlYXN0IHRocmVlIGJ1ZmZlcnM6IHR3byBmb3IgdGhlCj4g
ICAJICogRE1BIGVuZ2luZSBhbmQgb25lIGZvciB1c2Vyc3BhY2UuCj4gICAJICovCj4gLQlpZiAo
dnEtPm51bV9idWZmZXJzICsgKm5idWZmZXJzIDwgMykKPiAtCQkqbmJ1ZmZlcnMgPSAzIC0gdnEt
Pm51bV9idWZmZXJzOwo+ICsJaWYgKHFfbnVtX2J1ZnMgKyAqbmJ1ZmZlcnMgPCAzKQo+ICsJCSpu
YnVmZmVycyA9IDMgLSBxX251bV9idWZzOwo+ICAgCj4gICAJaWYgKCpucGxhbmVzKSB7Cj4gICAJ
CWlmICgqbnBsYW5lcyAhPSAxIHx8IHNpemVzWzBdIDwgc3ppbWFnZSkKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

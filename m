Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9EEBDC4332F
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Nov 2023 09:57:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KWFBAx3DcW5GuYk8RUXXyLx/RNfCWhiU5wyWqbWD3b8=; b=ZKOfEIUWO9nvjw
	tQBRnzy/68rNxnuf5ID4O7GrMwwfyP/xvK2wm1G5tUKSHIiolec+joHO0ps4pCBH5Cjx1+/93ISFV
	md1r2Up4qBgwiSGxLwTVkG8qvFxmoFCF0jzMab+DcRIyl9MCL25X+CJ4nCBFO1qQA010vMKOPP016
	94kO9sfF7tgo2+9/SHs7cY7KrWBHjWa8+pyws4J7P9k9Za5f9Cxe/fzf4ohEUKblnUMHh5WhwaJ8n
	55R5tNWP/z0Rw5crx28818WPZzK2DeRlwCkMSVvmvPUeZQHRAPgOeLJpOX5IaskxuwTM+J+giZr1d
	v3wMYTUChuFJ0tPcpa8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r11mO-005qL8-0E;
	Thu, 09 Nov 2023 09:56:52 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r11mL-005qJ4-0B;
	Thu, 09 Nov 2023 09:56:50 +0000
Received: from [100.116.125.19] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: andrzej.p)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 2BC966607410;
	Thu,  9 Nov 2023 09:56:46 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699523807;
	bh=c+3XjSeB8HMKNjwLmSS238tYNmxXwbwvveXaB38GSKk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=go3xYNfITHl5diEzptRBnlY36ukC5Xflkzmqf4Rm34E3qLVY2WtNf/vOKNouUwT31
	 XWBrSQ3HFLFpCTkEfKxemlErp/XIbe89+zzSptEE9vmLNTaM+WBBarpt5aEbWlRk+c
	 ze4Q3rJqNKIp64aPproN3VBAZDa3aTZ0gvTmJs0MJ/bV3X7EsS8jfE1TJE4kx0aZJ5
	 EY8MEd/69Tqk9dU1LHT09wR/dJIV5qVsx6kq9tXDPl8ndlMkkzOF6Ol9Gj+cIyoYpK
	 zO1V/WbVmt7qG6FA/Po3JhYDoqvYzkPzgW+zFU9aqRGMf7RNsCVNpYnP8szoGJ945k
	 VM/BOEgVaZLhQ==
Message-ID: <6ff3d1e2-020e-4a50-944f-f8a82aea32fb@collabora.com>
Date: Thu, 9 Nov 2023 10:56:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v14 20/56] media: dvb-frontends: rtl2832: Stop direct
 calls to queue num_buffers field
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
 <20231031163104.112469-21-benjamin.gaignard@collabora.com>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
In-Reply-To: <20231031163104.112469-21-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_015649_224979_BBA8A4E4 
X-CRM114-Status: GOOD (  14.44  )
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
cnMvbWVkaWEvZHZiLWZyb250ZW5kcy9ydGwyODMyX3Nkci5jIHwgNSArKystLQo+ICAgMSBmaWxl
IGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9tZWRpYS9kdmItZnJvbnRlbmRzL3J0bDI4MzJfc2RyLmMgYi9kcml2ZXJzL21l
ZGlhL2R2Yi1mcm9udGVuZHMvcnRsMjgzMl9zZHIuYwo+IGluZGV4IDAyYzYxOWU1MTY0MS4uMDIz
ZGI2ZTc5M2Y4IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbWVkaWEvZHZiLWZyb250ZW5kcy9ydGwy
ODMyX3Nkci5jCj4gKysrIGIvZHJpdmVycy9tZWRpYS9kdmItZnJvbnRlbmRzL3J0bDI4MzJfc2Ry
LmMKPiBAQCAtNDM5LDEyICs0MzksMTMgQEAgc3RhdGljIGludCBydGwyODMyX3Nkcl9xdWV1ZV9z
ZXR1cChzdHJ1Y3QgdmIyX3F1ZXVlICp2cSwKPiAgIHsKPiAgIAlzdHJ1Y3QgcnRsMjgzMl9zZHJf
ZGV2ICpkZXYgPSB2YjJfZ2V0X2Rydl9wcml2KHZxKTsKPiAgIAlzdHJ1Y3QgcGxhdGZvcm1fZGV2
aWNlICpwZGV2ID0gZGV2LT5wZGV2Owo+ICsJdW5zaWduZWQgaW50IHFfbnVtX2J1ZnMgPSB2YjJf
Z2V0X251bV9idWZmZXJzKHZxKTsKPiAgIAo+ICAgCWRldl9kYmcoJnBkZXYtPmRldiwgIm5idWZm
ZXJzPSVkXG4iLCAqbmJ1ZmZlcnMpOwo+ICAgCj4gICAJLyogTmVlZCBhdCBsZWFzdCA4IGJ1ZmZl
cnMgKi8KPiAtCWlmICh2cS0+bnVtX2J1ZmZlcnMgKyAqbmJ1ZmZlcnMgPCA4KQo+IC0JCSpuYnVm
ZmVycyA9IDggLSB2cS0+bnVtX2J1ZmZlcnM7Cj4gKwlpZiAocV9udW1fYnVmcyArICpuYnVmZmVy
cyA8IDgpCj4gKwkJKm5idWZmZXJzID0gOCAtIHFfbnVtX2J1ZnM7Cj4gICAJKm5wbGFuZXMgPSAx
Owo+ICAgCXNpemVzWzBdID0gUEFHRV9BTElHTihkZXYtPmJ1ZmZlcnNpemUpOwo+ICAgCWRldl9k
YmcoJnBkZXYtPmRldiwgIm5idWZmZXJzPSVkIHNpemVzWzBdPSVkXG4iLCAqbmJ1ZmZlcnMsIHNp
emVzWzBdKTsKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==

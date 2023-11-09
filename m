Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15995C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Nov 2023 10:06:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=14j4POZA75SkfRGWH11v0vR9X/LBPjynsu0il6sD/EY=; b=O2I2gqKqZJ6wow
	77onOQ8qYbtRl2NWz6UFhm+FiVfduXbCaOY3Mu9/rvibdNd/hg0XWIFuE2cukfbdU52x+9fyq5vQB
	GoCjJrQUC5jTfgxQPN4ulNG4+443qXf6zXsheqV7pjkRAyJBLVyUlH45saFLrjWnB9loDEx4UDOT2
	GZDU9X2PK304wksrAhoqCLQmacP5peiHwob81UdM0LVvJD/nAHyI9nuMhT1fRwBcq145RQdNwSQDU
	hTtCOKz/yZtzyM30gyMBnT6RWS326QkfLcFiNge2dOxOvEyYlMhTHgEJpb9iLGFJ6Bt1LkIVrbPpd
	CyxlkKYiLYTi+r8pV1SA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r11vJ-005rSP-04;
	Thu, 09 Nov 2023 10:06:05 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r11vE-005rR2-2Y;
	Thu, 09 Nov 2023 10:06:02 +0000
Received: from [100.116.125.19] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: andrzej.p)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 3760C6607435;
	Thu,  9 Nov 2023 10:05:58 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699524359;
	bh=UJuIMITlo4Vgq8DsEXFYPS1YQZCqvGhIqg5ZZ7SVEPE=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=ZZTzL9AccMhtEEEUj0qc1XRdMjJ5UIEw8Rn1j0Ues6tELlQiKYoXsUOHEhug4eTb1
	 08fCo9nV2UzGSbOz4kF7j6SanHTfgSHAVihmWzzMbZJXmmOtTJf0TdtpM93OZivRQE
	 LSWuzm7quXfM+Uj6Kx307tyKffOqt+dg5vyEQbYzWwN05SfKgmoDJL4J8m6j0PDT3T
	 je5lY28C/9OB7oKHrJDcIzwipA3P3wLZyPh4WgHqdRLpS7B1W1R0hE7hEIhTMcFU5f
	 5kchFbGmgmqknDT6HEuzhdX7dte9kiVtx7DE/tn4Ao2HUeVbZ4Dj6C+9XY1R/EiSQC
	 A8Q7aJegjSoaw==
Message-ID: <ef2c7f81-7846-4ee2-b52d-061177df9755@collabora.com>
Date: Thu, 9 Nov 2023 11:05:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v14 22/56] media: pci: tw686x: Stop direct calls to queue
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
 <20231031163104.112469-23-benjamin.gaignard@collabora.com>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
In-Reply-To: <20231031163104.112469-23-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_020600_958852_B534212D 
X-CRM114-Status: GOOD (  16.29  )
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
Pgo+IC0tLQo+ICAgZHJpdmVycy9tZWRpYS9wY2kvdHc2ODZ4L3R3Njg2eC12aWRlby5jIHwgNSAr
KystLQo+ICAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkK
PiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wY2kvdHc2ODZ4L3R3Njg2eC12aWRlby5j
IGIvZHJpdmVycy9tZWRpYS9wY2kvdHc2ODZ4L3R3Njg2eC12aWRlby5jCj4gaW5kZXggM2ViZjdh
MmM5NWYwLi42YmM2ZDE0M2QxOGMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tZWRpYS9wY2kvdHc2
ODZ4L3R3Njg2eC12aWRlby5jCj4gKysrIGIvZHJpdmVycy9tZWRpYS9wY2kvdHc2ODZ4L3R3Njg2
eC12aWRlby5jCj4gQEAgLTQyMyw2ICs0MjMsNyBAQCBzdGF0aWMgaW50IHR3Njg2eF9xdWV1ZV9z
ZXR1cChzdHJ1Y3QgdmIyX3F1ZXVlICp2cSwKPiAgIAkJCSAgICAgIHVuc2lnbmVkIGludCBzaXpl
c1tdLCBzdHJ1Y3QgZGV2aWNlICphbGxvY19kZXZzW10pCj4gICB7Cj4gICAJc3RydWN0IHR3Njg2
eF92aWRlb19jaGFubmVsICp2YyA9IHZiMl9nZXRfZHJ2X3ByaXYodnEpOwo+ICsJdW5zaWduZWQg
aW50IHFfbnVtX2J1ZnMgPSB2YjJfZ2V0X251bV9idWZmZXJzKHZxKTsKPiAgIAl1bnNpZ25lZCBp
bnQgc3ppbWFnZSA9Cj4gICAJCSh2Yy0+d2lkdGggKiB2Yy0+aGVpZ2h0ICogdmMtPmZvcm1hdC0+
ZGVwdGgpID4+IDM7Cj4gICAKPiBAQCAtNDMwLDggKzQzMSw4IEBAIHN0YXRpYyBpbnQgdHc2ODZ4
X3F1ZXVlX3NldHVwKHN0cnVjdCB2YjJfcXVldWUgKnZxLAo+ICAgCSAqIExldCdzIHJlcXVlc3Qg
YXQgbGVhc3QgdGhyZWUgYnVmZmVyczogdHdvIGZvciB0aGUKPiAgIAkgKiBETUEgZW5naW5lIGFu
ZCBvbmUgZm9yIHVzZXJzcGFjZS4KPiAgIAkgKi8KPiAtCWlmICh2cS0+bnVtX2J1ZmZlcnMgKyAq
bmJ1ZmZlcnMgPCAzKQo+IC0JCSpuYnVmZmVycyA9IDMgLSB2cS0+bnVtX2J1ZmZlcnM7Cj4gKwlp
ZiAocV9udW1fYnVmcyArICpuYnVmZmVycyA8IDMpCj4gKwkJKm5idWZmZXJzID0gMyAtIHFfbnVt
X2J1ZnM7Cj4gICAKPiAgIAlpZiAoKm5wbGFuZXMpIHsKPiAgIAkJaWYgKCpucGxhbmVzICE9IDEg
fHwgc2l6ZXNbMF0gPCBzemltYWdlKQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK

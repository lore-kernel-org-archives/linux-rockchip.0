Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81718C4332F
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Nov 2023 16:47:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0jlRaIRwYdYjfiZi08pBi5mFAxEEDn84Ek7xsxPqspQ=; b=PR+vQuq8/7MVsc
	v8JVtwysU4tMJDXhemy+Ue7iuCrTyPR/QBHJYqdsOzvHnWZDmDKREtrfzeqi1R837mGwzUMNkMLw+
	fCbUI1uD4epKHktZMWNhNZjWuq8nDUye2pFj9GgXJCLmYJ2Ae4TxKijIuIOKH/G3ewI+ZoIL3J7yn
	Ek2sVpMpPgnQgLML1VQoZjpSqEEpLqHmV1xLebd9nmEQ5JNqcW2377CH24fgXDCB8ER4GRtZDoVPg
	Yem9Fz8/LcbMXiJaE9Nw67cDbQhLOuKYb/CjQgtw0ZhrS/frMwA23o+hsk4v01jtxXBXk8LWf1huf
	pJ4bYOl/A02UYoxBRQiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r0lhl-004Kc7-2h;
	Wed, 08 Nov 2023 16:47:01 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r0lhi-004Kas-1T;
	Wed, 08 Nov 2023 16:46:59 +0000
Received: from [100.116.125.19] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: andrzej.p)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 0ADEF6607699;
	Wed,  8 Nov 2023 16:46:50 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699462012;
	bh=EeyG48ihoO4SEA/8XzhcTQbxRY9L7eiinHyNA69xzNY=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=ESr6pT+f5UmHQxoH5B2QL2SWWHnZ3IDW3t+g85ghsXjBSK8T1+8jENSXLV7GixsAj
	 BPAyBa40TM2XvyZyx3j3dohE3PERlH12LjHWvZHG7YeKWNNo2csckKlKC4nImAoh35
	 mVHK3UfT0f4ZLj4Bq+BksGnA+bn0TdudzD4MOUmBsOh0UgMenEcXaImIkN3o9qZVps
	 xVrCGMG1mC5FBV/kc9Ky+Fu5aHKRWni0vczlYaMhosT55ux5n7pINuig5s/nCKQ94K
	 TbM4X/KVNP/FxBp46aJntEZZTvCi7rQ245Pv7oQ+cnZsu3zz2i/foJOTsWC/f5LGzD
	 /zMuhB7rJQ1KA==
Message-ID: <03557323-0a03-4833-b2de-6011e3d3acee@collabora.com>
Date: Wed, 8 Nov 2023 17:46:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v14 06/56] media: videobuf2: Remove duplicated index vs
 q->num_buffers check
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
 <20231031163104.112469-7-benjamin.gaignard@collabora.com>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
In-Reply-To: <20231031163104.112469-7-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231108_084658_633507_2414CB31 
X-CRM114-Status: GOOD (  11.37  )
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

VyBkbml1IDMxLjEwLjIwMjMgb8KgMTc6MzAsIEJlbmphbWluIEdhaWduYXJkIHBpc3plOgo+IHZi
Ml9nZXRfYnVmZmVyKCkgYWxyZWFkeSBjaGVja3MgaWYgdGhlIHJlcXVlc3RlZCBpbmRleCBpcyB2
YWxpZC4KPiBTdG9wIGR1cGxpY2F0aW5nIHRoaXMga2luZCBvZiBjaGVjayBldmVyeXdoZXJlLgo+
IAo+IFNpZ25lZC1vZmYtYnk6IEJlbmphbWluIEdhaWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBj
b2xsYWJvcmEuY29tPgpSZXZpZXdlZC1ieTogQW5kcnplaiBQaWV0cmFzaWV3aWN6IDxhbmRyemVq
LnBAY29sbGFib3JhLmNvbT4KCj4gLS0tCj4gICBkcml2ZXJzL21lZGlhL2NvbW1vbi92aWRlb2J1
ZjIvdmlkZW9idWYyLXY0bDIuYyB8IDggLS0tLS0tLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCA4IGRl
bGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL2NvbW1vbi92aWRlb2J1
ZjIvdmlkZW9idWYyLXY0bDIuYyBiL2RyaXZlcnMvbWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92aWRl
b2J1ZjItdjRsMi5jCj4gaW5kZXggMmZmYjA5N2JmMDBhLi5jNmViYzhkMmM1MzcgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9tZWRpYS9jb21tb24vdmlkZW9idWYyL3ZpZGVvYnVmMi12NGwyLmMKPiAr
KysgYi9kcml2ZXJzL21lZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLXY0bDIuYwo+IEBA
IC04MjMsMTAgKzgyMyw2IEBAIGludCB2YjJfcWJ1ZihzdHJ1Y3QgdmIyX3F1ZXVlICpxLCBzdHJ1
Y3QgbWVkaWFfZGV2aWNlICptZGV2LAo+ICAgCQlyZXR1cm4gLUVCVVNZOwo+ICAgCX0KPiAgIAo+
IC0JaWYgKGItPmluZGV4ID49IHEtPm51bV9idWZmZXJzKSB7Cj4gLQkJZHByaW50ayhxLCAxLCAi
YnVmZmVyIGluZGV4IG91dCBvZiByYW5nZVxuIik7Cj4gLQkJcmV0dXJuIC1FSU5WQUw7Cj4gLQl9
Cj4gICAJdmIgPSB2YjJfZ2V0X2J1ZmZlcihxLCBiLT5pbmRleCk7Cj4gICAJaWYgKCF2Yikgewo+
ICAgCQlkcHJpbnRrKHEsIDEsICJjYW4ndCBmaW5kIHRoZSByZXF1ZXN0ZWQgYnVmZmVyICV1XG4i
LCBiLT5pbmRleCk7Cj4gQEAgLTg5OCwxMCArODk0LDYgQEAgaW50IHZiMl9leHBidWYoc3RydWN0
IHZiMl9xdWV1ZSAqcSwgc3RydWN0IHY0bDJfZXhwb3J0YnVmZmVyICplYikKPiAgIHsKPiAgIAlz
dHJ1Y3QgdmIyX2J1ZmZlciAqdmI7Cj4gICAKPiAtCWlmIChlYi0+aW5kZXggPj0gcS0+bnVtX2J1
ZmZlcnMpIHsKPiAtCQlkcHJpbnRrKHEsIDEsICJidWZmZXIgaW5kZXggb3V0IG9mIHJhbmdlXG4i
KTsKPiAtCQlyZXR1cm4gLUVJTlZBTDsKPiAtCX0KPiAgIAl2YiA9IHZiMl9nZXRfYnVmZmVyKHEs
IGViLT5pbmRleCk7Cj4gICAJaWYgKCF2Yikgewo+ICAgCQlkcHJpbnRrKHEsIDEsICJjYW4ndCBm
aW5kIHRoZSByZXF1ZXN0ZWQgYnVmZmVyICV1XG4iLCBlYi0+aW5kZXgpOwoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

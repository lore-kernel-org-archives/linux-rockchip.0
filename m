Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E044C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Nov 2023 10:26:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AowFWBq8dl4R7yKftL3eKJhIVNrqQs9iEa9KqQTVyF8=; b=DrkZomIQJAKk5O
	Ua81kIeopxw7VUg5BdVX5JizRbcnem8HQb8X49JZ0shUewZWr8IICk+K5n6GtzBv/z9t1J2sN316H
	KVUJpnx5PmzgTUlBTrEyetDUr9I37H5wMtFpUd4cUjyGU0z+ZAr9NaS47Q/XgWxo7O3pAY90qUqJq
	S0nwgQPYud9noVCe5KA/TCTdPWAqrz4S4gA3WbINZtRjPuiZt8Rk6MRw3jNawCMCm9U5XAugkNEEd
	zbHACgoWwcVH9XykZGlQnT/NjCgK0l775x2STHS2JmMlKDBurlBiR5kJiXoRuERPmUff0lVta/c24
	hpsW6QPTr3BeYj2oXJ+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r12FO-005wnh-30;
	Thu, 09 Nov 2023 10:26:50 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r12FL-005wmU-1j;
	Thu, 09 Nov 2023 10:26:48 +0000
Received: from [100.116.125.19] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: andrzej.p)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id D2D08660747A;
	Thu,  9 Nov 2023 10:26:43 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699525606;
	bh=jAf4h4sgiviqaZEssAa8sbH54nGXtCyoEsIxJZmdzJs=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=BAtkW3nSb+sNgx50yyTGQ9U2c9crSZN5E5WHdG/IQfT68/C3wCDJZHuQbBmCy+ojN
	 3MglN24Kx8MUhPiz2uKGyX9I7yJW0HF+t3NBQ44/k+ZaP8e/sGKIpaEg++Ki7s4Grj
	 Hucv6gCSDbUabTKvIcvgKVlTq2AUmcQ1mAWUdzrBle1PyHMbpMjMVwekITmwxNXzfJ
	 i9TnEvwkN6dSprJKaqi6DaMXA+JUn7WVkof8qqKukLUGF2PvZCf8BFvW3cLByi/xws
	 rpFiyas46Oi/pfNv9COmYd4k2fyU0z49KifjM9H7Jjm1nDMjWn6EoTj3reTTZ3cZ7g
	 ms+dUVLdOPA/w==
Message-ID: <1a25ef8e-4e72-4915-b9f1-d6477bbd2e21@collabora.com>
Date: Thu, 9 Nov 2023 11:26:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v14 28/56] media: nxp: Stop direct calls to queue
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
 Rui Miguel Silva <rmfrfs@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Martin Kepplinger <martink@posteo.de>
References: <20231031163104.112469-1-benjamin.gaignard@collabora.com>
 <20231031163104.112469-29-benjamin.gaignard@collabora.com>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
In-Reply-To: <20231031163104.112469-29-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_022647_702965_880E116A 
X-CRM114-Status: GOOD (  14.32  )
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
UmV2aWV3ZWQtYnk6IEFuZHJ6ZWogUGlldHJhc2lld2N6IDxhbmRyemVqLnBAY29sbGFib3JhLmNv
bT4KCj4gQ0M6IFJ1aSBNaWd1ZWwgU2lsdmEgPHJtZnJmc0BnbWFpbC5jb20+Cj4gQ0M6IExhdXJl
bnQgUGluY2hhcnQgPGxhdXJlbnQucGluY2hhcnRAaWRlYXNvbmJvYXJkLmNvbT4KPiBDQzogTWFy
dGluIEtlcHBsaW5nZXIgPG1hcnRpbmtAcG9zdGVvLmRlPgo+IC0tLQo+ICAgZHJpdmVycy9tZWRp
YS9wbGF0Zm9ybS9ueHAvaW14Ny1tZWRpYS1jc2kuYyB8IDcgKysrKy0tLQo+ICAgMSBmaWxlIGNo
YW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9ueHAvaW14Ny1tZWRpYS1jc2kuYyBiL2RyaXZlcnMvbWVk
aWEvcGxhdGZvcm0vbnhwL2lteDctbWVkaWEtY3NpLmMKPiBpbmRleCAxNTA0OWM2YWFiMzcuLjRj
NDY3ZmI4Mjc4OSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL254cC9pbXg3
LW1lZGlhLWNzaS5jCj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9ueHAvaW14Ny1tZWRp
YS1jc2kuYwo+IEBAIC0xMjQ1LDYgKzEyNDUsNyBAQCBzdGF0aWMgaW50IGlteDdfY3NpX3ZpZGVv
X3F1ZXVlX3NldHVwKHN0cnVjdCB2YjJfcXVldWUgKnZxLAo+ICAgCQkJCSAgICAgIHN0cnVjdCBk
ZXZpY2UgKmFsbG9jX2RldnNbXSkKPiAgIHsKPiAgIAlzdHJ1Y3QgaW14N19jc2kgKmNzaSA9IHZi
Ml9nZXRfZHJ2X3ByaXYodnEpOwo+ICsJdW5zaWduZWQgaW50IHFfbnVtX2J1ZnMgPSB2YjJfZ2V0
X251bV9idWZmZXJzKHZxKTsKPiAgIAlzdHJ1Y3QgdjRsMl9waXhfZm9ybWF0ICpwaXggPSAmY3Np
LT52ZGV2X2ZtdDsKPiAgIAl1bnNpZ25lZCBpbnQgY291bnQgPSAqbmJ1ZmZlcnM7Cj4gICAKPiBA
QCAtMTI1NCwxNCArMTI1NSwxNCBAQCBzdGF0aWMgaW50IGlteDdfY3NpX3ZpZGVvX3F1ZXVlX3Nl
dHVwKHN0cnVjdCB2YjJfcXVldWUgKnZxLAo+ICAgCWlmICgqbnBsYW5lcykgewo+ICAgCQlpZiAo
Km5wbGFuZXMgIT0gMSB8fCBzaXplc1swXSA8IHBpeC0+c2l6ZWltYWdlKQo+ICAgCQkJcmV0dXJu
IC1FSU5WQUw7Cj4gLQkJY291bnQgKz0gdnEtPm51bV9idWZmZXJzOwo+ICsJCWNvdW50ICs9IHFf
bnVtX2J1ZnM7Cj4gICAJfQo+ICAgCj4gICAJY291bnQgPSBtaW5fdChfX3UzMiwgSU1YN19DU0lf
VklERU9fTUVNX0xJTUlUIC8gcGl4LT5zaXplaW1hZ2UsIGNvdW50KTsKPiAgIAo+ICAgCWlmICgq
bnBsYW5lcykKPiAtCQkqbmJ1ZmZlcnMgPSAoY291bnQgPCB2cS0+bnVtX2J1ZmZlcnMpID8gMCA6
Cj4gLQkJCWNvdW50IC0gdnEtPm51bV9idWZmZXJzOwo+ICsJCSpuYnVmZmVycyA9IChjb3VudCA8
IHFfbnVtX2J1ZnMpID8gMCA6Cj4gKwkJCWNvdW50IC0gcV9udW1fYnVmczsKPiAgIAllbHNlCj4g
ICAJCSpuYnVmZmVycyA9IGNvdW50Owo+ICAgCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

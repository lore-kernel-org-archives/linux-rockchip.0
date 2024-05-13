Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7088EC25B78
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 May 2024 14:52:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n4T9GUgtVAm7liMBwK9NWV1mDcNr+owdYlOyMAZqA+g=; b=shWPuVFen3XJmg
	jqRFugTVOksv1oE+F1+/e52WrgF/6HBisKAZyMR/WULJLwrJt92IE7A/oLI4RP6zw6I3uDqBBFox6
	YJPbbQW7vFtkTQanA2pXtz2navdCJdvqNV/4Ug5vy2jQZZEDPKN3fJlcoCWixljkpPa6si0kh9XHK
	Jjn2DlHTOtRR6XxqH6Z/pt8W5Gl8FQo2N47LqzwJLhpG+eNzGMuQhpRbzt5wC5ttyDgfllRZY90GK
	6uYW3Wd2hPEK/C1JbkK6Yxt5dRQugoSJIMVjdjL5fKfgc8Y19h2lU1c7FCtOEPEd38RpdPOA7PDWR
	NRvgjlMGYOCInT3x28NA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6X2T-0000000DEyT-3Owl;
	Mon, 13 May 2024 14:52:29 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6X2Q-0000000DEvl-2jZd;
	Mon, 13 May 2024 14:52:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1715611941;
	bh=dGPesChjn6zfCGN+uZgQZ6d6gonk0aHoo23Qown8aUw=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=qW/lUqtX+1mZwPJhOnBSNA9bxBp3Wrew4U5lRRZuUEl/R0qI11+fDk3Glorw5HxMA
	 GUnRqWAudolecol5X8Weo8OTh9fLBQgAX6BAIJyds/FKJCp9uheAfobi7I5to1nCpY
	 aSKkXJZVP1uX5HYSOm5/wikVCvq1fSQWES3SCUIeZIkaTkKlw+66WVVUdjD+7W98UL
	 YYLm2kyeMoReMZI1o3Kg9ZN98kRJcokYMDvgzfHkcSw56nD5VcD2wzE1eWuD2ubR23
	 TvodC8+bZeW5qQxyuNimLx8Z9z25m5AQHwrSp+X7R3IvgF4ZmA1vRa0ONWpVtsFC91
	 5lNfaJq23oiVA==
Received: from nicolas-tpx395.localdomain (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 6A2ED378216D;
	Mon, 13 May 2024 14:52:20 +0000 (UTC)
Message-ID: <8a6ec70f8054979db20fc7f62d12d4e4f5747324.camel@collabora.com>
Subject: Re: [PATCH] media: verisilicon: Fix auxiliary buffers allocation
 size
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
	ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, mchehab@kernel.org, 
	heiko@sntech.de
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	kernel@collabora.com
Date: Mon, 13 May 2024 10:52:14 -0400
In-Reply-To: <20240328093439.18712-2-benjamin.gaignard@collabora.com>
References: <20240328093439.18712-1-benjamin.gaignard@collabora.com>
	 <20240328093439.18712-2-benjamin.gaignard@collabora.com>
User-Agent: Evolution 3.52.1 (3.52.1-1.fc40) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240513_075226_847966_3150B507 
X-CRM114-Status: GOOD (  11.74  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

TGUgamV1ZGkgMjggbWFycyAyMDI0IMOgIDEwOjM0ICswMTAwLCBCZW5qYW1pbiBHYWlnbmFyZCBh
IMOpY3JpdMKgOgo+IFVzZSB2NGwyX2F2MV90aWxlX2luZm8tPnRpbGVfY29scyB0byBrbm93IHRo
ZSBudW1iZXIgb2YgY29sb25zCj4gaW4gdGhlIGZyYW1lLiBUaGlzIG1hZGUgYXV4aWxpYXJ5IGJ1
ZmZlcnMgbWVvcnkgc2l6ZSBjb21wdXRhdGlvbgo+IG1vcmUgYWNjdXJhdGUuCj4gCj4gU2lnbmVk
LW9mZi1ieTogQmVuamFtaW4gR2FpZ25hcmQgPGJlbmphbWluLmdhaWduYXJkQGNvbGxhYm9yYS5j
b20+Cj4gRml4ZXM6IDcyN2E0MDA2ODZhMiAoIm1lZGlhOiB2ZXJpc2lsaWNvbjogQWRkIFJvY2tj
aGlwIEFWMSBkZWNvZGVyIikKClJldmlld2VkLWJ5OiBOaWNvbGFzIER1ZnJlc25lIDxuaWNvbGFz
LmR1ZnJlc25lQGNvbGxhYm9yYS5jb20+Cgo+IC0tLQo+ICAuLi4vbWVkaWEvcGxhdGZvcm0vdmVy
aXNpbGljb24vcm9ja2NoaXBfdnB1OTgxX2h3X2F2MV9kZWMuYyAgICB8IDMgKystCj4gIDEgZmls
ZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9yb2NrY2hpcF92cHU5ODFfaHdf
YXYxX2RlYy5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9yb2NrY2hpcF92
cHU5ODFfaHdfYXYxX2RlYy5jCj4gaW5kZXggY2M0NDgzODU3NDg5Li42NWU4ZjJkMDc0MDAgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9yb2NrY2hpcF92
cHU5ODFfaHdfYXYxX2RlYy5jCj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2ls
aWNvbi9yb2NrY2hpcF92cHU5ODFfaHdfYXYxX2RlYy5jCj4gQEAgLTI1Nyw3ICsyNTcsOCBAQCBz
dGF0aWMgaW50IHJvY2tjaGlwX3ZwdTk4MV9hdjFfZGVjX3RpbGVzX3JlYWxsb2NhdGUoc3RydWN0
IGhhbnRyb19jdHggKmN0eCkKPiAgCXN0cnVjdCBoYW50cm9fZGV2ICp2cHUgPSBjdHgtPmRldjsK
PiAgCXN0cnVjdCBoYW50cm9fYXYxX2RlY19od19jdHggKmF2MV9kZWMgPSAmY3R4LT5hdjFfZGVj
Owo+ICAJc3RydWN0IGhhbnRyb19hdjFfZGVjX2N0cmxzICpjdHJscyA9ICZhdjFfZGVjLT5jdHJs
czsKPiAtCXVuc2lnbmVkIGludCBudW1fdGlsZV9jb2xzID0gMSA8PCBjdHJscy0+dGlsZV9ncm91
cF9lbnRyeS0+dGlsZV9jb2w7Cj4gKwljb25zdCBzdHJ1Y3QgdjRsMl9hdjFfdGlsZV9pbmZvICp0
aWxlX2luZm8gPSAmY3RybHMtPmZyYW1lLT50aWxlX2luZm87Cj4gKwl1bnNpZ25lZCBpbnQgbnVt
X3RpbGVfY29scyA9IHRpbGVfaW5mby0+dGlsZV9jb2xzOwo+ICAJdW5zaWduZWQgaW50IGhlaWdo
dCA9IEFMSUdOKGN0cmxzLT5mcmFtZS0+ZnJhbWVfaGVpZ2h0X21pbnVzXzEgKyAxLCA2NCk7Cj4g
IAl1bnNpZ25lZCBpbnQgaGVpZ2h0X2luX3NiID0gaGVpZ2h0IC8gNjQ7Cj4gIAl1bnNpZ25lZCBp
bnQgc3RyaXBlX251bSA9ICgoaGVpZ2h0ICsgOCkgKyA2MykgLyA2NDsKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

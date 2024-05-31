Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 243EDC25B75
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 May 2024 13:18:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=euM3sAxP1s5n3BhG6uHnWqsgljhBrAYeuszLI66awZI=; b=k+uhBohWcF74Bh
	Vp8NkuWi+xvnfxbdj8XuzNTW124GEKiWUbnKqNecqA5kCfuqeAMFlC6mko/B/gamtcLA0EESUQjv5
	0FS7dPPtkkIYJxSApWKr3QKSKZn+kckPp3ZmNm1V/4EXIz8DUnE2A24RPmCl1+WI6yJVXRBp6MFcW
	tTBlQuJQI1QKoY2GyT40bHbFjHy94pPTAGkHxUd2Y/KBGgg5zVb37fg+9grNTNpAj7iJg3QLIhz3Z
	TdltAZnODC0E6qQ+HAy+pgs1amQbHDAHpfgUJsv7y/NUT8t3IOkuRQ4Xd9NxBz4wtWAEqDmET2lOG
	rCQu6rzBGRLFm+ez0Jdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sD29W-0000000AK5n-1V9d;
	Fri, 31 May 2024 13:18:38 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sD29P-0000000AK4a-0i52;
	Fri, 31 May 2024 13:18:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1717161507;
	bh=9ToqhLdDm3Lv0unVgp4q54GDEy3+ECfVo4HpKZgOrRQ=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=PZNOBgYkdqyr3Lb1pE/AdvqcNXREPFrbF7bhy229EcaDkSd7AAVW1crTb4aR3Wtaj
	 S31A1+wrDZXu4hWRrEDyxHFVcbXt+4ump++cmKipREdMYTuvkozUJ928NHtmpTFdyB
	 6h1VJySrKmJQD+smVESRu47hziL0BX2umw9xAPcVT2TlIt5lmPHwVH8hGZv8w6uvu1
	 mWWVYHB8TcgXC/Ipv9NttCqJbBvBJgwqrh8jWsyRCWfQUl5D7DbTYvH0/dj6fhhTw3
	 boXzGEcvz4+SbybenUhJJiXWMj1FWw3ayuMFu9g/mD+7QU7eJcXXhkVklCL4MtUmyY
	 ZY5mh+M+2AgTg==
Received: from [100.93.89.217] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 77D1D37821B7;
	Fri, 31 May 2024 13:18:27 +0000 (UTC)
Message-ID: <293f67d6-649c-40c1-9204-f17f59374b4a@collabora.com>
Date: Fri, 31 May 2024 15:18:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] media: verisilicon: AV1: Correct some registers fields
 size or position
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, mchehab@kernel.org,
 heiko@sntech.de
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
References: <20240521152603.120723-1-benjamin.gaignard@collabora.com>
 <d11d92e48321e8c1a429a878917e7c6a6211ea4b.camel@collabora.com>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <d11d92e48321e8c1a429a878917e7c6a6211ea4b.camel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240531_061831_381362_1FF9E9EA 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
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

CkxlIDMxLzA1LzIwMjQgw6AgMTQ6NDgsIE5pY29sYXMgRHVmcmVzbmUgYSDDqWNyaXTCoDoKPiBM
ZSBtYXJkaSAyMSBtYWkgMjAyNCDDoCAxNzoyNiArMDIwMCwgQmVuamFtaW4gR2FpZ25hcmQgYSDD
qWNyaXTCoDoKPj4gU29tZSBmaWVsZHMgYXJlbid0IHdlbGwgcG9zaXRpb25uZWQgb3Igd2l0aCBp
bmNvcnJlY3Qgc2l6ZSBpbnNpZGUgdGhlCj4+IGhhcmR3YXJlIHJlZ2lzdGVycy4gRml4IHRoZW0u
Cj4+Cj4+IFRoYXQgZG9lc24ndCBpbXBhY3QgRmx1c3RlciBzY29yZSB0ZXN0Lgo+IERvZXMgaXQg
aW1wYWN0IGFueSBrbm93biBzdHJlYW1zIHRob3VnaCA/IChqdXN0IGZvciBhIHNha2Ugb2YgZG9j
dW1lbnRhdGlvbiwgbm90Cj4gcmVhbGx5IGEgcHJvYmxlbSB3aXRoIHlvdXIgY2hhbmdlKS4KCkkg
aGF2ZSBzZWUgbm8gaW1wYWN0IHdpdGggdGhlIGZpbGVzIHdlIGN1cnJlbnRseSB1c2Ugb3IgdGVz
dCB3aXRoIGZsdXN0ZXIuCgo+Cj4+IEZpeGVzOiA3MjdhNDAwNjg2YTIgKCJtZWRpYTogdmVyaXNp
bGljb246IEFkZCBSb2NrY2hpcCBBVjEgZGVjb2RlciIpCj4+IFNpZ25lZC1vZmYtYnk6IEJlbmph
bWluIEdhaWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgo+IFJldmlld2Vk
LWJ5OiBOaWNvbGFzIER1ZnJlc25lIDxuaWNvbGFzLmR1ZnJlc25lQGNvbGxhYm9yYS5jb20+Cj4K
Pj4gLS0tCj4+ICAgLi4uL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL3JvY2tjaGlwX3ZwdTk4
MV9yZWdzLmggIHwgMTAgKysrKystLS0tLQo+PiAgIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlv
bnMoKyksIDUgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3Bs
YXRmb3JtL3ZlcmlzaWxpY29uL3JvY2tjaGlwX3ZwdTk4MV9yZWdzLmggYi9kcml2ZXJzL21lZGlh
L3BsYXRmb3JtL3ZlcmlzaWxpY29uL3JvY2tjaGlwX3ZwdTk4MV9yZWdzLmgKPj4gaW5kZXggMTgy
ZTZjODMwZmY2Li45OTBmOGU2OTUyNGEgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxh
dGZvcm0vdmVyaXNpbGljb24vcm9ja2NoaXBfdnB1OTgxX3JlZ3MuaAo+PiArKysgYi9kcml2ZXJz
L21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL3JvY2tjaGlwX3ZwdTk4MV9yZWdzLmgKPj4gQEAg
LTMyNyw3ICszMjcsNyBAQAo+PiAgIAo+PiAgICNkZWZpbmUgYXYxX2FwZl90aHJlc2hvbGQJCUFW
MV9ERUNfUkVHKDU1LCAwLCAweGZmZmYpCj4+ICAgI2RlZmluZSBhdjFfYXBmX3NpbmdsZV9wdV9t
b2RlCQlBVjFfREVDX1JFRyg1NSwgMzAsIDB4MSkKPj4gLSNkZWZpbmUgYXYxX2FwZl9kaXNhYmxl
CQkJQVYxX0RFQ19SRUcoNTUsIDMwLCAweDEpCj4+ICsjZGVmaW5lIGF2MV9hcGZfZGlzYWJsZQkJ
CUFWMV9ERUNfUkVHKDU1LCAzMSwgMHgxKQo+PiAgIAo+PiAgICNkZWZpbmUgYXYxX2RlY19tYXhf
YnVyc3QJCUFWMV9ERUNfUkVHKDU4LCAwLCAweGZmKQo+PiAgICNkZWZpbmUgYXYxX2RlY19idXN3
aWR0aAkJQVYxX0RFQ19SRUcoNTgsIDgsIDB4NykKPj4gQEAgLTMzNywxMCArMzM3LDEwIEBACj4+
ICAgI2RlZmluZSBhdjFfZGVjX21jX3BvbGx0aW1lCQlBVjFfREVDX1JFRyg1OCwgMTcsIDB4M2Zm
KQo+PiAgICNkZWZpbmUgYXYxX2RlY19tY19wb2xsbW9kZQkJQVYxX0RFQ19SRUcoNTgsCTI3LCAw
eDMpCj4+ICAgCj4+IC0jZGVmaW5lIGF2MV9maWx0X3JlZl9hZGpfMwkJQVYxX0RFQ19SRUcoNTks
IDAsIDB4M2YpCj4+IC0jZGVmaW5lIGF2MV9maWx0X3JlZl9hZGpfMgkJQVYxX0RFQ19SRUcoNTks
IDcsIDB4M2YpCj4+IC0jZGVmaW5lIGF2MV9maWx0X3JlZl9hZGpfMQkJQVYxX0RFQ19SRUcoNTks
IDE0LCAweDNmKQo+PiAtI2RlZmluZSBhdjFfZmlsdF9yZWZfYWRqXzAJCUFWMV9ERUNfUkVHKDU5
LCAyMSwgMHgzZikKPj4gKyNkZWZpbmUgYXYxX2ZpbHRfcmVmX2Fkal8zCQlBVjFfREVDX1JFRyg1
OSwgMCwgMHg3ZikKPj4gKyNkZWZpbmUgYXYxX2ZpbHRfcmVmX2Fkal8yCQlBVjFfREVDX1JFRyg1
OSwgNywgMHg3ZikKPj4gKyNkZWZpbmUgYXYxX2ZpbHRfcmVmX2Fkal8xCQlBVjFfREVDX1JFRyg1
OSwgMTQsIDB4N2YpCj4+ICsjZGVmaW5lIGF2MV9maWx0X3JlZl9hZGpfMAkJQVYxX0RFQ19SRUco
NTksIDIxLCAweDdmKQo+PiAgICNkZWZpbmUgYXYxX3JlZjBfc2lnbl9iaWFzCQlBVjFfREVDX1JF
Ryg1OSwgMjgsIDB4MSkKPj4gICAjZGVmaW5lIGF2MV9yZWYxX3NpZ25fYmlhcwkJQVYxX0RFQ19S
RUcoNTksIDI5LCAweDEpCj4+ICAgI2RlZmluZSBhdjFfcmVmMl9zaWduX2JpYXMJCUFWMV9ERUNf
UkVHKDU5LCAzMCwgMHgxKQo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==

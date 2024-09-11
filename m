Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3DC62EE0206
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Sep 2024 17:13:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zFJTQgdrPaFmc/uuCJjN0TyssOWbXbnUzMjTFZucIU0=; b=nBgjMo6jB0s5JZ
	n2J8WubhvKFmmIGULwbEsnEnnfAtunIFmX59Z7SZdC8WYY8qhv9xW3miIeco5Z7O79QoCcm3B9WIT
	VKq6Dr8Mr8RhhB8wtp38kMS9xLD7yXVVcbRDeQAto1QSVS9UTWWTToJQbCCbMgekmEu3TYf2rSIvg
	oNtDdow93vUySZVaNB0kXgoB5YlrR7iNGfjJEM0BNzxMxAz4bNm4dOEIhzTEzvsV3WViXksfUIRrj
	J4bMLJ+9eKldZd1rhj1gToXW3hSqqkZcLSJG8smbWgrZveRXaQgK59cogRWaPggr8KyYPxQGRvKm7
	1HyuzVtOYz4fMBnk3Zuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soQuA-0000000ASuy-2FHs;
	Wed, 11 Sep 2024 17:13:22 +0000
Received: from a7-32.smtp-out.eu-west-1.amazonses.com ([54.240.7.32])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soQtr-0000000ASpv-2Rnh
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Sep 2024 17:13:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=4232tfv5ebdrjdwkr5zzm7kytdkokgug; d=collabora.com; t=1726074778;
	h=Message-ID:Subject:From:To:Date:In-Reply-To:References:Content-Type:MIME-Version:Content-Transfer-Encoding;
	bh=pY0QRPVSLQyOqdQm02m89lv3jyiXKxLhfdk4Z8VM6Bw=;
	b=QZEcnn40Vic/RkCuKPK1LG0d6+2GuxUxCMAWug1hgjltjiYHADj0ghfZksJMnMDL
	IJvLsFkz9sL8HoP9cODS7qS14KAqFJac562uZTfUlM0/ZZpGF6neLiZ0tmob0OJWY3F
	br78oKlouu2tqs/+sG4Efwv5tBXFsyR514Or8x8WF7lu+9tp0+Sf295BZkuEZzLugQE
	hHRtuarJn5X8YJnAQUhnewL89juib8revxHIMQl5gC9IbPzsgFQl5XFKlChDNvBuuv7
	SANobzIsm2KmlwrNQgedxZw2NnkkAqH2lkHmkqP0Ltoa83zcIB0YxHY1A+NDpEdGuAN
	MPxOjL+vWQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=uku4taia5b5tsbglxyj6zym32efj7xqv; d=amazonses.com; t=1726074778;
	h=Message-ID:Subject:From:To:Date:In-Reply-To:References:Content-Type:MIME-Version:Content-Transfer-Encoding:Feedback-ID;
	bh=pY0QRPVSLQyOqdQm02m89lv3jyiXKxLhfdk4Z8VM6Bw=;
	b=b2ySp0oMmFJFKJq7Jl6wf2M2Ckz6imfBUfVim+b/0UtAfSFAE1gIJarN2FetMmak
	mrfInnzCURLnBrkMbbwofS+JLMNP2Vcwn10l+LS3K6qaJqzpNjGR0Q9csvYNQF3eZK8
	Nwchwv0b6nSixvqBReKBO5PtEqgZEhg7LrXyXRRs=
Message-ID: <01020191e212f333-703af7d0-fc68-4f47-b55c-6c0c3de6708a-000000@eu-west-1.amazonses.com>
Subject: Re: [PATCH 1/2] media: uapi: add WebP VP8 frame flag
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Hugues Fruchet <hugues.fruchet@foss.st.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
	Philipp Zabel <p.zabel@pengutronix.de>, 
	Hans Verkuil <hverkuil-cisco@xs4all.nl>, 
	Fritz Koenig <frkoenig@chromium.org>, 
	Sebastian Fricke <sebastian.fricke@collabora.com>, 
	Daniel Almeida <daniel.almeida@collabora.com>, 
	Andrzej Pietrasiewicz <andrzej.p@collabora.com>, 
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
	linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, 
	linux-stm32@st-md-mailman.stormreply.com
Date: Wed, 11 Sep 2024 17:12:58 +0000
In-Reply-To: <20240911135011.161217-2-hugues.fruchet@foss.st.com>
References: <20240911135011.161217-1-hugues.fruchet@foss.st.com>
	 <20240911135011.161217-2-hugues.fruchet@foss.st.com>
Organization: Collabora
User-Agent: Evolution 3.52.4 (3.52.4-1.fc40) 
MIME-Version: 1.0
Feedback-ID: ::1.eu-west-1.YpP9ZbxnARFfy3Cb5pfsLd/pdsXBCNK0KEM7HforL4k=:AmazonSES
X-SES-Outgoing: 2024.09.11-54.240.7.32
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240911_101303_801051_8927BB55 
X-CRM114-Status: GOOD (  15.41  )
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

SGkgSHVndWVzLAoKTGUgbWVyY3JlZGkgMTEgc2VwdGVtYnJlIDIwMjQgw6AgMTU6NTAgKzAyMDAs
IEh1Z3VlcyBGcnVjaGV0IGEgw6ljcml0wqA6Cj4gQWRkIGEgZmxhZyBpbmRpY2F0aW5nIHRoYXQg
VlA4IGJpdHN0cmVhbSBpcyBhIFdlYlAgcGljdHVyZS4KClNvdW5kcyBsaWtlIHRoZXJlIHNob3Vs
ZCBiZSBzb21lIGNvZGUgY2hhbmdlcyBpbiBHU3RyZWFtZXIgdGhhdCB5b3UgaGF2ZW4ndApkaXNj
bG9zZWQuIE1pbmQgc2hhcmluZyBob3cgdGhpcyBuZXcgdUFQSSBpcyB1c2VkID8gSSB3b3VsZCBh
bHNvIGV4cGVjdCB0aGlzCmNvbW1pdCBtZXNzYWdlIHRvIGdpdmUgbW9yZSBpbnNpZ2h0IG9uIHdo
YXQgaXMgc3BlY2lhbCBhYm91dCBXZWJQIHRoYXQgbWFrZXMKdGhpcyBmbGFnIHJlcXVpcmVkLgoK
SSB3b3VsZCBhbHNvIG5lZWQgc29tZSBtb3JlIEFQSSBvciBkb2N1bWVudGF0aW9uIHRoYXQgZXhw
bGFpbiBob3cgd2UgY2FuCmRpZmZlcmVudGlhdGUgYSB1cHN0cmVhbSBkZWNvZGVyIHRoYXQgaXMg
Y2FwYWJsZSBvZiBXZWJQIGRlY29kaW5nIGZyb20gb25lIHRoYXQKZG9lcyBub3QuIEkgd29uZGVy
IGlmIGl0IHdvdWxkIG5vdCBoYXZlIGJlZW4gYmV0dGVyIHRvIGRlZmluZSBhIG5ldyBmb3JtYXQg
PwpUaGF0IGJlaW5nIHNhaWQsIEkgaGF2ZW4ndCBsb29rZWQgYXQgYWxsIGluIHRoZSBzcGVjaWZp
Y2F0aW9uIGFuZCBvbmx5IHJlbHkgb24KeW91ciBjb3ZlciBsZXR0ZXIgYW5kIHBhdGNoIHNlcmll
cy4KCk5pY29sYXMKCj4gCj4gU2lnbmVkLW9mZi1ieTogSHVndWVzIEZydWNoZXQgPGh1Z3Vlcy5m
cnVjaGV0QGZvc3Muc3QuY29tPgo+IC0tLQo+ICAuLi4vdXNlcnNwYWNlLWFwaS9tZWRpYS92NGwv
ZXh0LWN0cmxzLWNvZGVjLXN0YXRlbGVzcy5yc3QgICAgICB8IDMgKysrCj4gIGluY2x1ZGUvdWFw
aS9saW51eC92NGwyLWNvbnRyb2xzLmggICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgMSAr
Cj4gIDIgZmlsZXMgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL0Rv
Y3VtZW50YXRpb24vdXNlcnNwYWNlLWFwaS9tZWRpYS92NGwvZXh0LWN0cmxzLWNvZGVjLXN0YXRl
bGVzcy5yc3QgYi9Eb2N1bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkvbWVkaWEvdjRsL2V4dC1jdHJs
cy1jb2RlYy1zdGF0ZWxlc3MucnN0Cj4gaW5kZXggMGRhNjM1NjkxZmRjLi5iYjA4YWFjZGRjOWMg
MTAwNjQ0Cj4gLS0tIGEvRG9jdW1lbnRhdGlvbi91c2Vyc3BhY2UtYXBpL21lZGlhL3Y0bC9leHQt
Y3RybHMtY29kZWMtc3RhdGVsZXNzLnJzdAo+ICsrKyBiL0RvY3VtZW50YXRpb24vdXNlcnNwYWNl
LWFwaS9tZWRpYS92NGwvZXh0LWN0cmxzLWNvZGVjLXN0YXRlbGVzcy5yc3QKPiBAQCAtMTA2Miw2
ICsxMDYyLDkgQEAgRldIVCBGbGFncwo+ICAgICAgKiAtIGBgVjRMMl9WUDhfRlJBTUVfRkxBR19T
SUdOX0JJQVNfQUxUYGAKPiAgICAgICAgLSAweDIwCj4gICAgICAgIC0gU2lnbiBvZiBtb3Rpb24g
dmVjdG9ycyB3aGVuIHRoZSBhbHQgZnJhbWUgaXMgcmVmZXJlbmNlZC4KPiArICAgICogLSBgYFY0
TDJfVlA4X0ZSQU1FX0ZMQUdfV0VCUGBgCj4gKyAgICAgIC0gMHg0MAo+ICsgICAgICAtIEluZGlj
YXRlcyB0aGF0IHRoaXMgZnJhbWUgaXMgYSBXZWJQIHBpY3R1cmUuCj4gIAo+ICAuLiBjOnR5cGU6
OiB2NGwyX3ZwOF9lbnRyb3B5X2NvZGVyX3N0YXRlCj4gIAo+IGRpZmYgLS1naXQgYS9pbmNsdWRl
L3VhcGkvbGludXgvdjRsMi1jb250cm9scy5oIGIvaW5jbHVkZS91YXBpL2xpbnV4L3Y0bDItY29u
dHJvbHMuaAo+IGluZGV4IDk3NGZkMjU0ZTU3My4uZTQxYjYyZjJjYjJiIDEwMDY0NAo+IC0tLSBh
L2luY2x1ZGUvdWFwaS9saW51eC92NGwyLWNvbnRyb2xzLmgKPiArKysgYi9pbmNsdWRlL3VhcGkv
bGludXgvdjRsMi1jb250cm9scy5oCj4gQEAgLTE4OTcsNiArMTg5Nyw3IEBAIHN0cnVjdCB2NGwy
X3ZwOF9lbnRyb3B5X2NvZGVyX3N0YXRlIHsKPiAgI2RlZmluZSBWNEwyX1ZQOF9GUkFNRV9GTEFH
X01CX05PX1NLSVBfQ09FRkYJMHgwOAo+ICAjZGVmaW5lIFY0TDJfVlA4X0ZSQU1FX0ZMQUdfU0lH
Tl9CSUFTX0dPTERFTgkweDEwCj4gICNkZWZpbmUgVjRMMl9WUDhfRlJBTUVfRkxBR19TSUdOX0JJ
QVNfQUxUCTB4MjAKPiArI2RlZmluZSBWNEwyX1ZQOF9GUkFNRV9GTEFHX1dFQlAJCTB4NDAKPiAg
Cj4gICNkZWZpbmUgVjRMMl9WUDhfRlJBTUVfSVNfS0VZX0ZSQU1FKGhkcikgXAo+ICAJKCEhKCho
ZHIpLT5mbGFncyAmIFY0TDJfVlA4X0ZSQU1FX0ZMQUdfS0VZX0ZSQU1FKSkKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

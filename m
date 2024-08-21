Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1CF9C52D7C
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Aug 2024 19:06:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=C0LEWwdUjNcifca7qwhvtmcaODCCo7pxNE1akvHBGsE=; b=biMr9NAG82HMxLG95tRvnGtY8M
	4p6GmV2FC3xSyIlrGPDL9Oot9xjOFi/rSCma34B6nycfOviS9YnikBR2SrPANd1ZfXQbDUgyZWeRr
	qAIcs9KGYbyGXYbhSX8Gsagi9AuCdypx6y7rGey2wq/vBP9B5oe6FDyM7LOHlr9k9Rguf/6NS9pmo
	KfDgLDDWMuNm8o4riBsTNSraP2zWIWy6JuCn5+0JNw8el52XVGfvXluhPS/fO1LeksK5mCuDOc66b
	+U6LYYGU7pFkBYz/kch5031gh82wzjDURB/kv6HrZfcdbS7FU0SlpI8HY6qAtIH+iL6HDEyZaiTi/
	vaSZzIzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgqec-0000000A8Qa-0GAg;
	Wed, 21 Aug 2024 19:05:58 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgqdq-0000000A8Ju-2Trv;
	Wed, 21 Aug 2024 19:05:13 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1724267108;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=mKSCf7a1pjPZutaNKEDeex+tWawArQ1fVCpJ8GpdO5c=;
	b=YWXy+QCMpMEFx0P3L66BqRsZjm6Zvn+Xqi2JiPcoG20IZ9QINVwEabt7H2RJ2vDuIsw1K+
	zNYpHHLzei4kBJMM/D1almKvdK1wFXsJUDBBIT+/MR3EZW8zu1rx3adfyn38Z2NaHyHcWh
	Xmp3Q8bOF3i+AMBm1z9McQAtXV9If4JCn2Lxd1lHz6OzMaXQGt/iFlFoY5Pt19asQeMjV8
	iMC7zOWzkrmG0F5opQWdv1xqHVxyP8T/sVqLRmkq5DD43H71CrLOnmMaNGYL1uO0dnmgmE
	AQZer28W7DwNyquxjWIPepKajMtIHABe1kIP+1rOC/TRVIriT1F2UEazLvtIlA==
Date: Wed, 21 Aug 2024 21:05:07 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Cc: linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org,
 vkoul@kernel.org, kishon@kernel.org, heiko@sntech.de,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/3] phy: phy-rockchip-inno-usb2: Handle failed extcon
 allocation better
In-Reply-To: <816aa82c-1f50-4dfe-a41f-e396e0bdf219@wanadoo.fr>
References: <cover.1724225528.git.dsimic@manjaro.org>
 <96200baf794a0c451f3bbc3f5530b8cf0e359dfc.1724225528.git.dsimic@manjaro.org>
 <816aa82c-1f50-4dfe-a41f-e396e0bdf219@wanadoo.fr>
Message-ID: <a34cbce8633fda9ed805adde3eeb1467@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240821_120511_266613_01204D19 
X-CRM114-Status: GOOD (  19.92  )
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

SGVsbG8gQ2hyaXN0b3BoZSwKCk9uIDIwMjQtMDgtMjEgMTM6MTcsIENocmlzdG9waGUgSkFJTExF
VCB3cm90ZToKPiBMZSAyMS8wOC8yMDI0IMOgIDA5OjM3LCBEcmFnYW4gU2ltaWMgYSDDqWNyaXTC
oDoKPj4gUmV0dXJuIHRoZSBhY3R1YWwgZXJyb3IgY29kZSB1cG9uIGZhaWx1cmUgdG8gYWxsb2Nh
dGUgZXh0Y29uIGRldmljZSwgCj4+IGluc3RlYWQKPj4gb2YgaGFyZGNvZGluZyAtRU5PTUVNLiAg
VXNlIGRldl9lcnJfcHJvYmUoKSB0byBhbHNvIGxvZyBhcHByb3ByaWF0ZSAKPj4gbWVzc2FnZXMs
Cj4+IHdoaWNoIGlzIGZpbmUgYmVjYXVzZSB0aGUgY29udGFpbmluZyBmdW5jdGlvbiBpcyB1c2Vk
IGluIHRoZSBwcm9iZSAKPj4gcGF0aC4KPj4gCj4+IEhlbHBlZC1ieTogSGVpa28gU3R1Ym5lciA8
aGVpa29Ac250ZWNoLmRlPgo+PiBTaWduZWQtb2ZmLWJ5OiBEcmFnYW4gU2ltaWMgPGRzaW1pY0Bt
YW5qYXJvLm9yZz4KPj4gLS0tCj4+ICAgZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlw
LWlubm8tdXNiMi5jIHwgMyArKy0KPj4gICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCsp
LCAxIGRlbGV0aW9uKC0pCj4+IAo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcm9ja2NoaXAv
cGh5LXJvY2tjaGlwLWlubm8tdXNiMi5jIAo+PiBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1y
b2NrY2hpcC1pbm5vLXVzYjIuYwo+PiBpbmRleCAxMTNiZmM3MTdmZjAuLjA1YWY0NmRkYTExZCAx
MDA2NDQKPj4gLS0tIGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLWlubm8tdXNi
Mi5jCj4+ICsrKyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1pbm5vLXVzYjIu
Ywo+PiBAQCAtNDM1LDcgKzQzNSw4IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfdXNiMnBoeV9leHRj
b25fcmVnaXN0ZXIoc3RydWN0IAo+PiByb2NrY2hpcF91c2IycGh5ICpycGh5KQo+PiAgIAkJCQkJ
CXJvY2tjaGlwX3VzYjJwaHlfZXh0Y29uX2NhYmxlKTsKPj4gICAgIAkJaWYgKElTX0VSUihlZGV2
KSkKPj4gLQkJCXJldHVybiAtRU5PTUVNOwo+PiArCQkJcmV0dXJuIGRldl9lcnJfcHJvYmUocnBo
eS0+ZGV2LCBQVFJfRVJSKGVkZXYpLAo+PiArCQkJCQkgICAgICJmYWlsZWQgdG8gYWxsb2NhdGUg
ZXh0Y29uIGRldmljZVxuIik7Cj4gCj4gUmV0dXJuaW5nIFBUUl9FUlIoZWRldikgbWF5IG1ha2Ug
c2Vuc2UsIGJ1dCBJIGRvbid0IHRoaW5rIHRoYXQgYWRkaW5nCj4gYSBkZXZfZXJyX3Byb2JlKCkg
cmVhbGx5IGhlbHBzLgo+IAo+IGRldm1fZXh0Y29uX2Rldl9hbGxvY2F0ZSgpIGNhbiBvbmx5IHJl
dHVybiAtRUlOVkFMIGlmIGl0IDJuZCBhcmd1bWVudAo+IGlzIE5VTEwuIEl0IGlzIHRyaXZpYWwg
dG8gc2VlIHRoYXQgaXQgY2FuJ3QgaGFwcGVuIGhlcmUsCj4gcm9ja2NoaXBfdXNiMnBoeV9leHRj
b25fY2FibGUgaXMgYSBnbG9iYWwgdmFyaWFibGUuCj4gCj4gaW4gYWxsIG90aGVyIGNhc2VzLCBp
dCByZXR1cm5zIC1FTk9NRU0gYmVjYXVzZSBvZiBhIGZhaWxlZCBtZW1vcnkKPiBhbGxvY2F0aW9u
LiBJbiB0aGlzIGNhc2UsIHVzdWFsbHkgaXQgaXMgbm90IG5lZWRlZCB0byBsb2cgYW55dGhpbmcK
PiBiZWNhdXNlIGl0IGlzIGFscmVhZHkgbG91ZCBlbm91Z2guCgpUcnVlLCB1c2luZyBkZXZfZXJy
X3Byb2JlKCkgaW4gdGhpcyBjYXNlIGlzIHNvbWV3aGF0IHJlZHVuZGFudCwKYnV0IGl0IGZhbGxz
IHVuZGVyIHRoZSAic3RpbGwgZmluZSB0byB1c2UiIGNhdGVnb3J5LCBbMV0gYmVjYXVzZQp0aGUg
ZXJyb3IgY29kZSBwYXNzZWQgdG8gZGV2X2Vycl9wcm9iZSgpIGlzIHJlY2VpdmVkIGZyb20gYW5v
dGhlcgpmdW5jdGlvbiB0aGF0IHdhcyBpbnZva2VkLgoKT24gdGhlIG90aGVyIGhhbmQsIGFub3Ro
ZXIgcGF0Y2ggaW4gdGhpcyBzZXJpZXMgdHJpZXMgdG8gYmUgc3RyaWN0CmluIGFub3RoZXIgZGly
ZWN0aW9uLCBieSBub3QgdXNpbmcgZGV2X2Vycl9wcm9iZSgpIHdoZXJlIHRoZSBlcnJvcgpjb2Rl
IHBhc3NlZCB0byBpdCBpcyBiYXNpY2FsbHkgaGFyZGNvZGVkLiBbMl0KCkkgaG9wZSB0aGlzIG1h
a2VzIHNlbnNlLgoKWzFdIApodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1waHkvY292ZXIu
MTcyNDIyNTUyOC5naXQuZHNpbWljQG1hbmphcm8ub3JnL1QvI21jM2FmN2QyNGUzMWVkODg1NzMy
ZTZmMjZjYTBkMTA3YjE1N2Q0NzhiClsyXSAKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgt
cGh5L2NvdmVyLjE3MjQyMjU1MjguZ2l0LmRzaW1pY0BtYW5qYXJvLm9yZy9ULyNtYTI2YjYxNDQx
Mjc4NzgxNGRhYjc5MjM5ODdiOGM4MTRmN2U4NmJlYgoKPj4gICAgIAkJcmV0ID0gZGV2bV9leHRj
b25fZGV2X3JlZ2lzdGVyKHJwaHktPmRldiwgZWRldik7Cj4+ICAgCQlpZiAocmV0KSB7Cj4+IAo+
PiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK

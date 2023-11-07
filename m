Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA1E6C4167B
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Nov 2023 22:04:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w03LpIzhhzBNdxQ9rn81doOFBb8fKeumbyHf2+veRJQ=; b=OvEOaxKDlBs+oy
	1L5W4q5X7sQulYp4cHAmcsPRSrynPX+L4exZCYnecBOC7eM0T+/tnrYe9I2Az+x6OEJct2rEScD0q
	fzkq7VSJRkmouhf+vN+uG1gZhYjNr3nyP322tOlNfFnB3yFwyweZHjihmP7Hm6MiUDa6FMdN5ZMal
	k7K7Q2tCBE/9nuTRnP1RcLKEsBAU6Yuodm2nwoQT6Wu8eK5rsRb5g8IzWgB9ZaekCxE12YeuGtvn1
	B4KcJ7NgT++NQyZaB6VcDgbs6xIjOA7sFaQ3trqqrx7IxkefPey91mORlBMrU+oAXBxK0OLjiv5yP
	Zoc7v4t5EEWlAO1R0kPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r0UBQ-002Vvh-0a;
	Tue, 07 Nov 2023 22:04:28 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r0UBN-002VvK-1y
	for linux-rockchip@lists.infradead.org;
	Tue, 07 Nov 2023 22:04:27 +0000
Received: from [100.84.166.245] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 63D6766074B1;
	Tue,  7 Nov 2023 22:04:22 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699394664;
	bh=04rhiFjHql0umbupap9BGzsDxQDuWsaWY3kbI0GkfMg=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=dD6a0gE5VGJ11H1gEAhwTR9FrUH1jsaVFWBZcIaDwrKwDSEgpDTGR9kTpICfU7DIp
	 uXpjMqvifA+cXid4SW4666SHkqAyKkgZcAz4RpDgF861Gy8FW51okhct8Pa5fvU/LO
	 Nut+BAejc+U0TXoEx/P/44zyCckWpZzYf1kzsdEn/OSNM4gsr7EutmybCikL4aBMbB
	 /RyA9SjIASKhJao3uC7eWxnx28nU4NzXDq0pXAz50/qPnjbCUzkC1zP/EIT7a1MO2V
	 J2sC7nv9tQc5UseDNDbJDuZAYtDFSnh84FSIM1NSczREIJJnK9jhkHk1ua0V/wOKEb
	 6x17EmcdEe/LA==
Message-ID: <100a1528a551627c86ec00b7e50c82e515707f01.camel@collabora.com>
Subject: Re: [PATCH v4 06/11] media: rkvdec: Extract
 rkvdec_fill_decoded_pixfmt into helper
From: Nicolas  Dufresne <nicolas.dufresne@collabora.com>
To: Jonas Karlman <jonas@kwiboo.se>, Ezequiel Garcia
 <ezequiel@vanguardiasur.com.ar>, Mauro Carvalho Chehab
 <mchehab@kernel.org>,  Hans Verkuil <hverkuil-cisco@xs4all.nl>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Alex Bee <knaerzche@gmail.com>, Benjamin Gaignard
	 <benjamin.gaignard@collabora.com>, Sebastian Fricke
	 <sebastian.fricke@collabora.com>, Christopher Obbard
	 <chris.obbard@collabora.com>, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev, 
	linux-kernel@vger.kernel.org
Date: Tue, 07 Nov 2023 17:04:13 -0500
In-Reply-To: <20231105165521.3592037-7-jonas@kwiboo.se>
References: <20231105165521.3592037-1-jonas@kwiboo.se>
	 <20231105165521.3592037-7-jonas@kwiboo.se>
User-Agent: Evolution 3.48.4 (3.48.4-1.fc38) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231107_140425_780471_82283584 
X-CRM114-Status: GOOD (  13.24  )
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

TGUgZGltYW5jaGUgMDUgbm92ZW1icmUgMjAyMyDDoCAxNjo1NSArMDAwMCwgSm9uYXMgS2FybG1h
biBhIMOpY3JpdMKgOgo+IEV4dHJhY3QgY2FsbCB0byB2NGwyX2ZpbGxfcGl4Zm10X21wKCkgYW5k
IGFqdXN0aW5nIG9mIHNpemVpbWFnZSBpbnRvIGEKPiBoZWxwZXIuIFJlcGxhY2UgY3VycmVudCBj
b2RlIHdpdGggYSBjYWxsIHRvIHRoZSBuZXcgaGVscGVyLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEpv
bmFzIEthcmxtYW4gPGpvbmFzQGt3aWJvby5zZT4KClJldmlld2VkLWJ5OiBOaWNvbGFzIER1ZnJl
c25lIDxuaWNvbGFzLmR1ZnJlc25lQGNvbGxhYm9yYS5jb20+Cgo+IC0tLQo+IHY0Ogo+IC0gRG8g
bm90IHJlc2V0IHBpeF9tcC0+ZmllbGQgaW4gcmt2ZGVjX2ZpbGxfZGVjb2RlZF9waXhmbXQoKQo+
IAo+IHYzOgo+IC0gTm8gY2hhbmdlcwo+IAo+ICBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmt2ZGVj
L3JrdmRlYy5jIHwgMjcgKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFu
Z2VkLCAxNCBpbnNlcnRpb25zKCspLCAxMyBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9zdGFnaW5nL21lZGlhL3JrdmRlYy9ya3ZkZWMuYyBiL2RyaXZlcnMvc3RhZ2luZy9t
ZWRpYS9ya3ZkZWMvcmt2ZGVjLmMKPiBpbmRleCA4NGE0MTc5MmNiNGIuLjA1NzBjNzkwYWQwOCAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmt2ZGVjL3JrdmRlYy5jCj4gKysr
IGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL3JrdmRlYy9ya3ZkZWMuYwo+IEBAIC0yNyw2ICsyNywx
NiBAQAo+ICAjaW5jbHVkZSAicmt2ZGVjLmgiCj4gICNpbmNsdWRlICJya3ZkZWMtcmVncy5oIgo+
ICAKPiArc3RhdGljIHZvaWQgcmt2ZGVjX2ZpbGxfZGVjb2RlZF9waXhmbXQoc3RydWN0IHJrdmRl
Y19jdHggKmN0eCwKPiArCQkJCSAgICAgICBzdHJ1Y3QgdjRsMl9waXhfZm9ybWF0X21wbGFuZSAq
cGl4X21wKQo+ICt7Cj4gKwl2NGwyX2ZpbGxfcGl4Zm10X21wKHBpeF9tcCwgcGl4X21wLT5waXhl
bGZvcm1hdCwKPiArCQkJICAgIHBpeF9tcC0+d2lkdGgsIHBpeF9tcC0+aGVpZ2h0KTsKPiArCXBp
eF9tcC0+cGxhbmVfZm10WzBdLnNpemVpbWFnZSArPSAxMjggKgo+ICsJCURJVl9ST1VORF9VUChw
aXhfbXAtPndpZHRoLCAxNikgKgo+ICsJCURJVl9ST1VORF9VUChwaXhfbXAtPmhlaWdodCwgMTYp
Owo+ICt9Cj4gKwo+ICBzdGF0aWMgaW50IHJrdmRlY190cnlfY3RybChzdHJ1Y3QgdjRsMl9jdHJs
ICpjdHJsKQo+ICB7Cj4gIAlzdHJ1Y3Qgcmt2ZGVjX2N0eCAqY3R4ID0gY29udGFpbmVyX29mKGN0
cmwtPmhhbmRsZXIsIHN0cnVjdCBya3ZkZWNfY3R4LCBjdHJsX2hkbCk7Cj4gQEAgLTE5MiwxMyAr
MjAyLDkgQEAgc3RhdGljIHZvaWQgcmt2ZGVjX3Jlc2V0X2RlY29kZWRfZm10KHN0cnVjdCBya3Zk
ZWNfY3R4ICpjdHgpCj4gIAo+ICAJcmt2ZGVjX3Jlc2V0X2ZtdChjdHgsIGYsIGN0eC0+Y29kZWRf
Zm10X2Rlc2MtPmRlY29kZWRfZm10c1swXSk7Cj4gIAlmLT50eXBlID0gVjRMMl9CVUZfVFlQRV9W
SURFT19DQVBUVVJFX01QTEFORTsKPiAtCXY0bDJfZmlsbF9waXhmbXRfbXAoJmYtPmZtdC5waXhf
bXAsCj4gLQkJCSAgICBjdHgtPmNvZGVkX2ZtdF9kZXNjLT5kZWNvZGVkX2ZtdHNbMF0sCj4gLQkJ
CSAgICBjdHgtPmNvZGVkX2ZtdC5mbXQucGl4X21wLndpZHRoLAo+IC0JCQkgICAgY3R4LT5jb2Rl
ZF9mbXQuZm10LnBpeF9tcC5oZWlnaHQpOwo+IC0JZi0+Zm10LnBpeF9tcC5wbGFuZV9mbXRbMF0u
c2l6ZWltYWdlICs9IDEyOCAqCj4gLQkJRElWX1JPVU5EX1VQKGYtPmZtdC5waXhfbXAud2lkdGgs
IDE2KSAqCj4gLQkJRElWX1JPVU5EX1VQKGYtPmZtdC5waXhfbXAuaGVpZ2h0LCAxNik7Cj4gKwlm
LT5mbXQucGl4X21wLndpZHRoID0gY3R4LT5jb2RlZF9mbXQuZm10LnBpeF9tcC53aWR0aDsKPiAr
CWYtPmZtdC5waXhfbXAuaGVpZ2h0ID0gY3R4LT5jb2RlZF9mbXQuZm10LnBpeF9tcC5oZWlnaHQ7
Cj4gKwlya3ZkZWNfZmlsbF9kZWNvZGVkX3BpeGZtdChjdHgsICZmLT5mbXQucGl4X21wKTsKPiAg
fQo+ICAKPiAgc3RhdGljIGludCBya3ZkZWNfZW51bV9mcmFtZXNpemVzKHN0cnVjdCBmaWxlICpm
aWxlLCB2b2lkICpwcml2LAo+IEBAIC0yNjQsMTIgKzI3MCw3IEBAIHN0YXRpYyBpbnQgcmt2ZGVj
X3RyeV9jYXB0dXJlX2ZtdChzdHJ1Y3QgZmlsZSAqZmlsZSwgdm9pZCAqcHJpdiwKPiAgCQkJCSAg
ICAgICAmcGl4X21wLT5oZWlnaHQsCj4gIAkJCQkgICAgICAgJmNvZGVkX2Rlc2MtPmZybXNpemUp
Owo+ICAKPiAtCXY0bDJfZmlsbF9waXhmbXRfbXAocGl4X21wLCBwaXhfbXAtPnBpeGVsZm9ybWF0
LAo+IC0JCQkgICAgcGl4X21wLT53aWR0aCwgcGl4X21wLT5oZWlnaHQpOwo+IC0JcGl4X21wLT5w
bGFuZV9mbXRbMF0uc2l6ZWltYWdlICs9Cj4gLQkJMTI4ICoKPiAtCQlESVZfUk9VTkRfVVAocGl4
X21wLT53aWR0aCwgMTYpICoKPiAtCQlESVZfUk9VTkRfVVAocGl4X21wLT5oZWlnaHQsIDE2KTsK
PiArCXJrdmRlY19maWxsX2RlY29kZWRfcGl4Zm10KGN0eCwgcGl4X21wKTsKPiAgCXBpeF9tcC0+
ZmllbGQgPSBWNEwyX0ZJRUxEX05PTkU7Cj4gIAo+ICAJcmV0dXJuIDA7CgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

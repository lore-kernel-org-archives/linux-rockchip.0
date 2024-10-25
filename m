Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38343D149CD
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Oct 2024 18:24:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5JBB9zU5Wafrsp2D9W82nF4wnoM2FbBoO9d4GF5QfYQ=; b=Tc/Msu7Kd5vJuA
	Olwv+n+fm0ie3CKfvRe0hlhGfxucLoIjNmboFqN9EgET1xBt0d7SOs0M3z1Jgud/3RbYAy8YXnNAW
	Y9pFRSD0DRx678LF4oO7tZVsY2b7s1dO0TEXukNaQbuFHXCxlmoHbGy6nBNPcOBSedbKrAjh9vBFR
	fhGHLcwbyB057w7PkofKVBXq/eddx7s3qiTViDknawbKsA8jBgoeLHnFoEsJlX8XxvKF5EZ9/w3JU
	eAsom2pjMRasFp91QpIujUdJL3vs3LxmPook7hvt4EukR6PjM7fPccpy1FzbYSRQVbdyZkn5weoEt
	T/mbqjNied3XPSzAnk/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t4OzP-00000004n0E-1ICE;
	Fri, 25 Oct 2024 18:24:47 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t4OGb-00000004dik-2GkY
	for linux-rockchip@lists.infradead.org;
	Fri, 25 Oct 2024 17:38:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1729877908;
	bh=JIWMxgNj6WHJYDUkFodjv6iWoEgWS8OosnNAXEIbcII=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=OTtqjYFxksUtlFeKnLm031Pawc/8l6472GbzQvWvct0Ah7CCLB1pIE9+c2HHxeh3b
	 3i4i9yPzlJp7//p6NgvYUer3RfCazxlMdK7UBQ9sWKVzzrZf2E7XjwgVKNUkIIjXED
	 6B5OHLL+h2tFtgcaaBBmq3YT5x1bvBs4/DME1wULPiEQQfkp07yr8qjXxsgKBfO0AO
	 nxcMAsR3gy06zGh/YHqJoB4gnfsE1fWn+f+O1/F7uoQD9IGGzLHQe6zRoy2d2Wl+AK
	 ivtJTpGoIvYLalBPmnuv+LxqlvzM3z7QC4/It1EZFypl3p63ViJTLYFT6TV6H7kvcG
	 j126/rmEfs1gg==
Received: from nicolas-tpx395.lan (unknown [IPv6:2606:6d00:15:862e::7a9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 67B4D17E36AF;
	Fri, 25 Oct 2024 19:38:26 +0200 (CEST)
Message-ID: <35f60c277e6aa1c9095b80bfb18dbfe8bc4539b5.camel@collabora.com>
Subject: Re: [PATCH v6 09/11] media: rkvdec: Add get_image_fmt ops
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Jonas Karlman <jonas@kwiboo.se>, Sebastian Fricke
 <sebastian.fricke@collabora.com>, Ezequiel Garcia
 <ezequiel@vanguardiasur.com.ar>, Mauro Carvalho Chehab
 <mchehab@kernel.org>,  Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Alex Bee <knaerzche@gmail.com>, Benjamin Gaignard
 <benjamin.gaignard@collabora.com>, Detlev Casanova
 <detlev.casanova@collabora.com>, Dan Carpenter <dan.carpenter@linaro.org>, 
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, Christopher
 Obbard <chris.obbard@collabora.com>
Date: Fri, 25 Oct 2024 13:38:24 -0400
In-Reply-To: <20240909192522.1076704-10-jonas@kwiboo.se>
References: <20240909192522.1076704-1-jonas@kwiboo.se>
	 <20240909192522.1076704-10-jonas@kwiboo.se>
Organization: Collabora
User-Agent: Evolution 3.52.4 (3.52.4-1.fc40) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241025_103829_750997_7C668163 
X-CRM114-Status: GOOD (  20.73  )
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

TGUgbHVuZGkgMDkgc2VwdGVtYnJlIDIwMjQgw6AgMTk6MjUgKzAwMDAsIEpvbmFzIEthcmxtYW4g
YSDDqWNyaXTCoDoKPiBBZGQgc3VwcG9ydCBmb3IgYSBnZXRfaW1hZ2VfZm10KCkgb3BzIHRoYXQg
cmV0dXJuIHRoZSByZXF1aXJlZCBpbWFnZQo+IGZvcm1hdC4KPiAKPiBUaGUgQ0FQVFVSRSBmb3Jt
YXQgaXMgcmVzZXQgd2hlbiByZXF1aXJlZCBpbWFnZSBmb3JtYXQgY2hhbmdlcyBhbmQgdGhlCj4g
YnVmZmVyIHF1ZXVlIGlzIG5vdCBidXN5Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IEpvbmFzIEthcmxt
YW4gPGpvbmFzQGt3aWJvby5zZT4KPiBUZXN0ZWQtYnk6IE5pY29sYXMgRHVmcmVzbmUgPG5pY29s
YXMuZHVmcmVzbmVAY29sbGFib3JhLmNvbT4KPiBUZXN0ZWQtYnk6IENocmlzdG9waGVyIE9iYmFy
ZCA8Y2hyaXMub2JiYXJkQGNvbGxhYm9yYS5jb20+CgpMb29rcyBnb29kIHRvIG1lLgoKUmV2aWV3
ZWQtYnk6IE5pY29sYXMgRHVmcmVzbmUgPG5pY29sYXMuZHVmcmVzbmVAY29sbGFib3JhLmNvbT4K
Cj4gLS0tCj4gdjY6Cj4gLSBObyBjaGFuZ2UKPiAKPiB2NToKPiAtIENvbGxlY3QgdC1iIHRhZ3MK
PiAKPiB2NDoKPiAtIENoYW5nZSBmbXRfb3BhcXVlIGludG8gYW4gaW1hZ2UgZm9ybWF0Cj4gLSBT
cGxpdCBwYXRjaCBpbnRvIHR3bwo+IAo+IHYzOgo+IC0gTmV3IHBhdGNoCj4gLS0tCj4gIGRyaXZl
cnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVjLmMgfCA0OSArKysrKysrKysrKysrKysrKysr
KysrKysrLS0KPiAgZHJpdmVycy9zdGFnaW5nL21lZGlhL3JrdmRlYy9ya3ZkZWMuaCB8ICAyICsr
Cj4gIDIgZmlsZXMgY2hhbmdlZCwgNDkgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiAK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL3JrdmRlYy9ya3ZkZWMuYyBiL2Ry
aXZlcnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVjLmMKPiBpbmRleCA0NjdmYzA1YjM0N2Eu
LjhkZjQ5ZWUxMjgyMCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmt2ZGVj
L3JrdmRlYy5jCj4gKysrIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL3JrdmRlYy9ya3ZkZWMuYwo+
IEBAIC0xMTEsMTUgKzExMSw2MCBAQCBzdGF0aWMgaW50IHJrdmRlY190cnlfY3RybChzdHJ1Y3Qg
djRsMl9jdHJsICpjdHJsKQo+ICB7Cj4gIAlzdHJ1Y3Qgcmt2ZGVjX2N0eCAqY3R4ID0gY29udGFp
bmVyX29mKGN0cmwtPmhhbmRsZXIsIHN0cnVjdCBya3ZkZWNfY3R4LCBjdHJsX2hkbCk7Cj4gIAlj
b25zdCBzdHJ1Y3Qgcmt2ZGVjX2NvZGVkX2ZtdF9kZXNjICpkZXNjID0gY3R4LT5jb2RlZF9mbXRf
ZGVzYzsKPiArCXN0cnVjdCB2NGwyX3BpeF9mb3JtYXRfbXBsYW5lICpwaXhfbXAgPSAmY3R4LT5k
ZWNvZGVkX2ZtdC5mbXQucGl4X21wOwo+ICsJZW51bSBya3ZkZWNfaW1hZ2VfZm10IGltYWdlX2Zt
dDsKPiArCXN0cnVjdCB2YjJfcXVldWUgKnZxOwo+ICsJaW50IHJldDsKPiArCj4gKwlpZiAoZGVz
Yy0+b3BzLT50cnlfY3RybCkgewo+ICsJCXJldCA9IGRlc2MtPm9wcy0+dHJ5X2N0cmwoY3R4LCBj
dHJsKTsKPiArCQlpZiAocmV0KQo+ICsJCQlyZXR1cm4gcmV0Owo+ICsJfQo+ICsKPiArCWlmICgh
ZGVzYy0+b3BzLT5nZXRfaW1hZ2VfZm10KQo+ICsJCXJldHVybiAwOwo+ICAKPiAtCWlmIChkZXNj
LT5vcHMtPnRyeV9jdHJsKQo+IC0JCXJldHVybiBkZXNjLT5vcHMtPnRyeV9jdHJsKGN0eCwgY3Ry
bCk7Cj4gKwlpbWFnZV9mbXQgPSBkZXNjLT5vcHMtPmdldF9pbWFnZV9mbXQoY3R4LCBjdHJsKTsK
PiArCWlmIChjdHgtPmltYWdlX2ZtdCA9PSBpbWFnZV9mbXQpCj4gKwkJcmV0dXJuIDA7Cj4gKwo+
ICsJaWYgKHJrdmRlY19pc192YWxpZF9mbXQoY3R4LCBwaXhfbXAtPnBpeGVsZm9ybWF0LCBpbWFn
ZV9mbXQpKQo+ICsJCXJldHVybiAwOwo+ICsKPiArCS8qIGZvcm1hdCBjaGFuZ2Ugbm90IGFsbG93
ZWQgd2hlbiBxdWV1ZSBpcyBidXN5ICovCj4gKwl2cSA9IHY0bDJfbTJtX2dldF92cShjdHgtPmZo
Lm0ybV9jdHgsCj4gKwkJCSAgICAgVjRMMl9CVUZfVFlQRV9WSURFT19DQVBUVVJFX01QTEFORSk7
Cj4gKwlpZiAodmIyX2lzX2J1c3kodnEpKQo+ICsJCXJldHVybiAtRUlOVkFMOwo+ICsKPiArCXJl
dHVybiAwOwo+ICt9Cj4gKwo+ICtzdGF0aWMgaW50IHJrdmRlY19zX2N0cmwoc3RydWN0IHY0bDJf
Y3RybCAqY3RybCkKPiArewo+ICsJc3RydWN0IHJrdmRlY19jdHggKmN0eCA9IGNvbnRhaW5lcl9v
ZihjdHJsLT5oYW5kbGVyLCBzdHJ1Y3Qgcmt2ZGVjX2N0eCwgY3RybF9oZGwpOwo+ICsJY29uc3Qg
c3RydWN0IHJrdmRlY19jb2RlZF9mbXRfZGVzYyAqZGVzYyA9IGN0eC0+Y29kZWRfZm10X2Rlc2M7
Cj4gKwlzdHJ1Y3QgdjRsMl9waXhfZm9ybWF0X21wbGFuZSAqcGl4X21wID0gJmN0eC0+ZGVjb2Rl
ZF9mbXQuZm10LnBpeF9tcDsKPiArCWVudW0gcmt2ZGVjX2ltYWdlX2ZtdCBpbWFnZV9mbXQ7Cj4g
Kwo+ICsJaWYgKCFkZXNjLT5vcHMtPmdldF9pbWFnZV9mbXQpCj4gKwkJcmV0dXJuIDA7Cj4gKwo+
ICsJaW1hZ2VfZm10ID0gZGVzYy0+b3BzLT5nZXRfaW1hZ2VfZm10KGN0eCwgY3RybCk7Cj4gKwlp
ZiAoY3R4LT5pbWFnZV9mbXQgPT0gaW1hZ2VfZm10KQo+ICsJCXJldHVybiAwOwo+ICsKPiArCWN0
eC0+aW1hZ2VfZm10ID0gaW1hZ2VfZm10Owo+ICsJaWYgKCFya3ZkZWNfaXNfdmFsaWRfZm10KGN0
eCwgcGl4X21wLT5waXhlbGZvcm1hdCwgY3R4LT5pbWFnZV9mbXQpKQo+ICsJCXJrdmRlY19yZXNl
dF9kZWNvZGVkX2ZtdChjdHgpOwo+ICAKPiAgCXJldHVybiAwOwo+ICB9Cj4gIAo+ICBzdGF0aWMg
Y29uc3Qgc3RydWN0IHY0bDJfY3RybF9vcHMgcmt2ZGVjX2N0cmxfb3BzID0gewo+ICAJLnRyeV9j
dHJsID0gcmt2ZGVjX3RyeV9jdHJsLAo+ICsJLnNfY3RybCA9IHJrdmRlY19zX2N0cmwsCj4gIH07
Cj4gIAo+ICBzdGF0aWMgY29uc3Qgc3RydWN0IHJrdmRlY19jdHJsX2Rlc2Mgcmt2ZGVjX2gyNjRf
Y3RybF9kZXNjc1tdID0gewo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmt2
ZGVjL3JrdmRlYy5oIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL3JrdmRlYy9ya3ZkZWMuaAo+IGlu
ZGV4IDZmOGNmNTBjNWQ5OS4uZTQ2NmEyNzUzY2NmIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvc3Rh
Z2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVjLmgKPiArKysgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEv
cmt2ZGVjL3JrdmRlYy5oCj4gQEAgLTczLDYgKzczLDggQEAgc3RydWN0IHJrdmRlY19jb2RlZF9m
bXRfb3BzIHsKPiAgCQkgICAgIHN0cnVjdCB2YjJfdjRsMl9idWZmZXIgKmRzdF9idWYsCj4gIAkJ
ICAgICBlbnVtIHZiMl9idWZmZXJfc3RhdGUgcmVzdWx0KTsKPiAgCWludCAoKnRyeV9jdHJsKShz
dHJ1Y3Qgcmt2ZGVjX2N0eCAqY3R4LCBzdHJ1Y3QgdjRsMl9jdHJsICpjdHJsKTsKPiArCWVudW0g
cmt2ZGVjX2ltYWdlX2ZtdCAoKmdldF9pbWFnZV9mbXQpKHN0cnVjdCBya3ZkZWNfY3R4ICpjdHgs
Cj4gKwkJCQkJICAgICAgIHN0cnVjdCB2NGwyX2N0cmwgKmN0cmwpOwo+ICB9Owo+ICAKPiAgZW51
bSBya3ZkZWNfaW1hZ2VfZm10IHsKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

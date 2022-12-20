Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7CCB9C4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Dec 2022 13:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IYikGmESDWDjCnz1tUH0PvaENrMZ2zP05LvHd/k2/2M=; b=u73rPqPyMdDs9c
	Vl2//VWv9mld4f/bchNQniV84Izt2qkW+KOpfWns2qWA5TFWgVyzaAxFJo/wqPpYr5VWxAX0Z8cXc
	iLSQnXQl+97LcyX3MqeXEYOhmrxJMuqffxh1t3Y1tQUuK7X6lMPfWwxlfQdUP3353Xg3HHv00B92z
	+WCPVYwu8199/auSTi5tCLzQrTIXl+jcvgq7KVaKq5Jnht5I3tme75BHhtJc8VxSq+sE0ZGAl2TiS
	PxiH1nVsoGoiG26uDkmWgONH54602AHhqddfgwn9eciofsQDnNoYhcuL8ZueFnkE3JWDnZRDTag6C
	iDtoAxYZmxNsfE4tk5BQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7cKo-00FV7c-9S; Tue, 20 Dec 2022 13:07:06 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7cJ7-00FTX7-5J; Tue, 20 Dec 2022 13:05:23 +0000
Received: from [IPV6:2a01:e0a:120:3210:bf7d:b502:d93b:e4e3] (unknown [IPv6:2a01:e0a:120:3210:bf7d:b502:d93b:e4e3])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 2ABFD6602CA4;
	Tue, 20 Dec 2022 13:05:19 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1671541519;
	bh=OZ5V6cubKSs1/Cqc7qWLtyNRVl+rKSAvSR5Yfr2fDJM=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Eelb0qPONmvnhvRWV6iOO/SnhhjV8OLKGMn0n+F23B8Yx17pTHBUr5CoA6czuzfjR
	 iVmfuQhEY4Fm49gXzubK4JZ3ARNdXnxghDJ8JCJAdpfCqloVOG71TSn2vVvqhQqp9z
	 fYyyMPCc8p8KlDwA/wq0Kjwg4y70NUFyICN9fCZdde/MQPOYL0Pwx6XlOUC9pdOaag
	 dH+r13qlZ/58guRIylb0a2FTcpUw6aDEA8gqNAAhG37d8BEkCIeAQeRic7mYzSnt2L
	 dVSzXA0piLq0qpu1qoQXmvEelsFJHU+QiOc63IRuSfBRjGzNlPhRrvLeWY1pr0JdnS
	 BwXoJYNKzlkbQ==
Message-ID: <d5191316-97d1-185a-703d-c0932f91c9ee@collabora.com>
Date: Tue, 20 Dec 2022 14:05:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v1 3/9] media: verisilicon: Save bit depth for AV1 decoder
Content-Language: en-US
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Nicolas Dufresne <nicolas@ndufresne.ca>
Cc: p.zabel@pengutronix.de, mchehab@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
 daniel.almeida@collabora.com, nicolas.dufresne@collabora.co.uk,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20221219155616.848690-1-benjamin.gaignard@collabora.com>
 <20221219155616.848690-4-benjamin.gaignard@collabora.com>
 <07747babe7f83a496f9cd82849c6c2386550ac28.camel@ndufresne.ca>
 <CAAEAJfDoX_aSTg1TO8F21iSriYeTXtRbHPo8wxx5br2v6eCt7Q@mail.gmail.com>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <CAAEAJfDoX_aSTg1TO8F21iSriYeTXtRbHPo8wxx5br2v6eCt7Q@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221220_050521_521252_DDF8F727 
X-CRM114-Status: GOOD (  21.05  )
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

CkxlIDE5LzEyLzIwMjIgw6AgMjI6MjksIEV6ZXF1aWVsIEdhcmNpYSBhIMOpY3JpdMKgOgo+IEJv
bmpvdXIgTmljb2xhcywKPgo+IE9uIE1vbiwgRGVjIDE5LCAyMDIyIGF0IDU6MzcgUE0gTmljb2xh
cyBEdWZyZXNuZSA8bmljb2xhc0BuZHVmcmVzbmUuY2E+IHdyb3RlOgo+PiBMZSBsdW5kaSAxOSBk
w6ljZW1icmUgMjAyMiDDoCAxNjo1NiArMDEwMCwgQmVuamFtaW4gR2FpZ25hcmQgYSDDqWNyaXQg
Ogo+Pj4gU3RvcmUgYml0IGRlcHRoIGluZm9ybWF0aW9uIGZyb20gQVYxIHNlcXVlbmNlIGNvbnRy
b2wuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogQmVuamFtaW4gR2FpZ25hcmQgPGJlbmphbWluLmdh
aWduYXJkQGNvbGxhYm9yYS5jb20+Cj4+PiAtLS0KPj4+ICAgLi4uL21lZGlhL3BsYXRmb3JtL3Zl
cmlzaWxpY29uL2hhbnRyb19kcnYuYyAgIHwgMjYgKysrKysrKysrKysrKysrKysrKwo+Pj4gICAx
IGZpbGUgY2hhbmdlZCwgMjYgaW5zZXJ0aW9ucygrKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19kcnYuYyBiL2RyaXZlcnMvbWVk
aWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2Rydi5jCj4+PiBpbmRleCA0NTAwZTFmYzBm
MmMuLjhlOTM3MTBkY2ZlZCAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0v
dmVyaXNpbGljb24vaGFudHJvX2Rydi5jCj4+PiArKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3Jt
L3ZlcmlzaWxpY29uL2hhbnRyb19kcnYuYwo+Pj4gQEAgLTMyNCw2ICszMjQsMjUgQEAgc3RhdGlj
IGludCBoYW50cm9fdnA5X3NfY3RybChzdHJ1Y3QgdjRsMl9jdHJsICpjdHJsKQo+Pj4gICAgICAg
IHJldHVybiAwOwo+Pj4gICB9Cj4+Pgo+Pj4gK3N0YXRpYyBpbnQgaGFudHJvX2F2MV9zX2N0cmwo
c3RydWN0IHY0bDJfY3RybCAqY3RybCkKPj4+ICt7Cj4+PiArICAgICBzdHJ1Y3QgaGFudHJvX2N0
eCAqY3R4Owo+Pj4gKwo+Pj4gKyAgICAgY3R4ID0gY29udGFpbmVyX29mKGN0cmwtPmhhbmRsZXIs
Cj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGhhbnRyb19jdHgsIGN0cmxfaGFu
ZGxlcik7Cj4+PiArCj4+PiArICAgICBzd2l0Y2ggKGN0cmwtPmlkKSB7Cj4+PiArICAgICBjYXNl
IFY0TDJfQ0lEX1NUQVRFTEVTU19BVjFfU0VRVUVOQ0U6Cj4+PiArICAgICAgICAgICAgIGN0eC0+
Yml0X2RlcHRoID0gY3RybC0+cF9uZXcucF9hdjFfc2VxdWVuY2UtPmJpdF9kZXB0aDsKPj4gVGhh
dCBzZWVtcyBhIGxpdHRsZSBiZSB3ZWFrLCB3aGF0IGhhcHBlbnMgaWYgeW91IGNoYW5nZSB0aGUg
Yml0X2RlcHRoIHdpdGggYQo+PiBub24tcmVxdWVzdCBzX2N0cmwgd2hpbGUgaXRzIGRlY29kaW5n
ID8gVG8gYmUgdGhpcyBkZXNlcnZlIGEgbGl0dGxlIGJpdCBvZgo+PiBwcm90ZWN0aW9uLCBhIHNv
bWV0aGluZyB0aGF0IHZhbGlkYXRlIGFuZCBjb3B5IGl0IGF0IHRoZSBzdGFydCBvZiB0aGUgZGVj
b2RpbmcuCj4+Cj4gT2gsIG5pY2UgY2F0Y2guIFdlIG5lZWQgdG8gcmV0dXJuIEVCVVNZLCBzZWUK
PiBodHRwczovL3d3dy5rZXJuZWwub3JnL2RvYy9odG1sL3Y1LjAvbWVkaWEvdWFwaS92NGwvYnVm
ZmVyLmh0bWwjaW50ZXJhY3Rpb25zLWJldHdlZW4tZm9ybWF0cy1jb250cm9scy1hbmQtYnVmZmVy
cy4KPgo+IFRoZXJlJ3MgYWxyZWFkeSBhbiBBUEkgaW4gdGhlIFY0TDIgY29udHJvbCBmcmFtZXdv
cmsgZm9yIGRyaXZlcnMgdG8gdXNlLAo+IHNlZSB2NGwyX2N0cmxfZ3JhYiBpbgo+IGh0dHBzOi8v
d3d3Lmtlcm5lbC5vcmcvZG9jL2h0bWwvdjUuMC9tZWRpYS9rYXBpL3Y0bDItY29udHJvbHMuaHRt
bCNhY3RpdmUtYW5kLWdyYWJiZWQtY29udHJvbHMuCj4KPj4gcC5zLiBJIGtub3csIFZQOSBzZWVt
cyBzaW1pbGFyLCB0aG91Z2ggYXJndWFibHkgdGhhdCB3YXMgY29waWVkIGZyb20ganBlZywgZm9y
Cj4+IHdoaWNoIGl0IHNlZW1zIHRvdGFsbHkgc2F2ZSB0byBjaGFuZ2UgdGhlIHF1YWxpdHkgYXQg
cnVuLXRpbWUuCj4+Cj4gTm8sIHdhc24ndCBjb3BpZWQgZnJvbSBKUEVHIDotKSBJIGp1c3QgZGlk
bid0IHJlYWxpemUgdGhpcyB3YXMgYW4KPiBpc3N1ZSwgYnV0IGl0IGlzCj4gZ2l2ZW4gdGhlIGJp
dF9kZXB0aCBhZmZlY3RzIHRoZSBidWZmZXJzIHNvIHlvdSBhcmUgY29ycmVjdCwgaXQgbmVlZHMK
PiB0byBiZSBmaXhlZCBmb3IgVlA5IHRvby4KCkkgd2lsbCB1c2UgdjRsMl9jdHJsX2dyYWIoKSBp
biBjb2RlY3MtPm9wcyBpbml0KCkgYW5kIGV4aXQoKSBmdW5jdGlvbnMKYnV0IGl0IHdpbGwgYmUg
b24gcGF0Y2ggNyBiZWNhdXNlIGl0IHdoZXJlIHRoZXkgYXBwZWFyIGZvciB0aGlzIGNvZGVjLgoK
QmVuamFtaW4KCj4KPiBUaGFua3MhCj4gRXplcXVpZWwKPgo+Pj4gKyAgICAgICAgICAgICBicmVh
azsKPj4+ICsgICAgIGRlZmF1bHQ6Cj4+PiArICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOwo+
Pj4gKyAgICAgfQo+Pj4gKwo+Pj4gKyAgICAgcmV0dXJuIDA7Cj4+PiArfQo+Pj4gKwo+Pj4gKwo+
Pj4gICBzdGF0aWMgY29uc3Qgc3RydWN0IHY0bDJfY3RybF9vcHMgaGFudHJvX2N0cmxfb3BzID0g
ewo+Pj4gICAgICAgIC50cnlfY3RybCA9IGhhbnRyb190cnlfY3RybCwKPj4+ICAgfTsKPj4+IEBA
IC0zMzYsNiArMzU1LDEyIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgdjRsMl9jdHJsX29wcyBoYW50
cm9fdnA5X2N0cmxfb3BzID0gewo+Pj4gICAgICAgIC5zX2N0cmwgPSBoYW50cm9fdnA5X3NfY3Ry
bCwKPj4+ICAgfTsKPj4+Cj4+PiArc3RhdGljIGNvbnN0IHN0cnVjdCB2NGwyX2N0cmxfb3BzIGhh
bnRyb19hdjFfY3RybF9vcHMgPSB7Cj4+PiArICAgICAudHJ5X2N0cmwgPSBoYW50cm9fdHJ5X2N0
cmwsCj4+PiArICAgICAuc19jdHJsID0gaGFudHJvX2F2MV9zX2N0cmwsCj4+PiArfTsKPj4+ICsK
Pj4+ICsKPj4+ICAgI2RlZmluZSBIQU5UUk9fSlBFR19BQ1RJVkVfTUFSS0VSUyAgIChWNEwyX0pQ
RUdfQUNUSVZFX01BUktFUl9BUFAwIHwgXAo+Pj4gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIFY0TDJfSlBFR19BQ1RJVkVfTUFSS0VSX0NPTSB8IFwKPj4+ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBWNEwyX0pQRUdfQUNUSVZFX01BUktFUl9E
UVQgfCBcCj4+PiBAQCAtNTEzLDYgKzUzOCw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaGFudHJv
X2N0cmwgY29udHJvbHNbXSA9IHsKPj4+ICAgICAgICAgICAgICAgIC5jb2RlYyA9IEhBTlRST19B
VjFfREVDT0RFUiwKPj4+ICAgICAgICAgICAgICAgIC5jZmcgPSB7Cj4+PiAgICAgICAgICAgICAg
ICAgICAgICAgIC5pZCA9IFY0TDJfQ0lEX1NUQVRFTEVTU19BVjFfU0VRVUVOQ0UsCj4+PiArICAg
ICAgICAgICAgICAgICAgICAgLm9wcyA9ICZoYW50cm9fYXYxX2N0cmxfb3BzLAo+Pj4gICAgICAg
ICAgICAgICAgfSwKPj4+ICAgICAgICB9LCB7Cj4+PiAgICAgICAgICAgICAgICAuY29kZWMgPSBI
QU5UUk9fQVYxX0RFQ09ERVIsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==

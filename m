Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 964DDC4332F
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Nov 2023 02:39:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uTV26rnzAdgwbn19sSLT4dFMMR2V6EBzAB7E/U7f7TI=; b=3SN593fkKrhTFS
	ABCL5DaXKxMxdbCDaDa0JRDjtnDVgSiDmR44lbwn/R3kYjwaMB66YNWW7DSrkc7mliJs8D/XMwBfP
	C7I96ohh+Dua3tR/6XSYAahJXiGdPD4QsAZSu6d3OJQI/5iYH71gJKjvidPj7mz+WxcgHmhtTlJkU
	DJxfysI1TYIoxB9/IzwHn0vWfhVzHcvOHmNERpKl+CQdo4z/DybkGz/yjrAkn/VgWi1kYf1lqD8JH
	boJGsL400DtAIrAIUXIa9e76FOPl+8/z5V3o0BHk+IovuuHvvrC/om9Rliz3Ij9nh0oV/CrNkndPF
	EyvgRyIBiXSM+OMPEcSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r0YTp-002p6h-0v;
	Wed, 08 Nov 2023 02:39:45 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r0YTl-002p5h-2N
	for linux-rockchip@lists.infradead.org;
	Wed, 08 Nov 2023 02:39:43 +0000
Received: from [100.84.166.245] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 86D4C66074D3;
	Wed,  8 Nov 2023 02:39:37 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699411179;
	bh=zYUxwIVC181tVu7mNwksNSP41rm0sl9mrVBWCUqnO6I=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=PFw0auo1y+h+7KgUS5KUqWWaOxKO/LcWyvSCeyu2dmyN7gal+rv3bukc0ucp85LBU
	 QnC7QTSxbVYLJO4PF0c9AtJon8R47f5kPcw9Tkf5KLmcEQVd5XO1wteXvvHxkiC6mx
	 mkzwOz55QEhHqvjC4R6ZZmTUmBNMN6h1mgC5xCPzIKb4iFOufjTcsmJjWiPfY0Jesn
	 RT8TCO31wtDdyg3Cjm5jY4FMSYOIUwfptgLdtIvclJgR1AGDP0956LnF0UNAckRCf3
	 6eMPjIG85Q92oCmwpZ966hH/n6uoMhnP8mRlA0m7DCINB1vKfyey+6zwM9yKDsWDDv
	 6BW4W9PNuzKDg==
Message-ID: <f69345217c21af63cf873bfb4a16ae1363b05875.camel@collabora.com>
Subject: Re: [PATCH v4 05/11] media: rkvdec: h264: Remove SPS validation at
 streaming start
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
Date: Tue, 07 Nov 2023 21:39:27 -0500
In-Reply-To: <bfabc182-4113-46fb-85e9-8550c97d132b@kwiboo.se>
References: <20231105165521.3592037-1-jonas@kwiboo.se>
	 <20231105165521.3592037-6-jonas@kwiboo.se>
	 <c75c894a09292775773ad338121ee81924337cf0.camel@collabora.com>
	 <bfabc182-4113-46fb-85e9-8550c97d132b@kwiboo.se>
User-Agent: Evolution 3.48.4 (3.48.4-1.fc38) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231107_183942_044284_6C06F7E4 
X-CRM114-Status: GOOD (  36.17  )
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

TGUgbWFyZGkgMDcgbm92ZW1icmUgMjAyMyDDoCAyMzo1NiArMDEwMCwgSm9uYXMgS2FybG1hbiBh
IMOpY3JpdMKgOgo+IE9uIDIwMjMtMTEtMDcgMjM6MDEsIE5pY29sYXMgRHVmcmVzbmUgd3JvdGU6
Cj4gPiBMZSBkaW1hbmNoZSAwNSBub3ZlbWJyZSAyMDIzIMOgIDE2OjU1ICswMDAwLCBKb25hcyBL
YXJsbWFuIGEgw6ljcml0wqA6Cj4gPiA+IFNQUyBwYXJhbWV0ZXJzIGlzIHZhbGlkYXRlZCBpbiB0
cnlfY3RybCgpIG9wcyBzbyB0aGVyZSBpcyBubyBuZWVkIHRvCj4gPiAKPiA+ICAgICAgICAgICAg
ICAgICAgYXJlCj4gPiAKPiA+ID4gcmUtdmFsaWRhdGUgd2hlbiBzdHJlYW1pbmcgc3RhcnRzLgo+
ID4gPiAKPiA+ID4gUmVtb3ZlIHRoZSB1bm5lY2Vzc2FyeSBjYWxsIHRvIHZhbGlkYXRlIHNwcyBh
dCBzdHJlYW1pbmcgc3RhcnQuCj4gPiAKPiA+IFRoaXMgcGF0Y2ggaXMgbm90IHdvcmtpbmcgc2lu
Y2UgdXNlciBtYXkgY2hhbmdlIHRoZSBmb3JtYXQgYWZ0ZXIgdGhlCj4gPiBjb250cm9sIGhhdmUg
YmVlbiBzZXQuIFRoZSBwcm9wZXIgZml4IHNob3VsZCBhY3R1YWxseSByZXNldCB0aGUgU1BTCj4g
PiAod2VsbCBhbGwgaGVhZGVyIGNvbnRyb2xzKSB0byBtYXRjaCB0aGUgdGhlIG5ld2x5IHNldCBm
b3JtYXQuIFRoZW4gdGhpcwo+ID4gdmFsaWRhdGlvbiB3b24ndCBiZSBuZWVkZWQgYW55bW9yZS4K
PiA+IAo+ID4gVGhlIHNlcXVlbmNlIHRoYXQgaXMgcHJvYmxlbWF0aWMgYWZ0ZXIgdGhpcyBwYXRj
aCBpczoKPiA+IAo+ID4gU19GTVQgKE9VVFBVVCwgd2lkdGgsIGhlaWdodCk7Cj4gPiBTX0NUUkwg
KFNQUykgLy8gdmFsaWQKPiA+IFNfRk1UKE9VVFBVVCwgd2lkdGgnLCBoZWlnaHQnKTsgLy8gU1BT
IGlzIG5vIGxvbmdlciB2YWxpZAo+ID4gCj4gPiBPbmUgc3VnZ2VzdGlvbiBJIG1heSBtYWtlIGlz
IHRvIGFkZCBhIG9wcyBzbyB0aGF0IGVhY2ggY29kZWMKPiA+IGltcGxlbWVudGF0aW9uIGNhbiBy
ZXNldCB0aGVpciBoZWFkZXIgY29udHJvbHMgdG8gbWFrZSBpdCB2YWxpZCBhZ2FpbnN0Cj4gPiB0
aGUgbmV3IHJlc29sdXRpb24uIFdpdGggdGhhdCBpbiBwbGFjZSB5b3UnbGwgYmUgYWJsZSBkcm9w
IHRoZSBjaGVjay4KPiAKPiBBY2NvcmRpbmcgdG8gdGhlIEluaXRpYWxpemF0aW9uIHNlY3Rpb24g
b2YgdGhlIFY0TDIgc3RhdGVsZXNzCj4gZG9jdW1lbnRhdGlvbiBhIGNsaWVudCBpcyBzdXBwb3Nl
ZCB0byBTX0NUUkwoU1BTKSBhZnRlciBTX0ZNVChPVVRQVVQpLgoKWWVzLCBidXQgb3RoZXIgcGFy
dCBvZiB0aGUgc3BlYyBwcmV2ZW50cyB1cyBmcm9tIGZhaWxpbmcgaWYgdGhlCnVzZXJzcGFjZSBy
ZXN0YXJ0IGluIHRoZSBtaWRkbGUgb2YgdGhlIHByb2Nlc3MuCgo+IAo+IGh0dHBzOi8vZG9jcy5r
ZXJuZWwub3JnL3VzZXJzcGFjZS1hcGkvbWVkaWEvdjRsL2Rldi1zdGF0ZWxlc3MtZGVjb2Rlci5o
dG1sI2luaXRpYWxpemF0aW9uCj4gCj4gSSBndWVzcyB0aGF0IGFsbCBzdGF0ZWxlc3MgZGVjb2Rl
cnMgcHJvYmFibHkgc2hvdWxkIHJlc2V0IGFsbCBjdHJscyB0bwo+IGRlZmF1bHQgdmFsdWUgb24g
U19GTVQoT1VUUFVUKSBvciBkZWNvZGVycyBtYXkgZW5kIHVwIGluIGFuIHVuZXhwZWN0ZWQKPiBz
dGF0ZT8KPiAKPiBJcyByZXNldHRpbmcgYSBjdHJsIHZhbHVlIGJhY2sgdG8gZGVmYXVsdCBzb21l
dGhpbmcgdGhhdCBpcyBzdXBwb3J0ZWQgYnkKPiB2NGwyIGN0cmwgY29yZT8gRGlkIG5vdCBmaW5k
IGFueSBvYnZpb3VzIHdheSB0byByZXNldCBhIGN0cmwgdmFsdWUuCgpJbiBvcmRlciB0byBhdm9p
ZCBoYXZpbmcgdG8gZG8gdGhpcywgSGFudHJvIGRyaXZlciBqdXN0IGlnbm9yZXMgdGhlc2UKdmFs
dWVzIGZyb20gU1BTIGNvbnRyb2wgYW5kIGRvIHRoZSBmb2xsb3dpbmc6CgoJcmVnID0gRzFfUkVH
X0RFQ19DVFJMMV9QSUNfTUJfV0lEVEgoTUJfV0lEVEgoY3R4LT5zcmNfZm10LndpZHRoKSkgfAoJ
ICAgICAgRzFfUkVHX0RFQ19DVFJMMV9QSUNfTUJfSEVJR0hUX1AoTUJfSEVJR0hUKGN0eC0+c3Jj
X2ZtdC5oZWlnaHQpKSB8CgkgICAgICBHMV9SRUdfREVDX0NUUkwxX1JFRl9GUkFNRVMoc3BzLT5t
YXhfbnVtX3JlZl9mcmFtZXMpOwoKVGhlbiBhbGwgdGhleSBkbyBpcyByZXNldCB0aGUgQ0FQVFVS
RSBmb3JtYXQgd2hlbmV2ZXIgbmVlZGVkLCBtYXRjaGluZwp0aGUgYml0IGRlcHRoIHRoYXQgd2Fz
IHByZXZpb3VzbHkgc2V0LiBUaGUgU1BTIGlzIHVuZm9ydHVuYXRseSBub3QKZ3VhcmFudGllZCB0
byBiZSB2YWxpZCwgYnV0IGF0IGZpcnN0IHNpZ2h0IGl0cyBzYWZlIGluIHJlZ2FyZCB0bwpwaWN0
dXJlIGRpbWVuc2lvbnMuCgo+IAo+IFdpbGwgcHJvYmFibHkganVzdCBkcm9wIHRoaXMgcGF0Y2gg
aW4gdjUuCgpUaGF0IG9yIGRvIGxpa2UgaW4gSGFudHJvIGRyaXZlci4gV2hhdCBpcyBzY2FyeSB0
aG91Z2ggaXMgdGhhdCBzb21lIG9mCnRoZSBmZWF0dXJlIGVuYWJsZWQgYnkgU1BTIG1heSByZXF1
aXJlcyBhbiBhdXhpbGlhcnkgY2h1bmsgb2YgbWVtb3J5IHRvCmJlIGFsbG9jYXRlZCwgYW5kIHRo
ZW4gdGhpcyBtZXRob2QgZmFsbHMgYXBwYXJ0LiBJIHRoaW5rIGl0IHdvdWxkIGJlCm5pY2UgdG8g
Zml4IHRoYXQgcHJvcGVybHkgaW4gYWxsIGRyaXZlcnMgaW4gYSBmdXR1cmUgcGF0Y2hzZXQuCgo+
IAo+IFJlZ2FyZHMsCj4gSm9uYXMKPiAKPiA+IAo+ID4gTmljb2xhcwo+ID4gCj4gPiBwLnMuIHlv
dSBjYW4gYWxzbyBqdXN0IGRyb3AgdGhpcyBwYXRjaCBmcm9tIHRoZSBzZXJpZXMgYW5kIHJldmlz
aXQgaXQKPiA+IGxhdGVyLCB0aG91Z2ggSSB0aGluayBpdHMgd29ydGggZml4aW5nLgo+ID4gCj4g
PiA+IAo+ID4gPiBTdWdnZXN0ZWQtYnk6IEV6ZXF1aWVsIEdhcmNpYSA8ZXplcXVpZWxAdmFuZ3Vh
cmRpYXN1ci5jb20uYXI+Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IEpvbmFzIEthcmxtYW4gPGpvbmFz
QGt3aWJvby5zZT4KPiA+ID4gLS0tCj4gPiA+IHY0Ogo+ID4gPiAtIE5vIGNoYW5nZQo+ID4gPiAK
PiA+ID4gdjM6Cj4gPiA+IC0gTmV3IHBhdGNoCj4gPiA+IAo+ID4gPiAgZHJpdmVycy9zdGFnaW5n
L21lZGlhL3JrdmRlYy9ya3ZkZWMtaDI2NC5jIHwgMTkgKystLS0tLS0tLS0tLS0tLS0tLQo+ID4g
PiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMTcgZGVsZXRpb25zKC0pCj4gPiA+
IAo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL3JrdmRlYy9ya3ZkZWMt
aDI2NC5jIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL3JrdmRlYy9ya3ZkZWMtaDI2NC5jCj4gPiA+
IGluZGV4IDhiY2U4OTAyYjhkZC4uODE1ZDUzNTlkZGQ1IDEwMDY0NAo+ID4gPiAtLS0gYS9kcml2
ZXJzL3N0YWdpbmcvbWVkaWEvcmt2ZGVjL3JrdmRlYy1oMjY0LmMKPiA+ID4gKysrIGIvZHJpdmVy
cy9zdGFnaW5nL21lZGlhL3JrdmRlYy9ya3ZkZWMtaDI2NC5jCj4gPiA+IEBAIC0xMDcwLDE3ICsx
MDcwLDYgQEAgc3RhdGljIGludCBya3ZkZWNfaDI2NF9zdGFydChzdHJ1Y3Qgcmt2ZGVjX2N0eCAq
Y3R4KQo+ID4gPiAgCXN0cnVjdCBya3ZkZWNfZGV2ICpya3ZkZWMgPSBjdHgtPmRldjsKPiA+ID4g
IAlzdHJ1Y3Qgcmt2ZGVjX2gyNjRfcHJpdl90YmwgKnByaXZfdGJsOwo+ID4gPiAgCXN0cnVjdCBy
a3ZkZWNfaDI2NF9jdHggKmgyNjRfY3R4Owo+ID4gPiAtCXN0cnVjdCB2NGwyX2N0cmwgKmN0cmw7
Cj4gPiA+IC0JaW50IHJldDsKPiA+ID4gLQo+ID4gPiAtCWN0cmwgPSB2NGwyX2N0cmxfZmluZCgm
Y3R4LT5jdHJsX2hkbCwKPiA+ID4gLQkJCSAgICAgIFY0TDJfQ0lEX1NUQVRFTEVTU19IMjY0X1NQ
Uyk7Cj4gPiA+IC0JaWYgKCFjdHJsKQo+ID4gPiAtCQlyZXR1cm4gLUVJTlZBTDsKPiA+ID4gLQo+
ID4gPiAtCXJldCA9IHJrdmRlY19oMjY0X3ZhbGlkYXRlX3NwcyhjdHgsIGN0cmwtPnBfbmV3LnBf
aDI2NF9zcHMpOwo+ID4gPiAtCWlmIChyZXQpCj4gPiA+IC0JCXJldHVybiByZXQ7Cj4gPiA+ICAK
PiA+ID4gIAloMjY0X2N0eCA9IGt6YWxsb2Moc2l6ZW9mKCpoMjY0X2N0eCksIEdGUF9LRVJORUwp
Owo+ID4gPiAgCWlmICghaDI2NF9jdHgpCj4gPiA+IEBAIC0xMDg5LDggKzEwNzgsOCBAQCBzdGF0
aWMgaW50IHJrdmRlY19oMjY0X3N0YXJ0KHN0cnVjdCBya3ZkZWNfY3R4ICpjdHgpCj4gPiA+ICAJ
cHJpdl90YmwgPSBkbWFfYWxsb2NfY29oZXJlbnQocmt2ZGVjLT5kZXYsIHNpemVvZigqcHJpdl90
YmwpLAo+ID4gPiAgCQkJCSAgICAgICZoMjY0X2N0eC0+cHJpdl90YmwuZG1hLCBHRlBfS0VSTkVM
KTsKPiA+ID4gIAlpZiAoIXByaXZfdGJsKSB7Cj4gPiA+IC0JCXJldCA9IC1FTk9NRU07Cj4gPiA+
IC0JCWdvdG8gZXJyX2ZyZWVfY3R4Owo+ID4gPiArCQlrZnJlZShoMjY0X2N0eCk7Cj4gPiA+ICsJ
CXJldHVybiAtRU5PTUVNOwo+ID4gPiAgCX0KPiA+ID4gIAo+ID4gPiAgCWgyNjRfY3R4LT5wcml2
X3RibC5zaXplID0gc2l6ZW9mKCpwcml2X3RibCk7Cj4gPiA+IEBAIC0xMTAwLDEwICsxMDg5LDYg
QEAgc3RhdGljIGludCBya3ZkZWNfaDI2NF9zdGFydChzdHJ1Y3Qgcmt2ZGVjX2N0eCAqY3R4KQo+
ID4gPiAgCj4gPiA+ICAJY3R4LT5wcml2ID0gaDI2NF9jdHg7Cj4gPiA+ICAJcmV0dXJuIDA7Cj4g
PiA+IC0KPiA+ID4gLWVycl9mcmVlX2N0eDoKPiA+ID4gLQlrZnJlZShoMjY0X2N0eCk7Cj4gPiA+
IC0JcmV0dXJuIHJldDsKPiA+ID4gIH0KPiA+ID4gIAo+ID4gPiAgc3RhdGljIHZvaWQgcmt2ZGVj
X2gyNjRfc3RvcChzdHJ1Y3Qgcmt2ZGVjX2N0eCAqY3R4KQo+ID4gCj4gCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

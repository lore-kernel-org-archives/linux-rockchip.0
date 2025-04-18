Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62ACAC369AB
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Apr 2025 12:28:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cw9wBb0CNIqS7iHTo9oNlLAn7yM6Vh0Pdn5Lb0ZDjq4=; b=c2Fs2VWnlNYWOK
	jcWhWWWmgAgi9Zvt9upqH7mDWvunEaTNT9tCxKFlDxhn0koRTI7xvgz+3RdUAepyZMRi2SJMXm6LT
	Ml58qojalYyDUtT0PsyJXcQ2xKzzgDTy/y6CIQ1YTTy1EvofFs7WKHy2ei5b9+Auo8SVEkzgPFQsw
	x5dVe8yogOmepNMYIuMbMhB0lDGX0irBEximrnMtYHdrLy/9rtyt/2TqDYgEqgA+R6uXOqrIiJ4OF
	oW+8swNxUuY+5s58YCJks64ncmSKi+yi95Z57EH6qaNKnPXivDOWKhxUov/iLRQSKTtYzr6ENOgtH
	z7XxpGkJlHH/exZQdkgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5kpn-0000000G4dD-1Yuj;
	Fri, 18 Apr 2025 12:28:43 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5kpk-0000000G4cV-3K5d
	for linux-rockchip@lists.infradead.org;
	Fri, 18 Apr 2025 12:28:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1744979318;
	bh=lYG0KfV33Uwr1Ob7HNyhn/2xoAxGlPJZBkB55E4P6aQ=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=hvAAh2qTxnkbKjOiu3fdw6pfGvlvVlSa81V9eaDcW/iMjRXjaPRNwCzkI7IKmGqWn
	 /XkHnGx77ddnC86k8vzo12qipvxl9Pf9Lq53hLZJ1/1J3rwtykKnuBYYjY2y6K00p4
	 mKPk4XG8tz7HBrI/HasI09Tj3MCf6h9ChCx+p4NyxB2oc1ye4ib/jxN9mgNzKBQ6+c
	 HDFeK35qHjTSy3gdfDiTibNnfpw4By7l0TRVGNGlUZOHfMWpkvt699QOMhHcLoyObt
	 f27iDZrKtEUKQ1yEJNtl7jnFAZ3h2n63uMHQXBxl8LlsLCMkMEOVPQTZgnNSm3bqSg
	 Ymgd+X9iESMog==
Received: from [IPv6:2606:6d00:15:9913::5ac] (unknown [IPv6:2606:6d00:15:9913::5ac])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id ABD8D17E00F0;
	Fri, 18 Apr 2025 14:28:37 +0200 (CEST)
Message-ID: <4be400281b3fe53b724025ffa837ceed777d7699.camel@collabora.com>
Subject: Re: [PATCH v9 3/4] media: rkvdec: Add get_image_fmt ops
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Mauro Carvalho Chehab
	 <mchehab@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Date: Fri, 18 Apr 2025 08:28:35 -0400
In-Reply-To: <8d1c3c82-dbdc-4064-8188-bab586996302@kwiboo.se>
References: <20250417-b4-rkvdec_h264_high10_and_422_support-v9-0-0e8738ccb46b@collabora.com>
	 <20250417-b4-rkvdec_h264_high10_and_422_support-v9-3-0e8738ccb46b@collabora.com>
	 <8d1c3c82-dbdc-4064-8188-bab586996302@kwiboo.se>
Organization: Collabora Canada
User-Agent: Evolution 3.56.0 (3.56.0-1.fc42) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250418_052841_006865_89B6A5C9 
X-CRM114-Status: GOOD (  21.49  )
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

TGUgdmVuZHJlZGkgMTggYXZyaWwgMjAyNSDDoCAwODoyMiArMDIwMCwgSm9uYXMgS2FybG1hbiBh
IMOpY3JpdMKgOgo+IEhpIE5pY29sYXMsCj4gCj4gT24gMjAyNS0wNC0xNyAyMzo1OCwgTmljb2xh
cyBEdWZyZXNuZSB3cm90ZToKPiA+IEZyb206IEpvbmFzIEthcmxtYW4gPGpvbmFzQGt3aWJvby5z
ZT4KPiA+IAo+ID4gQWRkIHN1cHBvcnQgZm9yIGEgZ2V0X2ltYWdlX2ZtdCgpIG9wcyB0aGF0IHJl
dHVybnMgdGhlIHJlcXVpcmVkIGltYWdlCj4gPiBmb3JtYXQuCj4gPiAKPiA+IFRoZSBDQVBUVVJF
IGZvcm1hdCBpcyByZXNldCB3aGVuIHRoZSByZXF1aXJlZCBpbWFnZSBmb3JtYXQgY2hhbmdlcyBh
bmQKPiA+IHRoZSBidWZmZXIgcXVldWUgaXMgbm90IGJ1c3kuCj4gPiAKPiA+IFNpZ25lZC1vZmYt
Ynk6IEpvbmFzIEthcmxtYW4gPGpvbmFzQGt3aWJvby5zZT4KPiA+IFRlc3RlZC1ieTogTmljb2xh
cyBEdWZyZXNuZSA8bmljb2xhcy5kdWZyZXNuZUBjb2xsYWJvcmEuY29tPgo+ID4gQ28tZGV2ZWxv
cGVkLWJ5OiBOaWNvbGFzIER1ZnJlc25lIDxuaWNvbGFzLmR1ZnJlc25lQGNvbGxhYm9yYS5jb20+
Cj4gPiBTaWduZWQtb2ZmLWJ5OiBOaWNvbGFzIER1ZnJlc25lIDxuaWNvbGFzLmR1ZnJlc25lQGNv
bGxhYm9yYS5jb20+Cj4gPiAtLS0KPiA+IMKgZHJpdmVycy9zdGFnaW5nL21lZGlhL3JrdmRlYy9y
a3ZkZWMuYyB8IDM1ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gPiDCoGRy
aXZlcnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVjLmggfMKgIDIgKysKPiA+IMKgMiBmaWxl
cyBjaGFuZ2VkLCAzNyBpbnNlcnRpb25zKCspCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L3N0YWdpbmcvbWVkaWEvcmt2ZGVjL3JrdmRlYy5jIGIvZHJpdmVycy9zdGFnaW5nL21lZGlhL3Jr
dmRlYy9ya3ZkZWMuYwo+ID4gaW5kZXggN2I3ODAzOTJiYjZhNjNjYzk1NDY1NWVmOTQwZTg3MTQ2
ZDJiODUyZi4uNmM2ZmU0MTFmNDg3NzI0MTllMTgxMGQ4NjlhYjQwZDE2ODg0OGU2NSAxMDA2NDQK
PiA+IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVjLmMKPiA+ICsrKyBi
L2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVjLmMKPiA+IEBAIC03Miw2ICs3Miwx
NSBAQCBzdGF0aWMgYm9vbCBya3ZkZWNfaXNfdmFsaWRfZm10KHN0cnVjdCBya3ZkZWNfY3R4ICpj
dHgsIHUzMiBmb3VyY2MsCj4gPiDCoAlyZXR1cm4gZmFsc2U7Cj4gPiDCoH0KPiA+IMKgCj4gPiAr
c3RhdGljIGJvb2wgcmt2ZGVjX2ZtdF9jaGFuZ2VkKHN0cnVjdCBya3ZkZWNfY3R4ICpjdHgsCj4g
PiArCQkJwqDCoMKgwqDCoMKgIGVudW0gcmt2ZGVjX2ltYWdlX2ZtdCBpbWFnZV9mbXQpCj4gCj4g
SnVzdCBhIHNtYWxsIG5pdHBpY2s6Cj4gCj4gTWF5YmUgdGhpcyBmdW5jdGlvbiBzaG91bGQgYmUg
Y2FsbGVkIHJrdmRlY19pbWFnZV9mbXRfY2hhbmdlZCgpIGFuZAo+IGNvdWxkIGJlIG1vdmVkIGNs
b3NlciB0byBya3ZkZWNfaW1hZ2VfZm10X21hdGNoKCkgYXMgdGhvc2UgdHdvIGFyZQo+IHJlbGF0
ZWQgdG8gaW1hZ2VfZm10IGFuZCBub3QgdGhlIHBpeGZtdC9mb3VyY2MuCgpBcHBsaWVkIGxvY2Fs
bHkuIFdpdGggdGhpcyBjaGFuZ2UsIG1heSBJIGhhdmUgeW91ciBSYiA/Cgp0aGFua3MsCk5pY29s
YXMKCj4gCj4gUmVnYXJkcywKPiBKb25hcwo+IAo+ID4gK3sKPiA+ICsJaWYgKGltYWdlX2ZtdCA9
PSBSS1ZERUNfSU1HX0ZNVF9BTlkpCj4gPiArCQlyZXR1cm4gZmFsc2U7Cj4gPiArCj4gPiArCXJl
dHVybiBjdHgtPmltYWdlX2ZtdCAhPSBpbWFnZV9mbXQ7Cj4gPiArfQo+ID4gKwo+ID4gwqBzdGF0
aWMgdm9pZCBya3ZkZWNfZmlsbF9kZWNvZGVkX3BpeGZtdChzdHJ1Y3Qgcmt2ZGVjX2N0eCAqY3R4
LAo+ID4gwqAJCQkJwqDCoMKgwqDCoMKgIHN0cnVjdCB2NGwyX3BpeF9mb3JtYXRfbXBsYW5lICpw
aXhfbXApCj4gPiDCoHsKPiA+IEBAIC0xMTgsOCArMTI3LDM0IEBAIHN0YXRpYyBpbnQgcmt2ZGVj
X3RyeV9jdHJsKHN0cnVjdCB2NGwyX2N0cmwgKmN0cmwpCj4gPiDCoAlyZXR1cm4gMDsKPiA+IMKg
fQo+ID4gwqAKPiA+ICtzdGF0aWMgaW50IHJrdmRlY19zX2N0cmwoc3RydWN0IHY0bDJfY3RybCAq
Y3RybCkKPiA+ICt7Cj4gPiArCXN0cnVjdCBya3ZkZWNfY3R4ICpjdHggPSBjb250YWluZXJfb2Yo
Y3RybC0+aGFuZGxlciwgc3RydWN0IHJrdmRlY19jdHgsIGN0cmxfaGRsKTsKPiA+ICsJY29uc3Qg
c3RydWN0IHJrdmRlY19jb2RlZF9mbXRfZGVzYyAqZGVzYyA9IGN0eC0+Y29kZWRfZm10X2Rlc2M7
Cj4gPiArCWVudW0gcmt2ZGVjX2ltYWdlX2ZtdCBpbWFnZV9mbXQ7Cj4gPiArCXN0cnVjdCB2YjJf
cXVldWUgKnZxOwo+ID4gKwo+ID4gKwkvKiBDaGVjayBpZiB0aGlzIGNoYW5nZSByZXF1aXJlcyBh
IGNhcHR1cmUgZm9ybWF0IHJlc2V0ICovCj4gPiArCWlmICghZGVzYy0+b3BzLT5nZXRfaW1hZ2Vf
Zm10KQo+ID4gKwkJcmV0dXJuIDA7Cj4gPiArCj4gPiArCWltYWdlX2ZtdCA9IGRlc2MtPm9wcy0+
Z2V0X2ltYWdlX2ZtdChjdHgsIGN0cmwpOwo+ID4gKwlpZiAocmt2ZGVjX2ZtdF9jaGFuZ2VkKGN0
eCwgaW1hZ2VfZm10KSkgewo+ID4gKwkJdnEgPSB2NGwyX20ybV9nZXRfdnEoY3R4LT5maC5tMm1f
Y3R4LAo+ID4gKwkJCQnCoMKgwqDCoCBWNEwyX0JVRl9UWVBFX1ZJREVPX0NBUFRVUkVfTVBMQU5F
KTsKPiA+ICsJCWlmICh2YjJfaXNfYnVzeSh2cSkpCj4gPiArCQkJcmV0dXJuIC1FQlVTWTsKPiA+
ICsKPiA+ICsJCWN0eC0+aW1hZ2VfZm10ID0gaW1hZ2VfZm10Owo+ID4gKwkJcmt2ZGVjX3Jlc2V0
X2RlY29kZWRfZm10KGN0eCk7Cj4gPiArCX0KPiA+ICsKPiA+ICsJcmV0dXJuIDA7Cj4gPiArfQo+
ID4gKwo+ID4gwqBzdGF0aWMgY29uc3Qgc3RydWN0IHY0bDJfY3RybF9vcHMgcmt2ZGVjX2N0cmxf
b3BzID0gewo+ID4gwqAJLnRyeV9jdHJsID0gcmt2ZGVjX3RyeV9jdHJsLAo+ID4gKwkuc19jdHJs
ID0gcmt2ZGVjX3NfY3RybCwKPiA+IMKgfTsKPiA+IMKgCj4gPiDCoHN0YXRpYyBjb25zdCBzdHJ1
Y3Qgcmt2ZGVjX2N0cmxfZGVzYyBya3ZkZWNfaDI2NF9jdHJsX2Rlc2NzW10gPSB7Cj4gPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL3JrdmRlYy9ya3ZkZWMuaCBiL2RyaXZlcnMv
c3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVjLmgKPiA+IGluZGV4IDZmOGNmNTBjNWQ5OWFhZDJm
NTJlMzIxZjU0ZjNjYTE3MTY2ZGRmOTguLmU0NjZhMjc1M2NjZmMxMzczOGUwYTY3MmJjNTc4ZTUy
MWFmMmMzZjIgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmt2ZGVjL3Jr
dmRlYy5oCj4gPiArKysgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmt2ZGVjL3JrdmRlYy5oCj4g
PiBAQCAtNzMsNiArNzMsOCBAQCBzdHJ1Y3Qgcmt2ZGVjX2NvZGVkX2ZtdF9vcHMgewo+ID4gwqAJ
CcKgwqDCoMKgIHN0cnVjdCB2YjJfdjRsMl9idWZmZXIgKmRzdF9idWYsCj4gPiDCoAkJwqDCoMKg
wqAgZW51bSB2YjJfYnVmZmVyX3N0YXRlIHJlc3VsdCk7Cj4gPiDCoAlpbnQgKCp0cnlfY3RybCko
c3RydWN0IHJrdmRlY19jdHggKmN0eCwgc3RydWN0IHY0bDJfY3RybCAqY3RybCk7Cj4gPiArCWVu
dW0gcmt2ZGVjX2ltYWdlX2ZtdCAoKmdldF9pbWFnZV9mbXQpKHN0cnVjdCBya3ZkZWNfY3R4ICpj
dHgsCj4gPiArCQkJCQnCoMKgwqDCoMKgwqAgc3RydWN0IHY0bDJfY3RybCAqY3RybCk7Cj4gPiDC
oH07Cj4gPiDCoAo+ID4gwqBlbnVtIHJrdmRlY19pbWFnZV9mbXQgewo+ID4gCj4gCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

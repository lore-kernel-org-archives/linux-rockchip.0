Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE0F4C76196
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Apr 2023 15:11:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q/NiJ+kRzPjhe9k6ci7k6D5mWE5T5EGBVtAPNpDxURc=; b=2AeM/2ZWY23XZe
	j2pW2J9VY2CrDnX23lP+yy0J0dGqJrv4Smm1BmCMrGpSe0LUVdutpy+K0vc1fqEpfWJScCUEBVLep
	JEkQLLmoGc60P1HvSoANbJZpaIfF8Ni8DARo/JqZlyT24C9FkUq7oCNSoP16NX+q4p8XbhnD56i5J
	QnAFQEwLDFueawiQ4a8Q3yFJe71tdX9pC5WVijdd4oUsL4eO16jtchvb5w4qTo08KmSNBNHChfp49
	7olgYU54diw9dpeniKQiT3icbD/XSb+PGFkOp7AJAicd1Xs/7o1Q0aHr6Rvl7B7aVKSyjkrq2rRZv
	+SA5nOHCcViSnRbsUv7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pmFe5-000Mhk-0Z;
	Tue, 11 Apr 2023 15:10:57 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pmFe0-000Mct-2T;
	Tue, 11 Apr 2023 15:10:54 +0000
Received: from nicolas-tpx395.localdomain (unknown [IPv6:2606:6d00:15:199e::580])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 9EDD066031E0;
	Tue, 11 Apr 2023 16:10:49 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1681225850;
	bh=FZ5Rda4k9osgauEPem0mQeUsr1gyDZRs1xZRSDCNgWc=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=CmtW4N9Faw/G8WYYjAikf8hxBWdbP29gxG7c3dBG8bC0yksmcxgigEFeTR1+Cb3gK
	 /2VxBPAR9GCt58esLT8VTAAevfqRPgWuxRLOyQofWedbCa74dtLs/diV8L0uUf0a+y
	 X3JUsqRvn15OhwBe9Ionnjb+KkaCIAl13M6H+Lpb3jXtzDkdccQD4DyKLmQt98e8Pe
	 /BZ6nxkF73Zfr20RF2AwhwZMIT8GWZBYSGusltm1ck47tTJ78YVFN8LHHrC6IYw5r7
	 bC2hKIEkiGFeYONozRcIo+Quf8T1zxqtOyM/PHSrPTkxAEnQf0r4Vte4pt3xoc8Gu5
	 +bMFIZ5/uaJUA==
Message-ID: <ebae8a86a6af268daeb198d66fd940dc622e8aac.camel@collabora.com>
Subject: Re: [PATCH v5 07/13] media: verisilicon: Compute motion vectors
 size for AV1 frames
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
	ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, mchehab@kernel.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de, 
	hverkuil-cisco@xs4all.nl
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, kernel@collabora.com
Date: Tue, 11 Apr 2023 11:10:41 -0400
In-Reply-To: <20230330154043.1250736-8-benjamin.gaignard@collabora.com>
References: <20230330154043.1250736-1-benjamin.gaignard@collabora.com>
	 <20230330154043.1250736-8-benjamin.gaignard@collabora.com>
User-Agent: Evolution 3.46.4 (3.46.4-1.fc37) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230411_081052_943718_0F9FA8A9 
X-CRM114-Status: GOOD (  15.70  )
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

TGUgamV1ZGkgMzAgbWFycyAyMDIzIMOgIDE3OjQwICswMjAwLCBCZW5qYW1pbiBHYWlnbmFyZCBh
IMOpY3JpdMKgOgo+IENvbXB1dGUgdGhlIGFkZGl0aW9uYWwgc3BhY2UgcmVxdWlyZWQgdG8gc3Rv
cmUgbW90aW9uIHZlY3RvcnMgYXQKPiB0aGUgZW5kIG9mIHRoZSBmcmFtZXMgYnVmZmVycy4KPiAK
PiBTaWduZWQtb2ZmLWJ5OiBCZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRAY29s
bGFib3JhLmNvbT4KClJldmlld2VkLWJ5OiBOaWNvbGFzIER1ZnJlc25lIDxuaWNvbGFzLmR1ZnJl
c25lQGNvbGxhYm9yYS5jb20+Cgo+IC0tLQo+ICBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Zlcmlz
aWxpY29uL2hhbnRyb19ody5oICAgICAgfCAxMyArKysrKysrKysrKysrCj4gIC4uLi9tZWRpYS9w
bGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fcG9zdHByb2MuYyAgICB8ICAzICsrKwo+ICBkcml2
ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb192NGwyLmMgICAgfCAgNSArKysr
Kwo+ICAzIGZpbGVzIGNoYW5nZWQsIDIxIGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9faHcuaCBiL2RyaXZlcnMv
bWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2h3LmgKPiBpbmRleCBlODNmMGM1MjNh
MzAuLmJjNjFkNGUwNTFjNyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Zl
cmlzaWxpY29uL2hhbnRyb19ody5oCj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJp
c2lsaWNvbi9oYW50cm9faHcuaAo+IEBAIC00MTcsNiArNDE3LDE5IEBAIGhhbnRyb19oZXZjX212
X3NpemUodW5zaWduZWQgaW50IHdpZHRoLCB1bnNpZ25lZCBpbnQgaGVpZ2h0KQo+ICAJcmV0dXJu
IHdpZHRoICogaGVpZ2h0IC8gMTY7Cj4gIH0KPiAgCj4gK3N0YXRpYyBpbmxpbmUgdW5zaWduZWQg
c2hvcnQgaGFudHJvX2F2MV9udW1fc2JzKHVuc2lnbmVkIHNob3J0IGRpbWVuc2lvbikKPiArewo+
ICsJcmV0dXJuIERJVl9ST1VORF9VUChkaW1lbnNpb24sIDY0KTsKPiArfQo+ICsKPiArc3RhdGlj
IGlubGluZSBzaXplX3QKPiAraGFudHJvX2F2MV9tdl9zaXplKHVuc2lnbmVkIGludCB3aWR0aCwg
dW5zaWduZWQgaW50IGhlaWdodCkKPiArewo+ICsJc2l6ZV90IG51bV9zYnMgPSBoYW50cm9fYXYx
X251bV9zYnMod2lkdGgpICogaGFudHJvX2F2MV9udW1fc2JzKGhlaWdodCk7Cj4gKwo+ICsJcmV0
dXJuIEFMSUdOKG51bV9zYnMgKiAzODQsIDE2KSAqIDIgKyA1MTI7Cj4gK30KPiArCj4gIGludCBo
YW50cm9fZzFfbXBlZzJfZGVjX3J1bihzdHJ1Y3QgaGFudHJvX2N0eCAqY3R4KTsKPiAgaW50IHJv
Y2tjaGlwX3ZwdTJfbXBlZzJfZGVjX3J1bihzdHJ1Y3QgaGFudHJvX2N0eCAqY3R4KTsKPiAgdm9p
ZCBoYW50cm9fbXBlZzJfZGVjX2NvcHlfcXRhYmxlKHU4ICpxdGFibGUsCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX3Bvc3Rwcm9jLmMgYi9k
cml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19wb3N0cHJvYy5jCj4gaW5k
ZXggNjQzNzQyM2NjZjNhLi5iYjE2YWY1MDcxOWQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tZWRp
YS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fcG9zdHByb2MuYwo+ICsrKyBiL2RyaXZlcnMv
bWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX3Bvc3Rwcm9jLmMKPiBAQCAtMjEzLDYg
KzIxMyw5IEBAIGludCBoYW50cm9fcG9zdHByb2NfYWxsb2Moc3RydWN0IGhhbnRyb19jdHggKmN0
eCkKPiAgCWVsc2UgaWYgKGN0eC0+dnB1X3NyY19mbXQtPmZvdXJjYyA9PSBWNEwyX1BJWF9GTVRf
SEVWQ19TTElDRSkKPiAgCQlidWZfc2l6ZSArPSBoYW50cm9faGV2Y19tdl9zaXplKHBpeF9tcC53
aWR0aCwKPiAgCQkJCQkJcGl4X21wLmhlaWdodCk7Cj4gKwllbHNlIGlmIChjdHgtPnZwdV9zcmNf
Zm10LT5mb3VyY2MgPT0gVjRMMl9QSVhfRk1UX0FWMV9GUkFNRSkKPiArCQlidWZfc2l6ZSArPSBo
YW50cm9fYXYxX212X3NpemUocGl4X21wLndpZHRoLAo+ICsJCQkJCSAgICAgICBwaXhfbXAuaGVp
Z2h0KTsKPiAgCj4gIAlmb3IgKGkgPSAwOyBpIDwgbnVtX2J1ZmZlcnM7ICsraSkgewo+ICAJCXN0
cnVjdCBoYW50cm9fYXV4X2J1ZiAqcHJpdiA9ICZjdHgtPnBvc3Rwcm9jLmRlY19xW2ldOwo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb192NGwy
LmMgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb192NGwyLmMKPiBp
bmRleCBlMmE4ODM4Zjc1ZjAuLmMyMThjOTc4MWU3MyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21l
ZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb192NGwyLmMKPiArKysgYi9kcml2ZXJzL21l
ZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb192NGwyLmMKPiBAQCAtMzM3LDYgKzMzNywx
MSBAQCBzdGF0aWMgaW50IGhhbnRyb190cnlfZm10KGNvbnN0IHN0cnVjdCBoYW50cm9fY3R4ICpj
dHgsCj4gIAkJCXBpeF9tcC0+cGxhbmVfZm10WzBdLnNpemVpbWFnZSArPQo+ICAJCQkJaGFudHJv
X2hldmNfbXZfc2l6ZShwaXhfbXAtPndpZHRoLAo+ICAJCQkJCQkgICAgcGl4X21wLT5oZWlnaHQp
Owo+ICsJCWVsc2UgaWYgKGN0eC0+dnB1X3NyY19mbXQtPmZvdXJjYyA9PSBWNEwyX1BJWF9GTVRf
QVYxX0ZSQU1FICYmCj4gKwkJCSAhaGFudHJvX25lZWRzX3Bvc3Rwcm9jKGN0eCwgZm10KSkKPiAr
CQkJcGl4X21wLT5wbGFuZV9mbXRbMF0uc2l6ZWltYWdlICs9Cj4gKwkJCQloYW50cm9fYXYxX212
X3NpemUocGl4X21wLT53aWR0aCwKPiArCQkJCQkJICAgcGl4X21wLT5oZWlnaHQpOwo+ICAJfSBl
bHNlIGlmICghcGl4X21wLT5wbGFuZV9mbXRbMF0uc2l6ZWltYWdlKSB7Cj4gIAkJLyoKPiAgCQkg
KiBGb3IgY29kZWQgZm9ybWF0cyB0aGUgYXBwbGljYXRpb24gY2FuIHNwZWNpZnkKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

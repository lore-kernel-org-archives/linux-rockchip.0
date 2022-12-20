Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E15EC10F1E
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Dec 2022 13:14:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zlkzoo3b6VRtdBrIE0zE8VpBg/0gJA8dzDq3u8JhLNw=; b=1q02jPhFoUMGQ2
	J5EMsiS2TlqSNBFdUz1ZeP//HA8pzT/3KaGLsrM5kQd7qeu8ucMcgkLgyq0TelwSv2XRm7XELq5Wu
	79V/n4jTy5VzpldjdCbKRGqN4zEq3/GsQe4U17WNx+0IJsJgDqdxkAXKP2LdPfZvyevPYawthQnqb
	zLYUowq6GW+1zWHUnDqtaxVNmYG6dGzQ4mvtdXlZ2gPmd7xhCz1PJs3mNe2Z8slxsCSoel7oZTKPQ
	WRpblUOCTxljaJ9RsYcppPylKglLDnKbMUUCqnIWVXx07XmkVZRhQPIk6nFGDHYpRJcjzWTBwZbRp
	oQPVoj2TjyB28ColxYkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7cRo-00Fbgi-94; Tue, 20 Dec 2022 13:14:20 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7cRI-00Fb5k-01; Tue, 20 Dec 2022 13:13:50 +0000
Received: from [IPV6:2a01:e0a:120:3210:bf7d:b502:d93b:e4e3] (unknown [IPv6:2a01:e0a:120:3210:bf7d:b502:d93b:e4e3])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 0AD3A6602CA4;
	Tue, 20 Dec 2022 13:13:46 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1671542026;
	bh=B49queDa5Hv1Scgi/pvOGhJ49f7aCFvsnQ7cCCmDOM8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=kK/eCDrCNcfH/VAKEXOHroHL8DWwcOSHQ8YBBOlmEqheVCDSHhe0ZWUVFtnGQk0vi
	 tpS/i/rkULzAwNYwrP01Xr/EGVXP4f9feDpqwzHs4X8/tjnKxdfxtArJ1i6YlAgY24
	 Y+B6CRMmJQ+xk8qvOx1ViEsOkNACgloJ6r8NWq8bpJSy9QOSWJrfsCGCfSijg3gET4
	 YhsK9GVR9qnZG6jyM45CDY07ad/aHTXWccGoc+8AV7errJNmDeAwj3TqS5uAoIduoE
	 YNbhEVirYrHC8v58kW5nfuJ9ja1Ese9TFIOk/cQf0zYDFpOH8PqjTeyZSfrP1GzTT9
	 4RF0zMs4UV/6Q==
Message-ID: <56054a90-4c1e-fa08-ad2c-43109d68f599@collabora.com>
Date: Tue, 20 Dec 2022 14:13:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v1 5/9] media: verisilicon: Compute motion vectors size
 for AV1 frames
Content-Language: en-US
To: Nicolas Dufresne <nicolas@ndufresne.ca>, ezequiel@vanguardiasur.com.ar,
 p.zabel@pengutronix.de, mchehab@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
 daniel.almeida@collabora.com, nicolas.dufresne@collabora.co.uk
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20221219155616.848690-1-benjamin.gaignard@collabora.com>
 <20221219155616.848690-6-benjamin.gaignard@collabora.com>
 <44b06c15410e184e8e856a4a882d1b42a02fa8d2.camel@ndufresne.ca>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <44b06c15410e184e8e856a4a882d1b42a02fa8d2.camel@ndufresne.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221220_051348_453057_8B1F407C 
X-CRM114-Status: GOOD (  20.40  )
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

CkxlIDE5LzEyLzIwMjIgw6AgMjE6NDIsIE5pY29sYXMgRHVmcmVzbmUgYSDDqWNyaXTCoDoKPiBM
ZSBsdW5kaSAxOSBkw6ljZW1icmUgMjAyMiDDoCAxNjo1NiArMDEwMCwgQmVuamFtaW4gR2FpZ25h
cmQgYSDDqWNyaXTCoDoKPj4gQ29tcHV0ZSB0aGUgYWRkaXRpb25hbCByZXF1aXJlZCB0byBzdG9y
ZSBtb3Rpb24gdmVjdG9ycyBhdAo+IHJlcXVpcmVzICpzcGFjZSosIHJlcXVpcmVzICpidWZmZXIq
ID8gSSB0aGluayB0aGlzIGlzIG1pc3NpbmcgYSB3b3JkLgo+Cj4+IHRoZSBlbmQgb2YgdGhlIGZy
YW1lcyBidWZmZXJzLgo+Pgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBCZW5qYW1pbiBHYWlnbmFyZCA8
YmVuamFtaW4uZ2FpZ25hcmRAY29sbGFib3JhLmNvbT4KPj4gLS0tCj4+ICAgZHJpdmVycy9tZWRp
YS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9faHcuaCAgICAgIHwgMTMgKysrKysrKysrKysr
Kwo+PiAgIC4uLi9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fcG9zdHByb2MuYyAg
ICB8ICAzICsrKwo+PiAgIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJv
X3Y0bDIuYyAgICB8ICA1ICsrKysrCj4+ICAgMyBmaWxlcyBjaGFuZ2VkLCAyMSBpbnNlcnRpb25z
KCspCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29u
L2hhbnRyb19ody5oIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9f
aHcuaAo+PiBpbmRleCBlODNmMGM1MjNhMzAuLjhiM2JjN2UzMTM5NSAxMDA2NDQKPj4gLS0tIGEv
ZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9faHcuaAo+PiArKysgYi9k
cml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19ody5oCj4+IEBAIC00MTcs
NiArNDE3LDE5IEBAIGhhbnRyb19oZXZjX212X3NpemUodW5zaWduZWQgaW50IHdpZHRoLCB1bnNp
Z25lZCBpbnQgaGVpZ2h0KQo+PiAgIAlyZXR1cm4gd2lkdGggKiBoZWlnaHQgLyAxNjsKPj4gICB9
Cj4+ICAgCj4+ICtzdGF0aWMgaW5saW5lIHVuc2lnbmVkIHNob3J0IGhhbnRyb19hdjFfbnVtX3Ni
cyh1bnNpZ25lZCBzaG9ydCBkaW1lbnNpb24pCj4+ICt7Cj4+ICsJcmV0dXJuIERJVl9ST1VORF9V
UChkaW1lbnNpb24sIDY0KSArIDE7Cj4gV2h5IHBsdXMgb25lID8gSSd2ZSB0ZXN0ZWQgbG9jYWxs
eSB3aXRoIHRoZSBsb2dpY2FsIERJVl9ST1VORF9VUChkaW1lbnNpb24sIDY0KSwKPiBhbmQgZGlk
bid0IHNlZSBhbnkgZGlmZmVyZW5jZS4gSXQgdGhlbiBtYXRjaCBoYW50cm9fdnBfbnVtX3Nicygp
LCBzbyBjYW4ndCB0aGlzCj4gYmUgc2hhcmVkID8KCk1QUCBjb2RlIHVzZSBwbHVzIG9uZSBzbyBJ
IGtlZXAgaXQgbGlrZSB0aGF0LgoKPgo+PiArfQo+PiArCj4+ICtzdGF0aWMgaW5saW5lIHNpemVf
dAo+PiAraGFudHJvX2F2MV9tdl9zaXplKHVuc2lnbmVkIGludCB3aWR0aCwgdW5zaWduZWQgaW50
IGhlaWdodCkKPj4gK3sKPj4gKwlzaXplX3QgbnVtX3NicyA9IGhhbnRyb19hdjFfbnVtX3Nicyh3
aWR0aCkgKiBoYW50cm9fYXYxX251bV9zYnMoaGVpZ2h0KTsKPj4gKwo+PiArCXJldHVybiBBTElH
TihudW1fc2JzICogMzg0LCAxNikgKyA1MTI7Cj4gU2hhbGwgdGhlIG1hZ2ljIG51bWJlcnMgYmUg
dHVybmVkIGludG8gZGVmaW5lcyA/CgpNUFAgY29kZSBpczoKZGlyX212c19zaXplID0gTVBQX0FM
SUdOKG51bV9zYnMgKiAyNCAqIDEyOCAvIDgsIDE2KTsKYW5kIDUxMiBpcyBhZGRlZCBsYXRlciBi
eSBhbm90aGVyIHBpZWNlIG9mIGNvZGUuCgpJIGhhdmUgbm8gY2x1ZSBhYm91dCB0aGUgbWVhbmlu
ZyBvZiB0aG9zZSB2YWx1ZXMsIHNvcnJ5LgoKPgo+PiArfQo+PiArCj4+ICAgaW50IGhhbnRyb19n
MV9tcGVnMl9kZWNfcnVuKHN0cnVjdCBoYW50cm9fY3R4ICpjdHgpOwo+PiAgIGludCByb2NrY2hp
cF92cHUyX21wZWcyX2RlY19ydW4oc3RydWN0IGhhbnRyb19jdHggKmN0eCk7Cj4+ICAgdm9pZCBo
YW50cm9fbXBlZzJfZGVjX2NvcHlfcXRhYmxlKHU4ICpxdGFibGUsCj4+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19wb3N0cHJvYy5jIGIvZHJp
dmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fcG9zdHByb2MuYwo+PiBpbmRl
eCAwOWQ4Y2Y5NDI2ODkuLjdkYzM5NTE5YTJlZSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9tZWRp
YS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fcG9zdHByb2MuYwo+PiArKysgYi9kcml2ZXJz
L21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19wb3N0cHJvYy5jCj4+IEBAIC0yMTMs
NiArMjEzLDkgQEAgaW50IGhhbnRyb19wb3N0cHJvY19hbGxvYyhzdHJ1Y3QgaGFudHJvX2N0eCAq
Y3R4KQo+PiAgIAllbHNlIGlmIChjdHgtPnZwdV9zcmNfZm10LT5mb3VyY2MgPT0gVjRMMl9QSVhf
Rk1UX0hFVkNfU0xJQ0UpCj4+ICAgCQlidWZfc2l6ZSArPSBoYW50cm9faGV2Y19tdl9zaXplKHBp
eF9tcC53aWR0aCwKPj4gICAJCQkJCQlwaXhfbXAuaGVpZ2h0KTsKPj4gKwllbHNlIGlmIChjdHgt
PnZwdV9zcmNfZm10LT5mb3VyY2MgPT0gVjRMMl9QSVhfRk1UX0FWMV9GUkFNRSkKPj4gKwkJYnVm
X3NpemUgKz0gaGFudHJvX2F2MV9tdl9zaXplKHBpeF9tcC53aWR0aCwKPj4gKwkJCQkJICAgICAg
IHBpeF9tcC5oZWlnaHQpOwo+IG5pdDogVGltZSB0byB0dXJuIGludG8gYSBzd2l0Y2ggb3IgdXNl
IGFuIG9wcyA/Cj4KPj4gICAKPj4gICAJZm9yIChpID0gMDsgaSA8IG51bV9idWZmZXJzOyArK2kp
IHsKPj4gICAJCXN0cnVjdCBoYW50cm9fYXV4X2J1ZiAqcHJpdiA9ICZjdHgtPnBvc3Rwcm9jLmRl
Y19xW2ldOwo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNv
bi9oYW50cm9fdjRsMi5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50
cm9fdjRsMi5jCj4+IGluZGV4IDJjN2E4MDUyODllNy4uZDQxZGNiMTA4YTZkIDEwMDY0NAo+PiAt
LS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb192NGwyLmMKPj4g
KysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fdjRsMi5jCj4+
IEBAIC0zMzQsNiArMzM0LDExIEBAIHN0YXRpYyBpbnQgaGFudHJvX3RyeV9mbXQoY29uc3Qgc3Ry
dWN0IGhhbnRyb19jdHggKmN0eCwKPj4gICAJCQlwaXhfbXAtPnBsYW5lX2ZtdFswXS5zaXplaW1h
Z2UgKz0KPj4gICAJCQkJaGFudHJvX2hldmNfbXZfc2l6ZShwaXhfbXAtPndpZHRoLAo+PiAgIAkJ
CQkJCSAgICBwaXhfbXAtPmhlaWdodCk7Cj4+ICsJCWVsc2UgaWYgKGN0eC0+dnB1X3NyY19mbXQt
PmZvdXJjYyA9PSBWNEwyX1BJWF9GTVRfQVYxX0ZSQU1FICYmCj4+ICsJCQkgIWhhbnRyb19uZWVk
c19wb3N0cHJvYyhjdHgsIGZtdCkpCj4+ICsJCQlwaXhfbXAtPnBsYW5lX2ZtdFswXS5zaXplaW1h
Z2UgKz0KPj4gKwkJCQloYW50cm9fYXYxX212X3NpemUocGl4X21wLT53aWR0aCwKPj4gKwkJCQkJ
CSAgIHBpeF9tcC0+aGVpZ2h0KTsKPj4gICAJfSBlbHNlIGlmICghcGl4X21wLT5wbGFuZV9mbXRb
MF0uc2l6ZWltYWdlKSB7Cj4+ICAgCQkvKgo+PiAgIAkJICogRm9yIGNvZGVkIGZvcm1hdHMgdGhl
IGFwcGxpY2F0aW9uIGNhbiBzcGVjaWZ5CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

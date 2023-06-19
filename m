Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A637BEB64D9
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Jun 2023 14:41:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2U1vOoxu8jeUpbZKSPz8RpFor/0lzSSwL8XtMM3/1dw=; b=X8fhj4DxfmQeP4
	H/gDYwwrlct8YAX9BLy6LgBdlc07birjtK1lYNtx9e+UHmylpbNdMP2MsxZ2TNoSGEWTFKLAg1jrD
	XkTjS8/dwcX0QhPEE/NWRe91ESj5H4yhSDYMNRG7V9vDLfZPIdYCfK6Z3wLoW3pqH/8p2K3gqwsDe
	+c/7hCUamnT7gY78ueY0BwjMctrxGkmEjJ8BBWQcN0trMwrRJmssBDm4ufCgwF5viFr0wWBAdmpDu
	2QUmW0mnY6i8DqxWcpMVpe8OcF90nyyCLHS/rDt6rrXYoAUCZKWwNZShA/2SIx+Fy+hjwrk2JRogP
	qAGORvQaHIsVBmZtdyEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBG4a-008fKM-0t;
	Mon, 19 Jun 2023 14:41:40 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBG4W-008fIb-0f
	for linux-rockchip@lists.infradead.org;
	Mon, 19 Jun 2023 14:41:37 +0000
Received: from nicolas-tpx395.localdomain (unknown [IPv6:2606:6d00:15:c623::7a9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id DF50766003B0;
	Mon, 19 Jun 2023 15:41:28 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1687185690;
	bh=bcT+FUOyCCJiCPzg14oHY8Ywv+HBklrEGs40i6TF2xY=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=AyWK+LOjmnPIPsG3d7SkdRNoF/0Bn0+DmYPq/Wv493u7FX+kO0bZj/FEifFHkcG5m
	 14igAaYZt+KKr5tDUR1N9OFop2PbFp5upv64sXrwFHanfag8fvX2NoDfekZCp+edoH
	 E2yzQ0dJVkW8fgedCceiz+6Wv/eaWE6ydL3l9imwR4KBPJS/REMvAF4U1DXVQxIHGs
	 H7u3k3APT7Dob7RTWMQIE9Kps9z3wjYCAkY9qWLTmzrwvtkxAbIGZETVRzr3HkVwAi
	 2vWOAwFv1Hmj5IlKmctEHNGjCo5Ogc8eDiFy04WMbuXxk/5slAAMmKVlzFHJVzwaDI
	 EYraxJK6XtYTw==
Message-ID: <e264ac3a15e0f115aa7e941a77eb312429b8f65e.camel@collabora.com>
Subject: Re: [PATCH 2/2] media: verisilicon: change confusingly named
 relaxed register access
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Arnd Bergmann <arnd@kernel.org>, Ezequiel Garcia
	 <ezequiel@vanguardiasur.com.ar>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Mauro Carvalho Chehab
	 <mchehab@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>, Hans Verkuil <hverkuil-cisco@xs4all.nl>, 
 Benjamin Gaignard <benjamin.gaignard@collabora.com>, Jernej Skrabec
 <jernej.skrabec@gmail.com>,  linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org,  linux-kernel@vger.kernel.org
Date: Mon, 19 Jun 2023 10:41:19 -0400
In-Reply-To: <20230616144854.3818934-2-arnd@kernel.org>
References: <20230616144854.3818934-1-arnd@kernel.org>
	 <20230616144854.3818934-2-arnd@kernel.org>
User-Agent: Evolution 3.48.3 (3.48.3-1.fc38) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230619_074136_520237_77168384 
X-CRM114-Status: GOOD (  21.75  )
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

SGkgQXJuZCwKCkxlIHZlbmRyZWRpIDE2IGp1aW4gMjAyMyDDoCAxNjo0OCArMDIwMCwgQXJuZCBC
ZXJnbWFubiBhIMOpY3JpdMKgOgo+IEZyb206IEFybmQgQmVyZ21hbm4gPGFybmRAYXJuZGIuZGU+
Cj4gCj4gVGhlIHJlZ2lzdGVyIGFic3RyYWN0aW9uIGhhcyB3cmFwcGVycyBhcm91bmQgYm90aCB0
aGUgbm9ybWFsIHdyaXRlbCgpCj4gYW5kIGl0cyB3cml0ZWxfcmVsYXhlZCgpIGNvdW50ZXJwYXJ0
LCBidXQgdGhpcyBoYXMgbGVkIHRvIGEgbG90IG9mIHVzZXJzCj4gZW5kaW5nIHVwIHdpdGggdGhl
IHJlbGF4ZWQgdmVyc2lvbi4KPiAKPiBUaGVyZSBpcyBzb21ldGltZXMgYSBuZWVkIHRvIGludGVu
dGlvbmFsbHkgcGljayB0aGUgcmVsYXhlZCBhY2Nlc3NvciBmb3IKPiBwZXJmb3JtYW5jZSBjcml0
aWNhbCBmdW5jdGlvbnMsIGJ1dCBJIG5vdGljZWQgdGhhdCBlYWNoIGhhbnRyb19yZWdfd3JpdGUo
KQo+IGNhbGwgYWxzbyBjb250YWlucyBhIG5vbi1yZWxheGVkIHJlYWRsKCksIHdoaWNoIGlzIHR5
cGljYWxseSBtdWNoIG1vcmUKPiBleHBlbnNpdmUgdGhhbiBhIHdyaXRlbCwgc28gdGhlcmUgaXMg
bGl0dGxlIGJlbmVmaXQgaGVyZSBidXQgYW4gYWRkZWQKPiByaXNrIG9mIG1pc3NpbmcgYSBzZXJp
YWxpemF0aW9uIGFnYWluc3QgRE1BLgo+IAo+IFRvIG1ha2UgdGhpcyBiZWhhdmUgbGlrZSBvdGhl
ciBpbnRlcmZhY2VzLCB1c2UgdGhlIG5vcm1hbCBhY2Nlc3NvciBieQo+IGRlZmF1bHQgYW5kIG9u
bHkgcHJvdmlkZSB0aGUgcmVsYXhlZCB2ZXJzaW9uIGFzIGFuIGFsdGVybmF0aXZlIGZvcgo+IHBl
cmZvcm1hbmNlIGNyaXRpY2FsIGNvZGUuIGhhbnRyb19wb3N0cHJvYy5jIGlzIHRoZSBvbmx5IHBs
YWNlIHRoYXQKPiB1c2VkIGJvdGggdGhlIHJlbGF4ZWQgYW5kIG5vcm1hbCB3cml0ZWwsIGJ1dCB0
aGlzIGRvZXMgbm90IHNlZW0KPiBjcmljaXRhbCBlaXRoZXIsIHNvIGNoYW5nZSBpdCBhbGwgdG8g
dGhlIG5vcm1hbCBvbmVzLgoKSW4gdGhpcyB0ZXh0IHlvdSBzcG9rZSBhYm91dCBwb3RlbnRpYWwg
cGVyZm9ybWFuY2Ugc2lkZSBlZmZlY3RzIG9mIGV4aXN0aW5nIGNvZGUKYW5kIHlvdXIgY2hhbmdl
cywgYnV0IGl0cyBsZWZ0IGFsbCB2ZXJ5IHZhZ3VlIGFuZCB0aGVvcmV0aWNhbC4gSGF2ZSB5b3Ug
ZG9uZSBhbnkKbWVhc3VyZW1lbnQgPyBEbyB5b3UgbmVlZCBoZWxwIHdpdGggdGhlIG1hbm5lciA/
CgpyZWdhcmRzLApOaWNvbGFzCgo+IAo+IFNpZ25lZC1vZmYtYnk6IEFybmQgQmVyZ21hbm4gPGFy
bmRAYXJuZGIuZGU+Cj4gLS0tCj4gSSBkaWQgbm90IGxvb2sgd2hldGhlciB0aGVyZSBpcyBhbiBh
Y3R1YWwgYnVnIGhlcmUsIGp1c3Qgbm90aWNlZCB0aGlzCj4gd2hlbiBJIGRlYnVnZ2VkIHRoZSBl
eGNlc3NpdmUgc3RhY2sgdXNhZ2UuCj4gLS0tCj4gIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVy
aXNpbGljb24vaGFudHJvLmggICAgICAgICAgfCAgNiArKystLS0KPiAgZHJpdmVycy9tZWRpYS9w
bGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fcG9zdHByb2MuYyB8IDEyICsrKysrKy0tLS0tLQo+
ICAyIGZpbGVzIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkKPiAKPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm8uaCBi
L2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvLmgKPiBpbmRleCA2YzVl
NTZjZTViMzUxLi5hNDgxZDk1N2ZlZjkzIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxh
dGZvcm0vdmVyaXNpbGljb24vaGFudHJvLmgKPiArKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3Jt
L3ZlcmlzaWxpY29uL2hhbnRyby5oCj4gQEAgLTQ0MSwxNCArNDQxLDE0IEBAIHN0YXRpYyBfX2Fs
d2F5c19pbmxpbmUgdm9pZCBoYW50cm9fcmVnX3dyaXRlKHN0cnVjdCBoYW50cm9fZGV2ICp2cHUs
Cj4gIAkJCQkgICAgY29uc3Qgc3RydWN0IGhhbnRyb19yZWcgKnJlZywKPiAgCQkJCSAgICB1MzIg
dmFsKQo+ICB7Cj4gLQl2ZHB1X3dyaXRlX3JlbGF4ZWQodnB1LCB2ZHB1X3JlYWRfbWFzayh2cHUs
IHJlZywgdmFsKSwgcmVnLT5iYXNlKTsKPiArCXZkcHVfd3JpdGUodnB1LCB2ZHB1X3JlYWRfbWFz
ayh2cHUsIHJlZywgdmFsKSwgcmVnLT5iYXNlKTsKPiAgfQo+ICAKPiAtc3RhdGljIF9fYWx3YXlz
X2lubGluZSB2b2lkIGhhbnRyb19yZWdfd3JpdGVfcyhzdHJ1Y3QgaGFudHJvX2RldiAqdnB1LAo+
ICtzdGF0aWMgX19hbHdheXNfaW5saW5lIHZvaWQgaGFudHJvX3JlZ193cml0ZV9yZWxheGVkKHN0
cnVjdCBoYW50cm9fZGV2ICp2cHUsCj4gIAkJCQkgICAgICBjb25zdCBzdHJ1Y3QgaGFudHJvX3Jl
ZyAqcmVnLAo+ICAJCQkJICAgICAgdTMyIHZhbCkKPiAgewo+IC0JdmRwdV93cml0ZSh2cHUsIHZk
cHVfcmVhZF9tYXNrKHZwdSwgcmVnLCB2YWwpLCByZWctPmJhc2UpOwo+ICsJdmRwdV93cml0ZV9y
ZWxheGVkKHZwdSwgdmRwdV9yZWFkX21hc2sodnB1LCByZWcsIHZhbCksIHJlZy0+YmFzZSk7Cj4g
IH0KPiAgCj4gIHZvaWQgKmhhbnRyb19nZXRfY3RybChzdHJ1Y3QgaGFudHJvX2N0eCAqY3R4LCB1
MzIgaWQpOwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29u
L2hhbnRyb19wb3N0cHJvYy5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9o
YW50cm9fcG9zdHByb2MuYwo+IGluZGV4IGM5NzdkNjQxMDViMTguLjAyMjRmZjY4YWIzZmMgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fcG9z
dHByb2MuYwo+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJv
X3Bvc3Rwcm9jLmMKPiBAQCAtMjEsMTEgKzIxLDExIEBACj4gIAkJCSB2YWwpOyBcCj4gIH0KPiAg
Cj4gLSNkZWZpbmUgSEFOVFJPX1BQX1JFR19XUklURV9TKHZwdSwgcmVnX25hbWUsIHZhbCkgXAo+
ICsjZGVmaW5lIEhBTlRST19QUF9SRUdfV1JJVEVfUkVMQVhFRCh2cHUsIHJlZ19uYW1lLCB2YWwp
IFwKPiAgeyBcCj4gLQloYW50cm9fcmVnX3dyaXRlX3ModnB1LCBcCj4gLQkJCSAgICZoYW50cm9f
ZzFfcG9zdHByb2NfcmVncy5yZWdfbmFtZSwgXAo+IC0JCQkgICB2YWwpOyBcCj4gKwloYW50cm9f
cmVnX3dyaXRlX3JlbGF4ZWQodnB1LCBcCj4gKwkJCQkgJmhhbnRyb19nMV9wb3N0cHJvY19yZWdz
LnJlZ19uYW1lLCBcCj4gKwkJCQkgdmFsKTsgXAo+ICB9Cj4gIAo+ICAjZGVmaW5lIFZQVV9QUF9J
Tl9ZVVlWCQkJMHgwCj4gQEAgLTcyLDcgKzcyLDcgQEAgc3RhdGljIHZvaWQgaGFudHJvX3Bvc3Rw
cm9jX2cxX2VuYWJsZShzdHJ1Y3QgaGFudHJvX2N0eCAqY3R4KQo+ICAJZG1hX2FkZHJfdCBkc3Rf
ZG1hOwo+ICAKPiAgCS8qIFR1cm4gb24gcGlwZWxpbmUgbW9kZS4gTXVzdCBiZSBkb25lIGZpcnN0
LiAqLwo+IC0JSEFOVFJPX1BQX1JFR19XUklURV9TKHZwdSwgcGlwZWxpbmVfZW4sIDB4MSk7Cj4g
KwlIQU5UUk9fUFBfUkVHX1dSSVRFKHZwdSwgcGlwZWxpbmVfZW4sIDB4MSk7Cj4gIAo+ICAJc3Jj
X3BwX2ZtdCA9IFZQVV9QUF9JTl9OVjEyOwo+ICAKPiBAQCAtMjQyLDcgKzI0Miw3IEBAIHN0YXRp
YyB2b2lkIGhhbnRyb19wb3N0cHJvY19nMV9kaXNhYmxlKHN0cnVjdCBoYW50cm9fY3R4ICpjdHgp
Cj4gIHsKPiAgCXN0cnVjdCBoYW50cm9fZGV2ICp2cHUgPSBjdHgtPmRldjsKPiAgCj4gLQlIQU5U
Uk9fUFBfUkVHX1dSSVRFX1ModnB1LCBwaXBlbGluZV9lbiwgMHgwKTsKPiArCUhBTlRST19QUF9S
RUdfV1JJVEUodnB1LCBwaXBlbGluZV9lbiwgMHgwKTsKPiAgfQo+ICAKPiAgc3RhdGljIHZvaWQg
aGFudHJvX3Bvc3Rwcm9jX2cyX2Rpc2FibGUoc3RydWN0IGhhbnRyb19jdHggKmN0eCkKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E375BEE49A3
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Aug 2023 12:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3uJu7wJ6APVNsW7WDfDAs53VZDzDf+d/nDWF1fLXOwU=; b=IbPFyy34QLrrfH
	3dBj1O9HD+2PBUgK2iW2gWCH3NbGVN1UL383hJYCe89eZ5k1lCQRtC62RBSJu8fuxD88jZ+g/8PnH
	2g0I1p+O4/jm5eZajH0dAIpr9TKVfMDcQ/aLCK8XPIkig3GRgNWljiOr/3kWC5a9dVxqjjONQLzu2
	UrwXVK4Gpo29MQwLKAtf/vOSp8VcF9wXhpSwmkwV7t8Xkk5FTO4Zm9fS46TYPfEYdOCNf8hL1LDxh
	qDv43ddZrKyXcgXznOAZu3PdpBxeeBIgmeV1EWpsOd7fcMcPq4ZDIkUA4sPe7XKPP8IOHbWJDHito
	PabA23fbSMZW4VWBaUJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qYQvP-00FwGo-1T;
	Tue, 22 Aug 2023 12:55:59 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYQvL-00FwFa-01;
	Tue, 22 Aug 2023 12:55:56 +0000
Received: from [IPV6:2a01:e0a:120:3210:3563:6666:ae23:a4c4] (unknown [IPv6:2a01:e0a:120:3210:3563:6666:ae23:a4c4])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 4F1A2660720C;
	Tue, 22 Aug 2023 13:55:52 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1692708952;
	bh=zXRypGU5FsRfhkFlbeXKbtBhVbkG+5Y4xfAintMySxw=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=ARcDBLfBysC7onBBYtCrspJOHt8EjSFAYAgeuylL762rhXnUM4p5fvNTe7DvIRXPT
	 BSHTBxBQKj1T6VjIPUWTrKxwyTUoLQXcrL8j4Z5ocRtVmmuIpCUrT4P+lahDjflprW
	 LecaZRMcz4V9esjesDljvzQ/XJ+qtAnNsTL3b2ndkaKpdBbtE/zTpCaphUPYhpo9T1
	 gw/LfuDvfdNI6znMPbQze6xvhJPs8I9GTN1hah3HQIOFL7eJ1s4gabuu8aSLCBqV89
	 b+hiQVys4wFCRGeKoYYZab+W1908q6RRSKmhV9D5SqPRbghXNrdpw4/PB5Ap7Irp00
	 khZZl03hn60LA==
Message-ID: <37dec78e-462c-b7a4-1acb-253520e47c1e@collabora.com>
Date: Tue, 22 Aug 2023 14:55:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v4 05/10] media: verisilicon: Store chroma and motion
 vectors offset
Content-Language: en-US
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>, mchehab@kernel.org,
 tfiga@chromium.org, m.szyprowski@samsung.com, ming.qian@nxp.com,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 gregkh@linuxfoundation.org, nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, kernel@collabora.com
References: <20230705121056.37017-1-benjamin.gaignard@collabora.com>
 <20230705121056.37017-6-benjamin.gaignard@collabora.com>
 <1b87f062-9d5e-fa8e-3d3b-e766362c6e3b@xs4all.nl>
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <1b87f062-9d5e-fa8e-3d3b-e766362c6e3b@xs4all.nl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230822_055555_194615_E93763E8 
X-CRM114-Status: GOOD (  19.63  )
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

CkxlIDIxLzA4LzIwMjMgw6AgMTY6NDEsIEhhbnMgVmVya3VpbCBhIMOpY3JpdMKgOgo+IE9uIDA1
LzA3LzIwMjMgMTQ6MTAsIEJlbmphbWluIEdhaWduYXJkIHdyb3RlOgo+PiBTdG9yZSBjb21wdXRl
ZCB2YWx1ZXMgb2YgY2hyb21hIGFuZCBtb3Rpb24gdmVjdG9ycyBvZmZzZXQgYmVjYXVzZQo+PiB0
aGV5IGRlcGVuZHMgb24gd2lkdGggYW5kIGhlaWdodCB2YWx1ZXMgd2hpY2ggY2hhbmdlIGlmIHRo
ZSByZXNvbHV0aW9uCj4+IGNoYW5nZS4KPiBJcyB0aGlzIGEgYnVnIGZpeD8gRG9lcyB0aGlzIHBh
dGNoIGJlbG9uZyBpbiB0aGlzIHNlcmllcz8KPgo+IFNhbWUgYWN0dWFsbHkgZm9yIHRoZSBuZXh0
IGZldyB2ZXJpc2lsaWNvbiBwYXRjaGVzLiBTaG91bGRuJ3QgdGhleSBiZQo+IHBhcnQgb2YgYSBz
ZXBhcmF0ZSAnZml4ZXMnIHBhdGNoIHNlcmllcz8gSXQncyBjb25mdXNpbmcgdG8gc2VlIHRoZW0K
PiBpbiB0aGlzIHNlcmllcy4KClRoZXkgZml4IGJ1Z3MgdGhhdCBoYXBwZW5zIG9ubHkgd2hlbiBW
UDkgcmVzb2x1dGlvbiBjaGFuZ2Ugd2l0aG91dCBkb2luZyBzdHJlYW0gb2ZmL29uCnRoYXQgd2h5
IHRoZXkgYXJlIGluIHRoaXMgc2VyaWVzLgoKVGhpcyBvbmUsIGZvciBleGFtcGxlLCBpcyB1c2Vs
ZXNzIGlmIHRoZSByZXNvbHV0aW9uIGNoYW5nZSBvbiBhIGtleWZyYW1lIGJlY2F1c2UgdGhlCmZy
YW1lIHdpbGwgaGF2ZSB0aGUgc2FtZSByZXNvbHV0aW9uIHRoYW4gdGhlIGN1cnJlbnQgb25lIGJ1
dCBpcyBuZWVkIHRvIHN0b3JlIHJlc29sdXRpb24Kb2YgZWFjaCBmcmFtZXMgaWYgdGhlIHJlc2l6
ZSBoYXBwZW5zIGJldHdlZW4ga2V5ZnJhbWVzLgoKQmVuamFtaW4KCj4KPiBSZWdhcmRzLAo+Cj4g
CUhhbnMKPgo+PiBTaWduZWQtb2ZmLWJ5OiBCZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFtaW4uZ2Fp
Z25hcmRAY29sbGFib3JhLmNvbT4KPj4gLS0tCj4+ICAgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92
ZXJpc2lsaWNvbi9oYW50cm8uaCAgICAgICAgICAgIHwgMiArKwo+PiAgIGRyaXZlcnMvbWVkaWEv
cGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2cyX3ZwOV9kZWMuYyB8IDYgKysrKy0tCj4+ICAg
MiBmaWxlcyBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4+Cj4+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyby5oIGIv
ZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm8uaAo+PiBpbmRleCBjOGEz
Y2YxMGNjNjQuLjUzYmUwMDE0MjQ3MyAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0
Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm8uaAo+PiArKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3Jt
L3ZlcmlzaWxpY29uL2hhbnRyby5oCj4+IEBAIC0zMjAsNiArMzIwLDggQEAgc3RydWN0IGhhbnRy
b192cDlfZGVjb2RlZF9idWZmZXJfaW5mbyB7Cj4+ICAgCS8qIEluZm8gbmVlZGVkIHdoZW4gdGhl
IGRlY29kZWQgZnJhbWUgc2VydmVzIGFzIGEgcmVmZXJlbmNlIGZyYW1lLiAqLwo+PiAgIAl1bnNp
Z25lZCBzaG9ydCB3aWR0aDsKPj4gICAJdW5zaWduZWQgc2hvcnQgaGVpZ2h0Owo+PiArCXNpemVf
dCBjaHJvbWFfb2Zmc2V0Owo+PiArCXNpemVfdCBtdl9vZmZzZXQ7Cj4+ICAgCXUzMiBiaXRfZGVw
dGggOiA0Owo+PiAgIH07Cj4+ICAgCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRm
b3JtL3ZlcmlzaWxpY29uL2hhbnRyb19nMl92cDlfZGVjLmMgYi9kcml2ZXJzL21lZGlhL3BsYXRm
b3JtL3ZlcmlzaWxpY29uL2hhbnRyb19nMl92cDlfZGVjLmMKPj4gaW5kZXggNmZjNGI1NTU1MTdm
Li42ZGIxYzMyZmNlNGQgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVy
aXNpbGljb24vaGFudHJvX2cyX3ZwOV9kZWMuYwo+PiArKysgYi9kcml2ZXJzL21lZGlhL3BsYXRm
b3JtL3ZlcmlzaWxpY29uL2hhbnRyb19nMl92cDlfZGVjLmMKPj4gQEAgLTE1OCw5ICsxNTgsMTEg
QEAgc3RhdGljIHZvaWQgY29uZmlnX291dHB1dChzdHJ1Y3QgaGFudHJvX2N0eCAqY3R4LAo+PiAg
IAo+PiAgIAljaHJvbWFfYWRkciA9IGx1bWFfYWRkciArIGNocm9tYV9vZmZzZXQoY3R4LCBkZWNf
cGFyYW1zKTsKPj4gICAJaGFudHJvX3dyaXRlX2FkZHIoY3R4LT5kZXYsIEcyX09VVF9DSFJPTUFf
QUREUiwgY2hyb21hX2FkZHIpOwo+PiArCWRzdC0+dnA5LmNocm9tYV9vZmZzZXQgPSBjaHJvbWFf
b2Zmc2V0KGN0eCwgZGVjX3BhcmFtcyk7Cj4+ICAgCj4+ICAgCW12X2FkZHIgPSBsdW1hX2FkZHIg
KyBtdl9vZmZzZXQoY3R4LCBkZWNfcGFyYW1zKTsKPj4gICAJaGFudHJvX3dyaXRlX2FkZHIoY3R4
LT5kZXYsIEcyX09VVF9NVl9BRERSLCBtdl9hZGRyKTsKPj4gKwlkc3QtPnZwOS5tdl9vZmZzZXQg
PSBtdl9vZmZzZXQoY3R4LCBkZWNfcGFyYW1zKTsKPj4gICB9Cj4+ICAgCj4+ICAgc3RydWN0IGhh
bnRyb192cDlfcmVmX3JlZyB7Cj4+IEBAIC0xOTUsNyArMTk3LDcgQEAgc3RhdGljIHZvaWQgY29u
ZmlnX3JlZihzdHJ1Y3QgaGFudHJvX2N0eCAqY3R4LAo+PiAgIAlsdW1hX2FkZHIgPSBoYW50cm9f
Z2V0X2RlY19idWZfYWRkcihjdHgsICZidWYtPmJhc2UudmIudmIyX2J1Zik7Cj4+ICAgCWhhbnRy
b193cml0ZV9hZGRyKGN0eC0+ZGV2LCByZWZfcmVnLT55X2Jhc2UsIGx1bWFfYWRkcik7Cj4+ICAg
Cj4+IC0JY2hyb21hX2FkZHIgPSBsdW1hX2FkZHIgKyBjaHJvbWFfb2Zmc2V0KGN0eCwgZGVjX3Bh
cmFtcyk7Cj4+ICsJY2hyb21hX2FkZHIgPSBsdW1hX2FkZHIgKyBidWYtPnZwOS5jaHJvbWFfb2Zm
c2V0Owo+PiAgIAloYW50cm9fd3JpdGVfYWRkcihjdHgtPmRldiwgcmVmX3JlZy0+Y19iYXNlLCBj
aHJvbWFfYWRkcik7Cj4+ICAgfQo+PiAgIAo+PiBAQCAtMjM4LDcgKzI0MCw3IEBAIHN0YXRpYyB2
b2lkIGNvbmZpZ19yZWZfcmVnaXN0ZXJzKHN0cnVjdCBoYW50cm9fY3R4ICpjdHgsCj4+ICAgCWNv
bmZpZ19yZWYoY3R4LCBkc3QsICZyZWZfcmVnc1syXSwgZGVjX3BhcmFtcywgZGVjX3BhcmFtcy0+
YWx0X2ZyYW1lX3RzKTsKPj4gICAKPj4gICAJbXZfYWRkciA9IGhhbnRyb19nZXRfZGVjX2J1Zl9h
ZGRyKGN0eCwgJm12X3JlZi0+YmFzZS52Yi52YjJfYnVmKSArCj4+IC0JCSAgbXZfb2Zmc2V0KGN0
eCwgZGVjX3BhcmFtcyk7Cj4+ICsJCSAgbXZfcmVmLT52cDkubXZfb2Zmc2V0Owo+PiAgIAloYW50
cm9fd3JpdGVfYWRkcihjdHgtPmRldiwgRzJfUkVGX01WX0FERFIoMCksIG12X2FkZHIpOwo+PiAg
IAo+PiAgIAloYW50cm9fcmVnX3dyaXRlKGN0eC0+ZGV2LCAmdnA5X2xhc3Rfc2lnbl9iaWFzLAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

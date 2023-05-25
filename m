Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC543C7EE29
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 May 2023 11:00:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+l19gl4x+yUncqTnF7B6NZ4y41TkherF4CLHH7uChKk=; b=CHWNGgYYPQLgTs
	Knm0Jtf5OwJafPPYRCDS1R4eqiD/zwZoZ6OEB2QuJxk1MnIjGZ4EG9NO7imTV7Wt0cAMjkZroKSkl
	u4O8dGbwwGHagXpCiFleKx/e22tOPhxyT8coZ3Q657rKOa5lAwhf0K7Lu5MwkAO8V80EZoq+AbTcG
	abcNXIpYk+d4AP7717lp4NdIq7c0KKcTUa1msS3Zzn/puSZsAX92Uhv625O3zj35QOCr4Fz+3f2wJ
	zd6XCr/z7oM3JRJ929PqyOIGYqpnq0IGMK3+vHtmLVloKEwnE2RnXHUbVZfzjKA6ljSz9S3uU40Jn
	fG2SPwPQZKcZXXj9JviA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q28hv-00GOgM-0e;
	Thu, 25 May 2023 11:00:35 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q28hs-00GOec-17
	for linux-rockchip@lists.infradead.org;
	Thu, 25 May 2023 11:00:33 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 9EF7A6369C;
	Thu, 25 May 2023 11:00:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E0617C433EF;
	Thu, 25 May 2023 11:00:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685012431;
	bh=oJ6QgPbGXWqRoqlX01O23tO6hItbrjZO+12l/zxII90=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=q+2qRjDKb+rSiGR3JP9GLEgCuUic1R3fHUdw1ErP/R+PcPkw1BFOyuIe6pyFnh/p2
	 P79a5BXsNGnn4BoYpKbmmv+uVomwIaKbx1B/ds4oolpFWgHHvNClzloWoZ7GTH6uQr
	 p/gA8KRJEP2g3pICPKA38Y+NwSSCVvLfQzFBGgQrEm1wojL2MGrJQ2T+m7PdgAcXSr
	 ie81kGfM/a+N6LQw/r3DNaR7bZ7cEQds8+UMTRUSOJPcHcsbARIlnpS1q1ysWE7WqF
	 uUTH8S5I5kBFo+on3XK6HNqOHkZMeS1fQTAgc4rUHgaPMeNpc7c99xmU39nXPG4lV1
	 tOBH9NN9be7Ig==
Date: Thu, 25 May 2023 12:00:26 +0100
From: Lee Jones <lee@kernel.org>
To: Milo Spadacini <milo.spadacini@gmail.com>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] driver: mfd: admit rk805 driver registration without
 interrupt support
Message-ID: <20230525110026.GG9691@google.com>
References: <20230525070011.23761-1-milo.spadacini@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230525070011.23761-1-milo.spadacini@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230525_040032_466311_A3A1E264 
X-CRM114-Status: GOOD (  25.76  )
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

RG8geW91IG1lYW4gIk9taXQiPwoKT24gVGh1LCAyNSBNYXkgMjAyMywgTWlsbyBTcGFkYWNpbmkg
d3JvdGU6Cgo+IHJrODA1IHVzZSBpbnRlcnJ1cHQgb25seSBmb3IgInJrODA4LXJ0YyIgYW5kICJy
azgwNS1wd3JrZXkiIGRyaXZlcnMuCgpSSzgwNSBvbmx5IHVzZXMgaW50ZXJydXB0cyBmb3IgLi4u
Cgo+IE9uIGN1c3RvbSBib2FyZCB0aGVzZSBkcml2ZXJzIGNvdWxkIGJlIG5vdCB1c2VkIGFuZCB0
aGUgaXJxIGdwaW8KCiJib2FyZHMiCiJJUlEgR1BJUXMiCgo+IGNvdWxkIGJlIG5vdCBjb25uZWN0
ZWQuCgoiYXJlIG5vdCBjb25uZWN0ZWQiCgo+IEZvcmNlIHRoZSB1c2FnZSBvZiBhIG5vdCB1c2Vk
IGdwaW8sIHRoYXQgY291bGQgYmUgZmxvYXRpbmcsIGNvdWxkIGNhdXNlCj4gc3B1cmlvdXMgaW50
ZXJydXB0LgoKUGxlYXNlIHJlcGhyYXNlIHRoaXMuICBJIGNhbid0IHF1aXRlIG1ha2UgaXQgb3V0
IHRvIG1ha2Ugc3VnZ2VzdGlvbnMuCgo+IFNpZ25lZC1vZmYtYnk6IE1pbG8gU3BhZGFjaW5pIDxt
aWxvLnNwYWRhY2luaUBnbWFpbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvbWZkL3JrODA4LmMgfCAz
OSArKysrKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5n
ZWQsIDI3IGluc2VydGlvbnMoKyksIDEyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL21mZC9yazgwOC5jIGIvZHJpdmVycy9tZmQvcms4MDguYwo+IGluZGV4IGUwMGRhN2M3
ZTNiMS4uYWUzM2JlOTBiMzEyIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbWZkL3JrODA4LmMKPiAr
KysgYi9kcml2ZXJzL21mZC9yazgwOC5jCj4gQEAgLTY0Myw2ICs2NDMsNyBAQCBNT0RVTEVfREVW
SUNFX1RBQkxFKG9mLCByazgwOF9vZl9tYXRjaCk7Cj4gIHN0YXRpYyBpbnQgcms4MDhfcHJvYmUo
c3RydWN0IGkyY19jbGllbnQgKmNsaWVudCwKPiAgCQkgICAgICAgY29uc3Qgc3RydWN0IGkyY19k
ZXZpY2VfaWQgKmlkKQo+ICB7Cj4gKwlzdHJ1Y3QgaXJxX2RvbWFpbiAqIHJrODA4X2lycV9kb21h
aW4gPSBOVUxMOwoKRHJvcCB0aGUgJyAnIGFmdGVyIHRoZSAnKicuCgo+ICAJc3RydWN0IGRldmlj
ZV9ub2RlICpucCA9IGNsaWVudC0+ZGV2Lm9mX25vZGU7Cj4gIAlzdHJ1Y3Qgcms4MDggKnJrODA4
Owo+ICAJY29uc3Qgc3RydWN0IHJrODA4X3JlZ19kYXRhICpwcmVfaW5pdF9yZWc7Cj4gQEAgLTY5
Miw3ICs2OTMsMTEgQEAgc3RhdGljIGludCByazgwOF9wcm9iZShzdHJ1Y3QgaTJjX2NsaWVudCAq
Y2xpZW50LAo+ICAJCXByZV9pbml0X3JlZyA9IHJrODA1X3ByZV9pbml0X3JlZzsKPiAgCQlucl9w
cmVfaW5pdF9yZWdzID0gQVJSQVlfU0laRShyazgwNV9wcmVfaW5pdF9yZWcpOwo+ICAJCWNlbGxz
ID0gcms4MDVzOwo+IC0JCW5yX2NlbGxzID0gQVJSQVlfU0laRShyazgwNXMpOwo+ICsJCWlmIChj
bGllbnQtPmlycSkKPiArCQkJbnJfY2VsbHMgPSBBUlJBWV9TSVpFKHJrODA1cyk7Cj4gKwkJZWxz
ZQo+ICsJCQlucl9jZWxscyA9IEFSUkFZX1NJWkUocms4MDVzKSAtIDI7CgpXaGF0J3MgMj8gIFBs
ZWFzZSBkZWZpbmUgaXQuCgpEb2VzIHRoaXMgcmVseSBvbiB0aGUgb3JkZXJpbmcgb2Ygcms4MDVz
PyAgU2VlbXMgZnJhZ2lsZS4KCj4gKwo+ICAJCWJyZWFrOwo+ICAJY2FzZSBSSzgwOF9JRDoKPiAg
CQlyazgwOC0+cmVnbWFwX2NmZyA9ICZyazgwOF9yZWdtYXBfY29uZmlnOwo+IEBAIC03MzQsMTkg
KzczOSwyOCBAQCBzdGF0aWMgaW50IHJrODA4X3Byb2JlKHN0cnVjdCBpMmNfY2xpZW50ICpjbGll
bnQsCj4gIAkJcmV0dXJuIFBUUl9FUlIocms4MDgtPnJlZ21hcCk7Cj4gIAl9Cj4gIAo+IC0JaWYg
KCFjbGllbnQtPmlycSkgewo+ICsJaWYgKGNsaWVudC0+aXJxKSB7Cj4gKwo+ICsJCXJldCA9IHJl
Z21hcF9hZGRfaXJxX2NoaXAocms4MDgtPnJlZ21hcCwgY2xpZW50LT5pcnEsCj4gKwkJCQkJICBJ
UlFGX09ORVNIT1QsIC0xLAo+ICsJCQkJCSAgcms4MDgtPnJlZ21hcF9pcnFfY2hpcCwgJnJrODA4
LT5pcnFfZGF0YSk7Cj4gKwkJaWYgKHJldCkgewo+ICsJCQlkZXZfZXJyKCZjbGllbnQtPmRldiwg
IkZhaWxlZCB0byBhZGQgaXJxX2NoaXAgJWRcbiIsIHJldCk7Cj4gKwkJCXJldHVybiByZXQ7Cj4g
KwkJfQo+ICsKPiArCQlyazgwOF9pcnFfZG9tYWluID0gcmVnbWFwX2lycV9nZXRfZG9tYWluKHJr
ODA4LT5pcnFfZGF0YSk7Cj4gKwl9Cj4gKwllbHNlIGlmIChyazgwOC0+dmFyaWFudCA9PSBSSzgw
NV9JRCkKCmVsc2UgZ29lcyBvbiB0aGUgbGluZSBhYm92ZS4KPiArCXsKPiArCQlkZXZfd2Fybigm
Y2xpZW50LT5kZXYsICJTa2lwIGludGVycnVwdCBzdXBwb3J0LCBubyBjb3JlIElSUVxuIik7Cj4g
Kwl9Cj4gKwllbHNlCj4gKwl7Cj4gIAkJZGV2X2VycigmY2xpZW50LT5kZXYsICJObyBpbnRlcnJ1
cHQgc3VwcG9ydCwgbm8gY29yZSBJUlFcbiIpOwo+ICAJCXJldHVybiAtRUlOVkFMOwo+ICAJfQo+
ICAKPiAtCXJldCA9IHJlZ21hcF9hZGRfaXJxX2NoaXAocms4MDgtPnJlZ21hcCwgY2xpZW50LT5p
cnEsCj4gLQkJCQkgIElSUUZfT05FU0hPVCwgLTEsCj4gLQkJCQkgIHJrODA4LT5yZWdtYXBfaXJx
X2NoaXAsICZyazgwOC0+aXJxX2RhdGEpOwo+IC0JaWYgKHJldCkgewo+IC0JCWRldl9lcnIoJmNs
aWVudC0+ZGV2LCAiRmFpbGVkIHRvIGFkZCBpcnFfY2hpcCAlZFxuIiwgcmV0KTsKPiAtCQlyZXR1
cm4gcmV0Owo+IC0JfQo+IC0KPiAgCWZvciAoaSA9IDA7IGkgPCBucl9wcmVfaW5pdF9yZWdzOyBp
KyspIHsKPiAgCQlyZXQgPSByZWdtYXBfdXBkYXRlX2JpdHMocms4MDgtPnJlZ21hcCwKPiAgCQkJ
CQlwcmVfaW5pdF9yZWdbaV0uYWRkciwKPiBAQCAtNzYyLDcgKzc3Niw3IEBAIHN0YXRpYyBpbnQg
cms4MDhfcHJvYmUoc3RydWN0IGkyY19jbGllbnQgKmNsaWVudCwKPiAgCj4gIAlyZXQgPSBkZXZt
X21mZF9hZGRfZGV2aWNlcygmY2xpZW50LT5kZXYsIFBMQVRGT1JNX0RFVklEX05PTkUsCj4gIAkJ
CSAgICAgIGNlbGxzLCBucl9jZWxscywgTlVMTCwgMCwKPiAtCQkJICAgICAgcmVnbWFwX2lycV9n
ZXRfZG9tYWluKHJrODA4LT5pcnFfZGF0YSkpOwo+ICsJCQkgICAgICByazgwOF9pcnFfZG9tYWlu
KTsKPiAgCWlmIChyZXQpIHsKPiAgCQlkZXZfZXJyKCZjbGllbnQtPmRldiwgImZhaWxlZCB0byBh
ZGQgTUZEIGRldmljZXMgJWRcbiIsIHJldCk7Cj4gIAkJZ290byBlcnJfaXJxOwo+IEBAIC03OTYs
NyArODEwLDggQEAgc3RhdGljIHZvaWQgcms4MDhfcmVtb3ZlKHN0cnVjdCBpMmNfY2xpZW50ICpj
bGllbnQpCj4gIHsKPiAgCXN0cnVjdCByazgwOCAqcms4MDggPSBpMmNfZ2V0X2NsaWVudGRhdGEo
Y2xpZW50KTsKPiAgCj4gLQlyZWdtYXBfZGVsX2lycV9jaGlwKGNsaWVudC0+aXJxLCByazgwOC0+
aXJxX2RhdGEpOwo+ICsJaWYgKGNsaWVudC0+aXJxKQo+ICsJCXJlZ21hcF9kZWxfaXJxX2NoaXAo
Y2xpZW50LT5pcnEsIHJrODA4LT5pcnFfZGF0YSk7Cj4gIAo+ICAJLyoqCj4gIAkgKiBwbV9wb3dl
cl9vZmYgbWF5IHBvaW50cyB0byBhIGZ1bmN0aW9uIGZyb20gYW5vdGhlciBtb2R1bGUuCj4gLS0g
Cj4gMi4zNC4xCj4gCgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

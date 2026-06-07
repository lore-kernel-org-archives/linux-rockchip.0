Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37064CD8C88
	for <linux-rockchip@archiver.kernel.org>; Sun,  7 Jun 2026 10:59:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LJJq279ueqWyLUNdS2/+aRYBNthJMZPwY8z8WhXlPVM=; b=nNpVXsHBBp3zYr
	H9y/8kNUs+x8Hdz/7Uu50bCOazB7rTAPkA9r9P/6MopOmidknfx7hiwQkBIkaN/U2o3bJD5jDBT+C
	cz810iLYV38Q0ih2O9JYnu7YAUefpFAxQzERhLjxTbuek6sjDpfMeVadmYmTr82yQEHZDcuOhP/oe
	5Adi2OuU/7l9BDKpOSLtyWkOguKVriKJOaV39EBwwip3rvpPlLhXqiKgqE55r0JtL5f8Jndv2x02E
	KuzTP1lBBbq94UGULrhFD2cu6/+CIuqFvRoNtYt8QCwTVTfiDPqmqOzWNEOJK5kZ9RmZsF2yRAIxj
	7YqtAJkzsHmR/O7w+efg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWBDs-00000002CkP-0mUI;
	Sun, 07 Jun 2026 10:59:20 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWBDp-00000002Cjr-4BbE;
	Sun, 07 Jun 2026 10:59:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=97NZlk873g/D280FN02tm4Cwk27MbU4WZEUElaU0aQM=; b=gmiN5pvjvSslkFeya7EuNki80z
	Qv3sH3Vh16k9AXWcagQLxnhxoDd7f3QtMAvEyrA6paLlnLN0/6ayEGeuifHytKkoxXhFdw8XiKrDh
	T9130QoSZa0s2glYzMT2/e/bgrOd9PynunSBzAW7XIvhvyzXa90BSEyzko4omuBcHEY22T2pbb5IV
	G+lE+ZaEXoUOse9OZTRVJTQQmEM2+I2ffXf/HWOUcUwug/lbNm695Cl8qRJGbFvyjLAfcuKxB7glf
	DmiY11iAM9YRkxRV2u0XE88uTgbvharrnzIXPXNRWtq7u/f8GX50f1b0wYPZJxR4PwH4FSYRSGuuV
	2aALXJDA==;
From: Heiko Stuebner <heiko@sntech.de>
To: Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Diogo Silva <diogompaissilva@gmail.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Diogo Silva <diogompaissilva@gmail.com>
Subject: Re: [PATCH] drm/rockchip: dsi: Open-code drm_simple_encoder_init()
Date: Sun, 07 Jun 2026 12:59:00 +0200
Message-ID: <5277524.h16uAIiOU7@phil>
In-Reply-To: <20260604123224.192543-2-diogompaissilva@gmail.com>
References: <20260604123224.192543-2-diogompaissilva@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260607_035918_138693_B7F69F41 
X-CRM114-Status: GOOD (  19.34  )
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

SGkgRGllZ28sCgpBbSBEb25uZXJzdGFnLCA0LiBKdW5pIDIwMjYsIDE0OjMyOjI1IE1pdHRlbGV1
cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgRGlvZ28gU2lsdmE6Cj4gUmVtb3ZlIHRoZSBk
ZXBlbmRlbmN5IG9uIGRybV9zaW1wbGVfa21zX2hlbHBlciBieSBvcGVuLWNvZGluZyB0aGUKPiBk
cm1fc2ltcGxlX2VuY29kZXJfaW5pdCBjYWxsLgoKdGhpcyBkZXNjcmlwdGlvbiBpcyBtaXNzaW5n
IGEgcmF0aW9uYWxlLgoKTG9va2luZyBhdCB0aGUgZHJtIGdpdCBoaXN0b3J5LCBJIGd1ZXNzIGhl
cmUgeW91IGNvdWxkIGFkZCBhIHNlY29uZApwYXJhZ3JhcGgsIHdpdGggc29tZXRoaW5nIGxpa2U6
CgotLS0tLS0tLS0tLSA4PCAtLS0tLS0tLS0tLQpUaGUgaGVscGVycyBoYXZlIGJlZW4gZGVwcmVj
YXRlZCBmb3IgeWVhcnMgYXMgdGhleSBvbmx5IGFkZCBhbiBhbgppbnRlcm1lZGlhdGUgbGF5ZXIg
YmV0d2VlbiBhdG9taWMgbW9kZXNldHRpbmcgYW5kIHRoZSBEUk0gZHJpdmVyLgotLS0tLS0tLS0t
LSA4PCAtLS0tLS0tLS0tLQoKU2hhbWVsZXNzbHkgc3RvbGVuIGZyb20gdGhlIFRvZG8gaXRlbSA7
LSkKCgo+IFNpZ25lZC1vZmYtYnk6IERpb2dvIFNpbHZhIDxkaW9nb21wYWlzc2lsdmFAZ21haWwu
Y29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHctbWlwaS1kc2ktcm9ja2No
aXAuYyB8IDkgKysrKysrKy0tCgpBbnkgcmVhc29uIGZvciBvbmx5IGNoYW5naW5nIHRoZSBEU0kg
ZHJpdmVyPwoKTG9va2luZyBhdCBbMF0gYSBudW1iZXIgb2YgdGhlIFJvY2tjaGlwIGRyaXZlcnMg
dXNlIHRoZSBzYW1lIHBhdHRlcm46Ci0gZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2FuYWxvZ2l4
X2RwLXJvY2tjaGlwLmMKLSBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvY2RuLWRwLWNvcmUuYwot
IGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9kdy1taXBpLWRzaS1yb2NrY2hpcC5jCi0gZHJpdmVy
cy9ncHUvZHJtL3JvY2tjaGlwL2R3LW1pcGktZHNpMi1yb2NrY2hpcC5jCi0gZHJpdmVycy9ncHUv
ZHJtL3JvY2tjaGlwL2R3X2hkbWktcm9ja2NoaXAuYwotIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hp
cC9kd19oZG1pX3FwLXJvY2tjaGlwLmMKLSBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcmszMDY2
X2hkbWkuYwotIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9sdmRzLmMKLSBkcml2
ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfcmdiLmMKCllvdSBjYW4ganVzdCBkbyBhbGwg
Um9ja2NoaXAgb25lcyAtIGV2ZW4gaW4gb25lIHBhdGNoIEkgdGhpbmsgOi0pIC4KCgpUaGFua3MK
SGVpa28KClswXSBodHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51eC92Ny4xLXJjNi9BL2lk
ZW50L2RybV9zaW1wbGVfZW5jb2Rlcl9pbml0CgoKPiAgMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0
aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L3JvY2tjaGlwL2R3LW1pcGktZHNpLXJvY2tjaGlwLmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2No
aXAvZHctbWlwaS1kc2ktcm9ja2NoaXAuYwo+IGluZGV4IDM1NDdkOTFiMjVkMy4uYTA5YjM4MmQy
MDhlIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9kdy1taXBpLWRzaS1y
b2NrY2hpcC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3LW1pcGktZHNpLXJv
Y2tjaGlwLmMKPiBAQCAtMjUsNyArMjUsNiBAQAo+ICAjaW5jbHVkZSA8ZHJtL2RybV9taXBpX2Rz
aS5oPgo+ICAjaW5jbHVkZSA8ZHJtL2RybV9vZi5oPgo+ICAjaW5jbHVkZSA8ZHJtL2RybV9wcmlu
dC5oPgo+IC0jaW5jbHVkZSA8ZHJtL2RybV9zaW1wbGVfa21zX2hlbHBlci5oPgo+ICAKPiAgI2lu
Y2x1ZGUgInJvY2tjaGlwX2RybV9kcnYuaCIKPiAgCj4gQEAgLTgyNSw2ICs4MjQsMTAgQEAgc3Rh
dGljIHZvaWQgZHdfbWlwaV9kc2lfZW5jb2Rlcl9lbmFibGUoc3RydWN0IGRybV9lbmNvZGVyICpl
bmNvZGVyKQo+ICAJY2xrX2Rpc2FibGVfdW5wcmVwYXJlKGRzaS0+Z3JmX2Nsayk7Cj4gIH0KPiAg
Cj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX2VuY29kZXJfZnVuY3MgZHdfbWlwaV9kc2lfZW5j
b2Rlcl9mdW5jcyA9IHsKPiArCS5kZXN0cm95ID0gZHJtX2VuY29kZXJfY2xlYW51cCwKPiArfTsK
PiArCj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX2VuY29kZXJfaGVscGVyX2Z1bmNzCj4gIGR3
X21pcGlfZHNpX2VuY29kZXJfaGVscGVyX2Z1bmNzID0gewo+ICAJLmF0b21pY19jaGVjayA9IGR3
X21pcGlfZHNpX2VuY29kZXJfYXRvbWljX2NoZWNrLAo+IEBAIC04NDAsNyArODQzLDkgQEAgc3Rh
dGljIGludCByb2NrY2hpcF9kc2lfZHJtX2NyZWF0ZV9lbmNvZGVyKHN0cnVjdCBkd19taXBpX2Rz
aV9yb2NrY2hpcCAqZHNpLAo+ICAJZW5jb2Rlci0+cG9zc2libGVfY3J0Y3MgPSBkcm1fb2ZfZmlu
ZF9wb3NzaWJsZV9jcnRjcyhkcm1fZGV2LAo+ICAJCQkJCQkJICAgICBkc2ktPmRldi0+b2Zfbm9k
ZSk7Cj4gIAo+IC0JcmV0ID0gZHJtX3NpbXBsZV9lbmNvZGVyX2luaXQoZHJtX2RldiwgZW5jb2Rl
ciwgRFJNX01PREVfRU5DT0RFUl9EU0kpOwo+ICsJcmV0ID0gZHJtX2VuY29kZXJfaW5pdChkcm1f
ZGV2LCBlbmNvZGVyLAo+ICsJCQkJJmR3X21pcGlfZHNpX2VuY29kZXJfZnVuY3MsCj4gKwkJCQlE
Uk1fTU9ERV9FTkNPREVSX0RTSSwgTlVMTCk7Cj4gIAlpZiAocmV0KSB7Cj4gIAkJRFJNX0VSUk9S
KCJGYWlsZWQgdG8gaW5pdGlhbGl6ZSBlbmNvZGVyIHdpdGggZHJtXG4iKTsKPiAgCQlyZXR1cm4g
cmV0Owo+IAoKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK

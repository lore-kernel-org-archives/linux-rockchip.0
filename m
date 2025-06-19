Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB40CC7115A
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Jun 2025 09:50:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oNL2nUTk62tEIGIOQnVCRb3SBRfDzuUYBvdRfTxVmAA=; b=2XXV42nnFbBRH5
	Tl7Mo1zsrWenjZBuZyCJcj2Mb8rEUt8SUJU0l8xXEQfc6Qv9sBTiG1miihanHZSEFQfYBaoDKfMxX
	E5RO91wvoP9I8ywNK6JyoP+XdE7jlWCAcVm6rMBmzikMjzAKXxO1n5dNVscH7x9A50QOfssFSLdVe
	E1sxz9R7KWT6UQa/38cLbREvgR6Zt+8ZGOtkX8EopGE8GKvZX+WZuxP9ST7dn1GXNatDV0wGRaz4l
	/U73JsXna7U4aeSsTDti6TmwW/ViA9nc+WFmDvXnp3nmt+pHeNLAQluOM6qTB29AYL+TUIV+2vz9l
	Qw0oK05C4xK+n0apv7lQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSBuX-0000000CfiX-018O;
	Thu, 19 Jun 2025 09:50:21 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSB2o-0000000CVav-3ktq;
	Thu, 19 Jun 2025 08:54:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=eD7eXQjCVZXrASkEWcilBg8DLF0GyjTxOwYQy8veqf8=; b=o/6iUb+ZXais31yF8EysEgF4nP
	6sr4Vg/Z4rY9ovh5IfCwzyhKZLARasyvwvWzjrhIYyyxi94HFmFUF14PJKRMupQZJHu1sLL8CP7/9
	SECVU1JfQoHKkLSmOR3KKA0UQEUmmCIT67OvC71waWiCBcHaOdGuMGxtQZoPF1BAOKLeLdZw+Zsyu
	k4jFb8axA9Owba/EOT3Sh7ZoDF4e1T8qJFLkArK4D9dl4XdvWvvvw/bYZuLkL7vKH8csHF98J6NmP
	WGgyR6kjpFPZLcAFtdmlZLcItUXUz7oMJQHdT/v5gBQLkHy+wTzvafJZPhcpxyKw8tMESvkTq17my
	Fnly6pzQ==;
Received: from 85-207-219-154.static.bluetone.cz ([85.207.219.154] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uSB2j-00079q-Db; Thu, 19 Jun 2025 10:54:45 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>,
 Orson Zhai <orsonzhai@gmail.com>,
 Baolin Wang <baolin.wang@linux.alibaba.com>,
 Chunyan Zhang <zhang.lyra@gmail.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>, Bartosz Golaszewski <brgl@bgdev.pl>
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: Re: [PATCH v2 10/12] gpio: rockchip: use new GPIO line value setter callbacks
Date: Thu, 19 Jun 2025 10:54:44 +0200
Message-ID: <15862883.tv2OnDr8pf@phil>
In-Reply-To: <20250619-gpiochip-set-rv-gpio-v2-10-74abf689fbd8@linaro.org>
References: <20250619-gpiochip-set-rv-gpio-v2-0-74abf689fbd8@linaro.org>
 <20250619-gpiochip-set-rv-gpio-v2-10-74abf689fbd8@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250619_015450_934373_4663A52A 
X-CRM114-Status: GOOD (  17.32  )
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

QW0gRG9ubmVyc3RhZywgMTkuIEp1bmkgMjAyNSwgMTA6MzM6MjMgTWl0dGVsZXVyb3DDpGlzY2hl
IFNvbW1lcnplaXQgc2NocmllYiBCYXJ0b3N6IEdvbGFzemV3c2tpOgo+IEZyb206IEJhcnRvc3og
R29sYXN6ZXdza2kgPGJhcnRvc3ouZ29sYXN6ZXdza2lAbGluYXJvLm9yZz4KPiAKPiBzdHJ1Y3Qg
Z3Bpb19jaGlwIG5vdyBoYXMgY2FsbGJhY2tzIGZvciBzZXR0aW5nIGxpbmUgdmFsdWVzIHRoYXQg
cmV0dXJuCj4gYW4gaW50ZWdlciwgYWxsb3dpbmcgdG8gaW5kaWNhdGUgZmFpbHVyZXMuIENvbnZl
cnQgdGhlIGRyaXZlciB0byB1c2luZwo+IHRoZW0uCj4gCj4gU2lnbmVkLW9mZi1ieTogQmFydG9z
eiBHb2xhc3pld3NraSA8YmFydG9zei5nb2xhc3pld3NraUBsaW5hcm8ub3JnPgoKUmV2aWV3ZWQt
Ynk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+CgoKCj4gLS0tCj4gIGRyaXZlcnMv
Z3Bpby9ncGlvLXJvY2tjaGlwLmMgfCA4ICsrKysrLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA1IGlu
c2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3Bp
by9ncGlvLXJvY2tjaGlwLmMgYi9kcml2ZXJzL2dwaW8vZ3Bpby1yb2NrY2hpcC5jCj4gaW5kZXgg
NjQ3MDBhMDAzZjlhMTc5NDdkZDM4YmFlYTIzYTA2NmU4YzA1N2NhZi4uZWNkNjBmZjllMWRkMWEw
OTBiZmFkMjA0YzhiODZjNGQ3ZmI2OGNlNyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwaW8vZ3Bp
by1yb2NrY2hpcC5jCj4gKysrIGIvZHJpdmVycy9ncGlvL2dwaW8tcm9ja2NoaXAuYwo+IEBAIC0x
NzcsOCArMTc3LDggQEAgc3RhdGljIGludCByb2NrY2hpcF9ncGlvX3NldF9kaXJlY3Rpb24oc3Ry
dWN0IGdwaW9fY2hpcCAqY2hpcCwKPiAgCXJldHVybiAwOwo+ICB9Cj4gIAo+IC1zdGF0aWMgdm9p
ZCByb2NrY2hpcF9ncGlvX3NldChzdHJ1Y3QgZ3Bpb19jaGlwICpnYywgdW5zaWduZWQgaW50IG9m
ZnNldCwKPiAtCQkJICAgICAgaW50IHZhbHVlKQo+ICtzdGF0aWMgaW50IHJvY2tjaGlwX2dwaW9f
c2V0KHN0cnVjdCBncGlvX2NoaXAgKmdjLCB1bnNpZ25lZCBpbnQgb2Zmc2V0LAo+ICsJCQkgICAg
IGludCB2YWx1ZSkKPiAgewo+ICAJc3RydWN0IHJvY2tjaGlwX3Bpbl9iYW5rICpiYW5rID0gZ3Bp
b2NoaXBfZ2V0X2RhdGEoZ2MpOwo+ICAJdW5zaWduZWQgbG9uZyBmbGFnczsKPiBAQCAtMTg2LDYg
KzE4Niw4IEBAIHN0YXRpYyB2b2lkIHJvY2tjaGlwX2dwaW9fc2V0KHN0cnVjdCBncGlvX2NoaXAg
KmdjLCB1bnNpZ25lZCBpbnQgb2Zmc2V0LAo+ICAJcmF3X3NwaW5fbG9ja19pcnFzYXZlKCZiYW5r
LT5zbG9jaywgZmxhZ3MpOwo+ICAJcm9ja2NoaXBfZ3Bpb193cml0ZWxfYml0KGJhbmssIG9mZnNl
dCwgdmFsdWUsIGJhbmstPmdwaW9fcmVncy0+cG9ydF9kcik7Cj4gIAlyYXdfc3Bpbl91bmxvY2tf
aXJxcmVzdG9yZSgmYmFuay0+c2xvY2ssIGZsYWdzKTsKPiArCj4gKwlyZXR1cm4gMDsKPiAgfQo+
ICAKPiAgc3RhdGljIGludCByb2NrY2hpcF9ncGlvX2dldChzdHJ1Y3QgZ3Bpb19jaGlwICpnYywg
dW5zaWduZWQgaW50IG9mZnNldCkKPiBAQCAtMzI1LDcgKzMyNyw3IEBAIHN0YXRpYyBpbnQgcm9j
a2NoaXBfZ3Bpb190b19pcnEoc3RydWN0IGdwaW9fY2hpcCAqZ2MsIHVuc2lnbmVkIGludCBvZmZz
ZXQpCj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZ3Bpb19jaGlwIHJvY2tjaGlwX2dwaW9saWJfY2hp
cCA9IHsKPiAgCS5yZXF1ZXN0ID0gZ3Bpb2NoaXBfZ2VuZXJpY19yZXF1ZXN0LAo+ICAJLmZyZWUg
PSBncGlvY2hpcF9nZW5lcmljX2ZyZWUsCj4gLQkuc2V0ID0gcm9ja2NoaXBfZ3Bpb19zZXQsCj4g
Kwkuc2V0X3J2ID0gcm9ja2NoaXBfZ3Bpb19zZXQsCj4gIAkuZ2V0ID0gcm9ja2NoaXBfZ3Bpb19n
ZXQsCj4gIAkuZ2V0X2RpcmVjdGlvbgk9IHJvY2tjaGlwX2dwaW9fZ2V0X2RpcmVjdGlvbiwKPiAg
CS5kaXJlY3Rpb25faW5wdXQgPSByb2NrY2hpcF9ncGlvX2RpcmVjdGlvbl9pbnB1dCwKPiAKPiAK
CgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==

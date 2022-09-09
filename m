Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08FD0ECAAD3
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Sep 2022 08:57:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Mime-Version:References:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=eKqkg/vuQfR87Sjawwz5O0x6PogFt0IUIJUOJcTnIy0=; b=qCclU/rGfBdBZn
	5b3D6s1AG8uxkyoc5qoNFVOGQijN5OALz7n98lbj0TD3VZEgR4/YEQjMfBgyKcQ3FJngVUJqR8VZH
	0Jd6gxihoikC2pl/RI8wM7YBHR+STvM7kAdSIhlMC62QZ5Qjh1JDHwl3PIpBcgGbip2Bx1RcrFw+J
	hM8D0rorBIDphebfkb7bOdYgO9v+hLATnjSujg9y8jsEQQC0QhlnjB8hWNzqJlhuFy7QR9ygcXF4n
	yS+/c+CIo/kM2Dx99beagVDPMMBuD3o03h8e1wapcz8d9Oztg19jA6QcsioXil4vcoEo9f4UjhoTY
	8zb0g0L5oPtDAUq9fWVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWZpX-00Ep0h-LN; Fri, 09 Sep 2022 08:57:43 +0000
Received: from mail-m11883.qiye.163.com ([115.236.118.83])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWZpS-00Eow6-TZ
	for linux-rockchip@lists.infradead.org; Fri, 09 Sep 2022 08:57:41 +0000
Received: from DESKTOP-SG5V5EA (unknown [58.22.7.114])
	by mail-m11883.qiye.163.com (Hmail) with ESMTPA id 2296C84056B;
	Fri,  9 Sep 2022 16:57:33 +0800 (CST)
Date: Fri, 9 Sep 2022 16:57:33 +0800
From: "jay.xu@rock-chips.com" <jay.xu@rock-chips.com>
To: "Andy Shevchenko" <andriy.shevchenko@linux.intel.com>
Cc: =?utf-8?B?SGVpa28gU3TDvGJuZXI=?= <heiko@sntech.de>, 
	linus.walleij <linus.walleij@linaro.org>, 
	"Bartosz Golaszewski" <brgl@bgdev.pl>, 
	linux-gpio <linux-gpio@vger.kernel.org>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Subject: Re: Re: [PATCH v4] gpio: rockchip: support acpi
References: <20220908072621.3415957-1-jay.xu@rock-chips.com>, 
	<YxnhPd9CnjfcJfzR@smile.fi.intel.com>
X-Priority: 3
X-Has-Attach: no
X-Mailer: Foxmail 7.2.19.158[cn]
Mime-Version: 1.0
Message-ID: <2022090916573297174563@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFJSktLSjdXWS1ZQUlXWQ8JGhUIEh9ZQVlCS0MfVh4dShoYS0kdQ0NJGFUTARMWGhIXJB
	QOD1lXWRgSC1lBWU5DVUlJVUxVSkpPWVdZFhoPEhUdFFlBWU9LSFVKSktITkhVSktLWQY+
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Kzo6USo6Oj0YOjYRHh0yVhcC
	LyEaCwhVSlVKTU1JTEpIQ05ITElNVTMWGhIXVREaAlUDDjsJFBgQVhgTEgsIVRgUFkVZV1kSC1lB
	WU5DVUlJVUxVSkpPWVdZCAFZQU5PTEM3Bg++
X-HM-Tid: 0a832177f5572eb8kusn2296c84056b
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_015739_125811_052F6376 
X-CRM114-Status: GOOD (  20.60  )
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

SGkgQW5keQoKLS0tLS0tLS0tLS0tLS0KamF5Lnh1QHJvY2stY2hpcHMuY29tCj5PbiBUaHUsIFNl
cCAwOCwgMjAyMiBhdCAwMzoyNjoyMVBNICswODAwLCBKaWFucXVuIFh1IHdyb3RlOgo+PiBUaGlz
IHBhdGNoIGZpeCBkcml2ZXIgdG8gc3VwcG9ydCBhY3BpIGJ5IGZvbGxvd2luZyBjaGFuZ2VzOgo+
PsKgICogc3VwcG9ydCBnZXQgZ3BpbyBiYW5rIG51bWJlciBmcm9tIHVpZCBvZiBhY3BpCj4+wqAg
KiB0cnkgdG8gZ2V0IGNsb2NrcyBmb3IgZHQgbm9kZXMgYnV0IGZvciBhY3BpCj4+wqAgKiB0cnkg
dG8gZ2V0IGNsb2NrcyBieSBhIGNoYXIgaWQgZmlyc3QsIGlmIGEgZHQgcGF0Y2ggYXBwbGllZAo+
Cj4uLi4KPgo+PiArCWlmICghZ2MtPmxhYmVsKSB7Cj4KPlNlZSBiZWxvdy4KPgo+PiArCWdjLT5s
YWJlbCA9IGthc3ByaW50ZihHRlBfS0VSTkVMLCAiZ3BpbyVkIiwgYmFuay0+YmFua19udW0pOwo+
PiArCWlmICghZ2MtPmxhYmVsKQo+PiArCXJldHVybiAtRU5PTUVNOwo+PiArCX0KPgo+Li4uCj4K
Pj4gLQkvKgo+PiAtCSogRm9yIERldmljZVRyZWUtc3VwcG9ydGVkIHN5c3RlbXMsIHRoZSBncGlv
IGNvcmUgY2hlY2tzIHRoZQo+PiAtCSogcGluY3RybCdzIGRldmljZSBub2RlIGZvciB0aGUgImdw
aW8tcmFuZ2VzIiBwcm9wZXJ0eS4KPj4gLQkqIElmIGl0IGlzIHByZXNlbnQsIGl0IHRha2VzIGNh
cmUgb2YgYWRkaW5nIHRoZSBwaW4gcmFuZ2VzCj4+IC0JKiBmb3IgdGhlIGRyaXZlci4gSW4gdGhp
cyBjYXNlIHRoZSBkcml2ZXIgY2FuIHNraXAgYWhlYWQuCj4+IC0JKgo+PiAtCSogSW4gb3JkZXIg
dG8gcmVtYWluIGNvbXBhdGlibGUgd2l0aCBvbGRlciwgZXhpc3RpbmcgRGV2aWNlVHJlZQo+PiAt
CSogZmlsZXMgd2hpY2ggZG9uJ3Qgc2V0IHRoZSAiZ3Bpby1yYW5nZXMiIHByb3BlcnR5IG9yIHN5
c3RlbXMgdGhhdAo+PiAtCSogdXRpbGl6ZSBBQ1BJIHRoZSBkcml2ZXIgaGFzIHRvIGNhbGwgZ3Bp
b2NoaXBfYWRkX3Bpbl9yYW5nZSgpLgo+PiAtCSovCj4KPldoeSBkaWQgeW91IHJlbW92ZSB0aGlz
IGNvbW1lbnQ/IEl0J3MgZXhhY3RseSBhbiBhbnN3ZXIgdG8gd2hhdCBJIHdhcyBhc2tpbmcuIApJ
dCdzIGEgbWlzdGFrZSwgSSB3aWxsIHJlc3RvcmUgdGhpcyBjb21tZW50IGluIG5leHQgdmVyc2lv
biBwYXRjaC4KCj4KPj4gKwlpZiAoIWRldmljZV9wcm9wZXJ0eV9yZWFkX2Jvb2woYmFuay0+ZGV2
LCAiZ3Bpby1yYW5nZXMiKSAmJiBwY3RsZGV2KSB7Cj4+wqAgcmV0ID0gZ3Bpb2NoaXBfYWRkX3Bp
bl9yYW5nZShnYywgZGV2X25hbWUocGN0bGRldi0+ZGV2KSwgMCwKPj7CoCDCoMKgwqDCoCBnYy0+
YmFzZSwgZ2MtPm5ncGlvKTsKPj7CoCBpZiAocmV0KSB7Cj4+wqAgZGV2X2VycihiYW5rLT5kZXYs
ICJGYWlsZWQgdG8gYWRkIHBpbiByYW5nZVxuIik7Cj4+IC0JZ290byBmYWlsOwo+PiArCWdvdG8g
ZXJyX3JlbW92ZTsKPj7CoCB9Cj4+wqAgfQo+Cj4uLi4KPgo+PiArCWlmICghYmFuay0+bmFtZSkK
Pgo+SXQncyBub3Qgb2J2aW91cyBjaGVjayBmb3IgdGhpcy4gUGVyaGFwcyB5b3UgY2FuIHN5bmNo
cm9uaXplIGFib3ZlIHRvIGhhdmUKPnRoZSBzYW1lIGNoZWNrIGFuZCBhZGQgYSBjb21tZW50IHdo
eSBiYW5rLT5uYW1lIHByZXNlbmNlIGd1YXJhbnRlZXMgdGhhdAo+bGFiZWwgd2Fzbid0IGFsbG9j
YXRlZCBieSB1cyBoZXJlLgo+Cj5PVE9ILCB3aHkgbm90IHRvIHVzZSBkZXZtX2thc3ByaW50Zigp
PyAKR290IGl0Cj4KPj4gKwlrZnJlZShnYy0+bGFiZWwpOwo+Cj4uLi4KPgo+PiArc3RhdGljIGlu
dCByb2NrY2hpcF9ncGlvX2dldF9jbG9ja3Moc3RydWN0IHJvY2tjaGlwX3Bpbl9iYW5rICpiYW5r
KQo+PiArewo+PiArCXN0cnVjdCBkZXZpY2UgKmRldiA9IGJhbmstPmRldjsKPj4gKwlzdHJ1Y3Qg
Zndub2RlX2hhbmRsZSAqZndub2RlID0gZGV2X2Z3bm9kZShkZXYpOwo+PiArCWludCByZXQ7Cj4+
ICsKPj4gKwlpZiAoIWlzX29mX25vZGUoZndub2RlKSkKPj4gKwlyZXR1cm4gMDsKPj4gKwo+PiAr
CWJhbmstPmNsayA9IGRldm1fY2xrX2dldChkZXYsICJidXMiKTsKPj4gKwlpZiAoSVNfRVJSKGJh
bmstPmNsaykpIHsKPj4gKwliYW5rLT5jbGsgPSBvZl9jbGtfZ2V0KHRvX29mX25vZGUoZndub2Rl
KSwgMCk7Cj4+ICsJaWYgKElTX0VSUihiYW5rLT5jbGspKSB7Cj4+ICsJZGV2X2VycihkZXYsICJm
YWlsIHRvIGdldCBhcGIgY2xvY2tcbiIpOwo+PiArCXJldHVybiBQVFJfRVJSKGJhbmstPmNsayk7
Cj4+ICsJfQo+PiArCX0KPj4gKwo+PiArCXJldCA9IGNsa19wcmVwYXJlX2VuYWJsZShiYW5rLT5j
bGspOwo+PiArCWlmIChyZXQgPCAwKQo+PiArCXJldHVybiByZXQ7Cj4+ICsKPj4gKwliYW5rLT5k
Yl9jbGsgPSBkZXZtX2Nsa19nZXQoZGV2LCAiZGIiKTsKPj4gKwlpZiAoSVNfRVJSKGJhbmstPmRi
X2NsaykpIHsKPj4gKwliYW5rLT5kYl9jbGsgPSBvZl9jbGtfZ2V0KHRvX29mX25vZGUoZndub2Rl
KSwgMSk7Cj4+ICsJaWYgKElTX0VSUihiYW5rLT5kYl9jbGspKQo+PiArCWJhbmstPmRiX2NsayA9
IE5VTEw7Cj4+ICsJfQo+PiArCj4+ICsJcmV0ID0gY2xrX3ByZXBhcmVfZW5hYmxlKGJhbmstPmRi
X2Nsayk7Cj4+ICsJaWYgKHJldCA8IDApIHsKPgo+PiArCWNsa19kaXNhYmxlX3VucHJlcGFyZShi
YW5rLT5jbGspOwo+Cj5Zb3UgY2FuJ3QgbWl4IGRldm1fIHdpdGggbm9uLWRldm1fIGNhbGxzLgo+
IApPa2F5LCBJIGFkZCAnY2xvY2stbmFtZXMnIHByb3BlcnR5IGZvciBhbGwgZXhpc3RlZCByZWxh
dGVkIGR0IGZpbGVzIGFuZCBmaXggZHJpdmVyIHRvIG9ubHkgdXNlCmRldm1fY2xrX2dldCgpLCBJ
IHB1c2ggYSB2ZXJzaW9uIHBsZWFzZSBoZWxwIHRvIHJldmlldwoKPj4gKwlyZXR1cm4gcmV0Owo+
PiArCX0KPgo+Li4uCj4KPj4gKwlpZiAoIWJhbmstPm5hbWUpCj4+ICsJa2ZyZWUoZ2MtPmxhYmVs
KTsKPgo+QXMgcGVyIGFib3ZlLgo+Cj4tLQo+V2l0aCBCZXN0IFJlZ2FyZHMsCj5BbmR5IFNoZXZj
aGVua28KPgo+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF97EC38145
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Sep 2022 07:24:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Mime-Version:References:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=VAWt5qAW46BZ/3HzAUgV0fAdkO2/zMlVff/QA9BMXHU=; b=XMsG2dwEBnmGGb
	C2JXrZAo7yrwhC2x9YBrTA5yoa+Yg4OAHC7C9I8v/jm4vmdXY7sKv28MTyHaAoAX0UEOMA8OaoiIw
	ZkGIX9SwTZ+DymfCWaDtEpPU4uS503pQcn1PXUK8zicC+oRYJ4x6BehKT1jQPk+KYl7uDITQoQAYJ
	7AvmzOxh8LnYi28OM2p2p6QbAceYm7waw6O5wMk4/U99vlJKQamvdSit2wjhQap3Z9zhRgN1zYZet
	oDLqN3p7x4HUilIDAjI1kBv0KWRcLMo8/QaBIs35gSXDy8pMPyBEiUObB7YJbNjf7qedem+11vY1M
	fOXJLcqRgpN7GccHeh0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWBtM-000Qog-01; Thu, 08 Sep 2022 07:24:04 +0000
Received: from mail-m11873.qiye.163.com ([115.236.118.73])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWBtH-000QnO-Iz
	for linux-rockchip@lists.infradead.org; Thu, 08 Sep 2022 07:24:01 +0000
Received: from DESKTOP-SG5V5EA (unknown [58.22.7.114])
	by mail-m11873.qiye.163.com (Hmail) with ESMTPA id 9D25F9004B0;
	Thu,  8 Sep 2022 15:23:51 +0800 (CST)
Date: Thu, 8 Sep 2022 15:23:51 +0800
From: "jay.xu@rock-chips.com" <jay.xu@rock-chips.com>
To: "Andy Shevchenko" <andriy.shevchenko@linux.intel.com>
Cc: =?utf-8?B?SGVpa28gU3TDvGJuZXI=?= <heiko@sntech.de>, 
	linus.walleij <linus.walleij@linaro.org>, 
	"Bartosz Golaszewski" <brgl@bgdev.pl>, 
	linux-gpio <linux-gpio@vger.kernel.org>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Subject: Re: Re: [PATCH v3 RESEND] gpio: rockchip: support acpi
References: <20220907092722.3333752-1-jay.xu@rock-chips.com>, 
	<YxitNjAcb5RsKUWT@smile.fi.intel.com>
X-Priority: 3
X-Has-Attach: no
X-Mailer: Foxmail 7.2.19.158[cn]
Mime-Version: 1.0
Message-ID: <2022090815235138865859@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFJSktLSjdXWS1ZQUlXWQ8JGhUIEh9ZQVlDGk1NVh9NSx4aSkIfGE9CSlUTARMWGhIXJB
	QOD1lXWRgSC1lBWU5DVUlJVUxVSkpPWVdZFhoPEhUdFFlBWU9LSFVKSktISkNVSktLWQY+
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Ohw6PSo*HT0qKjBDSxcUNxIv
	Fi9PCkpVSlVKTU1JTUlKQ0hJSUlKVTMWGhIXVREaAlUDDjsJFBgQVhgTEgsIVRgUFkVZV1kSC1lB
	WU5DVUlJVUxVSkpPWVdZCAFZQU1LTU03Bg++
X-HM-Tid: 0a831bfbd2672eafkusn9d25f9004b0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220908_002359_913009_D877C37A 
X-CRM114-Status: GOOD (  17.27  )
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

SGnCoEFuZHkKCi0tLS0tLS0tLS0tLS0tCmpheS54dUByb2NrLWNoaXBzLmNvbQo+T24gV2VkLCBT
ZXAgMDcsIDIwMjIgYXQgMDU6Mjc6MjJQTSArMDgwMCwgSmlhbnF1biBYdSB3cm90ZToKPj4gVGhp
cyBwYXRjaCBmaXggZHJpdmVyIHRvIHN1cHBvcnQgYWNwaSBieSBmb2xsb3dpbmcgY2hhbmdlczoK
Pj7CoCAqIHN1cHBvcnQgZ2V0IGdwaW8gYmFuayBudW1iZXIgZnJvbSB1aWQgb2YgYWNwaQo+PsKg
ICogdHJ5IHRvIGdldCBjbG9ja3MgZm9yIGR0IG5vZGVzIGJ1dCBmb3IgYWNwaQo+PsKgICogdHJ5
IHRvIGdldCBjbG9ja3MgYnkgYSBjaGFyIGlkIGZpcnN0LCBpZiBhIGR0IHBhdGNoIGFwcGxpZWQK
Pgo+Li4uCj4KPj4gLQlyZXQgPSBpcnFfYWxsb2NfZG9tYWluX2dlbmVyaWNfY2hpcHMoYmFuay0+
ZG9tYWluLCAzMiwgMSwKPj4gKwlyZXQgPSBpcnFfYWxsb2NfZG9tYWluX2dlbmVyaWNfY2hpcHMo
YmFuay0+ZG9tYWluLCBHUElPX01BWF9QSU5TICwgMSwKPgo+RXh0cmEgc3BhY2UuIApHb3QgaXQu
Cgo+Cj4+wqAgwqDCoMKgwqAgInJvY2tjaGlwX2dwaW9faXJxIiwKPj7CoCDCoMKgwqDCoCBoYW5k
bGVfbGV2ZWxfaXJxLAo+PsKgIMKgwqDCoMKgIGNsciwgMCwgMCk7Cj4KPi4uLgo+Cj4+ICsJaWYg
KCFnYy0+bGFiZWwpIHsKPj4gKwlnYy0+bGFiZWwgPSBrYXNwcmludGYoR0ZQX0tFUk5FTCwgImdw
aW8lZCIsIGJhbmstPmJhbmtfbnVtKTsKPgo+SW4gdGhlIGJlbG93IGNvZGUgd2lsbCBiZSBhIG1l
bW9yeSBsZWFrLiBBbHNvIGF0IC0+cmVtb3ZlKCkuCj4KPj4gKwlpZiAoIWdjLT5sYWJlbCkKPj4g
KwlyZXR1cm4gLUVOT01FTTsKPj4gKwl9Cj4KPi4uLgo+Cj4+ICtzdGF0aWMgaW50IHJvY2tjaGlw
X2dwaW9fb2ZfZ2V0X2JhbmtfaWQoc3RydWN0IGRldmljZSAqZGV2KQo+PiArewo+PiArCXN0YXRp
YyBpbnQgZ3BpbzsKPj4gKwlpbnQgYmFua19pZCA9IC0xOwo+Cj4+ICsJaWYgKGlzX29mX25vZGUo
ZGV2LT5vZl9ub2RlKSkgewo+Cj4Jc3RydWN0IGZ3bm9kZV9oYW5kbGUgKmZ3bm9kZSA9IGRldl9m
d25vZGUoLi4uKTsKPgo+PiArCWJhbmtfaWQgPSBvZl9hbGlhc19nZXRfaWQoZGV2LT5vZl9ub2Rl
LCAiZ3BpbyIpOwo+Cj50b19vZl9ub2RlKGZ3bm9kZSkgCkdvdCBpdC4KCj4KPj4gKwlpZiAoYmFu
a19pZCA8IDApCj4+ICsJYmFua19pZCA9IGdwaW8rKzsKPj4gKwl9Cj4+ICsKPj4gKwlyZXR1cm4g
YmFua19pZDsKPj4gK30KPgo+Li4uCj4KPj4gKwliYW5rX2lkID0gcm9ja2NoaXBfZ3Bpb19hY3Bp
X2dldF9iYW5rX2lkKGRldik7Cj4+ICsJaWYgKGJhbmtfaWQgPCAwKSB7Cj4+ICsJYmFua19pZCA9
IHJvY2tjaGlwX2dwaW9fb2ZfZ2V0X2JhbmtfaWQoZGV2KTsKPj4gKwlpZiAoYmFua19pZCA8IDAp
Cj4+ICsJcmV0dXJuIGJhbmtfaWQ7Cj4+ICsJfQo+Cj5FYXNpZXIgdG8gcmVhZDoKPgo+CWJhbmtf
aWQgPSByb2NrY2hpcF9ncGlvX2FjcGlfZ2V0X2JhbmtfaWQoZGV2KTsKPglpZiAoYmFua19pZCA8
IDApCj4JYmFua19pZCA9IHJvY2tjaGlwX2dwaW9fb2ZfZ2V0X2JhbmtfaWQoZGV2KTsKPglpZiAo
YmFua19pZCA8IDApCj4JcmV0dXJuIGJhbmtfaWQ7Cj4gCkdvdCBpdC4KCj4uLi4KPgo+PiArCWlm
ICghaXNfYWNwaV9ub2RlKGRldl9md25vZGUoZGV2KSkgewo+PiArCXN0cnVjdCBkZXZpY2Vfbm9k
ZSAqcGN0bG5wID0gb2ZfZ2V0X3BhcmVudChkZXYtPm9mX25vZGUpOwo+PsKgCj4+ICsJcGN0bGRl
diA9IG9mX3BpbmN0cmxfZ2V0KHBjdGxucCk7Cj4+ICsJaWYgKCFwY3RsZGV2KQo+PiArCXJldHVy
biAtRVBST0JFX0RFRkVSOwo+PsKgCj4+ICsJYmFuayA9IHJvY2tjaGlwX2dwaW9fZmluZF9iYW5r
KHBjdGxkZXYsIGJhbmtfaWQpOwo+PiArCWlmICghYmFuaykKPj4gKwlyZXR1cm4gLUVOT0RFVjsK
Pgo+PiArCX0KPj4gKwlpZiAoIWJhbmspIHsKPgo+U2ltcGx5ICd9IGVsc2UgeycgPyAKR290IGl0
LgoKPgo+PiArCWJhbmsgPSBkZXZtX2t6YWxsb2MoZGV2LCBzaXplb2YoKmJhbmspLCBHRlBfS0VS
TkVMKTsKPj4gKwlpZiAoIWJhbmspCj4+ICsJcmV0dXJuIC1FTk9NRU07Cj4+ICsJfQo+Cj4uLi4K
Pgo+PiArCWlmIChpc19vZl9ub2RlKGRldl9md25vZGUoZGV2KSkgewo+PiArCWJhbmstPmNsayA9
IGRldm1fY2xrX2dldChkZXYsICJidXMiKTsKPj4gKwlpZiAoSVNfRVJSKGJhbmstPmNsaykpIHsK
Pj4gKwliYW5rLT5jbGsgPSBvZl9jbGtfZ2V0KGRldi0+b2Zfbm9kZSwgMCk7Cj4+ICsJaWYgKElT
X0VSUihiYW5rLT5jbGspKSB7Cj4+ICsJZGV2X2VycihkZXYsICJmYWlsIHRvIGdldCBhcGIgY2xv
Y2tcbiIpOwo+PiArCXJldHVybiBQVFJfRVJSKGJhbmstPmNsayk7Cj4+ICsJfQo+PiArCX0KPj4g
Kwo+PiArCWJhbmstPmRiX2NsayA9IGRldm1fY2xrX2dldChkZXYsICJkYiIpOwo+PiArCWlmIChJ
U19FUlIoYmFuay0+ZGJfY2xrKSkgewo+PiArCWJhbmstPmRiX2NsayA9IG9mX2Nsa19nZXQoZGV2
LT5vZl9ub2RlLCAxKTsKPj4gKwlpZiAoSVNfRVJSKGJhbmstPmRiX2NsaykpCj4+ICsJYmFuay0+
ZGJfY2xrID0gTlVMTDsKPj4gKwl9Cj4+ICsJfQo+Cj5UaGlzIGNhbiBiZSBzcGxpdCB0byBhIHNl
cGFyYXRlCj4KPglpbnQgcm9ja2NoaXBfZ3Bpb19nZXRfY2xvY2tzKC4uLikKPiAKR290IGl0LgoK
Pi4uLgo+Cj4+ICsJY2xrX3ByZXBhcmVfZW5hYmxlKGJhbmstPmNsayk7Cj4+ICsJY2xrX3ByZXBh
cmVfZW5hYmxlKGJhbmstPmRiX2Nsayk7Cj4KPkVpdGhlciBvZiB0aGVtIG1heSBmYWlsLgo+IApH
b3QgaXQuCgo+Li4uCj4KPj4gKwlpZiAoIWRldmljZV9wcm9wZXJ0eV9yZWFkX2Jvb2woYmFuay0+
ZGV2LCAiZ3Bpby1yYW5nZXMiKSAmJiBwY3RsZGV2KSB7Cj4KPlNhbWUgcXVlc3Rpb24gYXMgYmVm
b3JlLCB3aHkgdGhlIEdQSU8gbGlicmFyeSBjb2RlIGlzIG5vdCBva2F5IGZvciB0aGlzPwo+IApU
aGXCoGRldl9uYW1lKHBjdGxkZXYtPmRldikgaXMgbnVsbCBzaW5jZSB0aGVyZSBpcyBubyBwaW5j
dHJsIGRldmljZSB3aGVuIGFjcGkgZW5hYmxlZC4KQ3VycmVudGx5IHdlIG1heSBzZXQgdGhlIHBp
bmN0cmwgbXV4IGFuZCBjb25maWcgdW5kZXIgdWVmaSwgYW5kIG5vIHBpbmN0cmwgZHJpdmVyIGlu
IGxpbnV4LgoKPj4gKwlzdHJ1Y3QgZ3Bpb19jaGlwICpnYyA9ICZiYW5rLT5ncGlvX2NoaXA7Cj4+
ICsKPj4gKwlyZXQgPSBncGlvY2hpcF9hZGRfcGluX3JhbmdlKGdjLCBkZXZfbmFtZShwY3RsZGV2
LT5kZXYpLCAwLAo+PiArCcKgwqDCoMKgIGdjLT5iYXNlLCBnYy0+bmdwaW8pOwo+PiArCWlmIChy
ZXQpIHsKPj4gKwlkZXZfZXJyKGJhbmstPmRldiwgIkZhaWxlZCB0byBhZGQgcGluIHJhbmdlXG4i
KTsKPj4gKwlnb3RvIGVycl91bmxvY2s7Cj4+ICsJfQo+PsKgIH0KPgo+Cj4tLQo+V2l0aCBCZXN0
IFJlZ2FyZHMsCj5BbmR5IFNoZXZjaGVua28KPgo+Cl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

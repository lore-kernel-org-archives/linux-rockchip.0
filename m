Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 537DCC4452F
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Jul 2026 12:45:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=De3z/irPqhkQJLSjywbqelHigLzH0HL1yTHOwv20IYs=; b=w3koBxs2YmY5nD
	+1yEUe13C7/mWpv8U3UD7Ntx4nnnfM624u8/J26Mq/7S88l0KnrjL10Sy3N9en8fts8HJV85EcrlL
	vPWwnrmBW0j2divR//lp6JpU4stehSnxZn9niR0rf7jCK+62b2X+kkCeZjI32I5SX+J8x8v9T+2Yp
	vkl8etyJfwSBxQ8v+w+fvr50hSqsXxRE0Y0M7bNd0W3JRgts6cAI/T4CcVy3/hxs83N07rkpeHpmb
	lNE/BtRA3fIA/k6C449gDHC5XEhywMyi3m0Ba8ujq6cbclahdwCUQjLostSPN3i5HJFOXC1UhCbNb
	qxWFAlOVTd02ZCUr8rSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm9qb-00000009S4C-1qLT;
	Tue, 21 Jul 2026 12:45:21 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm9qZ-00000009S3i-0w6w;
	Tue, 21 Jul 2026 12:45:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=py+kVer8y1a6uREwhTLMnOPCYBBt4/ypQx/1Dyh8NlE=; b=UfyeBY73vzy27dJizTWAlgzPRe
	H76y57MW8rPT1PXVIHVsVh2LiNjbOSl4Tnh+TOkxX0IJvCFkmfuWhzNQ4oBRWVYLKGwRDi73fLIwk
	hNOm10pnsbKCwhYYw8kSjJg/4vjzgBRRfimQUp+RHZTaBI/5DjBce9eK4DN+XwUvNd3oF71UBYBO3
	a/b1USPQb7VUe6UKvx7db/8IvQhZwvqietnBfjgnOV7Eq8hZxZUdM58dvPTXptQr/G0FakLIc9KBe
	KZh+7IRIof2CmikmMqdt/1h3C+8/A6tmEIbtyV382lMlJvlb2pKu/l8q0GeoRwYFoYtp8FpCABulP
	3QBMho9w==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Simon Glass <sjg@chromium.org>, Krzysztof Kozlowski <krzk@kernel.org>
Cc: Linus Walleij <linusw@kernel.org>, Rob Herring <robh@kernel.org>,
 Jonas Karlman <jonas@kwiboo.se>, Conor Dooley <conor+dt@kernel.org>,
 linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 Bartosz Golaszewski <brgl@kernel.org>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: gpio: rockchip,gpio-bank: Add rockchip,grf
 property
Date: Tue, 21 Jul 2026 14:45:16 +0200
Message-ID: <3352010.NnENhoQgcM@diego>
In-Reply-To: <20260721-ambrosial-raccoon-of-glee-6219dd@quoll>
References: <20260714192535.2082729-1-sjg@chromium.org>
 <20260714132531.v2.1.d04a89a3849323a0dcee2c701cba43adbb0523b2@changeid>
 <20260721-ambrosial-raccoon-of-glee-6219dd@quoll>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260721_054519_263958_D6067EF4 
X-CRM114-Status: GOOD (  22.58  )
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

QW0gRGllbnN0YWcsIDIxLiBKdWxpIDIwMjYsIDEwOjEzOjM4IE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgS3J6eXN6dG9mIEtvemxvd3NraToKPiBPbiBUdWUsIEp1bCAxNCwg
MjAyNiBhdCAwMToyNToyOVBNIC0wNjAwLCBTaW1vbiBHbGFzcyB3cm90ZToKPiA+IFNvbWUgUm9j
a2NoaXAgU29Dcywgc3VjaCBhcyB0aGUgUlYxMTA2LCBnaXZlIGVhY2ggR1BJTyBiYW5rIGl0cyBv
d24KPiA+IElPIGNvbnRyb2wgKElPQykgcmVnaXN0ZXIgYmxvY2sgcmF0aGVyIHRoYW4gZ3JvdXBp
bmcgdGhlIHJlZ2lzdGVycyBvZgo+ID4gYWxsIGJhbmtzIGludG8gYSBzaGFyZWQgR1JGIHJlZ2lv
bi4gQWRkIGFuIG9wdGlvbmFsIHJvY2tjaGlwLGdyZgo+ID4gcHJvcGVydHkgdG8gdGhlIGdwaW8t
YmFuayBiaW5kaW5nIHNvIHRoYXQgZWFjaCBiYW5rIG5vZGUgY2FuIHJlZmVyZW5jZQo+ID4gdGhl
IHN5c2NvbiBmb3IgaXRzIG93biBJT0MgYmxvY2suCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IFNp
bW9uIEdsYXNzIDxzamdAY2hyb21pdW0ub3JnPgo+ID4gLS0tCj4gPiAKPiA+IENoYW5nZXMgaW4g
djI6Cj4gPiAtIEFkZCBuZXcgcGF0Y2ggZm9yIHRoZSBwZXItYmFuayBJT0MgcmVmZXJlbmNlCj4g
PiAKPiA+ICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9ncGlvL3JvY2tjaGlwLGdwaW8tYmFuay55
YW1sICAgICAgIHwgNyArKysrKysrCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygr
KQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L2dwaW8vcm9ja2NoaXAsZ3Bpby1iYW5rLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvZ3Bpby9yb2NrY2hpcCxncGlvLWJhbmsueWFtbAo+ID4gaW5kZXggYmRkODNmNDI2
MTVjLi43NzRlOWM3ZGU2MDYgMTAwNjQ0Cj4gPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvZ3Bpby9yb2NrY2hpcCxncGlvLWJhbmsueWFtbAo+ID4gKysrIGIvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2dwaW8vcm9ja2NoaXAsZ3Bpby1iYW5rLnlhbWwK
PiA+IEBAIC00NCw2ICs0NCwxMyBAQCBwcm9wZXJ0aWVzOgo+ID4gICAgcG93ZXItZG9tYWluczoK
PiA+ICAgICAgbWF4SXRlbXM6IDEKPiA+ICAKPiA+ICsgIHJvY2tjaGlwLGdyZjoKPiA+ICsgICAg
JHJlZjogL3NjaGVtYXMvdHlwZXMueWFtbCMvZGVmaW5pdGlvbnMvcGhhbmRsZQo+ID4gKyAgICBk
ZXNjcmlwdGlvbjoKPiA+ICsgICAgICBUaGUgcGhhbmRsZSBvZiB0aGUgc3lzY29uIG5vZGUgbWFu
YWdpbmcgdGhlIElPIGNvbnRyb2wgcmVnaXN0ZXJzCj4gPiArICAgICAgb2YgdGhpcyBiYW5rLCBv
biBTb0NzIHN1Y2ggYXMgdGhlIFJWMTEwNiB3aGVyZSBlYWNoIEdQSU8gYmFuayBoYXMKPiA+ICsg
ICAgICBpdHMgb3duIElPQyBibG9jay4KPiAKPiBJIGRvIG5vdCBzZWUgdXNhZ2Ugb2YgaXQgaW4g
cGF0Y2hzZXQgbGlua2VkIGluIGNvdmVyIGxldHRlciB3aXRoIERUUy4KPiAKPiBJIGhhdmUgZG91
YnRzIHRoYXQgd2hpbCBoYXZpbmcgb25lIEdSRiByZWdpb24geW91IGhhdmUgR1BJTyBiYW5rcwo+
IHBvaW50aW5nIHRvIGRpZmZlcmVudCBHUkYgcmVnaW9ucy4KPiAKPiBJdCdzIHBvc3NpYmxlIGlm
IHlvdSB3b3VsZCBoYXZlIG11bHRpcGxlIEdSRnMsIGJ1dCB5b3UgZG8gbm90LiBZb3UgaGF2ZQo+
IG9uZSBHUkYsIHJpZ2h0PwoKcGVyIG15IHJlcGx5IHRvIHRoZSBncmYgYmluZGluZyBwYXRjaCwg
Um9ja2NoaXAgaW52ZW50ZWQgeWV0IGFub3RoZXIgd2F5CnRvIGRlc2NyaWJlIHRoZWlyIHBpbi1j
b25maWcgLSBpbiBjb21wbGV0ZWx5IHNlcGFyYXRlIGJsb2NrcyBzdHJld24gYWNjcm9zcwp0aGUg
d2hvbGUgaW8tc3BhY2UgdGhpcyB0aW1lLgoKU28gZGVzY3JpYmluZyB0aGUgYXNzb2NpYXRlZCBw
aW5jb25maWcgZ3JmIHBlciBiYW5rLCBkb2VzIHNvdW5kIHByZXR0eQpuaWNlIGZvciB0aGF0IHBy
b2JsZW0uCgpJbiB0aGUgZWFybHkgYmVnaW5uaW5nIFJvY2tjaGlwIGhhZCBvbmUgcmVhbGx5IGJp
ZyBHUkYgZm9yIGFsbCBvZiB0aG9zZQpzZXR0aW5ncyBiaXRzIC0gd2hpY2ggaW5jbHVkZWQgdGhl
IGlvbXV4IHNldHRpbmdzLgpMYXRlciBvbiB0aGV5IG1vdmVkIF9wYXJ0c18gb2YgdGhhdCB0byBh
bm90aGVyIGJpZyBHUkYgdGhhdCBzdGlsbCB3YXNuJ3QKZGVkaWNhdGVkIHRvIHBpbi1jb25maWcu
ClJlY2VudGx5IHBpbi1jb25maWcgZ290IGl0cyBvd24gR1JGIC0gZm9yIGFsbCBwaW5zCkFuZCBu
b3cgaXQgc2VlbXMgd2UncmUgYXQgb25lIEdSRiBwZXIgcGluYmFuayA7LSkgLgoKV2hlbiBJIGFz
a2VkIHNvbWUgeWVhcnMgYWdvIC0gd2hlbiB0aGVyZSBldmVuIHdhcyB1c2JwaHkgY29udHJvbCBp
biBoZXJlCihhbmQgdGhvc2UgcmVncytiaXRzIGFsc28gbW92ZWQgYWxsIHRoZSB0aW1lKSwgdGhl
IF9wYXJhcGhyYXNlZF8gYW5zd2VyCndhcyAiYmVjYXVzZSBoYXJkd2FyZS1kZXNpZ25lcnMgZmlu
ZCBpdCBuaWNlciIgOy0pIC4KCgpIZWlrbwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

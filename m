Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D87AEC52D7C
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Aug 2024 10:04:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QjzHvb+FCrPf7DN26iWgvFV4Z+RRxYjLxZ0QBekbyiE=; b=RFJBWnIcYixdYMCwZ7+Y71qf0R
	1FpcQ0oA8hVm6ka8azpzr27JPN2S7Rnyd+2fOVi+7BmfVESAjGyPx3+slktm4TM9yQQ5eG35SswF3
	k7mpqBOlvk1xhjWk6RiUf1XWWhlq6RfO6ZnqYjWmMKhrgiAwnzN3+4KlMeqLhWT6HIQgdbwm6jxP4
	ubKXAuFlGsipuh3j5KLIpYCepoVpfF7jJ9sbsttgMhiCOEkWSOvaSyfKh/SNXOVhNUH5AI2DK7h0R
	WseHy8s0nEwEsnvhJUdzO5CNc4ZGWnUsxN6tw02XKSHrCwcTYXlqK68SuzjvSwTqnOlQQH301kmTc
	MrBVbhLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgiCi-00000008LXe-0gXu;
	Wed, 21 Aug 2024 10:04:36 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sghyk-00000008Itc-0UdP
	for linux-rockchip@lists.infradead.org;
	Wed, 21 Aug 2024 09:50:11 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1724233808;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=QQd/k2U0XwgeUbP+J/rjDEySkEfSMNk9On97nLC3C6g=;
	b=oPz56cI0nawAiVQKgpVSjchYnwLuReqnlJcra9U6mNrelRUtUvgYLCoTjn4bdbkR/Mhqrh
	9IU/ahxhbWVzwkpXz68xM6jiyFoEF6JqhKLZW2vGDVNT/n+ks/o2l7opiWNitfbUOYVXJT
	gz443amOpYXwvanokwh33SCmm7W/S4I0jA3LylUvdEdGRRe7kf6BjMJAOi7alSMZYH42P+
	Ase60DwvGjKI4wD7x1zw1Q5aRi6qrErHpQ8uUSYvvdt2Kcy86tNU22Cymn5vF3nBTMJXMp
	gmTdfZJ3iTuSqUADc558kSB4tXx3QsO7IZW44e1aoeM2c1TOHr7FyFZJZE0arw==
Date: Wed, 21 Aug 2024 11:50:08 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 3/6] arm64: dts: rockchip: enable SPI flash on
 NanoPC-T6 LTS
In-Reply-To: <5551c256-a21a-4914-b987-2cbe2eedb28f@linaro.org>
References: <20240821-friendlyelec-nanopc-t6-lts-v2-0-e0138bb10042@linaro.org>
 <20240821-friendlyelec-nanopc-t6-lts-v2-3-e0138bb10042@linaro.org>
 <2890737.yaVYbkx8dN@diego> <5551c256-a21a-4914-b987-2cbe2eedb28f@linaro.org>
Message-ID: <51ba5cc6819c268e266f2eef58b3ffd9@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240821_025010_326575_C6B3FDFD 
X-CRM114-Status: GOOD (  10.80  )
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

T24gMjAyNC0wOC0yMSAxMToxNywgTWFyY2luIEp1c3praWV3aWN6IHdyb3RlOgo+IE9uIDIxLjA4
LjIwMjQgMTA6NTksIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+PiBBbSBNaXR0d29jaCwgMjEuIEF1
Z3VzdCAyMDI0LCAxMDoyNTozMiBDRVNUIHNjaHJpZWIgTWFyY2luIAo+PiBKdXN6a2lld2ljejoK
Pj4+IEZyaWVuZGx5RUxFQyBOYW5vUEMtVDYgTFRTIGhhcyAzMk1CIG9mIFNQSSBmbGFzaCBvbi1i
b2FyZC4gT24gbm9uLUxUUwo+Pj4gYm9hcmRzIHRoaXMgaXMgb3B0aW9uYWwgY2hpcC4KPj4+IAo+
Pj4gU2lnbmVkLW9mZi1ieTogTWFyY2luIEp1c3praWV3aWN6IDxtYXJjaW4uanVzemtpZXdpY3pA
bGluYXJvLm9yZz4KPj4+IC0tLQo+Pj4gICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzU4OC1uYW5vcGMtdDYuZHRzIHwgMTQgCj4+PiArKysrKysrKysrKysrKwo+Pj4gICAxIGZpbGUg
Y2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKQo+Pj4gCj4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtbmFub3BjLXQ2LmR0cyAKPj4+IGIvYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtbmFub3BjLXQ2LmR0cwo+Pj4gaW5kZXggYmYyYzQ0
MjdhZDc0Li4wZjlkZjY0ZGMxYjEgMTAwNjQ0Cj4+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzU4OC1uYW5vcGMtdDYuZHRzCj4+PiArKysgYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzU4OC1uYW5vcGMtdDYuZHRzCj4+PiBAQCAtNTk0LDYgKzU5NCwyMCBA
QCAmc2RtbWMgewo+Pj4gICAJc3RhdHVzID0gIm9rYXkiOwo+Pj4gICB9Owo+Pj4gICArJnNmYyB7
Cj4+PiArCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4+PiArCXBpbmN0cmwtMCA9IDwmZnNw
aW0xX3BpbnM+Owo+Pj4gKwlzdGF0dXMgPSAib2theSI7Cj4+PiArCj4+PiArCWZsYXNoQDAgewo+
Pj4gKwkJY29tcGF0aWJsZSA9ICJqZWRlYyxzcGktbm9yIjsKPj4+ICsJCXJlZyA9IDwwPjsKPj4+
ICsJCXNwaS1tYXgtZnJlcXVlbmN5ID0gPDEwNDAwMDAwMD47Cj4+PiArCQlzcGktcngtYnVzLXdp
ZHRoID0gPDQ+Owo+Pj4gKwkJc3BpLXR4LWJ1cy13aWR0aCA9IDwxPjsKPj4+ICsJfTsKPj4+ICt9
Owo+Pj4gKwo+PiAKPj4gc2FtZSBxdWVzdGlvbiBhcyBwYXRjaDEuIFlvdSBlbmFibGUgdGhpcyBh
bHNvIG9uIHRoZSBub24tTFRTIGJvYXJkcyAKPj4gbm93Cj4+IHRoYXQgZG9uJ3QgaGF2ZSB0aGlz
IGZsYXNoIGNoaXA/Cj4gCj4gbm9uLUxUUyB2ZXJzaW9uIG9mIGJvYXJkIGhhcyBhIHNwYWNlIGZv
ciB0aGlzIFNQSSBjaGlwIHNvIGl0IGNhbiBiZQo+IHBvcHVsYXRlZCBlaXRoZXIgYnkgdmVuZG9y
IG9yIGJ5IHVzZXIuIEFueSBPUy9maXJtd2FyZSB3aGljaCB0b3VjaCBTUEkKPiBmbGFzaCBzaG91
bGQgKElNSE8pIGNoZWNrIGlzIGNoaXAgcHJlc2VudCAtIERUIHRlbGxzIHdoZXJlIHRvIGxvb2su
CgpBaCwgc28gaXQncyBsaWtlIHRoZSBQaW5lNjQgUm9jazY0LCBmb3IgZXhhbXBsZSwgWzFdIHdo
aWNoIGFsc28gY29tZXMKd2l0aCB1bnBvcHVsYXRlZCBwYWRzIGZvciB0aGUgU1BJIGNoaXAuICBJ
biB0aGF0IGNhc2UsIEknZCBhZ3JlZSB0aGF0CmFkZGluZyB0aGUgZGVmaW5pdGlvbnMgdG8gdGhl
IG5vbi1MVFMgRFQgaXMgZmluZS4KClsxXSAKaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2Nt
L2xpbnV4L2tlcm5lbC9naXQvdG9ydmFsZHMvbGludXguZ2l0L3RyZWUvYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9yazMzMjgtcm9jazY0LmR0cz9oPXY2LjExLXJjNCNuMzM4CgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

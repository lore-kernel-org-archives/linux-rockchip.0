Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6685C369CB
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Apr 2025 19:12:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YWVlkX9MDYPWEJfnZOpDarG3IxhbdQIpdKTGG+5+fjI=; b=NPSl1a6KT2ztg1
	AMGekFhkeN+cWOa29CGC8AEq6Eth4Ubt2b+POB/68/OgNtPOetSn+mXPMAMhbXFDmCj2rDwmJWQOS
	9kVjupU9MOe7p/xKStlrmtvmDB0g3/xyGfidSbRsDWbBhXu8QFVV8tpo9FqDSjudmZBepMsuV7R7v
	3rLrM3A1cW5GLn5JzNGXV2dJh+FkJkmTra/aF9MkUPfTl8uKCPdV4V56EqFx/6+rJEWiwUx8V2ew7
	5p0Hf0l82HzXICvOdm05pjxy3k6uKqis5SlUWrFTE8IFQs5+u8kkfcvU1IziWQaerWIFrQa9PTHLS
	VnpOqpRC4Yg0iaqlL6kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5Uev-0000000E97V-0QRL;
	Thu, 17 Apr 2025 19:12:25 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5Ud3-0000000E8uW-1IYY;
	Thu, 17 Apr 2025 19:10:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=Bcw9WhJwy8zPhG5QYKyzowO/nlWGUJAb4ocjNVPbD+M=; b=eE9j55AmbmSEjJ79eSUkt8Ug8/
	ods2pey/Q/s9D0W0kHfocu8rE8/Z9z/WMtxqGXtVWe9L+s8G+jCBc3d/ptkxieHfnT9DCjwAxqxgp
	AmLgzcFgBoIseY1aOwh16oP9ENkDx8pVzXNDRUKSQHTVgrbxZcuHSbXoMuQ90zZVZAGnCTe+DflZn
	ZLkhDS+F/nlIF2KbkC6Y7hDziCCThaREaT7MnPFYL4VIn/bPYh3uNlo3RaXbYfi9p2iBBoBQoJwuA
	qd5FPWkxxK1+EAGm6GNNVDEi7dXv9CytuqL2X2WwKuTstCcUsEYa3S+7LVZgEkoY/LDsJjcqk/WB9
	RGdZL8og==;
Received: from i53875b95.versanet.de ([83.135.91.149] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1u5Ucj-0001E8-Bd; Thu, 17 Apr 2025 21:10:09 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Krzysztof Kozlowski <krzk@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Jonas Karlman <jonas@kwiboo.se>,
 Chukun Pan <amadeus@jmu.edu.cn>, Yao Zi <ziyao@disroot.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/3] arm64: dts: rockchip: Add I2C controllers for RK3528
Date: Thu, 17 Apr 2025 21:10:08 +0200
Message-ID: <13753899.uLZWGnKmhe@diego>
In-Reply-To: <aAEUS7QQbXSvrcEs@pie.lan>
References: <20250417120118.17610-3-ziyao@disroot.org>
 <c6d3e343-7005-48a9-a133-bf39cb6790ee@kernel.org> <aAEUS7QQbXSvrcEs@pie.lan>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250417_121029_594890_2A5AB696 
X-CRM114-Status: GOOD (  18.92  )
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

SGkgS3J6eXN6dG9mLAoKQW0gRG9ubmVyc3RhZywgMTcuIEFwcmlsIDIwMjUsIDE2OjQ2OjM1IE1p
dHRlbGV1cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgWWFvIFppOgo+IE9uIFRodSwgQXBy
IDE3LCAyMDI1IGF0IDA0OjM2OjU3UE0gKzAyMDAsIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6
Cj4gPiBPbiAxNy8wNC8yMDI1IDE2OjM2LCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOgo+ID4g
PiBPbiAxNy8wNC8yMDI1IDE0OjAxLCBZYW8gWmkgd3JvdGU6Cj4gPiA+PiBEZXNjcmliZSBJMkMg
Y29udHJvbGxlcnMgc2hpcHBlZCBieSBSSzM1MjggaW4gZGV2aWNldHJlZS4gRm9yIEkyQy0yLAo+
ID4gPj4gSTJDLTQgYW5kIEkyQy03IHdoaWNoIGNvbWUgd2l0aCBvbmx5IGEgc2V0IG9mIHBvc3Np
YmxlIHBpbnMsIGEgZGVmYXVsdAo+ID4gPj4gcGluIGNvbmZpZ3VyYXRpb24gaXMgaW5jbHVkZWQu
Cj4gPiA+Pgo+ID4gPj4gU2lnbmVkLW9mZi1ieTogWWFvIFppIDx6aXlhb0BkaXNyb290Lm9yZz4K
PiA+ID4+IC0tLQo+ID4gPj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTI4LmR0
c2kgfCAxMTAgKysrKysrKysrKysrKysrKysrKysrKysKPiA+ID4+ICAxIGZpbGUgY2hhbmdlZCwg
MTEwIGluc2VydGlvbnMoKykKPiA+ID4+Cj4gPiA+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazM1MjguZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmszNTI4LmR0c2kKPiA+ID4+IGluZGV4IDgyNmY5YmUwYmUxOS4uMmM5NzgwMDY5YWY5IDEw
MDY0NAo+ID4gPj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1MjguZHRz
aQo+ID4gPj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1MjguZHRzaQo+
ID4gPj4gQEAgLTI0LDYgKzI0LDE0IEBAIGFsaWFzZXMgewo+ID4gPj4gIAkJZ3BpbzIgPSAmZ3Bp
bzI7Cj4gPiA+PiAgCQlncGlvMyA9ICZncGlvMzsKPiA+ID4+ICAJCWdwaW80ID0gJmdwaW80Owo+
ID4gPj4gKwkJaTJjMCA9ICZpMmMwOwo+ID4gPj4gKwkJaTJjMSA9ICZpMmMxOwo+ID4gPj4gKwkJ
aTJjMiA9ICZpMmMyOwo+ID4gPj4gKwkJaTJjMyA9ICZpMmMzOwo+ID4gPj4gKwkJaTJjNCA9ICZp
MmM0Owo+ID4gPj4gKwkJaTJjNSA9ICZpMmM1Owo+ID4gPj4gKwkJaTJjNiA9ICZpMmM2Owo+ID4g
Pj4gKwkJaTJjNyA9ICZpMmM3Owo+ID4gPiBBbGlhc2VzIGFyZSBub3QgcHJvcGVydGllcyBvZiB0
aGUgU29DIGJ1dCBib2FyZHMuCj4gPiAKPiA+IE9mIGNvdXJzZSB0aGlzIHNob3VsZCBiZTogQnVz
L2ludGVyZmFjZSBhbGlhc2VzIGFyZSBub3QuLi4KPiAKPiBUaGFua3MgZm9yIHRoZSBleHBsYW5h
dGlvbi4gV2lsbCBtb3ZlIHRoZW0gdG8gdGhlIGJvYXJkIERULgoKSSB0aGluayB3ZSdyZSBoYXZp
bmcgdGhhdCBkaXNjdXNzaW9uIGZvciBldmVyeSBzb2MgOi0pIC4KClVhcnRzLiBncGlvcywgaTJj
IGFuZCBzcGkgYXJlIGFsd2F5cyBsYWJlbGVkIGZvb1swLS4uLl0gaW4gYWxsIHBpZWNlcwpvZiBS
b2NrY2hpcCBkb2N1bWVudGF0aW9uLgoKVGhlIGkyYzAgY29udHJvbGxlciBoYXMgcGlucyBpMmMw
LXNjbCwgaTJjMF9zZGE7IGkyYzAtbGFiZWxlZCBpb21lbTsKaTJjMC1sYWJlbGVkIGlycSwgY2xr
X2kyYzAsIHJlc2V0bl9pMmMwLgoKCkkgY29tcGxldGVseSBfYWdyZWVfIHRoYXQge3NkaGNpLCBz
ZG1tYywgZW1tYywgc2Rpb30gLT4gbW1jWCBpcyBmdWxseQpib2FyZCBzcGVjaWZpYywgYnV0IGky
YzAgc2hvdWxkIGFsd2F5cyBnZXQgdGhlIGkyYzAgbGFiZWwgYW5kIG5vIG90aGVyCmNvbnRyb2xs
ZXIgc2hvdWxkIG9jY3VweSB0aGF0IHNvYy1zcGVjaWZpYyBpMmMwLXNwYWNlLCBiZWNhdXNlIHRo
YXQgd291bGQKY2F1c2UgY29uZnVzaW9uIHdpdGhvdXQgZW5kLgoKCkFuZCB3aXRoIHRoZSBhYm92
ZSBpdCBtYWtlcyBubyByZWFsIHNlbnNlIHJlcGVhdGluZyB0aGUgc2FtZSBsaXN0IGZvcgpldmVy
eSBpbmRpdmlkdWFsIGJvYXJkLgoKSWYgeW91IF9pbnNpc3RfIG9uIHRoaXMsIHRoZW4gZmluZSwg
YnV0IEkgcmVhbGx5IGRvbid0IHNlZSB0aGUgcG9pbnQuCgoKSGVpa28KCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

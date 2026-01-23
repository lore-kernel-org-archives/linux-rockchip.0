Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77B78D778B1
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Jan 2026 21:53:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3NSaGGgqVGfCgM4UmuQZWr8KBUbR0twFfIn8uPGZGR0=; b=AHuMJ/1zWR6sMb
	sQI1F0jYd1KXCRX3lJMgJcaUzOpWipqR9wbWZ9UbEFXtEwk/kLn1/i0YIV8YSts+3P24jxT65mNBH
	kGf5ISVaPevXVgpylf8FtXP4RqaBMrzFKb/2iTtTOwR+0uYm0bpnok8IidYWkOeKfJ1unS1RGrKAf
	KRsjgQr9IzZzA1uqgQ9FAY2F1aytY4HKAIco4DPgB41T5TAKgPV3SJ9Zc1posvFJNKfnjsGOxHIz3
	Or0pf/Juf7noSbYVOKz2sJUuodeYVFqTU/qwAievQTK7EySuP8Nv4pmqZOWQdWoShNKNhk8KNL0Uq
	hJvbSi4NSTah9F1csQ4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjP5R-00000009WpA-0xPH;
	Fri, 23 Jan 2026 21:53:01 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjP5O-00000009WoJ-3Xap;
	Fri, 23 Jan 2026 21:52:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=2ba85GeB3B1ichKlJAwFJYf43g8jypI7q6DIILljSC8=; b=XGBYIJBF9Cua6CZ2MaiR035mIb
	OnQz3xs6o1QG8YZvT1Q1ZkLDhkI0Uax3dy3wuYs4cY4FELSY0MVhSShd6voxGmC5HCh9dM5t5wmdQ
	APq7/Fu06NAi3mww/CjOsdNoQ2a0Dwvr9d+pQCdxsH0MKQlv5juPhu478N1ckK4jgj8ApjbBxuYrm
	//1Fu8hkvfe2iKI0Ab+oxEg19Mqsd1K502wzzsGlMxHfaHPWo+tpqTGO2+91smcrJo8Qq7O5q70ef
	YZboFx5KtrwIyNs/4wOuKtGc6OYvCNwtiM5z+wJ8sL0twPB/8QEbiD9udIq9l1eabjk+9tWPDnc5r
	J+mtcrOQ==;
Received: from i53875b18.versanet.de ([83.135.91.24] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vjP53-0042yn-Kl; Fri, 23 Jan 2026 22:52:38 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Bartosz Golaszewski <brgl@kernel.org>, Robin Murphy <robin.murphy@arm.com>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
 Linus Walleij <linusw@kernel.org>, linux-gpio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: [PATCH] gpio: rockchip: mark the GPIO controller as sleeping
Date: Fri, 23 Jan 2026 22:52:37 +0100
Message-ID: <16771005.dW097sEU6C@diego>
In-Reply-To: <e9fd0005-bfbb-4052-8c2a-9200eb0b60ac@arm.com>
References: <20260106090011.21603-1-bartosz.golaszewski@oss.qualcomm.com>
 <CAMRc=Md0h5b=N9CqV-9L9sOtCNbiL1-y6RE0x4+w9HYXE8=pEQ@mail.gmail.com>
 <e9fd0005-bfbb-4052-8c2a-9200eb0b60ac@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260123_135258_912152_C4844149 
X-CRM114-Status: GOOD (  33.33  )
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

QW0gRnJlaXRhZywgMjMuIEphbnVhciAyMDI2LCAyMTo1Nzo1MCBNaXR0ZWxldXJvcMOkaXNjaGUg
Tm9ybWFsemVpdCBzY2hyaWViIFJvYmluIE11cnBoeToKPiBPbiAyMDI2LTAxLTIzIDc6MjcgcG0s
IEJhcnRvc3ogR29sYXN6ZXdza2kgd3JvdGU6Cj4gPiBPbiBGcmksIEphbiAyMywgMjAyNiBhdCAy
OjI34oCvUE0gUm9iaW4gTXVycGh5IDxyb2Jpbi5tdXJwaHlAYXJtLmNvbT4gd3JvdGU6Cj4gPj4K
PiA+Pj4+Cj4gPj4+PiBJdCdzIG5vdCBhIGJpZyBpc3N1ZSBmb3IgdGhlIGhkbWlyeCBkcml2ZXIg
c3BlY2lmaWNhbGx5LCBidXQgSSB3b25kZXIKPiA+Pj4+IGhvdyBtYW55IG1vcmUgKGxlc3Mgb2Z0
ZW4gdGVzdGVkKSByb2NrY2hpcCBkcml2ZXJzIHVzZSBHUElPcyBmcm9tIHRoZWlyCj4gPj4+PiBJ
UlEgaGFuZGxlci4KPiA+Pgo+ID4+IFllYWgsIHNlZW1zIHRoaXMgZmluYWxseSByZWFjaGVkIG15
IGRpc3RybyBrZXJuZWwgYW5kIG5vdyB0aGUga2VybmVsIGxvZwo+ID4+IG9uIG9uZSBvZiBteSBi
b2FyZHMgaXMgdG90YWxseSBmbG9vZGVkIGZyb20gZ3Bpb19pcl9yZWN2X2lycSgpCj4gPj4gKGxl
Z2l0aW1hdGVseSkgY2FsbGluZyBncGlvX2dldF92YWx1ZSgpLi4uIHRoYXQncyBub3QgcmVhbGx5
IE9LIDovCj4gPj4KPiA+IAo+ID4gVGhpcyBoYXMgYWx3YXlzIGJlZW4gYSBzbGVlcGluZyBkcml2
ZXIuIFRoZSBkcml2ZXIgZG9lcyBub3Qga25vdyB0aGUKPiA+IGZpcm13YXJlIGNvbmZpZ3VyYXRp
b24gaXQnbGwgYmUgcGFzc2VkIGFuZCAtIGFzIEkgZXhwbGFpbmVkIGFib3ZlIC0KPiA+IGRlcGVu
ZGluZyBvbiB0aGUgbG9va3VwIGZsYWdzLCB3ZSBtYXkgY2FsbCAuZGlyZWN0aW9uX291dHB1dCgp
IGFuZAo+ID4gZGVzY2VuZCBpbnRvIHBpbmN0cmwgd2hpY2ggdXNlcyBtdXRleGVzLiBJZGVhbGx5
LCB3ZSdkIG1ha2UKPiA+IEdQSU8tZmFjaW5nIHBpbmN0cmwgb3BlcmF0aW9ucyBub3Qgc2xlZXBp
bmcgYnV0IHRoaXMgaXMgYSBsb25nLXRpbWUKPiA+IHByb2plY3QgYW5kIHF1aXRlIGNvbXBsZXgu
IFRlbGxpbmcgdGhlIEdQSU8gY29yZSB0aGF0IGl0IGNhbm5vdCBzbGVlcAo+ID4gaXMgc2ltcGx5
IGluY29ycmVjdCAtIGV2ZW4gaWYgaXQgd29ya2VkIGZvciB0aGlzIHBhcnRpY3VsYXIgdXNlLWNh
c2UgLQo+ID4gYW5kIGhhcyBhbiBpbXBhY3Qgb24gcGF0aHMgd2UncmUgY2hvb3NpbmcuCj4gPiAK
PiA+IENhbiB0aGUgR1BJTyByZWFkaW5nIGluIHRoZSBncGlvLWlyLXJlY3YgZHJpdmVyIGJlIGRv
bmUgZnJvbSBhCj4gPiBoaWdoLXByaW9yaXR5IHdvcmtxdWV1ZSBieSBhbnkgY2hhbmNlPyBPciBj
YW4gd2UgbWFrZSBpdCBhIHRocmVhZGVkCj4gPiBpbnRlcnJ1cHQ/Cj4gCj4gcm9ja2NoaXBfZ3Bp
b19nZXQoKSBpcyBlc3NlbnRpYWxseSBub3RoaW5nIGJ1dCBhIHJlYWRsKCksIHBsZWFzZSBleHBs
YWluIAo+IGhvdyB0aGF0IGNvdWxkIHNsZWVwPyBTYXlpbmcgdGhhdCBjb3VudGxlc3MgaW4tdHJl
ZSBhbmQgb3V0LW9mLXRyZWUgCj4gYXJiaXRyYXJ5IEdQSU8gY29uc3VtZXIgZHJpdmVycyBzaG91
bGQgcG9pbnRsZXNzbHkgcmVmYWN0b3IganVzdCB0byAKPiBhdm9pZCB0aGUgR1BJTyBjb3JlIHNw
ZXdpbmcgc3B1cmlvdXMgV0FSTigpcyBpcyBub3QgcmVhc29uYWJsZS4KPiAKPiBJIGFwcHJlY2lh
dGUgdGhlcmUgYXJlIGNhc2VzIHdoZXJlIHRoZSB3YXJuaW5nIG1vc3QgZGVmaW5pdGVseSAqaXMq
IAo+IHJlbGV2YW50LCB3aGljaCBpcyB3aHkgSSBwaWNrZWQgdXAgdGhpcyBkaXNjdXNzaW9uIHJh
dGhlciB0aGFuIHByb3Bvc2luZyAKPiBhIHJldmVydCwgZXZlbiB0aG91Z2ggdGhlIGRvY3VtZW50
YXRpb24gc2F5czoKPiAKPiAgICogQGNhbl9zbGVlcDogZmxhZyBtdXN0IGJlIHNldCBpZmYgZ2V0
KCkvc2V0KCkgbWV0aG9kcyBzbGVlcCwgYXMgdGhleQo+IAo+IHdoZXJlIHNpbmNlIG5laXRoZXIg
cm9ja2NoaXBfZ3Bpb19nZXQoKSBub3Igcm9ja2NoaXBfZ3Bpb19zZXQoKSAKPiB0aGVtc2VsdmVz
IHNsZWVwLCBhcHBhcmVudGx5IHRoaXMgZmxhZyBtdXN0ICpub3QqIGJlIHNldC4gSXQncyAKPiBp
cnJlbGV2YW50IHRoYXQgYSBoaWdoZXItbGV2ZWwgZ3Bpb2Rfc2V0X3ZhbHVlKCkgaW52b2NhdGlv
biBtaWdodCBlbmQgdXAgCj4gY2FsbGluZyAuc2V0X2RpcmVjdGlvbiBiZWZvcmUgaXQgZ2V0cyBh
cyBmYXIgYXMgY2FsbGluZyAuc2V0IC0gdGhhdCdzIAo+IG5vdCB0aGUgZ3Bpb19jaGlwJ3MgZmF1
bHQsIGFuZCBncGlvbGliIGtub3dzIGV4YWN0bHkgd2hhdCBpdCdzIGRvaW5nLgo+IAo+IFdoYXQg
SSdtIGdldHRpbmcgYXQgaXMgdGhhdCBnZXR0aW5nLCBhbmQgZXZlbiAoZGlyZWN0bHkpIHNldHRp
bmcgYSAKPiBHUElPJ3MgdmFsdWUgY2FuIHJlYXNvbmFibHkgYmUgZXhwZWN0ZWQgdG8gYmUgbW9y
ZSBjb21tb24gYW5kIGFwcGxpY2FibGUgCj4gaW4gYSB3aWRlciByYW5nZSBvZiBjaXJjdW1zdGFu
Y2VzIHRoYW4gY2hhbmdpbmcgaXRzIGNvbmZpZ3VyYXRpb24sIHNvIAo+IHRoZSBmb3JtZXIgc2hv
dWxkIG5vdCBiZSB1bmZhaXJseSBwZW5hbGlzZWQgYmVjYXVzZSBvZiB0aGUgbGF0dGVyLiBUaGlz
IAo+IGNhc2UgaXMgY2xlYXJseSBkaXN0aW5jdCBmcm9tIGV4dGVybmFsIEdQSU8gZXhwYW5kZXJz
IG9uIGJ1c2VzIHRoYXQgCj4gZnVuZGFtZW50YWxseSBjYW4ndCBndWFyYW50ZWUgZmFzdCBtZW1v
cnktbWFwcGVkIGFjY2VzcyBhdCBhbGwsIHNvIAo+IHRyeWluZyB0byBjb25mbGF0ZSBpdCB1bmRl
ciB0aGUgc2FtZSBmbGFnIGRvZXNuJ3QgZml0LCBhbmQgdGhhdCBuZWVkcyAKPiBmaXhpbmcgQVNB
UCwgYmVmb3JlIHRoZSByZXZlcnRzICpkbyogc3RhcnQgcGlsaW5nIGluLiBNYXliZSB0aGF0IGp1
c3QgCj4gbWVhbnMgc29tZSBuZXcgZGlyX2Nhbl9zbGVlcCBvciBtb3JlIGFic3RyYWN0IGRpcl9u
ZWVkc19waW5jdHJsIGZsYWcgCj4gbWlnaHQgc3VmZmljZSwgbWF5YmUgaXQncyBzb21ldGhpbmcg
bW9yZSBpbnZvbHZlZDsgSSBkb24ndCByZWFsbHkga25vdywgCj4gYW5kIEkgZG9uJ3QgaGF2ZSB0
aGUgYmFuZHdpZHRoIHRvIHRha2UgdGhpcyBvbiBteXNlbGYuCgp0aGUgc2FkZXN0IHBhcnQgaGVy
ZSBpcywgdGhhdCB0aGUgZGl2ZSBmcm9tIGdwaW8gdG8gcGluY3RybCBpcyBzb3J0IG9mCmEgcmVt
YW50IG9mIHRoZSBwYXN0LiBPcmlnaW5hbGx5IGl0IHdhcyBtZWFudCB0byAiYXV0b21hdGljYWxs
eSIgc2V0CnRoZSBncGlvIHBpbm11eCwgYnV0IG5vd2FkYXlzIHdlIChhdCBsZWFzdCB0cnkgdG8p
IGhhdmUgcGluY3RybCBlbnRyaWVzCmRvaW5nIHRoYXQgc2VwYXJhdGVseS4KCkJ1dCBvZiBjb3Vy
c2UgdGhhdCdzIGhhcmQgdG8gZW5mb3JjZSBub3csIGJlY2F1c2Ugd2UgY2FuJ3QgcmVhbGx5IGtu
b3cKd2hlcmUgZ3Bpb3Mgd2l0aG91dCBwaW5jdHJsIG1pZ2h0IGhpZGUsIGFuZCBvZiBjb3Vyc2Ug
bmV3ZXIga2VybmVscwpuZWVkIHRvIHN0aWxsIHJ1biB3aXRoIG9sZCBEVEJzLgoKQnV0Li4uCgpy
b2NrY2hpcF9wbXhfZ3Bpb19zZXRfZGlyZWN0aW9uKCkncyBvbmx5IGZ1bmN0aW9uIGlzIHRvIHNl
dCB0aGUgR1BJTwpwaW5tdXggLSBpdCBkb2VzIG5vdCBoYW5kbGUgdGhlIGFjdHVhbCB0aGUgYWN0
dWFsIGRpcmVjdGlvbi4KCkNhbid0IHdlIG1vdmUgdGhlIHBpbmN0cmxfZ3Bpb19kaXJlY3Rpb25f
aW5wdXQvX291dHB1dCgpIGNhbGwganVzdCBvdmVyCnRvIHRoZSByZXF1ZXN0IGNhbGxiYWNrIG9m
IHRoZSBncGlvY2hpcD8KCgpIZWlrbwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

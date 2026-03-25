Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92F55109E528
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Mar 2026 23:41:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0BkPAs3a3SLGr4AhL0aGUkzzk68xwcsu7NVw+07NvLU=; b=PmnXVeQeX7RViH
	lxPML77S/aGf4z0AmgVyT7cXQZMWyUdsLmd1tmM5Q2QhmK85psN2GBoegjVRGNWrvMt5ucsdrzQ98
	dDsM5JNijvC1BMLS0X0adonevRkx1ukmqe4AECXazRkZZ7Ynz+wrUFglbFN2Q5i9xwGeUAtbA0FpJ
	OUkJ3aGSyfnuxmxqGjAlKsbX+sqw5JbsKajeaomc/H2AtsHM0wLlsNgWYquHFzCfuPzUwMcbkMAje
	p5gr0+HvNPi8OnHIz+rp0QaKOyMHKwur8evo7vOoDNigsuEsyngMccX3KTHbVypgTSsI1ysNlLap8
	8b01+EuNSA06cjqRaR6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5XrI-00000004RoB-0rDN;
	Wed, 25 Mar 2026 23:41:56 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5XrG-00000004RnS-0FUx;
	Wed, 25 Mar 2026 23:41:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=b6yzGlttx+NXjSJf4aCL4qCZ2swewO2eS0YxkN2Iuaw=; b=M5lZcw4fBkUFqRe1eIpe6LvRwA
	2ouXek52MBk/ibhN25yL4S394q/dCCjdw5Hs0EC13tfh7Irkc3ywd9nE4TCjFB9MYCYcEeOSDZ+qa
	5eGiZ0Z+J3a3PSFRg24Tt98Nq7rpBx77Nu9SstJPtbAs+RDp4rsQ+Yl8qffT1Y7+CBZ9mCK0o21MR
	4a8867X60jSEyOU5VUrxccGzTkxTQHi3StFomFYvQOVocQePOqtsCF60R2ZULlGPJSbJpkeO/6mMr
	/5YQ4+LSO8TGOWyV+EMc9IqN2rFfN9vEbxSprZjKqyyfdeWSQlHW8O7hAyTkpbyfL1jJXrfAOMiee
	qJVZgqlQ==;
From: Heiko Stuebner <heiko@sntech.de>
To: Pedro Alves <pta2002@pta2002.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH RESEND v2] arm64: dts: rockchip: configure hdmirx in Rock 5 ITX
Date: Thu, 26 Mar 2026 00:41:49 +0100
Message-ID: <23047464.EfDdHjke4D@phil>
In-Reply-To: <1331010f-1446-4892-9d81-2f18b60f6977@pta2002.com>
References: <20260323-radxa-r5-itx-hdmirx-v2-1-c52501909577@pta2002.com>
 <3407927.44csPzL39Z@phil> <1331010f-1446-4892-9d81-2f18b60f6977@pta2002.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260325_164154_102960_B41D98A9 
X-CRM114-Status: GOOD (  23.89  )
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

SGkgUGVkcm8sCgpBbSBNaXR0d29jaCwgMjUuIE3DpHJ6IDIwMjYsIDE1OjI0OjQ1IE1pdHRlbGV1
cm9ww6Rpc2NoZSBOb3JtYWx6ZWl0IHNjaHJpZWIgUGVkcm8gQWx2ZXM6Cj4gSGksCj4gCj4gT24g
MjQvMDMvMjAyNiAxNDoxOCwgSGVpa28gU3R1ZWJuZXIgd3JvdGU6Cj4gPiBBbSBNb250YWcsIDIz
LiBNw6RyeiAyMDI2LCAxMDoyNTozMyBNaXR0ZWxldXJvcMOkaXNjaGUgTm9ybWFsemVpdCBzY2hy
aWViIFBlZHJvIEFsdmVzOgo+ID4+ICsmaGRtaV9yZWNlaXZlciB7Cj4gPj4gKwlwaW5jdHJsLTAg
PSA8JmhkbWltMV9yeF9jZWMgJmhkbWltMV9yeF9ocGRpbiAmaGRtaW0xX3J4X3NjbCAmaGRtaW0x
X3J4X3NkYSAmaGRtaXJ4X2RldD47Cj4gPj4gKwlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+
ID4+ICsJaHBkLWdwaW9zID0gPCZncGlvMSBSS19QQzYgR1BJT19BQ1RJVkVfTE9XPjsKPiA+IAo+
ID4gYXMgc2FpZCBiZWZvcmUsIHBsZWFzZSBhbHNvIGFkZCBhIHBpbmN0cmwgc2V0dGluZyBmb3Ig
dGhpcyBwaW4uCj4gPiAKPiA+IGdwaW8xX2M2IGlzIG5vdCBwYXJ0IG9mIHRoZSBtYWluIGhkbWly
eCBzZXQgb2YgcGlucywgaGVuY2UgbmVlZHMgYW4KPiA+IGFkZGl0aW9uYWwgcGluY3RybCBlbnRy
eSB0byBjb25maWd1cmUgaXQgYXMgZ3BpbyBhbmQgcG9zc2libHkgc2V0IGFueQo+ID4gYWRkaXRp
b25hbCBwdWxsIHNldHRpbmdzLgo+ID4gCj4gPiBBbmQgeWVzIHRoZSBwaW5jdHJsLWRyaXZlciBk
b2VzICJpbXBsY2l0bHkiIHNldCB0aGUgZ3Bpby1tb2RlIHdoZW4KPiA+IGEgZ3BpbyBpcyByZXF1
ZXN0ZWQsIGJ1dCBvdXIgbW9yZSBtb2Rlcm4gYXBwcm9hY2ggaXMgdG8gYWx3YXlzIGhhdmUKPiA+
IGEgcmVhbCBwaW5jdHJsIGVudHJ5IGV2ZW4gZm9yIGdwaW9zLgo+IAo+IEkgYW0gcHJvYmFibHkg
Z2V0dGluZyBjb25mdXNlZCBieSB3aGF0IHlvdSBhcmUgYXNraW5nIGhlcmUsIGJ1dCBJIGRvbid0
Cj4gdW5kZXJzdGFuZCB3aGF0IGV4YWN0bHkgSSBzaG91bGQgYWRkLiBUaGVyZSB3YXMgYWxyZWFk
eSBhIHBpbmN0cmwgZm9yCj4gaGRtaXJ4X2RldCAod2hpY2ggaXMgd2hhdCB0aGUgZ3BpbzFfYzYg
cGluIGlzKSBwcmVzZW50IGluIHRoZSBmaWxlLAo+IGhlbmNlIHdoeSBJIGRpZCBub3QgYWRkIGl0
IGluIHRoaXMgcGF0Y2g6Cj4gCj4gJnBpbmN0cmwgewo+IAkvKiAuLi4gKi8KPiAJaGRtaXJ4IHsK
PiAJCWhkbWlyeF9kZXQ6IGhkbWlyeC1kZXQgewo+IAkJCXJvY2tjaGlwLHBpbnMgPSA8MSBSS19Q
QzYgUktfRlVOQ19HUElPICZwY2ZnX3B1bGxfbm9uZT47Cj4gCQl9Owo+IAl9Owo+IAkvKiAuLi4g
Ki8KPiB9Owo+IAo+IExvb2tpbmcgYXQgdGhlIG90aGVyIGJvYXJkcywgdGhleSBkbyB0aGUgc2Ft
ZSB0aGluZywgYnV0IHRoZXkgY2FsbCBpdAo+IGhkbWlyeC01di1kZXRlY3Rpb24gaW5zdGVhZCwg
YnV0IGFzIGRpc2N1c3NlZCBpbiB2MSBvZiB0aGlzIHBhdGNoIEkKPiBlbmRlZCB1cCBrZWVwaW5n
IHRoZSBkZXQgbmFtaW5nIHRvIG1hdGNoIHRoZSBzY2hlbWF0aWNzLgo+IAo+IFNvcnJ5IGlmIEkg
YW0gbWlzc2luZyBzb21ldGhpbmcsIEkgZG9uJ3QgaGF2ZSBtdWNoIGV4cGVyaWVuY2Ugd2l0aCB0
aGlzLAo+IHNvIEkgd291bGQgcmVhbGx5IGFwcHJlY2lhdGUgc29tZSBleHRyYSBpbmZvcm1hdGlv
bi4KCllvdSBkaWRuJ3QgbWlzcyBhbnl0aGluZyAtIEkgZGlkIDotKSAuCgpOb3QgZmluZGluZyBh
biBhZGRpdGlvbiB0byB0aGUgcGluY3RybCBkZWZpbml0aW9ucyBpbiB0aGUgcGF0Y2gKSSBtaXNy
ZWFkIHRoZSAmaGRtaXJ4LWRldCByZWZlcmVuY2UgYXMgdGhlIG9uZSBkZWZpbmVkIGluIHRoZSBj
b3JlCnJrMzU4OC1iYXNlLXBpbmN0cmwsIG5vdCByZWFsaXppbmcgdGhhdCB0aGUgcm9jazUtaXR4
IG9uZSB3YXMKYWxyZWFkeSBleGlzdGluZyBpbiB0aGUgcm9jazUtaXR4IGR0cyBhbHJlYWR5LgoK
ClNvcnJ5IGFib3V0IGNvbmZ1c2luZyB5b3UKSGVpa28KCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

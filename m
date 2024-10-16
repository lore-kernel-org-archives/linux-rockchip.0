Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE8DFD206A5
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Oct 2024 07:46:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:From:To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4fBesbiSj/wZWneHh/6GSvkqudqwXPkJk+U9kNXoZhs=; b=mnTZTyzbdtOZJS
	1x5wSb6l5upb7mgSxx0nryuROemqpQhE/cRddR+bPKoUNHE+DKtP9w7Xrb4aixMTqqsiQlldph4sp
	tsmduXgJRKbpXMUDzz+5nQ4nsIRgRTaEUe9Ip9C8hl7ML8lOlbmicQRk10Ux9J2r4jjN/BcSl2vAw
	ei8hWaIzeZgrtqcWmy7Km1n1vf49j+HYa//xwGprSvZq7XtXDrxFnf1qwpn4DZNNQKT1uf/iYHFi+
	kyx0Z/msMEnN/pcLTpq0fqyEggpFEcUNHxrBIV8ruR7eZDcRNPSj3M26blRgdE1j5nk6L0AUHTIdL
	T4rHIC4esiPqu9PSgkRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0yjV-0000000AsXN-2DlH;
	Wed, 16 Oct 2024 07:46:13 +0000
Received: from mail-4322.protonmail.ch ([185.70.43.22])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0ygf-0000000Arrt-1dHm
	for linux-rockchip@lists.infradead.org;
	Wed, 16 Oct 2024 07:43:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=protonmail; t=1729064595; x=1729323795;
	bh=/RcCAilO9pgxTRMKsQDDzVlxiLUl3ImBOZ+NYjOQwQg=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=CCtwvnSJ08C4NQqidF9KCDwQc/VpccIPijK1BeQo/KRRwd2V+jvGPtjBQCz7KpJDf
	 oAzfoQ8x/CfxQ2rOIpvj7qKS7DRRxZwd69uljTyvDFVVucbt2/Yozsyqt5NRmXt6EG
	 QwXVSIry5s9Q7vsf9cOB+YI/dGf3gfE3dvWrPlwh4WSpX08Lz/XOV9a/rhvJcQCIR/
	 4kzZ01nUvjHFa13nqV8REUUnfVaboRry1kaagDrU8EorXAWGDpVwJm4FG7CNxrZV3/
	 U0F0wy33bbDaMWi68ZSCG+cwuTg7ThAUmNtCGIXueMUYyoTUllbHCwo3jctS4pYjRo
	 Rvqmnz5Ti5z1Q==
Date: Wed, 16 Oct 2024 07:43:12 +0000
To: Andy Yan <andyshrk@163.com>
From: Piotr Zalewski <pZ010001011111@proton.me>
Cc: hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com, maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, skhan@linuxfoundation.org, Daniel Stone <daniel@fooishbar.org>, Dragan Simic <dsimic@manjaro.org>, Diederik de Haas <didi.debian@cknow.org>
Subject: Re:Re:Re:[PATCH v5] rockchip/drm: vop2: add support for gamma LUT
Message-ID: <NxE_v2487UegHySoZJi6ZnC6t8tn63tH7DDaCBVIsShJHz1_dH_6o1pRHqGBhHq7LWIKlWitYH7Fbh0YDyEBNN8Pt0u27irk1VwuqMj8Y9c=@proton.me>
In-Reply-To: <rCXfMQ7epSo6CgnBpBcowcSa1ndRRyfEaDJLFhS4w2-S047bVknK4vU1_qPR7h1ho8SznXj5dYrBHRUmQe-MICdSB0OLm0P-N48lQzgWnfI=@proton.me>
References: <20241014222022.571819-4-pZ010001011111@proton.me> <7b45f190.452f.1928e41b746.Coremail.andyshrk@163.com> <o_Cyz_ARcHj4zNlovv75MBwslIRhn3YWlscoNrlpLVobh7eWIMEQR5bNv0yhHx2KEx_gbYi_gH-8Y-CdvRZs9lZscz3-lhAbM50GXUdtSKY=@proton.me> <30940542.b36d.19290215124.Coremail.andyshrk@163.com> <1974DYrs9gLrQrZ5VwCglFgKDDK686iyqnS_g6uPB-s9wZ_4CqfZXPjmYWihLgrkRu7ptNjpkFeqB0uTt73RFId6cL8FowQ8LFltPmaKCoI=@proton.me> <1ae9f15d.e52.19292e05e73.Coremail.andyshrk@163.com> <rCXfMQ7epSo6CgnBpBcowcSa1ndRRyfEaDJLFhS4w2-S047bVknK4vU1_qPR7h1ho8SznXj5dYrBHRUmQe-MICdSB0OLm0P-N48lQzgWnfI=@proton.me>
Feedback-ID: 53478694:user:proton
X-Pm-Message-ID: fbe0cdd32c280e3064ebe9989c10d3a295b445a0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_004317_607128_D676BAC7 
X-CRM114-Status: GOOD (  32.37  )
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

SGkgQW5keSwgSWdub3JlIHRoZSBtZXNzYWdlIEknbSBhbnN3ZXJpbmcgdG8uIEkgYWNjaWRlbnRh
bGx5IHNlbnQgaXQgcHJlbWF0dXJlbHkuIAoKT24gV2VkbmVzZGF5LCBPY3RvYmVyIDE2dGgsIDIw
MjQgYXQgOTo0MSBBTSwgUGlvdHIgWmFsZXdza2kgPHBaMDEwMDAxMDExMTExQHByb3Rvbi5tZT4g
d3JvdGU6Cgo+IEhpIEFuZHksCj4gCj4gT24gV2VkbmVzZGF5LCBPY3RvYmVyIDE2dGgsIDIwMjQg
YXQgMzoxMCBBTSwgQW5keSBZYW4gYW5keXNocmtAMTYzLmNvbSB3cm90ZToKPiAKPiA+IEhpIFBp
b3RyLAo+ID4gCj4gPiBBdCAyMDI0LTEwLTE2IDA0OjEzOjQwLCAiUGlvdHIgWmFsZXdza2kiIHBa
MDEwMDAxMDExMTExQHByb3Rvbi5tZSB3cm90ZToKPiA+IAo+ID4gPiBIaSBBbmR5Cj4gPiA+IAo+
ID4gPiBPbiBUdWVzZGF5LCBPY3RvYmVyIDE1dGgsIDIwMjQgYXQgMjoyMiBQTSwgQW5keSBZYW4g
YW5keXNocmtAMTYzLmNvbSB3cm90ZToKPiA+ID4gCj4gPiA+ID4gPiA+ID4gKyBzdHJ1Y3Qgdm9w
Ml92aWRlb19wb3J0ICp2cCwKPiA+ID4gPiA+ID4gPiArIHN0cnVjdCBkcm1fY3J0YyAqY3J0YywK
PiA+ID4gPiA+ID4gPiArIHN0cnVjdCBkcm1fY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKPiA+ID4g
PiA+ID4gPiArewo+ID4gPiA+ID4gPiA+ICsKPiA+ID4gPiA+ID4gPiArIGlmICh2b3AyLT5sdXRf
cmVncyAmJiBjcnRjX3N0YXRlLT5jb2xvcl9tZ210X2NoYW5nZWQpIHsKPiA+ID4gPiA+ID4gPiAr
IGlmICghY3J0Y19zdGF0ZS0+Z2FtbWFfbHV0KSB7Cj4gPiA+ID4gPiA+ID4gKyB2b3AyX3ZwX2Rz
cF9sdXRfZGlzYWJsZSh2cCk7Cj4gPiA+ID4gPiA+ID4gKyByZXR1cm47Cj4gPiA+ID4gPiA+ID4g
KyB9Cj4gPiA+ID4gPiA+ID4gKwo+ID4gPiA+ID4gPiA+ICsgaWYgKHZvcDJfc3VwcG9ydHNfc2Vh
bWxlc3NfZ2FtbWFfbHV0X3VwZGF0ZSh2b3AyKSkgewo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4g
SSB0aGluayBpdCdzIGJldHRlcnkgdG8gY2hlY2sgZm9yIHJrMzU2OC9yazM1NjYgaGVyZSwgdGhl
IG5ld2VyIHNvYyB3aWxsIGFsbCBmb2xsb3cKPiA+ID4gPiA+ID4gcmszNTg4IHN1cHBvcnQgc2Vh
bWxlc3MgZ2FtbWEgbHV0IHVwZGF0ZS4KPiA+ID4gPiA+IAo+ID4gPiA+ID4gSSB3aWxsIGNoYW5n
ZSBpbiB0aGUgbmV4dCB2ZXJzaW9uLgo+ID4gPiA+ID4gCj4gPiA+ID4gPiA+ID4gKyB2b3AyX3dy
aXRlbCh2b3AyLCBSSzM1NjhfTFVUX1BPUlRfU0VMLCBGSUVMRF9QUkVQKAo+ID4gPiA+ID4gPiA+
ICsgUkszNTg4X0xVVF9QT1JUX1NFTF9fR0FNTUFfQUhCX1dSSVRFX1NFTCwKPiA+ID4gPiA+ID4g
PiArIHZwLT5pZCkpOwo+ID4gPiA+ID4gPiA+ICsgdm9wMl9jcnRjX3dyaXRlX2dhbW1hX2x1dCh2
b3AyLCBjcnRjKTsKPiA+ID4gPiA+ID4gPiArIHZvcDJfdnBfZHNwX2x1dF9lbmFibGUodnApOwo+
ID4gPiA+ID4gPiA+ICsgdm9wMl92cF9kc3BfbHV0X3VwZGF0ZV9lbmFibGUodnApOwo+ID4gPiA+
ID4gPiA+ICsgfSBlbHNlIHsKPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IEFzIGZvciByazM1NjYv
NjgsIHdlIHNob3VsZCBkbyBleGNsdXNpdmUgY2hlY2sgaGVyZSwgYmVjYXVzZSB0aGVyZSBpcyBv
bmx5Cj4gPiA+ID4gPiA+IG9uZSBnYW1tYSAsIG9ubHkgb25lIFZQIGNhbiB1c2UgaXQgYXQgYSB0
aW1lLiBTZWUgbXkgY29tbWVudHMgaW4gVjM6Cj4gPiA+ID4gPiAKPiA+ID4gPiA+IFdoYXQgZG8g
eW91IG1lYW4gZXhhY3RseSBieSBleGNsdXNpdmUgY2hlY2sgaW4gdGhpcyBjYXNlLkl0J3MgdHJ1
ZSB0aGF0Cj4gPiA+ID4gPiBnYW1tYSBMVVQgaXMgc2hhcmVkIGFjcm9zcyB2aWRlbyBwb3J0cyBp
biByazM1NnggYnV0LCBpZiBJIGNvcnJlY3RseQo+ID4gPiA+ID4gdW5kZXJzdGFuZCwgdGhpcyBk
b2Vzbid0IGZvcmJpZCB0byByZXByb2dyYW0gTFVUIHBvcnQgc2VsIGFuZCBhbGxvdyBvdGhlcgo+
ID4gPiA+ID4gVlAgdG8gdXNlIGdhbW1hIExVVC4KPiA+ID4gPiAKPiA+ID4gPiBZZXMsIHdlIGNh
biByZXByb2dyYW0gTFVUIHBvcnQgc2VsLCBidXQgd2UgbmVlZCB0byBtYWtlIHN1cmUgdGhlIHRo
ZSBkc3BfbHV0X2VuIGJpdCBpbiBWUHggaXMgY2xlYXJlZCBpZiB3ZQo+ID4gPiA+IHdhbnQgcmVw
cm9ncmFtIExVVCBwb3J0IHNlbCBmb3JtIFZQeCB0byBWUHkuCj4gPiA+IAo+ID4gPiBPayBJIGdl
dCBpdCBub3cuIElzIHN1Y2ggcmV3b3JrIGNvcnJlY3Q/IC0gd2hlbiBnYW1tYSBMVVQgZm9yIHJr
MzU2eCBpcwo+ID4gPiBiZWluZyBzZXQsIGluc3RlYWQgb2YgZGlzYWJsaW5nIHRoZSBMVVQgYmVm
b3JlIHRoZSBnYW1tYSBMVVQgd3JpdGUgZm9yIHRoZQo+ID4gPiBjdXJyZW50IENSVEMncyB2aWRl
byBwb3J0LCBhY3RpdmUgdmlkZW8gcG9ydCBpcyBzZWxlY3RlZC4gU2VsZWN0aW9uIGlzCj4gPiA+
IGJhc2VkIG9uIGlmIERTUCBMVVQgRU4gYml0IGlzIHNldCBmb3IgcGFydGljdWxhciB2aWRlbyBw
b3J0LiBlZzoKPiA+IAo+ID4gSWYgdGhlIHVzZXJzcGFjZSB3YW50IHRvIHNldCBnYW1tYSBmb3Ig
Q1JUQ3gsIHRoZW4gdGhhdCBpcyBpbmRlZWQgd2hlcmUgdGhleSB3YW50IHRvIHNldCB0aGUKPiA+
IGdhbW1hIG9u44CCVGhlIGRyaXZlciBzaWxlbnRseSBzZXRzIHRoZSBnYW1tYSBvbiBhbm90aGVy
IENSVEMsIHdoaWNoIGlzIG5vdCB3aGF0IHRoZSB1c2VyIHdhbnRzLgo+IAo+IAo+IEhlbGxvIG1h
eWJlIHRoZXJlIGlzIHNvbWUgbWlzdW5kZXJzdGFuZGluZywgaGVyZSBpcyBmdWxsIHZlcnNpb24g
b2YgbXkgcmV3b3JrCj4gYGBgCj4gCj4gPiBJIHRoaW5rIHRoZXJlIGFyZSB0d28gb3B0aW9uc++8
mgo+ID4g77yIMe+8iXJldHVybiBhIGVycm9yIGlmIGdhbW1hIGlzIGVuYWJsZSBvbiBvdGhlciBD
UlRD77yMIHRoaXMgaXMgd2hhdCB3ZSBkb25lIGluIG91ciBCU1AgY29kZVsxXQo+ID4gKDIpIGRp
c2FibGUgdGhlIGRzcF9sdXQgb24gcHJpdmlvdXMgQ1JUQywgdGhlbiBzd2l0Y2ggdG8gdGhlIGN1
cnJlbnQgQ1JUQyB3aGljaCB1c2Vyc3BhY2Ugd2FudHMuCj4gPiAKPiA+IFsxXWh0dHBzOi8vZ2l0
aHViLmNvbS9hcm1iaWFuL2xpbnV4LXJvY2tjaGlwL2Jsb2IvcmszNTc2LTYuMS1kZXYtMjAyNF8w
NF8xOS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcDIuYyNMMzY2Ngo+
IAo+IAo+IEhtbSBvayBpbiBteSBzb2x1dGlvbiBJIHN1cHBvc2Vkbwo+IAo+ID4gPiBgYGAKPiA+
ID4gc3RhdGljIHN0cnVjdCB2b3AyX3ZpZGVvX3BvcnQgKnZvcDJfdnBfZHNwX2x1dF9nZXRfYWN0
aXZlX3ZwKHN0cnVjdCB2b3AyICp2b3AyKQo+ID4gPiB7Cj4gPiA+IHN0cnVjdCB2b3AyX3ZpZGVv
X3BvcnQgKnZwOwo+ID4gPiBpbnQgaTsKPiA+ID4gZm9yIChpID0gMDsgaSA8IHZvcDItPmRhdGEt
Pm5yX3ZwczsgaSsrKSB7Cj4gPiA+IHZwID0gJnZvcDItPnZwc1tpXTsKPiA+ID4gCj4gPiA+IGlm
ICh2cC0+Y3J0Yy5kZXYgIT0gTlVMTCAmJiB2b3AyX3ZwX2RzcF9sdXRfaXNfZW5hYmxlZCh2cCkp
IHsKPiA+ID4gcmV0dXJuIHZwOwo+ID4gPiB9Cj4gPiA+IH0KPiA+ID4gcmV0dXJuIE5VTEw7Cj4g
PiA+IH0KPiA+ID4gCj4gPiA+ICguLi4pCj4gPiA+IAo+ID4gPiBzdHJ1Y3Qgdm9wMl92aWRlb19w
b3J0ICphY3RpdmVfdnAgPSB2b3AyX3ZwX2RzcF9sdXRfZ2V0X2FjdGl2ZV92cCh2b3AyKTsKPiA+
ID4gCj4gPiA+IGlmIChhY3RpdmVfdnApIHsKPiA+ID4gdm9wMl92cF9kc3BfbHV0X2Rpc2FibGUo
YWN0aXZlX3ZwKTsKPiA+ID4gdm9wMl9jZmdfZG9uZShhY3RpdmVfdnApOwo+ID4gPiBpZiAoIXZv
cDJfdnBfZHNwX2x1dF9wb2xsX2Rpc2FibGUoYWN0aXZlX3ZwKSkKPiA+ID4gcmV0dXJuOwo+ID4g
PiB9Cj4gPiA+IAo+ID4gPiB2b3AyX3dyaXRlbCh2b3AyLCBSSzM1NjhfTFVUX1BPUlRfU0VMLCB2
cC0+aWQpOwo+ID4gPiB2b3AyX2NydGNfd3JpdGVfZ2FtbWFfbHV0KHZvcDIsIGNydGMpOwo+ID4g
PiB2b3AyX3ZwX2RzcF9sdXRfZW5hYmxlKHZwKTsKPiA+ID4gYGBgCj4gCj4gCj4gQmVzdCBSZWdh
cmRzLCBQaW90ciBaYWxld3NraQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=

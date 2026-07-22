Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C3E8C44539
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Jul 2026 12:34:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yZftYwBOj2O1Id3PK9AVTfohUcwW2n32kD31UJF0WgA=; b=Q4COgBkCMnFM3n
	rIMSFY8/JL/+pVzQYPGbR7XqJxyeRMkuLVT9Sf9XDpogDO7rzo/fFLASrxl8jcMrBuIsQXjqvOPkv
	E2KpUL7X+RppOb4kVftREjBkKWbz3pyQpvAuj8rogyR1U86EXsKSp8tjDXOyrjWTQi7OKvsAIcUlp
	TZPqAi51bNY7S7S9LXpeL/lwV4sg4+4+u/EmKYGejJFLZ7ZF8fzVBp9QUhWMqk0uyjIm0ZSxnysm7
	xl1zfWFfOLaBHnpD2A/VBK8zqC+q+6eZvK0UIkcEydg3EuE8970o+8iqusqUmyBU/mPuKolUIxLqp
	Nd1JwHceWn7rBapxjjdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmW9U-0000000Bm5z-2tod;
	Wed, 22 Jul 2026 12:34:20 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmW9T-0000000Bm5V-2WJB;
	Wed, 22 Jul 2026 12:34:19 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 0E175600AF;
	Wed, 22 Jul 2026 12:34:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D017C1F000E9;
	Wed, 22 Jul 2026 12:34:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784723658;
	bh=UnTZnEO1RmvpgW4LLUlogfu73djdSpGYvoqvHkTazF4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=bzvHdx8LoV6t9yiZxpbzqhBsdprPK4HsXqvJ40GzizC08zdeQ6izK0Njcytxoqz/m
	 qZ6os7sPm0i/jHQ4UkxtoU+RTGzMLVkV4DuBqCdX6SoSvik3b1tBTTgEZNKF9S6NSK
	 ObP5a14FZxCSqlPzlXcBd0h1S9o4cXMlWKa1hSwDH4IC6ioTLLqhcY8+To9HiGHel/
	 79ott/JeefLTFIsGvRVdU6VgheaTqwLovfBhYBNlGgPQBzu5rCVKgYk8dSpA079QRf
	 ihhWOulVs7cjZ9DaZIrgz8o1dAX/rTQfFu8z8VtqSqeeoWNxnRTA6wlxfq0HU3qJYl
	 tB+dIONxnwnmA==
Date: Wed, 22 Jul 2026 14:34:07 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: manivannan.sadhasivam@oss.qualcomm.com, 
	Bjorn Helgaas <bhelgaas@google.com>, Mahesh J Salgaonkar <mahesh@linux.ibm.com>, 
	Oliver O'Halloran <oohall@gmail.com>, Will Deacon <will@kernel.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Rob Herring <robh@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Philipp Zabel <p.zabel@pengutronix.de>, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	Wilfred Mallawa <wilfred.mallawa@wdc.com>, Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>, 
	Lukas Wunner <lukas@wunner.de>, Richard Zhu <hongxing.zhu@nxp.com>, 
	Brian Norris <briannorris@chromium.org>, Wilson Ding <dingwei@marvell.com>, Frank Li <Frank.Li@nxp.com>
Subject: Re: [PATCH v7 0/4] PCI: Add support for resetting the Root Ports in
 a platform specific way
Message-ID: <fij5nuydnb7d6o3i7mwq2nz64wnkicr6hgs4r6dpv6uca7cnyf@ujn4andla3iq>
References: <20260310-pci-port-reset-v7-0-9dd00ccc25ab@oss.qualcomm.com>
 <abFMa6DCGGLUHddA@fedora>
 <dp2rem4gj7zhfgykvekmcrhq4ticm6m6ido6tbgflwzfcuuwkl@4wuxgle27eyx>
 <srdn3bspgwff7f7tnst7wzg4us4buifrv7o3ylo527hmuciyl3@6ioyrl6rfhaz>
 <abk3rU2EDKjkefUD@ryzen>
 <tgsh3cum6qxrqjzbdeqjsp6bf7cqedj7il77hww3oxecadndin@idjnwib7cz4z>
 <agybt3onTAJO2Dl9@ryzen>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <agybt3onTAJO2Dl9@ryzen>
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

T24gVHVlLCBNYXkgMTksIDIwMjYgYXQgMDc6MTk6NTFQTSArMDIwMCwgTmlrbGFzIENhc3NlbCB3
cm90ZToKPiBIZWxsbyBNYW5pLAo+IAo+IE9uIE1vbiwgTWF5IDE4LCAyMDI2IGF0IDExOjUxOjU2
QU0gKzA1MzAsIE1hbml2YW5uYW4gU2FkaGFzaXZhbSB3cm90ZToKPiA+ID4gCj4gPiA+IFdpdGgg
dGhlIHBhdGNoIGFib3ZlLiBUaGVyZSBpcyB6ZXJvIGRpZmZlcmVuY2UgYmVmb3JlL2FmdGVyIHJl
c2V0LCBhbmQgYWxsCj4gPiA+IHRoZSBCQVIgdGVzdHMgcGFzcy4gSG93ZXZlciwgTVNJL01TSS1Y
IHRlc3RzIHN0aWxsIGZhaWwgd2l0aDoKPiA+ID4gCj4gPiA+ICMgcGNpX2VuZHBvaW50X3Rlc3Qu
YzoxNDM6TVNJX1RFU1Q6RXhwZWN0ZWQgMCAoMCkgPT0gcmV0ICgtMTEwKSAKPiA+ID4gIyBwY2lf
ZW5kcG9pbnRfdGVzdC5jOjE0MzpNU0lfVEVTVDpUZXN0IGZhaWxlZCBmb3IgTVNJMQo+ID4gPiAK
PiA+ID4gRVRJTUVET1VULgo+ID4gPiAKPiA+ID4gVGhpcyBzdWdnZXN0cyB0aGF0IHBjaV9lbmRw
b2ludF90ZXN0IG9uIHRoZSBob3N0IHNpZGUgZGlkIG5vdCByZWNlaXZlIGFuCj4gPiA+IGludGVy
cnVwdC4KPiA+ID4gCj4gPiA+IEkgZG9uJ3Qga25vdyB3aHksIGJ1dCBjb25zaWRlcmluZyB0aGF0
IGxzcGNpIG91dHB1dCBpcyBub3cgKHdpdGggdGhlCj4gPiA+IHNhdmUrcmVzdG9yZSkgaWRlbnRp
Y2FsLCBJIGFzc3VtZSB0aGF0IHRoZSBwcm9ibGVtIGlzIG5vdCByZWxhdGVkIHRvCj4gPiA+IHRo
ZSBob3N0LiBVbmxlc3Mgc29tZWhvdyB0aGUgaG9zdCB3aWxsIHVzZSBhIG5ldy9kaWZmZXJlbnQg
TVNJIGFkZHJlc3MKPiA+ID4gYWZ0ZXIgdGhlIHJvb3QgcG9ydCBoYXMgYmVlbiByZXNldCwgYW5k
IHdlIHJlc3RvcmUgdGhlIG9sZCBNU0kgYWRkcmVzcywKPiA+ID4gYnV0IGxvb2tpbmcgYXQgdGhl
IGNvZGUsIGR3X3BjaWVfbXNpX2luaXQoKSBpcyBjYWxsZWQgYnkKPiA+ID4gZHdfcGNpZV9zZXR1
cF9yYygpLCBzbyBJIHdvdWxkIGV4cGVjdCB0aGUgTVNJIGFkZHJlc3MgdG8gYmUgdGhlIHNhbWUu
Cj4gPiA+IAo+ID4gCj4gPiBIaSBOaWtsYXMsCj4gPiAKPiA+IFdoZW4gSSByZWJhc2VkIHRoaXMg
c2VyaWVzIG9uIHRvcCBvZiB2Ny4xLXJjMSwgSSBlbmRlZCB1cCBzZWVpbmcgdGhlIGlzc3VlIHdo
YXQKPiA+IHlvdSBkZXNjcmliZWQgaGVyZSAobm90IHN1cmUgd2h5IEkgZGlkbid0IHNlZSBpdCBl
YXJsaWVyKS4gU28gYWZ0ZXIgdGhlIFJvb3QKPiA+IFBvcnQgcmVzZXQsIE1TSSB0ZXN0cyBmYWls
LCBidXQgQkFSIHRlc3RzIHN1Y2NlZWQuIEFsc28sIEkgZ290IElPTU1VIGZhdWx0cyBvbgo+ID4g
dGhlIGhvc3QgYWZ0ZXIgZW5kcG9pbnQgdHJpZ2dlcnMgTVNJLgo+ID4gCj4gPiBJIGludmVzdGln
YXRlZCBpdCBhbmQgZm91bmQgdGhhdCB0aGUgTVNJIGlBVFUgbWFwcGluZyBnZXRzIGNsZWFyZWQg
aW4gaHcgYWZ0ZXIKPiA+IExEbiBoYXBwZW5zLiBCdXQgdGhlIGhvc3QgY29udGludWVzIHRvIHVz
ZSB0aGUgc2FtZSBhZGRyZXNzL3NpemUgZm9yIHRoZQo+ID4gZW5kcG9pbnQgTVNJIGV2ZW4gYWZ0
ZXIgcmVzZXQuIER1ZSB0byB0aGlzLCB0aGUgZXhpc3RpbmcgY2hlY2tzIGluCj4gPiBkd19wY2ll
X2VwX3JhaXNlX21zaV9pcnEoKSBkb24ndCBwYXNzIGFuZCB0aGUgc3RhbGUgTVNJIGlBVFUgbWFw
cGluZyBnZXRzCj4gPiByZXVzZWQuCj4gPiAKPiA+IFRoZSBmaXggd291bGQgYmUgdG8gY2xlYXIg
dGhlIG1hcHBpbmcgaW4gZHdfcGNpZV9lcF9jbGVhbnVwKCksIHdoaWNoIGdldHMgY2FsbGVkCj4g
PiBhcyBwYXJ0IG9mIHRoZSBQRVJTVCMgYXNzZXJ0L2RlYXNzZXJ0IHNlcXVlbmNlIHBvc3QgTERu
IGFuZCBhbHNvIHNldAo+ID4gbXNpX2lhdHVfbWFwcGVkIGZsYWcgdG8gJ2ZhbHNlJy4gVGhpcyB3
aWxsIGZvcmNlIGR3X3BjaWVfZXBfcmFpc2VfbXNpX2lycSgpIHRvCj4gPiB1c2UgZnJlc2ggaUFU
VSBtYXBwaW5nIHdoZW4gaXQgZ2V0cyBjYWxsZWQgZm9yIHRoZSBmaXJzdCB0aW1lOgo+ID4gCj4g
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kZXNpZ253YXJl
LWVwLmMgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWRlc2lnbndhcmUtZXAuYwo+
ID4gaW5kZXggZDRkYzNiMjRkYTYwLi40YWUwZTFiNTVmMzkgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2
ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWRlc2lnbndhcmUtZXAuYwo+ID4gKysrIGIvZHJp
dmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kZXNpZ253YXJlLWVwLmMKPiA+IEBAIC0xMDM1
LDYgKzEwMzUsMTEgQEAgdm9pZCBkd19wY2llX2VwX2NsZWFudXAoc3RydWN0IGR3X3BjaWVfZXAg
KmVwKQo+ID4gIHsKPiA+ICAgICAgICAgc3RydWN0IGR3X3BjaWUgKnBjaSA9IHRvX2R3X3BjaWVf
ZnJvbV9lcChlcCk7Cj4gPiAgCj4gPiArICAgICAgIGlmIChlcC0+bXNpX2lhdHVfbWFwcGVkKSB7
Cj4gPiArICAgICAgICAgICAgICAgZHdfcGNpZV9lcF91bm1hcF9hZGRyKGVwLT5lcGMsIDAsIDAs
IGVwLT5tc2lfbWVtX3BoeXMpOwo+ID4gKyAgICAgICAgICAgICAgIGVwLT5tc2lfaWF0dV9tYXBw
ZWQgPSBmYWxzZTsKPiA+ICsgICAgICAgfQo+ID4gKwo+ID4gICAgICAgICBkd2NfcGNpZV9kZWJ1
Z2ZzX2RlaW5pdChwY2kpOwo+ID4gICAgICAgICBkd19wY2llX2VkbWFfcmVtb3ZlKHBjaSk7Cj4g
PiAgfQo+ID4gCj4gPiBXaXRoIHRoaXMgY2hhbmdlLCBNU0kgd29ya3MgYWZ0ZXIgUm9vdCBQb3J0
IHJlc2V0IHdpdGhvdXQgYW55IGlzc3VlcyBvbiBvdXIgUWNvbQo+ID4gZW5kcG9pbnQvaG9zdCBz
ZXR1cC4KPiA+IAo+ID4gUGxlYXNlIHRlc3QgdGhpcyBjaGFuZ2Ugb24geW91ciByb2NrY2hpcCBz
ZXR1cCBhcyB3ZWxsLiBZb3UgaGF2ZSB0byBtYWtlIHN1cmUKPiA+IHRoYXQgZHdfcGNpZV9lcF9j
bGVhbnVwKCkgaXMgY2FsbGVkIGR1cmluZyBQRVJTVCMgYXNzZXJ0L2RlYXNzZXJ0Lgo+ID4gCj4g
PiBJJ20gZ29pbmcgdG8gcmVzcGluIHRoZSBzZXJpZXMgd2l0aCB0aGlzIGZpeC4gSWYgeW91IGNv
bmZpcm0gaXQgd29ya3MgZm9yIHlvdSwKPiA+IHRoZW4gd2UgY2FuIG1lcmdlIHlvdXIgUm9ja2No
aXAgUm9vdCBQb3J0IGNoYW5nZS4KClNvbWVob3csIHRoaXMgcmVwbHkgZmVsbCBpbnRvIHRoZSBj
cmFja3MuLi4KCj4gCj4gSSBhbSBoYXBweSB0byBoZWFyIHRoYXQgeW91IG1hbmFnZWQgdG8gZmlu
ZCB0aGUgcm9vdCBjYXVzZSEKPiAKPiBIb3BlZnVsbHkgeW91ciBzZXJpZXMgY2FuIGZpbmFsbHkg
bW92ZSBmb3J3YXJkIDopCj4gCj4gV2hpbGUgZS5nLiBSSzM1ODggZG9lcyBoYXZlIGEgUEVSU1Qj
IGlucHV0IEdQSU8sIHNvIGl0IGNvdWxkIHRoZW9yZXRpY2FsbHkKPiBhZGQgYSBwZXJzdF9kZWFz
c2VydCgpL2Fzc2VydCgpIGZ1bmN0aW9uLiBIb3dldmVyLCB3aGVuIHRoZSBFUEMgc3VwcG9ydCB3
YXMKPiBhZGRlZCwgeW91IGRpZCBub3Qgd2FudCB0aGF0LCBzaW5jZSBJIHJlbWVtYmVyIHRoYXQg
eW91IHNhaWQgdGhhdCB5b3Ugb25seQo+IHdhbnRlZCB0aGF0IGZvciBkcml2ZXJzIHRoYXQgcmVx
dWlyZWQgYW4gZXh0ZXJuYWwgcmVmY2xvY2suCj4gCgpIbW0sIEkgZG9uJ3QgcmVjYWxsIGV4YWN0
bHkgdGhhdCBjb252ZXJzYXRpb24sIGJ1dCBpZiBJIHNhaWQgdGhhdCB0aGVuIEkgd2FzCndyb25n
LiBQRVJTVCMgYXNzZXJ0KCkvZGVzc2VydCgpIGhhdmUgbm90aGluZyB0byBkbyB3aXRoIFJFRkNM
Sy4gTWF5YmUgSSB3YXMgdG9vCmZvY3VzZWQgb24gZG9pbmcgdGhpbmdzIGFzc3VtaW5nIHRoYXQg
UkVGQ0xLIHdvbid0IGJlIGF2YWlsYWJsZS4KCkJ1dCBhbnlob3csIGZlZWwgZnJlZSB0byBhZGQg
aXQgbm93LgoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCu
vuCumuCuv+CuteCuruCvjQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=

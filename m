Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3286C021B8
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Mar 2025 22:17:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m21ZsidahSoE/v9kCsWz05sf9YBKISmAUnYxA2axo2c=; b=Ht3S14lq63UiRY
	21XPINRMFP9l64YERlM5HB85lIXwidPgvAPUDk+S2qimg2wcPrW79dM5ixTw8j4VjAu/q6JUqQWRq
	aHJuM8nfxDLiI1kP3SHPaBpzj1n6IxpE5+ChkIOj2QKpgmCqbE7D7STdvMUbdBmZkeNRi7oTqQKcC
	SaWaPO1K40wDqkhFWifPUaS/pSNFld2EElmDmwl+FerH95wSHOKk0KIflDOWnq8yV1Hsq0RDp0E3+
	ighNxWRFT8fNerZKbmy045Yuk+4eiMu/8FQG0CkcXOMKvvsq/GV2NwxBzvAbfGaPFBA0XM31G4hzL
	ZX6hsPWjW2qcZPgfRlRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpaZg-00000006O47-1PXT;
	Tue, 04 Mar 2025 22:17:16 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpaZd-00000006O3g-44dz;
	Tue, 04 Mar 2025 22:17:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=JofA2Qh9JGaxtMid0/5sEvR2yQLob0lQuZxap80vKqw=; b=Tkh7mn3A+PYTIgV27zWhch/208
	ETUALWlqEqZb9jksjEgNDlpzfKLYqN2rarathziQV8Ntjv+PPBBfpKKage0LcF7B5AYw5QcG4mzHk
	Nds+uv8i40buo1duskWACkkerB1c8+77MtGCmUqDCz/AWnTbCcf/VEohCydBFaftKyZDJ4/Buxmfy
	mPtQZSVrBco/oLg3OHlqc4Wn15Q5yI3xcUjWkH5zHT1Lf0r43ib9TeG6ezMFV4R1zoTZ6I17a2l91
	INcWrZvknMxlFFMkx2w45YdSG5m6sc+nEHFuQA6yVC26YXkNz7i4f39l6AJ1KWr3USk5v0Ew3iEAH
	kPVZlMcw==;
Received: from i53875a38.versanet.de ([83.135.90.56] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tpaBb-0006QR-08; Tue, 04 Mar 2025 22:52:23 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Dragan Simic <dsimic@manjaro.org>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, didi.debian@cknow.org, chris@z9.de
Subject: Re: [PATCH v2 0/2] Slightly improve hardware description of Pine64 RockPro64
Date: Tue, 04 Mar 2025 22:52:22 +0100
Message-ID: <2630232.Icojqenx9y@diego>
In-Reply-To: <757afa87255212dfa5abf4c0e31deb08@manjaro.org>
References: <cover.1740941097.git.dsimic@manjaro.org>
 <174104113599.8946.16805724674396090918.b4-ty@sntech.de>
 <757afa87255212dfa5abf4c0e31deb08@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250304_141714_001746_80693498 
X-CRM114-Status: GOOD (  24.30  )
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

QW0gRGllbnN0YWcsIDQuIE3DpHJ6IDIwMjUsIDA3OjQ0OjU5IE1FWiBzY2hyaWViIERyYWdhbiBT
aW1pYzoKPiBIZWxsbyBIZWlrbywKPiAKPiBPbiAyMDI1LTAzLTAzIDIzOjM2LCBIZWlrbyBTdHVl
Ym5lciB3cm90ZToKPiA+IE9uIFN1biwgMDIgTWFyIDIwMjUgMTk6NDg6MDIgKzAxMDAsIERyYWdh
biBTaW1pYyB3cm90ZToKPiA+PiBUaGlzIGlzIGEgc21hbGwgc2VyaWVzIHRoYXQgaW50cm9kdWNl
cyBzbWFsbCBpbXByb3ZlbWVudHMgdG8gdGhlIHdheQo+ID4+IFBpbmU2NCBSb2NrUHJvNjQgWzFd
IHNpbmdsZS1ib2FyZC1jb21wdXRlciBpcyBkZXNjcmliZWQgaW4gdGhlIERUIAo+ID4+IGZpbGVz
Lgo+ID4+IFRoaXMgYXBwbGllcyB0byBib3RoIHByb2R1Y3Rpb24tcnVuIHJldmlzaW9ucyBvZiB0
aGUgUm9ja1BybzY0Lgo+ID4+IAo+ID4+IFRoZSBpbnRyb2R1Y2VkIGltcHJvdmVtZW50cyBib2ls
IGRvd24gdG8gZWxpbWluYXRpbmcgc29tZSB3YXJuaW5ncyAKPiA+PiBmcm9tCj4gPj4gdGhlIGtl
cm5lbCBsb2csIGJ5IGFkZGluZyBhIHByZXZpb3VzbHkgdW5kZWZpbmVkIHJlZ3VsYXRvciBhbmQg
YnkgCj4gPj4gYWRkaW5nCj4gPj4gc29tZSBwcmV2aW91c2x5IG1pc3NpbmcgcmVmZXJlbmNlcyB0
byB0aGUgcmVndWxhdG9ycy4KPiA+PiAKPiA+PiBbLi4uXQo+ID4gCj4gPiBBcHBsaWVkLCB0aGFu
a3MhCj4gPiAKPiA+IFsxLzJdIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBBZGQgYXZkZCBIRE1JIHN1
cHBsaWVzIHRvIFJvY2tQcm82NCBib2FyZCAKPiA+IGR0c2kKPiA+ICAgICAgIGNvbW1pdDogYmQx
Yzk1OWYzN2YzODRiNDc3ZjUxNTcyMzMxYjBkYzgyOGJkMDA5YQo+ID4gWzIvMl0gYXJtNjQ6IGR0
czogcm9ja2NoaXA6IEFkZCBtaXNzaW5nIFBDSWUgc3VwcGxpZXMgdG8gUm9ja1BybzY0IAo+ID4g
Ym9hcmQgZHRzaQo+ID4gICAgICAgY29tbWl0OiA2NGVmNGE0MzIwZTdhYTNmMGYyNjdlMDFmMTcw
ZjUyYjkwYmYwYjFiCj4gPiAKPiA+IEkndmUgbW92ZWQgdGhlIHBjaWUxMnYgc3VwcGx5IHVwIG9u
ZSBsaW5lLgo+ID4gV2hpbGUgaW4gYSBtYXRoZW1hdGljYWwgc2Vuc2UgaXQncyB0cnVlIDEyID4g
My4zLCB3ZSdyZSBzb3J0aW5nCj4gPiBhbHBoYWJldGljYWwsIHNvIGl0J3MgMT8/IDwgMz8/IC4K
PiA+IAo+ID4gQW5kIHllcyBJIHN5bXBhdGhpemUgd2l0aCAzLjMgPCAxMiwgYnV0IGFsc28gaGF2
ZSBjb21lIHRvIGFwcHJlY2lhdGUgCj4gPiBub3QKPiA+IGhhdmluZyBvdmVybHkgbWFueSBzcGVj
aWFsIGNhc2VzIDotKQo+IAo+IEdyZWF0LCB0aGFua3MhIDopCj4gCj4gSSdtIGZpbmUgd2l0aCB0
aGUgYWxwaGFiZXRpY2FsIG9yZGVyaW5nLCBhbGJlaXQgd2l0aCBzb21lIGNhdmVhdHMKPiBkZXNj
cmliZWQgYmVsb3csIGJ1dCB0aGUgZm9sbG93aW5nIHBhcnQgb2YgdGhlIHBhdGNoIGRlc2NyaXB0
aW9uCj4gc2hvdWxkIGFsc28gYmUgcmVtb3ZlZCwgaWYgcG9zc2libGUsIHNvIHRoZSBwYXRjaCBk
ZXNjcmlwdGlvbiBmdWxseQo+IG1hdGNoZXMgdGhlIGludHJvZHVjZWQgY2hhbmdlczoKPiAKPiAg
ICBTaHVmZmxlIGFuZCByZW9yZGVyIHRoZSAidnBjaWUqLXN1cHBseSIgcHJvcGVydGllcyBhIGJp
dCwgc28gdGhleSdyZSAKPiBzb3J0ZWQKPiAgICBhbHBoYW51bWVyaWNhbGx5LCB3aGljaCBpcyBh
IGJpdCBtb3JlIGxvZ2ljYWwgYW5kIG1vcmUgdXNlZnVsIHRoYW4gCj4gaGF2aW5nCj4gICAgdGhl
c2UgcHJvcGVydGllcyBsaXN0ZWQgaW4gdGhlaXIgc3RyaWN0IGFscGhhYmV0aWNhbCBvcmRlci4K
CkkndmUgYW1lbmRlZCB0aGUgY29tbWl0LCBkcm9wcGluZyB0aGlzIGJsb2NrCgo+IEknbSBob3Bp
bmcgeW91J2xsIGFncmVlIHRoYXQgc3BlY2lmeWluZyBhbHBoYW51bWVyaWNhbCBvcmRlcmluZwo+
IGZvciB0aGUgcHJvcGVydGllcyBpbiB0aGUgRFRTIGNvZGluZyBzdHlsZSBpcyB0aGUgd2F5IHRv
IGdvLCBqdXN0Cj4gbGlrZSBpdCdzIGFscmVhZHkgc3BlY2lmaWVkIGZvciB0aGUgb3JkZXJpbmcg
b2YgdGhlIG5vZGVzLiAgSSdsbAo+IGdvIGFoZWFkIGFuZCBzdWJtaXQgYW4gYXBwcm9wcmlhdGUg
cGF0Y2ggZm9yIHRoZSBEVCBndWlkZWxpbmVzLgoKdnBjaWUwdjktc3VwcGx5ID0gPCZ2Y2NhXzB2
OT47CnZwY2llMXY4LXN1cHBseSA9IDwmdmNjYV8xdjg+Owp2cGNpZTN2My1zdXBwbHkgPSA8JnZj
YzN2M19wY2llPjsKdnBjaWUxMnYtc3VwcGx5ID0gPCZ2Y2MxMnZfZGNpbj47CgpJbiB0aGUgZW5k
IEkgZG9uJ3QgY2FyZSBfdGhhdF8gbXVjaCwgYnV0IHBlcnNvbmFsbHkgSSBmaW5kIHRoYXQKYWxw
aGFudW1lcmljYWwgb3JkZXJpbmcgaGFyZGVyIHRvIHJlYWQgOy0pIC4KCkJlY2F1c2UgaW4gdGhl
IGV4YW1wbGUgYWJvdmUsIG15IG1pbmQgbm93IGNvbnN0YW50bHkgc2hvdXRzCiJ3aHkgaXMgdnBj
aWUxLi4uIGFmdGVyIHZwY2llMy4uLiAuLi4uLiBvb29vaCByaWdodCwgaXQncyBhbHBoYS1udW1l
cmljYWwiCgpCdXQgSSBjYW4gbGl2ZSB3aXRoIGl0IEkgZ3Vlc3MgOy0pIC4KQXMgMy4zIGlzIHNt
YWxsZXIgdGhhbiAxMiBhZnRlcmFsbC4KCgpIZWlrbwoKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BC9FC83F34
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Jul 2025 18:43:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8tts3kenwHFG4JoFGfqdj6mYQiVJ8sKZkjbyaGWkM98=; b=cgmHLHHJbEduRh
	YviEpLhSxAPXwugGCJ2VNCdVOaUDIWkU8n4iGtG4B+alyZ2fXMrgYvDcjsNeEPnzJrjduX77ZTMZO
	d+B+2Poqv7pS3tS1Un8JM1jx8/xXOQdRSG7AUziExKGrjXIv7vGDCSVm3n8RUcRstMHC3/pklRW6H
	ibbiBvZxVDi15gpoPMT2cGOZyr61Q+afwlCETqPrST5mIm8LNI/tT82IlTE0eBXFP6pGviGOWlgLu
	h+oyzo1ALbID49/7k4WTYAM3fKKKUdfY6SagWWNMS188TaIuidTOZjFmrpRnzxy7qHMXgHrAT965l
	v/VcZmAndP/Rzg+DIFOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucTa0-0000000AuQB-2FUC;
	Thu, 17 Jul 2025 18:43:40 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucTXU-0000000AtwC-1gTj;
	Thu, 17 Jul 2025 18:41:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=z8+rI+enL4BSqLq2MJbBJbkJP0/8ld0NpkqpPbeKKVc=; b=msRlLmCiHmUcDmop9bQYx2XvJT
	0aucsQ8fV2s9REhSuLOn1834b3FxtUmsBDVtsgREcF2UKJsxMqDiiSJ9wPhkIRIdd99HeUoyyAhHc
	iFFVB/uZM6InObn2gGsXFDwwN1PBDUZC2swKuq2ooJYQ05LYkAJz+WvV3GG/9ZDXTYB44cFhIW/vz
	qjMxkon24v6lOrlp0xOM2kB0mxsRdT1SksUV4bGJlIy2hgpSWpxY66eGz7ugirPW5kmncyY2Oz54h
	TA3bXG/er6NFMZriVtHfoUqhsZELemb3ctbcmK3wbwX5xFOoynoueu2grFS/dtI1KE2XOy+beRYgN
	MatY/ONg==;
Received: from cst-prg-35-241.cust.vodafone.cz ([46.135.35.241] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ucTXR-0005fE-9W; Thu, 17 Jul 2025 20:41:01 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Quentin Schulz <quentin.schulz@cherry.de>
Cc: robh@kernel.org, krzk+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, damon.ding@rock-chips.com,
 Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: add RK3588 DP carrier from Theobroma
 Systems
Date: Thu, 17 Jul 2025 20:40:59 +0200
Message-ID: <11143499.CDJkKcVGEf@phil>
In-Reply-To: <470dc543-9619-419c-9ea3-6671f4d52326@cherry.de>
References: <20250716185027.2762175-1-heiko@sntech.de>
 <20250716185027.2762175-3-heiko@sntech.de>
 <470dc543-9619-419c-9ea3-6671f4d52326@cherry.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250717_114104_471799_3717EDA4 
X-CRM114-Status: GOOD (  33.86  )
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

SGkgUXVlbnRpbiwKCkFtIERvbm5lcnN0YWcsIDE3LiBKdWxpIDIwMjUsIDE0OjIxOjIyIE1pdHRl
bGV1cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgUXVlbnRpbiBTY2h1bHo6Cj4gT24gNy8x
Ni8yNSA4OjUwIFBNLCBIZWlrbyBTdHVlYm5lciB3cm90ZToKPiA+IEZyb206IEhlaWtvIFN0dWVi
bmVyIDxoZWlrby5zdHVlYm5lckBjaGVycnkuZGU+Cj4gPiAKPiA+IFRoZSBEaXNwbGF5UG9ydCBj
YXJyaWVyIGlzIGEgdmVyeSBzaW1wbGUgYmFzZWJvYXJkIG9ubHkgcHJvdmlkaW5nIHNlcmlhbCwK
PiA+IGV0aGVybmV0IGFuZCBhIGRpc3BsYXlwb3J0IG91dHB1dC4KPiA+IAo+ID4gQnV0IGl0cyBt
YWluIGZ1bmN0aW9uYWxpdHkgaXMgdGhhdCBpdCByb3V0ZXMgdGhlIEFuYWxvZ2l4IGVEUCBjb250
cm9sbGVyCj4gPiB0byB0aGlzIERpc3BsYXlQb3J0IG91dHB1dCwgd2hpY2ggYWxsb3dzIHRvIHRl
c3QgdGhhdCBjb250cm9sbGVyIHNpbXBseQo+ID4gYnkgaG9va2luZyBpdCB1cCB0byBhIHN1aXRh
YmxlIG1vbml0b3IuCj4gPiAKPiA+IFRoZSBBbmFsb2dpeC1EUCBjb250cm9sbGVyIHN1cHBvcnRz
IGVEUCAxLjMgYW5kIERQIDEuMiwgc28gY2FuIGRyaXZlCj4gPiBib3RoIGVEUCBkaXNwbGF5cyBh
cyB3ZWxsIGFzIGZ1bGwgRFAgbW9uaXRvcnMuIEl0IGRvZXMgbm90IHN1cHBvcnQgRFArCj4gPiBz
byBwYXNzaXZlIERQLXRvLUhETUkgYWRhcHRlcnMgd29uJ3Qgd29yay4KPiA+IAo+ID4gU2lnbmVk
LW9mZi1ieTogSGVpa28gU3R1ZWJuZXIgPGhlaWtvLnN0dWVibmVyQGNoZXJyeS5kZT4KPiA+IC0t
LQoKPiA+ICsmZWRwMCB7Cj4gPiArCS8qCj4gPiArCSAqIE5vdGUgdGhhdCB0aGlzIGJvYXJkIGRv
ZXNuJ3QgcmVzcGVjdCBRNyBzdGFuZGFyZCBhcyBRNyBoYXMKPiA+ICsJICogbGFuZSAyIG9mIEhE
TUkgb24gdGhlIHNhbWUgcGluIGFzIGxhbmUgMCBvZiBEUCBhbmQgbGFuZSAwIG9mIEhETUkKPiA+
ICsJICogb24gbGFuZSAyIG9mIERQIGJ1dCB0aGlzIGJvYXJkIHVzZXMgSERNSSBsYW5lIG51bWJl
cmluZyBpbnN0ZWFkIG9mCj4gPiArCSAqIERQIGxhbmUgbnVtYmVyaW5nIGZvciBpdHMgRFAgbGFu
ZXMuCj4gPiArCSAqCj4gPiArCSAqIEl0IHNob3VsZCBiZSBwb3NzaWJsZSB0byBtYXRjaCBRNyBz
dGFuZGFyZCBpZiByZXF1aXJlZCBieSByZXF1ZXN0aW5nCj4gPiArCSAqIHRoZSBlRFBUWCBjb250
cm9sbGVyIHRvIHN3YXAgbGFuZXMgd2l0aDoKPiA+ICsJICoKPiA+ICsJICogZGF0YS1sYW5lcyA9
IDwyIDEgMCAzPjsKPiAKPiBJIGRvbid0IHRoaW5rIHRoYXQncyB0cnVlIGN1cnJlbnRseT8KPiAK
PiBUaGUgZHJpdmVyIG9ubHkgc2VlbXMgdG8gYmUgc3VwcG9ydGluZyBzd2FwcGluZyB0aGUgbGFu
ZXMsIGMuZi4gCj4gYW5hbG9naXhfZHBfbGFuZV9zd2FwKCkgd2hpY2ggcm91dGVzIGl0IHRvIGVp
dGhlciAwIDEgMiAzIG9yIDMgMiAxIDAgYnV0IAo+IG5vIG1peCBsaWtlIHRoZSBvbmUgd2Ugd291
bGQgbmVlZC4gQWxzbywgdGhpcyBmdW5jdGlvbiBpcyBuZXZlciBjYWxsZWQgCj4gd2l0aCBhbnl0
aGluZyBidXQgImRvIG5vdCBzd2FwIiBhcmd1bWVudC4gU28gd2Ugd291bGQgbmVlZCB0byBmaXgg
dGhlIAo+IGRyaXZlciB0byBzdXBwb3J0IHRoYXQuCj4gCj4gQWxzbywgdGhpcyBpcyB0aGUga2lu
ZCBvZiBpbmZvcm1hdGlvbiB3ZSBzaG91bGQgaGF2ZSBpbiBUaWdlciBEVFNJIGFuZCAKPiBub3Qg
c29tZSAicmFuZG9tIiBiYXNlYm9hcmQgRFRTIHdoaWNoIHdpbGwgYWN0dWFsbHkgbm90IG1ha2Ug
dXNlIG9mIGl0LiAKPiBXZSBzaG91bGQgaGF2ZSBkYXRhLWxhbmVzID0gPDIgMSAwIDM+OyBpbiBU
aWdlciBEVFNJIGFjdHVhbGx5IGJ1dCAKPiBjb25zaWRlcmluZyAxKSB0aGUgZHJpdmVyIGRvZXNu
J3Qgc3VwcG9ydCB0aGF0LCAyKSB3ZSBkb24ndCBoYXZlIEhXIHRvIAo+IHZhbGlkYXRlIGl0IHdv
cmtzOyBJIGd1ZXNzIHdlJ2xsIGp1c3QgbGVhdmUgaXQgYXQgdGhhdC4KPiAKPiA+ICsJICovCj4g
PiArCj4gCj4gQXJlbid0IHdlIG1pc3NpbmcgdGhlIGRhdGEtbGFuZXMgcHJvcGVydHkgaGVyZT8g
SSBkb24ndCBzZWUgYSBkZWZhdWx0IAo+IGFuZCBJIHdvdWxkIGFzc3VtZSB3ZSBzaG91bGQgYmUg
cHJvdmlkaW5nIG9uZT8KClRoZSBhbmFsb2dpeC1kcCBjb250cm9sbGVyIGJpbmRpbmcgZG9lcyBu
b3Qgc3BlY2lmeSBkYXRhLWxhbmVzIGF0IGFsbAphbmQgdGhlIGN1cnJlbnQgZHJpdmVyIGFsc28g
ZG9lcyBub3QgcmVhZCBpdCwgb3IgdXNlIGFueXRoaW5nCnJlZ2FyZGluZyBpdC4KCgo+IERvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS92aWRlby1pbnRlcmZhY2VzLnlhbWwg
c3BlY2lmaWVzIAo+IGl0IGVpdGhlciBzdGFydHMgYXQgMCBvciAxLCBkZXBlbmRpbmcgaWYgdGhl
cmUncyBhIGNsb2NrIGxhbmUgb3Igbm90LiBBcyAKPiBmYXIgYXMgSSBjb3VsZCB0ZWxsLCBEUCBo
YXMgNCBkYXRhIGxhbmVzIGFuZCB0aGUgQVVYIGxhbmUgYXMgd2VsbCwgYnV0IAo+IG5vdGhpbmcg
Y2xvY2stc3BlY2lmaWMgc28gSSBhc3N1bWUgc3RhcnRpbmcgYXQgMCB3b3VsZCBiZSBjb3JyZWN0
PwoKTG9va3MgbGlrZSBpdC4gSSBsb29rZWQgYXQgdGhlIHZlbmRvci1rZXJuZWwgd2hpY2ggZG9l
cyBhbGxvdyBkYXRhLWxhbmUKc2V0dGluZ3MgYW5kIHNwZWNpZmllcyB0aGUgZGVmYXVsdCBhcyA8
MCAxIDIgMz4gLgoKU28gZm9yIG5vdywgSSdsbCBqdXN0IGRyb3AgdGhlIGNvbW1lbnQuCgoKPiBP
biBhIHNpZGUgbm90ZSwgaXMgdGhlIGF1ZGlvIG91dHB1dCBvbiBlRFAgVFggY29udHJvbGxlciBh
bHJlYWR5IAo+IHN1cHBvcnRlZCBsaWtlIG9uIEhETUk/IElmIHNvLCB3ZSBzaG91bGQgYWRkIHRo
ZSBlZHAwLXNvdW5kIG5vZGUgbGlrZSBpbiAKPiBvdXIgZG93bnN0cmVhbSBmb3JrLiBCdXQgbG9v
a2luZyBhdCB0aGUgZHJpdmVyLCBJIGRvbid0IHRoaW5rIHdlIAo+IGltcGxlbWVudCBhbnkgZHBf
YXVkaW9fKiBjYWxsYmFja3MgZnJvbSBkcm1fYnJpZGdlX2Z1bmNzIHdoaWNoIEkgYXNzdW1lIAo+
IHdvdWxkIGJlIHRoZSB3YXkgdG8gaW1wbGVtZW50IHRoYXQuCgpIZWlrbwoKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

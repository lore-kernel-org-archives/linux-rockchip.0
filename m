Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CF64CD3439
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 May 2026 21:10:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h/ZXu+a4Zmb3U+fFXU+C8EsSuKe2aMTlwE7gSLPt6xY=; b=y0FB4yY5LAkWlJ
	BWokdupqqbYTGy56onB8uVlVb3jxQCnOznfNAkv4qR+f17H2ApuHBpk/0KfPISMt7G+4dIMYXzyV9
	f6LWNTqvZ/wFE6qPEzzfUxdRQmuTk8EuJTEs3p7vGi/dlgajUKlV3h0KDWq0wj6/akUC43ucCiMlS
	NDmoivFcN0NxBEy+5OWG/qPBpDBjRxvrOTwEm6SdV4nkaVGa1Bz1xUNGQ3QKbJyWVlCoIM5HlbDDl
	CM+lllejjU+6e5g9jl1inafcLqxqPeKAZniwxn2QepP5nNn3yfg1D4NdE5N+V2u/h7ydtVb5L2mk9
	RiTTGbFp0KYCqtkxZoKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKN1v-0000000HVDZ-2v74;
	Tue, 05 May 2026 21:10:11 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKN1u-0000000HVD8-1qag;
	Tue, 05 May 2026 21:10:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 766786024D;
	Tue,  5 May 2026 21:10:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E2C20C2BCB4;
	Tue,  5 May 2026 21:10:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778015409;
	bh=YJRd4B8dBI7NnuwfxeAAKCP/9sHlFCzWsZu+lnLLO7g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gIvLSBvl1Cpo4rpWBWXR85ZTXl2vG6EzcWbfoLxY7dK0d4JlrAtBNLJr3Ocuy7W+P
	 OUu/mHrbIYpCgGiCHL9T0/v1sCpPvGHtqudcd9d1LHTAF5/db9dL6nv/sY5hT+BgnT
	 2d+QtWiXpqrejubxHb0E+BDSgQJeLVuXeOUisTeqYdeAtxIA4VP6942dl1Fqj0wmzB
	 KqxeJwZsQX4v9oGzBvEAQFRsl8LBKZ2iytOeCQJ3jBov4AnIQ/nzy9MYeB2SO/h+S0
	 cY4fBa9rDHQ2PyWJkwHLDm3s4P66z1Z6ePCI8MXAdt9AfNllldpwDeDs52UPBt7zwo
	 Hn7WmEtXAhllg==
Date: Tue, 5 May 2026 16:10:06 -0500
From: Rob Herring <robh@kernel.org>
To: Bui Duc Phuc <phucduc.bui@gmail.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Lee Jones <lee@kernel.org>,
	Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Joseph Chen <chenjh@rock-chips.com>,
	Chris Zhong <zyw@rock-chips.com>,
	Zhang Qing <zhangqing@rock-chips.com>,
	David Rau <David.Rau.opensource@dm.renesas.com>,
	Animesh Agarwal <animeshagarwal28@gmail.com>,
	devicetree@vger.kernel.org, linux-sound@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] ASoC: dt-bindings: drop redundant wakeup-source
 definitions
Message-ID: <20260505211006.GA3875657-robh@kernel.org>
References: <20260423042831.21114-1-phucduc.bui@gmail.com>
 <20260423042831.21114-2-phucduc.bui@gmail.com>
 <20260423-ingenious-psychedelic-jaybird-40bb4d@quoll>
 <CAABR9nGH4yZcgyzm=wNYVHB2vLhojZJSHKOC6dSeQPm0rbh4KQ@mail.gmail.com>
 <ce219aa2-0bb1-4a74-b40d-bd753f1a22dd@kernel.org>
 <CAABR9nHaGBU9KAWJZrnBy8HO0Waccp8CCGmBdKJ3QOEb8WZsXA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAABR9nHaGBU9KAWJZrnBy8HO0Waccp8CCGmBdKJ3QOEb8WZsXA@mail.gmail.com>
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

T24gVGh1LCBBcHIgMzAsIDIwMjYgYXQgMTI6MTI6NTVBTSArMDcwMCwgQnVpIER1YyBQaHVjIHdy
b3RlOgo+IEhpLAo+IAo+ID4gWWVzLiBBbmQgdGhlIEFCSS4gWW91IGNhbm5vdCBoYXZlIEFCSSB3
aGljaCBoYXMgYW4gaW5jb21wYXRpYmxlCj4gPiBpbXBsZW1lbnRhdGlvbi4gSU9XLCB3aGVuIGlt
cGxlbWVudGF0aW9uIGNvbnRyYWRpY3RzIHRoZSBBQkksIHNvbWV0aGluZwo+ID4gaXMgd3Jvbmcu
Cj4gPgo+ID4gVGhlIHF1ZXN0aW9uIG9mIGNvdXJzZSBpZiByZWFkX2Jvb2woKSBpcyBoZXJlIGlu
Y29tcGF0aWJsZS4gRnJvbSB0aGUKPiA+IGFjdHVhbCBjb2RlIHBvaW50IG9mIHZpZXcsIGl0IGlz
IGNvbXBhdGlibGUsIGJ1dCBob3cgaXQgaXMgZG9jdW1lbnRlZAo+ID4gYW5kIGhvdyBpdCBpcyBp
bnRlbmRlZCB0byB1c2U6IGl0IGlzIG5vdCBjb21wYXRpYmxlLgo+ID4KPiA+IEFsc28gaWYgZnV0
dXJlIHNjaGVtYS1rZXJuZWwtQUJJIGNoZWNrZXIgZ2V0cyBpbXBsZW1lbnRlZCwgdGhlIHRvb2wK
PiA+IG1pZ2h0IHJlcG9ydCBoZXJlIGEgbWlzdGFrZSBmb3IgdGhhdCByZWFzb24uIHJlYWRfYm9v
bCgpIG1lYW5zIHByb3BlcnR5Cj4gPiBpcyBib29sLgoKSXQgaXMgZG91YnRmdWwgc3VjaCBhIHRv
b2wgd291bGQgZG8gcGVyIGJpbmRpbmcgdHlwZSBjaGVja2luZyBnaXZlbiAKdHlwZXMgYXJlIGds
b2JhbCBhbmQgd2UndmUgYXZvaWRlZCBtYWtpbmcgdHlwZXMgcGVyIGJpbmRpbmcgc28gZmFyLgoK
PiA+Cj4gPiA+IElmIHRoZSBoYXJkd2FyZSBzdXBwb3J0cyB3YWtldXAgZnVuY3Rpb25hbGl0eSwK
PiA+ID4gcmVmZXJlbmNpbmcgdGhlIGNvcmUgc2NoZW1hIGlzIHN1ZmZpY2llbnQuIEhhcmR3YXJl
IGRlc2NyaXB0aW9uIHNob3VsZAo+ID4gPiBub3QgYmUgY29uc3RyYWluZWQgYnkgdGhlIGN1cnJl
bnQgZHJpdmVyIGltcGxlbWVudGF0aW9uCj4gPiA+ICggZS5nLiB0aGUgdXNlIG9mIGRldmljZV9w
cm9wZXJ0eV9yZWFkX2Jvb2woKSApLgo+ID4gPiBCaW5kaW5ncyBzaG91bGQgcmVtYWluIHN0YWJs
ZSBhbmQgZ2VuZXJpYywgd2hpbGUgZHJpdmVycyBjYW4gZXZvbHZlIG92ZXIgdGltZS4KPiA+IFNv
IHlvdSBjbGFpbSB0aGF0IGJpbmRpbmdzIGNhbiBkZWZpbmUgcHJvcGVydHkgYXMgaW50ZWdlciwg
YnV0IGRyaXZlcnMKPiA+IGNhbiBldm9sdmUgYW5kIGZvciBleGFtcGxlIHJlYWQgaXQgYXMgc3Ry
aW5nPwo+IAo+IEkgc2VlIHlvdXIgcG9pbnQgcmVnYXJkaW5nIHRoZSBBQkkgc2VtYW50aWNzIGFu
ZCB0aGUgaW50ZW5kZWQgdXNlIG9mCj4gcmVhZF9ib29sKCkuCj4gTXkgdW5kZXJzdGFuZGluZyBp
cyB0aGF0IHRoZSBJMkMgY29yZSBjdXJyZW50bHkgdXNlcyBvZl9wcm9wZXJ0eV9yZWFkX2Jvb2wo
KQo+IGZvciB3YWtldXAtc291cmNlIGFzIGEgcHJlc2VuY2UgY2hlY2ssIGV2ZW4gdGhvdWdoIGl0
IGhhcyBubyB3YXkgdG8KPiBkZXRlcm1pbmUgaW4gYWR2YW5jZSB3aGV0aGVyIGEgc3BlY2lmaWMg
ZGV2aWNlIHdpbGwgZGVmaW5lIHRoZSBwcm9wZXJ0eSBhcwo+IGEgYm9vbGVhbiBvciBhIHBoYW5k
bGUtYXJyYXkgaW4gaXRzIERUUy4KCklmIHRoaXMgd2FzIGEgcHJvYmxlbSwgdGhlbiBpdCBwcm9i
YWJseSB3b3VsZCBoYXZlIGJlZW4gZml4ZWQgYWxyZWFkeSAKYmVjYXVzZSBpdCBnZW5lcmF0ZXMg
YSB3YXJuaW5nLiBBbiBJMkMgZGV2aWNlIHByb2JhYmx5IGlzbid0IGFsbCB0aGF0IApjb3VwbGVk
IHRvIFNvQyBwb3dlciBzdGF0ZXMsIHNvIGJvb2xlYW4gaXMgcHJvYmFibHkgYWx3YXlzIGdvaW5n
IHRvIGJlIAp1c2VkIGhlcmUuIEJ1dCBtYXliZSBub3QuCgpJZiB3ZSBkbyBhbnkgY2xlYW51cCBo
ZXJlLCBJIHRoaW5rIHRoYXQgc2hvdWxkIGhhdmUgZXhhY3RseSAxIGxvY2F0aW9uIAp0aGF0IHJl
YWRzIHRoaXMgcHJvcGVydHkgaW5zdGVhZCBvZiA3Ny4gUGVyaGFwcyB0aGUgZHJpdmVyIGNvcmUg
Y2FuIGp1c3QgCmhhbmRsZSBldmVyeXRoaW5nIGFuZCBkcml2ZXJzIGRvbid0IGhhdmUgdG8gZGVh
bCB3aXRoIGl0LgoKPiA+RnJvbSBhIGJlaGF2aW9yYWwgcG9pbnQgb2Ygdmlldywgc3dpdGNoaW5n
IHRvIG9mX3Byb3BlcnR5X3ByZXNlbnQoKSB3b3VsZAo+IG5vdCBjaGFuZ2UgYW55dGhpbmcsIGJ1
dCBpdCB3b3VsZCBiZXR0ZXIgcmVmbGVjdCB0aGF0IHRoZSBkcml2ZXIgb25seSBjaGVja3MKPiBm
b3IgdGhlIGV4aXN0ZW5jZSBvZiB0aGUgcHJvcGVydHkgd2l0aG91dCBhc3N1bWluZyBpdHMgdHlw
ZS4KPiAKPiBJZiB0aGUgZXhwZWN0YXRpb24gaXMgdG8gc3RyaWN0bHkgZm9sbG93IHRoZSBiaW5k
aW5nIHR5cGVzLCB0aGVuCj4gb2ZfcHJvcGVydHlfcHJlc2VudCgpCj4gc2VlbXMgbW9yZSBhcHBy
b3ByaWF0ZSBoZXJlLgo+IEkgY2FuIHByZXBhcmUgYSBwYXRjaCBhY2NvcmRpbmdseSBhbmQgc2Vu
ZCBpdCB0byB0aGUgSTJDIG1haW50YWluZXJzIGZvcgo+IHJldmlldyBhbmQgZmVlZGJhY2suCj4g
Cj4gPiA+Cj4gPiA+IFJlLWRlZmluaW5nIHRoZSB0eXBlIGxvY2FsbHkgZHVwbGljYXRlcyB0aGUg
Y29yZSBkZWZpbml0aW9uLiBJZiB0aGUKPiA+ID4gY29yZSBzY2hlbWEgZXZvbHZlcywKPiA+Cj4g
PiBUaGVyZSBpcyBubyByZS1kZWZpbml0aW9uIGhlcmUuIFRoaXMgaXMgY2hvaWNlIG9mIHN1YnNl
dCBvZiB0eXBlcy4KPiAKPiBUaGUgZmxvdyBpczogY29yZSBzY2hlbWEg4oaSIFlBTUwgYmluZGlu
ZyAoQUJJKSDihpIgRFRTIChhY3R1YWwgdXNhZ2UpLgo+ID5Gcm9tIGEgaGlnaC1sZXZlbCBwZXJz
cGVjdGl2ZSwgdGhlIGJpbmRpbmcgbWF5IGFwcGVhciB0byByZWRlZmluZSB0aGUKPiBwcm9wZXJ0
eSB0eXBlIGJ5IG5hcnJvd2luZyBpdHMgc2NvcGUsIHdoaWxlIHRoZSBEVFMgc2VsZWN0cyBvbmUg
dmFsaWQKPiByZXByZXNlbnRhdGlvbiBmcm9tIHRoZSBwZXJtaXR0ZWQgc2V0Lgo+IAo+ID4gV2hl
cmUgaXMgUm9iJ3Mgc3VnZ2VzdGlvbiB0byBkbyBzdWNoIGNsZWFudXBzIGZvciBFWElTVElORyBj
b2RlPyBJIG9ubHkKPiA+IHNlZSB0aGF0IG5ldyBjb2RlIHNob3VsZCBjb21lIGxpa2UgdGhhdC4K
PiA+Cj4gPiBBbnl3YXksIHlvdXIgY29tbWl0IG1zZyBpcyBmb3IgbWUgaW5jb3JyZWN0IGJlY2F1
c2UgaXQgbWlzc2VzIGFsbCB0aGlzCj4gPiBwb2ludHMgSSBtYWRlLiBXaGV0aGVyIHRoZSBzY2hl
bWEgY29kZSBpcyBjb3JyZWN0LCBJJ2xsIGRlZmVyIHRvIFJvYiwKPiA+IGFsdGhvdWdoIEkgc3Rp
bGwgY2xhaW0gdGhlIHNhbWUgSSBjbGFpbWVkIGJlZm9yZSBhdCB2MiBvciB2MyBvZiB5b3VyCj4g
PiBwcmV2aW91cyB3b3JrIC0gdGhpcyBzaG91bGQgaGF2ZSBkZWZpbmVkIHR5cGUuCj4gCj4gWW91
IGFyZSByaWdodCB0aGF0IFJvYiBkaWQgbm90IGV4cGxpY2l0bHkgcmVxdWVzdCBjbGVhbnVwcyB0
byBleGlzdGluZyBjb2RlLgo+IEkgaW5jbHVkZWQgdGhlbSB0byBpbXByb3ZlIGNvbnNpc3RlbmN5
IHdoaWxlIHdvcmtpbmcgb24gdGhlIG5ldyBwYXJ0cywKPiBidXQgZm9yIG5vdywgSSB3aWxsIHN0
b3AgbW9kaWZ5aW5nIHRoZSBleGlzdGluZyBjb2RlIGFuZCB3YWl0IGZvcgo+IFJvYidzIGZlZWRi
YWNrLgo+IFNpbmNlIHRoZXJlIGFyZSBkaWZmZXJpbmcgcGVyc3BlY3RpdmVzLCBJIHdvdWxkIGFw
cHJlY2lhdGUgYSBjb25zZW5zdXMKPiBvbiB0aGUgcHJlZmVycmVkCj4gYXBwcm9hY2ggYmVmb3Jl
IEkgc2VuZCBvdXQgdGhlIG5leHQgdmVyc2lvbiB0byBhdm9pZCByZWR1bmRhbnQgcmV3b3JrLgoK
SXQncyByZWFsbHkgb3V0c2lkZSB0aGUgc2NvcGUgb2YgYSBkZXZpY2UgYmluZGluZyB3aGF0IGlz
IHVzZWQgZm9yIAp3YWtldXAtc291cmNlIGFzIHRoYXQgZGVwZW5kcyBvbiB0aGUgcGxhdGZvcm0u
IFNvIEkgdGhpbmsganVzdCAKJ3dha2V1cC1zb3VyY2U6IHRydWUnIGluIGRldmljZSBiaW5kaW5n
cyBpcyBmaW5lLiBJIGRvbid0IHRoaW5rIHdlIGhhdmUgCnRvIGNoYW5nZSBhbGwgdGhlIGV4aXN0
aW5nIGNhc2VzIGVpdGhlciwgYnV0IHRoZSBwYXRjaGVzIGFyZSBhbHJlYWR5IAp3cml0dGVuIHNv
IEkgZG9uJ3QgaGF2ZSBhbiBpc3N1ZSBhcHBseWluZyB0aGVtLgoKUm9iCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

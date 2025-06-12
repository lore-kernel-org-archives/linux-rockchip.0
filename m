Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF69DC61CE8
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Jun 2025 19:44:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MVvAuOL2j9dWdHNPyyOgOMqkjya4QETHON9qFQjrQlg=; b=nlBivz2zGM96yZ
	KWuqtYLTOtm+zRANceSTCjhoKmm+2jfswpnpAnRCRki326Qqzl/swQzFEBvhgcuS7WcnwEeaCTbeU
	235t0nd/lGSfn4ppf50QYhJOnNcFPd6OThPUipEjUTCJ0F5uD9/qTrOy1TrXv1PAZ55NBCu/Ui6EI
	5EVjJlloRF1bB6GN5olBkXGoIjHI/UlKQGNGLBrAvWcEX1fGpTWMMe4lWP28lCXenmxmPX86BABdp
	V3ZLkeCc091jGCVyrdK2XiQdsEoAgW5IdVQlXrc24bTSbgqqWSD5yRh0549At96MLdxC3WKaJ1W/E
	r0DXFG8eQ15oPYCVrtOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPnqY-0000000EInD-0Ixv;
	Thu, 12 Jun 2025 19:44:22 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPjTI-0000000Dj2y-0u7E;
	Thu, 12 Jun 2025 15:04:05 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id EC1CD5C57A4;
	Thu, 12 Jun 2025 15:01:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9B6B1C4CEEA;
	Thu, 12 Jun 2025 15:03:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749740643;
	bh=Bb6hvKEG60SQOjiGd2QP6QUtwyg0asrlkazEzmEbitY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VD/2KqLMH6TKSeK13rAPSXWvv4lMXjHk3Eufs/KU+g2FZgRsYfbr8KDO5MG1bjZq9
	 dtGpef30+c0DI+SxZituxrSCBSKKvw2A8Wdr/mj1TboIWnzRc+ky3uxIh1+3/EB+CV
	 6Qm0sG7TrMqN2KCZSZvi4s9UoBj4G8UH5Uwc2lGbrywl3rmhf4JUGEYuSqfSsWn3TF
	 N8YyGZ92nK/JRqF9Qz7XDMjKyMYJibrxvMtFdoAlZl7QqLgAnOHWjuzCzqBxJxQQx1
	 QOWvxNdAd+EQCPpPS6VzSIZ9NTrBFmxyr3ixR79ometz3rx+z7nZU9Cuv7wvg2ny5/
	 PGV85mmE9DvRA==
Date: Thu, 12 Jun 2025 20:33:54 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Niklas Cassel <cassel@kernel.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Heiko Stuebner <heiko@sntech.de>, Wilfred Mallawa <wilfred.mallawa@wdc.com>, 
	Damien Le Moal <dlemoal@kernel.org>, Laszlo Fiat <laszlo.fiat@proton.me>, linux-pci@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 1/4] PCI: dw-rockchip: Do not enumerate bus before
 endpoint devices are ready
Message-ID: <2e23r5i5kmju476fcakodccyqnwanbhtyul5prqpqdgqivy3t6@ci54hfghhbb7>
References: <apkamrd6ty2km7mjwz4mpe2xhewxgd3crmeqdmnj7wn6jl4emv@3nwrt43u2ons>
 <20250612144447.GA903908@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250612144447.GA903908@bhelgaas>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250612_080404_329474_5838C9F0 
X-CRM114-Status: GOOD (  36.99  )
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

T24gVGh1LCBKdW4gMTIsIDIwMjUgYXQgMDk6NDQ6NDdBTSAtMDUwMCwgQmpvcm4gSGVsZ2FhcyB3
cm90ZToKPiBPbiBUaHUsIEp1biAxMiwgMjAyNSBhdCAwNjozMDozN1BNICswNTMwLCBNYW5pdmFu
bmFuIFNhZGhhc2l2YW0gd3JvdGU6Cj4gPiBPbiBUaHUsIEp1biAxMiwgMjAyNSBhdCAwNzoyMTow
OEFNIC0wNTAwLCBCam9ybiBIZWxnYWFzIHdyb3RlOgo+ID4gPiBPbiBUaHUsIEp1biAxMiwgMjAy
NSBhdCAwMTo0MDoyM1BNICswMjAwLCBOaWtsYXMgQ2Fzc2VsIHdyb3RlOgo+ID4gPiA+IE9uIFRo
dSwgSnVuIDEyLCAyMDI1IGF0IDA2OjM4OjI3QU0gLTA1MDAsIEJqb3JuIEhlbGdhYXMgd3JvdGU6
Cj4gPiA+ID4gPiBPbiBUaHUsIEp1biAxMiwgMjAyNSBhdCAwMToxOTo0NVBNICswMjAwLCBOaWts
YXMgQ2Fzc2VsIHdyb3RlOgo+ID4gPiA+ID4gPiBPbiBXZWQsIEp1biAxMSwgMjAyNSBhdCAwNDox
NDo1NlBNIC0wNTAwLCBCam9ybiBIZWxnYWFzIHdyb3RlOgo+ID4gPiA+ID4gPiA+IE9uIFdlZCwg
SnVuIDExLCAyMDI1IGF0IDEyOjUxOjQyUE0gKzAyMDAsIE5pa2xhcyBDYXNzZWwgd3JvdGU6Cj4g
PiA+ID4gPiA+ID4gPiBDb21taXQgZWM5ZmQ0OTliOWM2ICgiUENJOiBkdy1yb2NrY2hpcDogRG9u
J3Qgd2FpdCBmb3IgbGluayBzaW5jZSB3ZSBjYW4KPiA+ID4gPiA+ID4gPiA+IGRldGVjdCBMaW5r
IFVwIikgY2hhbmdlZCBzbyB0aGF0IHdlIG5vIGxvbmdlciBjYWxsIGR3X3BjaWVfd2FpdF9mb3Jf
bGluaygpLAo+ID4gPiA+ID4gPiA+ID4gYW5kIGluc3RlYWQgZW51bWVyYXRlIHRoZSBidXMgZGly
ZWN0bHkgYWZ0ZXIgcmVjZWl2aW5nIHRoZSBMaW5rIFVwIElSUS4KPiA+ID4gPiA+ID4gPiA+IAo+
ID4gPiA+ID4gPiA+ID4gVGhpcyBtZWFucyB0aGF0IHRoZXJlIGlzIG5vIGxvbmdlciBhbnkgZGVs
YXkgYmV0d2VlbiBsaW5rIHVwIGFuZCB0aGUgYnVzCj4gPiA+ID4gPiA+ID4gPiBnZXR0aW5nIGVu
dW1lcmF0ZWQuCj4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiBJIHRoaW5rIHRoZSBjb21tZW50IGF0
IHRoZSBQQ0lFX1RfUlJTX1JFQURZX01TIGRlZmluaXRpb24gc2hvdWxkIGJlCj4gPiA+ID4gPiA+
ID4gZW5vdWdoIChhbHRob3VnaCBpdCBtaWdodCBuZWVkIHRvIGJlIHVwZGF0ZWQgdG8gbWVudGlv
biBsaW5rLXVwKS4KPiA+ID4gPiA+ID4gPiBUaGlzIGRlbGF5IGlzIGdvaW5nIHRvIGJlIGEgc3Rh
bmRhcmQgcGllY2Ugb2YgZXZlcnkgZHJpdmVyLCBzbyBpdAo+ID4gPiA+ID4gPiA+IHdvbid0IHJl
cXVpcmUgc3BlY2lhbCBub3RpY2UuCj4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiBMb29raW5nIGF0
IHBjaS5oLCB3ZSBhbHJlYWR5IGhhdmUgYSBjb21tZW50IG1lbnRpb25pbmcgZXhhY3RseSB0aGlz
Cj4gPiA+ID4gPiA+IChsaW5rLXVwKToKPiA+ID4gPiA+ID4gaHR0cHM6Ly9naXRodWIuY29tL3Rv
cnZhbGRzL2xpbnV4L2Jsb2IvdjYuMTYtcmMxL2RyaXZlcnMvcGNpL3BjaS5oI0w1MS1MNjMKPiA+
ID4gPiA+ID4gCj4gPiA+ID4gPiA+IEkgd2lsbCBjaGFuZ2UgdGhlIHBhdGNoZXMgdG8gdXNlIFBD
SUVfUkVTRVRfQ09ORklHX0RFVklDRV9XQUlUX01TIGluc3RlYWQuCj4gPiA+ID4gPiAKPiA+ID4g
PiA+IEknbGwgbW9yZSBjbG9zZWx5IGxhdGVyLCBidXQgSSB0aGluayBQQ0lFX1RfUlJTX1JFQURZ
X01TIGFuZAo+ID4gPiA+ID4gUENJRV9SRVNFVF9DT05GSUdfREVWSUNFX1dBSVRfTVMgYXJlIGR1
cGxpY2F0ZXMgYW5kIG9ubHkgb25lIHNob3VsZAo+ID4gPiA+ID4gZXhpc3QuICBJdCBsb29rcyBs
aWtlIHRoZXkgZ290IG1lcmdlZCBhdCBhYm91dCB0aGUgc2FtZSB0aW1lIGJ5Cj4gPiA+ID4gPiBk
aWZmZXJlbnQgcGVvcGxlLCBzbyB3ZSBkaWRuJ3Qgbm90aWNlLgo+ID4gPiA+IAo+ID4gPiA+IEkg
Y2FtZSB0byB0aGUgc2FtZSBjb25jbHVzaW9uLCBJIHdpbGwgc2VuZCBhIHBhdGNoIHRvIHJlbW92
ZQo+ID4gPiA+IFBDSUVfVF9SUlNfUkVBRFlfTVMgYW5kIGNvbnZlcnQgdGhlIG9ubHkgZXhpc3Rp
bmcgdXNlciB0byB1c2UKPiA+ID4gPiBQQ0lFX1JFU0VUX0NPTkZJR19ERVZJQ0VfV0FJVF9NUy4K
PiA+ID4gCj4gPiA+IEkgdGhpbmsgUENJRV9UX1JSU19SRUFEWV9NUyBleHByZXNzZXMgdGhlIHB1
cnBvc2Ugb2YgdGhlIHdhaXQgbW9yZQo+ID4gPiBzcGVjaWZpY2FsbHkuICBJdCdzIG5vdCB0aGF0
IHRoZSBkZXZpY2UgaXMgY29tcGxldGVseSByZWFkeSBhZnRlcgo+ID4gPiAxMDBtczsganVzdCB0
aGF0IGl0IHNob3VsZCBiZSBhYmxlIHRvIHJlc3BvbmQgd2l0aCBSUlMgaWYgaXQgbmVlZHMKPiA+
ID4gbW9yZSB0aW1lLgo+ID4gCj4gPiBZZXMsIGJ1dCBub25lIG9mIHRoZSBkcml2ZXJzIGFyZSBj
aGVja2luZyBmb3IgdGhlIFJSUyBzdGF0dXMKPiA+IGN1cnJlbnRseS4gU28gdXNpbmcgUENJRV9U
X1JSU19SRUFEWV9NUyBnaXZlcyBhIHdyb25nIGltcHJlc3Npb24KPiA+IHRoYXQgdGhlIGRyaXZl
ciBpcyB3YWl0aW5nIGZvciB0aGUgUlJTIHN0YXR1cyBmcm9tIHRoZSBkZXZpY2UuCj4gCj4gVGhl
cmUncyAxMDBtcyBpbW1lZGlhdGVseSBhZnRlciByZXNldCBvciBsaW5rLXVwIHdoZW4gd2UgY2Fu
J3Qgc2VuZAo+IGNvbmZpZyByZXF1ZXN0cyBiZWNhdXNlIHRoZSBkZXZpY2UgbWF5IG5vdCBiZSBh
YmxlIHRvIHJlc3BvbmQgYXQgYWxsLgo+IAo+IEFmdGVyIDEwMG1zLCB0aGUgZGV2aWNlIHNob3Vs
ZCBiZSBhYmxlIHRvIHJlc3BvbmQgdG8gY29uZmlnIHJlcXVlc3RzCj4gd2l0aCBTQywgVVIsIFJS
Uywgb3IgQ0Egc3RhdHVzIChzZWMgMi4yLjkuMSkuICBJZiBpdCByZXNwb25kcyB3aXRoCj4gUlJT
LCB0aGUgYWNjZXNzIHNob3VsZCBiZSByZXRyaWVkIGVpdGhlciBieSBoYXJkd2FyZSBvciAoaWYg
UlJTIFNWIGlzCj4gZW5hYmxlZCkgYnkgc29mdHdhcmUuICBUaGlzIGlzIHRoZSBvcmlnaW4gb2Yg
IlJSU19SRUFEWSIgLS0gdGhlIGRldmljZQo+IGNhbiBhdCBsZWFzdCBkbyBSUlMuCj4gCgpZZWFo
LCBidXQgdGhlIHVzYWdlIG9mIDEwMG1zIGlzIG9ubHkgdmFsaWQgaWYgUlJTIFNWIGlzIGVuYWJs
ZWQgYnkgdGhlIHNvZnR3YXJlCmFzIHBlciBzZWMgNi42LjE6CgoiSXQgaXMgc3Ryb25nbHkgcmVj
b21tZW5kZWQgdGhhdCBzb2Z0d2FyZSB1c2UgMTAwIG1zIHdhaXQgcGVyaW9kcyBvbmx5IGlmCnNv
ZnR3YXJlIGVuYWJsZXMgQ29uZmlndXJhdGlvbiBSUlMgU29mdHdhcmUgVmlzaWJpbGl0eSIuCgpT
byBJIGd1ZXNzIHdlIHNob3VsZCBvbmx5IGhhdmUgMyBkZWxheXMgaW4gdGhlIGRyaXZlcnM6Cgox
LiAxMDBtcyBhZnRlciBQRVJTVCMgZGVhc3NlcnQgZm9yIHBvcnRzIHN1cHBvcnRpbmcgbGluayBz
cGVlZCA8IDUuMCBHVC9zIChJCmJlbGlldmUgb25jZSB0aGUgZ3Bpb2RfIGNhbGwgcmV0dXJucywg
aXQgY291bGQgYmUgY29uc2lkZXJlZCBhcyB0aGUgZXhpdCBmcm9tCnRoZSBjb252ZW50aW9uYWwg
cmVzZXQpLgoKMi4gMXMgdG8gcG9sbCBmb3IgdGhlIGxpbmsgdXAgYWZ0ZXIgUEVSU1QjIGRlYXNz
ZXJ0LgoKMy4gMTAwbXMgYWZ0ZXIgbGluayB1cCAoZWl0aGVyIGJ5IHBvbGxpbmcgb3IgaW50ZXJy
dXB0KSBmb3IgcG9ydHMgc3VwcG9ydGluZwpsaW5rIHNwZWVkID4gNS4wIEdUL3MuCgo+ICJDT05G
SUdfUkVBRFkiIHdvdWxkIG1ha2Ugc2Vuc2UgZXhjZXB0IHRoYXQgaXQgd291bGQgYmUgY29uZnVz
ZWQgd2l0aAo+IHRoZSBzcGVjJ3MgdXNhZ2Ugb2YgIkNvbmZpZ3VyYXRpb24gUmVhZHkiICh1bmZv
cnR1bmF0ZWx5IG5vdCBmb3JtYWxseQo+IGRlZmluZWQpLiAgVGhlIFBDSWUgcjYuMCwgc2VjIDYu
MjIgaW1wbGVtZW50YXRpb24gbm90ZSBzYXlzIGRldmljZXMKPiBtYXkgdGFrZSB1cCB0byAxIHNl
Y29uZCB0byBiZWNvbWUgQ29uZmlndXJhdGlvbiBSZWFkeSwgYW5kIHRoYXQgd2hlbiBhCj4gZGV2
aWNlIGlzIENvbmZpZ3VyYXRpb24gUmVhZHksIHN5c3RlbSBzb2Z0d2FyZSBjYW4gcHJvY2VlZCB3
aXRob3V0Cj4gZnVydGhlciBkZWxheSB0byBjb25maWd1cmUgdGhlIGRldmljZS4KPiAKPiAiUENJ
RV9SRVNFVF9DT05GSUdfREVWSUNFX1dBSVRfTVMiIHNlZW1zIGEgbGl0dGxlIGxvbmcgdG8gbWUg
KHdlIG1pZ2h0Cj4gbm90IG5lZWQgIkRFVklDRSIpLCBidXQgaXQgZG9lcyBpbmNsdWRlICJDT05G
SUciIHdoaWNoIGlzIGRlZmluaXRlbHkKPiByZWxldmFudC4gICJQQ0lFX1JFU0VUX0NPTkZJR19X
QUlUX01TIj8KPiAKClNob3J0ZXIgdGhlIGJldHRlciA6KSBMb29rcyBnb29kIHRvIG1lLgoKLSBN
YW5pCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCu
ruCvjQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=

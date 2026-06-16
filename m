Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D51DCD8CA8
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Jun 2026 05:39:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FV5RVpjn0icWM9LsCzA5OPgdD3plNjJo0FOwo0TF2ZI=; b=oJfl7l3rCAtq1J
	/6ysl7WuSED4RTEoQzemMhnju46Tt2DsUZU/6FnULddELxeiDt43T7NDbKh1nMxygTBEc89gZsSUM
	lM11w5x6YWt3LH6V17jKjpxOQDDAfig2fYy4TZHvNJDOePRTUbap1p7hZiCigaLu4X8AcTsyXej0T
	CmFxN+rDkOvBgZIsj3q9YcFCXUmUB08N1dIkvlcGKv4QiuDDJMRURkVPsA6LOgnvErGmEK6gYJZPJ
	7Q3iWk7VdCD+FwRhtQRMvrBVCrxMkGvgD5xFb8a4YoxKOkduhtNrFX5nRkgnqNe4NENSSEhwXXZ2h
	4VvPMB5g6rGRTDHc+9Ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZMWO-0000000FFjO-3prv;
	Tue, 16 Jun 2026 05:39:36 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZMWN-0000000FFim-2nuk;
	Tue, 16 Jun 2026 05:39:35 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id ADC7A601F0;
	Tue, 16 Jun 2026 05:39:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B3D581F00A3D;
	Tue, 16 Jun 2026 05:39:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781588374;
	bh=80RmZrwXuKFVLAWjbGHY+VjBEIxT3ywEjfnnRscgprA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=bFxrHIdCaXCMK8Ds5Dzlp3idpjzEVT1sCk3OFQ/2GMb2VCvCA4245IBnL/WVAsJc5
	 JyniP+z5QEHf6RdWdWAcIcO2nXOFKYgTzElancuh0rzTGp/gg4jJsnvOERy4v9Ukuj
	 YhhkEs2qiVhq5ZjcG123PLk1Eo6qMy3fnz036gWF4f4Zyxq+gWvQ2/dBxRHRb1CX6J
	 aBHlyOha24fkmEjm3WTsrTytcPtC5QNzXqH+zESrTP9CG/yoLJ2njm5r3NI2S7BoSw
	 OVcVyVnKtu9etqcuzfjlWtUiDGbJbFcw0D+G/XU6C47Qt+Z4+izJcRwyG4o+NXKuh+
	 ieyxgDHfylEhQ==
Date: Tue, 16 Jun 2026 07:39:26 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Geraldo Nascimento <geraldogabriel@gmail.com>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, 
	Dragan Simic <dsimic@manjaro.org>, linux-rockchip@lists.infradead.org, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 3/3] PCI: rockchip: drive at 2.5 GT/s, error other
 speeds
Message-ID: <2nhgubo6h6eo5t5mzzizhiatea2f6if6fgjumzb7qae7idw34x@nljy2gwgi64g>
References: <cover.1781207474.git.geraldogabriel@gmail.com>
 <4ac5cd7d2271df375ed6307f5c394247721395d9.1781207474.git.geraldogabriel@gmail.com>
 <ajBS3tGp0wqLyVq7@geday>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ajBS3tGp0wqLyVq7@geday>
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

T24gTW9uLCBKdW4gMTUsIDIwMjYgYXQgMDQ6MzA6MzhQTSAtMDMwMCwgR2VyYWxkbyBOYXNjaW1l
bnRvIHdyb3RlOgo+IEhpLAo+IAo+IE9uIFRodSwgSnVuIDExLCAyMDI2IGF0IDA1OjA0OjIyUE0g
LTAzMDAsIEdlcmFsZG8gTmFzY2ltZW50byB3cm90ZToKPiA+IENvbmZpZ3VyZSB0aGUgY29yZSB0
byBiZSBkcml2ZW4gYXQgMi41IEdUL3MgTGluayBTcGVlZCBhbmQgaWdub3JlCj4gPiBhbnkgb3Ro
ZXIgc3BlZWQgd2l0aCBhIHdhcm5pbmcuIEFsc28gZHJvcCB0aGUgNS4wIEdUL3MgTGluayBTcGVl
ZAo+ID4gZGVmaW5lcyBmcm9tIFJvY2tjaGlwIFBDSWUgaGVhZGVyLgo+ID4gCj4gPiBUaGUgcmVh
c29uIGlzIHRoYXQgU2hhd24gTGluIGZyb20gUm9ja2NoaXAgaGFzIHJlaXRlcmF0ZWQgdGhhdCB0
aGVyZQo+ID4gbWF5IGJlIGRhbmdlciBvZiAiY2F0YXN0cm9waGljIGZhaWx1cmUiIGluIHVzaW5n
IHRoZWlyIFBDSWUgd2l0aAo+ID4gNS4wIEdUL3Mgc3BlZWRzLgo+ID4gCj4gPiBXaGlsZSBSb2Nr
Y2hpcCBoYXMgZG9uZSBzbyBpbmZvcm1hbGx5IHdpdGhvdXQgaXNzdWluZyBhIHByb3BlciBlcnJh
dGEsCj4gPiBhbmQgdGhlIHBhcnRpY3VsYXJzIGFyZSB0aHVzIHVua25vd24sIHRoaXMgbWF5IGNh
dXNlIGRhdGEgbG9zcyBvcgo+ID4gd29yc2UuCj4gPiAKPiA+IFRoaXMgY2hhbmdlIGlzIGNvcnJv
Ym9yYXRlZCBieSBSSzMzOTkgb2ZmaWNpYWwgZGF0YXNoZWV0IFsxXSwgd2hpY2gKPiA+IHN0YXRl
cyBtYXhpbXVtIGxpbmsgc3BlZWQgZm9yIHRoaXMgcGxhdGZvcm0gaXMgMi41IEdUL3MuCj4gPiAK
PiA+IFsxXSBodHRwczovL29wZW5zb3VyY2Uucm9jay1jaGlwcy5jb20vaW1hZ2VzL2QvZDcvUm9j
a2NoaXBfUkszMzk5X0RhdGFzaGVldF9WMi4xLTIwMjAwMzIzLnBkZgo+ID4gCj4gPiBGaXhlczog
OTU2Y2Q5OWIzNWE4ICgiUENJOiByb2NrY2hpcDogU2VwYXJhdGUgY29tbW9uIGNvZGUgZnJvbSBS
QyBkcml2ZXIiKQo+ID4gTGluazogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsL2ZmZDA1MDcw
LTk4NzktNDQ2OC05NGUzLWI4ODk2OGI0YzIxYkByb2NrLWNoaXBzLmNvbS8KPiA+IENjOiBzdGFi
bGVAdmdlci5rZXJuZWwub3JnCj4gPiBSZXBvcnRlZC1ieTogRHJhZ2FuIFNpbWljIDxkc2ltaWNA
bWFuamFyby5vcmc+Cj4gPiBSZXBvcnRlZC1ieTogU2hhd24gTGluIDxzaGF3bi5saW5Acm9jay1j
aGlwcy5jb20+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBHZXJhbGRvIE5hc2NpbWVudG8gPGdlcmFsZG9n
YWJyaWVsQGdtYWlsLmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNp
ZS1yb2NrY2hpcC5jIHwgMTYgKysrKysrKysrLS0tLS0tLQo+ID4gIGRyaXZlcnMvcGNpL2NvbnRy
b2xsZXIvcGNpZS1yb2NrY2hpcC5oIHwgIDMgLS0tCj4gPiAgMiBmaWxlcyBjaGFuZ2VkLCA5IGlu
c2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLmMgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVy
L3BjaWUtcm9ja2NoaXAuYwo+ID4gaW5kZXggMGY4OGRhMzc4ODA1NC4uNWEyODc2ZDdjODU0NyAx
MDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC5jCj4g
PiArKysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAuYwo+ID4gQEAgLTY2
LDggKzY2LDEwIEBAIGludCByb2NrY2hpcF9wY2llX3BhcnNlX2R0KHN0cnVjdCByb2NrY2hpcF9w
Y2llICpyb2NrY2hpcCkKPiA+ICAJfQo+ID4gIAo+ID4gIAlyb2NrY2hpcC0+bGlua19nZW4gPSBv
Zl9wY2lfZ2V0X21heF9saW5rX3NwZWVkKG5vZGUpOwo+ID4gLQlpZiAocm9ja2NoaXAtPmxpbmtf
Z2VuIDwgMCB8fCByb2NrY2hpcC0+bGlua19nZW4gPiAyKQo+ID4gLQkJcm9ja2NoaXAtPmxpbmtf
Z2VuID0gMjsKPiA+ICsJaWYgKHJvY2tjaGlwLT5saW5rX2dlbiA8IDAgfHwgcm9ja2NoaXAtPmxp
bmtfZ2VuID49IDIpIHsKPiA+ICsJCXJvY2tjaGlwLT5saW5rX2dlbiA9IDE7Cj4gPiArCQlkZXZf
d2FybihkZXYsICJpbnZhbGlkIG1heC1saW5rLXNwZWVkLCBsaW1pdGVkIHRvIDIuNSBHVC9zXG4i
KTsKPiA+ICsJfQo+ID4gIAo+ID4gIAlmb3IgKGkgPSAwOyBpIDwgUk9DS0NISVBfTlVNX1BNX1JT
VFM7IGkrKykKPiA+ICAJCXJvY2tjaGlwLT5wbV9yc3RzW2ldLmlkID0gcm9ja2NoaXBfcGNpX3Bt
X3JzdHNbaV07Cj4gPiBAQCAtMTQ3LDEyICsxNDksMTIgQEAgaW50IHJvY2tjaGlwX3BjaWVfaW5p
dF9wb3J0KHN0cnVjdCByb2NrY2hpcF9wY2llICpyb2NrY2hpcCkKPiA+ICAJCWdvdG8gZXJyX2V4
aXRfcGh5Owo+ID4gIAl9Cj4gPiAgCj4gPiArCS8qIDUuMCBHVC9zIG1heSBjYXVzZSBjYXRhc3Ry
b3BoaWMgZmFpbHVyZSBmb3IgdGhpcyBjb3JlICovCj4gPiAgCWlmIChyb2NrY2hpcC0+bGlua19n
ZW4gPT0gMikKPiA+IC0JCXJvY2tjaGlwX3BjaWVfd3JpdGUocm9ja2NoaXAsIFBDSUVfQ0xJRU5U
X0dFTl9TRUxfMiwKPiAKPiBTYXNoaWtvIGNhdWdodCB1bnJlYWNoYWJsZSBkZWFkIGNvZGUgcmln
aHRmdWxseSBoZXJlLiBJdCBsb29rcyBsaWtlIEkKPiBoYWQgZ290IGl0IHJpZ2h0IGluIHY0IGFu
ZCB0aGVuIHRoZSBmaXggcmVncmVzc2VkLgo+IAo+IFdpbGwgYWRkcmVzcyB0aGlzIGZvciB2NyBh
ZnRlciBJIGdldCBtb3JlIGNvbW1lbnRzLgo+IAoKSSBkb24ndCBoYXZlIGFueSBjb21tZW50cyBv
dGhlciB0aGFuIHRoaXMuCgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g
4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

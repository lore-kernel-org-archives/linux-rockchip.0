Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60442CCFA03
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Nov 2025 07:07:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vQMWI8VIvsQkYSTDWkqWeamtyU3u/rtTd4SSgG/bP+s=; b=BGjlbyl/Y8MNHt
	RGe+bXM5Xepzqkxmf/uPSeDbLJm8aVfsUDasLbpQ8Vu9LIDOXLnxmb38rcnFrvxlbt/Z5JSPMJG9j
	Xx6BRFqbiCMaRjg9w/D9xLNI2oT5xDvjf56J/kOSMbscqP+hFeMYPXX+JD0CFNWzbDjXmfeGRxRui
	kggNL8aVYeHzDYamLTqLRHQsc8GeBNuQmxU77XhDawoQOelbaQu2/jRzUyzV8YbxrOiphSdC+kKHr
	9dKI3ai3seO4KbgmG0gHS2vbVVzGHT+0LykEC/Si5CDHBXZ15+j8PIlIHMkO45AqaM8VYJfoICNTe
	Icpc3GClNlOs/fzghDaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGu5H-0000000EytG-4AZx;
	Thu, 06 Nov 2025 07:07:03 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGu5F-0000000Eysm-3TuI;
	Thu, 06 Nov 2025 07:07:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id C713540972;
	Thu,  6 Nov 2025 07:07:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EA158C4CEF7;
	Thu,  6 Nov 2025 07:06:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762412820;
	bh=bqDZ7dmuCre8a9mGu2kDTQ6hkin7PcxZjdNHk50TiWs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kiDW6Dy1rIG6NN+YGv8qsOLyDj/Z50R1sni61NB7SBu0+e9PLb9hRuawULnNetA+H
	 Gzae9u4SrXbCDwLC2qOfW/QXRTyqRZBnsXfQKeOE4w6WyykOzQ/yJF8utKHGlv5h6+
	 Had/D2JTRqvt+2gk5yxiIfVwsWgESP8SXYHdSLJdq/7YVQ3GGncikke5lrr2e5dlgx
	 TxvT7m9VtQcdS50cZFJQEOJdcbSFxNtY5scKNCkri30xwH+BS0VTreB7bQqvh3Hv5b
	 M+dOKk0JJnqhxGd55mIHk7grrBVtcg751Nea8zxyYbxDoekV/7w6BpW7kzRPSFlsP1
	 xDvK7CEmgemyg==
Date: Thu, 6 Nov 2025 12:36:41 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Heiko Stuebner <heiko@sntech.de>, Kever Yang <kever.yang@rock-chips.com>, 
	Simon Xue <xxm@rock-chips.com>, Damien Le Moal <dlemoal@kernel.org>, 
	Dragan Simic <dsimic@manjaro.org>, FUKAUMI Naoki <naoki@radxa.com>, 
	Diederik de Haas <diederik@cknow-tech.com>, stable@vger.kernel.org, 
	Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>, Daire McNamara <daire.mcnamara@microchip.com>, 
	Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>, Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, linux-pci@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	Niklas Cassel <cassel@kernel.org>
Subject: Re: [PATCH v3] PCI: dw-rockchip: Prevent advertising L1 Substates
 support
Message-ID: <oa57mn3wrigno2kzigdo2lh46z5xmesv74nzjtg4jz4ea6urrh@icti3ewoll4r>
References: <0e32766b-b951-4ab4-ae3d-c802cf649edf@rock-chips.com>
 <20251104221724.GA1875081@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251104221724.GA1875081@bhelgaas>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251105_230701_908248_C8BC8C01 
X-CRM114-Status: GOOD (  36.04  )
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

T24gVHVlLCBOb3YgMDQsIDIwMjUgYXQgMDQ6MTc6MjRQTSAtMDYwMCwgQmpvcm4gSGVsZ2FhcyB3
cm90ZToKPiBPbiBUdWUsIE5vdiAwNCwgMjAyNSBhdCAwODo1ODowMkFNICswODAwLCBTaGF3biBM
aW4gd3JvdGU6Cj4gPiDlnKggMjAyNS8xMS8wNCDmmJ/mnJ/kuowgNTozMiwgQmpvcm4gSGVsZ2Fh
cyDlhpnpgZM6Cj4gPiA+IE9uIFR1ZSwgT2N0IDI4LCAyMDI1IGF0IDAyOjAyOjE4UE0gLTA1MDAs
IEJqb3JuIEhlbGdhYXMgd3JvdGU6Cj4gPiA+ID4gT24gRnJpLCBPY3QgMTcsIDIwMjUgYXQgMDY6
MzI6NTNQTSArMDIwMCwgTmlrbGFzIENhc3NlbCB3cm90ZToKPiA+ID4gPiA+IFRoZSBMMSBzdWJz
dGF0ZXMgc3VwcG9ydCByZXF1aXJlcyBhZGRpdGlvbmFsIHN0ZXBzIHRvIHdvcmssIG5hbWVseToK
PiA+ID4gPiA+IC1Qcm9wZXIgaGFuZGxpbmcgb2YgdGhlIENMS1JFUSMgc2lkZWJhbmQgc2lnbmFs
LiAoSXQgaXMgbW9zdGx5IGhhbmRsZWQgYnkKPiA+ID4gPiA+ICAgaGFyZHdhcmUsIGJ1dCBzb2Z0
d2FyZSBzdGlsbCBuZWVkcyB0byBzZXQgdGhlIGNsa3JlcSBmaWVsZHMgaW4gdGhlCj4gPiA+ID4g
PiAgIFBDSUVfQ0xJRU5UX1BPV0VSX0NPTiByZWdpc3RlciB0byBtYXRjaCB0aGUgaGFyZHdhcmUg
aW1wbGVtZW50YXRpb24uKQo+ID4gPiA+ID4gLVByb2dyYW0gdGhlIGZyZXF1ZW5jeSBvZiB0aGUg
YXV4IGNsb2NrIGludG8gdGhlCj4gPiA+ID4gPiAgIERTUF9QQ0lFX1BMX0FVWF9DTEtfRlJFUV9P
RkYgcmVnaXN0ZXIuIChEdXJpbmcgTDEgc3Vic3RhdGVzIHRoZSBjb3JlX2Nsawo+ID4gPiA+ID4g
ICBpcyB0dXJuZWQgb2ZmIGFuZCB0aGUgYXV4X2NsayBpcyB1c2VkIGluc3RlYWQuKQo+ID4gPiA+
IC4uLgo+ID4gPiAKPiA+ID4gPiA+ICtzdGF0aWMgdm9pZCByb2NrY2hpcF9wY2llX2Rpc2FibGVf
bDFzdWIoc3RydWN0IGR3X3BjaWUgKnBjaSkKPiA+ID4gPiA+ICt7Cj4gPiA+ID4gPiArCXUzMiBj
YXAsIGwxc3ViY2FwOwo+ID4gPiA+ID4gKwo+ID4gPiA+ID4gKwljYXAgPSBkd19wY2llX2ZpbmRf
ZXh0X2NhcGFiaWxpdHkocGNpLCBQQ0lfRVhUX0NBUF9JRF9MMVNTKTsKPiA+ID4gPiA+ICsJaWYg
KGNhcCkgewo+ID4gPiA+ID4gKwkJbDFzdWJjYXAgPSBkd19wY2llX3JlYWRsX2RiaShwY2ksIGNh
cCArIFBDSV9MMVNTX0NBUCk7Cj4gPiA+ID4gPiArCQlsMXN1YmNhcCAmPSB+KFBDSV9MMVNTX0NB
UF9MMV9QTV9TUyB8IFBDSV9MMVNTX0NBUF9BU1BNX0wxXzEgfAo+ID4gPiA+ID4gKwkJCSAgICAg
IFBDSV9MMVNTX0NBUF9BU1BNX0wxXzIgfCBQQ0lfTDFTU19DQVBfUENJUE1fTDFfMSB8Cj4gPiA+
ID4gPiArCQkJICAgICAgUENJX0wxU1NfQ0FQX1BDSVBNX0wxXzIpOwo+ID4gPiA+ID4gKwkJZHdf
cGNpZV93cml0ZWxfZGJpKHBjaSwgY2FwICsgUENJX0wxU1NfQ0FQLCBsMXN1YmNhcCk7Cj4gPiA+
ID4gPiArCX0KPiA+ID4gPiA+ICt9Cj4gPiA+ID4gCj4gPiA+ID4gSSBsaWtlIHRoaXMuICBCdXQg
d2h5IHNob3VsZCB3ZSBkbyBpdCBqdXN0IGZvciBkdy1yb2NrY2hpcD8gIElzIHRoZXJlCj4gPiA+
ID4gc29tZXRoaW5nIHNwZWNpYWwgYWJvdXQgZHctcm9ja2NoaXAgdGhhdCBtYWtlcyB0aGlzIGEg
cHJvYmxlbT8gIE1heWJlCj4gPiA+ID4gd2Ugc2hvdWxkIGNvbnNpZGVyIGRvaW5nIHRoaXMgaW4g
dGhlIGR3YywgY2FkZW5jZSwgbW9iaXZlaWwsIGFuZCBwbGRhCj4gPiA+ID4gY29yZXMgaW5zdGVh
ZCBvZiB0cnlpbmcgdG8gZG8gaXQgZm9yIGV2ZXJ5IGRyaXZlciBpbmRpdmlkdWFsbHk/Cj4gPiA+
ID4gCj4gPiA+ID4gQWR2ZXJ0aXNpbmcgTDFTUyBzdXBwb3J0IHZpYSBQQ0lfRVhUX0NBUF9JRF9M
MVNTIG1lYW5zIHVzZXJzIGNhbgo+ID4gPiA+IGVuYWJsZSBMMVNTIHZpYSBDT05GSUdfUENJRUFT
UE1fUE9XRVJfU1VQRVJTQVZFPXkgb3Igc3lzZnMsIGFuZCB0aGF0Cj4gPiA+ID4gc2VlbXMgbGlr
ZWx5IHRvIGNhdXNlIHByb2JsZW1zIHVubGVzcyBDTEtSRVEjIGlzIHN1cHBvcnRlZC4KPiA+ID4g
Cj4gPiA+IEFueSB0aG91Z2h0cyBvbiB0aGlzPyAgVGhlcmUncyBub3RoaW5nIHJvY2tjaGlwLXNw
ZWNpZmljIGluIHRoaXMKPiA+ID4gcGF0Y2guICBXaGF0IEknbSBwcm9wb3NpbmcgaXMgc29tZXRo
aW5nIGxpa2UgdGhpczoKPiA+IAo+ID4gSSBsaWtlIHlvdXIgaWRlYSwgdGhvdWdoLiBCdXQgY291
bGQgaXQgYmUgYW5vdGhlciBmb3JtIG9mIHJlZ3Jlc3Npb24KPiA+IHRoYXQgd2UgbWF5IGJyZWFr
cyB0aGUgcGxhdGZvcm0gd2hpY2ggaGF2ZSBhbHJlYWR5IHN1cHBvcnQgTDFTUwo+ID4gcHJvcGVy
bHk/IEl0J3MgZXZlbiBoYXJkZXIgdG8gZGV0ZWN0IGJlY2F1c2UgYSBmdW5jdGlvbmFsIGJyZWFr
IGlzIGVhc2llciB0bwo+ID4gbm90aWNlIHRoYW4gaW5jcmVhc2VkIHBvd2VyIGNvbnN1bXB0aW9u
LiAKPiAKPiBUcnVlLCBidXQgSSB0aGluayBpdCdzIHVubGlrZWx5IGJlY2F1c2UgdGhlIFBDSSBj
b3JlIG5ldmVyIGVuYWJsZWQKPiBMMVNTIChleGNlcHQgZm9yIENPTkZJR19QQ0lFQVNQTV9QT1dF
Ul9TVVBFUlNBVkU9eSBvciBzeXNmcywgd2hpY2ggSQo+IGRvdWJ0IGFueWJvZHkgcmVhbGx5IHVz
ZXMpLgo+IAo+IERldmljZXRyZWUgcGxhdGZvcm1zIHRoYXQgdXNlIEwxU1Mgc2hvdWxkIGhhdmUg
ZXhwbGljaXQgY29kZSB0byBlbmFibGUKPiBpdCwgbGlrZSBxY29tIGRvZXMsIHNvIHdlIHNob3Vs
ZCBiZSBhYmxlIHRvIGZpbmQgdGhlbSBhbmQgbWFrZSBzdXJlCj4gdGhleSBkbyB3aGF0J3MgbmVl
ZGVkIHRvIHByZXZlbnQgdGhlIHJlZ3Jlc3Npb24uCj4gCj4gPiBPciBtYXliZSB3ZSBjb3VsZAo+
ID4ganVzdCBleHBvcnQgZHdfcGNpZV9jbGVhcl9sMXNzX2FkdmVydCgpIGluIGR3YyBmb3IgaG9z
dCBkcml2ZXJzIHRvCj4gPiBjYWxsIGl0Pwo+IAo+IEkgZG9uJ3QgbGlrZSB0aGUgaWRlYSBvZiBo
b3N0IGRyaXZlcnMgaGF2aW5nIHRvIG9wdCBpbiBmb3IgdGhpcwo+IGJlY2F1c2UgdGhhdCByZXF1
aXJlcyBjaGFuZ2VzIHRvIGFsbCBvZiB0aGVtLCBub3QganVzdCBjaGFuZ2VzIHRvCj4gZHJpdmVy
cyB0aGF0IGhhdmUgZG9uZSB0aGUgd29yayB0byBhY3R1YWxseSBzdXBwb3J0IEwxU1MuCj4gCgpP
dGhlcndpc2UsIHdlIG1heSBoYXZlIHRvIGludHJvZHVjZSBhIGZsYWcgZm9yIHRoZSBjb250cm9s
bGVyIGRyaXZlcnMgdG8gb3B0LW91dApvZiB0aGlzIGRpc2FibGVtZW50LiBMaWtlLCBkd19wY2ll
X3JwOjpuYXRpdmVfY2xrcmVxIGFuZCBiYWlsaW5nIG91dCBlYXJseSBpZgp0aGlzIGZsYWcgaXMg
c2V0LgoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCu
muCuv+CuteCuruCvjQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=

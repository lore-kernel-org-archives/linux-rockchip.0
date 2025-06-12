Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5CC09C7114A
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Jun 2025 19:40:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bWR0NxKx01Q25lQprIeUltPQ/Qm1Vzg3RaXKp0pgpbY=; b=q8jt+C8wFNoJMW
	sL2QFHZYpVn24IH/AUfaMAXsr/j7J27Cx6UI1eZDabMIQPH61O0v6mKFtAehxWSYX3LYoItG6p0Px
	V5JaMgJ8Idjkn4WhfTSK8clx8QbrQlxY6fTDqWm8vRZdghJt2Sge9V3qBUhrhDxXM6gw3ROx64kkK
	pv14BDvfebftkrHbjL3wRCzAVQeA7X9Mcy+V2mf0bwwvyD7v7PZpyg+99gmg6sc8nfC+9ya3EfUUR
	hU0ppFk+qUNOV//LB7Jqji1HrcoWKGXuYCXUYLYVQrL0vi+Xbz3qwucIHq2u5mTJX1/kriXgEP0Ks
	GiWLq07m5OLQGGJH98Gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPnmp-0000000EDdC-3cLZ;
	Thu, 12 Jun 2025 19:40:31 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPhXz-0000000DJpE-1EXp;
	Thu, 12 Jun 2025 13:00:47 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 8A137629ED;
	Thu, 12 Jun 2025 13:00:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 97055C4CEEA;
	Thu, 12 Jun 2025 13:00:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749733246;
	bh=98J4zwVuQp/nbB05Jiw3q7/W838MgXOQSKEV80NOtco=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oFwezS59tRXNI07znkqsGmf11eibxUmJ5WAEOCUQNxsdiVh8uUUbkBCWCuyBHBeHa
	 0Y1M4y5lvUb8GEQ4p0gZ8vtrGlzLnhgtGY8k7DlduItEx+B8IpVpBJbHbDB1rL35wS
	 HQoD/H49516e6BP4JggsLnBhRJOly71NSZ/k75QOUjAL2XYdiq/OaRBIDp5QCriqlw
	 yhnibje7Apf1SyXtYkhFl3rbU3aRF79hRHwSOTFYB4aV8ISLzkqZxhoKwmmFPrcRT2
	 S1XF1r0Mo5TPHYgsy1kNALIAAur9YJZFl8fFGTiHyUPOwMAD//EM0yDJDm5qJnPSrm
	 52ggHCrbOx54A==
Date: Thu, 12 Jun 2025 18:30:37 +0530
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
Message-ID: <apkamrd6ty2km7mjwz4mpe2xhewxgd3crmeqdmnj7wn6jl4emv@3nwrt43u2ons>
References: <aEq8pxE45PmeXN_W@ryzen>
 <20250612122108.GA901642@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250612122108.GA901642@bhelgaas>
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

T24gVGh1LCBKdW4gMTIsIDIwMjUgYXQgMDc6MjE6MDhBTSAtMDUwMCwgQmpvcm4gSGVsZ2FhcyB3
cm90ZToKPiBPbiBUaHUsIEp1biAxMiwgMjAyNSBhdCAwMTo0MDoyM1BNICswMjAwLCBOaWtsYXMg
Q2Fzc2VsIHdyb3RlOgo+ID4gT24gVGh1LCBKdW4gMTIsIDIwMjUgYXQgMDY6Mzg6MjdBTSAtMDUw
MCwgQmpvcm4gSGVsZ2FhcyB3cm90ZToKPiA+ID4gT24gVGh1LCBKdW4gMTIsIDIwMjUgYXQgMDE6
MTk6NDVQTSArMDIwMCwgTmlrbGFzIENhc3NlbCB3cm90ZToKPiA+ID4gPiBPbiBXZWQsIEp1biAx
MSwgMjAyNSBhdCAwNDoxNDo1NlBNIC0wNTAwLCBCam9ybiBIZWxnYWFzIHdyb3RlOgo+ID4gPiA+
ID4gT24gV2VkLCBKdW4gMTEsIDIwMjUgYXQgMTI6NTE6NDJQTSArMDIwMCwgTmlrbGFzIENhc3Nl
bCB3cm90ZToKPiA+ID4gPiA+ID4gQ29tbWl0IGVjOWZkNDk5YjljNiAoIlBDSTogZHctcm9ja2No
aXA6IERvbid0IHdhaXQgZm9yIGxpbmsgc2luY2Ugd2UgY2FuCj4gPiA+ID4gPiA+IGRldGVjdCBM
aW5rIFVwIikgY2hhbmdlZCBzbyB0aGF0IHdlIG5vIGxvbmdlciBjYWxsIGR3X3BjaWVfd2FpdF9m
b3JfbGluaygpLAo+ID4gPiA+ID4gPiBhbmQgaW5zdGVhZCBlbnVtZXJhdGUgdGhlIGJ1cyBkaXJl
Y3RseSBhZnRlciByZWNlaXZpbmcgdGhlIExpbmsgVXAgSVJRLgo+ID4gPiA+ID4gPiAKPiA+ID4g
PiA+ID4gVGhpcyBtZWFucyB0aGF0IHRoZXJlIGlzIG5vIGxvbmdlciBhbnkgZGVsYXkgYmV0d2Vl
biBsaW5rIHVwIGFuZCB0aGUgYnVzCj4gPiA+ID4gPiA+IGdldHRpbmcgZW51bWVyYXRlZC4KPiA+
ID4gCj4gPiA+ID4gPiBJIHRoaW5rIHRoZSBjb21tZW50IGF0IHRoZSBQQ0lFX1RfUlJTX1JFQURZ
X01TIGRlZmluaXRpb24gc2hvdWxkIGJlCj4gPiA+ID4gPiBlbm91Z2ggKGFsdGhvdWdoIGl0IG1p
Z2h0IG5lZWQgdG8gYmUgdXBkYXRlZCB0byBtZW50aW9uIGxpbmstdXApLgo+ID4gPiA+ID4gVGhp
cyBkZWxheSBpcyBnb2luZyB0byBiZSBhIHN0YW5kYXJkIHBpZWNlIG9mIGV2ZXJ5IGRyaXZlciwg
c28gaXQKPiA+ID4gPiA+IHdvbid0IHJlcXVpcmUgc3BlY2lhbCBub3RpY2UuCj4gPiA+ID4gCj4g
PiA+ID4gTG9va2luZyBhdCBwY2kuaCwgd2UgYWxyZWFkeSBoYXZlIGEgY29tbWVudCBtZW50aW9u
aW5nIGV4YWN0bHkgdGhpcwo+ID4gPiA+IChsaW5rLXVwKToKPiA+ID4gPiBodHRwczovL2dpdGh1
Yi5jb20vdG9ydmFsZHMvbGludXgvYmxvYi92Ni4xNi1yYzEvZHJpdmVycy9wY2kvcGNpLmgjTDUx
LUw2Mwo+ID4gPiA+IAo+ID4gPiA+IEkgd2lsbCBjaGFuZ2UgdGhlIHBhdGNoZXMgdG8gdXNlIFBD
SUVfUkVTRVRfQ09ORklHX0RFVklDRV9XQUlUX01TIGluc3RlYWQuCj4gPiA+IAo+ID4gPiBJJ2xs
IG1vcmUgY2xvc2VseSBsYXRlciwgYnV0IEkgdGhpbmsgUENJRV9UX1JSU19SRUFEWV9NUyBhbmQK
PiA+ID4gUENJRV9SRVNFVF9DT05GSUdfREVWSUNFX1dBSVRfTVMgYXJlIGR1cGxpY2F0ZXMgYW5k
IG9ubHkgb25lIHNob3VsZAo+ID4gPiBleGlzdC4gIEl0IGxvb2tzIGxpa2UgdGhleSBnb3QgbWVy
Z2VkIGF0IGFib3V0IHRoZSBzYW1lIHRpbWUgYnkKPiA+ID4gZGlmZmVyZW50IHBlb3BsZSwgc28g
d2UgZGlkbid0IG5vdGljZS4KPiA+IAo+ID4gSSBjYW1lIHRvIHRoZSBzYW1lIGNvbmNsdXNpb24s
IEkgd2lsbCBzZW5kIGEgcGF0Y2ggdG8gcmVtb3ZlCj4gPiBQQ0lFX1RfUlJTX1JFQURZX01TIGFu
ZCBjb252ZXJ0IHRoZSBvbmx5IGV4aXN0aW5nIHVzZXIgdG8gdXNlCj4gPiBQQ0lFX1JFU0VUX0NP
TkZJR19ERVZJQ0VfV0FJVF9NUy4KPiAKPiBJIHRoaW5rIFBDSUVfVF9SUlNfUkVBRFlfTVMgZXhw
cmVzc2VzIHRoZSBwdXJwb3NlIG9mIHRoZSB3YWl0IG1vcmUKPiBzcGVjaWZpY2FsbHkuICBJdCdz
IG5vdCB0aGF0IHRoZSBkZXZpY2UgaXMgY29tcGxldGVseSByZWFkeSBhZnRlcgo+IDEwMG1zOyBq
dXN0IHRoYXQgaXQgc2hvdWxkIGJlIGFibGUgdG8gcmVzcG9uZCB3aXRoIFJSUyBpZiBpdCBuZWVk
cwo+IG1vcmUgdGltZS4KClllcywgYnV0IG5vbmUgb2YgdGhlIGRyaXZlcnMgYXJlIGNoZWNraW5n
IGZvciB0aGUgUlJTIHN0YXR1cyBjdXJyZW50bHkuIFNvIHVzaW5nClBDSUVfVF9SUlNfUkVBRFlf
TVMgZ2l2ZXMgYSB3cm9uZyBpbXByZXNzaW9uIHRoYXQgdGhlIGRyaXZlciBpcyB3YWl0aW5nIGZv
ciB0aGUKUlJTIHN0YXR1cyBmcm9tIHRoZSBkZXZpY2UuCgotIE1hbmkKCi0tIArgrq7grqPgrr/g
rrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

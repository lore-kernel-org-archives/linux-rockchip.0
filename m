Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9036ACA0FF0
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Aug 2025 17:54:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TOVTLsPRRWYsgJ455OBfBM0/4sfdukAYHvU0TUSe/IA=; b=27UcgDb0wBp61q
	bTLq+FVKs2yQXOgZoEFjLox7MXPPdzp2zU8asY9qwnc+gLVPhna+2brs8zNgdkwZh5uUUJuKUVcD6
	z8/KV0+0AaiRnQ1wLm1UfaX0JvAJClxfDTqHUeAS9h4j+upAV798Tj1bTe0H3RmO0hsmlzWrMLHoC
	9wHIdmiIeFyMBqSFNc1l7MdYxup2KesCrgBDB42BS/222lpToHPGtTjbpIrPqO3gZt4hAGx9RNC9m
	dHgC2Ll97FPg9VDU3Cw0Z4HLCeLPTmBn5A3b2yfwY8Fncyjg4cq6w3TL27ygu7Kdq9U12fnpOe4wb
	FuyC7dCR+H3p6nk0bVjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1us3Ic-00000006a7R-1miq;
	Fri, 29 Aug 2025 17:54:06 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urzbH-00000005wHS-2eMA;
	Fri, 29 Aug 2025 13:57:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id B9B8B6013F;
	Fri, 29 Aug 2025 13:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CB3EDC4CEF0;
	Fri, 29 Aug 2025 13:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756475826;
	bh=TPcM7vsR5BgNayppQJ/9+eqOOaE0BLCmHtlJiHw2x00=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HG7qR2NpViDP3330Rb3+QPhGOoxUP21ucjupQwVZKBcIDr6ufqfMnR0hZ92q/tXjj
	 RmOWxxOjua0rd4S3QlxP5u55wLh0SkpxoR8gxxnjs1oSWUq9Wzv45cyjdJpj6R/x1q
	 Fqb9eIP6XcU+N5ZjhpwAm87yAyqOongAIahxeIav2dVjcbL6V1mlQQ0EM3s1NSBSfy
	 myXVVVHQeEI+43tlZF1SvT0V3sD4rfF8O9njHVkY+uD6QLq+0PMjyXEDbdDLmnNu3P
	 3Fl5/n5sqcruuH6EstM67V0Y4OPto9EUCzd5+nOaQ9TcYhk2Yc07/m71tRiZsnTTMN
	 y9f/ja0kprk1w==
Date: Fri, 29 Aug 2025 19:26:56 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Brian Norris <briannorris@chromium.org>
Cc: manivannan.sadhasivam@oss.qualcomm.com, 
	Bjorn Helgaas <bhelgaas@google.com>, Mahesh J Salgaonkar <mahesh@linux.ibm.com>, 
	Oliver O'Halloran <oohall@gmail.com>, Will Deacon <will@kernel.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Rob Herring <robh@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Philipp Zabel <p.zabel@pengutronix.de>, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	Niklas Cassel <cassel@kernel.org>, Wilfred Mallawa <wilfred.mallawa@wdc.com>, 
	Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>, Lukas Wunner <lukas@wunner.de>
Subject: Re: [PATCH v6 0/4] PCI: Add support for resetting the Root Ports in
 a platform specific way
Message-ID: <zhu77qldhrr7ovp2g2tpusl67zsacjx5oapnaasxo2ybmhfohn@io3oqqc6gtte>
References: <20250715-pci-port-reset-v6-0-6f9cce94e7bb@oss.qualcomm.com>
 <aLC1rzdTVoN56Phc@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aLC1rzdTVoN56Phc@google.com>
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

T24gVGh1LCBBdWcgMjgsIDIwMjUgYXQgMDE6MDE6NTFQTSBHTVQsIEJyaWFuIE5vcnJpcyB3cm90
ZToKPiBPbiBUdWUsIEp1bCAxNSwgMjAyNSBhdCAwNzo1MTowM1BNICswNTMwLCBNYW5pdmFubmFu
IFNhZGhhc2l2YW0gdmlhIEI0IFJlbGF5IHdyb3RlOgo+ID4gSGksCj4gPiAKPiA+IEN1cnJlbnRs
eSwgaW4gdGhlIGV2ZW50IG9mIEFFUi9EUEMsIFBDSSBjb3JlIHdpbGwgdHJ5IHRvIHJlc2V0IHRo
ZSBzbG90IChSb290Cj4gPiBQb3J0KSBhbmQgaXRzIHN1Ym9yZGluYXRlIGRldmljZXMgYnkgaW52
b2tpbmcgYnJpZGdlIGNvbnRyb2wgcmVzZXQgYW5kIEZMUi4gQnV0Cj4gPiBpbiBzb21lIGNhc2Vz
IGxpa2UgQUVSIEZhdGFsIGVycm9yLCBpdCBtaWdodCBiZSBuZWNlc3NhcnkgdG8gcmVzZXQgdGhl
IFJvb3QKPiA+IFBvcnRzIHVzaW5nIHRoZSBQQ0kgaG9zdCBicmlkZ2UgZHJpdmVycyBpbiBhIHBs
YXRmb3JtIHNwZWNpZmljIHdheSAoYXMgaW5kaWNhdGVkCj4gPiBieSB0aGUgVE9ETyBpbiB0aGUg
cGNpZV9kb19yZWNvdmVyeSgpIGZ1bmN0aW9uIGluIGRyaXZlcnMvcGNpL3BjaWUvZXJyLmMpLgo+
ID4gT3RoZXJ3aXNlLCB0aGUgUENJIGxpbmsgd29uJ3QgYmUgcmVjb3ZlcmVkIHN1Y2Nlc3NmdWxs
eS4KPiA+IAo+ID4gU28gdGhpcyBzZXJpZXMgYWRkcyBhIG5ldyBjYWxsYmFjayAncGNpX2hvc3Rf
YnJpZGdlOjpyZXNldF9yb290X3BvcnQnIGZvciB0aGUKPiA+IGhvc3QgYnJpZGdlIGRyaXZlcnMg
dG8gcmVzZXQgdGhlIFJvb3QgUG9ydCB3aGVuIGEgZmF0YWwgZXJyb3IgaGFwcGVucy4KPiA+IAo+
ID4gQWxzbywgdGhpcyBzZXJpZXMgYWxsb3dzIHRoZSBob3N0IGJyaWRnZSBkcml2ZXJzIHRvIGhh
bmRsZSBQQ0kgbGluayBkb3duIGV2ZW50Cj4gPiBieSByZXNldHRpbmcgdGhlIFJvb3QgUG9ydHMg
YW5kIHJlY292ZXJpbmcgdGhlIGJ1cy4gVGhpcyBpcyBhY2NvbXBsaXNoZWQgYnkgdGhlCj4gPiBo
ZWxwIG9mIHRoZSBuZXcgJ3BjaV9ob3N0X2hhbmRsZV9saW5rX2Rvd24oKScgQVBJLiBIb3N0IGJy
aWRnZSBkcml2ZXJzIGFyZQo+ID4gZXhwZWN0ZWQgdG8gY2FsbCB0aGlzIEFQSSAocHJlZmVycmFi
bHkgZnJvbSBhIHRocmVhZGVkIElSUSBoYW5kbGVyKSB3aXRoCj4gPiByZWxldmFudCBSb290IFBv
cnQgJ3BjaV9kZXYnIHdoZW4gYSBsaW5rIGRvd24gZXZlbnQgaXMgZGV0ZWN0ZWQgZm9yIHRoZSBw
b3J0Lgo+ID4gVGhlIEFQSSB3aWxsIHJldXNlIHRoZSBwY2llX2RvX3JlY292ZXJ5KCkgZnVuY3Rp
b24gdG8gcmVjb3ZlciB0aGUgbGluayBpZiBBRVIKPiA+IHN1cHBvcnQgaXMgZW5hYmxlZCwgb3Ro
ZXJ3aXNlIGl0IHdpbGwgZGlyZWN0bHkgY2FsbCB0aGUgcmVzZXRfcm9vdF9wb3J0KCkKPiA+IGNh
bGxiYWNrIG9mIHRoZSBob3N0IGJyaWRnZSBkcml2ZXIgKGlmIGV4aXN0cykuCj4gPiAKPiA+IEZv
ciByZWZlcmVuY2UsIEkndmUgbW9kaWZpZWQgdGhlIHBjaWUtcWNvbSBkcml2ZXIgdG8gY2FsbAo+
ID4gcGNpX2hvc3RfaGFuZGxlX2xpbmtfZG93bigpIEFQSSB3aXRoIFJvb3QgUG9ydCAncGNpX2Rl
dicgYWZ0ZXIgcmVjZWl2aW5nIHRoZQo+ID4gTElOS19ET1dOIGdsb2JhbF9pcnEgZXZlbnQgYW5k
IHBvcHVsYXRlZCAncGNpX2hvc3RfYnJpZGdlOjpyZXNldF9yb290X3BvcnQoKScKPiA+IGNhbGxi
YWNrIHRvIHJlc2V0IHRoZSBSb290IFBvcnQuIFNpbmNlIHRoZSBRY29tIFBDSWUgY29udHJvbGxl
cnMgc3VwcG9ydCBvbmx5Cj4gPiBhIHNpbmdsZSBSb290IFBvcnQgKHNsb3QpIHBlciBjb250cm9s
bGVyIGluc3RhbmNlLCB0aGUgQVBJIGlzIGdvaW5nIHRvIGJlCj4gPiBpbnZva2VkIG9ubHkgb25j
ZS4gRm9yIG11bHRpIFJvb3QgUG9ydCBjb250cm9sbGVycywgdGhlIGNvbnRyb2xsZXIgZHJpdmVy
IGlzCj4gPiBleHBlY3RlZCB0byBkZXRlY3QgdGhlIFJvb3QgUG9ydCB0aGF0IHJlY2VpdmVkIHRo
ZSBsaW5rIGRvd24gZXZlbnQgYW5kIGNhbGwKPiA+IHRoZSBwY2lfaG9zdF9oYW5kbGVfbGlua19k
b3duKCkgQVBJIHdpdGggJ3BjaV9kZXYnIG9mIHRoYXQgUm9vdCBQb3J0Lgo+ID4gCj4gPiBUZXN0
aW5nCj4gPiAtLS0tLS0tCj4gPiAKPiA+IEkndmUgbG9zdCBhY2Nlc3MgdG8gbXkgdGVzdCBzZXR1
cCBub3cuIFNvIEtyaXNobmEgKENjZWQpIHdpbGwgaGVscCB3aXRoIHRlc3RpbmcKPiA+IG9uIHRo
ZSBRY29tIHBsYXRmb3JtIGFuZCBXaWxmcmVkIG9yIE5pa2xhcyBzaG91bGQgYmUgYWJsZSB0byB0
ZXN0IGl0IG9uIFJvY2tjaGlwCj4gPiBwbGF0Zm9ybS4gRm9yIHRoZSBtb21lbnQsIHRoaXMgc2Vy
aWVzIGlzIGNvbXBpbGUgdGVzdGVkIG9ubHkuCj4gCj4gRm9yIHRoZSBzZXJpZXM6Cj4gCj4gVGVz
dGVkLWJ5OiBCcmlhbiBOb3JyaXMgPGJyaWFubm9ycmlzQGNocm9taXVtLm9yZz4KPiAKPiBJJ3Zl
IHRlc3RlZCB0aGUgd2hvbGUgdGhpbmcgb24gUXVhbGNvbW0gU0M3MjgwIEhlcm9icmluZSBzeXN0
ZW1zIHdpdGgKPiBOVk1lLiBBZnRlciBhZGRpbmcgYSBkZWJ1Z2ZzIG5vZGUgdG8gY29udHJvbCB0
b2dnbGluZyBQRVJTVCwgSSBjYW4gZm9yY2UKPiB0aGUgbGluayB0byByZXNldCwgYW5kIHNlZSBp
dCByZWNvdmVyIGFuZCByZXN1bWUgTlZNZSB0cmFmZmljLgo+IAo+IEkndmUgdGVzdGVkIHRoZSBm
aXJzdCB0d28gb24gUGl4ZWwgcGhvbmVzLCB1c2luZyBhIG5vbi11cHN0cmVhbQo+IERXQy1iYXNl
ZCBkcml2ZXIgdGhhdCBJJ20gd29ya2luZyBvbiBnZXR0aW5nIGluIGJldHRlciBzaGFwZS4gKFdl
J3ZlCj4gcHJldmlvdXNseSBzdXBwb3J0ZWQgYSBjdXN0b20gbGluay1lcnJvciBBUEkgc2V0dXAg
aW5zdGVhZC4pIEknZCBsb3ZlIHRvCj4gc2VlIHRoaXMgYXZhaWxhYmxlIHVwc3RyZWFtLgo+IAoK
VGhhbmtzLCBCcmlhbiBmb3IgdGVzdGluZyEgSSBkaWRuJ3QgZ2V0IHRpbWUgdG8gbG9vayBpbnRv
IHRoZSByZXBvcnQgZnJvbQpOaWtsYXMgKHdoaWNoIGlzIHRoZSBvbmx5IGJsb2NraW5nIHRoaW5n
IGZvciB0aGlzIHNlcmllcykuIEknbGwgdHJ5IHRvIGRpZyBpbnRvCml0IHRvZGF5L3RvbW9ycm93
LgoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCu
v+CuteCuruCvjQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=

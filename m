Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20C6FC531F9
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Jul 2026 11:56:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QTirx4WPG9qS40ezuIu35HL3+a81McTWqJWcktyIKjg=; b=H4UVx15OxLzASh
	jUGVhiX/wE5nfle4wHkd6GbCDm0Pp+mzeI7O/WfNjLtzJvjAWWsGeN59u7R5CZUA2iJpxQ9c3mYx0
	pBuJ2Wl9u52ImhF1NqvAtbnrW1AD/OsDIoeMboQ4KZjymIsbh9/lY9N7NE+HVRW/3yHpHCdn69w66
	V0YGJ46O2NcitylL2K8e7XcFCW2HlOoWVMBA0SRa5ElbGQoBY4XYxALAx2ImI39VOhxu8fH5jQyBN
	5M5lgUU79R+8iUmYS6dXHjw30G9kTGWVT/LBqbY4MdUbdBqQ2YYa4q0J7Jx9jHKvZbQAEO321svG5
	yDpddKfD5ec9UPzcOOKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wogQC-000000059Q4-1uMh;
	Tue, 28 Jul 2026 11:56:32 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wogQB-000000059Pc-1RGp;
	Tue, 28 Jul 2026 11:56:31 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 1407C40E33;
	Tue, 28 Jul 2026 11:56:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B78B81F000E9;
	Tue, 28 Jul 2026 11:56:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785239791;
	bh=eNwZQCkHKwYFKkrNjWZTS93nuqW+VicG7takxDF9Vgg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=eASZFug7jzWnrOF3OuHWC4dJIdUSnjJMhAZUEWqUVi4S7MXbtF5ibFVRSy4+s537i
	 XUoY0kXJCaCx8MxtLhr+lrqq7NBntmoWdrBHhwp89a1vo6ad9Be0OIxrxYWGthQELk
	 RqQ0blwKXaXTZmXrJFZgO2OKqLo7ZWy1fBwW1QPIGDXU1mei6Oh2U7348bqhX6Ij1F
	 utV4CnZhplr9TkSvfz0vgnkLdUys67sBj2wznd3JK92mKYhvuAzLwbPqxgom8dj0rh
	 GxzUUzbP6wspjvSYYLHIQ6Tlw8fhCAnoo+ZdRHNGcd1kuoMAUM8GVTYLJ4ROhBtRXu
	 isnidYxLb535g==
Date: Tue, 28 Jul 2026 13:56:18 +0200
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
	Brian Norris <briannorris@chromium.org>, Wilson Ding <dingwei@marvell.com>
Subject: Re: [PATCH v8 1/5] PCI: dwc: ep: Clear MSI iATU mapping in
 dw_pcie_ep_cleanup()
Message-ID: <k5zkz2wnvkb2kzwyazafghgncqefv4cvuzrwwek6xi27vvldej@o4ostebesrbm>
References: <20260518-pci-port-reset-v8-0-eb5a7d331dfc@oss.qualcomm.com>
 <20260518-pci-port-reset-v8-1-eb5a7d331dfc@oss.qualcomm.com>
 <ameE3SBWqbiE8PJp@ryzen>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ameE3SBWqbiE8PJp@ryzen>
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

T24gTW9uLCBKdWwgMjcsIDIwMjYgYXQgMDY6MTg6MzdQTSArMDIwMCwgTmlrbGFzIENhc3NlbCB3
cm90ZToKPiBPbiBNb24sIE1heSAxOCwgMjAyNiBhdCAwODoyOToxM1BNICswNTMwLCBNYW5pdmFu
bmFuIFNhZGhhc2l2YW0gdmlhIEI0IFJlbGF5IHdyb3RlOgo+ID4gRnJvbTogTWFuaXZhbm5hbiBT
YWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1Ab3NzLnF1YWxjb21tLmNvbT4KPiA+IAo+
ID4gVGhlIE1TSSBpQVRVIG1hcHBpbmcgaXMgY3VycmVudGx5IG9ubHkgY2xlYXJlZCB3aGVuIHRo
ZSBlbmRwb2ludCBpcwo+ID4gc3RvcHBlZCB2aWEgY29uZmlnZnMgb3Igd2hlbiB0aGUgaG9zdCB1
cGRhdGVzIHRoZSBNU0kgYWRkcmVzcy9zaXplLgo+ID4gVGhpcyBhdm9pZHMgcmVkdW5kYW50IGlB
VFUgcmVjb25maWd1cmF0aW9uIGV2ZXJ5IHRpbWUgdGhlIGVuZHBvaW50Cj4gPiByYWlzZXMgYW4g
TVNJIGludGVycnVwdC4KPiA+IAo+ID4gSG93ZXZlciwgYSBmdW5kYW1lbnRhbCByZXNldCB0cmln
Z2VyZWQgYnkgUEVSU1QjIGFzc2VydC9kZWFzc2VydAo+ID4gcmVzZXRzIGFsbCBpQVRVIGluYm91
bmQvb3V0Ym91bmQgcmVnaXN0ZXJzIHdpdGhvdXQgZ29pbmcgdGhyb3VnaCB0aGUKPiA+IGNvbmZp
Z2ZzIHN0b3AgcGF0aC4gSWYgdGhlIGhvc3QgYWxzbyByZXRhaW5zIHRoZSBzYW1lIE1TSSBhZGRy
ZXNzL3NpemUKPiA+IGFmdGVyIFBFUlNUIyBkZWFzc2VydCwgdGhlIGRyaXZlciBuZXZlciBjbGVh
cnMgdGhlIHN0YWxlIE1TSSBpQVRVCj4gPiBtYXBwaW5nLiBJdCB0aGVuIGNvbnRpbnVlcyB1c2lu
ZyB0aGlzIHN0YWxlIG1hcHBpbmcgdG8gcmFpc2UgdGhlIE1TSQo+ID4gaW50ZXJydXB0cywgd2hp
Y2ggY2FuIGNhdXNlIElPTU1VIGZhdWx0cyBhbmQgTVNJIGZhaWx1cmVzIG9uIHRoZSBob3N0Lgo+
ID4gCj4gPiBGaXggdGhpcyBieSBjbGVhcmluZyB0aGUgTVNJIGlBVFUgbWFwcGluZyBpbnNpZGUg
ZHdfcGNpZV9lcF9jbGVhbnVwKCksCj4gPiB3aGljaCBpcyBhbHJlYWR5IGNhbGxlZCBhcyBwYXJ0
IG9mIHRoZSBQRVJTVCMgYXNzZXJ0L2RlYXNzZXJ0IHNlcXVlbmNlLgo+ID4gVGhpcyB1bm1hcHMg
dGhlIE1TSSBpQVRVIHJlZ2lvbiBhbmQgc2V0cyB0aGUgbXNpX2lhdHVfbWFwcGVkIGZsYWcgdG8K
PiA+IGZhbHNlLCBlbnN1cmluZyB0aGF0IGR3X3BjaWVfZXBfcmFpc2VfbXNpX2lycSgpIHBlcmZv
cm1zIGEgZnJlc2ggaUFUVQo+ID4gbWFwcGluZyBvbiBpdHMgbmV4dCBpbnZvY2F0aW9uLCByZWdh
cmRsZXNzIG9mIHdoZXRoZXIgdGhlIGhvc3QgY2hhbmdlZAo+ID4gdGhlIE1TSSBhZGRyZXNzL3Np
emUuCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZh
bm5hbi5zYWRoYXNpdmFtQG9zcy5xdWFsY29tbS5jb20+Cj4gCj4gRG9lc24ndCB0aGlzIG5lZWQg
YSBGaXhlcyB0YWc/Cj4gCgpJdCBuZWVkcyBvbmUgeWVzIQoKPiAKPiBTaWRlIG5vZGU6IEl0IHNl
ZW1zIGxpa2UgdGhpcyBzZXJpZXMgZG9lcyBubyBsb25nZXIgYXBwbHkgb24gcGNpL25leHQuCj4g
Cj4gUGVyaGFwcyBuZWVkIHRvIHJlYmFzZSBhbmQgcmVzZW5kPwo+IAoKWWVwLiBJJ20gcHJlcGFy
aW5nIHRoIG5leHQgdmVyc2lvbi4gV2lsbCBwb3N0IGl0IGFzYXAuCgotIE1hbmkKCi0tIArgrq7g
rqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

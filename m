Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56940CCF9F0
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Oct 2025 17:26:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=SSo+PVs8tK8L1kIvdfjcoiW6+OndthynLR47oCUZLws=; b=hltNh/ZTthINaa
	ICujt8ubdKDn1v8dC8mGwEtrfr8f61Lw9q5PKvaCIpVbXd+dKAbazdXBK4FL+YJANaxdIErNY0vcM
	Cgz+fsgJMmlWqMvcjll6DxKyY4ifLDnGu/ME7dR8l2viWImvqldDoyfSmbYZ1/7e7Orpvuq28oE+q
	E71IcR9HqUymGXOL00Xg7+XByGXNC40aqvNzzikqBrNPCeoF2EPIdPZ7BEDHORpR3Nit3LiAcWkIz
	Qv+iwO+rck8Z4s0m3Bz07bI5tKbTYEYCqx2bxM80Hwc/kmN1LFpOn62Cvbbrmg5gMI0sBy1Eu4fYJ
	7rWXFY6sweKAl3k2x5hQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vE9vs-00000002CDC-0UPB;
	Wed, 29 Oct 2025 17:26:00 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vE9vp-00000002CCm-47Fn
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Oct 2025 17:25:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 6FD7C437D1;
	Wed, 29 Oct 2025 17:25:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1D4A8C4CEF7;
	Wed, 29 Oct 2025 17:25:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761758756;
	bh=UNCv/SLEKVdIM0/F5Qh+o3LkOisYzz/k4Ngw7LOuDtI=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=PWuHWZJ+oT416PmcdJeCl9fvjHCkJFvtKNX1frItmY4dqgCUDhAjz0oSZ9qODt2ef
	 Io0O15PkPD/uyhqnbe/y9MiXW+KucYH9xYGU25wyKLDab0A3ELRwYUAHplXUIumVdO
	 rg60yYQWUd/mefNR48m2K6ssxnsTARoDO0CREaMYhAARUKqxOwe1UMO0QEws9iAxai
	 4VXTheLLFK1WBzjkyTWZiYk4EVK/ZqrBXYe63qdVM/xS0geger8Twg0mQvBB1ZwZKS
	 dFAY9v4BQ9fbHFwx9W76Wrc0ho0S+1pglHvzoKxq8/sE+EVHKfhHGHBcgXvgxLqnGX
	 STD/Opd53ruzQ==
Date: Wed, 29 Oct 2025 12:25:54 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Christian Zigotzky <chzigotzky@xenosoft.de>
Cc: Johan Hovold <johan@kernel.org>, linux-pci@vger.kernel.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
	Naoki FUKAUMI <naoki@radxa.com>,
	Herve Codina <herve.codina@bootlin.com>,
	Diederik de Haas <diederik@cknow-tech.com>,
	Dragan Simic <dsimic@manjaro.org>, linuxppc-dev@lists.ozlabs.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Bjorn Helgaas <bhelgaas@google.com>,
	Shawn Lin <shawn.lin@rock-chips.com>, Frank Li <Frank.li@nxp.com>,
	"R.T.Dickinson" <rtd2@xtra.co.nz>,
	mad skateman <madskateman@gmail.com>, hypexed@yahoo.com.au,
	Christian Zigotzky <info@xenosoft.de>
Subject: Re: [PATCH] PCI/ASPM: Enable only L0s and L1 for devicetree platforms
Message-ID: <20251029172554.GA1571455@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <D6280EFB-08D7-41EC-BAC6-FD7793A98A16@xenosoft.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251029_102558_057717_9A682C15 
X-CRM114-Status: GOOD (  25.36  )
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

T24gV2VkLCBPY3QgMjksIDIwMjUgYXQgMDY6NDc6MTlBTSArMDEwMCwgQ2hyaXN0aWFuIFppZ290
emt5IHdyb3RlOgo+ID4gT24gMjkgT2N0b2JlciAyMDI1IGF0IDAwOjMzIGFtLCBCam9ybiBIZWxn
YWFzIDxoZWxnYWFzQGtlcm5lbC5vcmc+IHdyb3RlOgo+ID4g77u/T24gTW9uLCBPY3QgMjcsIDIw
MjUgYXQgMDY6MTI6MjRQTSArMDEwMCwgQ2hyaXN0aWFuIFppZ290emt5IHdyb3RlOgo+ID4+IEhp
IEFsbCwKPiA+PiAKPiA+PiBJIGFjdGl2YXRlZCBDT05GSUdfUENJRUFTUE0gYW5kIENPTkZJR19Q
Q0lFQVNQTV9ERUZBVUxUIGFnYWluIGZvciB0aGUgUkMzIG9mCj4gPj4ga2VybmVsIDYuMTguIFVu
Zm9ydHVuYXRlbHkgbXkgQU1EIFJhZGVvbiBIRDY4NzAgZG9lc24ndCB3b3JrIHdpdGggdGhlIGxh
dGVzdAo+ID4+IHBhdGNoZXMuCj4gPj4gCj4gPj4gQnV0IHRoYXQgZG9lc24ndCBtYXR0ZXIgYmVj
YXVzZSB3ZSBkaXNhYmxlIHRoZSBhYm92ZSBrZXJuZWwgb3B0aW9ucyBieQo+ID4+IGRlZmF1bHQu
IFdlIGRvbid0IG5lZWQgcG93ZXIgbWFuYWdlbWVudCBmb3IgUENJIEV4cHJlc3MgYmVjYXVzZSBv
ZiBib290Cj4gPj4gaXNzdWVzIGFuZCBwZXJmb3JtYW5jZSBpc3N1ZXMuCj4gPiAKPiA+IElmIHlv
dSBoYXZlIGEgY2hhbmNlLCBjb3VsZCB5b3UgdHJ5IHRoZSBwYXRjaCBiZWxvdyBvbiB0b3Agb2YK
PiA+IHY2LjE4LXJjMyB3aXRoIENPTkZJR19QQ0lFQVNQTT15Pwo+ID4gCj4gPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9wY2kvcXVpcmtzLmMgYi9kcml2ZXJzL3BjaS9xdWlya3MuYwo+ID4gaW5kZXgg
MjE0ZWQwNjBjYTFiLi4yYjZkNGUwOTU4YWEgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL3BjaS9x
dWlya3MuYwo+ID4gKysrIGIvZHJpdmVycy9wY2kvcXVpcmtzLmMKPiA+IEBAIC0yNTI0LDYgKzI1
MjQsNyBAQCBzdGF0aWMgdm9pZCBxdWlya19kaXNhYmxlX2FzcG1fbDBzX2wxKHN0cnVjdCBwY2lf
ZGV2ICpkZXYpCj4gPiAgKiBkaXNhYmxlIGJvdGggTDBzIGFuZCBMMSBmb3Igbm93IHRvIGJlIHNh
ZmUuCj4gPiAgKi8KPiA+IERFQ0xBUkVfUENJX0ZJWFVQX0ZJTkFMKFBDSV9WRU5ET1JfSURfQVNN
RURJQSwgMHgxMDgwLCBxdWlya19kaXNhYmxlX2FzcG1fbDBzX2wxKTsKPiA+ICtERUNMQVJFX1BD
SV9GSVhVUF9GSU5BTChQQ0lfVkVORE9SX0lEX0ZSRUVTQ0FMRSwgMHgwNDUxLCBxdWlya19kaXNh
YmxlX2FzcG1fbDBzX2wxKTsKPiA+IAo+ID4gLyoKPiA+ICAqIFNvbWUgUGVyaWNvbSBQQ0llLXRv
LVBDSSBicmlkZ2VzIGluIHJldmVyc2UgbW9kZSBuZWVkIHRoZSBQQ0llIFJldHJhaW4KPiAKPiBU
aGFua3MgZm9yIHRoZSBwYXRjaC4gCj4gCj4gSSB3aWxsIHRlc3QgaXQgb24gbXkgRlNMIEN5cnVz
KyBib2FyZCBvdmVyIHRoZSB3ZWVrZW5kLgo+IEJUVywgSSBhbHNvIHRlc3RlZCBteSBQQVNlbWkg
TmVtbyBib2FyZCB3aXRoIHRoZSBSQzMgb2Yga2VybmVsIDYuMTgKPiBhbmQgd2l0aCBwb3dlciBt
YW5hZ2VtZW50IGZvciBQQ0kgRXhwcmVzcyBlbmFibGVkLiBVbmZvcnR1bmF0ZWx5LAo+IHRoZSBp
bnN0YWxsZWQgQU1EIFJhZGVvbiBIRDU4NzAgZG9lcyBub3Qgd29yayB3aXRoIHBvd2VyIG1hbmFn
ZW1lbnQKPiBmb3IgUENJIEV4cHJlc3MgZW5hYmxlZCBlaXRoZXIuCgpPb3BzLCBJIG1hZGUgdGhh
dCBmaXh1cCBydW4gdG9vIGxhdGUuICBJbnN0ZWFkIG9mIHRoZSBwYXRjaCBhYm92ZSwgY2FuCnlv
dSB0ZXN0IHRoZSBvbmUgYmVsb3c/CgpZb3UnbGwgbGlrZWx5IHNlZSBzb21ldGhpbmcgbGlrZSB0
aGlzLCB3aGljaCBpcyBhIGxpdHRsZSBtaXNsZWFkaW5nCmJlY2F1c2UgZXZlbiB0aG91Z2ggd2Ug
Y2xhaW0gImRlZmF1bHQgTDEiIGZvciAwMTowMC4wIChvciB3aGF0ZXZlcgp5b3VyIFJhZGVvbiBp
cyksIHRoZSBmYWN0IHRoYXQgTDBzIGFuZCBMMSBhcmUgZGlzYWJsZWQgYXQgdGhlIG90aGVyCmVu
ZCBvZiB0aGUgbGluayAoMDA6MDAuMCkgc2hvdWxkIHByZXZlbnQgdXMgZnJvbSBhY3R1YWxseSBl
bmFibGluZyBpdDoKCiAgcGNpIDAwMDA6MDA6MDAuMDogRGlzYWJsaW5nIEFTUE0gTDBzL0wxCiAg
cGNpIDAwMDA6MDE6MDAuMDogQVNQTTogZGVmYXVsdCBzdGF0ZXMgTDEKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL3BjaS9xdWlya3MuYyBiL2RyaXZlcnMvcGNpL3F1aXJrcy5jCmluZGV4IDIxNGVkMDYw
Y2ExYi4uMjc3NzdkZWQ5YTJjIDEwMDY0NAotLS0gYS9kcml2ZXJzL3BjaS9xdWlya3MuYworKysg
Yi9kcml2ZXJzL3BjaS9xdWlya3MuYwpAQCAtMjUyNCw2ICsyNTI0LDcgQEAgc3RhdGljIHZvaWQg
cXVpcmtfZGlzYWJsZV9hc3BtX2wwc19sMShzdHJ1Y3QgcGNpX2RldiAqZGV2KQogICogZGlzYWJs
ZSBib3RoIEwwcyBhbmQgTDEgZm9yIG5vdyB0byBiZSBzYWZlLgogICovCiBERUNMQVJFX1BDSV9G
SVhVUF9GSU5BTChQQ0lfVkVORE9SX0lEX0FTTUVESUEsIDB4MTA4MCwgcXVpcmtfZGlzYWJsZV9h
c3BtX2wwc19sMSk7CitERUNMQVJFX1BDSV9GSVhVUF9IRUFERVIoUENJX1ZFTkRPUl9JRF9GUkVF
U0NBTEUsIDB4MDQ1MSwgcXVpcmtfZGlzYWJsZV9hc3BtX2wwc19sMSk7CiAKIC8qCiAgKiBTb21l
IFBlcmljb20gUENJZS10by1QQ0kgYnJpZGdlcyBpbiByZXZlcnNlIG1vZGUgbmVlZCB0aGUgUENJ
ZSBSZXRyYWluCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==

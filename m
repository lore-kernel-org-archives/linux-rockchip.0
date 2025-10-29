Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57492CCF9F7
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Oct 2025 15:59:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=DvH/hxZVeeSsz1vC35UR6joM/HkbYDUGHaVp9clD+mo=; b=luno54eA5FdH7R
	dQZAlM3VpFc7P61LCgdrCojq5tIZK46cE4ys+C7LyZ+TsUTG+VQPm3K75nOyrwvR/jMr3gt4qJdj2
	0QYfKS+94rR6yL10VfzSiHwuErjR1Ku1Kj+zYwIZ10EOG1XS2dAD5l6zL8EXdH/3zC26bU7MRaB6z
	kRmaio/2YM6wSOdB09HvCuD0fm3S7k2gzLK710mk/AjFiJR+AUO+lFtCBKT8msABtfArVzDIoovFh
	APnjd7Weztj7t02plT9GT8T5bxajXWbPW6g3P0myjPHqsGbD8ghXGA4piUgaHbRb0Aq10kCV9Mu+l
	Xdl2iJjEtaiRkwTihTEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vE8Zy-00000001tmN-2itN;
	Wed, 29 Oct 2025 15:59:18 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vE8Zw-00000001tlu-3PHq
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Oct 2025 15:59:16 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id C7873621B7;
	Wed, 29 Oct 2025 15:59:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6D4DBC4CEF8;
	Wed, 29 Oct 2025 15:59:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761753555;
	bh=BgmmyeX0qvCVjapAnPnDG8LNCQFeWgDwHiQBafyqKGg=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=goUpW2lplrswAiJGRTPiqFN91fyucf0gHLsVwamQ0ELnE4mqXBXzIlJgT29sWRzlq
	 efPIs8A8+Il3KnlWxUGe/vbTM0ftb1HLNXXXPKhqAethTLOVjsXcdSz7RfSDajG7Pg
	 rK9aBW9LY6DfI6ikoEZAcJL3vZjoB+tFfzX6rMAyc1v7MbsgHoQ6FyFujhfcL3mZ0q
	 upG+SaliKlySMKLjUsCIzlaJP5JtBSvXyzAp7WVUfI6a0Ubl+uOQE0itPBlbrOBsux
	 rfuIcHHpttl3oMcYKplNe9VLuY9ImAaS4V31kSwURTUYwPMqcjv8BOhvD5xjHbe6c1
	 Rrvya6CLl+uNg==
Date: Wed, 29 Oct 2025 10:59:13 -0500
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
Message-ID: <20251029155913.GA1563823@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <D6280EFB-08D7-41EC-BAC6-FD7793A98A16@xenosoft.de>
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
ZiBib290Cj4gPj4gaXNzdWVzIGFuZCBwZXJmb3JtYW5jZSBpc3N1ZXMuCj4gIAo+ID4gSWYgeW91
IGhhdmUgYSBjaGFuY2UsIGNvdWxkIHlvdSB0cnkgdGhlIHBhdGNoIGJlbG93IG9uIHRvcCBvZgo+
ID4gdjYuMTgtcmMzIHdpdGggQ09ORklHX1BDSUVBU1BNPXk/Cj4gPiAKPiA+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL3BjaS9xdWlya3MuYyBiL2RyaXZlcnMvcGNpL3F1aXJrcy5jCj4gPiBpbmRleCAy
MTRlZDA2MGNhMWIuLjJiNmQ0ZTA5NThhYSAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvcGNpL3F1
aXJrcy5jCj4gPiArKysgYi9kcml2ZXJzL3BjaS9xdWlya3MuYwo+ID4gQEAgLTI1MjQsNiArMjUy
NCw3IEBAIHN0YXRpYyB2b2lkIHF1aXJrX2Rpc2FibGVfYXNwbV9sMHNfbDEoc3RydWN0IHBjaV9k
ZXYgKmRldikKPiA+ICAqIGRpc2FibGUgYm90aCBMMHMgYW5kIEwxIGZvciBub3cgdG8gYmUgc2Fm
ZS4KPiA+ICAqLwo+ID4gREVDTEFSRV9QQ0lfRklYVVBfRklOQUwoUENJX1ZFTkRPUl9JRF9BU01F
RElBLCAweDEwODAsIHF1aXJrX2Rpc2FibGVfYXNwbV9sMHNfbDEpOwo+ID4gK0RFQ0xBUkVfUENJ
X0ZJWFVQX0ZJTkFMKFBDSV9WRU5ET1JfSURfRlJFRVNDQUxFLCAweDA0NTEsIHF1aXJrX2Rpc2Fi
bGVfYXNwbV9sMHNfbDEpOwo+ID4gCj4gPiAvKgo+ID4gICogU29tZSBQZXJpY29tIFBDSWUtdG8t
UENJIGJyaWRnZXMgaW4gcmV2ZXJzZSBtb2RlIG5lZWQgdGhlIFBDSWUgUmV0cmFpbgo+IAo+IFRo
YW5rcyBmb3IgdGhlIHBhdGNoLiAKPiAKPiBJIHdpbGwgdGVzdCBpdCBvbiBteSBGU0wgQ3lydXMr
IGJvYXJkIG92ZXIgdGhlIHdlZWtlbmQuCj4gQlRXLCBJIGFsc28gdGVzdGVkIG15IFBBU2VtaSBO
ZW1vIGJvYXJkIHdpdGggdGhlIFJDMyBvZiBrZXJuZWwgNi4xOAo+IGFuZCB3aXRoIHBvd2VyIG1h
bmFnZW1lbnQgZm9yIFBDSSBFeHByZXNzIGVuYWJsZWQuIFVuZm9ydHVuYXRlbHksCj4gdGhlIGlu
c3RhbGxlZCBBTUQgUmFkZW9uIEhENTg3MCBkb2VzIG5vdCB3b3JrIHdpdGggcG93ZXIgbWFuYWdl
bWVudAo+IGZvciBQQ0kgRXhwcmVzcyBlbmFibGVkIGVpdGhlci4KCkNhbiB5b3Ugc2hhcmUgdGhl
IG91dHB1dCBvZiAic3VkbyBsc3BjaSAtdnYiIGFuZCB0aGUgZG1lc2cgbG9nIGZvcgp0aGlzIE5l
bW8gYm9hcmQgdGhhdCBkb2Vzbid0IHdvcmsgd2l0aCB2Ni4xOC1yYzM/ICBJIHdvdWxkIHN0aWxs
IGd1ZXNzCnRoYXQgTmVtbyByb290IHBvcnQgaGFzIGFuIGlzc3VlIHJhdGhlciB0aGFuIHRoZSBI
RDU4NzAuCgpIeXBleGVkIHJlcG9ydGVkIHRoYXQgInBhc2VtaSxuZW1vIFBBNlQgMHg5MDAxMDIg
QS1FT04gQW1pZ2FvbmUgWDEwMDAiCndvcmtlZCBmaW5lIG9uIDA3Mzk0NzM2OTRjNCwgd2hpY2gg
d2FzIGp1c3QgYmVmb3JlIHY2LjE4LXJjMS4gIFRoYXQKc3lzdGVtIGhhczoKCiAgcGNpIDAwMDA6
MDA6MTAuMDogWzE5NTk6YTAwMl0gdHlwZSAwMSBjbGFzcyAweDA2MDQwMCBQQ0llIFJvb3QgUG9y
dAogIHBjaSAwMDAwOjAwOjEwLjA6IFBDSSBicmlkZ2UgdG8gW2J1cyAwMV0KICBwY2kgMDAwMDow
MTowMC4wOiBbMTAwMjo2NjEwXSB0eXBlIDAwIGNsYXNzIDB4MDMwMDAwIFBDSWUgTGVnYWN5IEVu
ZHBvaW50CiAgcGNpIDAwMDA6MDE6MDAuMDogQVNQTTogRFQgcGxhdGZvcm0sIGVuYWJsaW5nIEww
cy11cCBMMHMtZHcgTDEgQVNQTS1MMS4xIEFTUE0tTDEuMiBQQ0ktUE0tTDEuMSBQQ0ktUE0tTDEu
MgoKd2hpY2ggaXMgYSBbMTk1OTphMDAyXSBQQSBTZW1pIFBXUmZpY2llbnQgUENJLUV4cHJlc3Mg
Um9vdCBQb3J0CmxlYWRpbmcgdG8gWzEwMDI6NjYxMF0gQU1EIE9sYW5kIFhUIFtSYWRlb24gSEQg
ODY3MCAvIFI1IDM0MFggT0VNIC8gUjcKMjUwLzM1MC8zNTBYIE9FTV0sIGFuZCB3ZSB0cmllZCB0
byBlbmFibGUgYWxsIEFTUE0gc3RhdGVzLgoKQmpvcm4KCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

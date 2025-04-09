Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2EADCC369A1
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Apr 2025 09:19:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DXJ9VqM2BUElMPYkPx0810VKIaCjftI4P9aWb3ygu48=; b=now76svADBpnhS
	My8xI1T4rbBTp5Cxi34DG1c8diurLlZPULSZTDmdldgVIhsIOGem4x3u4XyN3PcgRXQLzbSX+LtU5
	NODkAvPzP2i2rJSqw3B/rtgIo7ATEvFFTBcM7d9wTaBrqMPW/mx6U4kFdrJstzsWztjUhjh393NVM
	APyT7lw+Ay+87i71jwaIqrRu/MaInz94b/uHUULN2cGkTRoqfzI2u0iCXOs9su0Rryy8S/s31fGKX
	LNXqDW1wYi8rZLaR/nk5+SVpMr+cAIGg4PpSj4Ss9zt6EdssfYdLO3BL180v368fCrIrrvzRPXPiO
	jxlLeioqaIq8SMsmi0Zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2RaQ-00000006gZO-20yi;
	Wed, 09 Apr 2025 09:19:10 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2RaO-00000006gYQ-188b
	for linux-rockchip@lists.infradead.org;
	Wed, 09 Apr 2025 09:19:09 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 03843A48AB2;
	Wed,  9 Apr 2025 09:13:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CED9EC4CEE3;
	Wed,  9 Apr 2025 09:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744190347;
	bh=xIdfVkfEMheXajfoX8bSuDYovCWOHxRP/hPk7KxSxc8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Tk6RplNsnJU8ekqnpays0RwVhnuYxpWFheA7OGqyvI8/7UTKiz0bNKrOxizqt8Pyo
	 MfzcoxgYgD0WTZPwRvkBN2zF3fOlGTMDM6uEpsn4yKY55GurxGC57MwsChiiQXOiRb
	 V6lx+2OxYizluQTFvbQm5uU8BziuGeSHiCPBnLhnuesn7TjYA4tjyBQeEenxMo9NcH
	 KLredw9GIVLR9EbJReyvWyJrk5Nh6m5dOBKvRXNbX8eJT7OFd0de1WUGT8uzdRGumx
	 PV7NAl32N/Cb2WrrXyppNrSzgQl5ax0qOljGrOWuUvegij9DqwABNw1hzOBbszkOjp
	 b9GR2GwewtS+Q==
Date: Wed, 9 Apr 2025 11:19:03 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] PCI: dw-rockchip: Remove PCIE_L0S_ENTRY check from
 rockchip_pcie_link_up()
Message-ID: <Z_Y7h1vzVCCEiXK6@ryzen>
References: <1744180833-68472-1-git-send-email-shawn.lin@rock-chips.com>
 <Z_YwNt6WUuijKTjt@ryzen>
 <38e69551-cc40-11a9-191f-de9a193c5e51@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <38e69551-cc40-11a9-191f-de9a193c5e51@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250409_021908_431879_BFD598B3 
X-CRM114-Status: GOOD (  22.37  )
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

SGVsbG8gU2hhd24sCgpPbiBXZWQsIEFwciAwOSwgMjAyNSBhdCAwNTowOTozOFBNICswODAwLCBT
aGF3biBMaW4gd3JvdGU6Cj4g5ZyoIDIwMjUvMDQvMDkg5pif5pyf5LiJIDE2OjMwLCBOaWtsYXMg
Q2Fzc2VsIOWGmemBkzoKPiA+IE9uIFdlZCwgQXByIDA5LCAyMDI1IGF0IDAyOjQwOjMzUE0gKzA4
MDAsIFNoYXduIExpbiB3cm90ZToKPiA+IAo+ID4gSXMgdGhlcmUgYW55IGFkdmFudGFnZSBvZiB1
c2luZyBhIHJvY2tjaGlwIHNwZWNpZmljIHdheSB0byByZWFkIGxpbmsgdXAsCj4gPiByYXRoZXIg
dGhhbiBqdXN0IHJlYWRpbmcgbGluayB1cCB2aWEgdGhlIERXQyBQQ0lFX1BPUlRfREVCVUcxIHJl
Z2lzdGVyPwo+IAo+IFRoaXMgaXMgYSB2ZXJ5IGdvb2QgcXVlc3Rpb24gd2hpY2ggd2UgdHJpZWQg
YnV0IG1hZGUgcmVhbCBwcm9kdWN0cwo+IHN1ZmZlciBmcm9tIGl0IGZvciBhIGxvbmcgdGltZSwg
YW5kIGZpbmFsbHkgd2UgZm91bmQgdGhlIHJlYXNvbiBhbmQKPiBkaXNjYXJkZWQgaXQuCj4gCj4g
UXVvdGVkIGZyb20gRFdDIGRhdGFib29rLCBzZWN0aW9uIDguMi4zIEFYSSBCcmlkZ2UgSW5pdGlh
bGl6YXRpb24sCj4gQ2xvY2tpbmcgYW5kIFJlc2V0Ogo+IAo+ICJJbiBSQyBNb2RlLCB5b3VyIEFY
SSBhcHBsaWNhdGlvbiBtdXN0IG5vdCBnZW5lcmF0ZSBhbnkgTUVNIG9yIEkvTwo+IHJlcXVlc3Rz
LCB1bnRpbCB0aGUgaG9zdCBzb2Z0d2FyZSBoYXMgZW5hYmxlZCB0aGUgTWVtb3J5IFNwYWNlIEVu
YWJsZQo+IChNU0UpLCBhbmQgSU8gU3BhY2UgRW5hYmxlIChJU0UpIGJpdHMgcmVzcGVjdGl2ZWx5
LiBZb3VyIFJDIGFwcGxpY2F0aW9uCj4gc2hvdWxkIG5vdCBnZW5lcmF0ZSBDRkcgcmVxdWVzdHMg
dW50aWwgaXQgaGFzIGNvbmZpcm1lZCB0aGF0IHRoZSBsaW5rIGlzCj4gdXAgYnkgc2FtcGxpbmcg
dGhlIHNtbGhfbGlua191cCBhbmQgcmRsaF9saW5rX3VwIG91dHB1dHMuIgo+IAo+IFF1b3RlZCBm
cm9tIERXQyBkYXRhYm9vaywgc2VjdGlvbiA1LjUwIFNJSTogRGVidWcgU2lnbmFscwo+ICJbMzZd
OiBzbWxoX2xpbmtfdXA6IExUU1NNIHJlcG9ydHMgUEhZIGxpbmsgdXAgb3IgTFRTU00gaXMgaW4K
PiBMb29wYmFjay5BY3RpdmUgZm9yIExvb3BiYWNrIE1hc3RlciIgd2hpY2ggcmVmZXJzIHRvCj4g
UENJRV9QT1JUX0RFQlVHMV9MSU5LX1VQIHBlciBjb2RlLgo+IAo+IFRoZSB0aW1pbmcgaW4gZHdj
IGNvcmUgaXMgZHJ2aW5nIHNtbGhfbGlua191cC0+TDAtPnJkbGhfbGlua191cC0+RkMKPiBpbml0
KGEgZml4ZWQgZGVsYXkpIGZyb20gSUMgc2ltdWxhdGlvbiB3aGVuIGxpbmtpbmcgdXAuCj4gCj4g
VGhlIGR3X3BjaWVfbGlua191cCgpIHdhc24ndCByZWxpYWJseSB3b3JrIGFzIGV4cGVjdGVkIGJ5
IG1hc3NpdmUgdGVzdC4KPiBUaGUgcHJvYmxlbSBpcyBjbGVhciBmcm9tIG91ciBBU0lDIHZpZXcs
IHRoYXQgY3hwbF9kZWJ1Z19pbmZvIGZyb20gRFdDCj4gY29yZSBpcyBtaXNzaW5nIHJkbGhfbGlu
a191cC4gY3hwbF9kZWJ1Z19pbmZvWzMyOjYzXSBpcyBpbmRlbnRpY2FsIHRvCj4gUENJRV9QT1JU
X0RFQlVHMSwgU28gcmVhZGluZyBQQ0lFX1BPUlRfREVCVUcxIGFuZCBjaGVjawo+IHNtbGhfbGlu
a191cCBpc24ndCBlbm91Z2guCj4gCj4gVGhlIHByb2JsZW0gd2FzIGludHJvZHVjZWQgYnkgY29t
bWl0IDEgYW5kIGZpeGVkIGJ5IGNvbW1pdCAyIGJ1dCBub3QgdG8KPiB0aGUgZW5kLiBBbmQgZmlu
YWxseSBjb21taXQgMyByZW5hbWUgdGhlIHJlZ2lzdGVyIGJ1dCBub3QgZml4IGFueXRoaW5nLgo+
IAo+IEl0IHdhcyBicm9rZW4gZnJvbSB0aGUgZmlyc3QgdGltZS4gQW55IGR3YyBjb250cm9sbGVy
cyBzaG91bGQgbm90IGJlIHVzZQo+IHRoZSBidWdneSBkZWZhdWx0IG1ldGhvZCB0byBjaGVjayBs
aW5rIHVwIHN0YXRlIGZyb20gb3VyIHZpZXcuCj4gU28gdGhpcydzIHRoZSB3aG9sZSBzdG9yeSBm
b3IgaXQsIHdoaWNoIG1heSBoZWxwIHlvdSB1bmRlcnN0YW5kIHRoZQo+IGluZGVlZCBwcm9ibGVt
IGFuZCB3aHkgd2UgcmVpbnZlbnQgcm9ja2NoaXBfcGNpZV9saW5rX3VwKCkgaGVyZS4KPiAKPiBb
MV0uIGNvbW1pdCBkYWMyOWU2YzU0NjAgKCJQQ0k6IGRlc2lnbndhcmU6IEFkZCBkZWZhdWx0IGxp
bmsgdXAgY2hlY2sgaWYKPiAgICAgc3ViLWRyaXZlciBkb2Vzbid0IG92ZXJyaWRlIikKPiAKPiBb
Ml0uIGNvbW1pdCAwMWMwNzY3MzJlODIgKCJQQ0k6IGRlc2lnbndhcmU6IENoZWNrIExUU1NNIHRy
YWluaW5nIGJpdAo+ICAgICBiZWZvcmUgZGVjaWRpbmcgbGluayBpcyB1cCIpCj4gCj4gWzNdLiBj
b21taXQgNjBlZjRiMDcyYmEwICgiUENJOiBkd2M6IGlteDY6IFNoYXJlIFBIWSBkZWJ1ZyByZWdp
c3Rlcgo+ICAgICBkZWZpbml0aW9ucyIpCgpUaGFuayB5b3UgZm9yIHRoZSBkZXRhaWxlZCBhbnN3
ZXIuCgpJdCBzZWVtcyBsaWtlIHdlIHNob3VsZCByZWFsbHkgYWRkIGEgd2FybmluZyBhbmQgYSBj
b21tZW50IGluCmR3X3BjaWVfbGlua191cCgpLCBzbyB0aGF0IG90aGVycyBkb24ndCBnZXQgaGl0
IGJ5IHRoaXMgaGFyZCB0byBkZWJ1ZyBpc3N1ZSEKCihFc3BlY2lhbGx5IHNpbmNlIGR3X3BjaWVf
bGlua191cCgpIHdhcyBhZGRlZCBieSBzb21lb25lIHdpdGggYSBAc3lub3BzeXMuY29tCmVtYWls
KS4KCgpLaW5kIHJlZ2FyZHMsCk5pa2xhcwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

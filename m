Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A4A4C7EE23
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Jun 2023 13:24:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7tZaqLUOQ0c5GFwiq+N2s6m6I8bQ95hc7SgEbVmdvs0=; b=Ba51nOFai4Ua+1
	rtLlw4fI2287/eUJaZ9EzkAPIaP6zugy08qN9Zb3ghwPOpmxhLBmvn7Bnk+yL24Nh5yCSlboz6TPi
	7w7qmivvCEIn4Yo8c/BVL5ASrhsi/cPkZEeXFTRMLnu0HfM4crrU6GN21AeSrIlMrtSjLjCcYp0B4
	6j5KJ8IuZgxM8P5chgSh1lWJYgUbGXjlclY86a+4VReMNUU1cEOn4X2uTTGRCWeUZnbfTIJgmtSY6
	CU+kCuShT3HdZ98uYxnfdnFYHs1pCuz0SjMCGOVM9WyASuiAnz1irtO2Dnj94x5skXwHDnIbGKknP
	3S7sOmNccVG6h9Cbf3rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8L3Z-00115e-19;
	Sun, 11 Jun 2023 13:24:33 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8L3V-001148-07;
	Sun, 11 Jun 2023 13:24:30 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 8D46D610AA;
	Sun, 11 Jun 2023 13:24:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8D4A6C433D2;
	Sun, 11 Jun 2023 13:24:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686489866;
	bh=g9njtkoojqRfUI49HT2MGfWzoAKuf1DOFdEq/kUvHsA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DGC5PWnLkcdaGgKC8g7aXKlp+cTXW37FdG3MVsm8EY5hOfYkx9wU/GrdAySg2Oi3E
	 dOVMl4KJhdYBu2De+eoiciAURQiPsCqJ9ietIqhfXZzIiJ/qHaNTEP+6cbbfGxU3OF
	 S1V2x+n0xz8qtn3BiYOFuIupPFOSQz5yy55SQRQJKpTgLcEvlJGss24Pfra8lHGfqX
	 flOVS0h/DWl7SNIHBe4o1Tckr5hlYu9wiNquAWD9glhB7l1BDGN6MfJfYQi4jaXF/p
	 CbfeGdAXGcgQoXEiIlRZ2gExfM0ZoxVnZVNTIqcbZJpWvcddhXHRqZboEHi89XhF++
	 jIjqIIdIQw+Hg==
Received: by pali.im (Postfix)
	id D08BB7FD; Sun, 11 Jun 2023 15:24:23 +0200 (CEST)
Date: Sun, 11 Jun 2023 15:24:23 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Joyce Ooi <joyce.ooi@intel.com>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Jim Quinlan <jim2101024@gmail.com>,
	Nicolas Saenz Julienne <nsaenz@kernel.org>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tom Joseph <tjoseph@cadence.com>, Shawn Guo <shawn.guo@linaro.org>,
	Rahul Tanwar <rtanwar@maxlinear.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Serge Semin <Sergey.Semin@baikalelectronics.ru>,
	Vidya Sagar <vidyas@nvidia.com>, Jisheng Zhang <jszhang@kernel.org>,
	Miaoqian Lin <linmq006@gmail.com>, Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	Ryder Lee <ryder.lee@mediatek.com>,
	Jianjun Wang <jianjun.wang@mediatek.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Sergio Paracuellos <sergio.paracuellos@gmail.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Toan Le <toan@os.amperecomputing.com>,
	Rob Herring <robh@kernel.org>, linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	linux-rpi-kernel@lists.infradead.org, kernel@pengutronix.de,
	linux-arm-msm@vger.kernel.org, linux-tegra@vger.kernel.org,
	linux-mediatek@lists.infradead.org, linux-omap@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Subject: Re: [PATCH 00/15] PCI: Convert to platform remove callback returning
 void
Message-ID: <20230611132423.milnj2pnvjqzwino@pali>
References: <20230530140742.ebbrxmpieuphbmz3@pengutronix.de>
 <ZHphHkNLO4tEJIm/@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZHphHkNLO4tEJIm/@bhelgaas>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230611_062429_185821_379FFAD9 
X-CRM114-Status: GOOD (  31.36  )
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

T24gRnJpZGF5IDAyIEp1bmUgMjAyMyAxNjozNzozNCBCam9ybiBIZWxnYWFzIHdyb3RlOgo+IE9u
IFR1ZSwgTWF5IDMwLCAyMDIzIGF0IDA0OjA3OjQyUE0gKzAyMDAsIFV3ZSBLbGVpbmUtS8O2bmln
IHdyb3RlOgo+ID4gSGVsbG8gQmpvcm4sCj4gPiAKPiA+IE9uIFR1ZSwgTWFyIDIxLCAyMDIzIGF0
IDA4OjMxOjUzUE0gKzAxMDAsIFV3ZSBLbGVpbmUtS8O2bmlnIHdyb3RlOgo+ID4gPiB0aGlzIHNl
cmllcyBhZGFwdHMgdGhlIHBsYXRmb3JtIGRyaXZlcnMgYmVsb3cgZHJpdmVycy9wY2kgdG8gdXNl
IHRoZQo+ID4gPiAucmVtb3ZlX25ldygpIGNhbGxiYWNrLiBDb21wYXJlZCB0byB0aGUgdHJhZGl0
aW9uYWwgLnJlbW92ZSgpIGNhbGxiYWNrCj4gPiA+IC5yZW1vdmVfbmV3KCkgcmV0dXJucyBubyB2
YWx1ZS4gVGhpcyBpcyBhIGdvb2QgdGhpbmcgYmVjYXVzZSB0aGUgZHJpdmVyIGNvcmUKPiA+ID4g
ZG9lc24ndCAoYW5kIGNhbm5vdCkgY29wZSBmb3IgZXJyb3JzIGR1cmluZyByZW1vdmUuIFRoZSBv
bmx5IGVmZmVjdCBvZiBhCj4gPiA+IG5vbi16ZXJvIHJldHVybiB2YWx1ZSBpbiAucmVtb3ZlKCkg
aXMgdGhhdCB0aGUgZHJpdmVyIGNvcmUgZW1pdHMgYSB3YXJuaW5nLiBUaGUKPiA+ID4gZGV2aWNl
IGlzIHJlbW92ZWQgYW55aG93IGFuZCBhbiBlYXJseSByZXR1cm4gZnJvbSAucmVtb3ZlKCkgdXN1
YWxseSB5aWVsZHMgYQo+ID4gPiByZXNvdXJjZSBsZWFrLgo+ID4gPiAKPiA+ID4gQnkgY2hhbmdp
bmcgdGhlIHJlbW92ZSBjYWxsYmFjayB0byByZXR1cm4gdm9pZCBkcml2ZXIgYXV0aG9ycyBjYW5u
b3QKPiA+ID4gcmVhc29uYWJseSBhc3N1bWUgYW55IG1vcmUgdGhhdCB0aGVyZSBpcyBzb21lIGtp
bmQgb2YgY2xlYW51cCBsYXRlci4KPiA+ID4gCj4gPiA+IEFsbCBkcml2ZXJzIHdlcmUgZWFzeSB0
byBjb252ZXJ0IGFzIHRoZXkgYWxsIHJldHVybmVkIHplcm8gaW4gdGhlaXIKPiA+ID4gcmVtb3Zl
IGNhbGxiYWNrLiBPbmx5IGZvciBpcHJvYyB0aGUgY29udmVyc2lvbiB3YXNuJ3QgdHJpdmlhbCwg
dGhlIG90aGVyCj4gPiA+IHdlcmUgY29udmVydGVkIHVzaW5nIGNvY2NpbmVsbGUuCj4gPiA+IAo+
ID4gPiBUaGVyZSBhcmUgbm8gaW50ZXJkZXBlbmRlbmNpZXMgYmV0d2VlbiB0aGVzZSBwYXRjaGVz
LiBTbyBldmVuIGlmIHRoZXJlCj4gPiA+IGFyZSBzb21lIGNvbmNlcm5zIGZvciBpbmRpdmlkdWFs
IHBhdGNoZXMsIEkgYXNrIHlvdSB0byBhcHBseSB0aGUKPiA+ID4gcmVtYWluaW5nIHNldC4gVGhl
biBJIG9ubHkgaGF2ZSB0byBjYXJlIGZvciB0aGUgcmV2aWV3IGZlZWRiYWNrIG9mIHRoZQo+ID4g
PiByZWZ1c2VkIHBhdGNoZXMuIChIYXZpbmcgc2FpZCB0aGF0IEkgZG9uJ3QgZXhwZWN0IGFueSBz
ZXJpb3VzIG9iamVjdGlvbiwKPiA+ID4ganVzdCB0aGluZ3MgbGlrZSBzcXVhc2hpbmcgb3Igc2Vw
YXJhdGluZyBwYXRjaGVzLCBvciBtYXliZSBJIHBpY2tlZCBhCj4gPiA+IHdyb25nIHN1YmplY3Qg
cHJlZml4LikKPiA+IAo+ID4gVGhlc2UgcGF0Y2hlcyB3YWl0IGZvciBhcHBsaWNhdGlvbiBmb3Ig
cXVpdGUgc29tZSB0aW1lIG5vdy4gVGhleSBhcHBseQo+ID4ganVzdCBmaW5lIHRvIHY2LjQtcmMx
IGFuZCBuZXh0L21hc3Rlci4gV291bGQgYmUgZ3JlYXQgdG8gZ2V0IHRoZW0gaW4KPiA+IGR1cmlu
ZyB0aGUgbmV4dCBtZXJnZSB3aW5kb3cgYW5kIGlkZWFsbHkgZ2l2ZSB0aGVtIHNvbWUgdGltZSBp
biBuZXh0Cj4gPiBiZWZvcmUuCj4gCj4gVGhhbmtzLCB0aGVzZSBzZWVtIGZpbmUgdG8gbWUsIGFu
ZCBMb3JlbnpvIG5vcm1hbGx5IHRha2VzIGNhcmUgb2YKPiBkcml2ZXJzL3BjaS9jb250cm9sbGVy
Ly4gIExvcmVuem8sIGlmIGl0J3MgZWFzaWVyIHRvIGhhdmUgbWUgYXBwbHkKPiB0aGVtLCB0aGF0
J3MgZmluZSwgdG9vLCBqdXN0IGxldCBtZSBrbm93Lgo+IAo+IFRoZSBvbmx5IHR3ZWFrcyBJIHdv
dWxkIG1ha2Ugd291bGQgYmU6Cj4gCj4gICBQQ0k6IGo3MjFlOiBDb252ZXJ0IHRvIHBsYXRmb3Jt
IHJlbW92ZSBjYWxsYmFjayByZXR1cm5pbmcgdm9pZAo+ICAgUENJOiBkd2M6IENvbnZlcnQgdG8g
cGxhdGZvcm0gcmVtb3ZlIGNhbGxiYWNrIHJldHVybmluZyB2b2lkCj4gCj4gdG8gbWF0Y2ggdGhl
IGdpdCBoaXN0b3J5LgoKSGVsbG8gQmpvcm4sIGl0IHNob3VsZCBiZSBleHBlY3RlZCB0aGF0IG90
aGVyIGNoYW5nZXMgZm9yIFBDSWUgZHJpdmVycwpzZW50IGJ5IG90aGVyIHBlb3BsZSB3aGljaCB3
ZXJlIHNlbnQgdG8gdGhlIGxpc3QgYmVmb3JlIHRoaXMgcGF0Y2gKc2VyaWVzIGFuZCBhcmUgc3Rp
bGwgd2FpdGluZyBmb3IgdGhlIHJldmlldyAoYmVjYXVzZSBhcmUgd2l0aG91dApjb21tZW50cyks
IHdvdWxkIGJlIHByb2Nlc3NlZCBiZWZvcmUgYW5kIHBhdGNoZXMgc2VudCBsYXRlci4KCkFsc28g
SSB3b3VsZCBsaWtlIHRvIHBvaW50IG91dCB0aGF0IGluIHBhc3QgSSBoYXZlIHNlbnQgZml4ZXMg
Zm9yIFBDSWUKbXZlYnUgZHJpdmVyLCB3aGljaCBpcyBjdXJyZW50bHkgaW4gdGhlIGJyb2tlbiBz
dGF0ZS4gQW5kIHRoaXMgaXMgYWxzbwpvbiB3YWl0aW5nIG9uIHRoZSBsaXN0LgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83C44CCD184
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Oct 2025 03:37:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WhL/ro+lj80vZDQQApsgmtxREpMBRWRUtk4gAyjfzEA=; b=BZLY+sMJ01EPzh
	XxowQDHGTzuEXECYEeNdzuldf9cXpAhM27DUwgNGQpAG+1/VNbXzKFsH5KhNsXZeQTTY6E+GqVTmt
	+mih9H34K2u13+mkhNFXns0n0FnFKm2Kq/FFkZCBojtUc2mFSVPLpRFGR+tc/9cQ5K8UgHmQIML5D
	6Sm7Qt9Pe6NqoO1ENB0Tpf5HxJmHw9oXaQcjqcESPGPJHKK357JhIieC3+GkfxeYi73oJjNNn7gOw
	7qqjVr9IkesU/JlzLQQaLnXgQ74aloVY9l4rqC4sZz1lCY2hnrjWHxbylHLKUwUKYMvNUNTMa73ov
	Qa6jgKZKOyrXSf5hVLkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9bHB-00000006T1u-1X7F;
	Fri, 17 Oct 2025 03:37:09 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9bH9-00000006T1m-3Vwv
	for linux-rockchip@lists.infradead.org;
	Fri, 17 Oct 2025 03:37:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 9DD3F6048F;
	Fri, 17 Oct 2025 03:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1F092C4CEE7;
	Fri, 17 Oct 2025 03:36:54 +0000 (UTC)
Date: Fri, 17 Oct 2025 09:06:48 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, 
	Niklas Cassel <cassel@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, Rob Herring <robh@kernel.org>, linux-pci@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	"David E. Box" <david.e.box@linux.intel.com>, Kai-Heng Feng <kai.heng.feng@canonical.com>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Heiner Kallweit <hkallweit1@gmail.com>, 
	Chia-Lin Kao <acelan.kao@canonical.com>, Dragan Simic <dsimic@manjaro.org>, 
	linux-rockchip@lists.infradead.org, regressions@lists.linux.dev, FUKAUMI Naoki <naoki@radxa.com>
Subject: Re: [PATCH v2 1/2] PCI/ASPM: Override the ASPM and Clock PM states
 set by BIOS for devicetree platforms
Message-ID: <hwueivbm2taxwb2iowkvblzvdv2xqnsapx6lenv56vuz7ye6do@fugjdkoyk5gy>
References: <7df0bf91-8ab1-4e76-83fa-841a4059c634@rock-chips.com>
 <20251015233054.GA961172@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251015233054.GA961172@bhelgaas>
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

T24gV2VkLCBPY3QgMTUsIDIwMjUgYXQgMDY6MzA6NTRQTSAtMDUwMCwgQmpvcm4gSGVsZ2FhcyB3
cm90ZToKPiBPbiBXZWQsIE9jdCAxNSwgMjAyNSBhdCAwOTowMDo0MVBNICswODAwLCBTaGF3biBM
aW4gd3JvdGU6Cj4gPiAuLi4KPiAKPiA+IEZvciBub3csIHRoaXMgaXMgYSBhY2NlcHRhYmxlIG9w
dGlvbiBpZiBkZWZhdWx0IEFTUE0gcG9saWN5IGVuYWJsZQo+ID4gTDFzcyB3L28gY2hlY2tpbmcg
aWYgdGhlIEhXIGNvdWxkIHN1cHBvcnRzIGl0Li4uIEJ1dCBob3cgYWJvdXQKPiA+IGFkZGluZyBz
dXBwb3J0cy1jbGtyZXEgc3R1ZmYgdG8gdXBzdHJlYW0gaG9zdCBkcml2ZXIgZGlyZWN0bHk/IFRo
YXQKPiA+IHdvdWxkIGhlbHAgZm9sa3MgZW5hYmxlIEwxc3MgaWYgdGhlIEhXIGlzIHJlYWR5IGFu
ZCB0aGV5IGp1c3QgbmVlZAo+ID4gYWRkaW5nIHByb3BlcnR5IHRvIHRoZSBEVC4KPiA+IC4uLgo+
IAo+ID4gVGhlIEwxc3Mgc3VwcG9ydCBpcyBxdWl0ZSBzdHJpY3QgYW5kIG5lZWQgc2V2ZXJhbCBz
dGVwcyB0byBjaGVjaywgc28gd2UKPiA+IGRpZG4ndCBhZGQgc3VwcG9ydHMtY2xrcmVxIGZvciB0
aGVtIHVubGVzcyB0aGUgSFcgaXMgcmVhZHkgdG8gZ28uLi4KPiA+IAo+ID4gRm9yIGFkZGluZyBz
dXBwb3J0cyBvZiBMMXNzLAo+ID4gWzFdIHRoZSBIVyBzaG91bGQgc3VwcG9ydCBDTEtSRVEjLCBl
eHBlY2lhbGx5IGZvciBQQ0llMy4wIGNhc2Ugb24gUm9ja2NoaXAKPiA+IFNvQ3MgLCBzaW5jZSBi
b3RoICBDTEtSRVEjIG9mIFJDIGFuZCBFUCBzaG91bGQgY29ubmVjdCB0byB0aGUKPiA+IDEwME1I
eiBjcnlzdGFsIGdlbmVyYXRvcidzIGVuYWJsZSBwaW4sIGFzIEwxLjIgbmVlZCB0byBkaXNhYmxl
IHJlZmNsayBhcwo+ID4gd2VsbC4gSWYgdGhlIGVuYWJsZSBwaW4gaXMgaGlnaCBhY3RpdmUsIHRo
ZSBIVyBldmVuIG5lZWQgYSBpbnZlcnRvci4uLi4KPiA+IAo+ID4gWzJdIGRlZmluZSBwcm9wZXIg
Y2xrcmVxIGlvbXV4IHRvIHBpbmN0cmwgb2YgcGNpZSBub2RlCj4gPiBbM10gbWFrZSBzdXJlIHRo
ZSBkZXZpY2VzIHdvcmsgZmluZSB3aXRoIEwxc3MuKEl0J3MgaGFyZCB0byBjaGVjayB0aGUgc2xv
dAo+ID4gY2FzZSB3aXRoIHJhbmRvbSBkZXZpY2VzIGluIHRoZSB3aWxkICkKPiA+IFs0XSBhZGQg
c3VwcG9ydHMtY2xrcmVxIHRvIHRoZSBEVCBhbmQgZW5hYmxlCj4gPiBDT05GSUdfUENJRUFTUE1f
UE9XRVJfU1VQRVJTQVZFCj4gCj4gSSBkb24ndCB1bmRlcnN0YW5kIHRoZSBkZXRhaWxzIG9mIHRo
ZSBzdXBwb3J0cy1jbGtyZXEgaXNzdWUuCj4gCj4gSWYgd2UgbmVlZCB0byBhZGQgc3VwcG9ydHMt
Y2xrcmVxIHRvIGRldmljZXRyZWUsIEkgd2FudCB0byB1bmRlcnN0YW5kCj4gd2h5IHdlIG5lZWQg
aXQgdGhlcmUgd2hlbiB3ZSBkb24ndCBzZWVtIHRvIG5lZWQgaXQgZm9yIEFDUEkgc3lzdGVtcy4K
PiAKPiBHZW5lcmFsbHkgdGhlIE9TIHJlbGllcyBvbiB3aGF0IHRoZSBoYXJkd2FyZSBhZHZlcnRp
c2VzLCBlLmcuLCBpbiBMaW5rCj4gQ2FwYWJpbGl0aWVzIGFuZCB0aGUgTDEgUE0gU3Vic3RhdGVz
IENhcGFiaWxpdHksIGFuZCB3aGF0IGlzIGF2YWlsYWJsZQo+IGZyb20gZmlybXdhcmUsIGUuZy4s
IHRoZSBBQ1BJIF9EU00gZm9yIExhdGVuY3kgVG9sZXJhbmNlIFJlcG9ydGluZy4KPiAKPiBPbiB0
aGUgQUNQSSBzaWRlLCBJIGRvbid0IHRoaW5rIHdlIGdldCBhbnkgc3BlY2lmaWMgaW5mb3JtYXRp
b24gYWJvdXQKPiBDTEtSRVEjLiAgQ2FuIHNvbWVib2R5IGV4cGxhaW4gd2h5IHdlIGRvIG5lZWQg
aXQgb24gdGhlIGRldmljZXRyZWUKPiBzaWRlPwo+IAoKSSB0aGluayB0aGVyZSBpcyBhIGRpc2Nv
bm5lY3QgYmV0d2VlbiBlbmFibGluZyBMMXNzIENBUCBhbmQgQ0xLUkVRIwphdmFpbGFiaWxpdHku
LiBXaGVuIEwxc3MgQ0FQIGlzIGVuYWJsZWQgZm9yIHRoZSBSb290IFBvcnQgaW4gdGhlIGhhcmR3
YXJlLCB0aGVyZQppcyBubyBndWFyYW50ZWUgdGhhdCBDTEtSRVEjIGlzIGFsc28gYXZhaWxhYmxl
LiBJZiBDTEtSRVEjIGlzIG5vdCBhdmFpbGFibGUsCnRoZW4gaWYgTDFzcyBpcyBlbmFibGVkIGJ5
IHRoZSBPUywgaXQgaXMgbm90IHBvc3NpYmxlIHRvIGV4aXQgdGhlIEwxc3Mgc3RhdGVzCihhc3N1
bWluZyB0aGF0IEwxc3MgaXMgZW50ZXJlZCBkdWUgdG8gQ0xLUkVRIyBpbiBkZWFzc2VydCAoZGVm
YXVsdCkgc3RhdGUpLgoKWWVzLCB0aGVyZSBzZWVtcyB0byBiZSBubyBzdGFuZGFyZCB3YXkgdG8g
a25vdyBDTEtSRVEjIHByZXNlbmNlIGluIEFDUEksIGJ1dAppbiBkZXZpY2V0cmVlLCB3ZSBoYXZl
IHRoaXMgJ3N1cHBvcnRzLWNsa3JlcScgcHJvcGVydHkgdG8gdGVsbCB0aGUgT1MgdGhhdApDTEtS
RVEjIGlzIGF2YWlsYWJsZSBpbiB0aGUgcGxhdGZvcm0uIEJ1dCB1bmZvcnR1bmF0ZWx5LCB0aGlz
IHByb3BlcnR5IGlzIG5vdAp3aWRlbHkgdXNlZCBieSB0aGUgZGV2aWNldHJlZXMgb3V0IHRoZXJl
LiBTbyB3ZSBjYW5ub3QgdXNlIGl0IGluIGdlbmVyaWMKcGNpL2FzcG0uYyBkcml2ZXIuCgpXZSBj
YW4gY2VydGFpbmx5IHJlbHkgb24gdGhlIEJJT1MgdG8gZW5hYmxlIEwxc3MgYXMgdGhlIGZ3IGRl
dmVsb3BlcnMgd291bGQKaGF2ZSB0aGUga25vd2xlZGdlIG9mIHRoZSBDTEtSRVEjIGF2YWlsYWJp
bGl0eS4gQnV0IEJJT1MgaXMgbm90IGEgdGhpbmcgb24KbW9iaWxlIGFuZCBlbWJlZGRlZCBwbGF0
Zm9ybXMgd2hlcmUgTDFzcyB3b3VsZCBjb21lIGhhbmR5LgoKV2hhdCBJIHdvdWxkIHN1Z2dlc3Qg
aXMsIHRoZSBob3N0IGNvbnRyb2xsZXIgZHJpdmVycyAobW9zdGx5IGZvciBkZXZpY2V0cmVlCnBs
YXRmb3Jtcykgc2hvdWxkIGVuYWJsZSBMMXNzIENBUCBmb3IgdGhlIFJvb3QgUG9ydCBvbmx5IGlm
IHRoZXkga25vdyB0aGF0CkNMS1JFUSMgaXMgYXZhaWxhYmxlLiBUaGV5IGNhbiBlaXRoZXIgcmVs
eSBvbiB0aGUgJ3N1cHBvcnRzLWNsa3JlcScgcHJvcGVydHkgb3IKc29tZSBwbGF0Zm9ybSBzcGVj
aWZpYyBrbm93bGVkZ2UgKGZvciBpbnN0YW5jZSwgb24gYWxsIFFjb20gcGxhdGZvcm1zLCB3ZQpj
ZXJ0YWlubHkga25vdyB0aGF0IENMS1JFUSMgaXMgYXZhaWxhYmxlLCBidXQgd2UgZG9uJ3Qgc2V0
IHRoZSBEVCBwcm9wZXJ0eSkuCgpUaGVuIGluIHRoZSBnZW5lcmljIHBjaS9hc3BtLmMgZHJpdmVy
LCB3ZSBjYW4ganVzdCBlbmFibGUgTDFzcyBmb3IgYWxsIGRldmljZXMKaWYgdGhlIENBUCBpcyBz
ZXQsIHdoaWNoIHdlIGRvIGN1cnJlbnRseS4KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+Cv
jeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

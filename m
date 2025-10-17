Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4AAFCCD19A
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Oct 2025 10:05:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oV7PviT5Yt7OJug2X6485w+c45Za3IfDQuTUFIEzotU=; b=JN/UuARnmNp07i
	ChK2WDg3tJl+bBrbsSAC5+fQrSwcZDyNSw3N1bwwPYm+FJxSc/Y3my82LZSCsMqduH/IutOOF4X5Z
	sZDaFyfAG/76I02SvCEs+ggooB6kPPJTCxLvsmOSE8jO5zQWiIejI752cpdjGDvirpafhu9NmFRxu
	AsRY6quU/kjDuPxmUQ8bkiSpGmEXh8qA8OuW6WHanZiONNqgpfXnGPX4NCOJ0mYJaVUdIEU9rSsGd
	Ult6BVAnvCOY5ayHR+6eOa8lPp4b/Kr8+9r4S69Od51qZwuiMlg6bIGVdVa36LPLkWs5iwky28SYG
	98VJfOjUdT+34dUZu2tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9hKi-00000007PRp-0GAQ;
	Fri, 17 Oct 2025 10:05:12 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9hKe-00000007PPp-3bz1
	for linux-rockchip@lists.infradead.org;
	Fri, 17 Oct 2025 10:05:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 0A49D4370A;
	Fri, 17 Oct 2025 10:05:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A8282C4CEE7;
	Fri, 17 Oct 2025 10:04:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760695507;
	bh=d27FnODMUOTQgewcjbJxNy4ZOjzPLw8pcBAW8xniqKc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Pn/pxqk9AqSC3QFrOOd7LLwBp4ePoZ1T9yh86VDVXBsW5Gq3/wIsU5yXbDIGM7GVq
	 PvQIRqzMmxMVWIIS3ZO+YbNMqsw9rISbkqG46JqUszkWEKOdS4DIDs66v6UqK12K+7
	 KlxyuhRHYpmifcmbMVwfH6iEHPSt84mkXY7LpM0vaYK21qfN3iMTt1ESP3D/iI9Qua
	 WpEZLRAotG6oXakdDm7fvqYsWsIW5khfRfpSsxd+rZEZNeqpfyiK+WRawf0ye65MZw
	 Snf9HP2LbS18RSzM4svYqEw3jqH8qu/Q24iOhCCZOp+YYA7MHF3F7aC/TBnaXiHIs4
	 6xSMhDBRFkATw==
Date: Fri, 17 Oct 2025 15:34:51 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>, 
	Bjorn Helgaas <helgaas@kernel.org>, Niklas Cassel <cassel@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, Rob Herring <robh@kernel.org>, linux-pci@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	"David E. Box" <david.e.box@linux.intel.com>, Kai-Heng Feng <kai.heng.feng@canonical.com>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Heiner Kallweit <hkallweit1@gmail.com>, 
	Chia-Lin Kao <acelan.kao@canonical.com>, Dragan Simic <dsimic@manjaro.org>, 
	linux-rockchip@lists.infradead.org, regressions@lists.linux.dev, FUKAUMI Naoki <naoki@radxa.com>
Subject: Re: [PATCH v2 1/2] PCI/ASPM: Override the ASPM and Clock PM states
 set by BIOS for devicetree platforms
Message-ID: <22owgu6qb34bh47cevupnwnvwwfhtn4lwfav6fuxfydaiujw6y@oeh3q2u4wo2h>
References: <7df0bf91-8ab1-4e76-83fa-841a4059c634@rock-chips.com>
 <20251015233054.GA961172@bhelgaas>
 <hwueivbm2taxwb2iowkvblzvdv2xqnsapx6lenv56vuz7ye6do@fugjdkoyk5gy>
 <0dd51970-a7ac-4500-b96f-d1e328e7a3b2@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0dd51970-a7ac-4500-b96f-d1e328e7a3b2@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251017_030508_937450_7298661C 
X-CRM114-Status: GOOD (  41.48  )
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

T24gRnJpLCBPY3QgMTcsIDIwMjUgYXQgMDU6NDc6NDRQTSArMDgwMCwgU2hhd24gTGluIHdyb3Rl
Ogo+IEhpIE1hbmkgYW5kIEJqb3JuCj4gCj4g5ZyoIDIwMjUvMTAvMTcg5pif5pyf5LqUIDExOjM2
LCBNYW5pdmFubmFuIFNhZGhhc2l2YW0g5YaZ6YGTOgo+ID4gT24gV2VkLCBPY3QgMTUsIDIwMjUg
YXQgMDY6MzA6NTRQTSAtMDUwMCwgQmpvcm4gSGVsZ2FhcyB3cm90ZToKPiA+ID4gT24gV2VkLCBP
Y3QgMTUsIDIwMjUgYXQgMDk6MDA6NDFQTSArMDgwMCwgU2hhd24gTGluIHdyb3RlOgo+ID4gPiA+
IC4uLgo+ID4gPiAKPiA+ID4gPiBGb3Igbm93LCB0aGlzIGlzIGEgYWNjZXB0YWJsZSBvcHRpb24g
aWYgZGVmYXVsdCBBU1BNIHBvbGljeSBlbmFibGUKPiA+ID4gPiBMMXNzIHcvbyBjaGVja2luZyBp
ZiB0aGUgSFcgY291bGQgc3VwcG9ydHMgaXQuLi4gQnV0IGhvdyBhYm91dAo+ID4gPiA+IGFkZGlu
ZyBzdXBwb3J0cy1jbGtyZXEgc3R1ZmYgdG8gdXBzdHJlYW0gaG9zdCBkcml2ZXIgZGlyZWN0bHk/
IFRoYXQKPiA+ID4gPiB3b3VsZCBoZWxwIGZvbGtzIGVuYWJsZSBMMXNzIGlmIHRoZSBIVyBpcyBy
ZWFkeSBhbmQgdGhleSBqdXN0IG5lZWQKPiA+ID4gPiBhZGRpbmcgcHJvcGVydHkgdG8gdGhlIERU
Lgo+ID4gPiA+IC4uLgo+ID4gPiAKPiA+ID4gPiBUaGUgTDFzcyBzdXBwb3J0IGlzIHF1aXRlIHN0
cmljdCBhbmQgbmVlZCBzZXZlcmFsIHN0ZXBzIHRvIGNoZWNrLCBzbyB3ZQo+ID4gPiA+IGRpZG4n
dCBhZGQgc3VwcG9ydHMtY2xrcmVxIGZvciB0aGVtIHVubGVzcyB0aGUgSFcgaXMgcmVhZHkgdG8g
Z28uLi4KPiA+ID4gPiAKPiA+ID4gPiBGb3IgYWRkaW5nIHN1cHBvcnRzIG9mIEwxc3MsCj4gPiA+
ID4gWzFdIHRoZSBIVyBzaG91bGQgc3VwcG9ydCBDTEtSRVEjLCBleHBlY2lhbGx5IGZvciBQQ0ll
My4wIGNhc2Ugb24gUm9ja2NoaXAKPiA+ID4gPiBTb0NzICwgc2luY2UgYm90aCAgQ0xLUkVRIyBv
ZiBSQyBhbmQgRVAgc2hvdWxkIGNvbm5lY3QgdG8gdGhlCj4gPiA+ID4gMTAwTUh6IGNyeXN0YWwg
Z2VuZXJhdG9yJ3MgZW5hYmxlIHBpbiwgYXMgTDEuMiBuZWVkIHRvIGRpc2FibGUgcmVmY2xrIGFz
Cj4gPiA+ID4gd2VsbC4gSWYgdGhlIGVuYWJsZSBwaW4gaXMgaGlnaCBhY3RpdmUsIHRoZSBIVyBl
dmVuIG5lZWQgYSBpbnZlcnRvci4uLi4KPiA+ID4gPiAKPiA+ID4gPiBbMl0gZGVmaW5lIHByb3Bl
ciBjbGtyZXEgaW9tdXggdG8gcGluY3RybCBvZiBwY2llIG5vZGUKPiA+ID4gPiBbM10gbWFrZSBz
dXJlIHRoZSBkZXZpY2VzIHdvcmsgZmluZSB3aXRoIEwxc3MuKEl0J3MgaGFyZCB0byBjaGVjayB0
aGUgc2xvdAo+ID4gPiA+IGNhc2Ugd2l0aCByYW5kb20gZGV2aWNlcyBpbiB0aGUgd2lsZCApCj4g
PiA+ID4gWzRdIGFkZCBzdXBwb3J0cy1jbGtyZXEgdG8gdGhlIERUIGFuZCBlbmFibGUKPiA+ID4g
PiBDT05GSUdfUENJRUFTUE1fUE9XRVJfU1VQRVJTQVZFCj4gPiA+IAo+ID4gPiBJIGRvbid0IHVu
ZGVyc3RhbmQgdGhlIGRldGFpbHMgb2YgdGhlIHN1cHBvcnRzLWNsa3JlcSBpc3N1ZS4KPiA+ID4g
Cj4gPiA+IElmIHdlIG5lZWQgdG8gYWRkIHN1cHBvcnRzLWNsa3JlcSB0byBkZXZpY2V0cmVlLCBJ
IHdhbnQgdG8gdW5kZXJzdGFuZAo+ID4gPiB3aHkgd2UgbmVlZCBpdCB0aGVyZSB3aGVuIHdlIGRv
bid0IHNlZW0gdG8gbmVlZCBpdCBmb3IgQUNQSSBzeXN0ZW1zLgo+ID4gPiAKPiA+ID4gR2VuZXJh
bGx5IHRoZSBPUyByZWxpZXMgb24gd2hhdCB0aGUgaGFyZHdhcmUgYWR2ZXJ0aXNlcywgZS5nLiwg
aW4gTGluawo+ID4gPiBDYXBhYmlsaXRpZXMgYW5kIHRoZSBMMSBQTSBTdWJzdGF0ZXMgQ2FwYWJp
bGl0eSwgYW5kIHdoYXQgaXMgYXZhaWxhYmxlCj4gPiA+IGZyb20gZmlybXdhcmUsIGUuZy4sIHRo
ZSBBQ1BJIF9EU00gZm9yIExhdGVuY3kgVG9sZXJhbmNlIFJlcG9ydGluZy4KPiA+ID4gCj4gPiA+
IE9uIHRoZSBBQ1BJIHNpZGUsIEkgZG9uJ3QgdGhpbmsgd2UgZ2V0IGFueSBzcGVjaWZpYyBpbmZv
cm1hdGlvbiBhYm91dAo+ID4gPiBDTEtSRVEjLiAgQ2FuIHNvbWVib2R5IGV4cGxhaW4gd2h5IHdl
IGRvIG5lZWQgaXQgb24gdGhlIGRldmljZXRyZWUKPiA+ID4gc2lkZT8KPiA+ID4gCj4gPiAKPiA+
IEkgdGhpbmsgdGhlcmUgaXMgYSBkaXNjb25uZWN0IGJldHdlZW4gZW5hYmxpbmcgTDFzcyBDQVAg
YW5kIENMS1JFUSMKPiA+IGF2YWlsYWJpbGl0eS4uIFdoZW4gTDFzcyBDQVAgaXMgZW5hYmxlZCBm
b3IgdGhlIFJvb3QgUG9ydCBpbiB0aGUgaGFyZHdhcmUsIHRoZXJlCj4gPiBpcyBubyBndWFyYW50
ZWUgdGhhdCBDTEtSRVEjIGlzIGFsc28gYXZhaWxhYmxlLiBJZiBDTEtSRVEjIGlzIG5vdCBhdmFp
bGFibGUsCj4gPiB0aGVuIGlmIEwxc3MgaXMgZW5hYmxlZCBieSB0aGUgT1MsIGl0IGlzIG5vdCBw
b3NzaWJsZSB0byBleGl0IHRoZSBMMXNzIHN0YXRlcwo+ID4gKGFzc3VtaW5nIHRoYXQgTDFzcyBp
cyBlbnRlcmVkIGR1ZSB0byBDTEtSRVEjIGluIGRlYXNzZXJ0IChkZWZhdWx0KSBzdGF0ZSkuCj4g
PiAKPiA+IFllcywgdGhlcmUgc2VlbXMgdG8gYmUgbm8gc3RhbmRhcmQgd2F5IHRvIGtub3cgQ0xL
UkVRIyBwcmVzZW5jZSBpbiBBQ1BJLCBidXQKPiA+IGluIGRldmljZXRyZWUsIHdlIGhhdmUgdGhp
cyAnc3VwcG9ydHMtY2xrcmVxJyBwcm9wZXJ0eSB0byB0ZWxsIHRoZSBPUyB0aGF0Cj4gPiBDTEtS
RVEjIGlzIGF2YWlsYWJsZSBpbiB0aGUgcGxhdGZvcm0uIEJ1dCB1bmZvcnR1bmF0ZWx5LCB0aGlz
IHByb3BlcnR5IGlzIG5vdAo+ID4gd2lkZWx5IHVzZWQgYnkgdGhlIGRldmljZXRyZWVzIG91dCB0
aGVyZS4gU28gd2UgY2Fubm90IHVzZSBpdCBpbiBnZW5lcmljCj4gPiBwY2kvYXNwbS5jIGRyaXZl
ci4KPiA+IAo+ID4gV2UgY2FuIGNlcnRhaW5seSByZWx5IG9uIHRoZSBCSU9TIHRvIGVuYWJsZSBM
MXNzIGFzIHRoZSBmdyBkZXZlbG9wZXJzIHdvdWxkCj4gPiBoYXZlIHRoZSBrbm93bGVkZ2Ugb2Yg
dGhlIENMS1JFUSMgYXZhaWxhYmlsaXR5LiBCdXQgQklPUyBpcyBub3QgYSB0aGluZyBvbgo+ID4g
bW9iaWxlIGFuZCBlbWJlZGRlZCBwbGF0Zm9ybXMgd2hlcmUgTDFzcyB3b3VsZCBjb21lIGhhbmR5
Lgo+ID4gCj4gPiBXaGF0IEkgd291bGQgc3VnZ2VzdCBpcywgdGhlIGhvc3QgY29udHJvbGxlciBk
cml2ZXJzIChtb3N0bHkgZm9yIGRldmljZXRyZWUKPiA+IHBsYXRmb3Jtcykgc2hvdWxkIGVuYWJs
ZSBMMXNzIENBUCBmb3IgdGhlIFJvb3QgUG9ydCBvbmx5IGlmIHRoZXkga25vdyB0aGF0Cj4gPiBD
TEtSRVEjIGlzIGF2YWlsYWJsZS4gVGhleSBjYW4gZWl0aGVyIHJlbHkgb24gdGhlICdzdXBwb3J0
cy1jbGtyZXEnIHByb3BlcnR5IG9yCj4gPiBzb21lIHBsYXRmb3JtIHNwZWNpZmljIGtub3dsZWRn
ZSAoZm9yIGluc3RhbmNlLCBvbiBhbGwgUWNvbSBwbGF0Zm9ybXMsIHdlCj4gPiBjZXJ0YWlubHkg
a25vdyB0aGF0IENMS1JFUSMgaXMgYXZhaWxhYmxlLCBidXQgd2UgZG9uJ3Qgc2V0IHRoZSBEVCBw
cm9wZXJ0eSkuCj4gCj4gV2hpbGUgd2UncmUgb24gdGhlIHRvcGljIG9mIEFTUE0sIG1heSBJIGFz
ayBhIHNpbGx5IHF1ZXN0aW9uPwo+IEkgc2F3IHRoZSBBU1BNIHdvdWxkIG9ubHkgYmUgY29uZmln
dXJlZCBvbmNlIHRoZSBmdW5jdGlvbiBkcml2ZXIgY2FsbGluZwo+IHBjaV9lbmFibGVfZGV2aWNl
LiBTbyBpZiB0aGUgbW9kdWxhciBkcml2ZXIgaGFzbid0IGJlZW4gaW5zbW9kZWQsIHRoZQo+IGxp
bmsgd2lsbCBiZSBpbiBMMCBldmVuIHRob3VnaCB0aGVyZSBpcyBubyB0cmFuc2NhdGlvbiBvbi1n
b2luZy4gV2hhdCBpcwo+IHRoZSBpbnRlbnRpb24gYmVoaW5kIGl0Pwo+IAoKSSBkb24ndCBzZWUg
d2hlcmUgQVNQTSBpcyBjb25maWd1cmVkIGR1cmluZyBwY2lfZW5hYmxlX2RldmljZSgpLiBJdCBp
cyBjdXJyZW50bHkKY29uZmlndXJlZCBmb3IgYWxsIGRldmljZXMgZHVyaW5nIHBjaV9zY2FuX3Ns
b3QoKS4KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7g
rprgrr/grrXgrq7gr40KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK

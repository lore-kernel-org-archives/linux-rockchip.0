Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 109B3CCD195
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Oct 2025 10:35:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KKRs/15DIvNElJDqQtq35m8IhOlBLGz/U2IQF+xfiE4=; b=bMw9FBVGo1n9pE
	+zvfI9/NSMTnKzLZNJG/4WLp75Xgt6XwixOEkeyWu2zOCzKV76Ew2zfAkqQeekaJzgtajkN6yDEvy
	XPHdFn0lz0al1UhgSzPil59jjB1XufsgMzyYvX8dNTZhzhUeEbkehWe3PLOWayYDjNJs3U7IBj7eo
	E2BCZgxVyxjW9/jugL7WoSm9mFeQhhG/Ep2KvG3fODhlytWDa/yR0UbhAfi8Xb4E/rq27pY7u8hgW
	szuSa3VXAX+inhydI2s+R3GMuAdf1mO9xmR8kAnxdyDD5KqrPFLbqMwPxho7hggEolgjI7FCehDnE
	zEwDYbfYCKMmcCBNs9mA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBWBD-00000002VrE-3Jaa;
	Wed, 22 Oct 2025 10:34:56 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBWB5-00000002VoV-0YNo
	for linux-rockchip@lists.infradead.org;
	Wed, 22 Oct 2025 10:34:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 40264625EF;
	Wed, 22 Oct 2025 10:34:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D1DA9C4CEE7;
	Wed, 22 Oct 2025 10:34:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761129285;
	bh=iKWiMpS9yTCF4CtP/NLjnVV5K6hlJ5vqcnHI8mOLdOc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WM1bOkdEO88jpwHE8e3Wc2/cgVD6fKDGNIRJFpA4M/1gBOLq97UD5sPDidwl0pUgn
	 W9769V/pe5b2+D16DLfxBQvlgwYW5Kd0NHA8iaaUCG8nyJnWPP6U3UmnIpW5LJq4ID
	 7XbbNZwD9OtvKuD1+M4Fm2UorJ2SGZBd4K+zDjibhOCbu5J5Kw0BMhAOUgIWaQAu80
	 1YSFHe+p5Qu10V2kO5mSJar/9RYJdNWhGkhqTQtNgxRO92rfSoznLikuigXnIArXYr
	 FdZ6PHbiKOUCpjTn7L6Oxry5s+YzeCJbQhhpqO4mI9DSQZaKE73ynVmjtdkUgTk1Oe
	 BdLfryxjvcZ6g==
Date: Wed, 22 Oct 2025 16:04:29 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Hans Zhang <hans.zhang@cixtech.com>, 
	Thierry Reding <thierry.reding@gmail.com>, linux-rockchip@lists.infradead.org, 
	Niklas Cassel <cassel@kernel.org>, linux-pci@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>, 
	Bjorn Helgaas <bhelgaas@google.com>
Subject: Re: [PATCH 3/4] PCI: dw-rockchip: Add L1sub support
Message-ID: <bjfh7hwjswbk2paqlsmwby3g6dpmheyyjni32x3ywgxgdlwre6@6m4uifvjdkos>
References: <1761032907-154829-1-git-send-email-shawn.lin@rock-chips.com>
 <1761032907-154829-4-git-send-email-shawn.lin@rock-chips.com>
 <3f90b0f9-06bb-44d3-97a3-a13ced9b1c3a@cixtech.com>
 <162e1af2-7de3-4aed-93d1-fa7120254e69@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <162e1af2-7de3-4aed-93d1-fa7120254e69@rock-chips.com>
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

T24gVHVlLCBPY3QgMjEsIDIwMjUgYXQgMDQ6NDI6NTJQTSArMDgwMCwgU2hhd24gTGluIHdyb3Rl
Ogo+IAo+IOWcqCAyMDI1LzEwLzIxIOaYn+acn+S6jCAxNjowMSwgSGFucyBaaGFuZyDlhpnpgZM6
Cj4gPiAKPiA+IAo+ID4gT24gMTAvMjEvMjAyNSAzOjQ4IFBNLCBTaGF3biBMaW4gd3JvdGU6Cj4g
PiA+IEVYVEVSTkFMIEVNQUlMCj4gPiA+IAo+ID4gPiBUaGUgZHJpdmVyIHNob3VsZCBzZXQgYXBw
X2Nsa19yZXFfbihjbGtyZXEgcmVhZHkpIG9mCj4gPiA+IFBDSUVfQ0xJRU5UX1BPV0VSIHJlZwo+
ID4gPiB0byBzdXBwb3J0IEwxc3ViLiBPdGhlcndpc2UsIHVuc2V0IGFwcF9jbGtfcmVxX24gYW5k
IHB1bGwgZG93biBDTEtSRVEjLgo+ID4gPiAKPiA+ID4gU2lnbmVkLW9mZi1ieTogU2hhd24gTGlu
IDxzaGF3bi5saW5Acm9jay1jaGlwcy5jb20+Cj4gPiA+IC0tLQo+ID4gPiDCoCBkcml2ZXJzL3Bj
aS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMgfCAzMSArKysrKysrKysrKysrKy0t
LS0tCj4gPiA+IMKgIDEgZmlsZSBjaGFuZ2VkLCAyMyBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9u
cygtKQo+ID4gPiAKPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdj
L3BjaWUtZHctcm9ja2NoaXAuYwo+ID4gPiBiL2RyaXZlcnMvIHBjaS9jb250cm9sbGVyL2R3Yy9w
Y2llLWR3LXJvY2tjaGlwLmMKPiA+ID4gaW5kZXggODdkZDJkZDE4OGI0Li44YTUyZmY3M2VjNDYg
MTAwNjQ0Cj4gPiA+IC0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZHctcm9j
a2NoaXAuYwo+ID4gPiArKysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJv
Y2tjaGlwLmMKPiA+ID4gQEAgLTYyLDYgKzYyLDEyIEBACj4gPiA+IMKgIC8qIEludGVycnVwdCBN
YXNrIFJlZ2lzdGVyIFJlbGF0ZWQgdG8gTWlzY2VsbGFuZW91cyBPcGVyYXRpb24gKi8KPiA+ID4g
wqAgI2RlZmluZSBQQ0lFX0NMSUVOVF9JTlRSX01BU0tfTUlTQ8KgwqDCoMKgIDB4MjQKPiA+ID4g
Cj4gPiA+ICsvKiBQb3dlciBNYW5hZ2VtZW50IENvbnRyb2wgUmVnaXN0ZXIgKi8KPiA+ID4gKyNk
ZWZpbmUgUENJRV9DTElFTlRfUE9XRVLCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAweDJjCj4g
PiA+ICsjZGVmaW5lwqAgUENJRV9DTEtSRVFfUkVBRFnCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
MHgxMDAwMQo+ID4gPiArI2RlZmluZcKgIFBDSUVfQ0xLUkVRX05PVF9SRUFEWcKgwqDCoMKgwqDC
oMKgwqAgMHgxMDAwMAo+ID4gPiArI2RlZmluZcKgIFBDSUVfQ0xLUkVRX1BVTExfRE9XTsKgwqDC
oMKgwqDCoMKgwqAgMHgzMDAwMTAwMAo+ID4gPiArCj4gPiA+IMKgIC8qIEhvdCBSZXNldCBDb250
cm9sIFJlZ2lzdGVyICovCj4gPiA+IMKgICNkZWZpbmUgUENJRV9DTElFTlRfSE9UX1JFU0VUX0NU
UkzCoMKgwqDCoCAweDE4MAo+ID4gPiDCoCAjZGVmaW5lwqAgUENJRV9MVFNTTV9BUFBfRExZMl9F
TsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBCSVQoMSkKPiA+ID4gQEAgLTg0LDYgKzkw
LDcgQEAgc3RydWN0IHJvY2tjaGlwX3BjaWUgewo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgIHN0cnVj
dCBncGlvX2Rlc2MgKnJzdF9ncGlvOwo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBpcnFf
ZG9tYWluICppcnFfZG9tYWluOwo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgIGNvbnN0IHN0cnVjdCBy
b2NrY2hpcF9wY2llX29mX2RhdGEgKmRhdGE7Cj4gPiA+ICvCoMKgwqDCoMKgwqAgYm9vbCBzdXBw
b3J0c19jbGtyZXE7Cj4gPiA+IMKgIH07Cj4gPiA+IAo+ID4gPiDCoCBzdHJ1Y3Qgcm9ja2NoaXBf
cGNpZV9vZl9kYXRhIHsKPiA+ID4gQEAgLTE5OSwxNSArMjA2LDIxIEBAIHN0YXRpYyBib29sIHJv
Y2tjaGlwX3BjaWVfbGlua191cChzdHJ1Y3QKPiA+ID4gZHdfcGNpZSAqcGNpKQo+ID4gPiDCoMKg
wqDCoMKgwqDCoMKgIHJldHVybiBGSUVMRF9HRVQoUENJRV9MSU5LVVBfTUFTSywgdmFsKSA9PSBQ
Q0lFX0xJTktVUDsKPiA+ID4gwqAgfQo+ID4gPiAKPiA+ID4gLS8qCj4gPiA+IC0gKiBTZWUgZS5n
LiBzZWN0aW9uICcxMS42LjYuNCBMMSBTdWJzdGF0ZScgaW4gdGhlIFJLMzU4OCBUUk0gVjEuMAo+
ID4gPiBmb3IgdGhlIHN0ZXBzCj4gPiA+IC0gKiBuZWVkZWQgdG8gc3VwcG9ydCBMMSBzdWJzdGF0
ZXMuIEN1cnJlbnRseSwgbm90IGEgc2luZ2xlIHJvY2tjaGlwCj4gPiA+IHBsYXRmb3JtCj4gPiA+
IC0gKiBwZXJmb3JtcyB0aGVzZSBzdGVwcywgc28gZGlzYWJsZSBMMSBzdWJzdGF0ZXMgdW50aWwg
dGhlcmUgaXMKPiA+ID4gcHJvcGVyIHN1cHBvcnQuCj4gPiA+IC0gKi8KPiA+ID4gLXN0YXRpYyB2
b2lkIHJvY2tjaGlwX3BjaWVfZGlzYWJsZV9sMXN1YihzdHJ1Y3QgZHdfcGNpZSAqcGNpKQo+ID4g
Cj4gPiBIaSwKPiA+IAo+ID4gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tl
cm5lbC9naXQvcGNpL3BjaS5naXQvY29tbWl0Lz8KPiA+IGg9Y29udHJvbGxlci9kdy1yb2NrY2hp
cCZpZD00MDMzMWM2M2U3OTAxYTJjYzc1Y2U2YjVkMjRkNTA2MDFlZmI4MzNkCj4gPiAKPiA+IE1h
bmkgaGFzIGFscmVhZHkgcGxhY2VkIHRoaXMgcGFydCBpbiB0aGUgYWJvdmUgYnJhbmNoLiBDYW4g
aXQgYmUgcmVtb3ZlZD8KPiA+IAo+IAo+IEkgdGhpbmsgaXQncyBiZXR0ZXIgdG8gYXBwbHkgdGhl
IGNoYW5nZXMgb24gdG9wIG9mIE5pa2xhcydzIGNvbW1pdCByYXRoZXIKPiB0aGFuIHJlbW92aW5n
IGl0LCBvdXQgb2YgcmVzcGVjdCBmb3IgTmlrbGFzJ3MgY3JlZGl0Lgo+IAoKVGhlcmUgaXMgbm8g
cG9pbnQgaW4gcmVtb3ZpbmcgYSBmZWF0dXJlIGluIG9uZSBwYXRjaCBhbmQgYWRkaW5nIGl0IGJh
Y2sgaW4KYW5vdGhlciBwYXRjaCBpbiB0aGUgc2FtZSByZWxlYXNlLiBPbmNlIHRoaXMgc2VyaWVz
IG1hdGVyaWFsaXplcywgSSdsbCBkcm9wIHRoZQpwYXRjaCBmcm9tIE5pa2xhcy4KCi0gTWFuaQoK
LS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

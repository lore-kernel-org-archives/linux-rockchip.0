Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 303ACCCD1BB
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Oct 2025 17:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=roB0cixq165s4sFxzZ4hPK9xvhYGuPar9zIy60WAFhA=; b=zqIIe9spOLD88b
	AIJVCZBLriKm28Pt5vB494Juy83PUOSf+eLu2N58aWPYvT7VWdz1X+e7bD7dhvsdI9cIsEw8olflA
	va0NjpFc/FVGWqi6UrGh8Yui2rKCEZ9zVHP7f+5xLFlIYU3m/pNdXEJYD7+hr0b8TK+7aQBYaIU10
	xHqeb0AaBlcyUfdTEObcKrnRrhl0+DTPOcVfBJWqzpr+aboLmUduM8Kj4O3Q0HA5x+4TUUvz83Smr
	Noah5pEDyVrTH26tSlJjdBA6oRWJqbo1cVyjK67lkyfJU3+3tfq33VtJYlYoTpY6Xq1f8pnUi0q5V
	BTGWIMiSZtKQ7YydimKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBckl-00000003oGo-2nOR;
	Wed, 22 Oct 2025 17:36:03 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBckj-00000003oGf-40wy
	for linux-rockchip@lists.infradead.org;
	Wed, 22 Oct 2025 17:36:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 5521F6054A;
	Wed, 22 Oct 2025 17:36:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 02071C4CEE7;
	Wed, 22 Oct 2025 17:35:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761154561;
	bh=yNlx8B2q6AS0HUhxFGOdOrqrs+XeyF/GTSmEnedO8Ws=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YJB36TMRyVLlGuAZbIKc1Q3vha09gPZUGB7D/o9DPVLMnGmsQECJVBrAVoOXERkqf
	 GKXcsJlhRtaX3C7yUCQgu+JwzW5Yj54HPW1i9F1HCzR2Sb0WKo10YU7a1bAgq5USXV
	 qMZXnx5qF9AyKH9N+QPtcJRJBjtBoJLCre9C6XJFRWeOEQeFoGRfi2Ls4+Y03xu5EM
	 a5MtomUDJGvcO+HXD6jVOop/RAReqEAMg/lVZUKkAn52a+fpOKS49kFplqlkXDNflB
	 4DroqhIijsd37DgnhG56tp7hz8519qei/tgx2Q8hlM1n1hLrF5oZPVY/hO4p5bBALA
	 AB60pN7orsh9w==
Date: Wed, 22 Oct 2025 23:05:50 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, 
	Bjorn Helgaas <bhelgaas@google.com>, Thierry Reding <thierry.reding@gmail.com>, 
	linux-rockchip@lists.infradead.org, Niklas Cassel <cassel@kernel.org>, linux-pci@vger.kernel.org
Subject: Re: [PATCH 1/4] PCI: of: Add of_pci_clkreq_present()
Message-ID: <oiqs7vjw3hxbrp3tnlgut5zh3547tgowsixip5cgagyuh3uv4e@n7wielcx6hmc>
References: <a3ky7mynu6p7noyx7d3frxhwsq7izlh6sgkbbnyg5txx3kufke@nvftvg4l5gzk>
 <20251022162229.GA1256220@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251022162229.GA1256220@bhelgaas>
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

T24gV2VkLCBPY3QgMjIsIDIwMjUgYXQgMTE6MjI6MjlBTSAtMDUwMCwgQmpvcm4gSGVsZ2FhcyB3
cm90ZToKPiBPbiBXZWQsIE9jdCAyMiwgMjAyNSBhdCAwMzo1OToxM1BNICswNTMwLCBNYW5pdmFu
bmFuIFNhZGhhc2l2YW0gd3JvdGU6Cj4gPiBPbiBXZWQsIE9jdCAyMiwgMjAyNSBhdCAwNjoxMzo1
OVBNICswODAwLCBTaGF3biBMaW4gd3JvdGU6Cj4gPiA+IOWcqCAyMDI1LzEwLzIyIOaYn+acn+S4
iSAxODowMiwgTWFuaXZhbm5hbiBTYWRoYXNpdmFtIOWGmemBkzoKPiA+ID4gPiBPbiBUdWUsIE9j
dCAyMSwgMjAyNSBhdCAwMzo0ODoyNFBNICswODAwLCBTaGF3biBMaW4gd3JvdGU6Cj4gPiA+ID4g
PiBvZl9wY2lfY2xrcmVxX3ByZXNlbnQoKSBpcyB1c2VkIGJ5IGhvc3QgZHJpdmVycyB0byBkZWNp
ZGUgd2hldGhlciB0aGUgY2xrcmVxIwo+ID4gPiA+ID4gaXMgcHJvcGVybHkgY29ubmVjdGVkIGFu
ZCBjb3VsZCBlbmFibGUgTDEuMS9MMS4yIHN1cHBvcnQuCj4gPiA+ID4gPiAKPiA+ID4gPiA+IFNp
Z25lZC1vZmYtYnk6IFNoYXduIExpbiA8c2hhd24ubGluQHJvY2stY2hpcHMuY29tPgo+ID4gPiA+
ID4gLS0tCj4gPiA+ID4gPiAgIGRyaXZlcnMvcGNpL29mLmMgIHwgMTggKysrKysrKysrKysrKysr
KysrCj4gPiA+ID4gPiAgIGRyaXZlcnMvcGNpL3BjaS5oIHwgIDYgKysrKysrCj4gPiA+ID4gPiAg
IDIgZmlsZXMgY2hhbmdlZCwgMjQgaW5zZXJ0aW9ucygrKQo+ID4gPiA+ID4gCj4gPiA+ID4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvb2YuYyBiL2RyaXZlcnMvcGNpL29mLmMKPiA+ID4gPiA+
IGluZGV4IDM1NzkyNjVmMTE5OC4uNTJjNmQzNjUwODNiIDEwMDY0NAo+ID4gPiA+ID4gLS0tIGEv
ZHJpdmVycy9wY2kvb2YuYwo+ID4gPiA+ID4gKysrIGIvZHJpdmVycy9wY2kvb2YuYwo+ID4gPiA+
ID4gQEAgLTEwMTAsMyArMTAxMCwyMSBAQCBpbnQgb2ZfcGNpX2dldF9lcXVhbGl6YXRpb25fcHJl
c2V0cyhzdHJ1Y3QgZGV2aWNlICpkZXYsCj4gPiA+ID4gPiAgIAlyZXR1cm4gMDsKPiA+ID4gPiA+
ICAgfQo+ID4gPiA+ID4gICBFWFBPUlRfU1lNQk9MX0dQTChvZl9wY2lfZ2V0X2VxdWFsaXphdGlv
bl9wcmVzZXRzKTsKPiA+ID4gPiA+ICsKPiA+ID4gPiA+ICsvKioKPiA+ID4gPiA+ICsgKiBvZl9w
Y2lfY2xrcmVxX3ByZXNlbnQoKSAtIENoZWNrIGlmIHRoZSAic3VwcG9ydHMtY2xrcmVxIiBpcyBw
cmVzZW50Cj4gPiA+ID4gCj4gPiA+ID4gSSBkb24ndCBzZWUgYSBiZW5lZml0IG9mIHRoaXMgQVBJ
LCB0YmguIFRoZSBBUEkgbmFtZSBjcmVhdGVzIGFuCj4gPiA+ID4gaW1wcmVzc2lvbiB0aGF0IHRo
ZSBBUEkgd2lsbCBjaGVjayBmb3IgdGhlIHByZXNlbmNlIG9mIENMS1JFUSMKPiA+ID4gPiBzaWdu
YWwgaW4gRFQsIGJ1dCBpdCBjaGVja3MgZm9yIHRoZSBwcmVzZW5jZSBvZiB0aGUKPiA+ID4gPiAn
c3VwcG9ydHMtY2xrcmVxJyBwcm9wZXJ0eS4gRXZlbiB0aG91Z2ggdGhlIHByZXNlbmNlIG9mIHRo
ZQo+ID4gPiA+IHByb3BlcnR5IGltcGxpZXMgdGhhdCB0aGUgQ0xLUkVRIyByb3V0aW5nIGlzIGF2
YWlsYWJsZSwgSSdkCj4gPiA+ID4gcHJlZmVyIHRvIGNoZWNrIGZvciB0aGUgcHJvcGVydHkgZXhw
bGljaXRseSBpbnN0ZWFkIG9mIGhpZGluZyBpdAo+ID4gPiA+IGluc2lkZSB0aGlzIEFQSS4KPiA+
ID4gCj4gPiA+IEl0IG1ha2VzIHNlbnNlLgo+ID4gPiAKPiA+ID4gV2lsbCB0aGUgbmFtZSBvZl9w
Y2lfc3VwcG9ydHNfY2xrcmVxX3ByZXNlbnQoKSBsb29rIGdvb2Q/IE9yIHdlCj4gPiA+IGp1c3Qg
ZHJvcCBpdCBhbmQgbGV0IGhvc3QgZHJpdmVycyB0byBleHBsaWNpdGx5IGNoZWNrCj4gPiA+IHN1
cHBvcnRzLWNsa3JlcSBpbnNpZGUgdGhlaXIgY29kZT8KPiA+IAo+ID4gSSdkIHByZWZlciB0byBk
cm9wIHRoZSBBUEkuCj4gCj4gQW4gQVBJIG1pZ2h0IGhlbHAgd2l0aCBjb25zaXN0ZW5jeSBhY3Jv
c3MgRFQgYmluZGluZ3MuICBXZSBkb24ndCB3YW50Cj4gZHJpdmVycyB0byBwaWNrIHRoZWlyIG93
biBuYW1lcyBmb3IgJ3N1cHBvcnRzLWNsa3JlcScuCj4gCgpJIGRvbid0IGtub3cgd2hhdCB5b3Ug
bWVhbiBieSAnZHJpdmVycyB0byBwaWNrIHRoZWlyIG93biBuYW1lcycuIFdpdGggb3Igd2l0aG91
dAp0aGlzIEFQSSwgdGhlIGRyaXZlcnMgaGF2ZSB0byB1c2UgYSBsb2NhbCB2YXJpYWJsZToKCi0J
cGNpZS0+c3VwcG9ydHNfY2xrcmVxID0KLQkJb2ZfcHJvcGVydHlfcmVhZF9ib29sKHBjaWUtPmRl
di0+b2Zfbm9kZSwgInN1cHBvcnRzLWNsa3JlcSIpOworCXBjaWUtPnN1cHBvcnRzX2Nsa3JlcSA9
IG9mX3BjaV9jbGtyZXFfcHJlc2VudChwY2llLT5kZXYtPm9mX25vZGUpOwoKV2hhdCB0aGlzIEFQ
SSBkb2VzIGlzLCBqdXN0IGhpZGluZyB0aGUgJ3N1cHBvcnRzLWNsa3JlcScgcHJvcGVydHksIG5v
dGhpbmcgbW9yZS4KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprg
rqTgrr7grprgrr/grrXgrq7gr40KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK

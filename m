Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3486ECCD1BB
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Oct 2025 16:22:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=eo+znm57SgrBHgDznKvjlW0Dk40n2mauCA4c5yFB+e4=; b=Wq3qV1AsKTyE5X
	ZVriyWN/GLrkAwk8E4TTAOQdvB0RHZJVvi0ekgfxY5kvC6w5XGQNmGfkz9nXZNf3ulx9t1UuPcDZm
	D9oSoTffm5H9sB/rw9Hr0wpnEnmZCoO8Tne0gaXaZAfWh5pGB2VQpGU3h2UqBifcGDbW8Nb/WheSc
	UekZnRXFjhkhYRsZKPdI9HJIbTzjFptTwf8HQQW0DZoNC8iajF7jw1zwmZ2qWnDAxNHV0o4KJIBFG
	Vrr5kbOhKU35ATOlgcnKHhZkroWlLb1Mor6JtGCa3mcxUUhR4BjK/l/XNcdJ0hd1zBWzguuIehruu
	fHK9r7vJXikuU5wzQNNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBbbd-00000003Xbx-1c0E;
	Wed, 22 Oct 2025 16:22:33 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBbbb-00000003Xbf-3MTl
	for linux-rockchip@lists.infradead.org;
	Wed, 22 Oct 2025 16:22:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 1E76C63D2B;
	Wed, 22 Oct 2025 16:22:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A8BFEC4CEE7;
	Wed, 22 Oct 2025 16:22:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761150150;
	bh=a7qOX4vLoFXsF/KBfrnam9mJzdoRDBYaNwPXMz2uNuc=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=bGGplLuDFaHooPKYXkkLnO0fT658NLWhLbrVWp7iph5O9GbYMn+X6444lfkAHDx4w
	 xoF140XquMlg2io5MeFGghQsq82gDml4gRXLm7EhiDy2gCNxG48Fb2xjDMYRw+FmHT
	 tIcyYjn3iYqrpRZoOYfK39bCymRDVXEf2cxVnOEttZ6ogY/WMma2Ss6nDXWReyL0H5
	 29aTyUKGfr/5Sm3+jX/3QZk8AK4JNCe4AFHTrh5VYt7IY9jnaOepUsIT3b9N+3wO8F
	 5qMzktaacfqUpRh4+oZKNgmv4Bx9SqkIGiB07YVS4dSILgMF496cfNi0RFdIo1NZfM
	 Yq9b1uQZs2quw==
Date: Wed, 22 Oct 2025 11:22:29 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	linux-rockchip@lists.infradead.org,
	Niklas Cassel <cassel@kernel.org>, linux-pci@vger.kernel.org
Subject: Re: [PATCH 1/4] PCI: of: Add of_pci_clkreq_present()
Message-ID: <20251022162229.GA1256220@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a3ky7mynu6p7noyx7d3frxhwsq7izlh6sgkbbnyg5txx3kufke@nvftvg4l5gzk>
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

T24gV2VkLCBPY3QgMjIsIDIwMjUgYXQgMDM6NTk6MTNQTSArMDUzMCwgTWFuaXZhbm5hbiBTYWRo
YXNpdmFtIHdyb3RlOgo+IE9uIFdlZCwgT2N0IDIyLCAyMDI1IGF0IDA2OjEzOjU5UE0gKzA4MDAs
IFNoYXduIExpbiB3cm90ZToKPiA+IOWcqCAyMDI1LzEwLzIyIOaYn+acn+S4iSAxODowMiwgTWFu
aXZhbm5hbiBTYWRoYXNpdmFtIOWGmemBkzoKPiA+ID4gT24gVHVlLCBPY3QgMjEsIDIwMjUgYXQg
MDM6NDg6MjRQTSArMDgwMCwgU2hhd24gTGluIHdyb3RlOgo+ID4gPiA+IG9mX3BjaV9jbGtyZXFf
cHJlc2VudCgpIGlzIHVzZWQgYnkgaG9zdCBkcml2ZXJzIHRvIGRlY2lkZSB3aGV0aGVyIHRoZSBj
bGtyZXEjCj4gPiA+ID4gaXMgcHJvcGVybHkgY29ubmVjdGVkIGFuZCBjb3VsZCBlbmFibGUgTDEu
MS9MMS4yIHN1cHBvcnQuCj4gPiA+ID4gCj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogU2hhd24gTGlu
IDxzaGF3bi5saW5Acm9jay1jaGlwcy5jb20+Cj4gPiA+ID4gLS0tCj4gPiA+ID4gICBkcml2ZXJz
L3BjaS9vZi5jICB8IDE4ICsrKysrKysrKysrKysrKysrKwo+ID4gPiA+ICAgZHJpdmVycy9wY2kv
cGNpLmggfCAgNiArKysrKysKPiA+ID4gPiAgIDIgZmlsZXMgY2hhbmdlZCwgMjQgaW5zZXJ0aW9u
cygrKQo+ID4gPiA+IAo+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9vZi5jIGIvZHJp
dmVycy9wY2kvb2YuYwo+ID4gPiA+IGluZGV4IDM1NzkyNjVmMTE5OC4uNTJjNmQzNjUwODNiIDEw
MDY0NAo+ID4gPiA+IC0tLSBhL2RyaXZlcnMvcGNpL29mLmMKPiA+ID4gPiArKysgYi9kcml2ZXJz
L3BjaS9vZi5jCj4gPiA+ID4gQEAgLTEwMTAsMyArMTAxMCwyMSBAQCBpbnQgb2ZfcGNpX2dldF9l
cXVhbGl6YXRpb25fcHJlc2V0cyhzdHJ1Y3QgZGV2aWNlICpkZXYsCj4gPiA+ID4gICAJcmV0dXJu
IDA7Cj4gPiA+ID4gICB9Cj4gPiA+ID4gICBFWFBPUlRfU1lNQk9MX0dQTChvZl9wY2lfZ2V0X2Vx
dWFsaXphdGlvbl9wcmVzZXRzKTsKPiA+ID4gPiArCj4gPiA+ID4gKy8qKgo+ID4gPiA+ICsgKiBv
Zl9wY2lfY2xrcmVxX3ByZXNlbnQoKSAtIENoZWNrIGlmIHRoZSAic3VwcG9ydHMtY2xrcmVxIiBp
cyBwcmVzZW50Cj4gPiA+IAo+ID4gPiBJIGRvbid0IHNlZSBhIGJlbmVmaXQgb2YgdGhpcyBBUEks
IHRiaC4gVGhlIEFQSSBuYW1lIGNyZWF0ZXMgYW4KPiA+ID4gaW1wcmVzc2lvbiB0aGF0IHRoZSBB
UEkgd2lsbCBjaGVjayBmb3IgdGhlIHByZXNlbmNlIG9mIENMS1JFUSMKPiA+ID4gc2lnbmFsIGlu
IERULCBidXQgaXQgY2hlY2tzIGZvciB0aGUgcHJlc2VuY2Ugb2YgdGhlCj4gPiA+ICdzdXBwb3J0
cy1jbGtyZXEnIHByb3BlcnR5LiBFdmVuIHRob3VnaCB0aGUgcHJlc2VuY2Ugb2YgdGhlCj4gPiA+
IHByb3BlcnR5IGltcGxpZXMgdGhhdCB0aGUgQ0xLUkVRIyByb3V0aW5nIGlzIGF2YWlsYWJsZSwg
SSdkCj4gPiA+IHByZWZlciB0byBjaGVjayBmb3IgdGhlIHByb3BlcnR5IGV4cGxpY2l0bHkgaW5z
dGVhZCBvZiBoaWRpbmcgaXQKPiA+ID4gaW5zaWRlIHRoaXMgQVBJLgo+ID4gCj4gPiBJdCBtYWtl
cyBzZW5zZS4KPiA+IAo+ID4gV2lsbCB0aGUgbmFtZSBvZl9wY2lfc3VwcG9ydHNfY2xrcmVxX3By
ZXNlbnQoKSBsb29rIGdvb2Q/IE9yIHdlCj4gPiBqdXN0IGRyb3AgaXQgYW5kIGxldCBob3N0IGRy
aXZlcnMgdG8gZXhwbGljaXRseSBjaGVjawo+ID4gc3VwcG9ydHMtY2xrcmVxIGluc2lkZSB0aGVp
ciBjb2RlPwo+IAo+IEknZCBwcmVmZXIgdG8gZHJvcCB0aGUgQVBJLgoKQW4gQVBJIG1pZ2h0IGhl
bHAgd2l0aCBjb25zaXN0ZW5jeSBhY3Jvc3MgRFQgYmluZGluZ3MuICBXZSBkb24ndCB3YW50CmRy
aXZlcnMgdG8gcGljayB0aGVpciBvd24gbmFtZXMgZm9yICdzdXBwb3J0cy1jbGtyZXEnLgoKQnV0
IHRoZSBwY2ktYnVzLWNvbW1vbiBzY2hlbWEgYWxyZWFkeSBpbmNsdWRlcyAnc3VwcG9ydHMtY2xr
cmVxJywgYW5kCnRoYXQncyBwcm9iYWJseSBlbm91Z2g6Cmh0dHBzOi8vZ2l0aHViLmNvbS9kZXZp
Y2V0cmVlLW9yZy9kdC1zY2hlbWEvYmxvYi85NzlmZWE4ZjNjMTgvZHRzY2hlbWEvc2NoZW1hcy9w
Y2kvcGNpLWJ1cy1jb21tb24ueWFtbCNMMTU1CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

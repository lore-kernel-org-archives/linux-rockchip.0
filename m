Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84B83CCD1BB
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Oct 2025 16:03:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=Eau4Hsz382SaGYNsRzFZvE4MzMfWfD+XadUqzDMsuig=; b=O4AmLHOSOS3glE
	5acRd36uCoAzkR7NWIH9deid8Toic3EcinRzsHEb9dcJDllHD47VXEIrPI6lzwqD+GfuhWG/Ao2n9
	ZYr4U91GYarUoDjk45SCHhgeFzZeKP6505aMHCJF4dEgVThjnLaXcnXPkPT4u1zNCvCusI12zS9Cw
	I4iVC1W6YUORLxbcUHefUUPvx35FlJzoGzVr3X/+ghgDG9201ysL/+seYk4xQRp2MTj8DnjNhhip9
	M+qDdZRrCUwh6mYl9F9GsJ8BjEgnFjtxyizkZMg0KhWR3CkmfzwP3Fnq08DYPOfL9HgLedXKE7URn
	twngrNXHc53GpuF/5CjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBbJ1-00000003TS2-3TWV;
	Wed, 22 Oct 2025 16:03:19 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBbJ0-00000003TRu-2D0L
	for linux-rockchip@lists.infradead.org;
	Wed, 22 Oct 2025 16:03:18 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id ED38360528;
	Wed, 22 Oct 2025 16:03:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4F3E5C4CEF7;
	Wed, 22 Oct 2025 16:03:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761148997;
	bh=BnvvZMhFwTvZJzZlo+B1dRoDTeTaTU3/r/X46TUNx44=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=RqtNhN0BiNwBnx52I7c66MTSYORuwHbdl6YK20tP1Jp9Fx0CfURwhLFPtVGQHLsTS
	 y7Qi5hRqm6NQlRDV+VDgOM/DrIQAUonCNYK3b/Ua0fDqwrKR+TrH0AxEr+TMWzd+Sv
	 wEArOzt/wbNxxcQ8R6iQq0VoicqpTIwEYFiD3ioVjkjN+uoxgoSlKK53ns9KFem2aV
	 TDv5KzBq8aUiALrMdBdv+WVTE19em6JlFtYCuzscqTHQlyX58kPMQo/YQEysVuswyZ
	 HOk/e7EL9A/Ymp1Mn712XTVuixHYwqoV0QPnqO1Vle/Bq+xSHO3v4TAcKrt0/qwhDq
	 iq8nGBQTXRJtA==
Date: Wed, 22 Oct 2025 11:03:15 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Hans Zhang <hans.zhang@cixtech.com>, Heiko Stuebner <heiko@sntech.de>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	linux-rockchip@lists.infradead.org,
	Niklas Cassel <cassel@kernel.org>, linux-pci@vger.kernel.org
Subject: Re: [PATCH v2 1/2] PCI: dw-rockchip: Add L1sub support
Message-ID: <20251022160315.GA1254908@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ffe10dbd-1297-45af-86d5-42023820f2c7@rock-chips.com>
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

T24gV2VkLCBPY3QgMjIsIDIwMjUgYXQgMDg6MjI6MzlQTSArMDgwMCwgU2hhd24gTGluIHdyb3Rl
Ogo+IOWcqCAyMDI1LzEwLzIyIOaYn+acn+S4iSAxOTo1MiwgSGFucyBaaGFuZyDlhpnpgZM6Cj4g
PiBPbiAxMC8yMi8yMDI1IDc6MzUgUE0sIFNoYXduIExpbiB3cm90ZToKPiA+ID4gVGhlIGRyaXZl
ciBzaG91bGQgc2V0IGFwcF9jbGtfcmVxX24oY2xrcmVxIHJlYWR5KSBvZgo+ID4gPiBQQ0lFX0NM
SUVOVF9QT1dFUiByZWcKPiA+ID4gdG8gc3VwcG9ydCBMMXN1Yi4gT3RoZXJ3aXNlLCB1bnNldCBh
cHBfY2xrX3JlcV9uIGFuZCBwdWxsIGRvd24gQ0xLUkVRIy4KCj4gPiA+IEBAIC00MTIsNiArNDQ2
LDggQEAgc3RhdGljIGludCByb2NrY2hpcF9wY2llX3Jlc291cmNlX2dldChzdHJ1Y3QKPiA+ID4g
cGxhdGZvcm1fZGV2aWNlICpwZGV2LAo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCByZXR1cm4gZGV2X2Vycl9wcm9iZSgmcGRldi0+ZGV2LCBQVFJfRVJSKHJvY2tjaGlwLT5y
c3QpLAo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiZmFpbGVkIHRvIGdldCByZXNldCBsaW5lc1xu
Iik7Cj4gPiA+IAo+ID4gPiArwqDCoMKgwqDCoMKgIHJvY2tjaGlwLT5zdXBwb3J0c19jbGtyZXEg
PSBvZl9wcm9wZXJ0eV9yZWFkX2Jvb2wocGRldi0KPiA+ID4gPmRldi5vZl9ub2RlLCAic3VwcG9y
dHMtY2xrcmVxIik7Cj4gPiAKPiA+IFRoaXMgbGluZSBleGNlZWRzIDgwIGNoYXJhY3RlcnMuIENh
biBpdCBiZSBsaWtlIHRoaXM/Cj4gCj4gVGhhbmtzIGZvciB0aGUgcmVpdmV3Lgo+IAo+IEkgdGhp
bmsgd2UndmUgYmVlbiBkcm9wIHRoaXMgcnVsZVsxXSBmb3IgcXVpdGUgYSBsb25nIHRpbWUgOikK
PiAKPiBbMV1odHRwczovL3d3dy5waG9yb25peC5jb20vbmV3cy9MaW51eC1LZXJuZWwtRGVwcmVj
YXRlcy04MC1Db2wKPiAKPiA+IHJvY2tjaGlwLT5zdXBwb3J0c19jbGtyZXEgPSBvZl9wcm9wZXJ0
eV9yZWFkX2Jvb2wocGRldi0+ZGV2Lm9mX25vZGUsCj4gPiAgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgInN1cHBvcnRzLWNsa3JlcSIpOwoKWWVzLCBi
dXQgdGhhdCBkb2Vzbid0IG1lYW4gaXQncyBPSyBmb3IgdGhlIGZpbGUgdG8gYmUgYSBtaXNobWFz
aCB3aGVyZQptb3N0IG9mIGl0IGZpdHMgaW4gODAgYnV0IHJhbmRvbSBsaW5lcyBnbyB0byAxMDAu
ICBUaGF0IGp1c3QgbWFrZXMgaXQKYSBwYWluIHRvIHJlYWQuCgpJZiBnb2luZyBwYXN0IDgwIG1h
a2VzIHNvbWV0aGluZyBzaWduaWZpY2FudGx5IGVhc2llciB0byByZWFkLCB0aGF0J3MKZmluZSwg
YW5kIHRoaXMgZmlsZSBkb2VzIHRoYXQgb2NjYXNpb25hbGx5IGZvciAjZGVmaW5lcyBhbmQgdGhl
IGxpa2UuCkJ1dCBpbiB0aGlzIGNhc2UsIHdyYXBwaW5nIHRvIGZpdCBpbiA4MCByZWFsbHkgZG9l
c24ndCBodXJ0IGFueXRoaW5nLgoKQmpvcm4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

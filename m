Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE1ECCCFA00
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 Oct 2025 08:36:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Cc8u3jTAfR8qX//V7FtQrqz7lf7+NzGAnMnSLMTvcE=; b=gW9Kub0ZU4s4fp
	QJfVph0DPPCjMpLypK/6tFXim9EY1SsENFlI4zGMwhVs45LRfz4zL3p1PAb4KhMN3fVQP4TqYvwXD
	TrGPDXrrp5m7urd6347kTQgpjUbJXu5WXQcMviFmF8EVy/hgN89I9b3yHzf6MzVIkipgRQDAdBpJ9
	IsFDFl9WllM6DSkpU640HN7r9riubzd97jBFi2pfl//B2400sGHxpZrKa6oUeJLG2oolR2LSS9rPs
	y4OVQqbvK0KLXiLEAy0vSghSgkuxC6/1LzyXVh9KEqz7LsgGH3l3/MkhQCOanIgBmCeMaJ5t/lKf7
	h3RIPi6/Z8uksjaKLRbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEkcP-00000005fNW-124p;
	Fri, 31 Oct 2025 08:36:21 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEkcM-00000005fN3-1n7j;
	Fri, 31 Oct 2025 08:36:18 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 84B4961483;
	Fri, 31 Oct 2025 08:36:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C1566C4CEF8;
	Fri, 31 Oct 2025 08:36:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761899777;
	bh=Nx7zVNS1vjKGvEyYcqY9qSwj4mu6QiBOxd85u7jmiQA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DB+REZMguC0RGfpKJBoX+sOgdcIi5yciIlZIxO5NxQ2mVNyBQW9mXbO1v7xcjyfm/
	 w8Bg2yVAzmmOEbt+/hkBBkl4ZurTPtxBiqblO+JZoh7dunXkUEpnG/3MQ6BVEDoyTS
	 PIfxNd0NLxnmLH6IG0YnjgRLCBYbkXlIw9C6bV28AQ8o13ULg0unlpsJOmdlUU72dD
	 7TTIF/yUIJt1sb628+EWRPk5KwytqYverSAvRnke86/lZPBok1k1Mi4oTgXV/Rxjnc
	 3QFS9RncRXyshpnHTskdxE6OFbLzimD+B/SshEmJDRd9YD0BzGvdV3QrZhW1iLSQPK
	 2H2LSV8a7jbrg==
Date: Fri, 31 Oct 2025 14:06:05 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Anand Moon <linux.amoon@gmail.com>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, Rob Herring <robh@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, 
	Niklas Cassel <cassel@kernel.org>, Shawn Lin <shawn.lin@rock-chips.com>, 
	Hans Zhang <18255117159@163.com>, Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, 
	"open list:PCI NATIVE HOST BRIDGE AND ENDPOINT DRIVERS" <linux-pci@vger.kernel.org>, 
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>, open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v1 1/2] PCI: dw-rockchip: Add remove callback for
 resource cleanup
Message-ID: <b2micr4atfax2sgolsublmjk4kwvbmdnqjlk2lb7cflzeycm5i@bi62lg75ilo6>
References: <20251027145602.199154-1-linux.amoon@gmail.com>
 <20251027145602.199154-2-linux.amoon@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251027145602.199154-2-linux.amoon@gmail.com>
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

T24gTW9uLCBPY3QgMjcsIDIwMjUgYXQgMDg6MjU6MjlQTSArMDUzMCwgQW5hbmQgTW9vbiB3cm90
ZToKPiBJbnRyb2R1Y2UgYSAucmVtb3ZlKCkgY2FsbGJhY2sgdG8gdGhlIFJvY2tjaGlwIERlc2ln
bldhcmUgUENJZQo+IGNvbnRyb2xsZXIgZHJpdmVyIHRvIGVuc3VyZSBwcm9wZXIgcmVzb3VyY2Ug
ZGVpbml0aWFsaXphdGlvbiBkdXJpbmcKPiBkZXZpY2UgcmVtb3ZhbC4gVGhpcyBpbmNsdWRlcyBk
aXNhYmxpbmcgY2xvY2tzIGFuZCBkZWluaXRpYWxpemluZyB0aGUKPiBQQ0llIFBIWS4KPiAKCkhv
dyBjYW4geW91IHJlbW92ZSBhIGRyaXZlciB0aGF0IGlzIG9ubHkgYnVpbHQtaW4/IFlvdSBhcmUg
anVzdCBzZW5kaW5nIHNvbWUKcG9pbnRsZXNzIHBhdGNoZXMgdGhhdCB3ZXJlIG5vdCB0ZXN0ZWQg
YW5kIGRvZXMgbm90IG1ha2Ugc2Vuc2UgYXQgYWxsLgoKUGxlYXNlIHN0b3Agd2FzdGluZyBvdGhl
cnMgdGltZS4KCi0gTWFuaQoKPiBTaWduZWQtb2ZmLWJ5OiBBbmFuZCBNb29uIDxsaW51eC5hbW9v
bkBnbWFpbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZHct
cm9ja2NoaXAuYyB8IDExICsrKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRp
b25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUt
ZHctcm9ja2NoaXAuYyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZHctcm9ja2No
aXAuYwo+IGluZGV4IDg3ZGQyZGQxODhiNC4uYjg3OGFlOGUyYjNlIDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAuYwo+ICsrKyBiL2RyaXZl
cnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAuYwo+IEBAIC03MTcsNiArNzE3
LDE2IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfcGNpZV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2
aWNlICpwZGV2KQo+ICAJcmV0dXJuIHJldDsKPiAgfQo+ICAKPiArc3RhdGljIHZvaWQgcm9ja2No
aXBfcGNpZV9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiArewo+ICsJc3Ry
dWN0IGRldmljZSAqZGV2ID0gJnBkZXYtPmRldjsKPiArCXN0cnVjdCByb2NrY2hpcF9wY2llICpy
b2NrY2hpcCA9IGRldl9nZXRfZHJ2ZGF0YShkZXYpOwo+ICsKPiArCS8qIFBlcmZvcm0gb3RoZXIg
Y2xlYW51cHMgYXMgbmVjZXNzYXJ5ICovCj4gKwljbGtfYnVsa19kaXNhYmxlX3VucHJlcGFyZShy
b2NrY2hpcC0+Y2xrX2NudCwgcm9ja2NoaXAtPmNsa3MpOwo+ICsJcm9ja2NoaXBfcGNpZV9waHlf
ZGVpbml0KHJvY2tjaGlwKTsKPiArfQo+ICsKPiAgc3RhdGljIGNvbnN0IHN0cnVjdCByb2NrY2hp
cF9wY2llX29mX2RhdGEgcm9ja2NoaXBfcGNpZV9yY19vZl9kYXRhX3JrMzU2OCA9IHsKPiAgCS5t
b2RlID0gRFdfUENJRV9SQ19UWVBFLAo+ICB9Owo+IEBAIC03NTQsNSArNzY0LDYgQEAgc3RhdGlj
IHN0cnVjdCBwbGF0Zm9ybV9kcml2ZXIgcm9ja2NoaXBfcGNpZV9kcml2ZXIgPSB7Cj4gIAkJLnN1
cHByZXNzX2JpbmRfYXR0cnMgPSB0cnVlLAo+ICAJfSwKPiAgCS5wcm9iZSA9IHJvY2tjaGlwX3Bj
aWVfcHJvYmUsCj4gKwkucmVtb3ZlID0gcm9ja2NoaXBfcGNpZV9yZW1vdmUsCj4gIH07Cj4gIGJ1
aWx0aW5fcGxhdGZvcm1fZHJpdmVyKHJvY2tjaGlwX3BjaWVfZHJpdmVyKTsKPiAtLSAKPiAyLjUw
LjEKPiAKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K61
4K6u4K+NCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==

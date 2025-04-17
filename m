Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58F70C369B2
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Apr 2025 07:52:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IGJco+IFmCOEsdH33fKeBOuM7EPMvXx6yLePxLM1LGI=; b=jMCAcKrhRhE0dE
	Olq+tzHnoebVqz/c64EC503cYMZpoLv817yW9Bj4PXyAgKJWb4vqf2CzJyyO7+d1YiJmkXOEbokyq
	Nv7Zi+349QxQ00Cn56m7cLMz03AA5vEAGZ7Bj3Tjd9GVJ0/eVF3oDgt3NJx0TAqdCu0HKf7zYaru3
	xcu18JhFSiKvdhuOnh95qM4n2RFBs3KCRvbNZj4m0P5lKjQwCYs+4l2C6uycHe8kDM8BSQW9MkAPz
	dLXq7VXt4lehM+CigDH6QdlnuZgR215ZqjOFqdoGFruQSnopAiwf4kwI9g+EL2vAuNl2ZbVRkD/is
	bfjt6ukGFTBxUxOsH1Sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5K2x-0000000CB0a-1clU;
	Thu, 17 Apr 2025 07:52:31 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5Jz2-0000000CACZ-0niE;
	Thu, 17 Apr 2025 07:48:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id DA40E68438;
	Thu, 17 Apr 2025 07:48:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 756D7C4CEE7;
	Thu, 17 Apr 2025 07:48:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744876107;
	bh=q2pCfnUhdQWEZrucc/vgzT+PdUvSVSafzjmIF1npPYk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=u713mKvdg1fU9fuM2e/uK122DMnJ1N1s9DQZW74R+/KLguTJh+HCUiusUeAiR5BQM
	 sT0u7RAt5f+mTwEjdUnFAQ2NLTcmGe9oLu79YRw/Mp4sWbaQjrdfn2OlpA+/RT4K/k
	 xkmQ6YMT7d2CF9ba53oDI34xHEuYQrBCwp/iGjBtqDuzaOMXakvi+danSK30Zhqf2n
	 9hZmdhWH3wnj48enNVMbdQF8vrgoWvmJR7x7BD7STPzkHa/btO35d7klHy4m79307v
	 OJ0xZ27+25pLnB1oC8upWx68RQtBJ1pawyfE0T0o66WkD9UJuRsJdkIODbN2oKCnIE
	 mXoqJ0yATKUPQ==
Date: Thu, 17 Apr 2025 09:48:22 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Hans Zhang <18255117159@163.com>, lpieralisi@kernel.org, kw@linux.com,
	bhelgaas@google.com, heiko@sntech.de,
	manivannan.sadhasivam@linaro.org, robh@kernel.org,
	jingoohan1@gmail.com, thomas.richard@bootlin.com,
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] PCI: dw-rockchip: Configure max payload size on host init
Message-ID: <aACyRp8S9c8azlw9@ryzen>
References: <20250416151926.140202-1-18255117159@163.com>
 <aACoEpueUHBLjgbb@ryzen>
 <85643fe4-c7df-4d64-e852-60b66892470a@rock-chips.com>
 <aACsJPkSDOHbRAJM@ryzen>
 <ca283065-a48c-3b39-e70d-03d4c6c8a956@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ca283065-a48c-3b39-e70d-03d4c6c8a956@rock-chips.com>
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

T24gVGh1LCBBcHIgMTcsIDIwMjUgYXQgMDM6MjU6MDZQTSArMDgwMCwgU2hhd24gTGluIHdyb3Rl
Ogo+IOWcqCAyMDI1LzA0LzE3IOaYn+acn+WbmyAxNToyMiwgTmlrbGFzIENhc3NlbCDlhpnpgZM6
Cj4gPiBPbiBUaHUsIEFwciAxNywgMjAyNSBhdCAwMzowODozNFBNICswODAwLCBTaGF3biBMaW4g
d3JvdGU6Cj4gPiA+IOWcqCAyMDI1LzA0LzE3IOaYn+acn+WbmyAxNTowNCwgTmlrbGFzIENhc3Nl
bCDlhpnpgZM6Cj4gPiA+ID4gSGVsbG8gSGFucywKPiA+ID4gPiAKPiA+ID4gPiBPbiBXZWQsIEFw
ciAxNiwgMjAyNSBhdCAxMToxOToyNlBNICswODAwLCBIYW5zIFpoYW5nIHdyb3RlOgo+ID4gPiA+
ID4gVGhlIFJLMzU4OCdzIFBDSWUgY29udHJvbGxlciBkZWZhdWx0cyB0byBhIDEyOC1ieXRlIG1h
eCBwYXlsb2FkIHNpemUsCj4gPiA+ID4gPiBidXQgaXRzIGhhcmR3YXJlIGNhcGFiaWxpdHkgYWN0
dWFsbHkgc3VwcG9ydHMgMjU2IGJ5dGVzLiBUaGlzIHJlc3VsdHMKPiA+ID4gPiA+IGluIHN1Ym9w
dGltYWwgcGVyZm9ybWFuY2Ugd2l0aCBkZXZpY2VzIHRoYXQgc3VwcG9ydCBsYXJnZXIgcGF5bG9h
ZHMuCj4gPiA+ID4gCj4gPiA+ID4gUGF0Y2ggbG9va3MgZ29vZCB0byBtZSwgYnV0IHBsZWFzZSBh
bHdheXMgcmVmZXJlbmNlIHRoZSBUUk0gd2hlbiB5b3UgY2FuLgo+ID4gPiA+IAo+ID4gPiA+IEJl
Zm9yZSB0aGlzIHBhdGNoOgo+ID4gPiA+IAkJRGV2Q2FwOiBNYXhQYXlsb2FkIDI1NiBieXRlcwo+
ID4gPiA+IAkJRGV2Q3RsOiBNYXhQYXlsb2FkIDEyOCBieXRlcwo+ID4gPiA+IAo+ID4gPiA+IAo+
ID4gPiA+IEFzIHBlciByazM1ODggVFJNLCBzZWN0aW9uICIxMS40LjMuOCBEU1BfUENJRV9DQVAg
RGV0YWlsIFJlZ2lzdGVycyBEZXNjcmlwdGlvbiIKPiA+ID4gPiAKPiA+ID4gPiBEZXZDYXAgaXMg
cGVyIHRoZSByZWdpc3RlciBkZXNjcmlwdGlvbiBvZiBEU1BfUENJRV9DQVBfREVWSUNFX0NBUEFC
SUxJVElFU19SRUcsCj4gPiA+ID4gZmllbGQgUENJRV9DQVBfTUFYX1BBWUxPQURfU0laRS4KPiA+
ID4gPiBXaGljaCBjbGFpbXMgdGhhdCB0aGUgdmFsdWUgYWZ0ZXIgcmVzZXQgaXMgMHgxICgyNTZC
KS4KPiA+ID4gPiAKPiA+ID4gPiBEZXZDdGwgaXMgcGVyIHRoZSByZWdpc3RlciBkZXNjcmlwdGlv
biBvZgo+ID4gPiA+IERTUF9QQ0lFX0NBUF9ERVZJQ0VfQ09OVFJPTF9ERVZJQ0VfU1RBVFVTLCBm
aWVsZCBQQ0lFX0NBUF9NQVhfUEFZTE9BRF9TSVpFX0NTLgo+ID4gPiA+IFdoaWNoIGNsYWltcyB0
aGF0IHRoZSByZXNldCB2YWx1ZSBpcyAweDAgKDEyOEIpLgo+ID4gPiA+IAo+ID4gPiA+IEJvdGgg
b2YgdGhlc2UgbWF0Y2ggdGhlIHZhbHVlcyBhYm92ZS4KPiA+ID4gPiAKPiA+ID4gPiBBcyBwZXIg
dGhlIGRlc2NyaXB0aW9uIG9mIFBDSUVfQ0FQX01BWF9QQVlMT0FEX1NJWkVfQ1M6Cj4gPiA+ID4g
IlBlcm1pc3NpYmxlIHZhbHVlcyB0aGF0Cj4gPiA+ID4gY2FuIGJlIHByb2dyYW1tZWQgYXJlIGlu
ZGljYXRlZCBieSB0aGUgTWF4X1BheWxvYWRfU2l6ZQo+ID4gPiA+IFN1cHBvcnRlZCBmaWVsZCAo
UENJRV9DQVBfTUFYX1BBWUxPQURfU0laRSkgaW4gdGhlIERldmljZQo+ID4gPiA+IENhcGFiaWxp
dGllcyAoREVWSUNFX0NBUEFCSUxJVElFU19SRUcpIHJlZ2lzdGVyIChmb3IgbW9yZQo+ID4gPiA+
IGRldGFpbHMsIHNlZSBzZWN0aW9uIDcuNS4zLjMgb2YgUENJIEV4cHJlc3MgQmFzZSBTcGVjaWZp
Y2F0aW9uKS4iCj4gPiA+ID4gCj4gPiA+ID4gU28geW91ciBwYXRjaCBsb29rcyBnb29kLgo+ID4g
PiA+IAo+ID4gPiA+IEkgZ3Vlc3MgSSdtIG1vc3RseSBzdXJwcmlzZWQgdGhhdCB0aGUgZS5nLiBw
Y2lfY29uZmlndXJlX21wcygpIGRvZXMgbm90Cj4gPiA+ID4gYWxyZWFkeSBzZXQgRGV2Q3RsIHRv
IHRoZSBtYXgoRGV2Q2FwLk1QUyBvZiB0aGUgaG9zdCwgRGV2Q2FwLk1QUyBvZiB0aGUKPiA+ID4g
PiBlbmRwb2ludCkuCj4gPiA+ID4gCj4gPiA+ID4gQXBwYXJlbnRseSBwY2lfY29uZmlndXJlX21w
cygpIG9ubHkgZGVjcmVhc2VzIE1QUyBmcm9tIHRoZSByZXNldCB2YWx1ZXM/Cj4gPiA+ID4gSXQg
bmV2ZXIgaW5jcmVhc2VzIGl0Pwo+ID4gPiA+IAo+ID4gPiAKPiA+ID4gQWN0dWFsbHkgaXQgZG9l
czoKPiA+ID4gCj4gPiA+IGh0dHBzOi8vZ2l0aHViLmNvbS90b3J2YWxkcy9saW51eC9ibG9iL21h
c3Rlci9Eb2N1bWVudGF0aW9uL2FkbWluLWd1aWRlL2tlcm5lbC1wYXJhbWV0ZXJzLnR4dCNMNDc1
Nwo+ID4gCj4gPiBJZiB0aGF0IGlzIHRoZSBjYXNlLCB0aGVuIGV4cGxhaW4gdGhlIGJlZm9yZS9h
ZnRlciB3aXRoIEhhbnMgbHNwY2kgb3V0cHV0IGhlcmU6Cj4gPiBodHRwczovL2xvcmUua2VybmVs
Lm9yZy9saW51eC1wY2kvYmI0MDM4NWMtNjgzOS00ODRjLTkwYjItZDZjN2VjYjk1YmE5QDE2My5j
b20vCj4gPiAKPiA+IEhpcyBwYXRjaCBjaGFuZ2VzIHRoZSBkZWZhdWx0IHZhbHVlIG9mIERldkN0
bC5NUFMgKGZyb20gMTI4QiB0byAyNTZCKSwgYnV0IGlmCj4gPiBwY2lfY29uZmlndXJlX21wcygp
IGNhbiBidW1wIERldkN0bC5NUFMgdG8gYSBoaWdoZXIgdmFsdWUsIGhpcyBwYXRjaCBzaG91bGQg
bm90Cj4gPiBiZSBuZWVkZWQsIHNpbmNlIHRoZSBFUCAoYW4gTlZNZSBTU0QgaW4gaGlzIGNhc2Up
IGhhcyBEZXZDYXAuTVBTIDUxMkIsIGFuZCB0aGUKPiA+IFJDIGl0c2VsZiBoYXMgRGV2Q2FwLk1Q
UyAyNTZCLgo+ID4gCj4gPiBTZWVtcyBsaWtlIHdlIGFyZSBtaXNzaW5nIHNvbWV0aGluZyBoZXJl
Lgo+IAo+IFNvIEhhbnMsIGNvdWxkIHlvdSBwbGVhc2UgaGVscCBzZXQgcGNpPXBjaWVfYnVzX3Nh
ZmUgb3IKPiBwY2k9cGNpZV9idXNfcGVyZiBpbiB5b3VyIGNtZGxpbmUsIGFuZCBzZWUgaG93IGxz
cGNpIGR1bXAgZGlmZmVyZW50Cj4gd2l0aG91dCB5b3VyIHBhdGNoPwoKSXQgc2VlbXMgdGhhdCB0
aGUgZGVmYXVsdCBNUFMgc3RyYXRlZ3kgY2FuIGJlIHNldCB1c2luZyBLY29uZmlnczoKaHR0cHM6
Ly9naXRodWIuY29tL3RvcnZhbGRzL2xpbnV4L2Jsb2IvdjYuMTUtcmMyL2RyaXZlcnMvcGNpL3Bj
aS5jI0wxMjYtTDEzNgpodHRwczovL2dpdGh1Yi5jb20vdG9ydmFsZHMvbGludXgvYmxvYi92Ni4x
NS1yYzIvaW5jbHVkZS9saW51eC9wY2kuaCNMMTExMC1MMTExNgoKTm90ZSB0aGF0IHRoZSB0aGVz
ZSBLY29uZmlncyBhcmUgaGlkZGVuIGJlaGluZCBDT05GSUdfRVhQRVJULgpTbyB1bmxlc3MgeW91
IGhhdmUgZXhwbGljaXRseSBzZXQgb25lIG9mIHRoZXNlIEtjb25maWdzLCB0aGUgZGVmYXVsdCBz
aG91bGQgYmU6ClBDSUVfQlVTX0RFRkFVTFQsCS8qIEVuc3VyZSBNUFMgbWF0Y2hlcyB1cHN0cmVh
bSBicmlkZ2UgKi8KCgpLaW5kIHJlZ2FyZHMsCk5pa2xhcwoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 500A8CCF9EB
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 Oct 2025 06:22:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xdl/WO78WYnf/tp4JmwmO0rB07ydzErRhYf5cSHFnUE=; b=FmVjmU+TIHGlIg
	efRmeG4CCt8q9a8jirXbBMCedG21+KA0Of49ebmzROvGjAQoacX+bSnBUJG1GRGoqOr7GdwAfBQGu
	1iNmn0lM9dhsLtj1k1KF5HYXhSFRraRQfNFpgb3LCRSKAkyd1uHUhyij6gjyhLCSNqDPLDwPpWrjl
	m8sux2+1y4Cb2BrhCEVdlYRoTKjeFk18nvI0yjERnfFZO4ShGoFLCI9UEhCAS3b+zymM0XLUHHC7+
	Wi67GJ+vapM4fMIiWZF0EN3gpBvWS7UB9hVuxSY9hyNmq4KQVirJXnBHLV4MOyVq4bf60belLVAn6
	nO6o1xgMAMYS9HCpj5Tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEiWH-00000005TSG-26qv;
	Fri, 31 Oct 2025 06:21:54 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEiWF-00000005TR9-1WuT
	for linux-rockchip@lists.infradead.org;
	Fri, 31 Oct 2025 06:21:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id B0EEC601BD;
	Fri, 31 Oct 2025 06:21:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0D004C4CEF1;
	Fri, 31 Oct 2025 06:21:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761891710;
	bh=qV6uFxqSSQYthCHvksnPhXB8B47dV+DjfShOnQoDrtU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tGP4zMww9hNL4QxtqCMsdf1R8Ftkkpg7q/cByv/0FvS8d7I0eidWHaMI70IimwG99
	 aY6WnMrRpCUqD18sYZEFSgogpia1W1t22OQbEZZSxp8w6zjbF1rTsd4eHIPqZC9XT0
	 pC3LgxQ45CoXg5yt1a4eUw9IeRGTxaH2dJL5PNC7hSfCTsNqZtip/2/BpgpWSww1v/
	 A1Gc60K2qNLfnSW1veDmIfrdapFZppXytWL9eSAhqA2kP1+URNcTN8DRpM2NBzawxI
	 dM0vTVa3O3FtuaJxhdEyqYkxcEJlChQmb0W/yITx24CSSyYTiw5Vzn2EiyX3T+whuB
	 eTn4/imgBHv4g==
Date: Fri, 31 Oct 2025 11:51:31 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>, Niklas Cassel <cassel@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, Rob Herring <robh@kernel.org>, linux-pci@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	"David E. Box" <david.e.box@linux.intel.com>, Kai-Heng Feng <kai.heng.feng@canonical.com>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Heiner Kallweit <hkallweit1@gmail.com>, 
	Chia-Lin Kao <acelan.kao@canonical.com>, Dragan Simic <dsimic@manjaro.org>, 
	linux-rockchip@lists.infradead.org, regressions@lists.linux.dev, FUKAUMI Naoki <naoki@radxa.com>
Subject: Re: [PATCH v2 1/2] PCI/ASPM: Override the ASPM and Clock PM states
 set by BIOS for devicetree platforms
Message-ID: <sttsqedadw4cdozfrjkl7jlqk2jtwkaniukczfwm5e7ymdtsh3@jkq3unz2ez2k>
References: <4pm5tizc2c4c75h23izalhysuljnlfzpxuawhzezmnnqic2tdf@l2rcj24rmru3>
 <20251017134554.GA1027663@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251017134554.GA1027663@bhelgaas>
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

T24gRnJpLCBPY3QgMTcsIDIwMjUgYXQgMDg6NDU6NTRBTSAtMDUwMCwgQmpvcm4gSGVsZ2FhcyB3
cm90ZToKPiBPbiBGcmksIE9jdCAxNywgMjAyNSBhdCAwNjoyNDoyNlBNICswNTMwLCBNYW5pdmFu
bmFuIFNhZGhhc2l2YW0gd3JvdGU6Cj4gPiBPbiBGcmksIE9jdCAxNywgMjAyNSBhdCAwODoxOTox
MVBNICswODAwLCBTaGF3biBMaW4gd3JvdGU6Cj4gPiA+IOWcqCAyMDI1LzEwLzE3IOaYn+acn+S6
lCAxODowNCwgTWFuaXZhbm5hbiBTYWRoYXNpdmFtIOWGmemBkzoKPiA+ID4gPiBPbiBGcmksIE9j
dCAxNywgMjAyNSBhdCAwNTo0Nzo0NFBNICswODAwLCBTaGF3biBMaW4gd3JvdGU6Cj4gPiAuLi4K
PiAKPiA+ID4gPiA+IFdoaWxlIHdlJ3JlIG9uIHRoZSB0b3BpYyBvZiBBU1BNLCBtYXkgSSBhc2sg
YSBzaWxseSBxdWVzdGlvbj8KPiA+ID4gPiA+IEkgc2F3IHRoZSBBU1BNIHdvdWxkIG9ubHkgYmUg
Y29uZmlndXJlZCBvbmNlIHRoZSBmdW5jdGlvbgo+ID4gPiA+ID4gZHJpdmVyIGNhbGxpbmcgcGNp
X2VuYWJsZV9kZXZpY2UuIFNvIGlmIHRoZSBtb2R1bGFyIGRyaXZlcgo+ID4gPiA+ID4gaGFzbid0
IGJlZW4gaW5zbW9kZWQsIHRoZSBsaW5rIHdpbGwgYmUgaW4gTDAgZXZlbiB0aG91Z2ggdGhlcmUK
PiA+ID4gPiA+IGlzIG5vIHRyYW5zY2F0aW9uIG9uLWdvaW5nLiBXaGF0IGlzIHRoZSBpbnRlbnRp
b24gYmVoaW5kIGl0Pwo+ID4gPiA+IAo+ID4gPiA+IEkgZG9uJ3Qgc2VlIHdoZXJlIEFTUE0gaXMg
Y29uZmlndXJlZCBkdXJpbmcgcGNpX2VuYWJsZV9kZXZpY2UoKS4KPiA+ID4gPiBJdCBpcyBjdXJy
ZW50bHkgY29uZmlndXJlZCBmb3IgYWxsIGRldmljZXMgZHVyaW5nCj4gPiA+ID4gcGNpX3NjYW5f
c2xvdCgpLgo+ID4gPiAKPiA+ID4gVGhpcyBpcyB0aGUgZHVtcF9zdGFjaygpIHdoZXJlIEkgb2Jz
ZXJ2ZWQuIElmIEkgY29tcGlsZSBOVk1lCj4gPiA+IGRyaXZlciBhcyBhIG1vZHVsZSBhbmQgbmV2
ZXIgaW5zbW9kIGl0LCB0aGUgbGluayBpcyBhbHdheXMgaW4gTDAsCj4gPiA+IG5hbWVseSBBU1BN
IERpc2FibGVkLgo+ID4gCj4gPiBJIGd1ZXNzIHRoaXMgY29tbWVudCBhbnN3ZXJzIHlvdXIgcXVl
c3Rpb246Cj4gPiBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dp
dC90b3J2YWxkcy9saW51eC5naXQvdHJlZS9kcml2ZXJzL3BjaS9wY2llL2FzcG0uYz9oPXY2LjE4
LXJjMSNuMTE3OQo+IAo+IFRoZSBjb21tZW50IGlzOgo+IAo+ICAgICogQXQgdGhpcyBzdGFnZSBk
cml2ZXJzIGhhdmVuJ3QgaGFkIGFuIG9wcG9ydHVuaXR5IHRvIGNoYW5nZSB0aGUKPiAgICAqIGxp
bmsgcG9saWN5IHNldHRpbmcuIEVuYWJsaW5nIEFTUE0gb24gYnJva2VuIGhhcmR3YXJlIGNhbiBj
cmlwcGxlCj4gICAgKiBpdCBldmVuIGJlZm9yZSB0aGUgZHJpdmVyIGhhcyBoYWQgYSBjaGFuY2Ug
dG8gZGlzYWJsZSBBU1BNLCBzbwo+ICAgICogZGVmYXVsdCB0byBhIHNhZmUgbGV2ZWwgcmlnaHQg
bm93LiBJZiB3ZSdyZSBlbmFibGluZyBBU1BNIGJleW9uZAo+ICAgICogdGhlIEJJT1MncyBleHBl
Y3RhdGlvbiwgd2UnbGwgZG8gc28gb25jZSBwY2lfZW5hYmxlX2RldmljZSgpIGlzCj4gICAgKiBj
YWxsZWQuCj4gCj4gSSBkb24ndCB0aGluayByZWx5aW5nIG9uIGEgZHJpdmVyIHRvIGRpc2FibGUg
QVNQTSB0byBhdm9pZCBicm9rZW4KPiBoYXJkd2FyZSBpcyB0aGUgcmlnaHQgYW5zd2VyLiAgSWYg
dGhlIGRyaXZlciBpcyBuZXZlciBsb2FkZWQsIHdlIHdhc3RlCj4gcG93ZXIuICBBbmQgaWYgdGhl
IHVzZXIgZW5hYmxlcyBBU1BNIHZpYSBzeXNmcywgYXBwYXJlbnRseSB0aGUgZGV2aWNlCj4gbWF5
IGJlIGNyaXBwbGVkLgo+IAo+IEkgdGhpbmsgaXQgd291bGQgYmUgYmV0dGVyIHRvIGhhdmUgYW4g
ZW51bWVyYXRpb24tdGltZSBxdWlyayB0byBrZWVwCj4gdXMgZnJvbSBlbmFibGluZyBBU1BNLiAg
V2UgbWlnaHQgdHJpcCBvdmVyIHNvbWUgb2YgdGhpcyBicm9rZW4KPiBoYXJkd2FyZSwgYnV0IEkg
ZG9uJ3QgdGhpbmsgdGhlcmUgYXJlIHZlcnkgbWFueSBkcml2ZXJzIHRoYXQgZmlkZGxlCj4gd2l0
aCBBU1BNLCBzbyB3ZSBzaG91bGQgYmUgYWJsZSB0byBiZSBwcm9hY3RpdmUgYWJvdXQgaXQuCj4g
CgpUaGVyZSBhcmUgcXVpdGUgYSBiaXQgb2YgZHJpdmVycyBmaWRkbGluZyB3aXRoIEFTUE0gc3Rh
dGVzOgoKZ2l0IGdyZXAgLWwgUENJX0VYUF9MTktDVExfQVNQTUMgZHJpdmVycy8gfCB3YyAtbAoK
MTYKCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprg
rr/grrXgrq7gr40KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK

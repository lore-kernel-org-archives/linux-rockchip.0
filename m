Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83976CCD195
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Oct 2025 13:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=eCMHFpOBnHk7i/M/Td5GSLA4CK5BJy8LfeJ4gWYKbZo=; b=lGmXFdCYmr585M
	2f6Ve9UJGRVKogE4fF32UEbm3iifLOTHYKWlIgHKbI9utiWq6zrO2eCqa8/U6oe3KneYCGdkbR5vw
	p9bAmo85LNcLCgo3ajz6YzJmBShg4LUiTrB5UJoK5xy9jud+S/sGK2Ajekpnpvyx8OtVnSJhuGloH
	iHXsW62Lgr0uBr542yE+mOqIwzPKrjoFRfVNX4Hw+JliH675R4Zhw37NBj9V1TO8Xn2r+rdK/ZEfi
	sJn1c2Y+FYAFPwE288vqptwHS7GwHjWX9ZqloYrBQvEOlBxfA+dCTlk5BTVjujpIgT31QtjRE6Xll
	uhu82E/h/Z2OpN2UfUjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9kmM-00000007yCL-1F8F;
	Fri, 17 Oct 2025 13:45:58 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9kmK-00000007yBp-3WvH
	for linux-rockchip@lists.infradead.org;
	Fri, 17 Oct 2025 13:45:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 4A074602C0;
	Fri, 17 Oct 2025 13:45:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CA58AC4CEE7;
	Fri, 17 Oct 2025 13:45:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760708756;
	bh=tuwnSb9TH+cevkh2/f4qKgeRV6Xx5R3TxYUye1mrYXQ=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=srRHJW4nQ1b0MVA9JNlW2F4ekn1+j9gKj63pFwk39saI8PUpq1ruf2WNlXSwTqumL
	 2Ex2TP2p1UFI0qI7Y3LwQ87X1aK/71pllKS3NaWNrGvd86HoT6LOCaeUkTBkHSdgYU
	 4+1bQGGUtWS2OHNWt4rw4VQDSHKfzM2AwTluewPyPZgmjoE7oqExowX+oK6V1+rPoN
	 qauXtpkyTGw/DhLAtgINBExJmMY91MXlm4WofI2FeJBmOyQYJ7o+WZnlGCcoKCmsz2
	 D719sDFnCvDXzUFXZkQzp4VIGkoKN2Sy2wm73uZ92IUPsATzOl9Zd9lT/odA3JV1iG
	 9DIXzS1EXp56A==
Date: Fri, 17 Oct 2025 08:45:54 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
	Niklas Cassel <cassel@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Rob Herring <robh@kernel.org>, linux-pci@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	"David E. Box" <david.e.box@linux.intel.com>,
	Kai-Heng Feng <kai.heng.feng@canonical.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Chia-Lin Kao <acelan.kao@canonical.com>,
	Dragan Simic <dsimic@manjaro.org>,
	linux-rockchip@lists.infradead.org, regressions@lists.linux.dev,
	FUKAUMI Naoki <naoki@radxa.com>
Subject: Re: [PATCH v2 1/2] PCI/ASPM: Override the ASPM and Clock PM states
 set by BIOS for devicetree platforms
Message-ID: <20251017134554.GA1027663@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4pm5tizc2c4c75h23izalhysuljnlfzpxuawhzezmnnqic2tdf@l2rcj24rmru3>
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

T24gRnJpLCBPY3QgMTcsIDIwMjUgYXQgMDY6MjQ6MjZQTSArMDUzMCwgTWFuaXZhbm5hbiBTYWRo
YXNpdmFtIHdyb3RlOgo+IE9uIEZyaSwgT2N0IDE3LCAyMDI1IGF0IDA4OjE5OjExUE0gKzA4MDAs
IFNoYXduIExpbiB3cm90ZToKPiA+IOWcqCAyMDI1LzEwLzE3IOaYn+acn+S6lCAxODowNCwgTWFu
aXZhbm5hbiBTYWRoYXNpdmFtIOWGmemBkzoKPiA+ID4gT24gRnJpLCBPY3QgMTcsIDIwMjUgYXQg
MDU6NDc6NDRQTSArMDgwMCwgU2hhd24gTGluIHdyb3RlOgo+IC4uLgoKPiA+ID4gPiBXaGlsZSB3
ZSdyZSBvbiB0aGUgdG9waWMgb2YgQVNQTSwgbWF5IEkgYXNrIGEgc2lsbHkgcXVlc3Rpb24/Cj4g
PiA+ID4gSSBzYXcgdGhlIEFTUE0gd291bGQgb25seSBiZSBjb25maWd1cmVkIG9uY2UgdGhlIGZ1
bmN0aW9uCj4gPiA+ID4gZHJpdmVyIGNhbGxpbmcgcGNpX2VuYWJsZV9kZXZpY2UuIFNvIGlmIHRo
ZSBtb2R1bGFyIGRyaXZlcgo+ID4gPiA+IGhhc24ndCBiZWVuIGluc21vZGVkLCB0aGUgbGluayB3
aWxsIGJlIGluIEwwIGV2ZW4gdGhvdWdoIHRoZXJlCj4gPiA+ID4gaXMgbm8gdHJhbnNjYXRpb24g
b24tZ29pbmcuIFdoYXQgaXMgdGhlIGludGVudGlvbiBiZWhpbmQgaXQ/Cj4gPiA+IAo+ID4gPiBJ
IGRvbid0IHNlZSB3aGVyZSBBU1BNIGlzIGNvbmZpZ3VyZWQgZHVyaW5nIHBjaV9lbmFibGVfZGV2
aWNlKCkuCj4gPiA+IEl0IGlzIGN1cnJlbnRseSBjb25maWd1cmVkIGZvciBhbGwgZGV2aWNlcyBk
dXJpbmcKPiA+ID4gcGNpX3NjYW5fc2xvdCgpLgo+ID4gCj4gPiBUaGlzIGlzIHRoZSBkdW1wX3N0
YWNrKCkgd2hlcmUgSSBvYnNlcnZlZC4gSWYgSSBjb21waWxlIE5WTWUKPiA+IGRyaXZlciBhcyBh
IG1vZHVsZSBhbmQgbmV2ZXIgaW5zbW9kIGl0LCB0aGUgbGluayBpcyBhbHdheXMgaW4gTDAsCj4g
PiBuYW1lbHkgQVNQTSBEaXNhYmxlZC4KPiAKPiBJIGd1ZXNzIHRoaXMgY29tbWVudCBhbnN3ZXJz
IHlvdXIgcXVlc3Rpb246Cj4gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tl
cm5lbC9naXQvdG9ydmFsZHMvbGludXguZ2l0L3RyZWUvZHJpdmVycy9wY2kvcGNpZS9hc3BtLmM/
aD12Ni4xOC1yYzEjbjExNzkKClRoZSBjb21tZW50IGlzOgoKICAgKiBBdCB0aGlzIHN0YWdlIGRy
aXZlcnMgaGF2ZW4ndCBoYWQgYW4gb3Bwb3J0dW5pdHkgdG8gY2hhbmdlIHRoZQogICAqIGxpbmsg
cG9saWN5IHNldHRpbmcuIEVuYWJsaW5nIEFTUE0gb24gYnJva2VuIGhhcmR3YXJlIGNhbiBjcmlw
cGxlCiAgICogaXQgZXZlbiBiZWZvcmUgdGhlIGRyaXZlciBoYXMgaGFkIGEgY2hhbmNlIHRvIGRp
c2FibGUgQVNQTSwgc28KICAgKiBkZWZhdWx0IHRvIGEgc2FmZSBsZXZlbCByaWdodCBub3cuIElm
IHdlJ3JlIGVuYWJsaW5nIEFTUE0gYmV5b25kCiAgICogdGhlIEJJT1MncyBleHBlY3RhdGlvbiwg
d2UnbGwgZG8gc28gb25jZSBwY2lfZW5hYmxlX2RldmljZSgpIGlzCiAgICogY2FsbGVkLgoKSSBk
b24ndCB0aGluayByZWx5aW5nIG9uIGEgZHJpdmVyIHRvIGRpc2FibGUgQVNQTSB0byBhdm9pZCBi
cm9rZW4KaGFyZHdhcmUgaXMgdGhlIHJpZ2h0IGFuc3dlci4gIElmIHRoZSBkcml2ZXIgaXMgbmV2
ZXIgbG9hZGVkLCB3ZSB3YXN0ZQpwb3dlci4gIEFuZCBpZiB0aGUgdXNlciBlbmFibGVzIEFTUE0g
dmlhIHN5c2ZzLCBhcHBhcmVudGx5IHRoZSBkZXZpY2UKbWF5IGJlIGNyaXBwbGVkLgoKSSB0aGlu
ayBpdCB3b3VsZCBiZSBiZXR0ZXIgdG8gaGF2ZSBhbiBlbnVtZXJhdGlvbi10aW1lIHF1aXJrIHRv
IGtlZXAKdXMgZnJvbSBlbmFibGluZyBBU1BNLiAgV2UgbWlnaHQgdHJpcCBvdmVyIHNvbWUgb2Yg
dGhpcyBicm9rZW4KaGFyZHdhcmUsIGJ1dCBJIGRvbid0IHRoaW5rIHRoZXJlIGFyZSB2ZXJ5IG1h
bnkgZHJpdmVycyB0aGF0IGZpZGRsZQp3aXRoIEFTUE0sIHNvIHdlIHNob3VsZCBiZSBhYmxlIHRv
IGJlIHByb2FjdGl2ZSBhYm91dCBpdC4KCj4gQnV0IHdpdGggdGhlIHJlY2VudCBBU1BNIGNoYW5n
ZSwgdGhlIEFTUE0gc2V0dGluZ3MgZm9yIERUIHBsYXRmb3Jtcwo+IHdpbGwgYmUgYXBwbGllZCBi
ZWZvcmUgcGNpX2VuYWJsZV9kZXZpY2UoKS4gQWxzbywgdGhlIGNvbW1lbnQgaXMKPiBzb21ld2hh
dCBvdXRkYXRlZCBhcyB3ZSBnZW5lcmFsbHkgZG8gbm90IHdhbnQgUENJIGNsaWVudCBkcml2ZXJz
IHRvCj4gZW5hYmxlL2Rpc2FibGUgQVNQTSBub3dhZGF5cy4gVGhleSBjYW4gaG93ZXZlciBkbyBp
dCB1bmRlciBzcGVjaWZpYwo+IGNpcmN1bXN0YW5jZXMuCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

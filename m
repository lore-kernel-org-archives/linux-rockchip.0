Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D415FCAC5AC
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Sep 2025 00:33:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X6vQ90ymPeb3wtlwl26gITjPvaBBHplIqojn1WvfKjQ=; b=fJ2qYoGevWRJxO
	bB3TgrGvG6AuMifyMA+hal+i9GyRqFcEsnnpO7eL6Qnip6uPhGDJEEjImlazMSdtwSpcdedEGN/9g
	AS0cHEzOJeRtknh04Aky3Y6iTqBErb4mgCrHPlPMfKwuy6FJwvrOHoUuz0b++arHdG8o/H3R+LlAx
	kQ6tVVJSkQYyzSvVlx9Gnst9ApQGkR9SPTtKM1ez1nEVGlqqXyT20DEkHEfzx61CxCJZekmuHE7fJ
	cP/BliLw6XWbx3TtHHAQdg3wa2J+fR2ywdjgvVJZZXDOfVi3BR6djAAbegvCRVRo9SYFOgFX2eT8i
	R8GbxDoewdH3238Wf0yA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1DRW-0000000FDel-1aro;
	Wed, 24 Sep 2025 00:33:10 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1DRU-0000000FDdt-1MAl
	for linux-rockchip@lists.infradead.org;
	Wed, 24 Sep 2025 00:33:09 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 9506D43E47;
	Wed, 24 Sep 2025 00:33:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 03F80C4CEF5;
	Wed, 24 Sep 2025 00:33:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758673987;
	bh=GYh+T60aPVzE/4gFL57fQ4DILcdLAVjkFQXNdxEKZKQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BpnOoacWt6ieLP9kUKOys+y24d8NOLIUMbdXZGlU94O6nOnfzzuD4u160s2u03o6M
	 bdUyBuUe8YbQRuugD66ABP57GkEL3TRbu6Qy10MVDt9nEO0X8HKIUPuiFPZnot+tVK
	 ebdudW2+8TXLd1UxCNxKfnjjUpYGOhAnPjnqTJHlxNOg1YVCvzHTsktoz8/9zB4lqM
	 W6TLd1CfhK/TBn32eaNVyEWFgJTvnuZHehR5A5vosISvUMA+poJchlsCq/BHEU4hM1
	 45Zwo7E1SZaEFB8vOfNuAZeF11LcUeJVopgq255in4xaOJI3BPGcsaFBxWj7Di5gAb
	 rHfqs4ItQr1Zw==
Received: by venus (Postfix, from userid 1000)
	id E10E11805CF; Wed, 24 Sep 2025 02:33:02 +0200 (CEST)
Date: Wed, 24 Sep 2025 02:33:02 +0200
From: Sebastian Reichel <sre@kernel.org>
To: Brian Masney <bmasney@redhat.com>
Cc: Stefan Schmidt <stefan@datenfreihafen.org>, 
	Jan Lubbe <jlu@pengutronix.de>, stefan.schmidt@linaro.org, linux-embedded@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	Heikki Krogerus <heikki.krogerus@linux.intel.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	RD Babiera <rdbabiera@google.com>, Amit Sunil Dhamne <amitsd@google.com>, kernel@collabora.com
Subject: Re: Call for Participation: Embedded & IoT micro-conference at Linux
 Plumbers 2025
Message-ID: <77modncqnoeumho6pi6dygr3hnw6dskd6romu4agmi5jro7p54@i5y4gpd22xrm>
References: <2a353817-f1da-4e7c-8b2c-0853779ec054@datenfreihafen.org>
 <j5dtkmnu55ycmqpaseazots7mevqyt5lafclvguxj6oz5r5cts@n563dsnvwuu7>
 <CABx5tq+U_hcmxXDCGpTawsu5C0bDknC=p1Rq3FrtVuJq9gj2Pw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABx5tq+U_hcmxXDCGpTawsu5C0bDknC=p1Rq3FrtVuJq9gj2Pw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250923_173308_412911_9F3D299C 
X-CRM114-Status: GOOD (  28.66  )
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

SGkgQnJpYW4sCgpPbiBUdWUsIFNlcCAyMywgMjAyNSBhdCAwNzozODoxNFBNIC0wNDAwLCBCcmlh
biBNYXNuZXkgd3JvdGU6Cj4gSGkgU2ViYXN0aWFuLAo+IAo+IE9uIFR1ZSwgU2VwIDIzLCAyMDI1
IGF0IDc6MDPigK9QTSBTZWJhc3RpYW4gUmVpY2hlbCA8c3JlQGtlcm5lbC5vcmc+IHdyb3RlOgo+
ID4gSSB3b3VsZCBsaWtlIHRvIHByZXNlbnQgLyBkaXNjdXNzIGZ1c2IzMDIgKG9yIG90aGVyIGNo
aXBzIGhhbmRsZWQgdmlhCj4gPiB0aGUgVENQTSBmcmFtZXdvcmspIHVzaW5nIGJvYXJkcyB0aGF0
IGFyZSBtYWlubHkgcG93ZXJlZCB2aWEgVVNCLUMgYW5kCj4gPiBub3QgaGF2aW5nIGFueSBiYWNr
dXAgcG93ZXIgc291cmNlLiBUaGlzIGtpbmQgb2Ygc2V0dXAgaXMgb2Z0ZW4gZm91bmQKPiA+IG9u
IFJvY2tjaGlwIGJvYXJkcyAoZS5nLiBMaWJyZSBDb21wdXRlciBST0MtUkszMzk5LVBDLCBSYWR4
YSBST0NLIDVCCj4gPiBvciBBcm1Tb00gU2lnZSA1KSBhbmQgcXVpdGUgYSBwYWluLCBiZWNhdXNl
IGEgaGFyZC1yZXNldCBlZmZlY3RpdmVseQo+ID4ga2lsbHMgdGhlIGJvYXJkIHBvd2VyLgo+ID4K
PiA+IEkgd291bGQgcHJlc2VudCB0aGUgcHJvYmxlbShzKSwgd2hhdCBJJ3ZlIGRvbmUgc28gZmFy
IHRvIGdldCBpdCB3b3JraW5nCj4gPiB0byBzb21lIGRlZ3JlZSB3aXRoIHRoZSB1cHN0cmVhbSBr
ZXJuZWwgYW5kIHRoZW4gZGlzY3VzcyBob3cgdG8gaW1wcm92ZQo+ID4gdGhlIHNpdHVhdGlvbi4K
PiA+Cj4gPiBJIHRoaW5rIHRvIGJlY29tZSBhIHdvcnRod2hpbGUgZGlzY3Vzc2lvbiB0aGUgc2Vz
c2lvbiB3b3VsZCBuZWVkIHNvbWUKPiA+IHBlb3BsZSB0aGF0IGtub3cgdGhlIFVTQi1QRCBzcGVj
aWZpY2F0aW9uIGFuZCBrZXJuZWwgc3Vic3lzdGVtLCBzdWNoIGFzOgo+ID4KPiA+ICAqIEhlaWtr
aSBLcm9nZXJ1cyAoVVNCLUMgbWFpbnRhaW5lcikKPiA+ICAqIEdyZWcgS3JvYWgtSGFydG1hbiAo
VVNCIG1haW50YWluZXIpCj4gPiAgKiBSRCBCYWJpZXJhIG9yIEFtaXQgU3VuaWwgRGhhbW5lIChH
b29nbGUgaXMgYWN0aXZlbHkgd29ya2luZyBvbgo+ID4gICAgZW5zdXJpbmcgVENQTSBjb2RlIGJl
aW5nIGNvbXBhdGlibGUgd2l0aCB0aGUgVVNCLVBEIHNwZWNpZmljYXRpb24KPiA+ICAgIGFuZCB0
aGV5IHdlcmUgdW5oYXBweSBhYm91dCBzb21lIG9mIG15IGNoYW5nZXMgOikpCj4gPgo+ID4gUC5T
LjogSSdtIG5vdCBzdXJlIGhvdyB0aGUgQ2ZQIGZvciB0aGUgTFBDIG1pY3JvLWNvbmZlcmVuY2Vz
IHdvcmtzLgo+ID4gUGxlYXNlIHRlbGwgbWUgaWYgdGhpcyBtYWlsIGlzIG5vdCBnb29kIGVub3Vn
aCBhbmQgSSBuZWVkIHRvIGluc2VydAo+ID4gc29tZXRoaW5nIGludG8gc29tZSBzeXN0ZW0uCj4g
Cj4gWW91IG5lZWQgdG8gc3VibWl0IGEgcHJvcG9zYWwgdG8KPiBodHRwczovL2xwYy5ldmVudHMv
ZXZlbnQvMTkvYWJzdHJhY3RzLy4gWW91J2xsIGhhdmUgdG8gY3JlYXRlIGFuCj4gYWNjb3VudCwg
YW5kIHRoZXJlIHdpbGwgYmUgYSAiU3VibWl0IG5ldyBhYnN0cmFjdCIgYnV0dG9uIGF0IHRoZQo+
IGJvdHRvbSByaWdodCBvZiB0aGUgcGFnZS4KCkFoLCBJIHdhcyBjb25mdXNlZCBieSB0aGUgcGFn
ZSBub3QgbGlzdGluZyB0aGUgZW1iZWRkZWQgTUMuIEkgc2VlCml0IGFwcGVhcnMgaW4gdGhlIGRy
b3AgZG93biB3aGVuIHRyeWluZyB0byBzdWJtaXQgYSBuZXcgYWJzdHJhY3QuClRoYW5rcyBmb3Ig
dGhlIGhpbnQgLSBET05FLgoKPiBJIHdlbnQgdGhyb3VnaCB0aGUgcHJvY2VzcyBmb3IgYSB0YWxr
IHRoYXQgSSBzdWJtaXR0ZWQ6ICJGaXhpbmcgQ2xvY2sKPiBUcmVlIFByb3BhZ2F0aW9uIGluIHRo
ZSBDb21tb24gQ2xrIEZyYW1ld29yayIuIEl0J3MgcmVsYXRlZCB0byB0aGlzCj4gd29yazoKPiBo
dHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1jbGsvMjAyNTA5MjMtY2xrLXRlc3RzLWRvY3Mt
djQtMC05MjA1Y2IzZDNjYmFAcmVkaGF0LmNvbS9ULwoKT24gbW9zdCBwbGF0Zm9ybXMgSSB3b3Jr
ZWQgb24gd2UgdHJpZWQgdG8gaGF2ZSBhbiBleGNsdXNpdmUgUExMIHJvb3QKY2xvY2sgZm9yIERS
TSB0byBhdm9pZCB0aGVzZSBpc3N1ZXMuIEJ1dCBzb3VuZHMgbGlrZSBhIGdvb2QgdG9waWMhCgpH
cmVldGluZ3MsCgotLSBTZWJhc3RpYW4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK

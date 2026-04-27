Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB520FF886C
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Apr 2026 19:10:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9yGploL0HF66YAoQEhkR+lYnw4d30VsHg3boYlQsa6c=; b=hRE3w7SqQ4QV2/
	Ul8+hbIdSSa8ZAsDx2LYdYnC3OGsG0e+TVF1BfFhtsBc0j5nHkAo7MT9Tx1huL+lHW3199PdSxEcW
	ct2G35lLfPO9KZsF/8toTptkmsA7aLFGXwwl58DrM1roOoyxd/Yn0S514usRCcMSso/2OH1SHqKK5
	M0V1I5jAdOSh79Ul9nvpyoV768Nki0TweiHiEb58/a7D0eM3p5FytB8J8DdRgQoS632OO9Qp4lnGr
	BPpDENb0CXe0HlR2L8zzBrvrTjPrQuEgw1MKiIXnPV6HSpjD8pXnh4WP17o2GkVSJl6ONZ1wNm2Hg
	bI0uLTKvGbvETZbDpLpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHRLL-0000000027P-18QS;
	Mon, 27 Apr 2026 19:10:07 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHRLI-0000000025o-2uuQ;
	Mon, 27 Apr 2026 19:10:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=Rb4LC4RoKjMwkAoMYkZMORsdxxUBkkBcuhhkQcQ9qHU=; b=VaiZ0EuMs/V/UpaUqhIxQT4kOQ
	m2fmNRxLnBGy786PBF2Z0XkvBMAdhyEjrVoKui6GQ8giNSHAgxOJ65AnNm08rjG9ZcemAVGmlbYo/
	x0vLZwJUF06BH6iWuyebP6piC19SdZ3GLQlXRGSEATGAP7cM7uguCYD7l8bg82hup8QcS5AT6NLAK
	O1rudfGXB/blSVVheseL8grFMm70H+C1ElnAg1J4VOHI1ueOm2U+FYROlQkL8Vzg77Rlg4y8VwKlq
	IekUEQ9uAOQ5SFiBYkhiDulThCYOT1lPRHpbX2efjvngHBt09pilTEDB+hXdcnKs1SbNOdXWus5zo
	4MNyAfbg==;
From: Heiko Stuebner <heiko@sntech.de>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: kernel@collabora.com, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org,
 Diederik de Haas <diederik@cknow-tech.com>,
 Maud Spierings <maud_spierings@hotmail.com>
Subject: Re: [PATCH v5 05/10] drm/bridge: dw-hdmi-qp: Add HDMI 2.0 SCDC scrambling and
 high TMDS clock ratio support
Date: Mon, 27 Apr 2026 21:09:09 +0200
Message-ID: <890451008.0ifERbkFSE@phil>
In-Reply-To: <d3b5239b-e3d9-4d81-9220-d6057d670ff3@collabora.com>
References: <20260426-dw-hdmi-qp-scramb-v5-0-d778e70c317b@collabora.com>
 <3826043.PYKUYFuaPT@phil>
 <d3b5239b-e3d9-4d81-9220-d6057d670ff3@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260427_121004_764703_F7527100 
X-CRM114-Status: GOOD (  27.12  )
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

QW0gTW9udGFnLCAyNy4gQXByaWwgMjAyNiwgMTg6Mzk6NDQgTWl0dGVsZXVyb3DDpGlzY2hlIFNv
bW1lcnplaXQgc2NocmllYiBDcmlzdGlhbiBDaW9jYWx0ZWE6Cj4gSGVsbG8gSGVpa28sCj4gCj4g
VGhhbmtzIGZvciB0aGUgcXVpY2sgcmV2aWV3cyEKPiAKPiBPbiA0LzI3LzI2IDE6NDkgUE0sIEhl
aWtvIFN0dWVibmVyIHdyb3RlOgo+ID4gQW0gU29ubnRhZywgMjYuIEFwcmlsIDIwMjYsIDAyOjIw
OjE3IE1pdHRlbGV1cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgQ3Jpc3RpYW4gQ2lvY2Fs
dGVhOgo+ID4+IEVuYWJsZSBIRE1JIDIuMCBkaXNwbGF5IG1vZGVzIChlLmcuIDRLQDYwSHopIGJ5
IGFkZGluZyBTQ0RDIG1hbmFnZW1lbnQKPiA+PiBmb3IgdGhlIGhpZ2ggVE1EUyBjbG9jayByYXRp
byBhbmQgc2NyYW1ibGluZywgcmVxdWlyZWQgd2hlbiB0aGUgVE1EUwo+ID4+IGNoYXJhY3RlciBy
YXRlIGV4Y2VlZHMgdGhlIDM0MCBNSHogSERNSSAxLjRiIGxpbWl0Lgo+ID4+Cj4gPj4gQSBwZXJp
b2RpYyB3b3JrIGl0ZW0gbW9uaXRvcnMgdGhlIHNpbmsncyBzY3JhbWJsaW5nIHN0YXR1cyB0byBy
ZWNvdmVyCj4gPj4gZnJvbSBzaW5rLXNpZGUgcmVzZXRzLiAgT24gaG90cGx1ZyBkZXRlY3QsIGlm
IFNDREMgc2NyYW1ibGluZyBzdGF0ZSBpcwo+ID4+IG91dCBvZiBzeW5jIHdpdGggdGhlIGRyaXZl
ciwgdHJpZ2dlciBhIENSVEMgcmVzZXQgdG8gcmUtZXN0YWJsaXNoIHRoZQo+ID4+IGxpbmsuCj4g
Pj4KPiA+PiBSZWplY3QgbW9kZXMgcmVxdWlyaW5nIFRNRFMgcmF0ZXMgYWJvdmUgNjAwIE1Ieiwg
YXMgdGhvc2UgZmFsbCBpbiB0aGUKPiA+PiBIRE1JIDIuMSBGUkwgZG9tYWluIHdoaWNoIGlzIG5v
dCBzdXBwb3J0ZWQuIEluIG5vX2hwZCBjb25maWd1cmF0aW9ucywKPiA+PiBmdXJ0aGVyIHJlc3Ry
aWN0IHRvIDM0MCBNSHogc2luY2UgU0NEQyByZXF1aXJlcyBhIGNvbm5lY3RlZCBzaW5rLgo+ID4+
Cj4gPj4gVGVzdGVkLWJ5OiBEaWVkZXJpayBkZSBIYWFzIDxkaWVkZXJpa0Bja25vdy10ZWNoLmNv
bT4KPiA+PiBUZXN0ZWQtYnk6IE1hdWQgU3BpZXJpbmdzIDxtYXVkX3NwaWVyaW5nc0Bob3RtYWls
LmNvbT4KPiA+PiBTaWduZWQtb2ZmLWJ5OiBDcmlzdGlhbiBDaW9jYWx0ZWEgPGNyaXN0aWFuLmNp
b2NhbHRlYUBjb2xsYWJvcmEuY29tPgo+ID4+IC0tLQo+ID4+ICBkcml2ZXJzL2dwdS9kcm0vYnJp
ZGdlL3N5bm9wc3lzL2R3LWhkbWktcXAuYyB8IDE4OCArKysrKysrKysrKysrKysrKysrKysrKyst
LS0KPiA+PiAgMSBmaWxlIGNoYW5nZWQsIDE3MiBpbnNlcnRpb25zKCspLCAxNiBkZWxldGlvbnMo
LSkKPiA+Pgo+ID4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lz
L2R3LWhkbWktcXAuYyBiL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lub3BzeXMvZHctaGRtaS1x
cC5jCj4gPj4gaW5kZXggZDY0OWExY2YwN2Y1Li5jNDgyYThlN2RhMjUgMTAwNjQ0Cj4gPj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9zeW5vcHN5cy9kdy1oZG1pLXFwLmMKPiA+PiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lzL2R3LWhkbWktcXAuYwo+ID4+IEBAIC0y
LDYgKzIsNyBAQAo+ID4+ICAvKgo+ID4+ICAgKiBDb3B5cmlnaHQgKGMpIDIwMjEtMjAyMiBSb2Nr
Y2hpcCBFbGVjdHJvbmljcyBDby4sIEx0ZC4KPiA+PiAgICogQ29weXJpZ2h0IChjKSAyMDI0IENv
bGxhYm9yYSBMdGQuCj4gPj4gKyAqIENvcHlyaWdodCAoYykgMjAyNSBBbWF6b24uY29tLCBJbmMu
IG9yIGl0cyBhZmZpbGlhdGVzLgo+ID4gCj4gPiBJIGhhdmUgbm8gcmVhbCBjbHVlIGFib3V0IHRo
ZSBpbm5lciB3b3JraW5ncyBvZiBoZG1pLCBidXQgdGhhdCBsaW5lCj4gPiBkb2VzIG1ha2UgbWUg
Y3VyaW91cywgYmVjYXVzZSBubyBwYXJ0IG9mIHRoZSBwYXRjaCBhdXRob3JzaGlwIGRvZXMKPiA+
IG1lbnRpb24gQW1hem9uIDstKSAuCj4gCj4gVGhhdCB3YXMgaW50ZW50aW9uYWw6IGFsdGhvdWdo
IHRoZSBjb2RlIHdhcyB3cml0dGVuIGJ5IENvbGxhYm9yYSwgdGhlIGNvcHlyaWdodAo+IGJlbG9u
Z3MgdG8gQW1hem9uLgoKVGhleSBzZWxlY3RlZCBhIG5pY2UgY2hpcCB0aGVuIDotRAoKCj4gPiBB
bHNvIEkgdGhpbmsgIm9yIGl0J3MgYWZmaWxpYXRlcyIgbWlnaHQgYmUgd2F5IHRvbyBicm9hZCwg
YmVjYXVzZSB0aGlzCj4gPiBjYW4gYmUgZXNzZW50aWFsbHkgZXZlcnlvbmUuIFNvIG5vb25lIGlu
IHRoZSBmdXR1cmUgd2lsbCBrbm93IHdobyB0bwo+ID4gYXNrIG9uIGNvcHlyaWdodCBxdWVzdGlv
bnMuCj4gPiAKPiA+IFNpbWlsYXJseSB3aGVuIF9zb21lYm9keV8gY29tZXMgZm9yd2FyZCB3aXRo
ICJJIGhvbGQgYSBjb3B5cmlnaHQgb24gdGhpcyIKPiA+IG5vLW9uZSBjb3VsZCB2ZXJpZnkgdGhp
cyBjbGFpbSBhcyB3ZWxsLgo+ID4gCj4gPiBJIHNvbWVob3cgZXhwZWN0IF9vbmVfIGVudGl0eSBi
ZWluZyBzcGVjaWZpZWQsIG5vdCBwb3NzaWJseSBodW5kcmVkcy4KPiAKPiBIbW0sIEkgZm9sbG93
ZWQgdGhlIHdvcmRpbmcgYWxyZWFkeSB1c2VkIGVsc2V3aGVyZSBpbiB0aGUga2VybmVsIHRyZWU6
Cj4gCj4gJCBnaXQgZ3JlcCAnQ29weXJpZ2h0LipBbWF6b24uKmFmZmlsaWF0ZXMnIHwgd2MgLWwK
PiA5Mwo+IAo+IFRoZXJlIGFwcGVhcnMgdG8gYmUgb25seSBhIHNpbmdsZSBpbnN0YW5jZSB0aGF0
IG9taXRzIOKAnGFmZmlsaWF0ZXPigJ06Cj4gCj4gJCBnaXQgZ3JlcCAnQ29weXJpZ2h0LipBbWF6
b24nIHwgZ3JlcCAtdiBhZmZpbGlhdGVzCj4gZHJpdmVycy9wb3dlci9zdXBwbHkvbWF4MTQ2NTZf
Y2hhcmdlcl9kZXRlY3Rvci5jOiAqIENvcHlyaWdodCAoQykgQW1hem9uIFRlY2hub2xvZ2llcyBJ
bmMuIEFsbCByaWdodHMgcmVzZXJ2ZWQuCj4gCj4gV2hpY2ggd2FzIGFkZGVkIG5lYXJseSB0ZW4g
eWVhcnMgYWdvLCBzbyBJ4oCZbSBub3Qgc3VyZSBpdCBtYWtlcyBzZW5zZSB0byBhZG9wdAo+IHRo
YXQgZm9ybSBub3cuCj4gCj4gQWN0dWFsbHksIHRoaXMgc2VlbXMgdG8gYmUgZmFpcmx5IGNvbW1v
biBhbW9uZyBvdGhlciB2ZW5kb3JzIGFzIHdlbGw6Cj4gCj4gJCBnaXQgZ3JlcCAnQ29weXJpZ2h0
LiphZmZpbGlhdGVzJyB8IHdjIC1sCj4gMTAxNAoKb2theSB0aGVuIC4uLiBpZiB0aGF0IGlzIGFs
cmVhZHkgdXNlZCBhIGxvdCwgYW5kIG5vYm9keSBlbHNlIGNvbXBsYWluZWQKdGhlbiBpdCBzaG91
bGQgYmUgZmluZSBJIGd1ZXNzIDotKSAuCgpJdCBqdXN0IHNvdW5kZWQgc3RyYW5nZSB0byBtZSB3
aGVuIHJlYWRpbmcgdGhhdCBlYXJsaWVyLgoKClRoYW5rcyBhIGxvdCBmb3IgZGlnZ2luZyB0aG9z
ZSBzdGF0cyB1cApIZWlrbwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==

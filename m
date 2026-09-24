Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABF75C98317
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Sep 2026 12:11:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0heeaue6njwQ09zoeDRCto1wEcirnlGEKoYZQVRBBBg=; b=mVLG4vfF9Lbz7S
	glQhk/D20J2zhVRCupvBCE6cmKtKEIJxgPH/kbM//3zRFVlle5a1HF4isvgkQDThM8jVXYXj2tPEO
	mN3fTws9vo8RQsK+212C0CcVr+xA9tXbYDOKIm4LTw1Z8TpT2gw9dX0Eughi/V9pNm327/4Zdzgtr
	2eKVwjTyxk5rVUjgd63N8dYlLPZKTDBTN1XxWUMvkb4NdkpJ1vsGRh6u59w8+ubkF0X7ORj2f4+Kj
	stJtJu8eXwWevAeY18jSoLcHAcM1uVXrIAcqdowzGC0+xamImfcaMXBhivIAT8NqFgxJumep7lVLv
	M6t4VnZxDBfhgqH5hjwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9iIP-0000000AwZZ-05Q1;
	Thu, 24 Sep 2026 12:11:25 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9iIM-0000000AwXi-306O;
	Thu, 24 Sep 2026 12:11:23 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1790251823; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=SMMG8NlP4fqBNXx529QZu5Zdtb4p9tbuMOQ91soQIHcDnn4ZYV2Qq6DwCOwr678Uo7p8enklMkZmlGtEeJGziTS1PKR38Ch/HKt4o33k5EJ7Vn5Q4viwpc3HWxbVLfSZ2E0v1befX4gf1zmvugKkk/KyrSeBPBpn9VFZmOokLPs=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1790251823; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=j/JN7+ozPHQKLl/xICwnFADe4iQfIt+/rqVhH5CZrYA=; 
	b=JA02mZ1JM5S0BN3yBf3uyS3rHRpQxWB4DFfmHKkMiPasUG1Oj8qL1w/U6XepZzR2eFpxM5PIYcUrWJusagOO9ZEQ+jQPQMSc0WlC2bLpOSUi2Z23Yxe4/RwXxRq0p4pDbMr3OfPvJzEp1NzpH95dhfCqZ97kDljvcaqPxuUeohg=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1790251823;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=j/JN7+ozPHQKLl/xICwnFADe4iQfIt+/rqVhH5CZrYA=;
	b=Xu+gcUfbDupdDGdO0xZeIAWmvh740ouAqQ7g8/OfYe3MpyVK0wF1tXyDTwBDYT7Y
	xzFD/uVYj2XViaDeb0kVdScnlodkBeibyV7UnNF63LSAYs+THvk3+ng2ALMvv9/0UXO
	CFkcvJQVJ5wXPkjrdhI7uNuS90bR8L/xns/jDyGA=
Received: by smtp.zohomail.com with SMTPS id 1790251821166727.927772036528;
	Thu, 24 Sep 2026 05:10:21 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
To: Vidith Madhu <vmadhu@nvidia.com>
Cc: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 Leo Li <sunpeng.li@amd.com>, Daniel Stone <daniels@collabora.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Helge Deller <deller@gmx.de>, Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>, Sandy Huang <hjc@rock-chips.com>,
 Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>,
 Andy Yan <andy.yan@rock-chips.com>,
 Michel =?UTF-8?B?RMOkbnplcg==?= <michel.daenzer@mailbox.org>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-fbdev@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, kernel@collabora.com,
 Derek Foreman <derek.foreman@collabora.com>,
 wayland-devel@lists.freedesktop.org
Subject: Re: [PATCH RFC 13/25] drm: Add VRR target frame rate properties
Date: Thu, 24 Sep 2026 14:10:13 +0200
Message-ID: <JMjFKVeURZyGX22Pj_CGcQ@collabora.com>
In-Reply-To: <6fb8aaed-5abc-db9c-b09b-3390d8b87686@nvidia.com>
References: <20260921-vrr-limiter-uapi-v1-0-2fcd7d011646@collabora.com>
 <YozwdeJLQh-0GBcK9P3QvQ@collabora.com>
 <6fb8aaed-5abc-db9c-b09b-3390d8b87686@nvidia.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260924_051122_787500_6074B4B0 
X-CRM114-Status: GOOD (  29.32  )
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

T24gVGh1cnNkYXksIDI0IFNlcHRlbWJlciAyMDI2IDA5OjAxOjA1IENlbnRyYWwgRXVyb3BlYW4g
U3VtbWVyIFRpbWUgVmlkaXRoIE1hZGh1IHdyb3RlOgo+IAo+IE9uIFdlZCwgMjMgU2VwIDIwMjYs
IE5pY29sYXMgRnJhdHRhcm9saSB3cm90ZToKPiAKPiA+IE9uIFdlZG5lc2RheSwgMjMgU2VwdGVt
YmVyIDIwMjYgMTE6NTE6NDUgQ2VudHJhbCBFdXJvcGVhbiBTdW1tZXIgVGltZSBNaWNoZWwgRMOk
bnplciB3cm90ZToKPiA+ID4gT24gOS8yMS8yNiAxNzo1MSwgTmljb2xhcyBGcmF0dGFyb2xpIHdy
b3RlOgo+ID4gPiA+IAo+ID4gPiA+ICsgKiAuLiBfVlJSLU1JTi1OVU1FUkFUT1I6Cj4gPiA+ID4g
KyAqCj4gPiA+ID4gKyAqICJWUlJfTUlOX05VTUVSQVRPUiI6Cj4gPiA+ID4gKyAqCURlZmF1bHQg
JmRybV9jcnRjIGludGVnZXIgcHJvcGVydHkgZm9ybWluZyB0aGUgbnVtZXJhdG9yIG9mIGEKPiA+
ID4gPiArICoJbnVtZXJhdG9yL2Rlbm9taW5hdG9yIHBhaXIgb2YgYSBmcmFtZSByYXRlIHRvIHNl
dCBhcyB0aGUgbWluaW11bSBWUlIKPiA+ID4gPiArICoJdGFyZ2V0IHJhdGUuIFNldCB0byAwIHRv
IGRpc2FibGUuCj4gPiA+ID4gKyAqCj4gPiA+ID4gKyAqICJWUlJfTUlOX0RFTk9NSU5BVE9SIjoK
PiA+ID4gPiArICoJRGVmYXVsdCAmZHJtX2NydGMgaW50ZWdlciBwcm9wZXJ0eSBmb3JtaW5nIHRo
ZSBkZW5vbWluYXRvciBvZiBhCj4gPiA+ID4gKyAqCW51bWVyYXRvci9kZW5vbWluYXRvciBwYWly
IG9mIGEgZnJhbWUgcmF0ZSB0byBzZXQgYXMgdGhlIG1pbmltdW0gVlJSCj4gPiA+ID4gKyAqCXRh
cmdldCByYXRlLiBJZiA6cmVmOmBWUlJfTUlOX05VTUVSQVRPUiA8VlJSLU1JTi1OVU1FUkFUT1I+
YCBpcyBub3QKPiA+ID4gPiArICoJemVybywgaXQgbXVzdCBiZSBub24temVyby4KPiA+ID4gPiAr
ICoJT3RoZXJ3aXNlLCBtdXN0IGFsc28gYmUgemVyby4KPiA+ID4gPiArICoKPiA+ID4gPiArICog
Li4gX1ZSUi1NQVgtTlVNRVJBVE9SOgo+ID4gPiA+ICsgKgo+ID4gPiA+ICsgKiAiVlJSX01BWF9O
VU1FUkFUT1IiOgo+ID4gPiA+ICsgKglEZWZhdWx0ICZkcm1fY3J0YyBpbnRlZ2VyIHByb3BlcnR5
IGZvcm1pbmcgdGhlIG51bWVyYXRvciBvZiBhCj4gPiA+ID4gKyAqCW51bWVyYXRvci9kZW5vbWlu
YXRvciBwYWlyIG9mIGEgZnJhbWUgcmF0ZSB0byBzZXQgYXMgdGhlIG1heGltdW0gVlJSCj4gPiA+
ID4gKyAqCXRhcmdldCByYXRlLiBTZXQgdG8gMCB0byBkaXNhYmxlLgo+ID4gPiA+ICsgKgo+ID4g
PiA+ICsgKiAiVlJSX01BWF9ERU5PTUlOQVRPUiI6Cj4gPiA+ID4gKyAqCURlZmF1bHQgJmRybV9j
cnRjIGludGVnZXIgcHJvcGVydHkgZm9ybWluZyB0aGUgZGVub21pbmF0b3Igb2YgYQo+ID4gPiA+
ICsgKgludW1lcmF0b3IvZGVub21pbmF0b3IgcGFpciBvZiBhIGZyYW1lIHJhdGUgdG8gc2V0IGFz
IHRoZSBtYXhpbXVtIFZSUgo+ID4gPiA+ICsgKgl0YXJnZXQgcmF0ZS4gSWYgOnJlZjpgVlJSX01B
WF9OVU1FUkFUT1IgPFZSUi1NQVgtTlVNRVJBVE9SPmAgaXMgbm90Cj4gPiA+ID4gKyAqCXplcm8s
IGl0IG11c3QgYmUgbm9uLXplcm8uIE90aGVyd2lzZSwgbXVzdCBhbHNvIGJlIHplcm8uCj4gPiA+
ID4gICAqLwo+ID4gPiAKPiA+ID4gSXMgdGhlcmUgYSByZWFzb24gdGhhdCBERU5PTUlOQVRPUiBt
dXN0IGJlIDAgd2hlbiB0aGUgY29ycmVzcG9uZGluZyBOVU1FUkFUT1IgaXM/IDAgZGl2aWRlZCBi
eSBhbnkgbnVtYmVyIGlzIHN0aWxsIDAuCj4gPiAKPiA+IE5vLCBJIHRoaW5rIHRoYXQncyBhbiBh
cmJpdHJhcnkgY29udmVudGlvbiBJIHNldHRsZWQgb24gYW5kIGRvbid0IGVuZm9yY2UuIEkKPiA+
IGd1ZXNzIGl0IHNob3VsZCBiZSAiT3RoZXJ3aXNlLCBtYXkgYWxzbyBiZSB6ZXJvIiwgYmVjYXVz
ZSB0aGUgb25seSBzaXR1YXRpb24KPiA+IEknbSBtYWtpbmcgdXNlcnNwYWNlIGF2b2lkIGlzIHgv
MCB3aGVyZSB4ICE9IDAuCj4gPiAKPiA+ID4gPiBFaXRoZXIgd2F5LCBzaG91bGQgdGhlc2UgcnVs
ZXMgYmUgZW5mb3JjZWQgaW4gZHJtX2F0b21pY19jcnRjX3NldF9wcm9wZXJ0eT8KPiA+ID4gCj4g
PiA+IE9yIHJhdGhlciBpbiBhdG9taWNfY2hlY2suCj4gPiAKPiA+IER1ZSB0byBjb21wbGljYXRp
bmcgZmFjdG9ycyBsaWtlIEVESUQsIENpbmVtYVZSUiwgYW5kIFFNUyBURlJtaW4vVEZSbWF4LCBj
aGVja2luZwo+ID4gdGhlIHByb3BlcnRpZXMgZm9yIHNlbnNpYmxlIHZhbHVlcyBpcyBkb25lIGlu
IHRoZSBIRE1JIHN0YXRlIGhlbHBlcnMgYXQgdGhlIG1vbWVudC4KPiA+IAo+ID4gSWYvd2hlbiB0
aGVyZSBpcyBhIHNpbWlsYXIgbWVjaGFuaXNtIGZvciBEUCwgd2UgY2FuIHByb2JhYmx5IGZhY3Rv
ciB0aGUgY29tbW9uCj4gPiBwYXJ0cyBvdXQuIEkgcmVhbGx5IGRvIGhvcGUgYWxsIGRyaXZlcnMg
KGluY2x1ZGluZyB0aG9zZSB0aGF0IGRvbid0IHVzZSB0aGUgSERNSQo+ID4gc3RhdGUgaGVscGVy
cykgY2FuIGF0IGxlYXN0IHNoYXJlIHRoZSBoZG1pX3ZhbGlkYXRlX3ZycigpIGxvZ2ljLCBidXQg
SSBoYXZlbid0Cj4gPiBmYWN0b3JlZCB0aGlzIG91dCBpbnRvIGFuIGV4cG9ydGVkIGZ1bmN0aW9u
IHlldCBiZWNhdXNlIEkgZG9uJ3Qga25vdyBob3cgc2ltaWxhcgo+ID4gdGhlIERpc3BsYXlQb3J0
LWVxdWl2YWxlbnQgbWVjaGFuaXNtcyByZXF1aXJlbWVudHMgYXJlLCBvciBob3cgbXVjaCBvZiB0
aGUgc3RhdGUKPiA+IGRlcml2YXRpb24gbm9uLXN0YXRlLWhlbHBlciBkcml2ZXJzIChpLmUuIGk5
MTUgYW5kIGFtZGdwdSkgbmVlZC4KPiA+IAo+ID4gS2luZCByZWdhcmRzLAo+ID4gTmljb2xhcyBG
cmF0dGFyb2xpCj4gCj4gVGhhbmtzIGZvciBicmluZ2luZyB1cCBzdXBwb3J0IGZvciBWUlIgZmVh
dHVyZXMgb24gRFAuIENvbmNlcm5pbmcgdGhlIAo+IGZyYW1lIHJhdGUgbGltaXRzIHRoZW1zZWx2
ZXMsIGFzIEkgbWVudGlvbmVkIGluIHBhdGNoIFswMi8yNV0gSSBkb24ndCAKPiB0aGluayB0aGVy
ZSdzIGEgcmVhc29uIHRvIGxpbWl0IHRoZSB2YWxpZGF0aW9uIHRvIEhETUkuCgpBZ3JlZWQuIEkg
dGhpbmsgZmFjdG9yaW5nIG1vc3Qgb2YgdGhlIHN0dWZmIG91dCBpbnRvIHRoZSBDUlRDIGF0b21p
YyBjaGVjawpwaGFzZSBpcyB3aGF0IEknbGwgZG8sIGFuZCB0aGVuIGtlZXAgdGhlIEhETUktc3Bl
Y2lmaWMgdmFsaWRhdGlvbiBhbmQKZGVyaXZhdGlvbiB3aXRoaW4gdGhlIEhETUkgc3RhdGUgaGVs
cGVycy4gVGhhdCBzaG91bGQgc29tZXdoYXQgc2ltcGxpZnkKdGhlIGNvZGUgYXMgd2VsbCBJIHRo
aW5rLgoKPiBUaGVyZSBpcyBpbiBmYWN0IGFuIGFuYWxvZyBvZiBRTVMgZm9yIERQLCBjYWxsZWQg
RFAtRkFWVCBtb2RlIC0gdGhpcyBpcwo+IHF1aXRlIGEgYml0IG1vcmUgc3RyZWFtbGluZWQgdGhh
biBRTVMgYW5kIHRoZSB2YWxpZGF0aW9uIHNob3VsZCBiZQo+IHNpbXBsZXIuIFdvdWxkIGJlIG5p
Y2UgdG8gc2VlIHRoZXNlIHByb3BlcnRpZXMgc3VwcG9ydCB0aGF0IGFzIHdlbGwKClllcCwgdGhl
IGludGVudCBpcyB0aGF0IHRoZSBwcm9wZXJ0aWVzIGFyZSBkaXNwbGF5IHByb3RvY29sIGFnbm9z
dGljLAppdCBqdXN0IHNvIGhhcHBlbnMgdGhhdCB0aGUgb25seSBpbXBsZW1lbnRhdGlvbiBJIHdy
b3RlIHNvIGZhciBpcwpzcGVjaWZpYyB0byBIRE1JLgoKQWxzbywgZ29vZCB0byBoZWFyIHRoZSBE
UCBRTVMtZXF1aXZhbGVudCBpcyBtb3JlIHN0cmVhbWxpbmVkLiA6KQoKPiAodGhpcyB3YXMgYnJp
ZWZseSBkaXNjdXNzZWQgYXQgRGlzcGxheU5leHQgSGFja0Zlc3QsIGlmIEkgdW5kZXJzdG9vZAo+
IGFjY2VzcyB0byB0aGUgRFAgc3BlYyBpcyB0aGUgbWFpbiBibG9ja2VyIGhlcmU/KS4KCkl0IGNl
cnRhaW5seSBpcyBhIGJsb2NrZXIuIFdlIGFsc28gZG9uJ3QgaGF2ZSBhbnkgZmFuY3kgdGVzdGlu
Zy92YWxpZGF0aW9uCmVxdWlwbWVudCwgc28gdmFsaWRhdGluZyBpbXBsZW1lbnRhdGlvbnMgZm9y
IHByb3RvY29scyBiZWZvcmUgdGhleSByZWFjaApjb25zdW1lciBkZXZpY2VzIGlzIGRpZmZpY3Vs
dCBmb3IgdXMgKENvbGxhYm9yYSkgYXQgdGhpcyB0aW1lLiBUaGF0J3MgYWxzbwp3aHkgaXQncyBh
IGdvb2QgaWRlYSBmb3IgYW55b25lIHdobyBoYXMgYWNjZXNzIHRvIHRoZSBleHBlbnNpdmUgc3Bl
Y2lhbGlzZWQKcHJvdG9jb2wgdGVzdCBlcXVpcG1lbnQgdG8gdmFsaWRhdGUgdGhhdCB0aGUgSERN
SSBWVEVNIEVNUCBwYWNrZXRzIHdlJ3JlCmNvbnN0cnVjdGluZyBhcmUgYWN0dWFsbHkgd2l0aGlu
IHNwZWMgYW5kIG5vdCBqdXN0IGEgImhhcHBlbnMgdG8gd29yayIga2luZApvZiBkZWFsLgoKS2lu
ZCByZWdhcmRzCk5pY29sYXMgRnJhdHRhcm9saQoKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

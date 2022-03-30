Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89F15C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Mar 2022 10:21:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b+wUrkjyYf66fy6DPEfKmktLH3Pob6EIIgW0hbjMY38=; b=KPzXZ4nVplB5QT
	v3GAsNZIr1lyi+I+ve/zTLZK74TROwJ7y2sHL0HbX7c2BUzbvFST8L4RTKIPHiT8lrMPq46qYaCW0
	LECBAIltMH4rxVGB2Yw5/4sw+G+P4JrWmz2ALnWNjr1ObxjMnUoyWXA5cVjZesXGjGGCkbRuDYUWm
	UwB49w2+daGZWE4tpg5+TvA+ilaP0zhV6tl3CnXh4OTYCL1c52YNPeRVxmvxcU/cHodlII73Ue2HF
	JtT04X/WQYFoYGwsuiD/NCtWg87FExae1o8WuKoXngdserf08jlDRicfpuGiur0S2S0IEpAnLPBei
	Q5pU0E/MmRgOmnbKafVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZVRm-00FAiD-D9; Wed, 30 Mar 2022 10:21:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZVRb-00FAfT-VZ
 for linux-rockchip@lists.infradead.org; Wed, 30 Mar 2022 10:20:53 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nZVRY-0007qA-T7; Wed, 30 Mar 2022 12:20:48 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nZVRW-0004Wn-5Y; Wed, 30 Mar 2022 12:20:46 +0200
Date: Wed, 30 Mar 2022 12:20:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: "piotro.oniszczuk@google.com" <piotr.oniszczuk@gmail.com>
Cc: dri-devel@lists.freedesktop.org,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 Heiko =?iso-8859-15?Q?St=FCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH v9 00/23] drm/rockchip: RK356x VOP2 support
Message-ID: <20220330102046.GA12181@pengutronix.de>
References: <20220328151116.2034635-1-s.hauer@pengutronix.de>
 <FB201567-AE5A-4242-82F1-7C55D8F111EA@gmail.com>
 <20220330072822.GX12181@pengutronix.de>
 <0D8F5951-5375-46B5-BFF0-7ED410371EB7@gmail.com>
 <20220330094556.GZ12181@pengutronix.de>
 <D3DA14F9-C9C6-4927-B015-5B7D25689DAA@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <D3DA14F9-C9C6-4927-B015-5B7D25689DAA@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 12:17:21 up 109 days, 19:02, 75 users,  load average: 0.10, 0.15,
 0.19
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220330_032052_026334_41D0CF61 
X-CRM114-Status: GOOD (  30.57  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

T24gV2VkLCBNYXIgMzAsIDIwMjIgYXQgMTI6MDE6MDVQTSArMDIwMCwgcGlvdHJvLm9uaXN6Y3p1
a0Bnb29nbGUuY29tIHdyb3RlOgo+IAo+IAo+ID4gV2lhZG9tb8WbxIcgbmFwaXNhbmEgcHJ6ZXog
U2FzY2hhIEhhdWVyIDxzLmhhdWVyQHBlbmd1dHJvbml4LmRlPiB3IGRuaXUgMzAuMDMuMjAyMiwg
byBnb2R6LiAxMTo0NToKPiA+IAo+ID4gT24gV2VkLCBNYXIgMzAsIDIwMjIgYXQgMTA6NDE6NTZB
TSArMDIwMCwgcGlvdHJvLm9uaXN6Y3p1a0Bnb29nbGUuY29tIHdyb3RlOgo+ID4gCj4gPiBMZXQg
bWUgcmVwaHJhc2UgdGhpczogVGhlIGFib3ZlIHNldHMgYSBwbGFuZSwgYnV0IGl0IGRvZXNuJ3Qg
c2V0IGEgbW9kZQo+ID4gb24gdGhlIGNydGMuIFdoZW4gbXkgc3lzdGVtIGJvb3RzIHVwIHRoZW4g
dGhlIG91dHB1dCBvZiBtb2RldGVzdCBsb29rcwo+ID4gbGlrZSB0aGlzOgo+ID4gCj4gPiBFbmNv
ZGVyczoKPiA+IGlkICAgICAgY3J0YyAgICB0eXBlICAgIHBvc3NpYmxlIGNydGNzICBwb3NzaWJs
ZSBjbG9uZXMKPiA+IDY4ICAgICAgMCAgICAgICBUTURTICAgIDB4MDAwMDAwMDEgICAgICAweDAw
MDAwMDAxCj4gPiBDb25uZWN0b3JzOgo+ID4gaWQgICAgICBlbmNvZGVyIHN0YXR1cyAgICAgICAg
ICBuYW1lICAgICAgICAgICAgc2l6ZSAobW0pICAgICAgIG1vZGVzICBlbmNvZGVycwo+ID4gNjkg
ICAgICAwICAgICAgIGNvbm5lY3RlZCAgICAgICBIRE1JLUEtMSAgICAgICAgNTMweDMwMCAgICAg
ICAgIDkgICAgICA2OAo+ID4gQ1JUQ3M6Cj4gPiBpZCAgICAgIGZiICAgICAgcG9zICAgICBzaXpl
Cj4gPiA2NyAgICAgIDAgICAgICAgKDAsMCkgICAoMHgwKQo+ID4gICMwICBuYW4gMCAwIDAgMCAw
IDAgMCAwIDAgZmxhZ3M6IDsgdHlwZTogCj4gPiAKPiA+IE5vIG1vZGUgaXMgc2V0IG9uIHRoZSBD
UlRDIGFuZCB0aGUgZW5jb2Rlci9jb25uZWN0b3IvY3J0YyBhcmUgbm90IGJvdW5kCj4gPiB0byBl
YWNoIG90aGVyLCBjb25zZXF1ZW50bHkgdGhlIHNjcmVlbiBpcyBpbiBzdGFuZGJ5LiAibW9kZXRl
c3QgLVAKPiA+IDQzQDY3OjE5MjB4MTA4MEBOVjEyIiBkb2Vzbid0IGNoYW5nZSB0aGlzLCBzdGls
bCBubyBtb2RlIHNldC4gSGVuY2UgbXkKPiA+IHF1ZXN0aW9uOiBIb3cgZGlkIHlvdSBzZXQgYSBt
b2RlIGluaXRpYWxseT8KPiAKPiBBaCBvay4gSSBzZWUgeW91ciBwb2ludC4KPiBtb2RlIGlzIHNl
dCBieSBhcHAgKHBsYXllcikuIAo+IAo+IFNlcXVlbmNlIHdhcyBsaWtlIHRoaXM6Cj4gLWJvb3Qg
Ym9hcmQKPiAtc3RhcnQgYXBwCj4gLW9uIFVJIHNlbGVjdCBwbGF5YmFjawo+IC1wbGF5YmFjayBo
YXMgZ3JlZW4gc2NyZWVuCj4gLWV4aXQgYXBwCj4gLXJ1biBtb2RldGVzdCAtUCA0M0A2NzoxOTIw
eDEwODBATlYxMiAodGhlIHNhbWUgZ3JlZW4gc2NyZWVuIGxpa2UgaW4gcGxheWJhY2spCj4gLXJ1
biBtb2RldGVzdCAtUCA0OUA2NzoxOTIweDEwODBATlYxMiAod29ya3Mgb2spCj4gLXJ1biBtb2Rl
dGVzdCAtUCA0M0A2NzoxOTIweDEwODBATlYxMiAobm93IHdvcmtzIG9rKQo+IAo+ID4gCj4gPj4+
IAo+ID4+IAo+ID4+IEknbSBub3Qgc3VyZSB0aGF0IGFib3ZlIGNvbW1hbmQgb25seSBzZXRzIHBs
YW5lLgo+ID4+IE9uIG90aGVyIFNvQ3MgaeKAmW0gdGVzdGluZyBpdCBnaXZlcyBleHBlY3RlZCBy
ZXN1bHRzOiBkaWFnb25hbCBjb2xvcmVkIHN0cmlwZXMuCj4gPj4gVGhlcmUgaXMgc2luZ2xlIGV4
Y2VwdGlvbjogcmszNTZ4IHdpdGggdm9wMiAtIHdoZXJlIHNjcmVlbiBpcyBncmVlbiB1bmxlc3Mg
aSDigJ5maXgvZW5hYmxl4oCdIGJ5IHBsYXlpbmcgd2l0aCBwbGFuZSAjNjkgICAKPiA+PiAKPiA+
Pj4gSSBkaWQgd2l0aCAibW9kZXRlc3QgLXMgNjlANjc6MTkyMHgxMDgwIC1kIiBhbmQgd2l0aCB0
aGlzIGl0IHdvcmtzIGFzCj4gPj4+IGV4cGVjdGVkLCBJIGNhbid0IHJlcHJvZHVjZSBhbnkgZ3Jl
ZW4gc2NyZWVuIGlzc3VlIGhlcmUuCj4gPj4gCj4gPj4gSSBzZWUgeW91IGFyZSB1c2luZyBwbGFu
ZSAjNjkuCj4gPj4gV2h5IG5vdCAjNDM/Cj4gPiAKPiA+IEkgdXNlZCAibW9kZXRlc3QgLXMgNjlA
Njc6MTkyMHgxMDgwIC1kIiB0byBzZXQgYSBtb2RlLiBUaGUgJzY5JyBpcyB0aGUKPiA+IGNvbm5l
Y3RvciBpZCwgbm90IGEgcGxhbmUuCj4gCj4gYWNrLgo+IHR5cG8gZnJvbSBteSBzaWRlLgo+IAo+
IGl0IHdhcwo+IG1vZGV0ZXN0IC1QIDQ5QDY3OjE5MjB4MTA4MEBOVjEyCj4gCj4gCj4gPiAKPiA+
PiBJcyBwbGFuZSAjNDMgd29ya2luZyBvayBmb3IgeW91Pwo+ID4gCj4gPiBZZXMuCj4gCj4gU28g
aXQgbG9va3MgeW91ciB0ZXN0aW5nIG1ldGhvZCBvZiAjNDMgaXMgbm90IG1lYW5pbmdmdWwgZm9y
IHZlcmlmeWluZyBpc3N1ZSB3ZSBhcmUgZGlzY3Vzc2luZyBoZXJlLgo+IAo+IEluIG15IGNhc2U6
Cj4gMTIgU09DIChleGNlcHQgcmszNTZ4IFZPUDIpIGdpdmVzIG1lOgo+IC1ib290IGJvYXJkCj4g
LXN0YXJ0IGFwcAo+IC1vbiBVSSBzZWxlY3QgcGxheWJhY2sKPiAtcGxheWJhY2sgaXMgb2sKPiAt
ZXhpdCBhcHAKPiAtcnVuIG1vZGV0ZXN0IC1QIFhYQFlZOjE5MjB4MTA4MEBOVjEyIChkaWFnb25h
bCBzdHJpcGVzKQo+IAo+IChYWC9ZWSBhcmUgcGxhbmUvY29ubmVjdG9yIGVsZWN0ZWQgYnkgYXBw
OiBwbGFuZUBjb25lY3RvciB3aXRoIGZvcm1hdCBtYXRjaGluZyBwcm92aWRlciBmb3JtYXQpIAo+
IAo+IHJrMzU2eCB3aXRoIHZvcDIgdjk6Cj4gLWJvb3QgYm9hcmQKPiAtc3RhcnQgYXBwCj4gLW9u
IFVJIHNlbGVjdCBwbGF5YmFjawo+IC1wbGF5YmFjayBoYXMgZ3JlZW4gc2NyZWVuCj4gLWV4aXQg
YXBwCj4gLXJ1biBtb2RldGVzdCAtUCA0M0A2NzoxOTIweDEwODBATlYxMiAodGhlIHNhbWUgZ3Jl
ZW4gc2NyZWVuIGxpa2UgaW4gcGxheWJhY2spCj4gLXJ1biBtb2RldGVzdCAtUCA0OUA2NzoxOTIw
eDEwODBATlYxMiAod29ya3Mgb2spCj4gLXJ1biBtb2RldGVzdCAtUCA0M0A2NzoxOTIweDEwODBA
TlYxMiAobm93IHdvcmtzIG9rKQoKRG9lcyBpdCBjaGFuZ2UgYW55dGhpbmcgaWYgeW91IGRvIGEg
Im1vZGV0ZXN0IC1zIDY5QDY3OjE5MjB4MTA4MCIgYmVmb3JlCnN0YXJ0aW5nIHRoZSBhcHA/IE9y
IGlmIHlvdSBydW4gIm1vZGV0ZXN0IC1QIDQzQDY3OjE5MjB4MTA4MEBOVjEyIgpiZWZvcmUgc3Rh
cnRpbmcgdGhlIGFwcD8gT3Igb3RoZXIgY29tYmluYXRpb25zIHRoZXJlb2Y/CgpTYXNjaGEKCi0t
IApQZW5ndXRyb25peCBlLksuICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgfApTdGV1ZXJ3YWxkZXIgU3RyLiAyMSAgICAgICAgICAgICAgICAg
ICAgICAgfCBodHRwOi8vd3d3LnBlbmd1dHJvbml4LmRlLyAgfAozMTEzNyBIaWxkZXNoZWltLCBH
ZXJtYW55ICAgICAgICAgICAgICAgICAgfCBQaG9uZTogKzQ5LTUxMjEtMjA2OTE3LTAgICAgfApB
bXRzZ2VyaWNodCBIaWxkZXNoZWltLCBIUkEgMjY4NiAgICAgICAgICAgfCBGYXg6ICAgKzQ5LTUx
MjEtMjA2OTE3LTU1NTUgfAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=

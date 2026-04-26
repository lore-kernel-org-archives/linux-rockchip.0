Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72677FF8860
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Apr 2026 09:55:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gc2O7vsVHkcoyKx+bXeQ5i88sFx6esFmLAO/uCkmiAc=; b=pjjgac6Vgyhe+V
	52ejiLYRKu9cVE29Vvj9pYrteRMPKajeGakdGv4OnqtadMpqxZbWiX0SCG0lAQz+6CsQh8OvIYErh
	JrrUUeIAtmMOl2FUuQUGNMvPJX2vJlK7XNPXPLVAiCm+c5bpJFRGe5cR+4RidiSYJCIt6GgiOglEK
	CCtoR33N5adB3bGjgul4aVY+N/8qhuxCTb8eS7JAvuwDK4W0EeVQqvpJflHN/ilRhjXYr7ODiN37y
	w4jGJ8wYmZAJkYJhMBO6Z0yk+DfuiVFEHfzMeclW30/xglNs/G5bwHchM44iAmZ6Cizqni/wHNTsc
	RoYQtYi+31m7iin2taSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGwCr-0000000FQFU-03NR;
	Sun, 26 Apr 2026 09:55:17 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGwCo-0000000FQEu-1sLJ;
	Sun, 26 Apr 2026 09:55:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=gV5QBlTsgLILU6JSw4kpZ5JoHyOHW2i+WmDaIwIjC9Q=; b=m/RnLxP8B4FG5gPj38wYUIyKCA
	CC9/YsFqeiKmTnfNyo7aW4aoT4sLU56ys9nX+rf3mmRGcIk95Zmoj7uIITMPpqNZYNasOQR3JINNa
	oA1x4aBNMQ5de6+rzVQYTtYpttYYN5AtwRuOJRzBGhhYZ+FORvC0OBhC9uN9J9aScekucU3ilfD9x
	AASX62TJqQ89SmONeYN2mK/FmwomBNMVo6Lamdpz0JOLIGnEuQEVnyouxtcPYWcZZL3gPW8+oYaT2
	SrwklFlVqsgB0qJgBWw4wKal98Mpm+EG7Qv2fJPMwDIFS3sXUZ3Q+bc8+uHmsWTQQSXDs95H/WPQ1
	frCIgW1g==;
From: Heiko Stuebner <heiko@sntech.de>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Dennis Gilmore <dennis@ausil.us>, Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Jonas Karlman <jonas@kwiboo.se>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maxime Ripard <mripard@kernel.org>, Alexey Charkov <alchark@gmail.com>,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v8 3/6] drm/bridge: simple: Add the Lontium LT8711UXD DP-to-HDMI
 bridge
Date: Sun, 26 Apr 2026 11:54:57 +0200
Message-ID: <6519122.LvFx2qVVIh@phil>
In-Reply-To: <20260425234845.GC2964234@killaraus.ideasonboard.com>
References: <20260425031011.2529364-1-dennis@ausil.us>
 <ur7mow4lw47ylxj3uigwwasrfywe6n42zb2to7ygeyjlkcgfkf@guzkembyy5hc>
 <20260425234845.GC2964234@killaraus.ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260426_025514_567476_D69AC4C0 
X-CRM114-Status: GOOD (  38.43  )
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

QW0gU29ubnRhZywgMjYuIEFwcmlsIDIwMjYsIDAxOjQ4OjQ1IE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgTGF1cmVudCBQaW5jaGFydDoKPiBPbiBTdW4sIEFwciAyNiwgMjAy
NiBhdCAxMjo0NDo1OUFNICswMzAwLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+ID4gT24gU2F0
LCBBcHIgMjUsIDIwMjYgYXQgMDE6MTA6MDJQTSAtMDUwMCwgRGVubmlzIEdpbG1vcmUgd3JvdGU6
Cj4gPiA+IE9uIFNhdCwgQXByIDI1LCAyMDI2IGF0IDk6MjTigK9BTSBEbWl0cnkgQmFyeXNoa292
IHdyb3RlOgo+ID4gPiA+IE9uIFNhdCwgQXByIDI1LCAyMDI2IGF0IDAyOjI4OjQ0UE0gKzAzMDAs
IExhdXJlbnQgUGluY2hhcnQgd3JvdGU6Cj4gPiA+ID4gPiBIaSBEZW5uaXMsCj4gPiA+ID4gPgo+
ID4gPiA+ID4gVGhhbmsgeW91IGZvciB0aGUgcGF0Y2guCj4gPiA+ID4gPgo+ID4gPiA+ID4gT24g
RnJpLCBBcHIgMjQsIDIwMjYgYXQgMTA6MTA6MDhQTSAtMDUwMCwgRGVubmlzIEdpbG1vcmUgd3Jv
dGU6Cj4gPiA+ID4gPiA+IFRoZSBMb250aXVtIExUODcxMVVYRCBpcyBhIGhpZ2ggcGVyZm9ybWFu
Y2UgdHdvIGxhbmUgVHlwZS1DL0RQMS40Cj4gPiA+ID4gPiA+IHRvIEhETUkyLjAgY29udmVydGVy
LCBkZXNpZ25lZCB0byBjb25uZWN0IGEgVVNCIFR5cGUtQyBzb3VyY2Ugb3IKPiA+ID4gPiA+ID4g
YSBEUDEuNCBzb3VyY2UgdG8gYW4gSERNSTIuMCBzaW5rLgo+ID4gPiA+ID4KPiA+ID4gPiA+IEFz
IGZhciBhcyBJIGNhbiB0ZWxsLCB0aGUgTFQ4NzExVVhEIGhhcyBhbiBJMkMgY29udHJvbCBpbnRl
cmZhY2UuCj4gPiA+ID4gPiBTaG91bGRuJ3QgaXQgYmUgYW4gSTJDIGRldmljZSA/Cj4gPiA+ID4K
PiA+ID4gPiBGcm9tIHRoZSBkYXRhc2hlZXQ6Cj4gPiA+ID4KPiA+ID4gPiBUaGUgZGV2aWNlIGlz
IGNhcGFibGUgb2YgYXV0b21hdGljIG9wZXJhdGlvbiB3aGljaCBpcwo+ID4gPiA+IGVuYWJsZWQg
YnkgYW4gaW50ZWdyYXRlZCBtaWNyb3Byb2Nlc3NvciB0aGF0IHVzZXMgYW4KPiA+ID4gPiBlbWJl
ZGRlZCBTUEkgZmxhc2ggZm9yIGZpcm13YXJlIHN0b3JhZ2UuIFN5c3RlbSBjb250cm9sCj4gPiA+
ID4gaXMgYWxzbyBhdmFpbGFibGUgdGhyb3VnaCB0aGUgdXNlIG9mIGEgZGVkaWNhdGVkCj4gPiA+
ID4gY29uZmlndXJhdGlvbiBJMkMgc2xhdmUgaW50ZXJmYWNlLgo+ID4gPiA+Cj4gPiA+ID4gTXkg
Z3Vlc3Mgd2FzIHRoYXQgaXQgY2FuIGVpdGhlciBiZSBhbiBJMkMgZGV2aWNlIG9yIGl0IGNhbiBm
dW5jdGlvbiBhcyBhCj4gPiA+ID4gc2ltcGxlIHBsYXRkZXYgd2l0aCBubyBJMkMgY29udHJvbHMu
IFBsZWFzZSBjb3JyZWN0IG1lIGlmIG15Cj4gPiA+ID4gdW5kZXJzdGFuZGluZyB3YXMgd3Jvbmcu
Cj4gPiA+ID4KPiA+ID4gPiBCdXQgbm93IGxvb2tpbmcgYXQgdGhlIHNjaGVtYXRpY3MsIGl0IHNl
ZW1zIHRvIGJlIGNvbm5lY3RlZCB0byBJMkM2Lgo+ID4gPiA+IFdoaWNoIG1lYW5zIHRoYXQgaXQg
c2hvdWxkIGJlIGRlc3JpYmVkIChhbmQgYm91bmQpIGFzIHN1Y2guCj4gPiA+IAo+ID4gPiBIaSBE
bWl0cnkgYW5kIExhdXJlbnQsCj4gPiA+IAo+ID4gPiBXaGlsZSB0aGUgc2NoZW1hdGljIHNob3dz
IHRoYXQgaXQgY2FuIHVzZSBJMkMgYW5kIGhhcyBiZWVuIHdpcmVkIHVwLAo+ID4gPiBpdCBhbHNv
IHNob3dzIHRoYXQgYm90aCBNT0RFX1NFTCBhbmQgSTJDX0FERFIgaGF2ZSB1bnBvcHVsYXRlZCAx
MGsKPiA+ID4gcmVzaXN0b3JzOyBhcyBhIHJlc3VsdCwgTU9ERV9TRUwgaXMgY29ubmVjdGVkIGRp
cmVjdGx5IHRvIEdORCwKCmxvb2tpbmcgYXQgdGhlIHNjaGVtYXRpY3MgbGlua2VkIGluIHRoZSBi
b2FyZCBwYXRjaCwgSSBzb21laG93IHNlZQpib3RoIFI5IChtb2RlX3NlbCAtPiB2Y2MzdjNfaW8p
IGJ1dCBhbHNvIFIxNyAobW9kZV9zZWwgLT4gZ25kKSBtYXJrZWQKYXMgMTBLLm5jID8KCgo+ID4g
PiBwdXR0aW5nCj4gPiA+IHRoZSBicmlkZ2UgaW4gYXV0b25vbW91cyBtb2RlLiBJIGNvbmZpcm1l
ZCB0aGlzIGJ5IHJ1bm5pbmcgYGkyY2RldGVjdAo+ID4gPiAtciAteSA2YCwgd2l0aCB0aGUgb25s
eSBkZXZpY2Ugb24gdGhlIGJ1cyBiZWluZyB0aGUgSFlNODU2MyBSVEMgYXQKPiA+ID4gMHg1MS4g
V2l0aG91dCByZXdvcmtpbmcgdGhlIGJvYXJkLCB0aGUgZGV2aWNlIGlzIG5vdCBkaXJlY3RseQo+
ID4gPiBjb250cm9sbGFibGUgYW5kIGp1c3QgcnVucyBhdXRvbm9tb3VzbHkuCj4gPiAKPiA+IEkg
dGhpbmsgaXQgd291bGQgYmUgbmljZSB0byBtZW50aW9uOgo+ID4gLSBJbiB0aGUgY29tbWl0IGZv
ciB0aGUgYmluZGluZ3MsIHRoYXQgdGhlIGRldmljZSBjYW4gYmUgcnVubmluZwo+ID4gICB1bmNv
bnRyb2xsZWQgb3IgaXQgY2FuIGJlIGF0dGFjaGVkIG92ZXIgSTJDLCBiaW5kaW5ncyBkZXNjcmli
ZSB0aGUKPiA+ICAgdW5jb250cm9sbGVkIG1vZGUuCj4gPiAtIEluIHRoaXMgY29tbWl0IG1lc3Nh
Z2UsIHRoZSBzYW1lLgo+ID4gLSBJbiB0aGUgY29tbWl0IG1lc3NhZ2UgZm9yIHRoZSBib2FyZCBE
VCBtZW50aW9uIHlvdXIgZmluZGluZ3MgYWJvdXQgdGhlCj4gPiAgIGJvYXJkLCBtZW50aW9uIHNv
bGRlcmluZyBSOSBvciBSMTcgKHdoaWNoIG9uZT8pIGFuZCBSMjcuCj4gCj4gQWRkaXRpb25hbGx5
LCBob3cgYXJlIHdlIGdvaW5nIHRvIGhhbmRsZSBib2FyZHMgd2hlcmUgdGhlIGRldmljZQo+IG9w
ZXJhdGVzIGluIEkyQyBtb2RlID8gV2lsbCB3ZSB1c2UgYSBkaWZmZXJlbnQgY29tcGF0aWJsZSBz
dHJpbmcgKG1heWJlCj4gImxvbnRpdW0sbHQ4NzExdXhkLWkyYyIpID8gSWYgRFQgbWFpbnRhaW5l
cnMgYXJlIGZpbmUgd2l0aCB0aGF0LCBJIGhhdmUKPiBubyBvYmplY3Rpb24gdG8gdGhpcyBwYXRj
aC4KCkkgd291bGQgYXNzdW1lIGl0J2QgYmUgbW9yZSB0aGUgZHQtbWFpbnRhaW5lcnMgb2JqZWN0
aW5nPwpJLmUuIHRoZSB0d28gZGlmZmVyZW50IGJpbmRpbmdzIGZvciB0aGUgc2FtZSBoYXJkd2Fy
ZSBhbmQgbGVha2luZyBMaW51eAppbXBsZW1lbnRhdGlvbi1zcGVjaWZpY3MgaW50byB0aGUgYmlu
ZGluZy4KCkknbSBkb24ndCBoYXZlIGRlZXAgaW5zaWdodCBpbnRvIHRoZSBpMmMgZnJhbWV3b3Jr
LCBidXQgSSBndWVzcyB0aGUgaTJjCmRldmljZSBwcm9iZSBkb2VzIG5vdCBuZWVkIHRvIHRhbGsg
dG8gYW4gaTJjIGRldmljZSBkdWUgdG8gcmVzb3VyY2VzCm5lZWRpbmcgc2V0dXAuIERvZXMgdGhl
IGkyYyBjb3JlIG5lZWQgdG8gdGFsayB0byB0aGUgZGV2aWNlIGF0IGFsbD8KCkJlY2F1c2Ugb3Ro
ZXJ3aXNlLCB5b3UgY291bGQganVzdCBkbyBhIHJlZ3VsYXIgaTJjIGRldmljZSAodGhlIHJvdXRp
bmcKZm9yIGV2ZXJ5dGhpbmcgaXMgdGhlcmUgYWZ0ZXJhbGwpLCBhZGQgYSBsb250aXVtLGF1dG9t
YXRpYy1tb2RlOyBmbGFnCnRvIHRoZSBub2RlIHRvIGRlbm90ZSBtb2RlLgoKQW5kIGlmIGZvciB3
aGF0ZXZlciByZWFzb24gYSB2YXJpYW50IGFwcGVhcnMgd2l0aCB0aGUgbGluZXMgY29ubmVjdGVk
CnlvdSBjYW4ganVzdCBtb2RpZml5IHRoZSBEVCB2aWEgYW4gb3ZlcmxheT8KCgpIZWlrbwoKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

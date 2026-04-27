Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A627DFF8862
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Apr 2026 10:49:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JSjU+rJARSrLj2YgVG+GGJvQ+t7sm253ivMkyK/XTtI=; b=BIaFSIBq6TRPjv
	3y7inH8ELPuHMxHefTUpsC12lHFGb65ENrirjZZS0D3z6yYyhRJ6KIz3butuZ96zIQRbE3OBaWc0W
	c+YPbYp7EPJLmPd6dNtl50YUkan6t5hbp1ozonukGKJlzo2RFmeDGCzFIc4xZYjj/WTmsV5NjbmT5
	7UvyP7zs2bEcL0Es38/2no/9r3AgNyKB/HosLdS8Aj0JeZId56FqQZn5yYNGPZh7pzksWCmSvxLGm
	G6dctDWLkbUYVkKfegsKkGhIVwLcNwy+HGruFHqNZYk0fxyfthBgojXjBQOivIuKAFVz6fq0dSdq9
	fKoSM18uUFdAsXBnQ3kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHJWp-0000000Gj2z-34YC;
	Mon, 27 Apr 2026 10:49:27 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHJWm-0000000Gj2W-3e97;
	Mon, 27 Apr 2026 10:49:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=OKQp9Yx/9Rvl8GakqhdXTO8YERBExsPUn/jaifH6kV4=; b=inO8LOazjzbcyLK+Das0bMG4D4
	bi5irue13RRAnKfAqTQ0TOZ+gJyPeHP3y1SVrjqDcbWXDvHckgzGhx56i+GKnVMQMt0d5MbneqI+2
	k+PQIcTUfg5Ca9/aMuHBca+rlCSUPyH1uHNkhQQCh/qZgmq2t/xE/F7PmJL1CJ81GFIdA80fVsI00
	KtgpioVyIybWuYeqb2UDpmHM2rgMHS2f5+S3W03654a/BLtjPD+iJlfX+TIq8cNmZ4R4eVQb9TbPo
	jztvMWKsD3gAqONgx2ywcMfP6w+Y8y6abA4U4WGkUAdOXMhk9h7fN+arHvvQF6A0zGrYJfvUcvKMs
	TbQGeSDw==;
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
Date: Mon, 27 Apr 2026 12:49:09 +0200
Message-ID: <3826043.PYKUYFuaPT@phil>
In-Reply-To: <20260426-dw-hdmi-qp-scramb-v5-5-d778e70c317b@collabora.com>
References: <20260426-dw-hdmi-qp-scramb-v5-0-d778e70c317b@collabora.com>
 <20260426-dw-hdmi-qp-scramb-v5-5-d778e70c317b@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260427_034924_972399_5CE2FD3A 
X-CRM114-Status: GOOD (  14.10  )
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

QW0gU29ubnRhZywgMjYuIEFwcmlsIDIwMjYsIDAyOjIwOjE3IE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgQ3Jpc3RpYW4gQ2lvY2FsdGVhOgo+IEVuYWJsZSBIRE1JIDIuMCBk
aXNwbGF5IG1vZGVzIChlLmcuIDRLQDYwSHopIGJ5IGFkZGluZyBTQ0RDIG1hbmFnZW1lbnQKPiBm
b3IgdGhlIGhpZ2ggVE1EUyBjbG9jayByYXRpbyBhbmQgc2NyYW1ibGluZywgcmVxdWlyZWQgd2hl
biB0aGUgVE1EUwo+IGNoYXJhY3RlciByYXRlIGV4Y2VlZHMgdGhlIDM0MCBNSHogSERNSSAxLjRi
IGxpbWl0Lgo+IAo+IEEgcGVyaW9kaWMgd29yayBpdGVtIG1vbml0b3JzIHRoZSBzaW5rJ3Mgc2Ny
YW1ibGluZyBzdGF0dXMgdG8gcmVjb3Zlcgo+IGZyb20gc2luay1zaWRlIHJlc2V0cy4gIE9uIGhv
dHBsdWcgZGV0ZWN0LCBpZiBTQ0RDIHNjcmFtYmxpbmcgc3RhdGUgaXMKPiBvdXQgb2Ygc3luYyB3
aXRoIHRoZSBkcml2ZXIsIHRyaWdnZXIgYSBDUlRDIHJlc2V0IHRvIHJlLWVzdGFibGlzaCB0aGUK
PiBsaW5rLgo+IAo+IFJlamVjdCBtb2RlcyByZXF1aXJpbmcgVE1EUyByYXRlcyBhYm92ZSA2MDAg
TUh6LCBhcyB0aG9zZSBmYWxsIGluIHRoZQo+IEhETUkgMi4xIEZSTCBkb21haW4gd2hpY2ggaXMg
bm90IHN1cHBvcnRlZC4gSW4gbm9faHBkIGNvbmZpZ3VyYXRpb25zLAo+IGZ1cnRoZXIgcmVzdHJp
Y3QgdG8gMzQwIE1IeiBzaW5jZSBTQ0RDIHJlcXVpcmVzIGEgY29ubmVjdGVkIHNpbmsuCj4gCj4g
VGVzdGVkLWJ5OiBEaWVkZXJpayBkZSBIYWFzIDxkaWVkZXJpa0Bja25vdy10ZWNoLmNvbT4KPiBU
ZXN0ZWQtYnk6IE1hdWQgU3BpZXJpbmdzIDxtYXVkX3NwaWVyaW5nc0Bob3RtYWlsLmNvbT4KPiBT
aWduZWQtb2ZmLWJ5OiBDcmlzdGlhbiBDaW9jYWx0ZWEgPGNyaXN0aWFuLmNpb2NhbHRlYUBjb2xs
YWJvcmEuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lzL2R3LWhk
bWktcXAuYyB8IDE4OCArKysrKysrKysrKysrKysrKysrKysrKystLS0KPiAgMSBmaWxlIGNoYW5n
ZWQsIDE3MiBpbnNlcnRpb25zKCspLCAxNiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9zeW5vcHN5cy9kdy1oZG1pLXFwLmMgYi9kcml2ZXJzL2dw
dS9kcm0vYnJpZGdlL3N5bm9wc3lzL2R3LWhkbWktcXAuYwo+IGluZGV4IGQ2NDlhMWNmMDdmNS4u
YzQ4MmE4ZTdkYTI1IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lub3Bz
eXMvZHctaGRtaS1xcC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9zeW5vcHN5cy9k
dy1oZG1pLXFwLmMKPiBAQCAtMiw2ICsyLDcgQEAKPiAgLyoKPiAgICogQ29weXJpZ2h0IChjKSAy
MDIxLTIwMjIgUm9ja2NoaXAgRWxlY3Ryb25pY3MgQ28uLCBMdGQuCj4gICAqIENvcHlyaWdodCAo
YykgMjAyNCBDb2xsYWJvcmEgTHRkLgo+ICsgKiBDb3B5cmlnaHQgKGMpIDIwMjUgQW1hem9uLmNv
bSwgSW5jLiBvciBpdHMgYWZmaWxpYXRlcy4KCkkgaGF2ZSBubyByZWFsIGNsdWUgYWJvdXQgdGhl
IGlubmVyIHdvcmtpbmdzIG9mIGhkbWksIGJ1dCB0aGF0IGxpbmUKZG9lcyBtYWtlIG1lIGN1cmlv
dXMsIGJlY2F1c2Ugbm8gcGFydCBvZiB0aGUgcGF0Y2ggYXV0aG9yc2hpcCBkb2VzCm1lbnRpb24g
QW1hem9uIDstKSAuCgpBbHNvIEkgdGhpbmsgIm9yIGl0J3MgYWZmaWxpYXRlcyIgbWlnaHQgYmUg
d2F5IHRvbyBicm9hZCwgYmVjYXVzZSB0aGlzCmNhbiBiZSBlc3NlbnRpYWxseSBldmVyeW9uZS4g
U28gbm9vbmUgaW4gdGhlIGZ1dHVyZSB3aWxsIGtub3cgd2hvIHRvCmFzayBvbiBjb3B5cmlnaHQg
cXVlc3Rpb25zLgoKU2ltaWxhcmx5IHdoZW4gX3NvbWVib2R5XyBjb21lcyBmb3J3YXJkIHdpdGgg
IkkgaG9sZCBhIGNvcHlyaWdodCBvbiB0aGlzIgpuby1vbmUgY291bGQgdmVyaWZ5IHRoaXMgY2xh
aW0gYXMgd2VsbC4KCkkgc29tZWhvdyBleHBlY3QgX29uZV8gZW50aXR5IGJlaW5nIHNwZWNpZmll
ZCwgbm90IHBvc3NpYmx5IGh1bmRyZWRzLgoKCkhlaWtvCgoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

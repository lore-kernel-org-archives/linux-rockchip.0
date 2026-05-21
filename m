Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B89CCD5BAC
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 May 2026 09:14:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DMX1gK2ftlRyA/N6hDrGe+GLE1q+THW9QNdRaEm6PfE=; b=oSsrTYiPbF1wBa
	LTL4BXUf/FH+g35oqd70UI9GQ0MYDuR1b7vfoW87R/rhrTdGbI5HtCvGKL/QK4BqPkbwlxTCn0Fql
	FqGWv37TB1nte2x2hTQuEDqLznYVJiBqQZdTFqbRZ1peaU3RXnl/I59hWKcHf9z+KhzoRY4S+rIEj
	gl2Hc5xMDmreLO49nha9UTBjsXtp6QVbrxgMXydM5hM5dr8wuBgC6EbGb4/SQn3n7mnt5c+9cD+WP
	DrxA8/Asxpa2rwPvHUDqPzybG+BQLxH4F9inDyXbKj3BCU/32NgrBofA4cNGPo9dZg4FH3tmRrbup
	fPphsKjvsLcKqwrhVFyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPzU4-00000007Gwr-1pTA;
	Thu, 21 May 2026 09:14:28 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPzU0-00000007Gum-2qKd;
	Thu, 21 May 2026 09:14:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=RqI6vh+WLkfGwtZ7w9kdY7+93wc7lSm+3beIEWvGDJc=; b=guwmnCLeCXw4BCcRlPU7lYatnl
	sZ/Nc87kEeU7S7IZqvbdwDPiYFJTjE74sti2902t8TOYJhE09mcvx2aicZepZ1U8bjhVHSh3TcZGg
	Y7fM3/5F6hseiuztXmxfbroXQQbM1+lUN1ZkEZS7mipNp/JuFNt40leR8kI9tt5bwyAOk9MjT1Mah
	fcDdyPRGk+GtfFRUn3R1K/3+Wo1fjTkrfsctUZfeNV3O7MJXg2KcaQGMHEV3YddrXsXQor8s3Jw51
	vuV05V9yKOQnUMa5ll/QPX6+CwfbL3npFjv8zCCwiRIWvLvkYYcGxAfEpI9ZahULoTQdlVMPeomaE
	rAUX5teQ==;
From: Heiko Stuebner <heiko@sntech.de>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Jonas Karlman <jonas@kwiboo.se>
Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>, Liu Ying <victor.liu@nxp.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Chen-Yu Tsai <wens@kernel.org>,
 Christian Hewitt <christianshewitt@gmail.com>,
 Diederik de Haas <diederik@cknow-tech.com>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-sunxi@lists.linux.dev, imx@lists.linux.dev,
 linux-kernel@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>
Subject: Re: [PATCH v7 00/23] drm: bridge: dw_hdmi: Misc enable/disable,
 CEC and EDID cleanup
Date: Thu, 21 May 2026 11:14:07 +0200
Message-ID: <4998578.ktpJ11cQ8Q@phil>
In-Reply-To: <20260518180206.2480119-1-jonas@kwiboo.se>
References: <20260518180206.2480119-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_021424_715731_9D8C19F0 
X-CRM114-Status: GOOD (  12.94  )
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

QW0gTW9udGFnLCAxOC4gTWFpIDIwMjYsIDIwOjAxOjM2IE1pdHRlbGV1cm9ww6Rpc2NoZSBTb21t
ZXJ6ZWl0IHNjaHJpZWIgSm9uYXMgS2FybG1hbjoKPiBUaGlzIGlzIGEgcmV2aXZhbCBvZiBhbiBv
bGQgZHctaGRtaSBzZXJpZXMgYW5kIGlzIHRoZSBmaXJzdCBzZXJpZXMgcGFydAo+IG9mIGEgbmV3
IGVmZm9ydCB0byB1cHN0cmVhbSBvbGQgTGlicmVFTEVDIEhETUkgMi4wIHBhdGNoZXMgZm9yIFJv
Y2tjaGlwCj4gUkszM3h4IGRldmljZXMuCj4gCj4gVGhpcyBzZXJpZXMgZW5zdXJlIHBvd2Vyb24v
cG93ZXJvZmYgYW5kIENFQyBwaHlzIGFkZHIgaW52YWxpZGF0aW9uIGlzCj4gaGFwcGVuaW5nIGR1
cmluZyBub3JtYWwgRFJNIGZ1bmNzLCBlbnN1cmVzIEVESUQgYW5kIENFQyBwaHlzIGFkZHIgaXMK
PiB1cGRhdGVkIGluIGRldGVjdCgpIHNpbWlsYXIgdG8gaG93IHRoZSBicmlkZ2UgY29ubmVjdG9y
IHdvcmtzIHdpdGggYQo+IEhETUkgYnJpZGdlIGF0dGFjaGVkLCBhbmQgYWxzbyBjaGFuZ2VzIHRv
IGRlYm91bmNlIGhvdHBsdWcgcHJvY2Vzc2luZwo+IHRvIHByZXZlbnQgYSBmdWxsIGRpc2FibGUv
ZW5hYmxlIGN5Y2xlIGR1cmluZyBhIEhQRCBsb3cgdm9sdGFnZSBwdWxzZS4KPiAKPiBBZnRlciB0
aGlzIHNlcmllcyBIUEQsIEVESUQgYW5kIENFQyBoYW5kbGluZyBzaG91bGQgd29yayB2ZXJ5IHNp
bWlsYXIKPiByZWdhcmRsZXNzIGlzIHRoZSBkdy1oZG1pIGNvbm5lY3RvciBvciB0aGUgYnJpZGdl
IGNvbm5lY3RvciBpcyB1c2VkLgo+IEl0IHNob3VsZCBhbHNvIGhlbHAgZW5zdXJlIGEgc21vb3Ro
ZXIgdHJhbnNpdGlvbiB3aGVuIGR3LWhkbWkgaXMgZnVsbHkKPiBjb252ZXJ0ZWQgaW50byBhIEhE
TUkgYnJpZGdlIGluIGEgZnV0dXJlIHNlcmllcy4KPiAKPiBUaGVzZSBjaGFuZ2VzIGhhdmUgbWFp
bmx5IGJlZW4gdGVzdGVkIG9uIFJvY2tjaGlwIFJLMzMyOCwgUkszMzk5IGFuZAo+IFJLMzU2OCBk
ZXZpY2VzIHVzaW5nIGJvdGggdGhlIGR3LWhkbWkgY29ubmVjdG9yIGFuZCBhbHNvIHVzaW5nIGEg
YmFzaWMKPiBjb252ZXJ0IHRvIHVzZSBhIGJyaWRnZSBjb25uZWN0b3IuIFRoZSBjaGFuZ2VzIGhh
cyBhbHNvIGJlZW4gdGVzdGVkIG9uCj4gQW1sb2dpYyBTOTA1WCwgUzkwNVkyIGFuZCBBMzExRCBk
ZXZpY2VzIHRoYXQgdXNlcyB0aGUgYnJpZGdlIGNvbm5lY3Rvci4KCkkgbm93IGFsc28gZ2F2ZSB0
aGlzIGEgc3BpbiBvbiBhIHJrMzMyOCBib2FyZCBhbmQgaGRtaSBzdGlsbCB3b3JreCA6LSkKClRl
c3RlZC1ieTogSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4gI3JrMzMyOAoKCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

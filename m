Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6CA0C5DF86
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Aug 2026 10:37:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/F+vHMefKntXBionfaj2D/XwQ1eV8ycXL+W3jsaqJkg=; b=HwTMhYIVlFl1Sr
	DIC1a0NgXBjtL+JT6a2UA/5yaMag5hJ8EWeF0muP3qkjAK12CGHO0Jfu4dDbDEuNwncnyWmGli6i2
	1Cqhe0oXGpTX9WA+WNtg6DHmCIWCDQIPkct8FtnWDOHjNC/C9XrHyx3rquc8PSW3oWmxF0jqFC3A7
	RVEUfvV0OT4UrTw+JMtVQnRZVdkwhDx4NppclYdH2nHhAj/DLoKsewcu9uZQCEf6LE0NExFVbTiks
	Qu88Pelppai993Snl0B3mrh0qup5W8WsblrE2kuH6qAtAXlyDSoMaU0nbqihJVIFneeoPwmMSUwr5
	HfcoGhlNEsmR+z2duruw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwdfb-00000009ZFF-3x9T;
	Wed, 19 Aug 2026 10:37:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwdfZ-00000009ZEb-2m6e;
	Wed, 19 Aug 2026 10:37:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=ofn2ZZ6XPlR/lPmYUjXtJeQNkxi/butXlRsGauSrOlc=; b=rEWYxZDQRF3HvBIMiv+yoXDvJo
	cQALU3IXk3TYG8G+ih0Tt76d5TTQOvmtu2WqEuJ8glTMKwAKs9Yn1Q0rGE1efzNrn9S3pPeIKvDx9
	eygs1DIwW4lqO0geAU4dtPljbEXOvpXk03UPEjBKlqBkvG2SeE1xlTUjwrVKI9vhR4DUtajlaT3gd
	CYw//BQiWamdbW56G4+EqzgIRnDFvUZHcsItJsgEql0DvDm8rEA06c8rdAnAoC6LM+rsT+IBfTWop
	6WPIDz+kU3uvly6U8OWDfRqaZkkIwCkyaPj/OpfyMDVh9QWYl53PFI+zFHPeEeM5gFaI8Fos1pXrg
	W+ZxJJLw==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Chen-Yu Tsai <wens@kernel.org>, Samuel Holland <samuel@sholland.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 =?UTF-8?B?TWHDrXJh?= Canal <mcanal@igalia.com>,
 Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>,
 Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Algea Cao <algea.cao@rock-chips.com>, Daniel Stone <daniels@collabora.com>,
 Liu Ying <victor.liu@nxp.com>, Phong LE <ple@baylibre.com>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: kernel@collabora.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-sunxi@lists.linux.dev, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v10 54/69] drm/rockchip: rk3066_hdmi: Advertise HDMI 1.4
 capabilities
Date: Wed, 19 Aug 2026 12:36:29 +0200
Message-ID: <7956767.Wku2Vz74k6@diego>
In-Reply-To: <20260731-dw-hdmi-qp-scramb-v10-54-294364b2cf15@collabora.com>
References: <20260731-dw-hdmi-qp-scramb-v10-0-294364b2cf15@collabora.com>
 <20260731-dw-hdmi-qp-scramb-v10-54-294364b2cf15@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260819_033717_847512_0789143D 
X-CRM114-Status: GOOD (  11.43  )
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

QW0gRnJlaXRhZywgMzEuIEp1bGkgMjAyNiwgMTg6MjA6MDEgTWl0dGVsZXVyb3DDpGlzY2hlIFNv
bW1lcnplaXQgc2NocmllYiBDcmlzdGlhbiBDaW9jYWx0ZWE6Cj4gQnJpZGdlcyB1c2luZyBEUk1f
QlJJREdFX09QX0hETUkgYXJlIG5vdyBleHBlY3RlZCB0byBhbHNvIHByb3ZpZGUgYQo+IHN1cHBv
cnRlZCBIRE1JIHZlcnNpb24uICBUaGlzIGlzIG5vdCB5ZXQgZW5mb3JjZWQsIGJ1dCB3aWxsIGJl
Y29tZQo+IG1hbmRhdG9yeSBvbmNlIHRoZSBtaWdyYXRpb24gdG8gdGhlIG5ldyBjYXBzLWJhc2Vk
IEhETUkgY29ubmVjdG9yCj4gaW5pdGlhbGl6YXRpb24gQVBJIGlzIGNvbXBsZXRlZC4KPiAKPiBU
aGUgUkszMDY2IEhETUkgVFggc3VwcG9ydHMgSERNSSAxLjRhLCBhcyBkZXNjcmliZWQgaW4gY29t
bWl0Cj4gZjg0ZDNkMzdiN2ZiICgiZHJtOiByb2NrY2hpcDogaW50cm9kdWNlIHJrMzA2NiBoZG1p
IikuICBIb3dldmVyLCB0aGUKPiBkcml2ZXIgZG9lcyBub3QgY3VycmVudGx5IGVuZm9yY2UgYSBt
YXhpbXVtIFRNRFMgY2hhcmFjdGVyIHJhdGUsIGl0IG9ubHkKPiBmaWx0ZXJzIG5vbi1DRUEgbW9k
ZXMgYW5kIGV4Y2x1ZGVzIFZJQyAxICg2NDB4NDgwKSB2aWEgdGhlIC5tb2RlX3ZhbGlkCj4gY2Fs
bGJhY2suCj4gCj4gQWR2ZXJ0aXNlIEhETUkgMS40IHN1cHBvcnQgZm9yIG5vdyBzbyB0aGF0IG1v
ZGVzIGV4Y2VlZGluZyB0aGUgMzQwIE1Iego+IFRNRFMgbGltaXQgYXJlIHJlamVjdGVkIGJ5IHRo
ZSBjb3JlLgo+IAo+IFNpZ25lZC1vZmYtYnk6IENyaXN0aWFuIENpb2NhbHRlYSA8Y3Jpc3RpYW4u
Y2lvY2FsdGVhQGNvbGxhYm9yYS5jb20+CgpSZXZpZXdlZC1ieTogSGVpa28gU3R1ZWJuZXIgPGhl
aWtvQHNudGVjaC5kZT4KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=

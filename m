Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5AB0AC982FA
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2026 09:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vfFSSKeJXySsX+XgCqIQX04ki9K2jWuJsGWBQzK/5HI=; b=kgz3pxqmowObpS
	J7M6j/8kRj55OkH8M0j/2JI8rZcdajDXsx4fQqKtd+Fu8SMEUpclmiRuZyGnHvcpJWTUWK2nDuZo5
	RxA5iYfFar2blSns1LH7HlgHCinfyyr82d2nsrwoMG8GXVxcZocV7bULp6jDxIQ/QgkJGebgY2NDl
	E4SEBPhesnVMbG0y1tGBR/igNOZMQvuP3KS9ymd4Cb3vkHHopN2UVTlTZRoDjc0EmfbKWRe/hAHnW
	k24qtqLtNNLbKM0Y4fNykAjc6U8/ycoqGsTgafG81W4oIWFMgAaDch57hel0+/hI43tEKuU6j5Gpm
	TR5E+C8dkWNr9RBvJJqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9Je1-00000007oKX-1EGO;
	Wed, 23 Sep 2026 09:52:05 +0000
Received: from mout-p-102.mailbox.org ([80.241.56.152])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9Jdy-00000007oIK-3NXS;
	Wed, 23 Sep 2026 09:52:04 +0000
Received: from smtp202.mailbox.org (smtp202.mailbox.org [IPv6:2001:67c:2050:b231:465::202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519MLKEM768 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-102.mailbox.org (Postfix) with ESMTPS id 4hqXLM2X8GzKn9j;
	Wed, 23 Sep 2026 11:51:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1790157115;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=kGmQmcU6nGcC18gst/c1lOQz4TJAHzdj/MA0mXZlKY4=;
	b=CZKCgZbG6y8Jh6iBQuevbo4X2YLgYdqoLdnnKeV63ytkSZhkQRlEhm7ANMYuMNF/Tdk9AW
	vuaYVsoL/ac9vOFodcOrZSxjcgxcfc7DWIh1rJ+65P2wTTaoOXEXH8iX3k2kFF4cCT77Em
	btpAFaRXLI8ThR+pzkPiddIfIpQ6/Qrg3JhPmj1E2vjlbwJ3wgIlhT7C2fqAZZFRYHpkbu
	xCBYiYj5xNFlg0NNGMq0bK72YlK0VNExo4bYyRLwN+9iEArDvEBS7S3oUwkGh499B+u1vg
	TX+66Wx25gBpWNsfbCRAdPsVjKQPXo7MiK5k17yGv3ImqXFgg5enhFsAFliAmg==
Message-ID: <588442c7-2589-4026-a8f8-e03f944318c3@mailbox.org>
Date: Wed, 23 Sep 2026 11:51:45 +0200
MIME-Version: 1.0
Subject: Re: [PATCH RFC 13/25] drm: Add VRR target frame rate properties
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 Leo Li <sunpeng.li@amd.com>, Daniel Stone <daniels@collabora.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Helge Deller <deller@gmx.de>, Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>, Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Andy Yan <andy.yan@rock-chips.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-fbdev@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, kernel@collabora.com,
 Derek Foreman <derek.foreman@collabora.com>,
 wayland-devel@lists.freedesktop.org
References: <20260921-vrr-limiter-uapi-v1-0-2fcd7d011646@collabora.com>
 <20260921-vrr-limiter-uapi-v1-13-2fcd7d011646@collabora.com>
Content-Language: en-CA
From: =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel.daenzer@mailbox.org>
In-Reply-To: <20260921-vrr-limiter-uapi-v1-13-2fcd7d011646@collabora.com>
X-MBO-RS-ID: 079bfa1140171f5da20
X-MBO-RS-META: 3rdb1snwyxz3ufm4r4fm5o4bk18hbw86
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260923_025203_011414_C8DB0639 
X-CRM114-Status: UNSURE (   7.72  )
X-CRM114-Notice: Please train this message.
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

T24gOS8yMS8yNiAxNzo1MSwgTmljb2xhcyBGcmF0dGFyb2xpIHdyb3RlOgo+IAo+ICsgKiAuLiBf
VlJSLU1JTi1OVU1FUkFUT1I6Cj4gKyAqCj4gKyAqICJWUlJfTUlOX05VTUVSQVRPUiI6Cj4gKyAq
CURlZmF1bHQgJmRybV9jcnRjIGludGVnZXIgcHJvcGVydHkgZm9ybWluZyB0aGUgbnVtZXJhdG9y
IG9mIGEKPiArICoJbnVtZXJhdG9yL2Rlbm9taW5hdG9yIHBhaXIgb2YgYSBmcmFtZSByYXRlIHRv
IHNldCBhcyB0aGUgbWluaW11bSBWUlIKPiArICoJdGFyZ2V0IHJhdGUuIFNldCB0byAwIHRvIGRp
c2FibGUuCj4gKyAqCj4gKyAqICJWUlJfTUlOX0RFTk9NSU5BVE9SIjoKPiArICoJRGVmYXVsdCAm
ZHJtX2NydGMgaW50ZWdlciBwcm9wZXJ0eSBmb3JtaW5nIHRoZSBkZW5vbWluYXRvciBvZiBhCj4g
KyAqCW51bWVyYXRvci9kZW5vbWluYXRvciBwYWlyIG9mIGEgZnJhbWUgcmF0ZSB0byBzZXQgYXMg
dGhlIG1pbmltdW0gVlJSCj4gKyAqCXRhcmdldCByYXRlLiBJZiA6cmVmOmBWUlJfTUlOX05VTUVS
QVRPUiA8VlJSLU1JTi1OVU1FUkFUT1I+YCBpcyBub3QKPiArICoJemVybywgaXQgbXVzdCBiZSBu
b24temVyby4KPiArICoJT3RoZXJ3aXNlLCBtdXN0IGFsc28gYmUgemVyby4KPiArICoKPiArICog
Li4gX1ZSUi1NQVgtTlVNRVJBVE9SOgo+ICsgKgo+ICsgKiAiVlJSX01BWF9OVU1FUkFUT1IiOgo+
ICsgKglEZWZhdWx0ICZkcm1fY3J0YyBpbnRlZ2VyIHByb3BlcnR5IGZvcm1pbmcgdGhlIG51bWVy
YXRvciBvZiBhCj4gKyAqCW51bWVyYXRvci9kZW5vbWluYXRvciBwYWlyIG9mIGEgZnJhbWUgcmF0
ZSB0byBzZXQgYXMgdGhlIG1heGltdW0gVlJSCj4gKyAqCXRhcmdldCByYXRlLiBTZXQgdG8gMCB0
byBkaXNhYmxlLgo+ICsgKgo+ICsgKiAiVlJSX01BWF9ERU5PTUlOQVRPUiI6Cj4gKyAqCURlZmF1
bHQgJmRybV9jcnRjIGludGVnZXIgcHJvcGVydHkgZm9ybWluZyB0aGUgZGVub21pbmF0b3Igb2Yg
YQo+ICsgKgludW1lcmF0b3IvZGVub21pbmF0b3IgcGFpciBvZiBhIGZyYW1lIHJhdGUgdG8gc2V0
IGFzIHRoZSBtYXhpbXVtIFZSUgo+ICsgKgl0YXJnZXQgcmF0ZS4gSWYgOnJlZjpgVlJSX01BWF9O
VU1FUkFUT1IgPFZSUi1NQVgtTlVNRVJBVE9SPmAgaXMgbm90Cj4gKyAqCXplcm8sIGl0IG11c3Qg
YmUgbm9uLXplcm8uIE90aGVyd2lzZSwgbXVzdCBhbHNvIGJlIHplcm8uCj4gICAqLwoKSXMgdGhl
cmUgYSByZWFzb24gdGhhdCBERU5PTUlOQVRPUiBtdXN0IGJlIDAgd2hlbiB0aGUgY29ycmVzcG9u
ZGluZyBOVU1FUkFUT1IgaXM/IDAgZGl2aWRlZCBieSBhbnkgbnVtYmVyIGlzIHN0aWxsIDAuCgoK
RWl0aGVyIHdheSwgc2hvdWxkIHRoZXNlIHJ1bGVzIGJlIGVuZm9yY2VkIGluIGRybV9hdG9taWNf
Y3J0Y19zZXRfcHJvcGVydHk/CgoKLS0gCkVhcnRobGluZyBNaWNoZWwgRMOkbnplciAgICAgICBc
ICAgICAgICBHTk9NRSAvIFh3YXlsYW5kIC8gTWVzYSBkZXZlbG9wZXIKaHR0cHM6Ly9yZWRoYXQu
Y29tICAgICAgICAgICAgIFwgICAgICAgICAgICAgICBMaWJyZSBzb2Z0d2FyZSBlbnRodXNpYXN0
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02FA1FF8860
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Apr 2026 19:10:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uH6TzLw2KA7GxCcwaG5RPw8nyMfJhaa9O9okfXKAgO0=; b=mr5OZVmXQf25XA
	gzNhIYanaorNztoRgidQNMKEB4UMbXvKUp3xdIJfef0U44CHjY0qYcin5hYJZU4V14JSK9FQxg8sQ
	ioe8Fp+Ca8sa2iMTzXdxIyE905SUiaxOeh9+6w/0sWdHbYRgKB7Oymg1HQ5f2OfQ0pRIc0MEpUrum
	EDudvdMygyLtth3NlxGMOig4/K8kmgm/Xv9neSNYmfjBrRwpbWYt1/UiqOziEdUvtwReYbAOFeMn6
	NylU92R6CmXtQbNn6EieK2DZKT1p4cFAWywwxxXtgKTP5yLnSu/tU+N/vRmstrjF5qeEfOau2d3cV
	IOqT1wsPQ6BN2sYx4+eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHRM4-000000002H9-3kVv;
	Mon, 27 Apr 2026 19:10:52 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHRM2-000000002G5-0jLY;
	Mon, 27 Apr 2026 19:10:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=eMiVQtO/20AP/BJG4HATSBBh4qLb0DtjiWzEe2Kk0IY=; b=Zcf+aeVgoqzfplXbcoalce31z8
	+BmBHRruAPnXcH9YOxAp9tjMDCa2Lb0uWI+20zzEttLj2p4HyhLOoA9MlNClW6iJG+YnmKOutdvl2
	zIG+m0aUKr3lmoYLV4hgHPxsTic7ka9c1EPDdFX9g/UxcKM04nhnZAkJs0Gtf4l7Vqkp6poE+dleT
	R265z67Emide8+Pba0LcwfUrmCt6irdOXyVG/CqCZoJ1VrG50t6nvbZpe1/IR8Tx5NOGig9TS5KAo
	gtVmrnJOZR6ohZ599ZwxmlNJGqI1dHJPMav4aJK2vdoMO10sPfVHs0kFbknsBDZXRDvSQUjhLeEWt
	EpCX/KNQ==;
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
Date: Mon, 27 Apr 2026 21:10:35 +0200
Message-ID: <3837777.yKVeVyVuyW@phil>
In-Reply-To: <20260426-dw-hdmi-qp-scramb-v5-5-d778e70c317b@collabora.com>
References: <20260426-dw-hdmi-qp-scramb-v5-0-d778e70c317b@collabora.com>
 <20260426-dw-hdmi-qp-scramb-v5-5-d778e70c317b@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260427_121050_215874_6DA4D27A 
X-CRM114-Status: UNSURE (   7.66  )
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
YWJvcmEuY29tPgoKVGhlIGNoYW5nZSBsb29rcyBmaW5lIHRvIG15IHNlbWktdHJhaW5lZCBleWUs
IHNvIGV2ZW4gd2l0aCBteSBjb3B5cmlnaHQKY29uY2VybiBhZGRyZXNzZWQsIEkgY2FuIG9ubHkg
cHJvdmlkZSBhbgoKQWNrZWQtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+CgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8117CC44507
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jul 2026 19:36:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q4DSWdnpWYfeDlFMUiZ60wPlOE83Nvgmn4zWyL2YUKM=; b=P86fZ+Hsov1okt
	GpDWR2yWf4BzfCdgRHd3rvMxGDmu/ZPUMgx/twmiLVTiUGxdrDHjhUZht0ymcycpwElHnu7roCe3z
	j3+ySb1hVusZeFJNREUk/eYBrQuf0GeH4O8J1Ae1na1UuYd7+duiIcXmpOsc7ceHIUY3Zau/3+iSC
	oU7YW4fAH1gqw/k98BQQoPOddmrMeBjsP6O6YQzLD4zeQHQznaAh/Cy0tXYCsYKwMS4bpoIjeTDJG
	JNogkEsa/ZHOvCNhSJmCafaTGsvYLvajCOm792lIjvDIyIFNPAIhji9gjtkE0wWWYUR5X2HzPAckb
	NphSDZufSziTVxAmQUxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wk5Ow-0000000FndZ-3tet;
	Wed, 15 Jul 2026 19:36:14 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wk5Ov-0000000Fncv-07CX;
	Wed, 15 Jul 2026 19:36:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=EkAmAXWFdRaV2FEnkFzbQfqrpancqGX/NTP3iRaWbqk=; b=HBeCfxPrMerzTTa1P1DjEdUQs0
	1J1B5NjvdxSdyZy57mYE3pbiGFIzwtcYqFyxc3BPUR/JO1ZFiyUeUUajoAqaKpCSwvImiWpjiyzUn
	keOhAkk1rUm4l5zrSKhBbolCn6Jutkv6GX93ct2DmnH7WZlgbBrfgsDrBM53XB2nC6lDYCvlOXjFI
	jzgrK/oN5gCR4ytiQxQgElEVKJIDE6fzemVetvlwCAjZuS0K9aY0QR6FgiOuIOSxwOnmmhl5eDhth
	DCo4QmILQZAsAqlhkga1GS3r+lN7uq3d9uGkMjO9CYzTudQ00ltb2qxudglNoJ8WXYQTFwaAK38cp
	huSUHPPQ==;
From: Heiko Stuebner <heiko@sntech.de>
To: linux-kernel@vger.kernel.org,
 Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 3/3] drm/rockchip: remove unneeded 'fast_io' parameter in
 regmap_config
Date: Wed, 15 Jul 2026 21:36:00 +0200
Message-ID: <9698684.rMLUfLXkoz@phil>
In-Reply-To: <20260705163536.1850-8-wsa+renesas@sang-engineering.com>
References: <20260705163536.1850-5-wsa+renesas@sang-engineering.com>
 <20260705163536.1850-8-wsa+renesas@sang-engineering.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260715_123613_070851_232C7B8F 
X-CRM114-Status: GOOD (  14.82  )
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

QW0gU29ubnRhZywgNS4gSnVsaSAyMDI2LCAxODozNTozOCBNaXR0ZWxldXJvcMOkaXNjaGUgU29t
bWVyemVpdCBzY2hyaWViIFdvbGZyYW0gU2FuZzoKPiBXaGVuIHVzaW5nIE1NSU8gd2l0aCByZWdt
YXAsIGZhc3RfaW8gaXMgaW1wbGllZC4gTm8gbmVlZCB0byBzZXQgaXQKPiBhZ2Fpbi4KPiAKPiBT
aWduZWQtb2ZmLWJ5OiBXb2xmcmFtIFNhbmcgPHdzYStyZW5lc2FzQHNhbmctZW5naW5lZXJpbmcu
Y29tPgo+IC0tLQo+IE5vIGRlcGVuZGVuY2llcywgY2FuIGJlIGFwcGxpZWQgZGlyZWN0bHkgdG8g
dGhlIHN1YnN5c3RlbSB0cmVlLiBCdWlsZGJvdCBpcwo+IGhhcHB5LCB0b28uCj4gCj4gIGRyaXZl
cnMvZ3B1L2RybS9yb2NrY2hpcC9kdy1taXBpLWRzaTItcm9ja2NoaXAuYyB8IDEgLQo+ICAxIGZp
bGUgY2hhbmdlZCwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vcm9ja2NoaXAvZHctbWlwaS1kc2kyLXJvY2tjaGlwLmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9j
a2NoaXAvZHctbWlwaS1kc2kyLXJvY2tjaGlwLmMKPiBpbmRleCBkMmU3NmQzNmQ3MjQuLmFhODY0
MmU1YjYyMSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHctbWlwaS1k
c2kyLXJvY2tjaGlwLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHctbWlwaS1k
c2kyLXJvY2tjaGlwLmMKPiBAQCAtMzY4LDcgKzM2OCw2IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qg
cmVnbWFwX2NvbmZpZyBkd19taXBpX2RzaTJfcm9ja2NoaXBfcmVnbWFwX2NvbmZpZyA9IHsKPiAg
CS5yZWdfYml0cyA9IDMyLAo+ICAJLnZhbF9iaXRzID0gMzIsCj4gIAkucmVnX3N0cmlkZSA9IDQs
Cj4gLQkuZmFzdF9pbyA9IHRydWUsCj4gIH07CgpSZXZpZXdlZC1ieTogSGVpa28gU3R1ZWJuZXIg
PGhlaWtvQHNudGVjaC5kZT4KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=

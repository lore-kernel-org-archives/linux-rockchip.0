Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68693606A326
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Nov 2026 13:23:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ODofDYFk;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=oxUxuzKw
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=IvYZVK1VrgX24Txh5v/ht0a3AVLrurxCVAYgAy/AP9k=; b=ODofDYFkCWgxEHMzLL6W2mKps5
	MifwH3KxprdZYjhpQprcugaLLNag7sJMYSnQWppU8uO/33e7OpuhOPAtHt3OVmcnCkPof0i0esyAH
	5Qk3hzHH6/AxapyevyR5AB6LoN7p5x/XiaR4+iHslXIwtrnEDrxLsY0F504aeEVHLMZiRcN+1y/Sr
	4GO4Do0d/Dr7sK9OrJfeJhu9+SFA9amDlL+kM+pgcfqOmfpbXpK5mkSwqPolNVNJeNmbQjTk1xZlo
	1ehjj0l3oKw8RPMNP4gaDhj1iKfkJUsUek/85zODwSMIaNsIWt10qdrPsaR+fBwjc8DiWvSVwd9ID
	A6uKV4iA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOxR4-000000096sL-3h3S;
	Thu, 05 Nov 2026 13:23:22 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOxR1-000000096pa-2XUu;
	Thu, 05 Nov 2026 13:23:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=94WhvBOvLikVnBdkqmMS0BP1DzIOS0lU6UoyFCQ9OjM=; b=oxUxuzKwg9gT4g2DKyoFBl/WI5
	AbuiwNJlmwsdPRj3bXD9gfgwsoZ/KN16pH4zRlWrtXehOIZVACMvZY4vYYNpwOyJXTy/i7QPukr+8
	qlCNmtGYnlptdTzVZ+P6ag2rARROCx4HYiFeLDeDMolD+x+TNVJJZcQ2y2kTPwEhtJWfwmeT+U7x1
	sIfgCZdmvz47620kQNc+znutAi4gJOakEtEurl3RH+kJTyVnIeC9NpAxAt7iEo6DHEqghkVUn+5pn
	tEFLvsojd+1WSFwo8f0emOSYx9Y3khSJbYOIfZYsHejpiuAXM2FvaBEn0WYypGP18xmPsmsxFxDum
	22wo2MHw==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Daniel Stone <daniel@fooishbar.org>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Sandy Huang <hjc@rock-chips.com>, Andy Yan <andyshrk@163.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Daniel Stone <daniels@collabora.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, kernel@collabora.com,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
 Sashiko <sashiko-bot@kernel.org>, Igor Paunovic <royalnet026@gmail.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCH v6 00/15] Support 10-bit YUV422 and 8/10-bit YUV420 color format
 on DW HDMI QP
Date: Thu, 05 Nov 2026 14:22:44 +0100
Message-ID: <34506010.aRNtrjHk3s@diego>
In-Reply-To: <81fbb960-abde-44ea-82ab-3adc054da836@collabora.com>
References: <20261105-dw-hdmi-qp-yuv-v6-0-1bb63ef5766e@collabora.com>
 <CAPj87rMQdE3eeUxGSb4oQfB4Adry6UV8CvhGoTKtdKGQHdSo4Q@mail.gmail.com>
 <81fbb960-abde-44ea-82ab-3adc054da836@collabora.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261105_052319_876070_1B47EB31 
X-CRM114-Status: GOOD (  17.46  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

QW0gRG9ubmVyc3RhZywgNS4gTm92ZW1iZXIgMjAyNiwgMTQ6MDQ6MjUgTWl0dGVsZXVyb3DDpGlz
Y2hlIE5vcm1hbHplaXQgc2NocmllYiBDcmlzdGlhbiBDaW9jYWx0ZWE6Cj4gSGkgRGFuaWVsLAo+
IAo+IE9uIDExLzUvMjYgMjoyNSBQTSwgRGFuaWVsIFN0b25lIHdyb3RlOgo+ID4gSGkgQ3Jpc3Rp
LAo+ID4gCj4gPiBPbiBUaHUsIDUgTm92IDIwMjYgYXQgMDE6MDEsIENyaXN0aWFuIENpb2NhbHRl
YQo+ID4gPGNyaXN0aWFuLmNpb2NhbHRlYUBjb2xsYWJvcmEuY29tPiB3cm90ZToKPiA+PiBDaGFu
Z2VzIGluIHY2Ogo+ID4+IC0gQWRkZWQgbmV3IHZvcDIgcGF0Y2ggIkRpc2FibGUgY29yZSBjbG9j
a3MgYmVmb3JlIGRyb3BwaW5nIHJ1bnRpbWUgUE0KPiA+PiAgIHJlZmVyZW5jZSIgKFNhc2hpa28p
Cj4gPj4KPiA+PiBDaGFuZ2VzIGluIHY1Ogo+ID4+IC0gQWRkZWQgbmV3IHBhdGNoICJkcm0vcm9j
a2NoaXA6IGR3X2hkbWlfcXA6IERvIG5vdCBtYXNrIGVycm9yIGNvZGUgaW4KPiA+PiAgIGF0b21p
Y19jaGVjaygpIiB0byBmaXggYSBwcmUtZXhpc3RpbmcgaXNzdWUgcmVwb3J0ZWQgYnkgU2FzaGlr
bwo+ID4+Cj4gPj4gQ2hhbmdlcyBpbiB2MzoKPiA+PiAtIFVwZGF0ZWQgcGF0Y2ggMyB0byBza2lw
IGFueSBoYXJkd2FyZSBwcm9ncmFtbWluZyBpbiB0aGUgY2FsbGJhY2tzCj4gPj4gICBnYXRlZCBi
eSBkcm1fYXRvbWljX2hlbHBlcl9jb21taXRfcGxhbmVzKCkgYWZ0ZXIgcG93ZXJpbmcgZG93biBW
T1AyIG9uCj4gPj4gICBhbiBhdG9taWNfZW5hYmxlKCkgZXJyb3IgKFNhc2hpa28pCj4gPj4gLSBF
bnN1cmVkIFZCTEFOSyBldmVudHMgYXJlIHNlbnQgaW1tZWRpYXRlbHkgd2hlbiBhdG9taWNfZW5h
YmxlKCkgZmFpbHMsCj4gPj4gICBoZW5jZSBwcmV2ZW50aW5nIHVzZXJzcGFjZSBwcm9jZXNzZXMg
d2FpdGluZyBmb3IgdGhlIHBhZ2UgZmxpcAo+ID4+ICAgY29tcGxldGlvbiB0byBoYW5nIGluZGVm
aW5pdGVseSAobmV3IHBhdGNoIDQsIFNhc2hpa28pCj4gPj4KPiA+PiBDaGFuZ2VzIGluIHYyOgo+
ID4+IC0gQWRkcmVzc2VkIHNldmVyYWwgaXNzdWVzIHJlcG9ydGVkIGJ5IFNhc2hpa28KPiA+PiAg
ICogUmVzZXQgQVhJIGJlZm9yZSBkZXRhY2hpbmcgdGhlIElPTU1VIGRvbWFpbiwgdG8gY2xvc2Ug
YSB0aGVvcmV0aWNhbAo+ID4+ICAgICB3aW5kb3cgd2hlcmUgc3RhbGUgb3IgaW4tZmxpZ2h0IERN
QSB0cmFuc2FjdGlvbnMgY291bGQgZmF1bHQgb3IKPiA+PiAgICAgYWNjZXNzIG1lbW9yeSB1bnRy
YW5zbGF0ZWQgYWZ0ZXIgdGhlIGRvbWFpbiBpcyBkZXRhY2hlZCAocGF0Y2ggNikKPiA+PiAgICog
Rml4ZWQgcmVzb3VyY2UgbGVhayBvbiB2b3AyX2VuYWJsZSgpIGVycm9yIHBhdGggKG5ldyBwYXRj
aCAyKQo+ID4+ICAgKiBCYWxhbmNlIHN0YXRlIG9uIGF0b21pY19lbmFibGUgZXJyb3IgcGF0aHMg
KG5ldyBwYXRjaCAzKQo+ID4+ICAgKiBBdm9pZGVkIGRpdmlzaW9uIGJ5IHplcm8gd2hlbiBjb21w
dXRpbmcgbWF4X2RjbGsgKG5ldyBwYXRoIDQpCj4gPj4gICAqIEZpeGVkIFZPUDJfTUFYX0RDTEtf
UkFURSBvdmVyZmxvdyBvbiAzMi1iaXQgKG5ldyBwYXRjaCA1KQo+ID4gCj4gPiBJIHRoaW5rIGV2
ZXJ5dGhpbmcgaW4gaGVyZSBzaG91bGQgbm93IGJlIHNvbGlkbHkgcmV2aWV3ZWQuIAo+IAo+IFRo
YW5rcyBhIGxvdCBmb3IgY2hlY2tpbmcgdGhpcyBvdXQhCgpleGNlcHQgcGF0Y2ggOSBvZiAxNSwg
b3IgbWFpbCBoYXNuJ3QgdHVybmVkIHVwIHlldCA6LSkKCkl0IGRvZXMgbG9vayBmaW5lIHRvIG1l
LCBidXQgaWYgc29tZW9uZSBoYXMgYW4gZXllIHRvIHNwYXJlIC4uLgoKCkhlaWtvCgoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58BE2C83F26
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Jul 2025 16:55:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YDblMPqCPtYAhZCF/LbRr9ndQVAm1TSaMcNFOk8rRdg=; b=0GKq5QJTPV4I3F
	pinosBQ/J5kv1I1iLz9Ad76Q7YI/UZLek0SHgnthnkRQeSJmIryJcifkIFSG9SyzYOYRWlnvnUD+r
	V4BclilGumO+VxADyyXcuz1br3T0ViwU6vnWgaFxysUVx4TZnr0nHIypIwqhK30hTMKiB4Zsepd1b
	EGp0kPyhlLiO8ITOs8SaZR/HENKJlZIsqE8wSBfGGfW7IPc7CTIHE8lU2yoxoyXyjWXBtPTFFXgGV
	oRCxpb9htnqbY0rMY/tW8WtRM3ku4gLWJDNCmCm8R4fhbyfiR9Jl71SgV+oSBvWuNYvwStOkzdZYt
	zKAABgIUVi68O+pgx/IQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udtnF-00000000F34-0sri;
	Mon, 21 Jul 2025 16:55:13 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udsNh-000000004Nd-2Whz;
	Mon, 21 Jul 2025 15:24:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=N1dy7xoxRKl1sQ1tb4Ipkebpw3UhPsQ6Fu34IdYEgOA=; b=N7F21LPIdchD8+2O9CRvE6O6lI
	gX1sGnojJnysvzXKgRZSVl3qksY/yK/9djn9/YWNxOIWo7kFQbymnEjUusxPGd1xxRZxoe4sKglj0
	h5Dh1ridpadW6MvtjkAbPCgYeYBiRCxw1Sg96MnfuX+/9+opxxxztm6oYj0PzZmb1sgUJ4KI2NSYg
	3BVv4bX1JAQbphTSLHK+Me/8AOwc2onF5MjEXKI8VCbzpWtbhsMOvO5HiV0lI01ilo91r6z1ubpOv
	+Zu5Ulx51fV7sPn3ctWr48CQG/p3JV46sJ2rUHDQ9QNCIY9gs1FwB6HfVy+QTbCfCw1igvlrNNkf5
	K4zSFjWA==;
Received: from i53875b2e.versanet.de ([83.135.91.46] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1udsND-00047Z-91; Mon, 21 Jul 2025 17:24:15 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 Kever Yang <kever.yang@rock-chips.com>, Robin Murphy <robin.murphy@arm.com>,
 Daniel Stone <daniel@fooishbar.org>, Da Xue <da@libre.computer>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Jeff Hugo <jeff.hugo@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org,
 Robert Foss <rfoss@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v9 00/10] New DRM accel driver for Rockchip's RKNN NPU
Date: Mon, 21 Jul 2025 17:24:13 +0200
Message-ID: <4109088.mvXUDI8C0e@diego>
In-Reply-To: <b48c6694-2bd1-44d0-9dd1-1b7a67e22d87@oss.qualcomm.com>
References: <20250721-6-10-rocket-v9-0-77ebd484941e@tomeuvizoso.net>
 <b48c6694-2bd1-44d0-9dd1-1b7a67e22d87@oss.qualcomm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250721_082445_669214_CA93BAE1 
X-CRM114-Status: GOOD (  16.46  )
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

SGkgSmVmZiwKCkFtIE1vbnRhZywgMjEuIEp1bGkgMjAyNSwgMTY6NTU6MDEgTWl0dGVsZXVyb3DD
pGlzY2hlIFNvbW1lcnplaXQgc2NocmllYiBKZWZmIEh1Z286Cj4gT24gNy8yMS8yMDI1IDM6MTcg
QU0sIFRvbWV1IFZpem9zbyB3cm90ZToKPiA+IFRoaXMgc2VyaWVzIGFkZHMgYSBuZXcgZHJpdmVy
IGZvciB0aGUgTlBVIHRoYXQgUm9ja2NoaXAgaW5jbHVkZXMgaW4gaXRzCj4gPiBuZXdlciBTb0Nz
LCBkZXZlbG9wZWQgYnkgdGhlbSBvbiB0aGUgTlZETEEgYmFzZS4KPiA+IAo+ID4gSW4gaXRzIGN1
cnJlbnQgZm9ybSwgaXQgc3VwcG9ydHMgdGhlIHNwZWNpZmljIE5QVSBpbiB0aGUgUkszNTg4IFNv
Qy4KPiA+IAo+ID4gVGhlIHVzZXJzcGFjZSBkcml2ZXIgaXMgcGFydCBvZiBNZXNhIGFuZCBhbiBp
bml0aWFsIGRyYWZ0IGNhbiBiZSBmb3VuZCBhdDoKPiA+IAo+ID4gaHR0cHM6Ly9naXRsYWIuZnJl
ZWRlc2t0b3Aub3JnL21lc2EvbWVzYS8tL21lcmdlX3JlcXVlc3RzLzI5Njk4Cj4gPiAKPiA+IFNp
Z25lZC1vZmYtYnk6IFRvbWV1IFZpem9zbyA8dG9tZXVAdG9tZXV2aXpvc28ubmV0Pgo+IAo+IFRo
aXMgKGFuZCB0aGUgdXNlcnNwYWNlIGNvbXBvbmVudCkgYXBwZWFyIHJlYWR5IGZvciBtZXJnZSBm
cm9tIHdoYXQgSSAKPiBjYW4gdGVsbC4gVG9tZXUgaXMgc3RpbGwgd29ya2luZyBvbiBoaXMgZHJt
LW1pc2MgYWNjZXNzIHNvIEkndmUgb2ZmZXJlZCAKPiB0byBtZXJnZSBvbiBoaXMgYmVoYWxmLiBQ
bGFubmluZyBvbiB3YWl0aW5nIHVudGlsIEZyaWRheSBmb3IgYW55IGZpbmFsIAo+IGZlZWRiYWNr
IHRvIGNvbWUgaW4gYmVmb3JlIGRvaW5nIHNvLgoKc291bmRzIGdyZWF0LgoKSnVzdCB0byBtYWtl
IHN1cmUsIHlvdSdyZSBwbGFubmluZyB0byBtZXJnZSBwYXRjaGVzIDEtNiAoZHJpdmVyICsgYmlu
ZGluZykKaW50byBkcm0tbWlzYyBhbmQgSSdsbCBwaWNrIHVwIHRoZSAiYXJtNjQ6IGR0czogIiBw
YXRjaGVzIDctMTAgYWZ0ZXJ3YXJkcz8KCkhlaWtvCgoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

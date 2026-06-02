Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6AA9CD6E5D
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Jun 2026 19:49:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QBIYAGIScXzm6ldnJect/7DpTMB4kOv7gvTybv79+hM=; b=wMZlTu6c7L354Z
	szTXI7DtFlbvdGMyBzkPb08wL0GdSPxk5dS90kHi0Ask7MeRfUsosk1buSWLyMSAFVoUAyI8jHXgE
	h59E039BnH6yBT+oz8HUSwkd/RPBvDKN+JhmevTLQn8WcsBT889oTbc8awLQE7OgTb+WRtQZJlKuw
	n2Wh6F5GDcx+iw+7CJBScA55b2TTY/2arM6NaSer94M/s17KmUWInDyRE/DEXB272KTDWAKjnLenO
	NA5P8mbOG5SAAkMXyVmVPVyOEFLXy2iWmHjE1qBRZuvQ6tX22M/LFTuqa5qPxJVfjs6SVFZuBeurC
	Fe3GaT6dljLQ0f4E1DYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUV6h-0000000Di1m-3OAv;
	Tue, 02 Jun 2026 19:48:59 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUV6f-0000000Di1H-3ZWm;
	Tue, 02 Jun 2026 19:48:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=HenCZbg2uScNOk5ldzqOmgfKvZAoY5QZcekhLhVnths=; b=XgLezGzWa4cupGlPwOHDrGp6+a
	anmGz58rjZwST/QbDnD6luLY6rIiojNIK4QmJzMxOhdmP9MM3GOFLiOApS0XbbN/qS93ScW9LHsZd
	qFoxthq9wziBXEFVHnDHyf4spCfl/Xbf7jiSq/xR6cs2aYUNBryzRI2BYr+5H9vIMoMXcLqS8LnFM
	u1I7t9cJUkB/U0iH3vcPnUb6Q6zZbPaGEFUepK0KB15PX030sm55TVbB2NiJx9z1YeIMf10nYM7qr
	fQn4zBKkKgdwr1a+Uu1eRgTeaZ4K0MwoKhUDR2QAvUWobjAHBYFz9onUD8ye01qgXQLUIXK2bBYVV
	cpd8ObhA==;
From: Heiko Stuebner <heiko@sntech.de>
To: Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCH v2 02/12] drm/rockchip: dw_dp: Release core resources
Date: Tue, 02 Jun 2026 21:48:35 +0200
Message-ID: <27595863.kmuVQn2iE0@phil>
In-Reply-To: <20260501-synopsys-dw-dp-improvements-v2-2-d7e7f6bac77f@collabora.com>
References: <20260501-synopsys-dw-dp-improvements-v2-0-d7e7f6bac77f@collabora.com>
 <20260501-synopsys-dw-dp-improvements-v2-2-d7e7f6bac77f@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260602_124857_900790_1AFE5AA6 
X-CRM114-Status: UNSURE (   9.18  )
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
Cc: devicetree@vger.kernel.org, Dmitry Baryshkov <lumag@kernel.org>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-rockchip@lists.infradead.org, Damon Ding <damon.ding@rock-chips.com>, Alexey Charkov <alchark@gmail.com>, kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

QW0gRnJlaXRhZywgMS4gTWFpIDIwMjYsIDAwOjIwOjI5IE1pdHRlbGV1cm9ww6Rpc2NoZSBTb21t
ZXJ6ZWl0IHNjaHJpZWIgU2ViYXN0aWFuIFJlaWNoZWw6Cj4gRnJvbTogQ3Jpc3RpYW4gQ2lvY2Fs
dGVhIDxjcmlzdGlhbi5jaW9jYWx0ZWFAY29sbGFib3JhLmNvbT4KPiAKPiBDb3JlIHJlc291cmNl
cyBzdWNoIGFzIHRoZSBEaXNwbGF5UG9ydCBBVVggY2hhbm5lbCBnZXQgaW5pdGlhbGl6ZWQgYW5k
Cj4gcmVnaXN0ZXJlZCBkdXJpbmcgZHdfZHBfYmluZCgpLCBidXQgYXJlIG5ldmVyIHVucmVnaXN0
ZXJlZCwgd2hpY2ggbWF5Cj4gbGVhZCB0byBtZW1vcnkgbGVha3MgYW5kL29yIHVzZS1hZnRlci1m
cmVlOgo+IAo+IFsgIDIyNC42NjEzNzFdIEJVRzogS0FTQU46IHNsYWItdXNlLWFmdGVyLWZyZWUg
aW4gZGV2aWNlX2lzX2RlcGVuZGVudCsweGUwLzB4MmIwCj4gWyAgMjI0LjY2MjAxNV0gUmVhZCBv
ZiBzaXplIDggYXQgYWRkciBmZmZmMDAwMTFhZWU4NTUwIGJ5IHRhc2sgbW9kcHJvYmUvNjU4Cj4g
WyAgMjI0LjY2MjYxMl0KPiBbICAyMjQuNjYyNzUyXSBDUFU6IDcgVUlEOiAwIFBJRDogNjU4IENv
bW06IG1vZHByb2JlIE5vdCB0YWludGVkIDcuMC4wLXJjMi1uZXh0LTIwMjYwMzA1ICMxNCBQUkVF
TVBUCj4gWyAgMjI0LjY2Mjc1OV0gSGFyZHdhcmUgbmFtZTogUmFkeGEgUk9DSyA1QiAoRFQpCj4g
WyAgMjI0LjY2Mjc2Ml0gQ2FsbCB0cmFjZToKPiBbICAyMjQuNjYyNzY0XSAgc2hvd19zdGFjaysw
eDIwLzB4MzggKEMpCj4gWyAgMjI0LjY2Mjc3Ml0gIGR1bXBfc3RhY2tfbHZsKzB4NmMvMHg5OAo+
IFsgIDIyNC42NjI3NzddICBwcmludF9yZXBvcnQrMHgxNjAvMHg0YjgKPiBbICAyMjQuNjYyNzgz
XSAga2FzYW5fcmVwb3J0KzB4YjQvMHhlMAo+IFsgIDIyNC42NjI3OTBdICBfX2FzYW5fcmVwb3J0
X2xvYWQ4X25vYWJvcnQrMHgyMC8weDMwCj4gWyAgMjI0LjY2Mjc5Nl0gIGRldmljZV9pc19kZXBl
bmRlbnQrMHhlMC8weDJiMAo+IFsgIDIyNC42NjI4MDJdICBkZXZpY2VfaXNfZGVwZW5kZW50KzB4
MTA4LzB4MmIwCj4gWyAgMjI0LjY2MjgwOF0gIGRldmljZV9saW5rX2FkZCsweDFmOC8weDEwYjAK
PiBbICAyMjQuNjYyODEzXSAgZGV2bV9vZl9waHlfZ2V0X2J5X2luZGV4KzB4MTIwLzB4MjAwCj4g
WyAgMjI0LjY2MjgxOV0gIGR3X2RwX2JpbmQrMHgzNGMvMHhiMTAgW2R3X2RwXQo+IFsgIDIyNC42
NjI4MzBdICBkd19kcF9yb2NrY2hpcF9iaW5kKzB4MTk0LzB4MjUwIFtyb2NrY2hpcGRybV0KPiBb
ICAyMjQuNjYyODY0XSAgY29tcG9uZW50X2JpbmRfYWxsKzB4M2E4LzB4NzIwCj4gWyAgMjI0LjY2
Mjg2OV0gIHJvY2tjaGlwX2RybV9iaW5kKzB4MTIwLzB4MzkwIFtyb2NrY2hpcGRybV0KPiBbICAy
MjQuNjYyODk5XSAgdHJ5X3RvX2JyaW5nX3VwX2FnZ3JlZ2F0ZV9kZXZpY2UrMHg3NmMvMHg4MzgK
PiBbICAyMjQuNjYyOTA0XSAgY29tcG9uZW50X21hc3Rlcl9hZGRfd2l0aF9tYXRjaCsweDFmNC8w
eDIzMAo+IFsgIDIyNC42NjI5MDldICByb2NrY2hpcF9kcm1fcGxhdGZvcm1fcHJvYmUrMHg0MjAv
MHg1MzggW3JvY2tjaGlwZHJtXQo+IFsgIDIyNC42NjI5MzldICBwbGF0Zm9ybV9wcm9iZSsweGU4
LzB4MTY4Cj4gWyAgMjI0LjY2Mjk0NV0gIHJlYWxseV9wcm9iZSsweDM0MC8weDgyOAo+IFsgIDIy
NC42NjI5NTBdICBfX2RyaXZlcl9wcm9iZV9kZXZpY2UrMHgyZTAvMHgzNTAKPiBbICAyMjQuNjYy
OTU0XSAgZHJpdmVyX3Byb2JlX2RldmljZSsweDgwLzB4MTQwCj4gWyAgMjI0LjY2Mjk1OV0gIF9f
ZHJpdmVyX2F0dGFjaCsweDM5OC8weDQ2MAo+IFsgIDIyNC42NjI5NjRdICBidXNfZm9yX2VhY2hf
ZGV2KzB4ZTAvMHgxOTgKPiBbICAyMjQuNjYyOTY4XSAgZHJpdmVyX2F0dGFjaCsweDUwLzB4NjgK
PiBbICAyMjQuNjYyOTcyXSAgYnVzX2FkZF9kcml2ZXIrMHgyYTAvMHg0YzAKPiBbICAyMjQuNjYy
OTc3XSAgZHJpdmVyX3JlZ2lzdGVyKzB4Mjk0LzB4MzYwCj4gWyAgMjI0LjY2Mjk4Ml0gIF9fcGxh
dGZvcm1fZHJpdmVyX3JlZ2lzdGVyKzB4N2MvMHg5OAo+IFsgIDIyNC42NjI5ODddICByb2NrY2hp
cF9kcm1faW5pdCsweGM0LzB4ZmY4IFtyb2NrY2hpcGRybV0KPiAKPiBTaW5jZSBhIHByZXZpb3Vz
IGNvbW1pdCBleHBvcnRlZCBkd19kcF91bmJpbmQoKSBmdW5jdGlvbiBpbiBEVyBEUCBjb3JlCj4g
bGlicmFyeSB0byB0YWtlIGNhcmUgb2YgdGhlIG5lY2Vzc2FyeSBjbGVhbnVwLCB1c2UgdGhpcyBp
biB0aGUKPiBjb21wb25lbnQncyB1bmJpbmQoKSBjYWxsYmFjaywgYXMgd2VsbCBhcyBpbiBpdHMg
YmluZCgpIGVycm9yIHBhdGguCj4gCj4gRml4ZXM6IGQ2OGJhN2JhYzk1NSAoImRybS9yb2NrY2hp
cDogQWRkIFJLMzU4OCBEUFRYIG91dHB1dCBzdXBwb3J0IikKPiBTaWduZWQtb2ZmLWJ5OiBDcmlz
dGlhbiBDaW9jYWx0ZWEgPGNyaXN0aWFuLmNpb2NhbHRlYUBjb2xsYWJvcmEuY29tPgo+IFNpZ25l
ZC1vZmYtYnk6IFNlYmFzdGlhbiBSZWljaGVsIDxzZWJhc3RpYW4ucmVpY2hlbEBjb2xsYWJvcmEu
Y29tPgoKcGlja2VkIHRoZSBzYW1lIG9uZSBmcm9tIENyaXN0aWFuJ3Mgc2VyaWVzCgoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

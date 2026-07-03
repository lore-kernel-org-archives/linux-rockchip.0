Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39B82C43458
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Jul 2026 16:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g4dLao2asSXA/98FwRJAllBD8XMu86RqUfaLvLPZ/68=; b=T6nrsbhz08qBpq
	lGqNXv0VRWIVTNiANH595pWnJrqFaBLgCjtB/RQbQ+3/yRFoTbkwnvniX86M/SRDvlEqyaRUy+HjH
	ZgL4XwD+DJYqTC9INZSUIb6sFcneZp/fZApAbJtq9hLSCbFPiuEBnVd8YNyLmTX3qBlbMXzMfOBp8
	9+QIyf59YKRMqIcPq9Z5DeUbCcf57Rw//KooOZOMWOrwuQm1UULpmis46wvt1mYHksX3DZlJuvvHR
	QLf9AB1T9YKpYRAS9mbGaua8nr/0nGF4iTNyXb4DXkfa6f/ZMfQg7VHrWNIoe1QQv0J5Os11yoEBG
	Oc0E2Azz+OL6SVHErqmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfhF5-00000007Zrz-1WMQ;
	Fri, 03 Jul 2026 16:59:55 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfhF0-00000007Zpy-04sT;
	Fri, 03 Jul 2026 16:59:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1783097985;
	bh=Dhy4gvLT0RAnGvm4Qciq67SI7sUn4Qp1DNRguSA4Rcs=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=nJd6/ih40hiWEhn4ndj338VwFyT5SxADffzqSTjv1GQ5me0AH4Mj17WymraBfs+t/
	 r5GGKZ4aL8Tow2C+NPSJhmYYVE5jc8dNI+pq7pn2xeqyIqZaFc0+AT+VP4hhrndqmx
	 RZH5/XifxgE5MXgQvzXY0bL00xaiScLbPsKviaa4biXtRCgtTWQ1LRbKxdaAO8vh4c
	 vFeEhuh52yIuwJ9INcJJC/MsS0C0gxf7stzwfxbLzKvut59k3ZLy5XdVxXX7PCQpbq
	 CBgkhxWhD17uony3610weO3dBkZHxQph+StpRo70GCInYK0K4cKEHlrvZ/jxJI/Bqj
	 IFdD4qkXS6vNg==
Received: from [100.64.0.241] (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id F3DB217E0521;
	Fri,  3 Jul 2026 18:59:44 +0200 (CEST)
Message-ID: <deb7bdd8-f9d0-43cd-9de0-82e80351a739@collabora.com>
Date: Fri, 3 Jul 2026 19:59:44 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/9] dt-bindings: display: vop2: Add missing reset
 properties
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Diederik de Haas <diederik@cknow-tech.com>, Sandy Huang
 <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>
Cc: kernel@collabora.com, Andy Yan <andyshrk@163.com>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20260617-dw-hdmi-qp-yuv-v1-0-a665cfd06d7d@collabora.com>
 <DJC0L3CRJ0WL.IZEYVLPROMM1@cknow-tech.com>
 <fe8038fe-940a-4c61-a551-082534ef9c51@collabora.com>
 <8183064.gsGJI6kyIV@diego>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <8183064.gsGJI6kyIV@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260703_095950_216585_72EA12AA 
X-CRM114-Status: GOOD (  12.71  )
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

T24gNy8zLzI2IDc6MzcgUE0sIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+IEFtIERvbm5lcnN0YWcs
IDE4LiBKdW5pIDIwMjYsIDEwOjM5OjE0IE1pdHRlbGV1cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0IHNj
aHJpZWIgQ3Jpc3RpYW4gQ2lvY2FsdGVhOgo+PiBIaSBEaWVkZXJpaywKPj4KPj4gT24gNi8xOC8y
NiAxMDo1OCBBTSwgRGllZGVyaWsgZGUgSGFhcyB3cm90ZToKPj4+IEhpIENyaXN0aWFuLAo+Pj4K
Pj4+IFRoYW5rcyBmb3IgdGhpcyBzZXJpZXMgOi0pIEp1c3QgMSBuaXQgKGF0IHRoZSBlbmQpIC4u
Lgo+Pj4KPj4+IE9uIFdlZCBKdW4gMTcsIDIwMjYgYXQgODo1MiBQTSBDRVNULCBDcmlzdGlhbiBD
aW9jYWx0ZWEgd3JvdGU6Cj4+Pj4gRG9jdW1lbnQgdGhlIFZPUDIgcmVzZXRzIGNvcnJlc3BvbmRp
bmcgdG8gdGhlIEFYSSwgQUhCIGFuZCBEQ0xLX1ZQMC4uMgo+Pj4+IGNsb2Nrcywgd2hpY2ggYXJl
IGNvbW1vbiB0byBhbGwgc3VwcG9ydGVkIFNvQ3MsIHBsdXMgRENMS19WUDMgd2hpY2ggaXMKPj4+
PiBwcm92aWRlZCBvbmx5IG9uIFJLMzU4OC4KPj4+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IENyaXN0
aWFuIENpb2NhbHRlYSA8Y3Jpc3RpYW4uY2lvY2FsdGVhQGNvbGxhYm9yYS5jb20+Cj4+Pj4gLS0t
Cj4+Pj4gIC4uLi9iaW5kaW5ncy9kaXNwbGF5L3JvY2tjaGlwL3JvY2tjaGlwLXZvcDIueWFtbCAg
IHwgNDIgKysrKysrKysrKysrKysrKysrKysrKwo+Pj4+ICAxIGZpbGUgY2hhbmdlZCwgNDIgaW5z
ZXJ0aW9ucygrKQo+Pj4+Cj4+Pj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9kaXNwbGF5L3JvY2tjaGlwL3JvY2tjaGlwLXZvcDIueWFtbCBiL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L3JvY2tjaGlwL3JvY2tjaGlwLXZvcDIu
eWFtbAo+Pj4+IGluZGV4IDkzZGExZmI5YWRjNC4uZDNiYzUzODBmOTEwIDEwMDY0NAo+Pj4+IC0t
LSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L3JvY2tjaGlwL3Jv
Y2tjaGlwLXZvcDIueWFtbAo+Pj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9kaXNwbGF5L3JvY2tjaGlwL3JvY2tjaGlwLXZvcDIueWFtbAo+PiBbLi4uXQo+Pgo+Pj4+
IEBAIC0yODksNiArMzIxLDE2IEBAIGV4YW1wbGVzOgo+Pj4+ICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAiZGNsa192cDAiLAo+Pj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAiZGNsa192cDEiLAo+Pj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAiZGNsa192
cDIiOwo+Pj4+ICsgICAgICAgICAgICAgICAgcmVzZXRzID0gPCZjcnUgU1JTVF9BX1ZPUD4sCj4+
Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICA8JmNydSBTUlNUX0hfVk9QPiwKPj4+PiArICAg
ICAgICAgICAgICAgICAgICAgICAgIDwmY3J1IFNSU1RfVk9QMD4sCj4+Pj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICA8JmNydSBTUlNUX1ZPUDE+LAo+Pj4+ICsgICAgICAgICAgICAgICAgICAg
ICAgICAgPCZjcnUgU1JTVF9WT1AyPjsKPj4+PiArICAgICAgICAgICAgICAgIHJlc2V0LW5hbWVz
ID0gImF4aSIsCj4+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJhaGIiLAo+Pj4+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAiZGNsa192cDAiLAo+Pj4+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAiZGNsa192cDEiLAo+Pj4+ICsgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAiZGNsa192cDIiOwo+Pj4+ICAgICAgICAgICAgICAgICAgcG93ZXItZG9t
YWlucyA9IDwmcG93ZXIgUkszNTY4X1BEX1ZPPjsKPj4+Cj4+PiBQbGFjZSByZXNldCogcHJvcHMg
YmVsb3cgcG93ZXItZG9tYWlucyAobGlrZSBpbiBwYXRjaCA5KSA/Cj4+PiBTbyBldmVyeW9uZSB3
aG8gY29waWVzIHlvdXIgZXhhbXBsZSBoYXMgdGhlIGNvcnJlY3Qgc29ydGluZyBvcmRlci4KPj4K
Pj4gVGhlIGV4YW1wbGUgZG9lc24ndCBzdHJpY3RseSBmb2xsb3cgdGhhdCBvcmRlcmluZyBlaXRo
ZXIg4oCUIHNlZSBlLmcuIHRoZSBpb21tdXMKPj4gcHJvcGVydHkg4oCUIHNvIEkgcGxhY2VkIHRo
ZSByZXNldHMgcmlnaHQgYWZ0ZXIgdGhlIGNsb2Nrcywgd2hpY2gga2VlcHMgdGhlCj4+IHJlbGF0
ZWQgcHJvcGVydGllcyBncm91cGVkIHRvZ2V0aGVyLgo+Pgo+PiBUaGF0IHNhaWQsIEkgZG9uJ3Qg
aGF2ZSBhIHN0cm9uZyBwcmVmZXJlbmNlLiAKPj4KPj4gSGVpa28sIGlzIHRoZXJlIGEgY29udmVu
dGlvbiB5b3UnZCBsaWtlIHRoZSBSb2NrY2hpcCBiaW5kaW5ncyB0byBmb2xsb3cgaGVyZT8KPj4g
SGFwcHkgdG8gcmVvcmRlciBpZiBzby4KPiAKPiBQbGVhc2UganVzdCB1c2Ugc3RhbmRhcmQgZGV2
aWNldHJlZSBvcmRlcmluZywgYXMgZGVzY3JpYmVkIGluIHRoZQo+IGRvY3VtZW50YXRpb24uIFdl
IGdlbmVyYWxseSBkb24ndCB3YW50IHRvIGludmVudCBuZXcgZGl2ZXJnaW5nIHRoaW5ncyA6LSkK
CkFjay4gRm9yIGNvbnNpc3RlbmN5LCBsZXQncyBhbHNvIG1vdmUgdGhlIGlvbW11cyBwcm9wZXJ0
eSB1cCBpbnRvIHRoZSBleHBlY3RlZApwb3NpdGlvbi4KClRoYW5rcywKQ3Jpc3RpYW4KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

Return-Path: <SRS0=3OfA=KB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1E2EC433ED
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 May 2021 12:50:49 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1F74E613D8
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 May 2021 12:50:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1F74E613D8
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=xs4all.nl
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HTQtwYODKOEXU8Aw/jGVrD2hjU1k7TvCiRxTWDpN2is=; b=eaRIGWm2fYgV66yNvjE74ggw/
	b1/ubNK5Cg4dmwcEIHZJUiu6JK6ptL61ycM8eOijEjWzZf+vSlXY56/xpmomB3kradzKaWfwWeJed
	+JdgXVBOLQ/KTCIIARlf9YQbdkA0S4D7PZTPcU7ZSGA2Z2oPZQOYg6XNYoO9Cqk4lnwc9FNuHqamN
	dl60Ecjr3YIS2775paaCLBhZ7+ZAh+NPjqIlCRhhHzv/zWBUa7tz9KgD7x9vzF8XimB+Qcg7S5I8b
	wECMvEw5N32bC955wJ25EINwXx9WB1nSiFOE0bxPb4yX/qqxuy+GBoIr82qLqfbMiuHaqaY7SJRyP
	nNVNbxoyw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ledSj-004G2Y-Mo; Thu, 06 May 2021 12:50:41 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ledSX-004G0c-Gy; Thu, 06 May 2021 12:50:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=K3TQ5Oicz5+r8i9gQQfd6zKGle8y9tYgH8kJCMW3wQA=; b=krLr7Lzvp/peJwzNrw9ALWrjb0
 8q+D9VjgdhNuSs2XABPP/8CpdPLMrWPNKmdZgTGS6jKA8fnDYUN5T6oenLe9FEkDYOhuyAoE4tjtD
 tqNknWD4J/6StjXg69X7p6xc9Q8BsNKsRt6pdeNyJDiZyDHXxEbm1r5BoOMhOBCbZNhy2AMmBjUGc
 rRTUhXWp4iQRstM2ABw/XYUU1P+decoHaOj2YTDbM1LBR74Ka4baw0KKjovp+EeO9a9cXPWzxlJ7K
 3TnDTnSBRI5nUoSI4IJIOpM9zYaCIbI9KQwAJ62NpeKgI59a1EiyPIVH3D9t+B91ki09T3bkGVSnq
 R1Ka5Qow==;
Received: from lb1-smtp-cloud7.xs4all.net ([194.109.24.24])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ledSU-0062F5-EH; Thu, 06 May 2021 12:50:28 +0000
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud7.xs4all.net with ESMTPA
 id edSMlv6XlyEWwedSPl13Vh; Thu, 06 May 2021 14:50:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s2;
 t=1620305423; bh=K3TQ5Oicz5+r8i9gQQfd6zKGle8y9tYgH8kJCMW3wQA=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=upNhIkExWaYt/ZamhrevHvQuMgs1byprylVgRr/tpAjFlnWoMd/AUlWiumNKVyvnR
 e/0U+1ITfU8dgewhUOB1d2PLI8a10stFl40PVAIVInApepr3fkPtl83nE66oOW7Hog
 WktGd6eSQT2OyNwCdMrKf8Xt7BMbpa03sK8XqtQSqaLo/WpBsuFRGlWalFX2NFCwfM
 1aqAAKG+fJ4aZiKgJdXP9+V4CS4lItqpCP3V64dDIpMmLI7BZ+i0ED1JpMvYMfIGM5
 dL3K593JiMe3UTT2RgVpeOZxvv4TzqpSRD9BvVggbVPiI3PNlcVeSgI4fxc6DPgDm0
 1/D/S3UBgeGCg==
Subject: Re: [PATCH v10 6/9] media: uapi: Add a control for HANTRO driver
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 ezequiel@collabora.com, p.zabel@pengutronix.de, mchehab@kernel.org,
 robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 festevam@gmail.com, lee.jones@linaro.org, gregkh@linuxfoundation.org,
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org,
 jernej.skrabec@siol.net, emil.l.velikov@gmail.com
Cc: kernel@pengutronix.de, linux-imx@nxp.com, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devel@driverdev.osuosl.org, kernel@collabora.com, cphealy@gmail.com
References: <20210420121046.181889-1-benjamin.gaignard@collabora.com>
 <20210420121046.181889-7-benjamin.gaignard@collabora.com>
 <a7c9fe23-2900-ac90-7131-21380fbfc793@xs4all.nl>
 <1cf94540-7f4d-0179-dd1e-0b82ee30f6d2@collabora.com>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Message-ID: <815a4bd6-599b-cfb8-9ddc-efa4b7092c23@xs4all.nl>
Date: Thu, 6 May 2021 14:50:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <1cf94540-7f4d-0179-dd1e-0b82ee30f6d2@collabora.com>
Content-Language: en-US
X-CMAE-Envelope: MS4xfA5gObUZRMJwL5EnKYVFy/jiVJqnngBoF/9iy18Nv4sm6KyMRzVLHtlecWB6vedDmmkD3Hr/vNGWrhY35jPviUP/UOOQ3CTEQc9eiXjLz87VRCfw3XYS
 aisdRTuwTDonFmIVnD8MDEqTEAMRefT0fMVvjWfTXQCMM/s/ups6+CuHvRznpoT1CYHWlo4BtF2OgRufynbJke4G6FbtBZJ35V1wVHaB0x7EwkX3h7v7qIkJ
 OXAa7bTbcmfEM4XwYKOyiGCpVrIbRK4J5EPlf3VKpg5ifNNRLKT8SFey8J7TV+YqTOTKApEFc98vS64sQW9XPiMSNf/JEVu3qP5ZksSMXHAYTDmx5sc9JEkK
 U2CMVkK3cdx04U8881cyMiFyHf5azKxXem1fTfzrcf3Kf59A5CdVmLJbp+JwaXdEJv+KKk7GzNPMT3MUKBqbewHNP8SKopS7DPB6bPGC+6VNFKlu29W+mEMb
 JIg57vF1qWcb09EHvwgPuoope1dqi4F15/W+hRLUklkPi7xF3xlo9+wBJ06LrTC4LmkqGxd9UC7XQiROP+EI92KXJDCkLTMlwjqqtD80XzdN+QtIB1Fe+mqh
 N7+JRS8nD2BUpqY3mOiK+jiRCeNP2LpECcRan2Twt2rvt7ISlglW2Y5WPda0Dl29nAmJXqGHbHM/2wr0geSxUIOB3BL7RcRJ6reeNYKowgLDW+shUpBqSMMP
 KhAluwQ88AJGoRmx4/P0T9Iiuny8T8tMtBeC0c9ZAlz23COKxM8jUaj/dfNYK7q/eNUrHWlbzaMJQygDb4/0aoQBTMqkzrmf/TR5glBRjGN0J/1p3zUz/ytp
 WrrU/WPemDB7AtqmR0wWyPl9zv8S5vHB9EH6cXrZ+tILSvCLYTn8htfJha43b9UmyPUEkgPUDfoEQHgOirXel62JfV7tLYzhBx/FtghjuCKWcX6oq+pp7R44
 zIMcdKwO2/aPI98nfCG3r16uXELuczGuaew4ogdZ+Ls05h6xy3KWsjbO+uQSSQcWCOQO1DUFCum8i3ytDtJZAvkPG+5t2Ybped0+urU0i+M4UdqN
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210506_055026_663964_5B86FA52 
X-CRM114-Status: GOOD (  26.31  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

T24gMDUvMDUvMjAyMSAxNzoyMCwgQmVuamFtaW4gR2FpZ25hcmQgd3JvdGU6Cj4gCj4gTGUgMDUv
MDUvMjAyMSDDoCAxNjo1NSwgSGFucyBWZXJrdWlsIGEgw6ljcml0wqA6Cj4+IE9uIDIwLzA0LzIw
MjEgMTQ6MTAsIEJlbmphbWluIEdhaWduYXJkIHdyb3RlOgo+Pj4gVGhlIEhFVkMgSEFOVFJPIGRy
aXZlciBuZWVkcyB0byBrbm93IHRoZSBudW1iZXIgb2YgYml0cyB0byBza2lwIGF0Cj4+PiB0aGUg
YmVnaW5uaW5nIG9mIHRoZSBzbGljZSBoZWFkZXIuCj4+PiBUaGF0IGlzIGEgaGFyZHdhcmUgc3Bl
Y2lmaWMgcmVxdWlyZW1lbnQgc28gY3JlYXRlIGEgZGVkaWNhdGVkIGNvbnRyb2wKPj4+IGZvciB0
aGlzIHB1cnBvc2UuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogQmVuamFtaW4gR2FpZ25hcmQgPGJl
bmphbWluLmdhaWduYXJkQGNvbGxhYm9yYS5jb20+Cj4+PiAtLS0KPj4+ICAgLi4uL3VzZXJzcGFj
ZS1hcGkvbWVkaWEvZHJpdmVycy9oYW50cm8ucnN0ICAgIHwgMTkgKysrKysrKysrKysrKysrKysr
Kwo+Pj4gICAuLi4vdXNlcnNwYWNlLWFwaS9tZWRpYS9kcml2ZXJzL2luZGV4LnJzdCAgICAgfCAg
MSArCj4+PiAgIGluY2x1ZGUvbWVkaWEvaGV2Yy1jdHJscy5oICAgICAgICAgICAgICAgICAgICB8
IDEzICsrKysrKysrKysrKysKPj4+ICAgMyBmaWxlcyBjaGFuZ2VkLCAzMyBpbnNlcnRpb25zKCsp
Cj4+PiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkvbWVk
aWEvZHJpdmVycy9oYW50cm8ucnN0Cj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24v
dXNlcnNwYWNlLWFwaS9tZWRpYS9kcml2ZXJzL2hhbnRyby5yc3QgYi9Eb2N1bWVudGF0aW9uL3Vz
ZXJzcGFjZS1hcGkvbWVkaWEvZHJpdmVycy9oYW50cm8ucnN0Cj4+PiBuZXcgZmlsZSBtb2RlIDEw
MDY0NAo+Pj4gaW5kZXggMDAwMDAwMDAwMDAwLi5jZDk3NTRiNGUwMDUKPj4+IC0tLSAvZGV2L251
bGwKPj4+ICsrKyBiL0RvY3VtZW50YXRpb24vdXNlcnNwYWNlLWFwaS9tZWRpYS9kcml2ZXJzL2hh
bnRyby5yc3QKPj4+IEBAIC0wLDAgKzEsMTkgQEAKPj4+ICsuLiBTUERYLUxpY2Vuc2UtSWRlbnRp
ZmllcjogR1BMLTIuMAo+Pj4gKwo+Pj4gK0hhbnRybyB2aWRlbyBkZWNvZGVyIGRyaXZlcgo+Pj4g
Kz09PT09PT09PT09PT09PT09PT09PT09PT09PQo+Pj4gKwo+Pj4gK1RoZSBIYW50cm8gdmlkZW8g
ZGVjb2RlciBkcml2ZXIgaW1wbGVtZW50cyB0aGUgZm9sbG93aW5nIGRyaXZlci1zcGVjaWZpYyBj
b250cm9sczoKPj4+ICsKPj4+ICtgYFY0TDJfQ0lEX0hBTlRST19IRVZDX1NMSUNFX0hFQURFUl9T
S0lQIChpbnRlZ2VyKWBgCj4+PiArICAgIFNwZWNpZmllcyB0byBIYW50cm8gSEVWQyB2aWRlbyBk
ZWNvZGVyIGRyaXZlciB0aGUgbnVtYmVyIG9mIGRhdGEgKGluIGJpdHMpIHRvCj4+PiArICAgIHNr
aXAgaW4gdGhlIHNsaWNlIHNlZ21lbnQgaGVhZGVyLgo+Pj4gKyAgICBJZiBub24tSURSLCB0aGUg
Yml0cyB0byBiZSBza2lwcGVkIGdvIGZyb20gc3ludGF4IGVsZW1lbnQgInBpY19vdXRwdXRfZmxh
ZyIKPj4+ICsgICAgdG8gYmVmb3JlIHN5bnRheCBlbGVtZW50ICJzbGljZV90ZW1wb3JhbF9tdnBf
ZW5hYmxlZF9mbGFnIi4KPj4+ICsgICAgSWYgSURSLCB0aGUgc2tpcHBlZCBiaXRzIGFyZSBqdXN0
ICJwaWNfb3V0cHV0X2ZsYWciCj4+PiArICAgIChzZXBhcmF0ZV9jb2xvdXJfcGxhbmVfZmxhZyBp
cyBub3Qgc3VwcG9ydGVkKS4KPj4gSSdtIG5vdCB2ZXJ5IGtlZW4gb24gdGhpcy4gV2l0aG91dCB0
aGlzIGluZm9ybWF0aW9uIHRoZSB2aWRlbyBkYXRhIGNhbm5vdCBiZQo+PiBkZWNvZGVkLCBvciB3
aWxsIGl0IGp1c3QgYmUgc3Vib3B0aW1hbD8KPiAKPiBXaXRob3V0IHRoYXQgaW5mb3JtYXRpb24g
dGhlIHZpZGVvIGNhbid0IGJlIGRlY29kZWQuCj4gCj4+Cj4+IFRoZSBwcm9ibGVtIGlzIHRoYXQg
YSBnZW5lcmljIGRlY29kZXIgd291bGQgaGF2ZSB0byBrbm93IHRoYXQgdGhlIEhXIGlzIGEgaGFu
dHJvLAo+PiBhbmQgdGhlbiBjYWxsIHRoaXMgY29udHJvbC4gSWYgdGhleSBkb24ndCAoYW5kIGFy
ZSB0ZXN0aW5nIG9uIG5vbi1oYW50cm8gSFcpLCB0aGVuCj4+IGl0IHdvbid0IHdvcmssIHRodXMg
ZGVmZWF0aW5nIHRoZSBwdXJwb3NlIG9mIHRoZSBIVyBpbmRlcGVuZGVudCBkZWNvZGVyIEFQSS4K
Pj4KPj4gU2luY2UgaGFudHJvIGlzIHdpZGVseSB1c2VkLCBhbmQgaWYgdGhlcmUgaXMgbm8gb3Ro
ZXIgd2F5IHRvIGRvIHRoaXMgYmVzaWRlIGV4cGxpdGVseQo+PiBzZXR0aW5nIHRoaXMgY29udHJv
bCwgdGhlbiBwZXJoYXBzIHRoaXMgc2hvdWxkIGJlIHBhcnQgb2YgdGhlIHN0YW5kYXJkIEhFVkMg
QVBJLgo+PiBOb24taGFudHJvIGRyaXZlcnMgdGhhdCBkbyBub3QgbmVlZCB0aGlzIGNhbiBqdXN0
IHNraXAgaXQuCj4gCj4gRXZlbiBpZiBJIHB1dCB0aGlzIHBhcmFtZXRlciBpbiBkZWNvZGVfcGFy
YW1zIHN0cnVjdHVyZSB0aGF0IHdvdWxkIG1lYW5zIHRoYXQgYSBnZW5lcmljCj4gdXNlcmxhbmQg
ZGVjb2RlciB3aWxsIGhhdmUgdG8ga25vdyBob3cgdGhlIGNvbXB1dGUgdGhpcyB2YWx1ZSBmb3Ig
aGFudHJvIEhXIHNpbmNlIGl0Cj4gaXNuJ3Qgc29tZXRoaW5nIHRoYXQgY291bGQgYmUgZG9uZSBv
biBrZXJuZWwgc2lkZS4KCkJ1dCBzaW5jZSBoYW50cm8gaXMgdmVyeSBjb21tb24sIGFueSB1c2Vy
bGFuZCBkZWNvZGVyIHdpbGwgbmVlZCB0byBjYWxjdWxhdGUgdGhpcyBhbnl3YXkuClNvIHBlcmhh
cHMgaXQgaXMgYmV0dGVyIHRvIGhhdmUgdGhpcyBhcyBwYXJ0IG9mIHRoZSBkZWNvZGVfcGFyYW1z
PwoKSSdkIGxpa2UgdG8ga25vdyB3aGF0IG90aGVycyB0aGluayBhYm91dCB0aGlzLgoKUmVnYXJk
cywKCglIYW5zCgo+IAo+IAo+IFJlZ2FyZHMsCj4gQmVuamFtaW4KPiAKPj4KPj4gUmVnYXJkcywK
Pj4KPj4gCUhhbnMKPj4KPj4+ICsKPj4+ICsuLiBub3RlOjoKPj4+ICsKPj4+ICsgICAgICAgIFRo
aXMgY29udHJvbCBpcyBub3QgeWV0IHBhcnQgb2YgdGhlIHB1YmxpYyBrZXJuZWwgQVBJIGFuZAo+
Pj4gKyAgICAgICAgaXQgaXMgZXhwZWN0ZWQgdG8gY2hhbmdlLgo+Pj4gZGlmZiAtLWdpdCBhL0Rv
Y3VtZW50YXRpb24vdXNlcnNwYWNlLWFwaS9tZWRpYS9kcml2ZXJzL2luZGV4LnJzdCBiL0RvY3Vt
ZW50YXRpb24vdXNlcnNwYWNlLWFwaS9tZWRpYS9kcml2ZXJzL2luZGV4LnJzdAo+Pj4gaW5kZXgg
MWE5MDM4ZjVmOWZhLi4xMmUzYzUxMmQ3MTggMTAwNjQ0Cj4+PiAtLS0gYS9Eb2N1bWVudGF0aW9u
L3VzZXJzcGFjZS1hcGkvbWVkaWEvZHJpdmVycy9pbmRleC5yc3QKPj4+ICsrKyBiL0RvY3VtZW50
YXRpb24vdXNlcnNwYWNlLWFwaS9tZWRpYS9kcml2ZXJzL2luZGV4LnJzdAo+Pj4gQEAgLTMzLDYg
KzMzLDcgQEAgRm9yIG1vcmUgZGV0YWlscyBzZWUgdGhlIGZpbGUgQ09QWUlORyBpbiB0aGUgc291
cmNlIGRpc3RyaWJ1dGlvbiBvZiBMaW51eC4KPj4+ICAgCj4+PiAgIAljY3MKPj4+ICAgCWN4MjM0
MXgtdWFwaQo+Pj4gKyAgICAgICAgaGFudHJvCj4+PiAgIAlpbXgtdWFwaQo+Pj4gICAJbWF4MjE3
NQo+Pj4gICAJbWV5ZS11YXBpCj4+PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9tZWRpYS9oZXZjLWN0
cmxzLmggYi9pbmNsdWRlL21lZGlhL2hldmMtY3RybHMuaAo+Pj4gaW5kZXggOGUwMTA5ZWVhNDU0
Li5iNzEzZWVlZDE5MTUgMTAwNjQ0Cj4+PiAtLS0gYS9pbmNsdWRlL21lZGlhL2hldmMtY3RybHMu
aAo+Pj4gKysrIGIvaW5jbHVkZS9tZWRpYS9oZXZjLWN0cmxzLmgKPj4+IEBAIC0yMjQsNCArMjI0
LDE3IEBAIHN0cnVjdCB2NGwyX2N0cmxfaGV2Y19kZWNvZGVfcGFyYW1zIHsKPj4+ICAgCV9fdTY0
CWZsYWdzOwo+Pj4gICB9Owo+Pj4gICAKPj4+ICsvKiAgTVBFRy1jbGFzcyBjb250cm9sIElEcyBz
cGVjaWZpYyB0byB0aGUgSGFudHJvIGRyaXZlciBhcyBkZWZpbmVkIGJ5IFY0TDIgKi8KPj4+ICsj
ZGVmaW5lIFY0TDJfQ0lEX0NPREVDX0hBTlRST19CQVNFCQkJCShWNEwyX0NUUkxfQ0xBU1NfQ09E
RUMgfCAweDEyMDApCj4+PiArLyoKPj4+ICsgKiBWNEwyX0NJRF9IQU5UUk9fSEVWQ19TTElDRV9I
RUFERVJfU0tJUCAtCj4+PiArICogdGhlIG51bWJlciBvZiBkYXRhIChpbiBiaXRzKSB0byBza2lw
IGluIHRoZQo+Pj4gKyAqIHNsaWNlIHNlZ21lbnQgaGVhZGVyLgo+Pj4gKyAqIElmIG5vbi1JRFIs
IHRoZSBiaXRzIHRvIGJlIHNraXBwZWQgZ28gZnJvbSBzeW50YXggZWxlbWVudCAicGljX291dHB1
dF9mbGFnIgo+Pj4gKyAqIHRvIGJlZm9yZSBzeW50YXggZWxlbWVudCAic2xpY2VfdGVtcG9yYWxf
bXZwX2VuYWJsZWRfZmxhZyIuCj4+PiArICogSWYgSURSLCB0aGUgc2tpcHBlZCBiaXRzIGFyZSBq
dXN0ICJwaWNfb3V0cHV0X2ZsYWciCj4+PiArICogKHNlcGFyYXRlX2NvbG91cl9wbGFuZV9mbGFn
IGlzIG5vdCBzdXBwb3J0ZWQpLgo+Pj4gKyAqLwo+Pj4gKyNkZWZpbmUgVjRMMl9DSURfSEFOVFJP
X0hFVkNfU0xJQ0VfSEVBREVSX1NLSVAJKFY0TDJfQ0lEX0NPREVDX0hBTlRST19CQVNFICsgMCkK
Pj4+ICsKPj4+ICAgI2VuZGlmCj4+Pgo+PgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

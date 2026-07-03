Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8B87C43458
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Jul 2026 19:55:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PPnobM+Mzx+ftueKnAn0fwRzxkcQ25QEAirvYzFXw70=; b=XlKHpgBdM3O7G2
	F7ojcs5shlT1z0oipx5RXQo9k/wL323rp7o10KilqhdZF9O/10NVwEPP8nZBwPcMy9VebF4wrXIIF
	DmW2WCoKvLVFnL0H4m05mXLTfdynhV/js45JFayLDhR9MWUafQJ+iKn5SluM6DV5KtkatAOEN/s/I
	7x3RWOf49KEKrP+zooSnXss+jwMdjtXJMqtoEDkKhBVKUb02oQAxGpcvLQzf4moQxQI2RPeW/gEv/
	c8BF09irAuk8Yu8A4pumw2/AhYO4chxdgcEp6sCQv+RcndcUkctgd4o959Z7MgZJeoqmUJKXTR5N/
	030cVxYhjE/Rc/H6yiEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfjyn-00000007p8o-1orZ;
	Fri, 03 Jul 2026 19:55:17 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfjyk-00000007p8I-2bQG;
	Fri, 03 Jul 2026 19:55:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1783108511;
	bh=dqOHIAGMWhCgRowmL1u07fCxLEb4Pr3jh8BO4JUIoiI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=eO2SeGojJ+r0vQNNXHIuPbEdgQ79bOPQ+EDjyOcfr/k15Tqldg9z173ziGZ8AFx57
	 0GF75+tgDQbkTObZz/WHIqP008Ea9t8kYQD1e50bf00+Lo9/PEVdA1t/YeMacSj0tE
	 vJOV3HDESBw7kxAdkUhupmzopq8Ecj/QwhEUQWheeZnTIv8Qv5skakKOAa1cZH5+rV
	 Vu9dA3ebE2l5IpmG9v+a8ev1VttaF8E/Ddn0uqjCH4T7Dwxj48gUNAsOC7dI+TMzOF
	 8TWdt4wA936pZ/7z2l5Apw2j+u/++L/hyB0f8jvnYEHP+zdK7iz2Fds5cEIXKbPtT+
	 GerjIbsFkYB5A==
Received: from [100.64.0.241] (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 650DA17E063B;
	Fri,  3 Jul 2026 21:55:10 +0200 (CEST)
Message-ID: <f74ffd53-5776-4fae-a6fe-eeace5c3fc5f@collabora.com>
Date: Fri, 3 Jul 2026 22:55:09 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 03/39] drm/display: bridge_connector: Pass HDMI
 capabilities through caps struct
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>, Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Andy Yan <andy.yan@rock-chips.com>, Daniel Stone <daniels@collabora.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 =?UTF-8?Q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>,
 Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>,
 kernel@collabora.com, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <20260702-dw-hdmi-qp-scramb-v8-0-d79890d00b6a@collabora.com>
 <20260702-dw-hdmi-qp-scramb-v8-3-d79890d00b6a@collabora.com>
 <eqnr2hfclbdkry2jqe2kuufss5kus6qpjblewq35upnjwlhxhl@4awqxpwrnxk2>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <eqnr2hfclbdkry2jqe2kuufss5kus6qpjblewq35upnjwlhxhl@4awqxpwrnxk2>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260703_125514_843472_62CFEDB0 
X-CRM114-Status: GOOD (  23.13  )
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

T24gNy8zLzI2IDU6MTkgUE0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4gT24gVGh1LCBKdWwg
MDIsIDIwMjYgYXQgMDU6NDY6MTZQTSArMDMwMCwgQ3Jpc3RpYW4gQ2lvY2FsdGVhIHdyb3RlOgo+
PiBTd2l0Y2ggZHJtX2JyaWRnZV9jb25uZWN0b3JfaW5pdCgpIHRvCj4+IGRybW1fY29ubmVjdG9y
X2hkbWlfaW5pdF93aXRoX2NhcHMoKSwgY29sbGVjdGluZyB0aGUgYnJpZGdlJ3MgSERNSQo+PiBw
cm9wZXJ0aWVzIGludG8gYSBzdGFjayBkcm1fY29ubmVjdG9yX2hkbWlfY2FwcyBzbyBmdXR1cmUg
SERNSSAyLngKPj4gY2FwYWJpbGl0aWVzIGNhbiBiZSBwbHVtYmVkIHdpdGhvdXQgZ3Jvd2luZyB0
aGUgYXJndW1lbnQgbGlzdC4KPj4KPj4gSW50cm9kdWNlIHN0cnVjdCBkcm1fYnJpZGdlOjpzdXBw
b3J0ZWRfaGRtaV92ZXIgdG8gbGV0IGJyaWRnZXMgZGVjbGFyZQo+PiB0aGUgSERNSSBzcGVjaWZp
Y2F0aW9uIHZlcnNpb24gdGhleSBhcmUgY29uZm9ybWFudCB3aXRoLCBhbmQgZm9yd2FyZCBpdAo+
PiB0byB0aGUgY29ubmVjdG9yIGxheWVyIHRocm91Z2ggdGhlIG5ldyBjYXBzIHN0cnVjdCBzbyBI
RE1JIDIueCBmZWF0dXJlcwo+PiBjYW4gYmUgZ2F0ZWQgb24gcmVhbCBzb3VyY2UgY2FwYWJpbGl0
eSByYXRoZXIgdGhhbiBndWVzc3dvcmsuCj4gCj4gQW5kIGl0J3MgbGVmdCB1bmluaXRpYWxpemVk
IGJ5IHRoZSBicmlkZ2VzLCB3aGljaCBkb2Vzbid0IG1lYW4gYW55dGhpbmcuCj4gSWYgeW91IGRv
bid0IHdhbnQgdG8gdG91Y2ggYWxsIGJyaWRnZSBkcml2ZXJzIGluIG9uZSBjb21taXQsIHBsZWFz
ZQo+IHByb3ZpZGUgc29tZSBtaWdyYXRpb24gcGF0aCBhbmQgaG9wZWZ1bGx5IGdldCByaWQgb2Yg
aXQgYnkgdGhlIGVuZCBvZgo+IHRoZSBzZXJpZXMuIAoKU3VyZSwgb25lIHF1ZXN0aW9uIHRob3Vn
aDogYXQgdGhlIGVuZCBvZiB0aGUgbWlncmF0aW9uLCB3b3VsZCBpdCBiZSBmaW5lIHRvCnN0aWNr
IHdpdGggZHJtbV9jb25uZWN0b3JfaGRtaV9pbml0X3dpdGhfY2FwcygpIGFuZCBqdXN0IGRyb3AK
ZHJtbV9jb25uZWN0b3JfaGRtaV9pbml0KCk/ICBPdGhlcndpc2UgSSdsbCByZW5hbWUgaXQgYmFj
ay4KCj4gQXQgbGVhc3QsIHRoZXJlIHNob3VsZCBiZSBhIGRybV93YXJuKCkgaWYgdGhlIHZlcnNp
b24gaW4KPiB1bnNzcGVjaWZpZWQuCgpJ4oCZbGwgZG91YmxlLWNoZWNrIGlmIGFueSB1c2UgY2Fz
ZXMgcmVtYWluIHRoYXQgY2FuJ3QgYmUgY292ZXJlZCBieSB0aGlzIHNlcmllcy4KCj4+Cj4+IFNp
Z25lZC1vZmYtYnk6IENyaXN0aWFuIENpb2NhbHRlYSA8Y3Jpc3RpYW4uY2lvY2FsdGVhQGNvbGxh
Ym9yYS5jb20+Cj4+IC0tLQo+PiAgZHJpdmVycy9ncHUvZHJtL2Rpc3BsYXkvZHJtX2JyaWRnZV9j
b25uZWN0b3IuYyB8IDI5ICsrKysrKysrKysrKysrLS0tLS0tLS0tLS0tCj4+ICBpbmNsdWRlL2Ry
bS9kcm1fYnJpZGdlLmggICAgICAgICAgICAgICAgICAgICAgIHwgIDYgKysrKysrCj4+ICAyIGZp
bGVzIGNoYW5nZWQsIDIyIGluc2VydGlvbnMoKyksIDEzIGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2Rpc3BsYXkvZHJtX2JyaWRnZV9jb25uZWN0b3IuYyBi
L2RyaXZlcnMvZ3B1L2RybS9kaXNwbGF5L2RybV9icmlkZ2VfY29ubmVjdG9yLmMKPj4gaW5kZXgg
OTJmOGEyZDdhYWI0Li43OTYwNjlkYmYxYTEgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9kaXNwbGF5L2RybV9icmlkZ2VfY29ubmVjdG9yLmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2Rpc3BsYXkvZHJtX2JyaWRnZV9jb25uZWN0b3IuYwo+PiBAQCAtODIzLDggKzgyMywxMCBAQCBz
dHJ1Y3QgZHJtX2Nvbm5lY3RvciAqZHJtX2JyaWRnZV9jb25uZWN0b3JfaW5pdChzdHJ1Y3QgZHJt
X2RldmljZSAqZHJtLAo+PiAgCXN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3I7Cj4+ICAJ
c3RydWN0IGkyY19hZGFwdGVyICpkZGMgPSBOVUxMOwo+PiAgCXN0cnVjdCBkcm1fYnJpZGdlICpw
YW5lbF9icmlkZ2UgX19mcmVlKGRybV9icmlkZ2VfcHV0KSA9IE5VTEw7Cj4+IC0JdW5zaWduZWQg
aW50IHN1cHBvcnRlZF9mb3JtYXRzID0gQklUKERSTV9PVVRQVVRfQ09MT1JfRk9STUFUX1JHQjQ0
NCk7Cj4+IC0JdW5zaWduZWQgaW50IG1heF9icGMgPSA4Owo+PiArCXN0cnVjdCBkcm1fY29ubmVj
dG9yX2hkbWlfY2FwcyBjYXBzID0gewo+PiArCQkuc3VwcG9ydGVkX2Zvcm1hdHMgPSBCSVQoRFJN
X09VVFBVVF9DT0xPUl9GT1JNQVRfUkdCNDQ0KSwKPj4gKwkJLm1heF9icGMgPSA4LAo+PiArCX07
Cj4gCj4gSSdtIHJlYWxseSBub3Qgc3VyZSB0aGF0IHdlIG5lZWQgc2VwYXJhdGUgY2Fwcy4gQnV0
IGlmIHdlIGRvLCBpdCB3b3VsZAo+IG1ha2Ugc2Vuc2UgdG8gZW1iZWQgaXQgYXMgaXMgaW4gdGhl
IGRybV9icmlkZ2UgaW5zdGVhZCBvZiBoYXZpbmcgdGhlCj4gc2NhdHRlcmVkIGZpZWxkcy4KCkFj
ay4KCj4gCj4+ICAJYm9vbCBzdXBwb3J0X2hkY3AgPSBmYWxzZTsKPj4gIAlpbnQgY29ubmVjdG9y
X3R5cGU7Cj4+ICAJaW50IHJldDsKPj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2RybV9icmlk
Z2UuaCBiL2luY2x1ZGUvZHJtL2RybV9icmlkZ2UuaAo+PiBpbmRleCAxOGYzZGIzNjdkYzEuLjJk
OGI1ZTRjNjRiYSAxMDA2NDQKPj4gLS0tIGEvaW5jbHVkZS9kcm0vZHJtX2JyaWRnZS5oCj4+ICsr
KyBiL2luY2x1ZGUvZHJtL2RybV9icmlkZ2UuaAo+PiBAQCAtMTE3Niw2ICsxMTc2LDEyIEBAIHN0
cnVjdCBkcm1fYnJpZGdlIHsKPj4gIAkgKi8KPj4gIAljb25zdCBjaGFyICpwcm9kdWN0Owo+PiAg
Cj4+ICsJLyoqCj4+ICsJICogQHN1cHBvcnRlZF9oZG1pX3ZlcjogSERNSSB2ZXJzaW9uIHRoZSBi
cmlkZ2UgaXMgY29uZm9ybWFudCB3aXRoLgo+PiArCSAqIFRoaXMgaXMgb25seSByZWxldmFudCBp
ZiBARFJNX0JSSURHRV9PUF9IRE1JIGlzIHNldC4KPj4gKwkgKi8KPj4gKwllbnVtIGhkbWlfdmVy
c2lvbiBzdXBwb3J0ZWRfaGRtaV92ZXI7Cj4+ICsKPj4gIAkvKioKPj4gIAkgKiBAc3VwcG9ydGVk
X2Zvcm1hdHM6IEJpdG1hc2sgb2YgQGRybV9vdXRwdXRfY29sb3JfZm9ybWF0IGxpc3RpbmcKPj4g
IAkgKiBzdXBwb3J0ZWQgb3V0cHV0IGZvcm1hdHMuIFRoaXMgaXMgb25seSByZWxldmFudCBpZgo+
Pgo+PiAtLSAKPj4gMi41NC4wCj4+Cj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

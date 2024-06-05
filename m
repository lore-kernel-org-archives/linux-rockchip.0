Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F8ADC27C53
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jun 2024 13:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cW9NMUMTEYiGWWnhyabWFSFUO49nZyZI62tZ4U+wTg8=; b=lFySs7NDwGjI63
	RHUHGhu5YaBJ0Jp6c4n8/i3WewfwoKaoazqN0nrkoUVH//qqCY5VNe8Z/xrtXp5rfzX6PsWmUGX5F
	nP3z+FJOAWbGbxuF+0jKH7UDiAW248sG/lNguiAAXNcICPKODXIv89TsRKnESo2UZC8SJLvv7I9oB
	/sSBsjSf8622ppxxY1//Xt8WgM8npuXDJz3gwckIggf9SoJ8R2tpAui9vYe5aEKbCGLen4Gwz31U9
	/a0stHImgfiF+HMEHvH65rWsr3QZMF+saQGeidwqZncb8Ij02VQaAtOJMmN12IA7KMaOtmV9hzDvm
	LSjOR6KiYsamkFNWfs4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEr9D-00000006Nk3-0bo8;
	Wed, 05 Jun 2024 13:57:51 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEr96-00000006NiR-3hSs;
	Wed, 05 Jun 2024 13:57:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1717595859;
	bh=st5j0iGUSYPFxLJVLH10uqgCn92SsvH/nFRYz9+eP9E=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=zIntRJWychwIPEEtD6wN2opnKdjQfdMF2XHtKD1HlCgcwv+4oNkw+I0QnFbBgbnXH
	 4p10t1xFzOC5gMWHiS1iL1xqOnuh3J3rPteiQ9ueIa6mGWUDRwTjXhMQ9eId66YptW
	 ASwKKskbWCGpnzkjXrdaE8LHfbYYPJZOp4FrCafcJemkW1quwXZe8dp6vsKYkOVz2c
	 GknLvbOv+hN3rN0SSyvqcbEUMagJV2OSqcS2hrYjfbwnC8qbkm2yOqzhVKVqgS190Z
	 IaVahKfpPQ/LGAM+X+j7epFrwUbXs1eKtL8fFSVxl2kf32ntSSNbhJNp0hVL9YPSkV
	 ZnTKhZoErb9WA==
Received: from [100.115.223.179] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id C35A7378061A;
	Wed,  5 Jun 2024 13:57:37 +0000 (UTC)
Message-ID: <3fcef87b-6173-45fd-a7fc-f5e9d2541337@collabora.com>
Date: Wed, 5 Jun 2024 16:57:37 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 13/14] drm/bridge: synopsys: Add DW HDMI QP TX controller
 driver
To: neil.armstrong@linaro.org, Sam Ravnborg <sam@ravnborg.org>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Mark Yao <markyao0591@gmail.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@collabora.com,
 Alexandre ARNOUD <aarnoud@me.com>, Luis de Arquer <ldearquer@gmail.com>,
 Algea Cao <algea.cao@rock-chips.com>
References: <20240601-b4-rk3588-bridge-upstream-v1-0-f6203753232b@collabora.com>
 <20240601-b4-rk3588-bridge-upstream-v1-13-f6203753232b@collabora.com>
 <20240601143226.GA2003970@ravnborg.org>
 <59519381-2729-4839-9882-65a981a0c551@collabora.com>
 <20240604204110.GA84949@ravnborg.org>
 <f656c72e-fac8-4345-9b65-1031ebe81c25@collabora.com>
 <304b4602-8722-4ed0-a555-8dada573ee79@collabora.com>
 <5dc16b34-d638-4fab-84e1-cb7db08ad80e@linaro.org>
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Content-Language: en-US
In-Reply-To: <5dc16b34-d638-4fab-84e1-cb7db08ad80e@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240605_065745_218523_F33243DE 
X-CRM114-Status: GOOD (  26.41  )
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

T24gNi81LzI0IDI6NDggUE0sIE5laWwgQXJtc3Ryb25nIHdyb3RlOgo+IE9uIDA1LzA2LzIwMjQg
MTI6MTEsIENyaXN0aWFuIENpb2NhbHRlYSB3cm90ZToKPj4gT24gNi81LzI0IDEyOjM0IEFNLCBD
cmlzdGlhbiBDaW9jYWx0ZWEgd3JvdGU6Cj4+PiBPbiA2LzQvMjQgMTE6NDEgUE0sIFNhbSBSYXZu
Ym9yZyB3cm90ZToKPj4+PiBIaSBDcmlzdGlhbi4KPj4+Pgo+Pj4+IE9uIFR1ZSwgSnVuIDA0LCAy
MDI0IGF0IDEwOjMyOjA0UE0gKzAzMDAsIENyaXN0aWFuIENpb2NhbHRlYSB3cm90ZToKPj4+Pj4g
SGkgU2FtLAo+Pj4+Pgo+Pj4+PiBPbiA2LzEvMjQgNTozMiBQTSwgU2FtIFJhdm5ib3JnIHdyb3Rl
Ogo+Pj4+Pj4gSGkgQ3Jpc3RpYW4sCj4+Pj4+Pgo+Pj4+Pj4gYSBmZXcgZHJpdmUtYnkgY29tbWVu
dHMgYmVsb3cuCj4+Pj4+Pgo+Pj4+Pj4gwqDCoMKgwqBTYW0KPj4+Pj4+Cj4+Pj4+Pgo+Pj4+Pj4+
ICsKPj4+Pj4+PiArc3RhdGljIGNvbnN0IHN0cnVjdCBkcm1fY29ubmVjdG9yX2Z1bmNzCj4+Pj4+
Pj4gZHdfaGRtaV9xcF9jb25uZWN0b3JfZnVuY3MgPSB7Cj4+Pj4+Pj4gK8KgwqDCoCAuZmlsbF9t
b2RlcyA9IGRybV9oZWxwZXJfcHJvYmVfc2luZ2xlX2Nvbm5lY3Rvcl9tb2RlcywKPj4+Pj4+PiAr
wqDCoMKgIC5kZXRlY3QgPSBkd19oZG1pX2Nvbm5lY3Rvcl9kZXRlY3QsCj4+Pj4+Pj4gK8KgwqDC
oCAuZGVzdHJveSA9IGRybV9jb25uZWN0b3JfY2xlYW51cCwKPj4+Pj4+PiArwqDCoMKgIC5mb3Jj
ZSA9IGR3X2hkbWlfcXBfY29ubmVjdG9yX2ZvcmNlLAo+Pj4+Pj4+ICvCoMKgwqAgLnJlc2V0ID0g
ZHJtX2F0b21pY19oZWxwZXJfY29ubmVjdG9yX3Jlc2V0LAo+Pj4+Pj4+ICvCoMKgwqAgLmF0b21p
Y19kdXBsaWNhdGVfc3RhdGUgPQo+Pj4+Pj4+IGRybV9hdG9taWNfaGVscGVyX2Nvbm5lY3Rvcl9k
dXBsaWNhdGVfc3RhdGUsCj4+Pj4+Pj4gK8KgwqDCoCAuYXRvbWljX2Rlc3Ryb3lfc3RhdGUgPQo+
Pj4+Pj4+IGRybV9hdG9taWNfaGVscGVyX2Nvbm5lY3Rvcl9kZXN0cm95X3N0YXRlLAo+Pj4+Pj4+
ICt9Owo+Pj4+Pj4+ICsKPj4+Pj4+PiArc3RhdGljIGludCBkd19oZG1pX3FwX2JyaWRnZV9hdHRh
Y2goc3RydWN0IGRybV9icmlkZ2UgKmJyaWRnZSwKPj4+Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgZW51bSBkcm1fYnJpZGdlX2F0dGFjaF9mbGFncyBmbGFncykK
Pj4+Pj4+PiArewo+Pj4+Pj4+ICvCoMKgwqAgc3RydWN0IGR3X2hkbWkgKmhkbWkgPSBicmlkZ2Ut
PmRyaXZlcl9wcml2YXRlOwo+Pj4+Pj4+ICsKPj4+Pj4+PiArwqDCoMKgIGlmIChmbGFncyAmIERS
TV9CUklER0VfQVRUQUNIX05PX0NPTk5FQ1RPUikKPj4+Pj4+PiArwqDCoMKgwqDCoMKgwqAgcmV0
dXJuIGRybV9icmlkZ2VfYXR0YWNoKGJyaWRnZS0+ZW5jb2RlciwKPj4+Pj4+PiBoZG1pLT5uZXh0
X2JyaWRnZSwKPj4+Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBicmlkZ2UsIGZsYWdzKTsKPj4+Pj4+PiArCj4+Pj4+Pj4gK8KgwqDCoCByZXR1cm4gZHdfaGRt
aV9jb25uZWN0b3JfY3JlYXRlKGhkbWksCj4+Pj4+Pj4gJmR3X2hkbWlfcXBfY29ubmVjdG9yX2Z1
bmNzKTsKPj4+Pj4+PiArfQo+Pj4+Pj4KPj4+Pj4+IEFyZSB0aGVyZSBhbnkgdXNlcnMgbGVmdCB0
aGF0IHJlcXVpcmVzIHRoZSBkaXNwbGF5IGRyaXZlciB0bwo+Pj4+Pj4gY3JlYXRlIHRoZQo+Pj4+
Pj4gY29ubmVjdG9yPwo+Pj4+Pj4gSW4gb3RoZXIgd29yZHMgLSBjb3VsZCB0aGlzIGRyaXZlciBm
YWlsIGlmCj4+Pj4+PiBEUk1fQlJJREdFX0FUVEFDSF9OT19DT05ORUNUT1IKPj4+Pj4+IGlzIG5v
dCBwYXNzZWQgYW5kIGRyb3AgZHdfaGRtaV9jb25uZWN0b3JfY3JlYXRlKCk/Cj4+Pj4+Pgo+Pj4+
Pj4gSSBkaWQgbm90IHRyeSB0byB2ZXJpZnkgdGhpcyAtIGp1c3QgYSBuYWl2ZSBxdWVzdGlvbi4K
Pj4+Pj4KPj4+Pj4gSSd2ZSBqdXN0IHRlc3RlZCB0aGlzIGFuZCBpdCBkb2Vzbid0IHdvcmsgLSBk
d19oZG1pX2Nvbm5lY3Rvcl9jcmVhdGUoKQo+Pj4+PiBpcyBzdGlsbCBuZWVkZWQuCj4+Pj4KPj4+
PiBIbW0sIHNlZW1zIHRoZSBkaXNwbGF5IGRyaXZlciBvciBzb21lIG90aGVyIGJyaWRnZSBkcml2
ZXIgZmFpbHMgdG8KPj4+PiBzdXBwb3J0ICJEUk1fQlJJREdFX0FUVEFDSF9OT19DT05ORUNUT1Ii
Lgo+Pj4+IHdoYXQgb3RoZXIgZHJpdmVycyBhcmUgaW52b2x2ZWQ/Cj4+Pgo+Pj4gQ291bGQgaXQg
YmUgcmVsYXRlZCB0byB0aGUgZ2x1ZSBkcml2ZXIgKHVwZGF0ZWQgaW4gdGhlIG5leHQgcGF0Y2gp
IHdoaWNoCj4+PiBpcyBhbHNvIHJlc3BvbnNpYmxlIGZvciBzZXR0aW5nIHVwIHRoZSBlbmNvZGVy
Pwo+Pj4KPj4+PiBOb3RlIHRoYXQgbXkgY29tbWVudHMgaGVyZSBzaG91bGQgYmUgc2VlbiBhcyBw
b3RlbnRpYWwgZnV0dXJlCj4+Pj4gaW1wcm92ZW1lbnRzLCBhbmQgZG8gbm90IGJsb2NrIHRoZSBw
YXRjaCBmcm9tIGJlaW5nIHVzZWQuCj4+Pgo+Pj4gVGhhbmtzIGZvciB0aGUgaGVhZHMgdXAhIFdp
bGwgdHJ5IHRvIGdldCBiYWNrIHRvIHRoaXMgc29vbiBhbmQKPj4+IGludmVzdGlnYXRlLgo+PiDC
oCBJSVVDLCBtb2Rlcm4gYnJpZGdlcyBzaG91bGQgbm90IGNyZWF0ZSB0aGUgY29ubmVjdG9yIGJ1
dCByZWx5IG9uCj4+IGRpc3BsYXkKPj4gZHJpdmVycyB0byB0YWtlIGNhcmUgb2YsIHdoaWNoIGlu
IHRoaXMgY2FzZSBpcyB0aGUgVk9QMiBkcml2ZXIuIEhvd2V2ZXIsCj4+IGl0IGFsc28gaGFuZGxl
cyBzb21lIG9mIHRoZSBvbGRlciBTb0NzIHJlbHlpbmcgb24gdGhlIG5vbi1RUCB2YXJpYW50IG9m
Cj4+IERXIEhETUkgSVAuIEhlbmNlIHRoZSBleGlzdGluZyBkdy1oZG1pIGRyaXZlciB3b3VsZCBi
ZSBhbHNvIGltcGFjdGVkIGluCj4+IG9yZGVyIHRvIGNvbWUgdXAgd2l0aCBhIHByb3BlciBzb2x1
dGlvbi4KPj4KPj4gQSBxdWljayBjaGVjayBzaG93cyB0aGVyZSBhcmUgc2V2ZXJhbCB1c2VycyBv
ZiB0aGlzIElQOgo+Pgo+PiAkIGdpdCBncmVwIC1FICc9IGR3X2hkbWlfKGJpbmR8cHJvYmUpXCgn
Cj4+IGRyaXZlcnMvZ3B1L2RybS9icmlkZ2UvaW14L2lteDhtcC1oZG1pLXR4LmM6wqDCoMKgIGhk
bWktPmR3X2hkbWkgPQo+PiBkd19oZG1pX3Byb2JlKHBkZXYsIHBsYXRfZGF0YSk7Cj4+IGRyaXZl
cnMvZ3B1L2RybS9icmlkZ2Uvc3lub3BzeXMvZHctaGRtaS5jOsKgwqDCoMKgwqAgaGRtaSA9Cj4+
IGR3X2hkbWlfcHJvYmUocGRldiwgcGxhdF9kYXRhKTsKPj4gZHJpdmVycy9ncHUvZHJtL2lteC9p
cHV2My9kd19oZG1pLWlteC5jOsKgwqDCoMKgwqDCoMKgIGhkbWktPmhkbWkgPQo+PiBkd19oZG1p
X3Byb2JlKHBkZXYsIG1hdGNoLT5kYXRhKTsKPj4gZHJpdmVycy9ncHUvZHJtL2luZ2VuaWMvaW5n
ZW5pYy1kdy1oZG1pLmM6wqDCoMKgwqDCoCBoZG1pID0KPj4gZHdfaGRtaV9wcm9iZShwZGV2LCAm
aW5nZW5pY19kd19oZG1pX3BsYXRfZGF0YSk7Cj4+IGRyaXZlcnMvZ3B1L2RybS9tZXNvbi9tZXNv
bl9kd19oZG1pLmM6wqAgbWVzb25fZHdfaGRtaS0+aGRtaSA9Cj4+IGR3X2hkbWlfcHJvYmUocGRl
diwgJm1lc29uX2R3X2hkbWktPmR3X3BsYXRfZGF0YSk7Cj4+IGRyaXZlcnMvZ3B1L2RybS9yZW5l
c2FzL3JjYXItZHUvcmNhcl9kd19oZG1pLmM6IGhkbWkgPQo+PiBkd19oZG1pX3Byb2JlKHBkZXYs
ICZyY2FyX2R3X2hkbWlfcGxhdF9kYXRhKTsKPj4gZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3
X2hkbWktcm9ja2NoaXAuYzrCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGhkbWktPmhkbWkgPQo+PiBk
d19oZG1pX2JpbmQocGRldiwgZW5jb2RlciwgcGxhdF9kYXRhKTsKPj4gZHJpdmVycy9ncHUvZHJt
L3N1bjRpL3N1bjhpX2R3X2hkbWkuYzrCoCBoZG1pLT5oZG1pID0KPj4gZHdfaGRtaV9iaW5kKHBk
ZXYsIGVuY29kZXIsIHBsYXRfZGF0YSk7Cj4+Cj4+IEkgZGlkbid0IGNoZWNrIHdoaWNoIGRpc3Bs
YXkgZHJpdmVycyB3b3VsZCBiZSBpbnZvbHZlZCwgSSdkIGd1ZXNzIHRoZXJlCj4+IGFyZSBxdWl0
ZSBhIGZldyBvZiB0aGVtIGFzIHdlbGwuIFNvIGl0IHNlZW1zIHRoaXMgZW5kcyB1cCBiZWluZyBh
IHByZXR0eQo+PiBjb21wbGV4IHRhc2suCj4gCj4gSWYgdGhpcyB3b3VsZCBiZSBhIGJyYW5kIG5l
dyBkcml2ZXIsIHRoZW4gaXQgc2hvdWxkIG9ubHkgc3VwcG9ydAo+IERSTV9CUklER0VfQVRUQUNI
X05PX0NPTk5FQ1RPUiwKPiBzbyB5b3Ugc2hvdWxkIG5vdCBjcmVhdGUgYSBjb25uZWN0b3IgZnJv
bSB0aGUgZHJpdmVyLgo+IAo+IFRoZSBmYWN0IGR3LWhkbWkgYWNjZXB0cyBhbiBhdHRhY2ggd2l0
aG91dCB0aGUgZmxhZyBpcyBmb3IgbGVnYWN5IHB1cnBvc2UKPiBzaW5jZSBzb21lIERSTSBkcml2
ZXJzIGhhdmVuJ3Qgc3dpdGNoZWQgdG8KPiBEUk1fQlJJREdFX0FUVEFDSF9OT19DT05ORUNUT1Ig
eWVzLAo+IGJ1dCBpdCdzIGEgcmVxdWlyZW1lbnQgZm9yIG5ldyBicmlkZ2VzIHNvIGF0IHNvbWUg
cG9pbnQgeW91J2xsIG5lZWQgdG8gbWFrZQo+IHN1cmUgdGhlIHJvY2tjaGlwIGdsdWUgYW5kIGRy
bSBkcml2ZXIgc3VwcG9ydHMKPiBEUk1fQlJJREdFX0FUVEFDSF9OT19DT05ORUNUT1IuCj4gCj4g
VGhpcyB3aWxsIGdyZWF0bHkgc2ltcGxpZnkgdGhlIGRyaXZlciEKCkdvdCBpdCwgdGhhbmtzIGZv
ciB0aGUgY2xhcmlmaWNhdGlvbnMhCgpDcmlzdGlhbgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08E59EE0AEE
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Feb 2026 19:32:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4li4+brfMXM6L7AQ1T1MHJnirCBf0qfn/sIfri8LFAc=; b=HTrYuJoZS7hS1C
	J9lYJXLjUd56GI3WY3uWIIbgP5YfRJky2ojNM3CKaKK0NeyPJqVzDMEcLkFnee/6F7QJ7EFS5tqhn
	vKx6ACFSPJvIVZR9hYjhRVehyr6d8HIavFcG84xSELaAMoG+vFSk0rUYAsoJxglum9OljDafG0hFd
	WcOfEToczE9k0dr3DtaLs0rCrIuQ3WRT1w6nTumR8h12JOYFeUyHgR/jlKXJJhoOkG/eRXWuANX4a
	5TiTVjrkRtmVBQfkLjsrIUpCpc/QF32GS+FSKVt/EFaLSSBnsGfm6NTbp47/r4gz9TzqT9P+kFEs7
	LI46DZf25/1btGJhjBjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voo2b-0000000CiOy-1Fjg;
	Sat, 07 Feb 2026 19:32:25 +0000
Received: from sender4-pp-g120.zoho.com ([136.143.188.120])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voo2Y-0000000CiOQ-2fVf;
	Sat, 07 Feb 2026 19:32:24 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1770492691; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=RdYdF7c/7RKURWe83WyERwWuC0yeeolV/HdBzGsCxqcpxL0mkFACmfTt3/4NpZ3OPDinHq6e5n7zbReS59t8n4L15hQO7U4nS8Fn2tTltElnkncw44fcngP1AzCyfoM7c8XaQUiSPZqkbCiCu1DktWNekdpxcACDCAt59MRy8aI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1770492691; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=BWnnE4c8SQWwH+plB/G8amDEzU/xZKpBUTD5dL9L0SU=; 
	b=Re6ehi0jHhfhcXeU5/Wcel1vSM/nbf3eUn4zLT2HuBpR8KwW09QN7DLyDHZbf6ijMUCiRxsF+PCikeRSy3usv/g319xt3au/Kl8FUvyYtHLKZtOGDNMFRu2qD7kpUxw8NRT2SKuuUMvUnFdxsfzPvDT5EKE3EJPl0JkSQmFBjik=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1770492691;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=BWnnE4c8SQWwH+plB/G8amDEzU/xZKpBUTD5dL9L0SU=;
	b=evBJTQV48BJoXeW9eksUfGNDL8f9WrQ191uHnGjm27R4bEhAOi3K2P49kQH5poEp
	yBkUs87eqn4KX7O6Iw+RewkgV9Vptiu/GBndvntL5vn5lDe9fPnEXqpBgml8bLsfbTW
	4iwQ1sonD2B0Akv+l6dv8Hf85aL9HNlIGFgwCxX0=
Received: by mx.zohomail.com with SMTPS id 1770492689402527.0990853831929;
	Sat, 7 Feb 2026 11:31:29 -0800 (PST)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
To: Andy Yan <andyshrk@163.com>
Cc: Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>,
 Rodrigo Siqueira <siqueira@igalia.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Sandy Huang <hjc@rock-chips.com>,
 Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>,
 Andy Yan <andy.yan@rock-chips.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Dmitry Baryshkov <lumag@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>, kernel@collabora.com,
 amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, linux-doc@vger.kernel.org
Subject: Re: [PATCH v7 10/22] drm/rockchip: vop2: Fix YUV444 output
Date: Sat, 07 Feb 2026 20:31:21 +0100
Message-ID: <1945994.tdWV9SEqCh@workhorse>
In-Reply-To: <4c9ce287.fbb.19be87814b8.Coremail.andyshrk@163.com>
References: <20260121-color-format-v7-0-ef790dae780c@collabora.com>
 <6631107.DvuYhMxLoT@workhorse>
 <4c9ce287.fbb.19be87814b8.Coremail.andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260207_113222_719003_41DE7DB6 
X-CRM114-Status: GOOD (  33.87  )
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

SGkgQW5keSwKCk9uIEZyaWRheSwgMjMgSmFudWFyeSAyMDI2IDAyOjI5OjAyIENlbnRyYWwgRXVy
b3BlYW4gU3RhbmRhcmQgVGltZSBBbmR5IFlhbiB3cm90ZToKPiAKPiBIZWxsbyBOaWNvbGFzLAo+
IAo+IOWcqCAyMDI2LTAxLTIyIDIwOjU5OjQx77yMIk5pY29sYXMgRnJhdHRhcm9saSIgPG5pY29s
YXMuZnJhdHRhcm9saUBjb2xsYWJvcmEuY29tPiDlhpnpgZPvvJoKPiA+T24gVGh1cnNkYXksIDIy
IEphbnVhcnkgMjAyNiAwOToyODo1NCBDZW50cmFsIEV1cm9wZWFuIFN0YW5kYXJkIFRpbWUgQW5k
eSBZYW4gd3JvdGU6Cj4gPj4gCj4gPj4gSGVsbG8gTmljb2xhc++8jAo+ID4+IAo+ID4+IEF0IDIw
MjYtMDEtMjEgMjI6NDU6MTcsICJOaWNvbGFzIEZyYXR0YXJvbGkiIDxuaWNvbGFzLmZyYXR0YXJv
bGlAY29sbGFib3JhLmNvbT4gd3JvdGU6Cj4gPj4gPllVVjQ0NCAoYWthIFlDYkNyNDQ0KSBvdXRw
dXQgaXNuJ3Qgd29ya2luZyBxdWl0ZSByaWdodCBvbiBSSzM1ODguIFRoZQo+ID4+ID5yZXN1bHRp
bmcgaW1hZ2Ugb24gdGhlIGRpc3BsYXksIHdoaWxlIGlkZW50aWZ5aW5nIGl0c2VsZiBhcyBZVVY0
NDQsIGhhcwo+ID4+ID5zb21lIGNvbXBvbmVudHMgc3dhcHBlZCwgZXZlbiBhZnRlciBhZGRpbmcg
dGhlIG5lY2Vzc2FyeSBEUk0gZm9ybWF0cyB0bwo+ID4+ID50aGUgY29udmVyc2lvbiBmdW5jdGlv
bnMuCj4gPj4gPgo+ID4+ID5KdWRnaW5nIGJ5IGRvd25zdHJlYW0sIHRoaXMgaXMgYmVjYXVzZSBZ
VVY0NDQgYWxzbyBuZWVkcyBhbiByYiBzd2FwCj4gPj4gPnBlcmZvcm1lZCBpbiB0aGUgQUZCQyBj
YXNlLgo+ID4+ID4KPiA+PiA+QWRkIHRoZSBEUk0gZm9ybWF0cyB0byB0aGUgYXBwcm9wcmlhdGUg
c3dpdGNoIHN0YXRlbWVudHMsIGFuZCBhZGQgYQo+ID4+ID5mdW5jdGlvbiBmb3IgY2hlY2tpbmcg
d2hldGhlciBhbiByYiBzd2FwIG5lZWRzIHRvIGJlIHBlcmZvcm1lZCBpbiB0aGUKPiA+PiA+QUZC
QyBjYXNlLgo+ID4+ID4KPiA+PiA+Rml4ZXM6IDYwNGJlODU1NDdjZSAoImRybS9yb2NrY2hpcDog
QWRkIFZPUDIgZHJpdmVyIikKPiA+PiA+U2lnbmVkLW9mZi1ieTogTmljb2xhcyBGcmF0dGFyb2xp
IDxuaWNvbGFzLmZyYXR0YXJvbGlAY29sbGFib3JhLmNvbT4KPiA+PiA+LS0tCj4gPj4gPiBkcml2
ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcDIuYyB8IDE5ICsrKysrKysrKysr
KysrKysrKysKPiA+PiA+IDEgZmlsZSBjaGFuZ2VkLCAxOSBpbnNlcnRpb25zKCspCj4gPj4gPgo+
ID4+ID5kaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92
b3AyLmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcDIuYwo+ID4+
ID5pbmRleCBlYzNiNGZkZTEwZGIuLjQ2OWM2M2RkOTdkNSAxMDA2NDQKPiA+PiA+LS0tIGEvZHJp
dmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AyLmMKPiA+PiA+KysrIGIvZHJp
dmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AyLmMKPiA+PiA+QEAgLTE3Niw2
ICsxNzYsNyBAQCBzdGF0aWMgZW51bSB2b3AyX2RhdGFfZm9ybWF0IHZvcDJfY29udmVydF9mb3Jt
YXQodTMyIGZvcm1hdCkKPiA+PiA+IAljYXNlIERSTV9GT1JNQVRfQVJHQjIxMDEwMTA6Cj4gPj4g
PiAJY2FzZSBEUk1fRk9STUFUX1hCR1IyMTAxMDEwOgo+ID4+ID4gCWNhc2UgRFJNX0ZPUk1BVF9B
QkdSMjEwMTAxMDoKPiA+PiA+KwljYXNlIERSTV9GT1JNQVRfVlVZMTAxMDEwOgo+ID4+ID4gCQly
ZXR1cm4gVk9QMl9GTVRfWFJHQjEwMTAxMDsKPiA+PiA+IAljYXNlIERSTV9GT1JNQVRfWFJHQjg4
ODg6Cj4gPj4gPiAJY2FzZSBEUk1fRk9STUFUX0FSR0I4ODg4Ogo+ID4+ID5AQCAtMTg0LDYgKzE4
NSw3IEBAIHN0YXRpYyBlbnVtIHZvcDJfZGF0YV9mb3JtYXQgdm9wMl9jb252ZXJ0X2Zvcm1hdCh1
MzIgZm9ybWF0KQo+ID4+ID4gCQlyZXR1cm4gVk9QMl9GTVRfQVJHQjg4ODg7Cj4gPj4gPiAJY2Fz
ZSBEUk1fRk9STUFUX1JHQjg4ODoKPiA+PiA+IAljYXNlIERSTV9GT1JNQVRfQkdSODg4Ogo+ID4+
ID4rCWNhc2UgRFJNX0ZPUk1BVF9WVVk4ODg6Cj4gPj4gPiAJCXJldHVybiBWT1AyX0ZNVF9SR0I4
ODg7Cj4gPj4gPiAJY2FzZSBEUk1fRk9STUFUX1JHQjU2NToKPiA+PiA+IAljYXNlIERSTV9GT1JN
QVRfQkdSNTY1Ogo+ID4+ID5AQCAtMjI1LDYgKzIyNyw3IEBAIHN0YXRpYyBlbnVtIHZvcDJfYWZi
Y19mb3JtYXQgdm9wMl9jb252ZXJ0X2FmYmNfZm9ybWF0KHUzMiBmb3JtYXQpCj4gPj4gPiAJY2Fz
ZSBEUk1fRk9STUFUX0FSR0IyMTAxMDEwOgo+ID4+ID4gCWNhc2UgRFJNX0ZPUk1BVF9YQkdSMjEw
MTAxMDoKPiA+PiA+IAljYXNlIERSTV9GT1JNQVRfQUJHUjIxMDEwMTA6Cj4gPj4gPisJY2FzZSBE
Uk1fRk9STUFUX1ZVWTEwMTAxMDoKPiA+PiA+IAkJcmV0dXJuIFZPUDJfQUZCQ19GTVRfQVJHQjIx
MDEwMTA7Cj4gPj4gPiAJY2FzZSBEUk1fRk9STUFUX1hSR0I4ODg4Ogo+ID4+ID4gCWNhc2UgRFJN
X0ZPUk1BVF9BUkdCODg4ODoKPiA+PiA+QEAgLTIzMyw2ICsyMzYsNyBAQCBzdGF0aWMgZW51bSB2
b3AyX2FmYmNfZm9ybWF0IHZvcDJfY29udmVydF9hZmJjX2Zvcm1hdCh1MzIgZm9ybWF0KQo+ID4+
ID4gCQlyZXR1cm4gVk9QMl9BRkJDX0ZNVF9BUkdCODg4ODsKPiA+PiA+IAljYXNlIERSTV9GT1JN
QVRfUkdCODg4Ogo+ID4+ID4gCWNhc2UgRFJNX0ZPUk1BVF9CR1I4ODg6Cj4gPj4gPisJY2FzZSBE
Uk1fRk9STUFUX1ZVWTg4ODoKPiA+PiAKPiA+PiBIb3cgZGlkIHlvdSB0ZXN0IHRoaXMgZm9ybWF0
PyBJdCBzZWVtcyB0b29scyBsaWtlIG1vZGV0ZXN0IGRvbuKAmXQgc3VwcG9ydCB0ZXN0aW5nIHRo
aXMgcGF0dGVybi4KPiA+PiAKPiA+Cj4gPkhpIEFuZHksCj4gPgo+ID51c2luZyB0aGUgcmVzdCBv
ZiB0aGlzIHNlcmllcywgd2hpY2ggaW1wbGVtZW50cyB0aGUgImNvbG9yIGZvcm1hdCIKPiA+RFJN
IHByb3BlcnR5LCBhbmQgdGhlIGNvcnJlc3BvbmRpbmcgd2VzdG9uIE1SIHRoYXQgbWFrZXMgdXNl
IG9mIGl0WzFdLgo+ID4KPiA+SSBjcmVhdGUgYSB+Ly5jb25maWcvd2VzdG9uLmluaSB3aXRoIHRo
ZSBmb2xsb3dpbmcgY29udGVudHM6Cj4gPgo+ID4gICAgW291dHB1dF0KPiA+ICAgIG5hbWU9SERN
SS1BLTEKPiA+ICAgIGNvbG9yLWZvcm1hdD15dXY0NDQKPiA+Cj4gPlRoaXMgd2lsbCBtYWtlIFdl
c3RvbiB0cnkgdG8gc2V0IHRoZSBvdXRwdXQgZm9ybWF0IHRvIDEwLWJpdCBZVVY0NDQuIFRvCj4g
PmxpbWl0IGl0IHRvIDgtYml0LCB5b3UgY2FuIGFkZCBgbWF4LWJwYz04YC4gVGhlIG1vbml0b3In
cyBFRElEIG5lZWRzIHRvCj4gPnJlcG9ydCBZVVY0NDQgc3VwcG9ydCwgb3RoZXJ3aXNlIHRoYXQg
V2VzdG9uIHZlcnNpb24gd29uJ3QgbGV0IHlvdSBzZXQKPiA+dGhpcyBwcm9wZXJ0eS4KPiA+Cj4g
Cj4gCj4gVGhpcyBsb29rcyBhIGJpdCBzdHJhbmdlLiBZb3VyIGNvbW1pdCBtZXNzYWdlIGFuZCB0
aGUgV2VzdG9uIGNvbmZpZ3VyYXRpb24gaGVyZSBib3RoIHRhcmdldCB0aGUgb3V0cHV0IGZvcm1h
dCwgCj4gYnV0IHRoZSBwYXRjaCBtb2RpZmllcyB0aGUgZnVuY3Rpb25zIHZvcDJfY29udmVydF9m
b3JtYXQgYW5kIHZvcDJfY29udmVydF9hZmJjX2Zvcm1hdCwgd2hpY2ggYXJlIHJlc3BvbnNpYmxl
IGZvcgo+IGNvbnZlcnRpbmcgdGhlIGRhdGEgZm9ybWF0cyBvZiBwbGFuZXMvZnJhbWVidWZmZXJz
IChmYinigJR0aGVzZSBoYXZlIG5vdGhpbmcgdG8gZG8gd2l0aCB0aGUgb3V0cHV0IGZvcm1hdC4K
ClllcCwgSSd2ZSBub3cgcmUtdGVzdGVkIHRoaXMgaW4gdmFyaW91cyB3YXlzIGFuZCB0aGlzIGNv
bW1pdCBkb2Vzbid0IGRvCndoYXQgSSB0aG91Z2h0IGl0IGRpZC4gSSB0aGluayB3aGVuIEkgYXV0
aG9yZWQgaXQsIHRoaXMgd2FzIHN0aWxsIGRvaW5nCkJDU0ggYmFzZWQgY29udmVyc2lvbiBhbmQg
bWF5IGhhdmUgZGVwZW5kZWQgb24gdGhpcyBhdCBzb21lIHN0YWdlLiBBbHNvCnBvc3NpYmxlIHRo
YXQgSSBkaWRuJ3QgZG8gYSBjbGVhbiB0ZXN0IHJ1biBvZiBzb2xlbHkgdGhlc2UgY2hhbmdlcyB0
bwpjb21lIHRvIG15IGNvbmNsdXNpb25zLgoKWVVWNDQ0IHByaW1hcnkgcGxhbmVzIGFyZW4ndCBz
dXBwb3J0ZWQgYnkgUkszNTg4IGF0IGFsbCBmcm9tIHdoYXQgSSBnYXRoZXIsCnNvIEkgaGF2ZSBu
byBjbHVlIHdoZXJlIEkgcmFuIGludG8gdGhpcyBhbmQgaG93IHRoaXMgZml4ZWQgaXQuCgpUZXN0
aW5nIG9uIFJLMzU3NiB3aXRob3V0IHRoaXMsIGFuZCBhbHNvIHBsYXlpbmcgYXJvdW5kIHdpdGgg
Z2JtLWZvcm1hdCwKSSBhbHNvIGRvbid0IGV2ZXIgZ2V0IGludG8gdGhlIHNpdHVhdGlvbiB3aGVy
ZSB0aGlzIGlzIG5lZWRlZCBmb3IgY29ycmVjdApvdXRwdXQ7IGl0IHNlZW1zIGxpa2UgRUdMQ29u
ZmlnIGFsd2F5cyBvbmx5IGV4cG9zZXMgUkdCQSBmb3JtYXRzIGFueXdheSwKc28gUGFuZnJvc3Qg
bWF5IHN0aWxsIGxhY2sgWVVWIGZvcm1hdCBzdXBwb3J0IGZvciB0aGUgYnVmZmVycy4KCkknbGwg
ZHJvcCB0aGlzIHBhdGNoIG9uIHRoZSBuZXh0IHJldmlzaW9uLCBidXQgSSdsbCBrZWVwIHRoZSBj
aGFuZ2VzIGluCm1pbmQgaWYgYW4gYXRvbWljIG1vZGVzZXR0aW5nIHRlc3Qgd29ya2xvYWQgdGhh
dCBzZXRzIFlVViBwbGFuZSBmb3JtYXRzCmV2ZXIgY29tZXMgdG8gYmUuCgpUaGFua3MgZm9yIHRo
ZSByZXZpZXdzIQoKS2luZCByZWdhcmRzLApOaWNvbGFzIEZyYXR0YXJvbGkKCj4gCj4gCj4gPkxp
bms6IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy93YXlsYW5kL3dlc3Rvbi8tL21lcmdl
X3JlcXVlc3RzLzE4NTkgWzFdCj4gPgo+ID5LaW5kIHJlZ2FyZHMsCj4gPk5pY29sYXMgRnJhdHRh
cm9saQo+ID4KPiA+PiAKPiA+PiAKPiA+PiA+IAkJcmV0dXJuIFZPUDJfQUZCQ19GTVRfUkdCODg4
Owo+ID4+ID4gCWNhc2UgRFJNX0ZPUk1BVF9SR0I1NjU6Cj4gPj4gPiAJY2FzZSBEUk1fRk9STUFU
X0JHUjU2NToKPiA+PiA+QEAgLTI3MCw2ICsyNzQsMTkgQEAgc3RhdGljIGJvb2wgdm9wMl93aW5f
cmJfc3dhcCh1MzIgZm9ybWF0KQo+ID4+ID4gCX0KPiA+PiA+IH0KPiA+PiA+IAo+ID4+ID4rc3Rh
dGljIGJvb2wgdm9wMl9hZmJjX3JiX3N3YXAodTMyIGZvcm1hdCkKPiA+PiA+K3sKPiA+PiA+Kwlz
d2l0Y2ggKGZvcm1hdCkgewo+ID4+ID4rCWNhc2UgRFJNX0ZPUk1BVF9OVjI0Ogo+ID4+ID4rCWNh
c2UgRFJNX0ZPUk1BVF9OVjMwOgo+ID4+ID4rCWNhc2UgRFJNX0ZPUk1BVF9WVVk4ODg6Cj4gPj4g
PisJY2FzZSBEUk1fRk9STUFUX1ZVWTEwMTAxMDoKPiA+PiA+KwkJcmV0dXJuIHRydWU7Cj4gPj4g
PisJZGVmYXVsdDoKPiA+PiA+KwkJcmV0dXJuIGZhbHNlOwo+ID4+ID4rCX0KPiA+PiA+K30KPiA+
PiA+Kwo+ID4+ID4gc3RhdGljIGJvb2wgdm9wMl9hZmJjX3V2X3N3YXAodTMyIGZvcm1hdCkKPiA+
PiA+IHsKPiA+PiA+IAlzd2l0Y2ggKGZvcm1hdCkgewo+ID4+ID5AQCAtMTI5MSw2ICsxMzA4LDcg
QEAgc3RhdGljIHZvaWQgdm9wMl9wbGFuZV9hdG9taWNfdXBkYXRlKHN0cnVjdCBkcm1fcGxhbmUg
KnBsYW5lLAo+ID4+ID4gCQkgLyogSXQncyBmb3IgaGVhZCBzdHJpZGUsIGVhY2ggaGVhZCBzaXpl
IGlzIDE2IGJ5dGUgKi8KPiA+PiA+IAkJc3RyaWRlID0gQUxJR04oc3RyaWRlLCBibG9ja193KSAv
IGJsb2NrX3cgKiAxNjsKPiA+PiA+IAo+ID4+ID4rCQlyYl9zd2FwID0gdm9wMl9hZmJjX3JiX3N3
YXAoZmItPmZvcm1hdC0+Zm9ybWF0KTsKPiA+PiA+IAkJdXZfc3dhcCA9IHZvcDJfYWZiY191dl9z
d2FwKGZiLT5mb3JtYXQtPmZvcm1hdCk7Cj4gPj4gPiAJCS8qCj4gPj4gPiAJCSAqIFRoaXMgaXMg
YSB3b3JrYXJvdW5kIGZvciBjcmF6eSBJQyBkZXNpZ24sIENsdXN0ZXIKPiA+PiA+QEAgLTEzMDgs
NiArMTMyNiw3IEBAIHN0YXRpYyB2b2lkIHZvcDJfcGxhbmVfYXRvbWljX3VwZGF0ZShzdHJ1Y3Qg
ZHJtX3BsYW5lICpwbGFuZSwKPiA+PiA+IAkJCXZvcDJfd2luX3dyaXRlKHdpbiwgVk9QMl9XSU5f
QUZCQ19FTkFCTEUsIDEpOwo+ID4+ID4gCQl2b3AyX3dpbl93cml0ZSh3aW4sIFZPUDJfV0lOX0FG
QkNfRk9STUFULCBhZmJjX2Zvcm1hdCk7Cj4gPj4gPiAJCXZvcDJfd2luX3dyaXRlKHdpbiwgVk9Q
Ml9XSU5fQUZCQ19VVl9TV0FQLCB1dl9zd2FwKTsKPiA+PiA+KwkJdm9wMl93aW5fd3JpdGUod2lu
LCBWT1AyX1dJTl9BRkJDX1JCX1NXQVAsIHJiX3N3YXApOwo+ID4+ID4gCQkvKgo+ID4+ID4gCQkg
KiBPbiByazM1NjYvOCwgdGhpcyBiaXQgaXMgYXV0byBnYXRpbmcgZW5hYmxlLAo+ID4+ID4gCQkg
KiBidXQgdGhpcyBmdW5jdGlvbiBpcyBub3Qgd29yayB3ZWxsIHNvIHdlIG5lZWQKPiA+PiA+Cj4g
Pj4gCj4gPgo+ID4KPiA+Cj4gPgo+IAoKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 199D0106B530
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Mar 2026 13:07:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vO4XhhMPjxilRDhY5d0zOBhzPmSQePH2bwR9av/4KZE=; b=ILBbQdjf0z/WeE
	7CVXY/PPUKWpXd5NA8dOqB04eFBDxShpuIA9QodH1ppBzHt6dkX14K+p2yDhqC5njF24XZc5IjMty
	JS0wiiYD594cWwDUe15V/L/VohjolFicuU/2lWILZu9XhzXzR4C4sUwIiI+33H401v0Xmwa4D4Phv
	jTQE3bfVi/imR1o2TLjiZJfQ0iRc6kkVrXwagrjaCWfLLGiWPI2NrvuV7hRu+gQSCr7IDvde8/QJ5
	IqJE6nsCes1gv2iXR8WTaaTUVA476NunixKFW0crL+tEGWFFkh7rnRSpYXNzRNKWG6zn0QIYDIu3f
	RK0AyCkDDOrdGm4AjIgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5Nwq-00000003Qaa-3kuz;
	Wed, 25 Mar 2026 13:07:00 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5Nwn-00000003QZe-2MlT;
	Wed, 25 Mar 2026 13:06:58 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1774443970; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=UyyGRzF+XFGQ9R2DLKmx+D7RhagOPIl+9zqbr/u2pumuzC+pBAxeugJUR8Dj/FqMIgPB/4cThx+4WFmtc6PiIo5YOWq6UzuZP/Rt0jV7daYjIyEZmDzscuWRJstrJ5eFk268CyTl0w7zYD9V4BurG72UMIDwcI+MTi0zburbhy8=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1774443970; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=DnPb2CCqVOsKX/2d2bIu7XGCPxBh8nCgmEw3NE41NDw=; 
	b=Ev5TihT8R1h7Xv7ZPDngvHgmiHdQBjtwgeCYnyMN9bq8E/Cya0ioTtkMjtUEuFS0mgsoMRk2JKDzXiZaE8z2m2bVUIo1MXDie3QGgKb91yw0LtM3NKSlnyjGxwO7Iv0zgbyai6IEDCOs7TR9nC6b5UQh+DOsaYBB/8DcPKSRWm4=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1774443970;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=DnPb2CCqVOsKX/2d2bIu7XGCPxBh8nCgmEw3NE41NDw=;
	b=Ab5EiQmQxWoXwMoCfpkgGbuuS50nWqqvAJgDp8AvMyzROtH3qNVr9l3VpFKM7Isa
	bFDXuKi81+fWUzrUKXpwp4EhAXoEAXukMC9kLXH+ScZqpOkfWdfv0PDipBT0GgWc16R
	6WQvZseU5SEEYlHmdsOBcH/3l/KNwJadzh6hjCvo=
Received: by mx.zohomail.com with SMTPS id 1774443969491826.1863477055813;
	Wed, 25 Mar 2026 06:06:09 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
To: Ville =?UTF-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
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
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>,
 kernel@collabora.com, amd-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-doc@vger.kernel.org, Werner Sembach <wse@tuxedocomputers.com>,
 Andri Yngvason <andri@yngvason.is>, Marius Vlad <marius.vlad@collabora.com>
Subject: Re: [PATCH v11 03/22] drm: Add new general DRM property "color format"
Date: Wed, 25 Mar 2026 14:05:57 +0100
Message-ID: <6660830.GXAFRqVoOG@workhorse>
In-Reply-To: <acLrv5hLyNss-Px5@intel.com>
References: <20260324-color-format-v11-0-605559af4fb4@collabora.com>
 <23910073.EfDdHjke4D@workhorse> <acLrv5hLyNss-Px5@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260325_060657_767323_D1834631 
X-CRM114-Status: GOOD (  30.69  )
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

T24gVHVlc2RheSwgMjQgTWFyY2ggMjAyNiAyMDo1MzozNSBDZW50cmFsIEV1cm9wZWFuIFN0YW5k
YXJkIFRpbWUgVmlsbGUgU3lyasOkbMOkIHdyb3RlOgo+IE9uIFR1ZSwgTWFyIDI0LCAyMDI2IGF0
IDA4OjEwOjExUE0gKzAxMDAsIE5pY29sYXMgRnJhdHRhcm9saSB3cm90ZToKPiA+IE9uIFR1ZXNk
YXksIDI0IE1hcmNoIDIwMjYgMTg6MDA6NDUgQ2VudHJhbCBFdXJvcGVhbiBTdGFuZGFyZCBUaW1l
IFZpbGxlIFN5cmrDpGzDpCB3cm90ZToKPiA+ID4gT24gVHVlLCBNYXIgMjQsIDIwMjYgYXQgMDU6
MDE6MDdQTSArMDEwMCwgTmljb2xhcyBGcmF0dGFyb2xpIHdyb3RlOgo+ID4gPiA+ICtlbnVtIGRy
bV9jb25uZWN0b3JfY29sb3JfZm9ybWF0IHsKPiA+ID4gPiArCS8qKgo+ID4gPiA+ICsJICogQERS
TV9DT05ORUNUT1JfQ09MT1JfRk9STUFUX0FVVE86IFRoZSBkcml2ZXIgb3IgZGlzcGxheSBwcm90
b2NvbAo+ID4gPiA+ICsJICogaGVscGVycyBzaG91bGQgcGljayBhIHN1aXRhYmxlIGNvbG9yIGZv
cm1hdC4gQWxsIGltcGxlbWVudGF0aW9ucyBvZiBhCj4gPiA+ID4gKwkgKiBzcGVjaWZpYyBkaXNw
bGF5IHByb3RvY29sIG11c3QgYmVoYXZlIHRoZSBzYW1lIHdheSB3aXRoICJBVVRPIiwgYnV0Cj4g
PiA+ID4gKwkgKiBkaWZmZXJlbnQgZGlzcGxheSBwcm90b2NvbHMgZG8gbm90IG5lY2Vzc2FyaWx5
IGhhdmUgdGhlIHNhbWUgIkFVVE8iCj4gPiA+ID4gKwkgKiBzZW1hbnRpY3MuCj4gPiA+ID4gKwkg
Kgo+ID4gPiA+ICsJICogRm9yIEhETUksICJBVVRPIiBwaWNrcyBSR0IsIGJ1dCBmYWxscyBiYWNr
IHRvIFlDYkNyIDQ6MjowIGlmIHRoZQo+ID4gPiA+ICsJICogYmFuZHdpZHRoIHJlcXVpcmVkIGZv
ciBmdWxsLXNjYWxlIFJHQiBpcyBub3QgYXZhaWxhYmxlLCBvciB0aGUgbW9kZQo+ID4gPiA+ICsJ
ICogaXMgWUNiQ3IgNDoyOjAtb25seSwgYXMgbG9uZyBhcyB0aGUgbW9kZSBhbmQgb3V0cHV0IGJv
dGggc3VwcG9ydAo+ID4gPiA+ICsJICogWUNiQ3IgNDoyOjAuCj4gPiA+ID4gKwkgKgo+ID4gPiA+
ICsJICogRm9yIGRpc3BsYXkgcHJvdG9jb2xzIG90aGVyIHRoYW4gSERNSSwgdGhlIHJlY3Vyc2l2
ZSBicmlkZ2UgY2hhaW4KPiA+ID4gPiArCSAqIGZvcm1hdCBzZWxlY3Rpb24gcGlja3MgdGhlIGZp
cnN0IGNoYWluIG9mIGJyaWRnZSBmb3JtYXRzIHRoYXQgd29ya3MsCj4gPiA+ID4gKwkgKiBhcyBo
YXMgYWxyZWFkeSBiZWVuIHRoZSBjYXNlIGJlZm9yZSB0aGUgaW50cm9kdWN0aW9uIG9mIHRoZSAi
Y29sb3IKPiA+ID4gPiArCSAqIGZvcm1hdCIgcHJvcGVydHkuIE5vbi1IRE1JIGJyaWRnZXMgc2hv
dWxkIHRoZXJlZm9yZSBlaXRoZXIgc29ydCB0aGVpcgo+ID4gPiA+ICsJICogYnVzIG91dHB1dCBm
b3JtYXRzIGJ5IHByZWZlcmVuY2UsIG9yIGFncmVlIG9uIGEgdW5pZmllZCBhdXRvIGZvcm1hdAo+
ID4gPiA+ICsJICogc2VsZWN0aW9uIGxvZ2ljIHRoYXQncyBpbXBsZW1lbnRlZCBpbiBhIGNvbW1v
biBzdGF0ZSBoZWxwZXIgKGxpa2UKPiA+ID4gPiArCSAqIGhvdyBIRE1JIGRvZXMgaXQpLgo+ID4g
PiA+ICsJICovCj4gPiA+ID4gKwlEUk1fQ09OTkVDVE9SX0NPTE9SX0ZPUk1BVF9BVVRPID0gMCwK
PiA+ID4gPiArCj4gPiA+ID4gKwkvKioKPiA+ID4gPiArCSAqIEBEUk1fQ09OTkVDVE9SX0NPTE9S
X0ZPUk1BVF9SR0I0NDQ6IFJHQiBvdXRwdXQgZm9ybWF0Cj4gPiA+ID4gKwkgKi8KPiA+ID4gPiAr
CURSTV9DT05ORUNUT1JfQ09MT1JfRk9STUFUX1JHQjQ0NCwKPiA+ID4gPiArCj4gPiA+ID4gKwkv
KioKPiA+ID4gPiArCSAqIEBEUk1fQ09OTkVDVE9SX0NPTE9SX0ZPUk1BVF9ZQ0JDUjQ0NDogWUNi
Q3IgNDo0OjQgb3V0cHV0IGZvcm1hdCAoaWUuCj4gPiA+ID4gKwkgKiBub3Qgc3Vic2FtcGxlZCkK
PiA+ID4gPiArCSAqLwo+ID4gPiA+ICsJRFJNX0NPTk5FQ1RPUl9DT0xPUl9GT1JNQVRfWUNCQ1I0
NDQsCj4gPiA+ID4gKwo+ID4gPiA+ICsJLyoqCj4gPiA+ID4gKwkgKiBARFJNX0NPTk5FQ1RPUl9D
T0xPUl9GT1JNQVRfWUNCQ1I0MjI6IFlDYkNyIDQ6MjoyIG91dHB1dCBmb3JtYXQgKGllLgo+ID4g
PiA+ICsJICogd2l0aCBob3Jpem9udGFsIHN1YnNhbXBsaW5nKQo+ID4gPiA+ICsJICovCj4gPiA+
ID4gKwlEUk1fQ09OTkVDVE9SX0NPTE9SX0ZPUk1BVF9ZQ0JDUjQyMiwKPiA+ID4gPiArCj4gPiA+
ID4gKwkvKioKPiA+ID4gPiArCSAqIEBEUk1fQ09OTkVDVE9SX0NPTE9SX0ZPUk1BVF9ZQ0JDUjQy
MDogWUNiQ3IgNDoyOjAgb3V0cHV0IGZvcm1hdCAoaWUuCj4gPiA+ID4gKwkgKiB3aXRoIGhvcml6
b250YWwgYW5kIHZlcnRpY2FsIHN1YnNhbXBsaW5nKQo+ID4gPiA+ICsJICovCj4gPiA+ID4gKwlE
Uk1fQ09OTkVDVE9SX0NPTE9SX0ZPUk1BVF9ZQ0JDUjQyMCwKPiA+ID4gCj4gPiA+IFNlZW1zIGxp
a2UgdGhpcyBzaG91bGQgZG9jdW1lbnQgd2hhdCB0aGUgcXVhbnRpemF0aW9uIHJhbmdlCj4gPiA+
IHNob3VsZCBiZSBmb3IgZWFjaCBmb3JtYXQuCj4gPiA+IAo+ID4gCj4gPiBJIGRvbid0IHRoaW5r
IHNvPyBJZiB5b3Ugd2FudCBwZXItY29tcG9uZW50IGJpdCBkZXB0aCB2YWx1ZXMsCj4gPiBEUk1f
Rk9STUFUXyogZGVmaW5lcyB3b3VsZCBiZSB0aGUgYXBwcm9wcmlhdGUgdmFsdWVzIHRvIHVzZS4g
VGhpcwo+ID4gZW51bSBpcyBtb3JlIGFic3RyYWN0IHRoYW4gdGhhdCwgYW5kIGlzIHRoZXJlIHRv
IGNvbW11bmljYXRlCj4gPiBZVVYgdnMuIFJHQiBhbmQgY2hyb21hIHN1YnNhbXBsaW5nLCB3aXRo
IGJpdCBkZXB0aCBiZWluZyBoYW5kbGVkCj4gPiBieSBvdGhlciBwcm9wZXJ0aWVzLgo+ID4gCj4g
PiBJZiB5b3UgbWVhbiB0aGUgZmFjdG9yIHVzZWQgZm9yIHN1YnNhbXBsaW5nLCB0aGVuIHRoYXQn
ZCBvbmx5IGJlCj4gPiByZWxldmFudCBpZiBZQ0JDUjQxMCB3YXMgc3VwcG9ydGVkIHdoZXJlIG9u
ZSBjaHJvbWEgcGxhbmUgaXNuJ3QKPiA+IGhhbHZlZCBidXQgcXVhcnRlcmVkIGluIHJlc29sdXRp
b24uIEkgc3VzcGVjdCA0OjE6MCB3aWxsIG5ldmVyCj4gPiBiZSBhZGRlZDsgbm8gZGlnaXRhbCBk
aXNwbGF5IHByb3RvY29sIHN0YW5kYXJkIHN1cHBvcnRzIGl0IHRvIG15Cj4gPiBrbm93bGVkZ2Us
IGFuZCBob3BlZnVsbHkgbm9uZSBldmVyIHdpbGwuCj4gCj4gTm8sIEkgbWVhbiB0aGUgcXVhbnRp
emF0aW9uIHJhbmdlICgxNi0yMzUgdnMuIDAtMjU1IGV0YykuCj4gCj4gVGhlIGk5MTUgYmVoYXZp
b3VyIGlzIHRoYXQgWUNiQ3IgaXMgYWx3YXlzIGxpbWl0ZWQgcmFuZ2UsCj4gUkdCIGNhbiBlaXRo
ZXIgYmUgZnVsbCBvciBsaW1pdGVkIHJhbmdlIGRlcGVuZGluZyBvbiB0aGUgCj4gIkJyb2FkY2Fz
dCBSR0IiIHByb3BlcnR5IGFuZCBvdGhlciByZWxhdGVkIGZhY3RvcnMuCj4gCj4gCgpJIGRvIGFn
cmVlIHRoYXQgdGhpcyB3b3VsZCBiZSB1c2VmdWwgdG8gYmUgcHJlY2lzZSBhYm91dCwgYnV0IEkn
bQpub3Qgc3VyZSBtYWlubGluZSBpcyBjdXJyZW50bHkgY2FwYWJsZSBvZiBldmVuIG1ha2luZyBh
IGRlZmluaXRpdmUKc3RhdGVtZW50IGFib3V0IHRoaXMgYmVjYXVzZSBldmVyeSBpbXBsZW1lbnRh
dGlvbiB3aWxsIGRvIGl0cyBvd24KdGhpbmcgcHJvYmFibHkuCgpJZiB3ZSBkbyBhZGQgWUNiQ3Ig
cXVhbnRpemF0aW9uIHJhbmdlIGFzIGEgc2VwYXJhdGUgcHJvcGVydHkgKHRob3VnaApJJ2QgcmVh
bGx5IHdvdWxkJ3ZlIGxvdmVkIGl0IGlmICJCcm9hZGNhc3QgUkdCIiB3YXMgbmFtZWQgZGlmZmVy
ZW50bHkKc28gaXQgd291bGRuJ3QgYmUgY29uZnVzaW5nIGlmIHdlIG92ZXJsb2FkZWQgdGhhdCBw
cm9wZXJ0eSdzIG1lYW5pbmcKdG8gYWxzbyBhcHBseSB0byBZQ2JDcikgdGhlbiB0aGUgcmVzdWx0
aW5nIGRvY3MgY2hhbmdlIGZvciB0aGVzZQplbnVtcyB3b3VsZCBiZSB0byBzYXkgdGhhdCBxdWFu
dGl6YXRpb24gcmFuZ2UgaXMgYSBzZXBhcmF0ZSBwcm9wZXJ0eS4KCkkgZG8gdGhpbmsgbWFraW5n
IGl0IHNlcGFyYXRlIGlzIHRoZSBiZXN0IHBhdGggZm9yd2FyZCwgYW5kIEknbSB3aWxsaW5nCnRv
IGFkanVzdCB0aGUgZG9jcyB0byBtZW50aW9uIHRoaXMsIGJ1dCBJIHRoaW5rIGltcGxlbWVudGlu
ZyBZQ2JDciBsaW1pdGVkCnZlcnN1cyBmdWxsIHJhbmdlIGluIHRoaXMgc2VyaWVzIGFzIHdlbGwg
d291bGQgZHJhc3RpY2FsbHkgd2lkZW4gdGhlIHNjb3BlCmFnYWluLgoKS2luZCByZWdhcmRzLApO
aWNvbGFzIEZyYXR0YXJvbGkKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=

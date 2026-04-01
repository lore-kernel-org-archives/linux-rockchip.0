Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD1DFD3514F
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Apr 2026 08:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AMENMyJw1JE+l22h2vYnubtpJMG6PPItypPeXj2K+Vw=; b=AJRkGYciIsdSUF
	lrdSb4gD10ldW6KCDBttBGjja+yoM90YJBJTogzGO01YUXs4MGkeg49PJc3M0XK0kJqSDk5MW0QAq
	bsnt2ZkL1YUe8ElsC8WAqNVwYWWZlLKR5En8f2AXIRDZ7UAaEfArrSxcGI1lU7uUKBJQ+GGq7plxi
	Mb4beoIlHdcWXH8rggWVtjUz4qWkIYY9KzCm95ssr+TepDz90vQqwQygUPMJIwLZOLCQtg4AJiFUG
	g+85CyiySurLiotmdSFEUntBoHf++2dkUXje4kKv2lbGxfKtkKy9UqZHpRbHy7Wsg8o6q/VpX2g+F
	/G5LR0ygBeBkEpzwDDFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7qvu-0000000EJsU-2XmS;
	Wed, 01 Apr 2026 08:28:14 +0000
Received: from mout-p-102.mailbox.org ([80.241.56.152])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7qvr-0000000EJqE-1DCX;
	Wed, 01 Apr 2026 08:28:12 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org [10.196.197.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-102.mailbox.org (Postfix) with ESMTPS id 4flymJ3sjDz9vKb;
	Wed,  1 Apr 2026 10:28:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
	t=1775032080;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=tb1F2P/gPVX7hmvyL7zuDD5FVQ+lQUkUvdkCl8Wclqk=;
	b=cDtgeijh/xXy7nE6xhMCdiIacIOVa648Gbf4U7ObTHYmEsqmmM9Jyy7SpQFLBda+CsZOih
	zZFH9+azWNF50WEPVw9dsvkE3Vu1EHAbC4Qy8kushhoKKPwL/+dvNDvpLxC8ymM3pjV6V+
	gg7VKq9XTTLS+0eWtrNlFiumCpu2xZPc0o6B9O1GBaIZ9hM1qMEdYStpFEZ5Ki2SiKBLWI
	RLn63RLyF3/LXPrTZsiCdxIDF8tMR+qw1Wp5G3BJvePt2t5ZhSjO+uASNS3JmiuyXDGoPI
	a9LDuiXhSaGBzBGIsLuYwWnWbmdYLo9apoKhudIQ0IopI5nxR5Icz6rlrF+eVg==
Message-ID: <824bf7a3-44ad-4da3-b019-08e43a4cc192@mailbox.org>
Date: Wed, 1 Apr 2026 10:27:46 +0200
MIME-Version: 1.0
Subject: Re: [PATCH v11 03/22] drm: Add new general DRM property "color
 format"
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>
Cc: Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>,
 Rodrigo Siqueira <siqueira@igalia.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>,
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
References: <20260324-color-format-v11-0-605559af4fb4@collabora.com>
 <acPmcMbUvzWMzC-Q@intel.com>
 <CAPY8ntCRPgN_ayHMGXFv9OrJrdyakUcUT0rvgY5J=FvdCFb6eA@mail.gmail.com>
 <7991520.DvuYhMxLoT@workhorse>
From: =?UTF-8?Q?Michel_D=C3=A4nzer?= <michel.daenzer@mailbox.org>
Content-Language: en-CA
In-Reply-To: <7991520.DvuYhMxLoT@workhorse>
X-MBO-RS-ID: ce369c97bd17c9d38f0
X-MBO-RS-META: ru6a8tkc6pfuiejgd9pamkj44hgh76qb
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260401_012811_477252_84B38311 
X-CRM114-Status: GOOD (  19.72  )
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

T24gMy8yNi8yNiAxMzowMiwgTmljb2xhcyBGcmF0dGFyb2xpIHdyb3RlOgo+IE9uIFRodXJzZGF5
LCAyNiBNYXJjaCAyMDI2IDEyOjE2OjEyIENlbnRyYWwgRXVyb3BlYW4gU3RhbmRhcmQgVGltZSBE
YXZlIFN0ZXZlbnNvbiB3cm90ZToKPj4gT24gV2VkLCAyNSBNYXIgMjAyNiBhdCAxMzo0MywgVmls
bGUgU3lyasOkbMOkCj4+IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4gd3JvdGU6Cj4+
PiBPbiBXZWQsIE1hciAyNSwgMjAyNiBhdCAxMjo0OToxOVBNICswMDAwLCBEYXZlIFN0ZXZlbnNv
biB3cm90ZToKPj4+PiBPbiBUdWUsIDI0IE1hciAyMDI2IGF0IDE2OjAyLCBOaWNvbGFzIEZyYXR0
YXJvbGkKPj4+PiA8bmljb2xhcy5mcmF0dGFyb2xpQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+Pj4+
Pgo+Pj4+PiArLyoqCj4+Pj4+ICsgKiBlbnVtIGRybV9jb25uZWN0b3JfY29sb3JfZm9ybWF0IC0g
Q29ubmVjdG9yIENvbG9yIEZvcm1hdCBSZXF1ZXN0Cj4+Pj4+ICsgKgo+Pj4+PiArICogVGhpcyBl
bnVtLCB1bmxpa2UgJmVudW0gZHJtX291dHB1dF9jb2xvcl9mb3JtYXQsIGlzIHVzZWQgdG8gc3Bl
Y2lmeSByZXF1ZXN0cwo+Pj4+PiArICogZm9yIGEgc3BlY2lmaWMgY29sb3IgZm9ybWF0IG9uIGEg
Y29ubmVjdG9yIHRocm91Z2ggdGhlIERSTSAiY29sb3IgZm9ybWF0Igo+Pj4+PiArICogcHJvcGVy
dHkuIFRoZSBkaWZmZXJlbmNlIGlzIHRoYXQgaXQgaGFzIGFuICJBVVRPIiB2YWx1ZSB0byBzcGVj
aWZ5IHRoYXQKPj4+Pj4gKyAqIG5vIHNwZWNpZmljIGNob2ljZSBoYXMgYmVlbiBtYWRlLgo+Pj4+
PiArICovCj4+Pj4+ICtlbnVtIGRybV9jb25uZWN0b3JfY29sb3JfZm9ybWF0IHsKPj4+Pj4gKyAg
ICAgICAvKioKPj4+Pj4gKyAgICAgICAgKiBARFJNX0NPTk5FQ1RPUl9DT0xPUl9GT1JNQVRfQVVU
TzogVGhlIGRyaXZlciBvciBkaXNwbGF5IHByb3RvY29sCj4+Pj4+ICsgICAgICAgICogaGVscGVy
cyBzaG91bGQgcGljayBhIHN1aXRhYmxlIGNvbG9yIGZvcm1hdC4gQWxsIGltcGxlbWVudGF0aW9u
cyBvZiBhCj4+Pj4+ICsgICAgICAgICogc3BlY2lmaWMgZGlzcGxheSBwcm90b2NvbCBtdXN0IGJl
aGF2ZSB0aGUgc2FtZSB3YXkgd2l0aCAiQVVUTyIsIGJ1dAo+Pj4+PiArICAgICAgICAqIGRpZmZl
cmVudCBkaXNwbGF5IHByb3RvY29scyBkbyBub3QgbmVjZXNzYXJpbHkgaGF2ZSB0aGUgc2FtZSAi
QVVUTyIKPj4+Pj4gKyAgICAgICAgKiBzZW1hbnRpY3MuCj4+Pj4+ICsgICAgICAgICoKPj4+Pj4g
KyAgICAgICAgKiBGb3IgSERNSSwgIkFVVE8iIHBpY2tzIFJHQiwgYnV0IGZhbGxzIGJhY2sgdG8g
WUNiQ3IgNDoyOjAgaWYgdGhlCj4+Pj4+ICsgICAgICAgICogYmFuZHdpZHRoIHJlcXVpcmVkIGZv
ciBmdWxsLXNjYWxlIFJHQiBpcyBub3QgYXZhaWxhYmxlLCBvciB0aGUgbW9kZQo+Pj4+PiArICAg
ICAgICAqIGlzIFlDYkNyIDQ6MjowLW9ubHksIGFzIGxvbmcgYXMgdGhlIG1vZGUgYW5kIG91dHB1
dCBib3RoIHN1cHBvcnQKPj4+Pj4gKyAgICAgICAgKiBZQ2JDciA0OjI6MC4KPj4+Pgo+Pj4+IElz
IHRoZXJlIGEgcmVhc29uIHlvdSBwcm9wb3NlIGRyb3BwaW5nIGJhY2sgdG8gWUNiQ3IgNDoyOjAg
d2l0aG91dAo+Pj4+IHRyeWluZyBZQ2JDciA0OjI6MiBmaXJzdD8gTWluaW1pc2luZyB0aGUgc3Vi
c2FtcGxpbmcgaXMgc3VyZWx5Cj4+Pj4gYmVuZWZpY2lhbCwgYW5kIHZjNCBmb3Igb25lIGNhbiBk
byA0OjI6MiBidXQgbm90IDQ6MjowLgo+Pj4KPj4+IE9uIEhETUkgNDoyOjIgaXMgYWx3YXlzIDEy
YnBjLCBzbyBpdCBkb2Vzbid0IHNhdmUgYW55IGJhbmR3aWR0aAo+Pj4gY29tcGFyZWQgdG8gOGJw
YyA0OjQ6NC4KPj4KPj4gSXQgZG9lcyBzYXZlIGJhbmR3aWR0aCBhZ2FpbnN0IDEwIG9yIDEyYnBj
IFJHQiA0OjQ6NC4KPj4KPj4gT3IgaXMgdGhlIGltcGxpY2F0aW9uIHRoYXQgbWF4X2JwYyA9IDEy
IGFuZAo+PiBEUk1fQ09OTkVDVE9SX0NPTE9SX0ZPUk1BVF9BVVRPIHNob3VsZCBkcm9wIGJwYyBk
b3duIHRvIDggYW5kIHNlbGVjdAo+PiBSR0IgaW4gcHJlZmVyZW5jZSB0byBzZWxlY3RpbmcgNDoy
OjI/Cj4gCj4gWWVzLiBTb21lIHBlb3BsZSBjb25zaWRlciBtYXgtYnBjIHRvIG5vdCBiZSBhIGxl
Z2l0aW1hdGUgd2F5IG9mIHJlcXVlc3RpbmcKPiBhbiBhY3R1YWwgYnBjLCBhbmQgZG9uJ3QgdGhp
bmsgZHJpdmVycyB3aWxsIGNob29zZSB0aGUgaGlnaGVzdCBicGMgPD0gbWF4LWJwYywKPiBhbmQg
aW5zdGVhZCBtYXkgbmVnb3RpYXRlIGEgZmFudGFzeSBudW1iZXIgYW55d2hlcmUgYmVsb3cgb3Ig
ZXF1YWwgdG8gbWF4LWJwYy4KClJpZGljdWxpbmcgb3RoZXJzIGxpa2UgdGhpcyBmb3IgZGlzYWdy
ZWVpbmcgd2l0aCB5b3UgaXMgdW5jYWxsZWQgZm9yLgoKSXMgdGhlcmUgYW55IGV2aWRlbmNlIGZv
ciB5b3VyIGNsYWltIHRoYXQgdGhlIGRyaXZlciBtdXN0IGFsd2F5cyB1c2UgdGhlIApoaWdoZXN0
IHBvc3NpYmxlIGJwYyA8PSBtYXgtYnBjPwoKCj4gT2YgY291cnNlIHRoaXMgbG9naWMgY291bGQg
YmUgZG9uZSBpbiB1c2Vyc3BhY2Ugd2hpY2gga25vd3Mgd2hldGhlciB0aGUKPiBsZXNzIGNocm9t
YSBmb3IgbW9yZSBiaXQgZGVwdGggdHJhZGUtb2ZmIGlzIHdvcnRoIGl0LCBidXQgdXNlcnNwYWNl
IGRvZXMKPiBub3Qga25vdyB0aGUgbmVnb3RpYXRlZCBsaW5rIGJwYywgYW5kIG15IGF0dGVtcHRz
IGF0IGFkZGluZyBhIHByb3BlcnR5IGZvcgo+IGl0IGFyZSBiZWluZyBibG9ja2VkLgoKQXNzdW1p
bmcgeW91J3JlIHJlZmVycmluZyB0byB0aGUgY29uY2VybnMgSSByYWlzZWQgdGhlcmUsIEkgZG9u
J3QgaGF2ZSB0aGUgcG93ZXIgb3IgaW50ZW50IHRvIGJsb2NrIGl0LgoKCi0tIApFYXJ0aGxpbmcg
TWljaGVsIETDpG56ZXIgICAgICAgXCAgICAgICAgR05PTUUgLyBYd2F5bGFuZCAvIE1lc2EgZGV2
ZWxvcGVyCmh0dHBzOi8vcmVkaGF0LmNvbSAgICAgICAgICAgICBcICAgICAgICAgICAgICAgTGli
cmUgc29mdHdhcmUgZW50aHVzaWFzdAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=

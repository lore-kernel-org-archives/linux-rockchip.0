Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A51ECD8CB9
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Jun 2026 11:43:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MJ2GlJ4Bx2SZRmMuOzv61ECcSTZdUlf7D68ZBQBClvo=; b=4kewavNmERvGcU
	tfbDEN/oMUwYpFxcXqPTNdgXMDKP6agXQb9DA2aMhger7xbY3JeuJrYV8XOAzGV0TIdMTRMZzoqaY
	yvz3ynJfQVjHuT7J82J7itOrDx6HlG/zXptGxPzCUy1cJKb0qwHJoq/YQjsHkbIfjfyj+o/RVXqy7
	qXXn/MrBERjZW+W5+VbRnbuT5Alxttk6K01c76nHu8Io9O09fEQy5vfcw0C0DEBwIZa03r8whQUs1
	yQ1IO1qc8EUQvNbBjKotEHQv9O6SIm8PCT/Jf9Wjw/BNd/LQphy4Pk4K8Vro7N4FZh48iJT2RLjdJ
	ERfACl/a9g1HJGG3oPFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXHLa-00000007Ymo-2JIO;
	Wed, 10 Jun 2026 11:43:50 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXHLX-00000007Ym9-3GbF;
	Wed, 10 Jun 2026 11:43:49 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1781091768; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=gzlZb4bSFV52eLdMUMh9PyeGOrd9EAvWXGBw2jHcFBez9EqYAjtGB/rBytbYZIUK6a12QL1SlCxeqoIPXF+WzqlsBu4n/yAbJwi+RR3V7M43DIuKsOYChbJdSZvXFNf59VpSiTkU1K1NG9Qnao5wVDw+LS7peRgWb4eELJ9H3pw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1781091768; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=KzcKfN/o2MeODUvVqRl2cwiGf5DJAZJN2X6vhvr6p0k=; 
	b=dJ1XCpFp3xrtGi+Xng/mVdtES2/WZzNzmFiiNSAVW0WLpjerZ5mPw4hJmgDxaiCDx2oY1WcDhdhgiDSBwTe+WCe6yc8iMLFSTotK51j39yI5I+WTHP8RqpoOw9PtS+AKiFxdXij/Cb/hasI2G+Nm6IpwGas9uD6xF7iz9dG0lZI=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1781091768;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=KzcKfN/o2MeODUvVqRl2cwiGf5DJAZJN2X6vhvr6p0k=;
	b=jyo/yFGOjDLNt4JhkO14FnSIQsSy+FTdAqSukJAOK58KWAD816pk2Arn9Z7jNWXm
	WdMv4NJl+kvtBgFV37FFKH7qdVcXN7tUe3ggtGdVIHrpwK/bUoTr4UnAzKE2nvbl0G4
	jX7HgyRw1kEauHhxa6WUd4d+hzfrSqQKD9xSKqgk=
Received: by mx.zohomail.com with SMTPS id 1781091766388431.86406877104446;
	Wed, 10 Jun 2026 04:42:46 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
To: Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>,
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
 Andy Yan <andy.yan@rock-chips.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Dmitry Baryshkov <lumag@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>,
 Daniel Stone <daniel@fooishbar.org>,
 Jani Nikula <jani.nikula@linux.intel.com>
Cc: kernel@collabora.com, amd-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-doc@vger.kernel.org, wayland-devel@lists.freedesktop.org
Subject: Re: [PATCH v17 21/28] drm/tests: bridge: Add KUnit tests for bridge chain
 format selection
Date: Wed, 10 Jun 2026 13:42:35 +0200
Message-ID: <gnicb4WkT1S4aQIC2G_naw@collabora.com>
In-Reply-To: <04ff70850213ae0f75486b1a27a7edb6fb4e71c3@intel.com>
References: <20260609-color-format-v17-0-35739b5782cc@collabora.com>
 <20260609-color-format-v17-21-35739b5782cc@collabora.com>
 <04ff70850213ae0f75486b1a27a7edb6fb4e71c3@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_044347_894639_90F118A1 
X-CRM114-Status: GOOD (  25.91  )
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

T24gV2VkbmVzZGF5LCAxMCBKdW5lIDIwMjYgMTI6MzI6MjkgQ2VudHJhbCBFdXJvcGVhbiBTdW1t
ZXIgVGltZSBKYW5pIE5pa3VsYSB3cm90ZToKPiBPbiBUdWUsIDA5IEp1biAyMDI2LCBOaWNvbGFz
IEZyYXR0YXJvbGkgPG5pY29sYXMuZnJhdHRhcm9saUBjb2xsYWJvcmEuY29tPiB3cm90ZToKPiA+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vdGVzdHMvZHJtX2JyaWRnZV90ZXN0LmMgYi9k
cml2ZXJzL2dwdS9kcm0vdGVzdHMvZHJtX2JyaWRnZV90ZXN0LmMKPiA+IGluZGV4IDY0YjY2NTU4
MGE4OC4uOTJmMTQyY2E2Njk1IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3Rlc3Rz
L2RybV9icmlkZ2VfdGVzdC5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vdGVzdHMvZHJtX2Jy
aWRnZV90ZXN0LmMKPiA+IEBAIC0yLDE1ICsyLDIzIEBACj4gPiAgLyoKPiA+ICAgKiBLdW5pdCB0
ZXN0IGZvciBkcm1fYnJpZGdlIGZ1bmN0aW9ucwo+ID4gICAqLwo+ID4gKyNpbmNsdWRlIDxsaW51
eC9jbGVhbnVwLmg+Cj4gPiArI2luY2x1ZGUgPGxpbnV4L21lZGlhLWJ1cy1mb3JtYXQuaD4KPiA+
ICsKPiA+ICAjaW5jbHVkZSA8ZHJtL2RybV9hdG9taWNfc3RhdGVfaGVscGVyLmg+Cj4gPiArI2lu
Y2x1ZGUgPGRybS9kcm1fYXRvbWljX3VhcGkuaD4KPiA+ICAjaW5jbHVkZSA8ZHJtL2RybV9icmlk
Z2UuaD4KPiA+ICAjaW5jbHVkZSA8ZHJtL2RybV9icmlkZ2VfY29ubmVjdG9yLmg+Cj4gPiAgI2lu
Y2x1ZGUgPGRybS9kcm1fYnJpZGdlX2hlbHBlci5oPgo+ID4gKyNpbmNsdWRlIDxkcm0vZHJtX2Vk
aWQuaD4KPiA+ICAjaW5jbHVkZSA8ZHJtL2RybV9rdW5pdF9oZWxwZXJzLmg+Cj4gPiArI2luY2x1
ZGUgPGRybS9kcm1fbWFuYWdlZC5oPgo+ID4gIAo+ID4gICNpbmNsdWRlIDxrdW5pdC9kZXZpY2Uu
aD4KPiA+ICAjaW5jbHVkZSA8a3VuaXQvdGVzdC5oPgo+ID4gIAo+ID4gKyNpbmNsdWRlICJkcm1f
a3VuaXRfZWRpZC5oIgo+IAo+IFNvIGhlcmUncyB0aGUgcHJvYmxlbSB3aXRoIGFkZGluZyAqYW55
KiBhcnJheXMgaW50byBoZWFkZXJzOiBldmVyeQo+IGNvbXBpbGF0aW9uIHVuaXQgdGhhdCBpbmNs
dWRlcyB0aGVtIGR1cGxpY2F0ZXMgYWxsIHRoZSBhcnJheXMuIEl0J3Mgb25seQo+IHJlYWxseSBv
a2F5IGZvciBzaW5nbGUgdXNlLgo+IAo+IEFuZCwgaW4gdGhpcyBjYXNlLCBtb3N0IG9mIHRoZSBp
bmNsdWRlZCBhcnJheXMgYXJlIHVudXNlZCwgbGVhZGluZyB0bwo+IGJ1aWxkIGZhaWx1cmVzOgo+
IAo+ICAgQ0MgW01dICBkcml2ZXJzL2dwdS9kcm0vdGVzdHMvZHJtX2JyaWRnZV90ZXN0Lm8KPiBJ
biBmaWxlIGluY2x1ZGVkIGZyb20gLi4vZHJpdmVycy9ncHUvZHJtL3Rlc3RzL2RybV9icmlkZ2Vf
dGVzdC5jOjIxOgo+IC4uL2RyaXZlcnMvZ3B1L2RybS90ZXN0cy9kcm1fa3VuaXRfZWRpZC5oOjk1
ODoyODogZXJyb3I6IOKAmHRlc3RfZWRpZF9oZG1pXzRrX3JnYl95dXY0MjBfZGNfbWF4XzM0MG1o
euKAmSBkZWZpbmVkIGJ1dCBub3QgdXNlZCBbLVdlcnJvcj11bnVzZWQtY29uc3QtdmFyaWFibGU9
XQo+ICAgOTU4IHwgc3RhdGljIGNvbnN0IHVuc2lnbmVkIGNoYXIgdGVzdF9lZGlkX2hkbWlfNGtf
cmdiX3l1djQyMF9kY19tYXhfMzQwbWh6W10gPSB7Cj4gICAgICAgfCAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4KPiAu
Li9kcml2ZXJzL2dwdS9kcm0vdGVzdHMvZHJtX2t1bml0X2VkaWQuaDo3MjY6Mjg6IGVycm9yOiDi
gJh0ZXN0X2VkaWRfaGRtaV8xMDgwcF9yZ2JfeXV2X2RjX21heF8zNDBtaHrigJkgZGVmaW5lZCBi
dXQgbm90IHVzZWQgWy1XZXJyb3I9dW51c2VkLWNvbnN0LXZhcmlhYmxlPV0KPiAgIDcyNiB8IHN0
YXRpYyBjb25zdCB1bnNpZ25lZCBjaGFyIHRlc3RfZWRpZF9oZG1pXzEwODBwX3JnYl95dXZfZGNf
bWF4XzM0MG1oeltdID0gewo+ICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgXn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+Cj4gLi4vZHJpdmVycy9ncHUv
ZHJtL3Rlc3RzL2RybV9rdW5pdF9lZGlkLmg6NjEyOjI4OiBlcnJvcjog4oCYdGVzdF9lZGlkX2hk
bWlfMTA4MHBfcmdiX3l1dl9kY19tYXhfMjAwbWh64oCZIGRlZmluZWQgYnV0IG5vdCB1c2VkIFst
V2Vycm9yPXVudXNlZC1jb25zdC12YXJpYWJsZT1dCj4gICA2MTIgfCBzdGF0aWMgY29uc3QgdW5z
aWduZWQgY2hhciB0ZXN0X2VkaWRfaGRtaV8xMDgwcF9yZ2JfeXV2X2RjX21heF8yMDBtaHpbXSA9
IHsKPiAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgIF5+fn5+fn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fgo+IC4uL2RyaXZlcnMvZ3B1L2RybS90ZXN0cy9kcm1f
a3VuaXRfZWRpZC5oOjQ5ODoyODogZXJyb3I6IOKAmHRlc3RfZWRpZF9oZG1pXzEwODBwX3JnYl9t
YXhfMzQwbWh64oCZIGRlZmluZWQgYnV0IG5vdCB1c2VkIFstV2Vycm9yPXVudXNlZC1jb25zdC12
YXJpYWJsZT1dCj4gICA0OTggfCBzdGF0aWMgY29uc3QgdW5zaWduZWQgY2hhciB0ZXN0X2VkaWRf
aGRtaV8xMDgwcF9yZ2JfbWF4XzM0MG1oeltdID0gewo+ICAgICAgIHwgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4KPiAuLi9kcml2
ZXJzL2dwdS9kcm0vdGVzdHMvZHJtX2t1bml0X2VkaWQuaDozOTA6Mjg6IGVycm9yOiDigJh0ZXN0
X2VkaWRfaGRtaV8xMDgwcF9yZ2JfbWF4XzIwMG1oel9oZHLigJkgZGVmaW5lZCBidXQgbm90IHVz
ZWQgWy1XZXJyb3I9dW51c2VkLWNvbnN0LXZhcmlhYmxlPV0KPiAgIDM5MCB8IHN0YXRpYyBjb25z
dCB1bnNpZ25lZCBjaGFyIHRlc3RfZWRpZF9oZG1pXzEwODBwX3JnYl9tYXhfMjAwbWh6X2hkcltd
ID0gewo+ICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+Cj4gLi4vZHJpdmVycy9ncHUvZHJtL3Rlc3RzL2RybV9r
dW5pdF9lZGlkLmg6MjcxOjI4OiBlcnJvcjog4oCYdGVzdF9lZGlkX2hkbWlfMTA4MHBfcmdiX21h
eF8yMDBtaHrigJkgZGVmaW5lZCBidXQgbm90IHVzZWQgWy1XZXJyb3I9dW51c2VkLWNvbnN0LXZh
cmlhYmxlPV0KPiAgIDI3MSB8IHN0YXRpYyBjb25zdCB1bnNpZ25lZCBjaGFyIHRlc3RfZWRpZF9o
ZG1pXzEwODBwX3JnYl9tYXhfMjAwbWh6W10gPSB7Cj4gICAgICAgfCAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fgo+IC4uL2RyaXZl
cnMvZ3B1L2RybS90ZXN0cy9kcm1fa3VuaXRfZWRpZC5oOjE2MzoyODogZXJyb3I6IOKAmHRlc3Rf
ZWRpZF9oZG1pXzEwODBwX3JnYl9tYXhfMTAwbWh64oCZIGRlZmluZWQgYnV0IG5vdCB1c2VkIFst
V2Vycm9yPXVudXNlZC1jb25zdC12YXJpYWJsZT1dCj4gICAxNjMgfCBzdGF0aWMgY29uc3QgdW5z
aWduZWQgY2hhciB0ZXN0X2VkaWRfaGRtaV8xMDgwcF9yZ2JfbWF4XzEwMG1oeltdID0gewo+ICAg
ICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn4KPiAuLi9kcml2ZXJzL2dwdS9kcm0vdGVzdHMvZHJtX2t1bml0X2VkaWQuaDo1
NzoyODogZXJyb3I6IOKAmHRlc3RfZWRpZF9kdmlfMTA4MHDigJkgZGVmaW5lZCBidXQgbm90IHVz
ZWQgWy1XZXJyb3I9dW51c2VkLWNvbnN0LXZhcmlhYmxlPV0KPiAgICA1NyB8IHN0YXRpYyBjb25z
dCB1bnNpZ25lZCBjaGFyIHRlc3RfZWRpZF9kdmlfMTA4MHBbXSA9IHsKPiAgICAgICB8ICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIF5+fn5+fn5+fn5+fn5+fn5+fn4KPiBjYzE6IGFsbCB3YXJu
aW5ncyBiZWluZyB0cmVhdGVkIGFzIGVycm9ycwo+IAo+IFRoaXMgYnJlYWtzIHRoZSBidWlsZCBm
b3IgbWUsIEkgZG9uJ3Qga25vdyBob3cgaXQgZGlkbid0IGZvciBhbnkgb2YgeW91LgoKSXQgYnJv
a2UgdGhlIGJ1aWxkIGZvciBtZSBpbiB0aGUgcGFzdFsxXSwgYnV0IHRoZW4gSSBjb3VsZG4ndCBy
ZXBybwppdCBhbnltb3JlIHdoZW4gY2hhbGxlbmdlZCBvbiBteSBmaXhbMl0uCgo+IAo+IFJldmVy
dGluZyB0aGVzZSB0d28gZml4ZXMgaXQ6Cj4gCj4gY2UxZDAxMzlhZGFjICgiZHJtL3Rlc3RzOiBi
cmlkZ2U6IEFkZCB0ZXN0IGZvciBIRE1JIG91dHB1dCBidXMgZm9ybWF0cyBoZWxwZXIiKQo+IDA4
MmZiYzE3OWMwMSAoImRybS90ZXN0czogYnJpZGdlOiBBZGQgS1VuaXQgdGVzdHMgZm9yIGJyaWRn
ZSBjaGFpbiBmb3JtYXQgc2VsZWN0aW9uIikKPiAKPiBJIHRoaW5rIHRoZSBwcm9wZXIgZml4IHdv
dWxkIGJlIHRvIG1vdmUgdGhlIGFycmF5cyBpbnRvIGEgLmMgZmlsZSwgYW5kCj4gb25seSBoYXZl
IGRlY2xhcmF0aW9ucyBpbiB0aGUgaGVhZGVycy4gQnV0IHRoYXQgbmVlZHMgdG8gaGFwcGVuIHJl
YWwKPiBzb29uIG9yIHRoZSBjb21taXRzIG5lZWQgdG8gYmUgcmV2ZXJ0ZWQuCgpJZiB5b3UgZG9u
J3Qgd2FudCBfX21heWJlX3VudXNlZCwgdGhlbiBzdXJlLCBJJ2xsIG1vdmUgdGhlbSBpbnRvIGEg
bmV3Ci5jIGZpbGUuIFRob3VnaCBJIHRoaW5rIHRoZSB0d28gYXJlIHJvdWdobHkgZXF1aXZhbGVu
dCBpbiB0aGF0IEkgZG9uJ3QKdGhpbmsgYW55b25lIGlzIHJlYWxseSB0cnlpbmcgdG8gbWluaW1p
c2UgdGhlIHNpemUgb2YgdGhlaXIgS1VuaXQKYmluYXJpZXMuCgpJJ2xsIHNlbmQgYSBwYXRjaCB0
byBtb3ZlIHRoZW0gdG8gYSAuYwoKWzFdOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9kcmktZGV2
ZWwvMjAyNjAxMjEtY29sb3ItZm9ybWF0LXY3LTIwLWVmNzkwZGFlNzgwY0Bjb2xsYWJvcmEuY29t
LwpbMl06IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2RyaS1kZXZlbC8yMDI2MDIxMC1kaWRhY3Rp
Yy1va2FwaS1vZi1tb2Rlcm5pc20tZmYwMGQ5QGhvdWF0LwoKS2luZCByZWdhcmRzLApOaWNvbGFz
IEZyYXR0YXJvbGkKCj4gCj4gQlIsCj4gSmFuaS4KPiAKPiAKPiAKCgoKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E44ECCD98C7
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Jun 2026 10:32:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dn0xMXaG1v7+R2COYm5npNccKuC83iJXURCEOsN843k=; b=Q6QWkJ4VLA7eRF
	LvjjlEQ2e1QOsVYSPCMFlJ/XMW1q8K1BDMgIx1ePTr11UeJBE2f57fSMEZb5iF+78AUaGkoDufzRg
	esZ22Tt3DweIWLCCnlYzUvf1CRN5P9+GRJD17DjBsNch6JlsmwGW8dE8pucfUV4wY1gAOphGtMlox
	fqf3C7mViVJHjf933sgpJpk9zcQ0YmgEY725baq9L2Q6raInbdqwbtTp93ifKEyKEUVyJeqfBarg/
	PEGfSN4AkkW5bsxp1zqNajgcbZjgZZQDUSnwoWUF17xknLyJW2gy1YF0DOkiM1Z4qCOww2LnH/LJb
	QzEKsOrav+yJkZNDnc1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXGEp-00000007Oyy-44Oh;
	Wed, 10 Jun 2026 10:32:47 +0000
Received: from mgamail.intel.com ([192.198.163.12])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXGEn-00000007OyM-0knj;
	Wed, 10 Jun 2026 10:32:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1781087565; x=1812623565;
  h=from:to:cc:subject:in-reply-to:references:date:
   message-id:mime-version:content-transfer-encoding;
  bh=4QR48FPX6NW6pWd+A0RB2168FFt8Kbmy8OacTeDGsas=;
  b=d2Sl/xuCjggBt/MFuBegjAfDfwMICbKitjxK53xm9FUe+ABEVfobWE+L
   npnf4MCxWciKfzOcxu28OB7lcPau/l9eFkTZ3Wu8MoAUikdTdlLJwXk7b
   I1yvF1uiQaPQwBFl6j5ghX6Ag/9/x8sWVi0xzvvvAA4+4DkGRdiA0fZW5
   YlqRVuU4Za1vy1GAyhCidgIpBcRRKaXe+XkiIrvcGzgUiQ0bKwBhlt8c1
   b74MiEcB6Kfw2wqbSZKjhMZdXGpv5m1lGgh9uGQ/2L1ABQ+u8GnM4LYQW
   KGI11GD+bbCTVKTtRAuc2aBRi2sHkWi5Nx6/A0EzspsOXpCgHlO5I4KtR
   w==;
X-CSE-ConnectionGUID: XZGkcOCNQR+RPSZ5PAHTuw==
X-CSE-MsgGUID: +KCtw5L0QgCvn/PbeiX1cA==
X-IronPort-AV: E=McAfee;i="6800,10657,11812"; a="85721112"
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; 
   d="scan'208";a="85721112"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
  by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Jun 2026 03:32:43 -0700
X-CSE-ConnectionGUID: 7vHeeByYR6mbP2vHMrx5EQ==
X-CSE-MsgGUID: HeuP8FBRTDSW4l3PyZ1Pfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; 
   d="scan'208";a="250415777"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost) ([10.245.244.3])
  by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Jun 2026 03:32:32 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, Harry Wentland
 <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, Rodrigo Siqueira
 <siqueira@igalia.com>, Alex Deucher <alexander.deucher@amd.com>, Christian
 =?utf-8?Q?K=C3=B6nig?= <christian.koenig@amd.com>, David Airlie
 <airlied@gmail.com>, Simona
 Vetter <simona@ffwll.ch>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Andrzej Hajda
 <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>,
 Robert Foss <rfoss@kernel.org>, Laurent Pinchart
 <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, Sandy Huang
 <hjc@rock-chips.com>, Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
 Andy Yan
 <andy.yan@rock-chips.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Joonas
 Lahtinen <joonas.lahtinen@linux.intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, Dmitry Baryshkov <lumag@kernel.org>, Sascha Hauer
 <s.hauer@pengutronix.de>, Rob Herring <robh@kernel.org>, Jonathan Corbet
 <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>, Daniel Stone
 <daniel@fooishbar.org>
Cc: kernel@collabora.com, amd-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-doc@vger.kernel.org, wayland-devel@lists.freedesktop.org, Nicolas
 Frattaroli <nicolas.frattaroli@collabora.com>
Subject: Re: [PATCH v17 21/28] drm/tests: bridge: Add KUnit tests for bridge
 chain format selection
In-Reply-To: <20260609-color-format-v17-21-35739b5782cc@collabora.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260609-color-format-v17-0-35739b5782cc@collabora.com>
 <20260609-color-format-v17-21-35739b5782cc@collabora.com>
Date: Wed, 10 Jun 2026 13:32:29 +0300
Message-ID: <04ff70850213ae0f75486b1a27a7edb6fb4e71c3@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_033245_278100_49F09A6D 
X-CRM114-Status: GOOD (  16.06  )
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

T24gVHVlLCAwOSBKdW4gMjAyNiwgTmljb2xhcyBGcmF0dGFyb2xpIDxuaWNvbGFzLmZyYXR0YXJv
bGlAY29sbGFib3JhLmNvbT4gd3JvdGU6Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS90
ZXN0cy9kcm1fYnJpZGdlX3Rlc3QuYyBiL2RyaXZlcnMvZ3B1L2RybS90ZXN0cy9kcm1fYnJpZGdl
X3Rlc3QuYwo+IGluZGV4IDY0YjY2NTU4MGE4OC4uOTJmMTQyY2E2Njk1IDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS90ZXN0cy9kcm1fYnJpZGdlX3Rlc3QuYwo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS90ZXN0cy9kcm1fYnJpZGdlX3Rlc3QuYwo+IEBAIC0yLDE1ICsyLDIzIEBACj4gIC8q
Cj4gICAqIEt1bml0IHRlc3QgZm9yIGRybV9icmlkZ2UgZnVuY3Rpb25zCj4gICAqLwo+ICsjaW5j
bHVkZSA8bGludXgvY2xlYW51cC5oPgo+ICsjaW5jbHVkZSA8bGludXgvbWVkaWEtYnVzLWZvcm1h
dC5oPgo+ICsKPiAgI2luY2x1ZGUgPGRybS9kcm1fYXRvbWljX3N0YXRlX2hlbHBlci5oPgo+ICsj
aW5jbHVkZSA8ZHJtL2RybV9hdG9taWNfdWFwaS5oPgo+ICAjaW5jbHVkZSA8ZHJtL2RybV9icmlk
Z2UuaD4KPiAgI2luY2x1ZGUgPGRybS9kcm1fYnJpZGdlX2Nvbm5lY3Rvci5oPgo+ICAjaW5jbHVk
ZSA8ZHJtL2RybV9icmlkZ2VfaGVscGVyLmg+Cj4gKyNpbmNsdWRlIDxkcm0vZHJtX2VkaWQuaD4K
PiAgI2luY2x1ZGUgPGRybS9kcm1fa3VuaXRfaGVscGVycy5oPgo+ICsjaW5jbHVkZSA8ZHJtL2Ry
bV9tYW5hZ2VkLmg+Cj4gIAo+ICAjaW5jbHVkZSA8a3VuaXQvZGV2aWNlLmg+Cj4gICNpbmNsdWRl
IDxrdW5pdC90ZXN0Lmg+Cj4gIAo+ICsjaW5jbHVkZSAiZHJtX2t1bml0X2VkaWQuaCIKClNvIGhl
cmUncyB0aGUgcHJvYmxlbSB3aXRoIGFkZGluZyAqYW55KiBhcnJheXMgaW50byBoZWFkZXJzOiBl
dmVyeQpjb21waWxhdGlvbiB1bml0IHRoYXQgaW5jbHVkZXMgdGhlbSBkdXBsaWNhdGVzIGFsbCB0
aGUgYXJyYXlzLiBJdCdzIG9ubHkKcmVhbGx5IG9rYXkgZm9yIHNpbmdsZSB1c2UuCgpBbmQsIGlu
IHRoaXMgY2FzZSwgbW9zdCBvZiB0aGUgaW5jbHVkZWQgYXJyYXlzIGFyZSB1bnVzZWQsIGxlYWRp
bmcgdG8KYnVpbGQgZmFpbHVyZXM6CgogIENDIFtNXSAgZHJpdmVycy9ncHUvZHJtL3Rlc3RzL2Ry
bV9icmlkZ2VfdGVzdC5vCkluIGZpbGUgaW5jbHVkZWQgZnJvbSAuLi9kcml2ZXJzL2dwdS9kcm0v
dGVzdHMvZHJtX2JyaWRnZV90ZXN0LmM6MjE6Ci4uL2RyaXZlcnMvZ3B1L2RybS90ZXN0cy9kcm1f
a3VuaXRfZWRpZC5oOjk1ODoyODogZXJyb3I6IOKAmHRlc3RfZWRpZF9oZG1pXzRrX3JnYl95dXY0
MjBfZGNfbWF4XzM0MG1oeuKAmSBkZWZpbmVkIGJ1dCBub3QgdXNlZCBbLVdlcnJvcj11bnVzZWQt
Y29uc3QtdmFyaWFibGU9XQogIDk1OCB8IHN0YXRpYyBjb25zdCB1bnNpZ25lZCBjaGFyIHRlc3Rf
ZWRpZF9oZG1pXzRrX3JnYl95dXY0MjBfZGNfbWF4XzM0MG1oeltdID0gewogICAgICB8ICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIF5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+fn5+fgouLi9kcml2ZXJzL2dwdS9kcm0vdGVzdHMvZHJtX2t1bml0X2VkaWQuaDo3MjY6Mjg6
IGVycm9yOiDigJh0ZXN0X2VkaWRfaGRtaV8xMDgwcF9yZ2JfeXV2X2RjX21heF8zNDBtaHrigJkg
ZGVmaW5lZCBidXQgbm90IHVzZWQgWy1XZXJyb3I9dW51c2VkLWNvbnN0LXZhcmlhYmxlPV0KICA3
MjYgfCBzdGF0aWMgY29uc3QgdW5zaWduZWQgY2hhciB0ZXN0X2VkaWRfaGRtaV8xMDgwcF9yZ2Jf
eXV2X2RjX21heF8zNDBtaHpbXSA9IHsKICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4KLi4vZHJpdmVycy9n
cHUvZHJtL3Rlc3RzL2RybV9rdW5pdF9lZGlkLmg6NjEyOjI4OiBlcnJvcjog4oCYdGVzdF9lZGlk
X2hkbWlfMTA4MHBfcmdiX3l1dl9kY19tYXhfMjAwbWh64oCZIGRlZmluZWQgYnV0IG5vdCB1c2Vk
IFstV2Vycm9yPXVudXNlZC1jb25zdC12YXJpYWJsZT1dCiAgNjEyIHwgc3RhdGljIGNvbnN0IHVu
c2lnbmVkIGNoYXIgdGVzdF9lZGlkX2hkbWlfMTA4MHBfcmdiX3l1dl9kY19tYXhfMjAwbWh6W10g
PSB7CiAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+Ci4uL2RyaXZlcnMvZ3B1L2RybS90ZXN0cy9kcm1fa3Vu
aXRfZWRpZC5oOjQ5ODoyODogZXJyb3I6IOKAmHRlc3RfZWRpZF9oZG1pXzEwODBwX3JnYl9tYXhf
MzQwbWh64oCZIGRlZmluZWQgYnV0IG5vdCB1c2VkIFstV2Vycm9yPXVudXNlZC1jb25zdC12YXJp
YWJsZT1dCiAgNDk4IHwgc3RhdGljIGNvbnN0IHVuc2lnbmVkIGNoYXIgdGVzdF9lZGlkX2hkbWlf
MTA4MHBfcmdiX21heF8zNDBtaHpbXSA9IHsKICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fgouLi9kcml2ZXJzL2dwdS9k
cm0vdGVzdHMvZHJtX2t1bml0X2VkaWQuaDozOTA6Mjg6IGVycm9yOiDigJh0ZXN0X2VkaWRfaGRt
aV8xMDgwcF9yZ2JfbWF4XzIwMG1oel9oZHLigJkgZGVmaW5lZCBidXQgbm90IHVzZWQgWy1XZXJy
b3I9dW51c2VkLWNvbnN0LXZhcmlhYmxlPV0KICAzOTAgfCBzdGF0aWMgY29uc3QgdW5zaWduZWQg
Y2hhciB0ZXN0X2VkaWRfaGRtaV8xMDgwcF9yZ2JfbWF4XzIwMG1oel9oZHJbXSA9IHsKICAgICAg
fCAgICAgICAgICAgICAgICAgICAgICAgICAgICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn4KLi4vZHJpdmVycy9ncHUvZHJtL3Rlc3RzL2RybV9rdW5pdF9lZGlkLmg6Mjcx
OjI4OiBlcnJvcjog4oCYdGVzdF9lZGlkX2hkbWlfMTA4MHBfcmdiX21heF8yMDBtaHrigJkgZGVm
aW5lZCBidXQgbm90IHVzZWQgWy1XZXJyb3I9dW51c2VkLWNvbnN0LXZhcmlhYmxlPV0KICAyNzEg
fCBzdGF0aWMgY29uc3QgdW5zaWduZWQgY2hhciB0ZXN0X2VkaWRfaGRtaV8xMDgwcF9yZ2JfbWF4
XzIwMG1oeltdID0gewogICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgIF5+fn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+Ci4uL2RyaXZlcnMvZ3B1L2RybS90ZXN0cy9kcm1f
a3VuaXRfZWRpZC5oOjE2MzoyODogZXJyb3I6IOKAmHRlc3RfZWRpZF9oZG1pXzEwODBwX3JnYl9t
YXhfMTAwbWh64oCZIGRlZmluZWQgYnV0IG5vdCB1c2VkIFstV2Vycm9yPXVudXNlZC1jb25zdC12
YXJpYWJsZT1dCiAgMTYzIHwgc3RhdGljIGNvbnN0IHVuc2lnbmVkIGNoYXIgdGVzdF9lZGlkX2hk
bWlfMTA4MHBfcmdiX21heF8xMDBtaHpbXSA9IHsKICAgICAgfCAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fgouLi9kcml2ZXJzL2dw
dS9kcm0vdGVzdHMvZHJtX2t1bml0X2VkaWQuaDo1NzoyODogZXJyb3I6IOKAmHRlc3RfZWRpZF9k
dmlfMTA4MHDigJkgZGVmaW5lZCBidXQgbm90IHVzZWQgWy1XZXJyb3I9dW51c2VkLWNvbnN0LXZh
cmlhYmxlPV0KICAgNTcgfCBzdGF0aWMgY29uc3QgdW5zaWduZWQgY2hhciB0ZXN0X2VkaWRfZHZp
XzEwODBwW10gPSB7CiAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+
fn5+fn5+fn5+fgpjYzE6IGFsbCB3YXJuaW5ncyBiZWluZyB0cmVhdGVkIGFzIGVycm9ycwoKVGhp
cyBicmVha3MgdGhlIGJ1aWxkIGZvciBtZSwgSSBkb24ndCBrbm93IGhvdyBpdCBkaWRuJ3QgZm9y
IGFueSBvZiB5b3UuCgpSZXZlcnRpbmcgdGhlc2UgdHdvIGZpeGVzIGl0OgoKY2UxZDAxMzlhZGFj
ICgiZHJtL3Rlc3RzOiBicmlkZ2U6IEFkZCB0ZXN0IGZvciBIRE1JIG91dHB1dCBidXMgZm9ybWF0
cyBoZWxwZXIiKQowODJmYmMxNzljMDEgKCJkcm0vdGVzdHM6IGJyaWRnZTogQWRkIEtVbml0IHRl
c3RzIGZvciBicmlkZ2UgY2hhaW4gZm9ybWF0IHNlbGVjdGlvbiIpCgpJIHRoaW5rIHRoZSBwcm9w
ZXIgZml4IHdvdWxkIGJlIHRvIG1vdmUgdGhlIGFycmF5cyBpbnRvIGEgLmMgZmlsZSwgYW5kCm9u
bHkgaGF2ZSBkZWNsYXJhdGlvbnMgaW4gdGhlIGhlYWRlcnMuIEJ1dCB0aGF0IG5lZWRzIHRvIGhh
cHBlbiByZWFsCnNvb24gb3IgdGhlIGNvbW1pdHMgbmVlZCB0byBiZSByZXZlcnRlZC4KCgpCUiwK
SmFuaS4KCgotLSAKSmFuaSBOaWt1bGEsIEludGVsCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

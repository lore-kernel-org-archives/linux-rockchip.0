Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6F5EC9830B
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2026 14:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TeUuXF2Xtj3ED+kgsbSfPAj0/fsxbr5+t9i2dstoyBU=; b=P3wvmcjnD494pw
	VGuOmS5YRTT4Zbbblj/tp+o59pjBRrzy0u+p/Okind/q4gwI/eRoHFPWcOHzLBXBZU8te6zTH/w/h
	t5UUeoSpH7Ty/X6MG+G9FNACqFlLj7+1nwT1k7E0gq9Xs0gCBxQ3/1V52FivkOavuooxWLyeUE2V6
	c4NPS0mHeYKXezsY7EFQOOe++0/WdR7RTGej+YG9be4CxW1P+UQlEaoq44YrVSa2Ed+OqdKgPHoxK
	xA1GWSwRyQ8QYDv9lEaX47/51zri2YBicMM7F4q5THAywyCxX5ZehZ5e5+VewOzfJJhzXYLPAQoUC
	rJMD51Ugdai7S5Q+GlDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9OAW-00000008ZA6-3oLr;
	Wed, 23 Sep 2026 14:41:57 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9OAU-00000008Z9M-0mER;
	Wed, 23 Sep 2026 14:41:55 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1790174432; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=e5OkvZYukIt5GiTQhW6G+Kt1c269AMGHFXpP3r7i+CLvslhzze3rX4ILzx5pTKxgBRIk4eGy2F5HaUWIQuzEmjWHV2bh0li4VAw5VV3vgx58YZezIfbSNX3mvz04KJRvYDlIcdq25Kp7+aL0OkmwqjFMeVYFhQKb9NXxvlicAf0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1790174432; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=pAuvWDVYVwhz9FttWiM1t3wAMo1yh0IBF3GPtqoFkZA=; 
	b=ddYCwNc0m34CAPczGPwkeH3AcvGPgdXzFqRZh6b8tu6HRgdBLSyoKd1k+BgSfZT8VhNkaMponBaq8nwYgKFU9o35+0FOliOdAf/BzJJOcTlQuvzxhRBhmW2NjqGnHQLHbf/tQYiFxSkyMRQDGxMi0/J9VrrjnYY0aleWunJAIL4=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1790174432;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=pAuvWDVYVwhz9FttWiM1t3wAMo1yh0IBF3GPtqoFkZA=;
	b=Gv6B+QMS10z3axRJLGhhpi3sf27EvZHXCdFXjbFmfzCs9qJg3pQk9aS/Yk9UJaPi
	SLUfnU66bwh4D4qSZKNaxfUGEmDj5eTCix712HE5alCc2nZV+3gwqhIU/a8i6VS0FLY
	nyguwDqV8p9OR2I5z9STawWqE/wrdi7EY/f1vV+s=
Received: by smtp.zohomail.com with SMTPS id 1790174426791143.0815861883815;
	Wed, 23 Sep 2026 07:40:26 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 Leo Li <sunpeng.li@amd.com>, Daniel Stone <daniels@collabora.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Helge Deller <deller@gmx.de>, Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>, Sandy Huang <hjc@rock-chips.com>,
 Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>,
 Andy Yan <andy.yan@rock-chips.com>,
 Michel =?UTF-8?B?RMOkbnplcg==?= <michel.daenzer@mailbox.org>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-fbdev@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, kernel@collabora.com,
 Derek Foreman <derek.foreman@collabora.com>,
 wayland-devel@lists.freedesktop.org
Subject: Re: [PATCH RFC 13/25] drm: Add VRR target frame rate properties
Date: Wed, 23 Sep 2026 16:39:57 +0200
Message-ID: <YozwdeJLQh-0GBcK9P3QvQ@collabora.com>
In-Reply-To: <588442c7-2589-4026-a8f8-e03f944318c3@mailbox.org>
References: <20260921-vrr-limiter-uapi-v1-0-2fcd7d011646@collabora.com>
 <20260921-vrr-limiter-uapi-v1-13-2fcd7d011646@collabora.com>
 <588442c7-2589-4026-a8f8-e03f944318c3@mailbox.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260923_074154_290334_D137BB29 
X-CRM114-Status: GOOD (  13.86  )
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

T24gV2VkbmVzZGF5LCAyMyBTZXB0ZW1iZXIgMjAyNiAxMTo1MTo0NSBDZW50cmFsIEV1cm9wZWFu
IFN1bW1lciBUaW1lIE1pY2hlbCBEw6RuemVyIHdyb3RlOgo+IE9uIDkvMjEvMjYgMTc6NTEsIE5p
Y29sYXMgRnJhdHRhcm9saSB3cm90ZToKPiA+IAo+ID4gKyAqIC4uIF9WUlItTUlOLU5VTUVSQVRP
UjoKPiA+ICsgKgo+ID4gKyAqICJWUlJfTUlOX05VTUVSQVRPUiI6Cj4gPiArICoJRGVmYXVsdCAm
ZHJtX2NydGMgaW50ZWdlciBwcm9wZXJ0eSBmb3JtaW5nIHRoZSBudW1lcmF0b3Igb2YgYQo+ID4g
KyAqCW51bWVyYXRvci9kZW5vbWluYXRvciBwYWlyIG9mIGEgZnJhbWUgcmF0ZSB0byBzZXQgYXMg
dGhlIG1pbmltdW0gVlJSCj4gPiArICoJdGFyZ2V0IHJhdGUuIFNldCB0byAwIHRvIGRpc2FibGUu
Cj4gPiArICoKPiA+ICsgKiAiVlJSX01JTl9ERU5PTUlOQVRPUiI6Cj4gPiArICoJRGVmYXVsdCAm
ZHJtX2NydGMgaW50ZWdlciBwcm9wZXJ0eSBmb3JtaW5nIHRoZSBkZW5vbWluYXRvciBvZiBhCj4g
PiArICoJbnVtZXJhdG9yL2Rlbm9taW5hdG9yIHBhaXIgb2YgYSBmcmFtZSByYXRlIHRvIHNldCBh
cyB0aGUgbWluaW11bSBWUlIKPiA+ICsgKgl0YXJnZXQgcmF0ZS4gSWYgOnJlZjpgVlJSX01JTl9O
VU1FUkFUT1IgPFZSUi1NSU4tTlVNRVJBVE9SPmAgaXMgbm90Cj4gPiArICoJemVybywgaXQgbXVz
dCBiZSBub24temVyby4KPiA+ICsgKglPdGhlcndpc2UsIG11c3QgYWxzbyBiZSB6ZXJvLgo+ID4g
KyAqCj4gPiArICogLi4gX1ZSUi1NQVgtTlVNRVJBVE9SOgo+ID4gKyAqCj4gPiArICogIlZSUl9N
QVhfTlVNRVJBVE9SIjoKPiA+ICsgKglEZWZhdWx0ICZkcm1fY3J0YyBpbnRlZ2VyIHByb3BlcnR5
IGZvcm1pbmcgdGhlIG51bWVyYXRvciBvZiBhCj4gPiArICoJbnVtZXJhdG9yL2Rlbm9taW5hdG9y
IHBhaXIgb2YgYSBmcmFtZSByYXRlIHRvIHNldCBhcyB0aGUgbWF4aW11bSBWUlIKPiA+ICsgKgl0
YXJnZXQgcmF0ZS4gU2V0IHRvIDAgdG8gZGlzYWJsZS4KPiA+ICsgKgo+ID4gKyAqICJWUlJfTUFY
X0RFTk9NSU5BVE9SIjoKPiA+ICsgKglEZWZhdWx0ICZkcm1fY3J0YyBpbnRlZ2VyIHByb3BlcnR5
IGZvcm1pbmcgdGhlIGRlbm9taW5hdG9yIG9mIGEKPiA+ICsgKgludW1lcmF0b3IvZGVub21pbmF0
b3IgcGFpciBvZiBhIGZyYW1lIHJhdGUgdG8gc2V0IGFzIHRoZSBtYXhpbXVtIFZSUgo+ID4gKyAq
CXRhcmdldCByYXRlLiBJZiA6cmVmOmBWUlJfTUFYX05VTUVSQVRPUiA8VlJSLU1BWC1OVU1FUkFU
T1I+YCBpcyBub3QKPiA+ICsgKgl6ZXJvLCBpdCBtdXN0IGJlIG5vbi16ZXJvLiBPdGhlcndpc2Us
IG11c3QgYWxzbyBiZSB6ZXJvLgo+ID4gICAqLwo+IAo+IElzIHRoZXJlIGEgcmVhc29uIHRoYXQg
REVOT01JTkFUT1IgbXVzdCBiZSAwIHdoZW4gdGhlIGNvcnJlc3BvbmRpbmcgTlVNRVJBVE9SIGlz
PyAwIGRpdmlkZWQgYnkgYW55IG51bWJlciBpcyBzdGlsbCAwLgoKTm8sIEkgdGhpbmsgdGhhdCdz
IGFuIGFyYml0cmFyeSBjb252ZW50aW9uIEkgc2V0dGxlZCBvbiBhbmQgZG9uJ3QgZW5mb3JjZS4g
SQpndWVzcyBpdCBzaG91bGQgYmUgIk90aGVyd2lzZSwgbWF5IGFsc28gYmUgemVybyIsIGJlY2F1
c2UgdGhlIG9ubHkgc2l0dWF0aW9uCkknbSBtYWtpbmcgdXNlcnNwYWNlIGF2b2lkIGlzIHgvMCB3
aGVyZSB4ICE9IDAuCgo+ID4gRWl0aGVyIHdheSwgc2hvdWxkIHRoZXNlIHJ1bGVzIGJlIGVuZm9y
Y2VkIGluIGRybV9hdG9taWNfY3J0Y19zZXRfcHJvcGVydHk/Cj4gCj4gT3IgcmF0aGVyIGluIGF0
b21pY19jaGVjay4KCkR1ZSB0byBjb21wbGljYXRpbmcgZmFjdG9ycyBsaWtlIEVESUQsIENpbmVt
YVZSUiwgYW5kIFFNUyBURlJtaW4vVEZSbWF4LCBjaGVja2luZwp0aGUgcHJvcGVydGllcyBmb3Ig
c2Vuc2libGUgdmFsdWVzIGlzIGRvbmUgaW4gdGhlIEhETUkgc3RhdGUgaGVscGVycyBhdCB0aGUg
bW9tZW50LgoKSWYvd2hlbiB0aGVyZSBpcyBhIHNpbWlsYXIgbWVjaGFuaXNtIGZvciBEUCwgd2Ug
Y2FuIHByb2JhYmx5IGZhY3RvciB0aGUgY29tbW9uCnBhcnRzIG91dC4gSSByZWFsbHkgZG8gaG9w
ZSBhbGwgZHJpdmVycyAoaW5jbHVkaW5nIHRob3NlIHRoYXQgZG9uJ3QgdXNlIHRoZSBIRE1JCnN0
YXRlIGhlbHBlcnMpIGNhbiBhdCBsZWFzdCBzaGFyZSB0aGUgaGRtaV92YWxpZGF0ZV92cnIoKSBs
b2dpYywgYnV0IEkgaGF2ZW4ndApmYWN0b3JlZCB0aGlzIG91dCBpbnRvIGFuIGV4cG9ydGVkIGZ1
bmN0aW9uIHlldCBiZWNhdXNlIEkgZG9uJ3Qga25vdyBob3cgc2ltaWxhcgp0aGUgRGlzcGxheVBv
cnQtZXF1aXZhbGVudCBtZWNoYW5pc21zIHJlcXVpcmVtZW50cyBhcmUsIG9yIGhvdyBtdWNoIG9m
IHRoZSBzdGF0ZQpkZXJpdmF0aW9uIG5vbi1zdGF0ZS1oZWxwZXIgZHJpdmVycyAoaS5lLiBpOTE1
IGFuZCBhbWRncHUpIG5lZWQuCgpLaW5kIHJlZ2FyZHMsCk5pY29sYXMgRnJhdHRhcm9saQoKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

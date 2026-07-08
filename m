Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D810CC43458
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Jul 2026 10:35:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fs0tWMFgx1yTmYNPcmZ/Qo7Bl0xq2bbctHhig1YZdgE=; b=sEbUZQVh45vf7/
	UrfeTTdgFfX89w3OiUHvMlPjjnki+aWrgHPf9oTJCNPPx9QbZaQVtGUkuITHt9y5CExQsdHSXMOrf
	zzUqlP3YXlCwvww89L+WCYq8qAl5+BF222ChJ4UgjIagP8Kf298AO1mLnHLv+30abMDaqYa8hDYFM
	7wdloJoRUtdmCZY1mdYruJpF26U71IzoNJIqXJVEl10CLixdwGumCMatJ0YPiLFEBdr4zUkVKhLjH
	+vG8xvkHUuNyAmNoGbl51WmS3IWLIH3B6i8NNMXcEeU/QIQLLaPajiwR29TC0Ay8+nU5OY/YaSG+X
	faJgOy51SA9Z9Di2bSbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whPcG-0000000GucF-0zDc;
	Wed, 08 Jul 2026 10:34:56 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whPcD-0000000GubQ-0btp;
	Wed, 08 Jul 2026 10:34:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1783506890;
	bh=r38RUfSMl071/WepmzPL1q5pZgDe09Mk7WtRRJTfhHY=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=kYkhLOvMuTOGRJo+VJHLXfzQrpNjqggw7D6lMlKQ5U2w5dVLU5nK8KJ3HlfhvYzPl
	 k4WwEhDr1QmAtq5t1HAUHbK4E7x4QBt9fb5qR3ZxwHCz3DFvYWxugkKpbafJ80SUUk
	 pN8CncCK8xe+cWRNGOzTOMw695eFQLb7mchp8EvvPA4wbVLr56Oju69UdNxFWaCX3o
	 tyukUUsnsmC7bP3ErxyeaYwl/XNF378msdCKIlvA3L8PpgklSnCpjiE6c4+fILaJ19
	 S6y1kpq009EHjB9+BZttFi9qyFtyPlYAj2l4YAWdYVQM7ZKM8VTNGKwkvkcaUScEY/
	 H/Km9U2SbKMvg==
Received: from [100.64.0.241] (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 3576E17E071A;
	Wed, 08 Jul 2026 12:34:49 +0200 (CEST)
Message-ID: <20de8b44-c27d-4471-ac36-931893f6ffd5@collabora.com>
Date: Wed, 8 Jul 2026 13:34:48 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 04/39] drm/connector: Add HDMI 2.0 scrambler
 infrastructure
To: Maxime Ripard <mripard@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Andrzej Hajda <andrzej.hajda@intel.com>,
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
 <20260702-dw-hdmi-qp-scramb-v8-4-d79890d00b6a@collabora.com>
 <tjsidlnvswo2rdhqa6jybxrnb47lxgmxdlfrfbasuh67wjbqoy@3a45n3zawvnf>
 <17753a1c-824a-4835-ac2d-8b2796bba1eb@collabora.com>
 <20260707-tested-alpaca-of-patience-e38d7c@penduick>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <20260707-tested-alpaca-of-patience-e38d7c@penduick>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260708_033453_338225_6C651CD7 
X-CRM114-Status: GOOD (  19.19  )
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

T24gNy83LzI2IDM6MzAgUE0sIE1heGltZSBSaXBhcmQgd3JvdGU6Cj4gT24gRnJpLCBKdWwgMDMs
IDIwMjYgYXQgMTE6NTQ6MzNQTSArMDMwMCwgQ3Jpc3RpYW4gQ2lvY2FsdGVhIHdyb3RlOgo+Pj4+
PiAtCWlmIChjYXBzLT5zdXBwb3J0ZWRfaGRtaV92ZXIgPj0gSERNSV9WRVJTSU9OXzJfMCkKPj4+
PiArCWlmIChjYXBzLT5zdXBwb3J0ZWRfaGRtaV92ZXIgPj0gSERNSV9WRVJTSU9OXzJfMCkgewo+
Pj4+ICsJCWlmICghaGRtaV9mdW5jcy0+c2NyYW1ibGVyX2VuYWJsZSB8fAo+Pj4+ICsJCSAgICAh
aGRtaV9mdW5jcy0+c2NyYW1ibGVyX2Rpc2FibGUpCj4+Pj4gKwkJCXJldHVybiAtRUlOVkFMOwo+
Pj4+ICsKPj4+PiArCQljb25uZWN0b3ItPmhkbWkuc2NyYW1ibGVyX3N1cHBvcnRlZCA9IHRydWU7
Cj4+Pj4gIAkJY29ubmVjdG9yLT5oZG1pLm1heF90bWRzX2NoYXJfcmF0ZSA9IEhETUlfMl8wX1RN
RFNfQ0hBUl9SQVRFX01BWF9IWjsKPj4+PiAtCWVsc2UgaWYgKGNhcHMtPnN1cHBvcnRlZF9oZG1p
X3ZlciA+PSBIRE1JX1ZFUlNJT05fMV8zKQo+Pj4+ICsJfSBlbHNlIGlmIChjYXBzLT5zdXBwb3J0
ZWRfaGRtaV92ZXIgPj0gSERNSV9WRVJTSU9OXzFfMykgewo+Pj4+ICAJCWNvbm5lY3Rvci0+aGRt
aS5tYXhfdG1kc19jaGFyX3JhdGUgPSBIRE1JXzFfM19UTURTX0NIQVJfUkFURV9NQVhfSFo7Cj4+
Pj4gLQllbHNlIGlmIChjYXBzLT5zdXBwb3J0ZWRfaGRtaV92ZXIgPj0gSERNSV9WRVJTSU9OXzFf
MCkKPj4+PiArCX0gZWxzZSBpZiAoY2Fwcy0+c3VwcG9ydGVkX2hkbWlfdmVyID49IEhETUlfVkVS
U0lPTl8xXzApIHsKPj4+PiAgCQljb25uZWN0b3ItPmhkbWkubWF4X3RtZHNfY2hhcl9yYXRlID0g
SERNSV8xXzBfVE1EU19DSEFSX1JBVEVfTUFYX0haOwo+Pj4+ICsJfQo+Pj4+ICAKPj4+PiAgCWlm
IChjYXBzLT5tYXhfdG1kc19jaGFyX3JhdGUpIHsKPj4+PiAgCQlpZiAoY2Fwcy0+bWF4X3RtZHNf
Y2hhcl9yYXRlID4gY29ubmVjdG9yLT5oZG1pLm1heF90bWRzX2NoYXJfcmF0ZSkKPj4+PiArCj4+
Pj4gKwkvKiogQHNjZGNfY2I6IENhbGxiYWNrIHRvIGJlIGludm9rZWQgYXMgcGFydCBvZiBAc2Nk
Y193b3JrLgo+Pj4+ICsJICoKPj4+PiArCSAqIEN1cnJlbnRseSB1c2VkIHRvIG1vbml0b3Igc2lu
ay1zaWRlIHNjcmFtYmxpbmcgc3RhdHVzIGFuZCByZXRyeQo+Pj4+ICsJICogc2V0dXAgaWYgdGhl
IHNpbmsgcmVzZXRzIGl0Lgo+Pj4+ICsJICoKPj4+PiArCSAqIFRoaXMgaXMgYXNzaWduZWQgYnkg
dGhlIGZyYW1ld29yayB3aGVuIG1ha2luZyB1c2Ugb2YKPj4+PiArCSAqIGRybV9jb25uZWN0b3Jf
aGRtaV9lbmFibGVfc2NyYW1ibGluZygpIGhlbHBlci4KPj4+Cj4+PiBObyBzdWNoIGhlbHBlci4g
Cj4+Cj4+IFJpZ2h0LCBJJ2xsIGRyb3AgdGhlIHJlZmVyZW5jZSB0byB0aGUgaGVscGVyIG5hbWUs
IGFzIHRoYXQncyBhZGRlZCBsYXRlciBpbiB0aGUKPj4gc2VyaWVzLgo+Pgo+Pj4gQWxzbywgcGxl
YXNlIGV4cGxhaW4gaW4gdGhlIGNvbW1pdCBtZXNzYWdlLCB3aHkgZG8gd2UKPj4+IG5lZWQgdG8g
a2VlcCBpdCBjb25maWd1cmFibGUuIFdoeSB0aGUgZGVmYXVsdCBpcyBub3QgZW5vdWdoPwo+Pgo+
PiBXZSB3aWxsIG5lZWQgYSBzZXBhcmF0ZSBjYWxsYmFjayB0byBzdXBwb3J0IEhETUkgMi4xLCBp
LmUuIGZvciBsaW5rIHRyYWluaW5nCj4+IG1hbmFnZW1lbnQuICBJ4oCZbGwgdXBkYXRlIHRoZSBj
b21taXQgbWVzc2FnZSBhY2NvcmRpbmdseS4KPiAKPiBJIHRoaW5rIEknbSBlcXVhbGx5IGNvbmZ1
c2VkIGFzIERtaXRyeSBoZXJlLiBJZiBzY2RjX2NiIGlzIG9ubHkgY2FsbGVkCj4gaWYgd2UncmUg
c2VuZGluZyBzY3JhbWJsZWQgcGl4ZWxzIGJ1dCB0aGUgbW9uaXRvciBkb2Vzbid0IGFja25vd2xl
ZGdlIGl0Cj4gaW5pdGlhbGx5LCB0aGVuIHRoZSBvbmx5IHRoaW5nIHdlIG5lZWQgdG8gZG8gaXMg
ImlmIHRoZSBzY3JhbWJsZXIncwo+IGVuYWJsZWQsIGNhbGwgZHJtX3NjZGNfc2V0X3NjcmFtYmxp
bmcoKSIsIHRoZW4gd2UgZG9uJ3QgbmVlZCB0byBzZXQgYQo+IGNhbGxiYWNrLiBBbmQgZXZlbiBp
ZiB3ZSBldmVyIG5lZWQgdG8gZGVhbCB3aXRoIEhETUkgbGluayB0cmFpbmluZywgdGhlbgo+IHdl
IGNhbiBzdGlsbCBoYXZlIHRoZSBzYW1lIGZ1bmN0aW9uIGJ1dCB3aXRoIGEgY291cGxlIG9mIGJy
YW5jaGVzIG1vcmUuCkkgdGhpbmsgSSBvdmVyZW5naW5lZXJlZCB0aGlzIGJ5IHRyeWluZyB0byBr
ZWVwIHRoZSBTQ0RDLXJlbGF0ZWQgYml0cyBhcyBtdWNoIGFzCnBvc3NpYmxlIGluIGRybV9oZG1p
X2hlbHBlci5jLiAgSeKAmWxsIGRyb3AgdGhpcyBjYWxsYmFjayBhbmQgbW92ZSB0aGUgbG9naWMg
aW50bwpkcm1fY29ubmVjdG9yX2hkbWlfc2NkY193b3JrKCkuCgpDcmlzdGlhbgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E60BECD6E64
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Jun 2026 15:03:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PhD3MVaxHOxPH06S+qqFT3kzgqAhJDmURnMT9slzDx4=; b=OZgnW4a/og1zZx
	34uNY9u/Ye4B7XTTYIUixfn9GYZRXsrZFZTVnK2ZRq1tcGsstaofqjP1CYMyoUwbJd0HTq8ftkh5w
	v9tuQlCNF75rKHX/tR8NavklN002Xd8CU1iAZz/1e7qUS07F447AVbtv8ZzTsVOXXNqA0TpJU/hZL
	H/9IAr0KpHl9MSb6W0o+CwcFz4P94Xg4iHR8D4Hn+exlrJeRroXrZUyJj/k8wBIofGWRqXXn6OI4c
	+DHTGHgmIduHRGQe9rhJob+JlY5EWrqb0e626bKH9R60i1EYg3CxFRQXrtoNBE3/1GHO1+4cYCJzf
	q5625spPm1GxRp8eei6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUQeE-0000000DEsN-1OSS;
	Tue, 02 Jun 2026 15:03:18 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUQe9-0000000DEpR-3zDb;
	Tue, 02 Jun 2026 15:03:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=dJzkqUtVg54mBprGrZtQSWQkiwWBq/0aCh5qUpxBt0w=; b=gQeJJRTQB6Dg11khGhrcVXu63F
	d0RG0hYUA6OciYzZiAle8Fnk87FXjgvhJBxnKlh7OVQ8c5BFSFH50OjDwxEm0v5Oug2LoGOoRAff/
	/BapZxdQro6zjQWEnrok3Xu91ao6JlxxmJZz9CcitdpyRD36ZatxqGwtqIuy5NiIdJxF5qzzjL0Z1
	bzQC0bqJF2BmWHIrknloT/w32TAFEaogrC/i6gpK3fln2NNr6/Rq6vTwkOJHVpTppKr1oZfWlcYZL
	ZQtJ0sxju1t7J37uuRu5jy9JGmd8bNvDXojYEQYEQjpIFKhPcD0u2IAKsHNmfNVSCIhmil9gewqIR
	0ZiXPtIA==;
From: Heiko Stuebner <heiko@sntech.de>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Maxime Ripard <mripard@kernel.org>
Cc: Dmitry Baryshkov <lumag@kernel.org>, dri-devel@lists.freedesktop.org,
 Maxime Ripard <mripard@kernel.org>, Sandy Huang <hjc@rock-chips.com>,
 Andy Yan <andy.yan@rock-chips.com>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 62/76] drm/rockchip: cdn-dp: Switch to atomic_create_state
Date: Tue, 02 Jun 2026 17:02:37 +0200
Message-ID: <4650339.9PvXe5no7K@phil>
In-Reply-To: <20260530-drm-no-more-bridge-reset-v1-62-875d828d31bc@kernel.org>
References: <20260530-drm-no-more-bridge-reset-v1-0-875d828d31bc@kernel.org>
 <20260530-drm-no-more-bridge-reset-v1-62-875d828d31bc@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260602_080313_987127_879ABEF3 
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

QW0gU2Ftc3RhZywgMzAuIE1haSAyMDI2LCAxNjowMDowNyBNaXR0ZWxldXJvcMOkaXNjaGUgU29t
bWVyemVpdCBzY2hyaWViIE1heGltZSBSaXBhcmQ6Cj4gVGhlIGRybV9icmlkZ2VfZnVuY3MuYXRv
bWljX3Jlc2V0IGNhbGxiYWNrIGFuZCBpdHMKPiBkcm1fYXRvbWljX2hlbHBlcl9icmlkZ2VfcmVz
ZXQoKSBoZWxwZXIgYXJlIGRlcHJlY2F0ZWQuCj4gCj4gU3dpdGNoIHRvIHRoZSBhdG9taWNfY3Jl
YXRlX3N0YXRlIGNhbGxiYWNrIGFuZCBpdHMKPiBkcm1fYXRvbWljX2hlbHBlcl9icmlkZ2VfY3Jl
YXRlX3N0YXRlKCkgY291bnRlcnBhcnQuCj4gCj4gU2lnbmVkLW9mZi1ieTogTWF4aW1lIFJpcGFy
ZCA8bXJpcGFyZEBrZXJuZWwub3JnPgoKaGF2aW5nIGxvb2tlZCBhdCB0aGUgZmlyc3QgcGFydHMg
b2YgdGhlIHNlcmllcyBhZGRpbmcKdGhlIG5ldyBmdW5jdGlvbmFsaXR5LCB0aGlzIGNoYW5nZSBs
b29rcyBnb29kOgoKUmV2aWV3ZWQtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+
Cgo+IAo+IC0tLQo+IFRvOiBTYW5keSBIdWFuZyA8aGpjQHJvY2stY2hpcHMuY29tPgo+IFRvOiAi
SGVpa28gU3TDvGJuZXIiIDxoZWlrb0BzbnRlY2guZGU+Cj4gVG86IEFuZHkgWWFuIDxhbmR5Lnlh
bkByb2NrLWNoaXBzLmNvbT4KPiBDYzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+
IENjOiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBDYzogbGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vcm9ja2No
aXAvY2RuLWRwLWNvcmUuYyB8IDIgKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCsp
LCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hp
cC9jZG4tZHAtY29yZS5jIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2Nkbi1kcC1jb3JlLmMK
PiBpbmRleCAxOTBjY2U5NTMwYzguLmUxNTllMTYyN2YzYyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vcm9ja2NoaXAvY2RuLWRwLWNvcmUuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9y
b2NrY2hpcC9jZG4tZHAtY29yZS5jCj4gQEAgLTgyMywxMSArODIzLDExIEBAIHN0YXRpYyBpbnQg
Y2RuX2RwX2F1ZGlvX211dGVfc3RyZWFtKHN0cnVjdCBkcm1fYnJpZGdlICpicmlkZ2UsCj4gIH0K
PiAgCj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX2JyaWRnZV9mdW5jcyBjZG5fZHBfYnJpZGdl
X2Z1bmNzID0gewo+ICAJLmF0b21pY19kdXBsaWNhdGVfc3RhdGUgPSBkcm1fYXRvbWljX2hlbHBl
cl9icmlkZ2VfZHVwbGljYXRlX3N0YXRlLAo+ICAJLmF0b21pY19kZXN0cm95X3N0YXRlID0gZHJt
X2F0b21pY19oZWxwZXJfYnJpZGdlX2Rlc3Ryb3lfc3RhdGUsCj4gLQkuYXRvbWljX3Jlc2V0ID0g
ZHJtX2F0b21pY19oZWxwZXJfYnJpZGdlX3Jlc2V0LAo+ICsJLmF0b21pY19jcmVhdGVfc3RhdGUg
PSBkcm1fYXRvbWljX2hlbHBlcl9icmlkZ2VfY3JlYXRlX3N0YXRlLAo+ICAJLmRldGVjdCA9IGNk
bl9kcF9icmlkZ2VfZGV0ZWN0LAo+ICAJLmVkaWRfcmVhZCA9IGNkbl9kcF9icmlkZ2VfZWRpZF9y
ZWFkLAo+ICAJLmF0b21pY19lbmFibGUgPSBjZG5fZHBfYnJpZGdlX2F0b21pY19lbmFibGUsCj4g
IAkuYXRvbWljX2Rpc2FibGUgPSBjZG5fZHBfYnJpZGdlX2F0b21pY19kaXNhYmxlLAo+ICAJLm1v
ZGVfdmFsaWQgPSBjZG5fZHBfYnJpZGdlX21vZGVfdmFsaWQsCj4gCj4gCgoKCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

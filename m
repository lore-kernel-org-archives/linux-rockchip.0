Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16487C83F26
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Jul 2025 13:54:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e++4np/JDa8JHmLFZI1NzBKr0TEWo3s5fj03X5UctPU=; b=nZMEtB5+kTRo7p
	sJuMdOi5xJ2alu+SQEE0XO/svmSGMczdunsEsO+eEPCZXsy5LPxNUqRCpLOeQgoXY8AM3hOFnM4CB
	zfRIgAyccMDueDhq0hFSgyUKbEPB6AhFAQP3LfWxngDNw6QwXeqRaI0xnvk2b5AytuPsqv4KoXJA+
	hzfcrUkOXDOVkfXF10OlsMDVvBhLDK6RsGOtwPYPuULS2Hb3XyK+0/uZKJxTprZ3Q2JXv+os+gSGE
	R825/Kgk6ClyU/eUoaCqQM53jAJWc017YbTAbQuO8t/Dzlt6fIztO5yh9QlDPz7IDyajYfHxCdBJ9
	Y7XbeD+cBR7lOQ+OfpXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uewPK-00000007dAr-42FJ;
	Thu, 24 Jul 2025 13:54:50 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uevZj-00000007TJN-29Kh;
	Thu, 24 Jul 2025 13:01:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=2yUnl4vidy4gJvXblFDoJuJNs7hErSWbP5rsO2C/gB0=; b=rqRYTOatipp8MXoMnYvt0IchBY
	K6HjCQAtpimPUnQtSi/BNo/rhID2z3ZpYzeCo5d0nTA+EqsZqo5uResfrEERmPBEJ/EvesXgJL+pL
	pMg1t4i0xSPMpGxNrZGdHKYQyXoWWsKrJZ36Exq8A3t6QCpWaxm8fQ3uFqFrLs7xHNTLDUcU8t3zu
	ftz79uNn1goGeo7w3A2F+6RfZEXvpOjuNQJwC8wLypwf58/4o3AM8LoNA/PuO+GY/lg5qVStosIgY
	GBPCcmPrkXmSbj22AvKy1UkHkeNInX+DT7hZLGIfaYV/Av2EIf/fzaSOnYT2v99DqxboLboE5UWBp
	DGrJ3CaA==;
Received: from i53875a38.versanet.de ([83.135.90.56] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uevZ5-0005kZ-4F; Thu, 24 Jul 2025 15:00:51 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org,
 Damon Ding <damon.ding@rock-chips.com>
Cc: Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch,
 jingoohan1@gmail.com, inki.dae@samsung.com, sw0312.kim@samsung.com,
 kyungmin.park@samsung.com, krzk@kernel.org, alim.akhtar@samsung.com,
 hjc@rock-chips.com, andy.yan@rock-chips.com,
 dmitry.baryshkov@oss.qualcomm.com, l.stach@pengutronix.de,
 dianders@chromium.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Damon Ding <damon.ding@rock-chips.com>
Subject: Re: [PATCH v3 08/14] drm/bridge: analogix_dp: Apply drm_bridge_connector
 helper
Date: Thu, 24 Jul 2025 15:00:49 +0200
Message-ID: <10694296.nUPlyArG6x@diego>
In-Reply-To: <20250724080304.3572457-9-damon.ding@rock-chips.com>
References: <20250724080304.3572457-1-damon.ding@rock-chips.com>
 <20250724080304.3572457-9-damon.ding@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250724_060131_578592_B2164838 
X-CRM114-Status: GOOD (  12.34  )
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

SGkgRGFtb24sCgpBbSBEb25uZXJzdGFnLCAyNC4gSnVsaSAyMDI1LCAxMDowMjo1OCBNaXR0ZWxl
dXJvcMOkaXNjaGUgU29tbWVyemVpdCBzY2hyaWViIERhbW9uIERpbmc6Cj4gQXBwbHkgZHJtX2Jy
aWRnZV9jb25uZWN0b3IgaGVscGVyIGZvciBBbmFsb2dpeCBEUCBkcml2ZXIuCj4gCj4gVGhlIGZv
bGxvd2luZyBjaGFuZ2VzIGhhdmUgYmVlbiBtYWRlOgo+IC0gQXBwbHkgZHJtX2JyaWRnZV9jb25u
ZWN0b3IgaGVscGVyIHRvIGdldCByaWQgb2YgJmRybV9jb25uZWN0b3JfZnVuY3MKPiAgIGFuZCAm
ZHJtX2Nvbm5lY3Rvcl9oZWxwZXJfZnVuY3MuCj4gLSBSZW1vdmUgdW5uZWNlc3NhcnkgcGFyYW1l
dGVyIHN0cnVjdCBkcm1fY29ubmVjdG9yKiBmb3IgY2FsbGJhY2sKPiAgICZhbmFsb2dpeF9kcF9w
bGF0X2RhdGEuYXR0YWNoLgo+IC0gUmVtb3ZlICZhbmFsb2dpeF9kcF9kZXZpY2UuY29ubmVjdG9y
Lgo+IC0gQ29udmVydCBhbmFsb2dpeF9kcF9hdG9taWNfY2hlY2soKS9hbmFsb2dpeF9kcF9kZXRl
Y3QoKSB0bwo+ICAgJmRybV9icmlkZ2VfZnVuY3MuYXRvbWljX2NoZWNrKCkvJmRybV9icmlkZ2Vf
ZnVuY3MuZGV0ZWN0KCkuCj4gLSBTcGxpdCBhbmFsb2dpeF9kcF9nZXRfbW9kZXMoKSBpbnRvICZk
cm1fYnJpZGdlX2Z1bmNzLmdldF9tb2RlcygpIGFuZAo+ICAgJmRybV9icmlkZ2VfZnVuY3MuZWRp
ZF9yZWFkKCkuCj4gCj4gU2lnbmVkLW9mZi1ieTogRGFtb24gRGluZyA8ZGFtb24uZGluZ0Byb2Nr
LWNoaXBzLmNvbT4KCj4gIHN0YXRpYyBlbnVtIGRybV9jb25uZWN0b3Jfc3RhdHVzCj4gLWFuYWxv
Z2l4X2RwX2RldGVjdChzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yLCBib29sIGZvcmNl
KQo+ICthbmFsb2dpeF9kcF9icmlkZ2VfZGV0ZWN0KHN0cnVjdCBkcm1fYnJpZGdlICpicmlkZ2Up
Cj4gIHsKPiAtCXN0cnVjdCBhbmFsb2dpeF9kcF9kZXZpY2UgKmRwID0gdG9fZHAoY29ubmVjdG9y
KTsKPiArCXN0cnVjdCBhbmFsb2dpeF9kcF9kZXZpY2UgKmRwID0gdG9fZHAoYnJpZGdlKTsKPiAg
CWVudW0gZHJtX2Nvbm5lY3Rvcl9zdGF0dXMgc3RhdHVzID0gY29ubmVjdG9yX3N0YXR1c19kaXNj
b25uZWN0ZWQ7Cj4gIAo+ICAJaWYgKGRwLT5wbGF0X2RhdGEtPnBhbmVsKQoKdGhpcyBuZWVkcyBh
biB1cGRhdGUgdG8KCiBzdGF0aWMgZW51bSBkcm1fY29ubmVjdG9yX3N0YXR1cwotYW5hbG9naXhf
ZHBfYnJpZGdlX2RldGVjdChzdHJ1Y3QgZHJtX2JyaWRnZSAqYnJpZGdlKQorYW5hbG9naXhfZHBf
YnJpZGdlX2RldGVjdChzdHJ1Y3QgZHJtX2JyaWRnZSAqYnJpZGdlLCBzdHJ1Y3QgZHJtX2Nvbm5l
Y3RvciAqY29ubmVjdG9yKQoKdG8gZm9sbG93IEFuZHkncyBwYXRjaCBbMF0gdGhhdCBnb3QgYWxy
ZWFkeSBhcHBsaWVkIHRvIGRybS1taXNjLW5leHQKCkhlaWtvCgoKWzBdIGh0dHBzOi8vZ2l0bGFi
LmZyZWVkZXNrdG9wLm9yZy9kcm0vbWlzYy9rZXJuZWwvLS9jb21taXQvNWQxNTZhOWMzZDVlYTNk
YmVjMTkyMTIxMjU5ZGVlMmMyZjkzOGZhMQoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24AD5C83F17
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Jul 2025 22:56:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VR7Vwp0HXgGNU8ZwQUQ7QxsCgqiDq0gwpTe/ohk67C0=; b=HH/QALsvljfbCY
	uvAnDwaVFVYy00aaV5ohIHH+8GAuNE86DugkZeI5Z4KVAw1rnD18PRVvHpvKN5S1sWhBeoBPwc2oq
	8YnS/sL+yzJDjZF486sz1XuP97SAbaQs1RrN+D0Ti//ldmLotPou1E6HObZZswj4ts6ZLoGhtf0R3
	UH/VzEj8YOf3MAGrJHG1yC6BK9R9/Rl7xD1t3UCSSS7PF2pKU0zqPxELsvWGP9UNL1EAZepjdcTyb
	8xzxy2/r8+YlHAa3oBGFAEi9WcZNNJ6onvwo9OQQKkcURMNXBYTH2ff8RGgiMkn6hgmv3KVRo7/41
	NAnTBOlGyIE+52yp78jQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZdiI-0000000A83K-1NBj;
	Wed, 09 Jul 2025 22:56:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZb9f-00000009mif-42ot;
	Wed, 09 Jul 2025 20:12:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=N/toHkVpq5LggOD6b8zz+uspZ81zoDnz2v1z+PgrMD0=; b=DNSHEZw4BymD6PssVNCmF5xBld
	+onC/2Xi9Wsb1lQvLjY3kueI6oFAB1bEFZ3F0EC7YexGzUVrbMStjX4sJIJ/QwdIQWjwufqMPEzgB
	6Fi/3Szt9XKCXgxIH6jHXaie5ifGQ4vqCySAvGA+Gxt+3pu27Si62X8s4vFpkzjRTDAywxo86CNTo
	+2vawRGvpcKFESbdXzYuAqnJP2A1nIUniYhLtMgHPF+CTApd9tycmDUEmCUdhgZfUkaxw/YOxe8ek
	yt9WI9PbdtnJMYBBsPEsttDnSRrSdMp8s9KY8sjNfGb46QRf1WxkLAa2ZrmjCwIJNnFphMoLM/R6u
	H0AfbQSQ==;
Received: from i53875a79.versanet.de ([83.135.90.121] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uZb94-0006oW-DP; Wed, 09 Jul 2025 22:11:58 +0200
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
Subject: Re: [PATCH v2 12/12] drm/bridge: analogix_dp: Apply drm_bridge_connector
 helper
Date: Wed, 09 Jul 2025 22:11:57 +0200
Message-ID: <6140569.FjKLVJYuhi@diego>
In-Reply-To: <20250709070139.3130635-13-damon.ding@rock-chips.com>
References: <20250709070139.3130635-1-damon.ding@rock-chips.com>
 <20250709070139.3130635-13-damon.ding@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250709_131236_001625_F2128213 
X-CRM114-Status: GOOD (  20.07  )
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

QW0gTWl0dHdvY2gsIDkuIEp1bGkgMjAyNSwgMDk6MDE6MzkgTWl0dGVsZXVyb3DDpGlzY2hlIFNv
bW1lcnplaXQgc2NocmllYiBEYW1vbiBEaW5nOgo+IEFwcGx5IGRybV9icmlkZ2VfY29ubmVjdG9y
IGhlbHBlciBmb3IgQW5hbG9naXggRFAgZHJpdmVyLgo+IAo+IFRoZSBmb2xsb3dpbmcgY2hhbmdl
cyBoYXZlIGJlZW4gbWFkZToKPiAtIFJlbW92ZSAmYW5hbG9naXhfZHBfZGV2aWNlLmNvbm5lY3Rv
ciBhbmQgY2hhbmdlCj4gICAmYW5hbG9naXhfZHBfZGV2aWNlLmJyaWRnZSBmcm9tIGEgcG9pbnRl
ciB0byBhbiBpbnN0YW5jZS4KPiAtIEFwcGx5IGRldm1fZHJtX2JyaWRnZV9hbGxvYygpIHRvIGFs
bG9jYXRlICZhbmFsb2dpeF9kcF9kZXZpY2UgdGhhdAo+ICAgY29udGFpbnMgJmRybV9icmlkZ2Uu
Cj4gLSBBcHBseSBkcm1fYnJpZGdlX2Nvbm5lY3RvciBoZWxwZXIgdG8gZ2V0IHJpZCBvZiAmZHJt
X2Nvbm5lY3Rvcl9mdW5jcwo+ICAgYW5kICZkcm1fY29ubmVjdG9yX2hlbHBlcl9mdW5jcy4KPiAK
PiBTaWduZWQtb2ZmLWJ5OiBEYW1vbiBEaW5nIDxkYW1vbi5kaW5nQHJvY2stY2hpcHMuY29tPgo+
IAo+IC0tLS0tLQo+IAo+IENoYW5nZXMgaW4gdjI6Cj4gLSBGb3IgJmRybV9icmlkZ2Uub3BzLCBy
ZW1vdmUgRFJNX0JSSURHRV9PUF9IUEQgYW5kIGFkZAo+ICAgRFJNX0JSSURHRV9PUF9FRElELgo+
IC0gQWRkIGFuYWxvZ2l4X2RwX2JyaWRnZV9lZGlkX3JlYWQoKS4KPiAtIE1vdmUgJmFuYWxvZ2l4
X2RwX3BsYXRfZGF0YS5za2lwX2Nvbm5lY3RvciBkZWxldGlvbiB0byB0aGUgcHJldmlvdXMKPiAg
IHBhdGNoZXMuCj4gLS0tCj4gIC4uLi9kcm0vYnJpZGdlL2FuYWxvZ2l4L2FuYWxvZ2l4X2RwX2Nv
cmUuYyAgICB8IDE2OSArKysrKysrKy0tLS0tLS0tLS0KPiAgLi4uL2RybS9icmlkZ2UvYW5hbG9n
aXgvYW5hbG9naXhfZHBfY29yZS5oICAgIHwgICA0ICstCj4gIDIgZmlsZXMgY2hhbmdlZCwgODAg
aW5zZXJ0aW9ucygrKSwgOTMgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9icmlkZ2UvYW5hbG9naXgvYW5hbG9naXhfZHBfY29yZS5jIGIvZHJpdmVycy9ncHUv
ZHJtL2JyaWRnZS9hbmFsb2dpeC9hbmFsb2dpeF9kcF9jb3JlLmMKPiBpbmRleCBhYmM2NGNjMTdl
NGMuLmZiNTEwZTU1ZWYwNiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL2Fu
YWxvZ2l4L2FuYWxvZ2l4X2RwX2NvcmUuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2Uv
YW5hbG9naXgvYW5hbG9naXhfZHBfY29yZS5jCj4gQEAgLTIzLDYgKzIzLDcgQEAKPiAgI2luY2x1
ZGUgPGRybS9kcm1fYXRvbWljLmg+Cj4gICNpbmNsdWRlIDxkcm0vZHJtX2F0b21pY19oZWxwZXIu
aD4KPiAgI2luY2x1ZGUgPGRybS9kcm1fYnJpZGdlLmg+Cj4gKyNpbmNsdWRlIDxkcm0vZHJtX2Jy
aWRnZV9jb25uZWN0b3IuaD4KPiAgI2luY2x1ZGUgPGRybS9kcm1fY3J0Yy5oPgo+ICAjaW5jbHVk
ZSA8ZHJtL2RybV9kZXZpY2UuaD4KPiAgI2luY2x1ZGUgPGRybS9kcm1fZWRpZC5oPgo+IEBAIC05
NDgsMjMgKzk0OSwxMyBAQCBzdGF0aWMgaW50IGFuYWxvZ2l4X2RwX2Rpc2FibGVfcHNyKHN0cnVj
dCBhbmFsb2dpeF9kcF9kZXZpY2UgKmRwKQo+ICAJcmV0dXJuIGFuYWxvZ2l4X2RwX3NlbmRfcHNy
X3NwZChkcCwgJnBzcl92c2MsIHRydWUpOwo+ICB9Cj4gIAo+IC1zdGF0aWMgaW50IGFuYWxvZ2l4
X2RwX2dldF9tb2RlcyhzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yKQo+ICtzdGF0aWMg
aW50IGFuYWxvZ2l4X2RwX2JyaWRnZV9nZXRfbW9kZXMoc3RydWN0IGRybV9icmlkZ2UgKmJyaWRn
ZSwgc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvcikKPiAgewo+IC0Jc3RydWN0IGFuYWxv
Z2l4X2RwX2RldmljZSAqZHAgPSB0b19kcChjb25uZWN0b3IpOwo+IC0JY29uc3Qgc3RydWN0IGRy
bV9lZGlkICpkcm1fZWRpZDsKPiArCXN0cnVjdCBhbmFsb2dpeF9kcF9kZXZpY2UgKmRwID0gdG9f
ZHAoYnJpZGdlKTsKPiAgCWludCBudW1fbW9kZXMgPSAwOwo+ICAKPiAgCWlmIChkcC0+cGxhdF9k
YXRhLT5wYW5lbCkgewo+ICAJCW51bV9tb2RlcyArPSBkcm1fcGFuZWxfZ2V0X21vZGVzKGRwLT5w
bGF0X2RhdGEtPnBhbmVsLCBjb25uZWN0b3IpOwoKaGVyZSBpcyBvbmUgZXhhbXBsZSB3aGVyZSBh
IHBhbmVsX2JyaWRnZSB3b3VsZCBoZWxwIDotKQoKSS5lLiBJJ2QgdGhpbmsgd2l0aG91dCBpdCB0
aGUgY29kZSB3b3VsZCBuZWVkIHNvbWUgc29ydCBvZgoKICAJaWYgKGRwLT5wbGF0X2RhdGEtPmJy
aWRnZSkgewogIAkJbnVtX21vZGVzICs9IGRybV9icmlkZ2VfZ2V0X21vZGVzKGRwLT5wbGF0X2Rh
dGEtPmJyaWRnZSwgY29ubmVjdG9yKTsKCnRoaW5nPwoKPiAtCX0gZWxzZSB7Cj4gLQkJZHJtX2Vk
aWQgPSBkcm1fZWRpZF9yZWFkX2RkYyhjb25uZWN0b3IsICZkcC0+YXV4LmRkYyk7Cj4gLQo+IC0J
CWRybV9lZGlkX2Nvbm5lY3Rvcl91cGRhdGUoJmRwLT5jb25uZWN0b3IsIGRybV9lZGlkKTsKPiAt
Cj4gLQkJaWYgKGRybV9lZGlkKSB7Cj4gLQkJCW51bV9tb2RlcyArPSBkcm1fZWRpZF9jb25uZWN0
b3JfYWRkX21vZGVzKCZkcC0+Y29ubmVjdG9yKTsKPiAtCQkJZHJtX2VkaWRfZnJlZShkcm1fZWRp
ZCk7Cj4gLQkJfQo+ICAJfQo+ICAKPiAgCWlmIChkcC0+cGxhdF9kYXRhLT5nZXRfbW9kZXMpCgoK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==

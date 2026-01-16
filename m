Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B687C982DB
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Jan 2026 16:50:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jTwJ+54Qc4ZrasNkwkxOE2Trv95ssDxrR1/i0jD3gow=; b=frXE/b/1OkGTAx
	1gHb1RFFbrWlZsY9qSrifm4+X9wsTh6wqlYbmAEK1VOEU4ouQzQFAPKTZRmhKiUMW/gisg5REyYuu
	MCFhcXCRXRrvJG5plxt468TobZRIQzr4GzpjnHrDjl1XM3dhq9ralqNC+iIytef24DLgliwYGyuja
	lsoBjhu0DXg1/yk1Y3cwvAu95z8VgPJcTwa8whDz2dZm1EWpIYFxMc6I5F5m1ZmYdB6l/n/BLfNQp
	XDzpn62QC7mATx1Z0FJKSGK/YElD2CiVk5clx6B3HR6W3M4b4dArxVM3BWwDyDUM8EYE9oWx2C9Rt
	iu+mfe7VvtbaD5fNWYaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgn18-0000000EUQJ-3C6e;
	Fri, 16 Jan 2026 16:49:46 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgn16-0000000EUPp-1l3r;
	Fri, 16 Jan 2026 16:49:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=yI2XYSwTvVhb9DCV7BJIh+Gsz4vYaSmf6hvMKZExTCo=; b=ChRtAKmFPFgjEj2MJUr5lwxoqR
	6KHtYVPzSVyn9bFz7rHB0lcpr2sYi5ewutGrLY8qE1juhIvHX/67F94QnlB3wraAH2jbNuNpFg5au
	IUqv1YSIaYrLzsoah74DeYeyC1CmUwzF7yH9YPP5HtAeBisxSpCTqBnPNmEgNIBOKicSlpmLu1O1y
	FY2kEU9Bf++OXlUxM8zRYYOKoDsWM6GO0ZOI2Lb3Vm1/at800F8Mj1DJpFupJQn7TYh6twB4eg4a4
	vkvQRrNNTtUj5LtTcg3HNgxs/XmdZeQ5E6rbcPfIDuWwnTjBPBXkMzka6qXaS9py9cT8jz2tJ3N08
	kyeM9y5w==;
Received: from i53875a97.versanet.de ([83.135.90.151] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vgn0l-002eXq-JT; Fri, 16 Jan 2026 17:49:24 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>
Cc: hjc@rock-chips.com, mripard@kernel.org, maarten.lankhorst@linux.intel.com,
 tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH] drm/rockchip: vop2: Add mode valid callback for crtc
Date: Fri, 16 Jan 2026 17:49:23 +0100
Message-ID: <6509513.iIbC2pHGDl@diego>
In-Reply-To: <20260116005953.286225-1-andyshrk@163.com>
References: <20260116005953.286225-1-andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_084944_501029_B428916E 
X-CRM114-Status: GOOD (  22.56  )
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

SGkgQW5keSwKCkFtIEZyZWl0YWcsIDE2LiBKYW51YXIgMjAyNiwgMDE6NTk6NDkgTWl0dGVsZXVy
b3DDpGlzY2hlIE5vcm1hbHplaXQgc2NocmllYiBBbmR5IFlhbjoKPiBGcm9tOiBBbmR5IFlhbiA8
YW5keS55YW5Acm9jay1jaGlwcy5jb20+Cgp3aGVuIHJlc2VuZGluZyBhbiB1bm1vZGlmaWVkIHBh
dGNoLCBwbGVhc2UgbWFyayB0aGUgc3ViamVjdCBhcwpbUEFUQ0ggUkVTRU5EXSAuLi4uCgo+IEZp
bHRlciB0aGUgbW9kZSB0aGF0IGNhbid0IG91dHB1dCBieSB0aGUgY3J0Yy4KCkluIGNvbW1pdCA4
ZTE0MGNiNjAyNzAgKCJkcm0vcm9ja2NoaXA6IHZvcDogbGltaXQgbWF4aW11bSByZXNvbHV0aW9u
IHRvCmhhcmR3YXJlIGNhcGFiaWxpdGllcyIpIHdoaWNoIGludHJvZHVjZWQgdGhlIHNpbWlsYXIg
Y2hlY2sgb24gVk9QKDEpLCB3ZQpoYWQgYWRkaXRpb25hbCBpbmZvcm1hdGlvbiwgaW4gdGhhdCB0
aGUgVk9QMSBoYXJkd2FyZSBkb2VzIG5vdCBoYXZlCmFuIG91dHB1dCBoZWlnaHQgbGltaXQuIElz
IHRoZSBzYW1lIHRydWUgZm9yIFZPUDIgPwoKQmVjYXVzZSB0aGVuIEknZCBsaWtlIHRvIGV4dGVu
ZCB0aGUgY29tbWl0IGRlc2NyaXB0aW9uIHRvIHNvbWV0aGluZyBsaWtlOgo9PT09PT09IDg8ID09
PT09PT0KVGhlIGRpZmZlcmVudCBWT1AgdmFyaWFudHMgc3VwcG9ydCBkaWZmZXJlbnQgbWF4aW11
bSByZXNvbHV0aW9ucy4gUmVqZWN0CnJlc29sdXRpb25zIHRoYXQgYXJlIG5vdCBzdXBwb3J0ZWQg
YnkgYSBzcGVjaWZpYyB2YXJpYW50LgoKT25seSB0aGUgb3V0cHV0IHdpZHRoIGlzIGNoZWNrZWQg
YmVjYXVzZSB0aGUgaGFyZHdhcmUgaXRzZWxmIGRvZXMgbm90CmhhdmUgYSBoYXJkIG91dHB1dCBo
ZWlnaHQgbGltaXQuCj09PT09PT0gODwgPT09PT09PQoKQmVjYXVzZSB3aGVuIHNvbWVvbmUgc2Vl
cyB0aGUgY29kZSBsYXRlciB0aGV5IG1pZ2h0IGFzayB3aHkgdGhlIGhlaWdodAppcyBub3QgY2hl
Y2tlZCwgc28gaGF2aW5nIHRoYXQgaW4gdGhlIGNvbW1pdCBkZXNjcmlwdGlvbiBhbGxvd3MgdXMg
YWxsIHRvCnJlbWVtYmVyIHdoeSB0aGUgY2hlY2sgaXMgdGhpcyBzcGVjaWZpYyB3YXkgOi0pCgpU
aGFua3MKSGVpa28KCj4gU2lnbmVkLW9mZi1ieTogQW5keSBZYW4gPGFuZHkueWFuQHJvY2stY2hp
cHMuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3Zv
cDIuYyB8IDEyICsrKysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygr
KQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJt
X3ZvcDIuYyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5jCj4g
aW5kZXggNDk4ZGYwY2U0NjgwLi43NGZiYTI5YmZmZjMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AyLmMKPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcDIuYwo+IEBAIC0xNDM5LDYgKzE0MzksMTcgQEAg
c3RhdGljIHZvaWQgdm9wMl9jcnRjX2Rpc2FibGVfdmJsYW5rKHN0cnVjdCBkcm1fY3J0YyAqY3J0
YykKPiAgCXZvcDJfY3J0Y19kaXNhYmxlX2lycSh2cCwgVlBfSU5UX0ZTX0ZJRUxEKTsKPiAgfQo+
ICAKPiArc3RhdGljIGVudW0gZHJtX21vZGVfc3RhdHVzIHZvcDJfY3J0Y19tb2RlX3ZhbGlkKHN0
cnVjdCBkcm1fY3J0YyAqY3J0YywKPiArCQkJCQkJIGNvbnN0IHN0cnVjdCBkcm1fZGlzcGxheV9t
b2RlICptb2RlKQo+ICt7Cj4gKwlzdHJ1Y3Qgdm9wMl92aWRlb19wb3J0ICp2cCA9IHRvX3ZvcDJf
dmlkZW9fcG9ydChjcnRjKTsKPiArCj4gKwlpZiAobW9kZS0+aGRpc3BsYXkgPiB2cC0+ZGF0YS0+
bWF4X291dHB1dC53aWR0aCkKPiArCQlyZXR1cm4gTU9ERV9CQURfSFZBTFVFOwo+ICsKPiArCXJl
dHVybiBNT0RFX09LOwo+ICt9Cj4gKwo+ICBzdGF0aWMgYm9vbCB2b3AyX2NydGNfbW9kZV9maXh1
cChzdHJ1Y3QgZHJtX2NydGMgKmNydGMsCj4gIAkJCQkgY29uc3Qgc3RydWN0IGRybV9kaXNwbGF5
X21vZGUgKm1vZGUsCj4gIAkJCQkgc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKmFkal9tb2RlKQo+
IEBAIC0xODg0LDYgKzE4OTUsNyBAQCBzdGF0aWMgdm9pZCB2b3AyX2NydGNfYXRvbWljX2ZsdXNo
KHN0cnVjdCBkcm1fY3J0YyAqY3J0YywKPiAgCj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX2Ny
dGNfaGVscGVyX2Z1bmNzIHZvcDJfY3J0Y19oZWxwZXJfZnVuY3MgPSB7Cj4gIAkubW9kZV9maXh1
cCA9IHZvcDJfY3J0Y19tb2RlX2ZpeHVwLAo+ICsJLm1vZGVfdmFsaWQgPSB2b3AyX2NydGNfbW9k
ZV92YWxpZCwKPiAgCS5hdG9taWNfY2hlY2sgPSB2b3AyX2NydGNfYXRvbWljX2NoZWNrLAo+ICAJ
LmF0b21pY19iZWdpbiA9IHZvcDJfY3J0Y19hdG9taWNfYmVnaW4sCj4gIAkuYXRvbWljX2ZsdXNo
ID0gdm9wMl9jcnRjX2F0b21pY19mbHVzaCwKPiAKCgoKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

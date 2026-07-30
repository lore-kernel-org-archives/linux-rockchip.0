Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA6B0C5516D
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jul 2026 18:50:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1slVWM2pGE8jKLUeXt2pix+OXs0LR2A6ZSDQUE7IE1E=; b=XK8y1YJ/R2gAt5
	ZMRzGbIvs4ah1d7AhKWQM7tw6VT50YqEXTBNwJ8NLrl0T4Cexo00jJgd2ftqO+6f8GLO/7fbtWMZU
	qj2A2fBSZJ8toNnYqKF3A9DonpyaVPMaWhfzpxFKvWIvg7tcirWi8QJMQUaSUGqFNzT3iOIzu/68s
	VSyBdkyFJdoZLt0cMavDHp+fYjZkfX0sX8P1P4mhBnrvyWqzU1oxskZvrmaMjLPuFjDmMX6Vl+IBm
	cwa0tTPNYtGlZHXUVVLofy/oDhEfcVMHnY/yGszwGZs5A0IkwrqpA5xzHlbWV2/wrNT0d8JzlUYEC
	XPuIqtyooS2wHXP1HK9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpVpm-0000000BBEC-2TlV;
	Thu, 30 Jul 2026 18:50:22 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpVpj-0000000BBDb-2OnM;
	Thu, 30 Jul 2026 18:50:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=lw261SftemxN1SqHSmMtQfPekZaiyKsME3L516pe5q4=; b=EdR/nENw/RKQjMwL7fuYGbAaDb
	DmWHpj6oHz/AD/uqXIBHEuNvGTFKc12WXNLx7cpqJeM5UaPHUgO4g1GCNK/gmeHOVsB47Zv05qGHM
	5Wl99fd6H0oQZWbeEUt9Q7A+a72saSngMEMGF/43Ckj9nEo4pDrbFcuOMpF1I6QrVzMok6PutRWST
	LYsv7WzB1WX5QbDf1Vu3wAyY7U9vTO6EqLcsm796rV1y/AN3xTUAoe2xGKT+3GppRx1t4cGg6qCVT
	bWHPhZVjdIyhK/eZUgRJeJLq9puDihjHg/XuQVdgs/ZMTixgso0dQIZNC71LQUB6+UJAuf2+S6YBE
	03Bkb8ZQ==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Andy Yan <andy.yan@rock-chips.com>, Damon Ding <damon.ding@rock-chips.com>
Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Damon Ding <damon.ding@rock-chips.com>
Subject: Re: [PATCH v1 0/7] Add HPD support for Rockchip Analogix DP
Date: Thu, 30 Jul 2026 20:49:43 +0200
Message-ID: <2014349.VZ3vTMCxA0@diego>
In-Reply-To: <20260730032744.381566-1-damon.ding@rock-chips.com>
References: <20260730032744.381566-1-damon.ding@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260730_115019_692312_49001759 
X-CRM114-Status: GOOD (  14.77  )
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

SGkgRGFtb24sCgpBbSBEb25uZXJzdGFnLCAzMC4gSnVsaSAyMDI2LCAwNToyNzozNyBNaXR0ZWxl
dXJvcMOkaXNjaGUgU29tbWVyemVpdCBzY2hyaWViIERhbW9uIERpbmc6Cj4gVGhpcyBzZXJpZXMg
aW1wcm92ZXMgdGhlIEhQRCAoSG90cGx1ZyBEZXRlY3QpIGludGVycnVwdCBoYW5kbGluZyBpbgo+
IHRoZSBBbmFsb2dpeCBEUCBkcml2ZXIgdG8gZW5hYmxlIHJlbGlhYmxlIG5hdGl2ZSBIUEQgcGlu
IGRldGVjdGlvbiBvbgo+IFJvY2tjaGlwIHBsYXRmb3JtcywgYW5kIGludHJvZHVjZXMgcGxhdGZv
cm0tc3BlY2lmaWMgSFBEIGRldGVjdGlvbgo+IHNjaGVtZXMgd2l0aCBmaW5lLWdyYWluZWQgaW50
ZXJydXB0IGNvbnRyb2wuCgpbLi4uXQoKPiBUZXN0ZWQgb24gUkszNTc2IHdpdGggYm90aCBuYXRp
dmUgSFBEIHBpbiBhbmQgR1BJTyBIUEQgY29uZmlndXJhdGlvbnMuCj4gCj4gTmF0aXZlIEhQRCBw
aW4gbW9kZToKPiAKPiAgICZlZHAgewo+ICAgICAgIHN0YXR1cyA9ICJva2F5IjsKPiAgICAgICBw
aW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+ICAgICAgIHBpbmN0cmwtMCA9IDwmZWRwX3R4bTBf
cGlucz47Cj4gICB9Owo+IAo+IEdQSU8gSFBEIG1vZGU6Cj4gCj4gICAmZWRwIHsKPiAgICAgICBz
dGF0dXMgPSAib2theSI7Cj4gICAgICAgcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiAgICAg
ICBwaW5jdHJsLTAgPSA8JmVkcDBfaHBkPjsKPiAgICAgICBocGQtZ3Bpb3MgPSA8JmdwaW80IFJL
X1BDMSBHUElPX0FDVElWRV9ISUdIPjsKPiAgIH07Cj4gCj4gICAmcGluY3RybCB7Cj4gICAgICAg
ZWRwIHsKPiAgICAgICAgICAgZWRwMF9ocGQ6IGVkcDAtaHBkIHsKPiAgICAgICAgICAgICAgIHJv
Y2tjaGlwLHBpbnMgPSA8NCBSS19QQzEgMCAmcGNmZ19wdWxsX25vbmU+Owo+ICAgICAgICAgICB9
Owo+ICAgICAgIH07Cj4gICB9OwoKWWF5IGFuZCB0aGFua3MgYSBsb3QgZm9yIHdvcmtpbmcgb24g
dGhhdC4KCklmIEkgcm9sbCBteSBkaXNwbGF5LXBvcnQgY2FycmllciBib2FyZCBiYWNrIHRvIHRo
ZSBhbmFsb2dpeC1kcCBiZWluZwp0aGUgZW5kcG9pbnQsIHRoaXMgd29ya3MgZXhhY3RseSBhcyBl
eHBlY3RlZCA6LSkgLgoKSSBjYW4gcGx1ZyBpbiB0aGUgZGlzcGxheSBhdCBzb21lIHBvaW50IGFm
dGVyIHRoZSBib290IGFuZCBoYXZlIGl0CmRldGVjdGVkIGFuZCBzZXR1cCBjb3JyZWN0bHkuIFNh
bWUgd2l0aCB1bnBsdWdnaW5nIGl0IHdoaWxlCnRoZSBzeXN0ZW0gaXMgcnVubmluZy4gVGhlIGNv
bm5lY3Rpb24gc3RhdHVzIGlzIGNvcnJlY3RseSByZXBvcnRlZAppbiBzeXNmcy4KCgpUaG91Z2gg
dGhlcmUgaXMgYSBjYXZlYXQuIFdoZW4gdGhlIGVEUCBpcyBub3QgdGhlIGxhc3QgcGFydCwgdGhp
cyBkb2VzIG5vdAp3b3JrIGFueW1vcmUuIFRoZSBkZXRlY3QgZnVuY3Rpb24gYWx3YXlzIHJldHVy
bnMgImNvbm5lY3RlZCIgaWYgdGhlcmUgaXMKYSBuZXh0IGJyaWRnZSBhdmFpbGFibGUuCgpNeSBi
b2FyZCBbMF0gaGFzIGEgcGh5c2ljYWwgRFAgY29ubmVjdG9yIG9uIGl0LCBzbyBtb2RlbHMgaXQg
YXMKZHAtY29ubmVjdG9yLCBidXQgaW4gdGhhdCBjYXNlIHRoZSBBbmFsb2dpeCBkcml2ZXIgYWx3
YXlzIHJlcG9ydHMgYmVpbmcKY29ubmVjdGVkLgoKCkhlaWtvCgpbMF0gaHR0cHM6Ly9sb3JlLmtl
cm5lbC5vcmcvbGludXgtcm9ja2NoaXAvMjAyNTEwMDkyMjUwNTAuODgxOTItMy1oZWlrb0BzbnRl
Y2guZGUvCi4uLiBzYW1lIGVmZmVjdCB3aXRoIGhwZC1ncGlvcyBpbiBlaXRoZXIgdGhlIGVkcCBu
b2RlIG9yIGRwLWNvbm5lY3RvciBub2RlCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

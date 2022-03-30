Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3963FC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Mar 2022 07:28:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FyxbBRI75J/5tyNA3542IJLaZuCiGIukici3HTg/isg=; b=Fu88EiknG1Q6Tb
	SigzRr5sQVyZo1I8jXFwRicus4CZJeIWJzswaSozX+e4fvflJvEqs4qYNQ8snyaqce5PxrC6CQgSc
	q3tdW9I101dQEYZp3E6DjvgDO/5OWFWX4wJ1OxUoubmAf9RdZWt21qWo2Wj/raBg3A278n3bmpZ+L
	EzzhG2d+iLp1IvXGvOkkJu7wmXmN1rfOhmKkZpW2UeH+m77FbOhbdr9KbGWIcYpdm1NnvPzNGHyPY
	1zR8xxNo3uOKRwpt/BA4L43Yvirs9z2lCel2FH+LnUqYUA+xdqREHwc0ifKI8X1dLGWqpzHmUdQ2r
	FgZXk3vc1uABtU/XxAcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZSkx-00Eacv-Rv; Wed, 30 Mar 2022 07:28:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZSkm-00EaZd-2F
 for linux-rockchip@lists.infradead.org; Wed, 30 Mar 2022 07:28:29 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nZSki-0003G6-Vv; Wed, 30 Mar 2022 09:28:24 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nZSkg-0001fL-SK; Wed, 30 Mar 2022 09:28:22 +0200
Date: Wed, 30 Mar 2022 09:28:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Cc: dri-devel@lists.freedesktop.org,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 Heiko =?iso-8859-15?Q?St=FCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH v9 00/23] drm/rockchip: RK356x VOP2 support
Message-ID: <20220330072822.GX12181@pengutronix.de>
References: <20220328151116.2034635-1-s.hauer@pengutronix.de>
 <FB201567-AE5A-4242-82F1-7C55D8F111EA@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <FB201567-AE5A-4242-82F1-7C55D8F111EA@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:22:59 up 109 days, 16:08, 77 users,  load average: 0.01, 0.07,
 0.11
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220330_002828_121010_45E0C645 
X-CRM114-Status: GOOD (  27.59  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

SGkgUGlvdHIsCgpPbiBUdWUsIE1hciAyOSwgMjAyMiBhdCAwOTozMTowMUFNICswMjAwLCBQaW90
ciBPbmlzemN6dWsgd3JvdGU6Cj4gCj4gCj4gPiBXaWFkb21vxZvEhyBuYXBpc2FuYSBwcnpleiBT
YXNjaGEgSGF1ZXIgPHMuaGF1ZXJAcGVuZ3V0cm9uaXguZGU+IHcgZG5pdSAyOC4wMy4yMDIyLCBv
IGdvZHouIDE3OjEwOgo+ID4gCj4gPiAKPiA+IENoYW5nZXMgc2luY2Ugdjg6Cj4gPiAtIG1ha2Ug
aGNsa192byBhIGNyaXRpY2FsIGNsb2NrIGluc3RlYWQgb2YgZW5hYmxpbmcgaXQgaW4gdGhlIGhk
bWkgZHJpdmVyCj4gPiAtIEZpeCB2b3AyX3NldHVwX2xheWVyX21peGVyKCksIHJlcG9ydGVkIGJ5
IEFuZHkgWWFuCj4gPiAtIExpbWl0IHBsYW5lcyBwb3NzaWJsZV9jcnRjcyB0byBhY3R1YWxseSBl
eGlzdGluZyBjcnRjcwo+ID4gCj4gPiAKPiAKPiBTYXNjaGEsCj4gCj4gRllJOgo+IEkgd2FzIGhv
cGluZyB2OSB3aWxsIGZpeCBncmVlbiBzY3JlZW4gaXNzdWUgaSBzZWUgd2hlbiB2aWRlbyBwbGF5
ZXIgd2FudHMgdG8gZHJhdyB0byBudjEyIGNhcGFibGUgZHJtIHBsYW5lLgo+IEl0IGxvb2sgaXNz
dWUgaXMgc3RpbGwgcHJlc2VudCA6LSgKPiAKPiBZb3UgY2FuIGVhc2lseSByZXByb2R1Y2Ugd2l0
aCBtb2RldGVzdCB1dGlsaXR5Ogo+IAo+IG1vZGV0ZXN0IC1QIDQzQDY3OjE5MjB4MTA4MEBOVjEy
CgpUaGlzIG9ubHkgc2V0cyB0aGUgb3ZlcmxheSwgYnV0IGhvdyBkaWQgeW91IGdldCBzb21ldGhp
bmcgb24gdGhlIHNjcmVlbgppbml0aWFsbHk/CgpJIGRpZCB3aXRoICJtb2RldGVzdCAtcyA2OUA2
NzoxOTIweDEwODAgLWQiIGFuZCB3aXRoIHRoaXMgaXQgd29ya3MgYXMKZXhwZWN0ZWQsIEkgY2Fu
J3QgcmVwcm9kdWNlIGFueSBncmVlbiBzY3JlZW4gaXNzdWUgaGVyZS4KCkkgZm91bmQgYW5vdGhl
ciBwcm9ibGVtIHRob3VnaCB3aGljaCBtaWdodCBvciBtaWdodCBub3QgYmUgcmVsYXRlZCB3aXRo
CnlvdXIgaXNzdWUuIEkgc2F3IHRoYXQgdGhlIG92ZXJsYXkgaXMgbm90IGV4YWN0bHkgY2VudGVy
ZWQgYXMgaXQgb3VnaHQKdG8gYmUuIFRoaXMgZ29lcyBkb3duIHRvIHdyb25nIGRlbGF5IHNldHRp
bmdzIGZvciB0aGUgb3ZlcmxheSwgdGhlCmZvbGxvd2luZyBwYXRjaCBmaXhlcyB0aGlzLgoKU2Fz
Y2hhCgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS04PC0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0KCkZyb20gZjlhOTI0MDEzNDRlOGFhMzIwM2ZjYTIyMzZkZDRhNDBjYzg2
OTBmNiBNb24gU2VwIDE3IDAwOjAwOjAwIDIwMDEKRnJvbTogU2FzY2hhIEhhdWVyIDxzLmhhdWVy
QHBlbmd1dHJvbml4LmRlPgpEYXRlOiBXZWQsIDMwIE1hciAyMDIyIDA5OjIyOjI2ICswMjAwClN1
YmplY3Q6IFtQQVRDSF0gZml4dXAhIGRybTogcm9ja2NoaXA6IEFkZCBWT1AyIGRyaXZlcgoKLS0t
CiBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcDIuYyB8IDQgKystLQog
MSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcDIuYyBiL2RyaXZl
cnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5jCmluZGV4IDY5ZTk4NzBkNWYy
ZGMuLjdkYmE3YjliNjNkYzYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9y
b2NrY2hpcF9kcm1fdm9wMi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hp
cF9kcm1fdm9wMi5jCkBAIC0xOTc5LDEwICsxOTc5LDEwIEBAIHN0YXRpYyB2b2lkIHZvcDJfc2V0
dXBfZGx5X2Zvcl93aW5kb3dzKHN0cnVjdCB2b3AyICp2b3AyKQogCQkJc2RseSB8PSBGSUVMRF9Q
UkVQKFJLMzU2OF9TTUFSVF9ETFlfTlVNX19FU01BUlQxLCBkbHkpOwogCQkJYnJlYWs7CiAJCWNh
c2UgUk9DS0NISVBfVk9QMl9TTUFSVDA6Ci0JCQlzZGx5IHw9IEZJRUxEX1BSRVAoUkszNTY4X1NN
QVJUX0RMWV9OVU1fX1NNQVJUMSwgZGx5KTsKKwkJCXNkbHkgfD0gRklFTERfUFJFUChSSzM1Njhf
U01BUlRfRExZX05VTV9fU01BUlQwLCBkbHkpOwogCQkJYnJlYWs7CiAJCWNhc2UgUk9DS0NISVBf
Vk9QMl9TTUFSVDE6Ci0JCQlzZGx5IHw9IEZJRUxEX1BSRVAoUkszNTY4X1NNQVJUX0RMWV9OVU1f
X1NNQVJUMCwgZGx5KTsKKwkJCXNkbHkgfD0gRklFTERfUFJFUChSSzM1NjhfU01BUlRfRExZX05V
TV9fU01BUlQxLCBkbHkpOwogCQkJYnJlYWs7CiAJCX0KIAl9Ci0tIAoyLjMwLjIKCi0tIApQZW5n
dXRyb25peCBlLksuICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgfApTdGV1ZXJ3YWxkZXIgU3RyLiAyMSAgICAgICAgICAgICAgICAgICAgICAg
fCBodHRwOi8vd3d3LnBlbmd1dHJvbml4LmRlLyAgfAozMTEzNyBIaWxkZXNoZWltLCBHZXJtYW55
ICAgICAgICAgICAgICAgICAgfCBQaG9uZTogKzQ5LTUxMjEtMjA2OTE3LTAgICAgfApBbXRzZ2Vy
aWNodCBIaWxkZXNoZWltLCBIUkEgMjY4NiAgICAgICAgICAgfCBGYXg6ICAgKzQ5LTUxMjEtMjA2
OTE3LTU1NTUgfAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=

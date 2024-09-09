Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 464D8ECE57B
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Sep 2024 09:14:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Y99tm6fRcs6GZ+EUHxuJ5pg3kMq+MU+GYirUkGRXqQ=; b=uWSxYD8uyBbHBM
	uV64bR4mYyTFUM7lwawqt3HsIloc2y+UhMgthmalXqjVo0fZo8ylb0NJQ9198dtht7G5xbt4jzfPl
	uq4TcOrflZZqCi5bvqv1Ql+aWtHkMmriLQ5ZqUY/YWTw4w9RT9J5XJB2t/yhZAh/XzrPVu1uquQNa
	74q8vQsootvUT6EY006HZ4lJYpQ7HDPaaYpoW8HJQhTr7ojxOU05X/u4qO64DuoNKal6qoTTGQmUD
	R/C02d6uA0a1hMxXR+fMuXYXpAl/WWoqvfb3V3DXCI7+aE61WgurXWxMTHAj/fF2BJxBr31MhO/LA
	fHJPza02iDaKSwUcYC8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snaTl-00000001Fzm-1cs0;
	Mon, 09 Sep 2024 09:14:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snaTI-00000001Fuk-1Tiz
	for linux-rockchip@lists.infradead.org;
	Mon, 09 Sep 2024 09:14:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1snaT9-0004BL-4W; Mon, 09 Sep 2024 11:13:59 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1snaT5-006c5g-91; Mon, 09 Sep 2024 11:13:55 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1snaT5-00FfJM-0X;
	Mon, 09 Sep 2024 11:13:55 +0200
Date: Mon, 9 Sep 2024 11:13:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Andy Yan <andyshrk@163.com>
Cc: detlev.casanova@collabora.com, heiko@sntech.de,
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
	hjc@rock-chips.com, mripard@kernel.org,
	sebastian.reichel@collabora.com, linux-rockchip@lists.infradead.org,
	sjoerd@collabora.com, Andy Yan <andy.yan@rock-chips.com>,
	krzk+dt@kernel.org, robh@kernel.org
Subject: Re: Re: [PATCH v2 05/11] drm/rockchip: vop2: Introduce vop hardware
 version
Message-ID: <Zt68U6hnPA0KrxXB@pengutronix.de>
References: <20240904120238.3856782-1-andyshrk@163.com>
 <20240904120238.3856782-6-andyshrk@163.com>
 <ZtlZgKcDQFF_WnCn@pengutronix.de>
 <2326e2ea.8264.191c13bab93.Coremail.andyshrk@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2326e2ea.8264.191c13bab93.Coremail.andyshrk@163.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240909_021408_397835_6B38367B 
X-CRM114-Status: GOOD (  39.76  )
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

T24gVGh1LCBTZXAgMDUsIDIwMjQgYXQgMDQ6MDk6NThQTSArMDgwMCwgQW5keSBZYW4gd3JvdGU6
Cj4gICAgSGkgU2FzY2hhLAo+IAo+ICBBdCAyMDI0LTA5LTA1IDE1OjEwOjU2LCAiU2FzY2hhIEhh
dWVyIiA8cy5oYXVlckBwZW5ndXRyb25peC5kZT4gd3JvdGU6Cj4gID5IaSBBbmR5LAo+ICA+Cj4g
ID5PbiBXZWQsIFNlcCAwNCwgMjAyNCBhdCAwODowMjozMlBNICswODAwLCBBbmR5IFlhbiB3cm90
ZToKPiAgPj4gRnJvbTogQW5keSBZYW4gPGFuZHkueWFuQHJvY2stY2hpcHMuY29tPgo+ICA+Pgo+
ICA+PiBUaGVyZSBpcyBhIHZlcnNpb24gbnVtYmVyIGhhcmRjb2RlZCBpbiB0aGUgVk9QIFZFUlNJ
T05fSU5GTwo+ICA+PiByZWdpc3RlciwgYW5kIHRoZSB2ZXJzaW9uIG51bWJlciBpbmNyZW1lbnRz
IHNlcXVlbnRpYWxseSBiYXNlZAo+ICA+PiBvbiB0aGUgcHJvZHVjdGlvbiBvcmRlciBvZiB0aGUg
U09DLgo+ICA+Pgo+ICA+PiBTbyB1c2luZyB0aGlzIHZlcnNpb24gbnVtYmVyIHRvIGRpc3Rpbmd1
aXNoIGRpZmZlcmVudCBWT1AgZmVhdHVyZXMKPiAgPj4gd2lsbCBzaW1wbGlmeSB0aGUgY29kZS4K
PiAgPj4KPiAgPj4gU2lnbmVkLW9mZi1ieTogQW5keSBZYW4gPGFuZHkueWFuQHJvY2stY2hpcHMu
Y29tPgo+ICA+Pgo+ICA+PiAtLS0KPiAgPj4KPiAgPj4gQ2hhbmdlcyBpbiB2MjoKPiAgPj4gLSBJ
bnRyb2R1Y2Ugdm9wIGhhcmR3YXJlIHZlcnNpb24KPiAgPj4KPiAgPj4gIGRyaXZlcnMvZ3B1L2Ry
bS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5jIHwgIDcgKysrKy0tLQo+ICA+PiAgZHJpdmVy
cy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AyLmggfCAxMSArKysrKysrKysrKwo+
ICA+PiAgZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX3ZvcDJfcmVnLmMgfCAgMyAr
KysKPiAgPj4gIDMgZmlsZXMgY2hhbmdlZCwgMTggaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMo
LSkKPiAgPj4KPiAgPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2Nr
Y2hpcF9kcm1fdm9wMi5oIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92
b3AyLmgKPiAgPj4gaW5kZXggOWIyNjlmNmU1NzZlLi44NzFkOWJjZDFkODAgMTAwNjQ0Cj4gID4+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5oCj4gID4+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5oCj4gID4+
IEBAIC0xMyw2ICsxMywxNSBAQAo+ICA+PiAgI2luY2x1ZGUgInJvY2tjaGlwX2RybV9kcnYuaCIK
PiAgPj4gICNpbmNsdWRlICJyb2NrY2hpcF9kcm1fdm9wLmgiCj4gID4+Cj4gID4+ICsjZGVmaW5l
IFZPUDJfVkVSU0lPTihtYWpvciwgbWlub3IsIGJ1aWxkKSAgICAgKChtYWpvcikgPDwgMjQgfCAo
bWlub3IpIDw8IDE2IHwgKGJ1aWxkKSkKPiAgPj4gKwo+ICA+PiArLyogVGhlIG5ldyBTT0MgVk9Q
IHZlcnNpb24gaXMgYmlnZ2VyIHRoYW4gdGhlIG9sZCAqLwo+ICA+PiArI2RlZmluZSBWT1BfVkVS
U0lPTl9SSzM1NjggICAgVk9QMl9WRVJTSU9OKDB4NDAsIDB4MTUsIDB4ODAyMykKPiAgPj4gKyNk
ZWZpbmUgVk9QX1ZFUlNJT05fUkszNTg4ICAgIFZPUDJfVkVSU0lPTigweDQwLCAweDE3LCAweDY3
ODYpCj4gID4+ICsjZGVmaW5lIFZPUF9WRVJTSU9OX1JLMzUyOCAgICBWT1AyX1ZFUlNJT04oMHg1
MCwgMHgxNywgMHgxMjYzKQo+ICA+PiArI2RlZmluZSBWT1BfVkVSU0lPTl9SSzM1NjIgICAgVk9Q
Ml9WRVJTSU9OKDB4NTAsIDB4MTcsIDB4NDM1MCkKPiAgPj4gKyNkZWZpbmUgVk9QX1ZFUlNJT05f
UkszNTc2ICAgIFZPUDJfVkVSU0lPTigweDUwLCAweDE5LCAweDk3NjUpCj4gID4KPiAgPldoYXQg
YWJvdXQgdGhlIFJLMzU2Nj8gRG9lcyBpdCBoYXZlIHRoZSBzYW1lIHZlcnNpb24gY29kZSBhcyB0
aGUgUkszNTY4Pwo+ICA+Cj4gID5UaGlzIG5ldyB2ZXJzaW9uIGZpZWxkIHJlcGxhY2VzIHRoZSBz
b2NfaWQgbWVjaGFuaXNtIHdlIGhhZCBiZWZvcmUgdG8KPiAgPjk5JS4gWW91IGtlZXAgdGhlIHNv
Y19pZCBhcm91bmQganVzdCBmb3IgZGlzdGluZ3Vpc2hpbmcgYmV0d2VlbiBSSzM1NjYKPiAgPmFu
ZCBSSzM1NjguIEl0IHdvdWxkIGJlIG5pY2UgdG8gZnVsbHkgcmVwbGFjZSBpdC4KPiAgPgo+ICA+
SSBzZWUgdGhhdCB0aGUgVk9QX1ZFUlNJT05fUksqIG51bWJlcnMgYXJlIHRoZSBzYW1lIGFzIGZv
dW5kIGluIHRoZQo+ICA+Vk9QMl9TWVNfVkVSU0lPTl9JTkYgcmVnaXN0ZXJzLiBPbiB0aGUgb3Ro
ZXIgaGFuZCB5b3UgbmV2ZXIgcmVhZCB0aGUKPiAgPnZhbHVlIGZyb20gdGhlIHJlZ2lzdGVyIHdo
aWNoIG1ha2UgdGhlIFZPUF9WRVJTSU9OX1JLKiBqdXN0IGFyYml0cmFyeQo+ICA+bnVtYmVycy4g
V291bGRuJ3QgaXQgYmUgcG9zc2libGUgdG8gbWFrZSBzb21ldGhpbmcgdXAgZm9yIFJLMzU2Niwg
bGlrZQo+ICA+Vk9QMl9WRVJTSU9OKDB4NDAsIDB4MTUsIDB4ODAyMikgdG8gZ2V0IHJpZCBvZiB0
aGUgc29jX2lkIHRoaW5neT8KPiAgWWVz77yMUkszNTY2IGFuZCBSSzM1Njggc2hhcmUgdGhlIHNh
bWUgVk9QIElQIGJsb2Nr77yMIHNvIHRoZSB2ZXJzaW9uIGNvZGUgYXQgVkVSU0lPTl9SRUdJU1RF
UiBpcwo+ICB0aGUgc2FtZSwgdGhlIGRpZmZlcmVuY2UgYmV0d2VlbiByazM1NjggYW5kIHJrMzM1
NjYgYXJlIGludHJvZHVjZWQgYXQgc29jIEludGVncmF0aW9u44CCCj4gIFNvIGkgd291bGQgc3Rp
bGwgbGlrZSB0byBrZWVwIHRoZSBzb2NfaWQgdG8gIGhhbmRsZSBzaXR1YXRpb24gbGlrZSB0aGlz
44CCQXMgd2UgYWx3YXlzIGhhdmUgc3VjaCAgY2F1c2XvvIwgb25lCj4gIHNhbWUgSVAgYmxvY2vv
vIwgYnV0IHRoZXJlIGFyZSBzb21lIHN1YnRsZSBkaWZmZXJlbmNlcyBpbiBmZWF0dXJlcyBhY3Jv
c3MgZGlmZmVyZW50IFNPQ3MuCgpGaW5lIHdpdGggbWUuIFlvdSBjb3VsZCBsZWF2ZSBhIGNvbW1l
bnQgaW4gdGhlIGNvZGUgb3IgY29tbWl0Cm1lc3NhZ2UgdGhhdCBleHBsYWlucyB3aHkgd2UgbmVl
ZCBib3RoLgoKPiAgSSBoYXZlIGNvbnNpZGVyZWQgcmVhZGluZyB0aGUgdmVyc2lvbiByZWdpc3Rl
ciBkaXJlY3RseSwgYnV0IEkgaGF2ZW4ndCBmb3VuZCBhIHN1aXRhYmxlIG1ldGhvZCB5ZXQuCgpZ
b3UgY291bGQgY2hlY2sgdGhlIGV4cGVjdGVkIHZlcnNpb24gZnJvbSB0aGUgZHJpdmVyIGRhdGEg
YWdhaW5zdAp0aGUgcmVnaXN0ZXIgdmFsdWUsIGJ1dCB0aGF0IHdvdWxkIG9ubHkgYmUgYW4gYWRk
aXRpb25hbCBzYW5pdHkgY2hlY2suCk5vdCBzdXJlIGlmIGl0J3Mgd29ydGggaXQuCgpTYXNjaGEK
Ci0tIApQZW5ndXRyb25peCBlLksuICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgfApTdGV1ZXJ3YWxkZXIgU3RyLiAyMSAgICAgICAgICAgICAg
ICAgICAgICAgfCBodHRwOi8vd3d3LnBlbmd1dHJvbml4LmRlLyAgfAozMTEzNyBIaWxkZXNoZWlt
LCBHZXJtYW55ICAgICAgICAgICAgICAgICAgfCBQaG9uZTogKzQ5LTUxMjEtMjA2OTE3LTAgICAg
fApBbXRzZ2VyaWNodCBIaWxkZXNoZWltLCBIUkEgMjY4NiAgICAgICAgICAgfCBGYXg6ICAgKzQ5
LTUxMjEtMjA2OTE3LTU1NTUgfAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7076C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 31 Mar 2022 15:01:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p8Co9XepnMRSa0uH7Bn7XfiLIbg3R7St0u7aEn9tTHY=; b=AK7Pmwhba4seMr
	mydvHvPVv91UgsVmmdFL60dV/Yzr+vxdw42CK+9MUNSXN6CjPA+vLXtjbBKgV30EYhUdoeMU/oxtX
	Da84qLXDim9fmuU/V8bAN4bg8Vu7yGHuKyy4KahGXVR4i8jHI0DXSSeeWaKc5tXizZ2wwBYamsgH7
	yIHTEKJMh0/8lzkEgju15GyUCL/r/8ojuDx/Yo2D61rFG7ERP1hjQo2J1qzKfF45gGJNHGuzfORDm
	bxx/r3EyHjEpF3uiN/JuiAXY7jz8+sDzoi1jajVMExeMiIy53T1dWcl11zt+JnMsukwbeTkDz0N6f
	IURdhmf0tlNlSETQLQtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZwIV-002fLf-LB; Thu, 31 Mar 2022 15:01:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZwIS-002fJp-JP
 for linux-rockchip@lists.infradead.org; Thu, 31 Mar 2022 15:01:14 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nZwIH-0003rZ-OK; Thu, 31 Mar 2022 17:01:01 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nZwIC-0001Hb-97; Thu, 31 Mar 2022 17:00:56 +0200
Date: Thu, 31 Mar 2022 17:00:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Cc: Andy Yan <andy.yan@rock-chips.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Heiko =?iso-8859-15?Q?St=FCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>, Sandy Huang <hjc@rock-chips.com>,
 dri-devel@lists.freedesktop.org,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v9 00/23] drm/rockchip: RK356x VOP2 support
Message-ID: <20220331150056.GH4012@pengutronix.de>
References: <FB201567-AE5A-4242-82F1-7C55D8F111EA@gmail.com>
 <20220330072822.GX12181@pengutronix.de>
 <0D8F5951-5375-46B5-BFF0-7ED410371EB7@gmail.com>
 <20220330094556.GZ12181@pengutronix.de>
 <D3DA14F9-C9C6-4927-B015-5B7D25689DAA@gmail.com>
 <20220330102046.GA12181@pengutronix.de>
 <60601619-EF07-457B-91F2-64FEB598FEBE@gmail.com>
 <20220330192054.GA4012@pengutronix.de>
 <af8445e0-f4af-721b-709e-2eb7c488a8a4@rock-chips.com>
 <B7CD9D55-9F2D-42F4-9D04-17C6A5FEBB08@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <B7CD9D55-9F2D-42F4-9D04-17C6A5FEBB08@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 17:00:25 up 1 day,  3:30, 52 users,  load average: 0.42, 0.22, 0.20
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220331_080112_674991_F3A3A8CC 
X-CRM114-Status: GOOD (  20.79  )
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

T24gVGh1LCBNYXIgMzEsIDIwMjIgYXQgMDQ6NTM6MDVQTSArMDIwMCwgUGlvdHIgT25pc3pjenVr
IHdyb3RlOgo+IAo+IAo+ID4gV2lhZG9tb8WbxIcgbmFwaXNhbmEgcHJ6ZXogQW5keSBZYW4gPGFu
ZHkueWFuQHJvY2stY2hpcHMuY29tPiB3IGRuaXUgMzEuMDMuMjAyMiwgbyBnb2R6LiAxNDoxMzoK
PiA+IAo+ID4gCj4gPiBQaW90cjoKPiA+IAo+ID4gV2hhdCBzb2MgaXMgb24geW91IGJvYXJkPyBy
azM1NjYgb3IgcmszNTY4Pwo+IAo+IGl0IGlzIHJrMzU2NiBpbiB4OTYteDYgdHZib3gKPiAKPiAK
PiA+IAo+ID4gSSBoYXZlIGEgc2NyaXB0c1swXSAgdXNlIGlvWzFdIGNvbW1hbmQgdG8gZHVtcCB0
aGUgVk9QMiByZWdpc3RlciB5b3UgY2FuIHVzZSBpdCBkdW1wIHRoZSByZWdpc3RlciBjb25maWd1
cmF0aW9uIHdoZW4geW91IG1lZXQgYSBkaXNwbGF5IGZhaWx1cmUsCj4gPiAKPiA+IHRoZW4gc2Vu
ZCB0aGUgZHVtcCB0byBtZSwgbWF5YmUgSSBjYW4gZmlndXJlIG91dCBzb21ldGhpbmcuCj4gPiAK
PiA+IFswXWh0dHBzOi8vZ2l0aHViLmNvbS9hbmR5c2hyay9idWlsZHJvb3QvYmxvYi8yMDIyL2Jv
YXJkL2FuZHlzaHJrL3Jvb3Rmc19vdmVybGF5L3Vzci9iaW4vdm9wMl9kdW1wLnNoCj4gPiAKPiA+
IFsxXSBodHRwczovL2dpdGh1Yi5jb20vYW5keXNocmsvaW8KPiAKPiBBbmR5Cj4gCj4gUGxzIHNl
ZSBodHRwczovL3Bhc3RlYmluLmNvbS9DSG11OXMyMgo+IAo+IEkgcHV0IGR1bXBzIGZvciBmb2xs
b3dpbmcgc2NlbmFyaW9zOgo+IAo+IDEuCj4gLWJvb3QKPiAtbW9kZXRlc3QgLXMgNjlANjc6MTky
MHgxMDgwIC0+IG9rCj4gLW1vZGV0ZXN0IC1QIDQzQDY3OjE5MjB4MTA4MEBOVjEyIC0+IGdyZWVu
IHNjcmVlbgo+IAo+IAo+IDIuCj4gLWJvb3QKPiAtbW9kZXRlc3QgLXMgNjlANjc6MTkyMHgxMDgw
IC0+IG9rCj4gLW1vZGV0ZXN0IC1QIDQ5QDY3OjE5MjB4MTA4MEBOVjEyIC0+IG9rIChidXQgc2hp
ZnRlZCBob3Jpem9udGFsbHkgYnkgYWJvdXQgNSUgb2Ygc2NyZWVuIHdpZHRoKQoKSGF2ZSB5b3Ug
YXBwbGllZCB0aGUgYnVnZml4IEkgc2hhcmVkIHdpdGggeW91IGhlcmU6CgpodHRwczovL2xvcmUu
a2VybmVsLm9yZy9saW51eC1hcm0ta2VybmVsLzIwMjIwMzMwMDcyODIyLkdYMTIxODFAcGVuZ3V0
cm9uaXguZGUvCgpTYXNjaGEKCi0tIApQZW5ndXRyb25peCBlLksuICAgICAgICAgICAgICAgICAg
ICAgICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfApTdGV1ZXJ3YWxkZXIgU3Ry
LiAyMSAgICAgICAgICAgICAgICAgICAgICAgfCBodHRwOi8vd3d3LnBlbmd1dHJvbml4LmRlLyAg
fAozMTEzNyBIaWxkZXNoZWltLCBHZXJtYW55ICAgICAgICAgICAgICAgICAgfCBQaG9uZTogKzQ5
LTUxMjEtMjA2OTE3LTAgICAgfApBbXRzZ2VyaWNodCBIaWxkZXNoZWltLCBIUkEgMjY4NiAgICAg
ICAgICAgfCBGYXg6ICAgKzQ5LTUxMjEtMjA2OTE3LTU1NTUgfAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

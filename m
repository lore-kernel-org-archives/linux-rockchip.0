Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58D0DC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Apr 2022 09:13:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OAKazA3h1JBDSFVlIFARPx4k7U+MQazkdyGDOX6t9HI=; b=22hoTkUY4Be/Nf
	qfQ1IA9hzlHl8W6h5eGuvFE20OUWX1azlbAkrjxAsEq+stzMzTneh5h8qKJnJOy629PJDS1jPtrXE
	b+GMyL59mkWopCPHobSpwtPxhSvXPIoWooNTgD7t7/hcIeko7SQ7sRZhFQ7edyq2RagWo2rksGNdY
	shEMJQAG6WxTGieAIw5CIb7Bho/cZpVU4PwZIjumkWqwnoFqEVwEaRyDsvNraa5aM4PVQH1AXITLo
	egeUnCeJ4SK/NlbpxmZQ7UB4/KlvZdavW9c+mrgGHbbaPNHnvhjfOC9vPaExhtVue2plxOgabt4Dl
	Nyh8jbSCG7wYeXpIhkww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ndq6S-007oEo-U5; Mon, 11 Apr 2022 09:12:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ndq1m-007lkZ-VA
 for linux-rockchip@lists.infradead.org; Mon, 11 Apr 2022 09:08:09 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ndq1j-0001v6-0U; Mon, 11 Apr 2022 11:08:03 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ndq1g-0005KI-Mn; Mon, 11 Apr 2022 11:08:00 +0200
Date: Mon, 11 Apr 2022 11:08:00 +0200
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
Message-ID: <20220411090800.GR4012@pengutronix.de>
References: <20220328151116.2034635-1-s.hauer@pengutronix.de>
 <FB201567-AE5A-4242-82F1-7C55D8F111EA@gmail.com>
 <20220401125205.GL4012@pengutronix.de>
 <5420D26D-34FD-4637-B602-F6271E38BB8D@gmail.com>
 <BA4C591F-D115-43D2-BF59-A75B29889E50@gmail.com>
 <20220408080748.GA2387@pengutronix.de>
 <20220408120021.GO4012@pengutronix.de>
 <B3E76A7A-9B62-4E6F-9472-00B6298689C5@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <B3E76A7A-9B62-4E6F-9472-00B6298689C5@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:49:33 up 11 days, 21:19, 65 users,  load average: 0.27, 0.21, 0.19
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220411_020807_126217_A3C070F2 
X-CRM114-Status: GOOD (  26.83  )
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

T24gRnJpLCBBcHIgMDgsIDIwMjIgYXQgMDU6NTQ6MjRQTSArMDIwMCwgUGlvdHIgT25pc3pjenVr
IHdyb3RlOgo+IAo+IAo+ID4gV2lhZG9tb8WbxIcgbmFwaXNhbmEgcHJ6ZXogU2FzY2hhIEhhdWVy
IDxzLmhhdWVyQHBlbmd1dHJvbml4LmRlPiB3IGRuaXUgMDguMDQuMjAyMiwgbyBnb2R6LiAxNDow
MDoKPiA+IAo+ID4+IFRoYXQgdHVybmVkIG91dCB0byBiZSBzaW1wbGVyIHRoYW4gSSB0aG91Z2h0
IGl0IHdvdWxkIGJlLiBUaGUgenBvcwo+ID4+IHZhbHVlcyB3ZXJlIG5ldmVyIGFjdHVhbGx5IHdy
aXR0ZW4gdG8gdGhlIGhhcmR3YXJlLiBQbGVhc2UgdHJ5IHRoZQo+ID4+IGZvbGxvd2luZyBmaXh1
cCwgaXQgc2hvdWxkIGZpeCB0aGlzIGlzc3VlLgo+ID4gCj4gPiBPciBiZXR0ZXIgdHJ5IHYxMCB3
aGljaCBJIGhhdmUganVzdCBzZW50Lgo+ID4gCj4gCj4gU2FzY2hhLAo+IAo+IEkgYXBwbGllZCB2
MTAgb24gNS4xNy4yIGFuZC4uLmNhbid0IHNlZSBkaWZmZXJlbmNlLgo+IEkgc3RpbGwgbmVlZCB0
byBwbGF5IHdpdGggenBvcyB0byBnZXQgdWkgc2NyZWVuLgo+IGlmIGkgaGF2ZSBwbGF5YmFjayAt
IG5vIE9TRC4KPiBJZiBJIGhhdmUgT1NEIC0gbm8gcGxheWJhY2suCj4gCj4gTWF5YmUgZml4IG5l
ZWRzIHNvbWUgYWRqdXN0bWVudHMgZm9yIDM1NjY/CgpJIGRvbid0IHRoaW5rIHNvLgoKPiBwbGF5
ZXIgbGF1bmNoOgo+IC4uLi4uLi4KPiAyMDIyLTA0LTA4IDE3OjQ3OjU3LjAzNTY2OCBJIC9kZXYv
ZHJpL2NhcmQwIFF0IEVHTEZTL0tNUyBGZDo1IENydGMgaWQ6NDkgQ29ubmVjdG9yIGlkOjUxIEF0
b21pYzogMQo+IDIwMjItMDQtMDggMTc6NDc6NTcuMDM1ODA2IEkgL2Rldi9kcmkvY2FyZDA6IEF1
dGhlbnRpY2F0ZWQKPiAyMDIyLTA0LTA4IDE3OjQ3OjU3LjE0NTQ0NyBJIC9kZXYvZHJpL2NhcmQw
OiBGb3VuZCAzIHBsYW5lczsgMyBmb3IgdGhpcyBDUlRDCj4gMjAyMi0wNC0wOCAxNzo0Nzo1Ny4x
NDU0NjkgSSAvZGV2L2RyaS9jYXJkMDogU2VsZWN0ZWQgUGxhbmUgIzM3IE92ZXJsYXkgZm9yIHZp
ZGVvCj4gMjAyMi0wNC0wOCAxNzo0Nzo1Ny4xNDU1MTUgSSAvZGV2L2RyaS9jYXJkMDogU3VwcG9y
dGVkIERSTSB2aWRlbyBmb3JtYXRzOiBOVjEyLE5WMTYsTlYyNCxZVllVLFZZVVkKPiAyMDIyLTA0
LTA4IDE3OjQ3OjU3LjE0NTUyMyBJIC9kZXYvZHJpL2NhcmQwOiBTZWxlY3RlZCBQbGFuZSAjNDMg
T3ZlcmxheSBmb3IgR1VJCj4gMjAyMi0wNC0wOCAxNzo0Nzo1Ny4xNDU1NjcgSSAvZGV2L2RyaS9j
YXJkMDogRFJNIGRldmljZSByZXRyaWV2ZWQgZnJvbSBRdAo+IDIwMjItMDQtMDggMTc6NDc6NTcu
MTQ1NTc0IEkgL2Rldi9kcmkvY2FyZDA6IE11bHRpLXBsYW5lIHNldHVwOiBSZXF1ZXN0ZWQ6IDEg
U2V0dXA6IDEKCk9rLCBzbyAjMzcgZm9yIHZpZGVvLCAjNDMgZm9yIEdVSS4KCldoZXJlIGlzIHRo
ZSBPU0QgcmVuZGVyZWQ/IElzIGl0IHJlbmRlcmVkIG9uIHRoZSBHVUkgbGF5ZXI/Cgo+IC4uLi4u
Li4KPiAKPiAKPiBwbGF5YmFjazoKPiAuLi4uLgo+IDIwMjItMDQtMDggMTc6NDg6NTUuNDU3ODIz
IEkgRFJNVmlkZW86IFVzaW5nIFBsYW5lICMzNyBmb3IgdmlkZW8KPiAuLi4uLgo+IAo+IERSSSBz
dGF0ZSB3aXRoIHpwb3M9MCwga21zX2lkPTAgYW5kIG9uZ29pbmcgcGxheWJhY2s6Cj4gCj4gcm9v
dEBNeXRoLUZyb250ZW5kLTA2YzdlOTczYzJmMTp+ICMgY2F0IC9zeXMva2VybmVsL2RlYnVnL2Ry
aS8wL3N0YXRlCj4gcGxhbmVbMzFdOiBTbWFydDAtd2luMAo+ICAgICAgICAgY3J0Yz12aWRlb19w
b3J0MAo+ICAgICAgICAgZmI9NTgKPiAgICAgICAgICAgICAgICAgYWxsb2NhdGVkIGJ5ID0gbXl0
aGZyb250ZW5kCj4gICAgICAgICAgICAgICAgIHJlZmNvdW50PTIKPiAgICAgICAgICAgICAgICAg
Zm9ybWF0PVhSMjQgbGl0dGxlLWVuZGlhbiAoMHgzNDMyNTI1OCkKPiAgICAgICAgICAgICAgICAg
bW9kaWZpZXI9MHgwCj4gICAgICAgICAgICAgICAgIHNpemU9MTkyMHgxMDgwCj4gICAgICAgICAg
ICAgICAgIGxheWVyczoKPiAgICAgICAgICAgICAgICAgICAgICAgICBzaXplWzBdPTE5MjB4MTA4
MAo+ICAgICAgICAgICAgICAgICAgICAgICAgIHBpdGNoWzBdPTc2ODAKPiAgICAgICAgICAgICAg
ICAgICAgICAgICBvZmZzZXRbMF09MAo+ICAgICAgICAgICAgICAgICAgICAgICAgIG9ialswXToK
PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIG5hbWU9MAo+ICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgcmVmY291bnQ9NAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgc3RhcnQ9MDAwMDAwMDAKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHNp
emU9ODI5NDQwMAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgaW1wb3J0ZWQ9bm8K
PiAgICAgICAgIGNydGMtcG9zPTE5MjB4MTA4MCswKzAKPiAgICAgICAgIHNyYy1wb3M9MTkyMC4w
MDAwMDB4MTA4MC4wMDAwMDArMC4wMDAwMDArMC4wMDAwMDAKPiAgICAgICAgIHJvdGF0aW9uPTEK
PiAgICAgICAgIG5vcm1hbGl6ZWQtenBvcz0wCj4gICAgICAgICBjb2xvci1lbmNvZGluZz1JVFUt
UiBCVC42MDEgWUNiQ3IKPiAgICAgICAgIGNvbG9yLXJhbmdlPVlDYkNyIGxpbWl0ZWQgcmFuZ2UK
CkJhc2UgcGxhbmUuCgo+IHBsYW5lWzM3XTogRXNtYXJ0MC13aW4wCj4gICAgICAgICBjcnRjPXZp
ZGVvX3BvcnQwCj4gICAgICAgICBmYj02NQo+ICAgICAgICAgICAgICAgICBhbGxvY2F0ZWQgYnkg
PSBteXRoZnJvbnRlbmQKPiAgICAgICAgICAgICAgICAgcmVmY291bnQ9Mgo+ICAgICAgICAgICAg
ICAgICBmb3JtYXQ9TlYxMiBsaXR0bGUtZW5kaWFuICgweDMyMzE1NjRlKQo+ICAgICAgICAgICAg
ICAgICBtb2RpZmllcj0weDAKPiAgICAgICAgICAgICAgICAgc2l6ZT0xOTIweDEwODAKPiAgICAg
ICAgICAgICAgICAgbGF5ZXJzOgo+ICAgICAgICAgICAgICAgICAgICAgICAgIHNpemVbMF09MTky
MHgxMDgwCj4gICAgICAgICAgICAgICAgICAgICAgICAgcGl0Y2hbMF09MTkyMAo+ICAgICAgICAg
ICAgICAgICAgICAgICAgIG9mZnNldFswXT0wCj4gICAgICAgICAgICAgICAgICAgICAgICAgb2Jq
WzBdOgo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgbmFtZT0wCj4gICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICByZWZjb3VudD0zCj4gICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBzdGFydD0wMDAwMDAwMAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgc2l6ZT0zNjU3NzI4Cj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBpbXBvcnRl
ZD15ZXMKPiAgICAgICAgICAgICAgICAgICAgICAgICBzaXplWzFdPTk2MHg1NDAKPiAgICAgICAg
ICAgICAgICAgICAgICAgICBwaXRjaFsxXT0xOTIwCj4gICAgICAgICAgICAgICAgICAgICAgICAg
b2Zmc2V0WzFdPTIwODg5NjAKPiAgICAgICAgICAgICAgICAgICAgICAgICBvYmpbMV06Cj4gICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBuYW1lPTAKPiAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHJlZmNvdW50PTMKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IHN0YXJ0PTAwMDAwMDAwCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzaXplPTM2
NTc3MjgKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGltcG9ydGVkPXllcwo+ICAg
ICAgICAgY3J0Yy1wb3M9MTkyMHgxMDgwKzArMAo+ICAgICAgICAgc3JjLXBvcz0xOTIwLjAwMDAw
MHgxMDgwLjAwMDAwMCswLjAwMDAwMCswLjAwMDAwMAo+ICAgICAgICAgcm90YXRpb249MQo+ICAg
ICAgICAgbm9ybWFsaXplZC16cG9zPTEKPiAgICAgICAgIGNvbG9yLWVuY29kaW5nPUlUVS1SIEJU
LjYwMSBZQ2JDcgo+ICAgICAgICAgY29sb3ItcmFuZ2U9WUNiQ3IgbGltaXRlZCByYW5nZQoKVmlk
ZW8gcGxhbmUsIHJlbmRlcmVkIGZ1bGwgc2NyZWVuIGFib3ZlIHRoZSBiYXNlIHBsYW5lIHdpdGhv
dXQgYWxwaGEuCgo+IHBsYW5lWzQzXTogQ2x1c3RlcjAtd2luMAo+ICAgICAgICAgY3J0Yz0obnVs
bCkKPiAgICAgICAgIGZiPTAKPiAgICAgICAgIGNydGMtcG9zPTB4MCswKzAKPiAgICAgICAgIHNy
Yy1wb3M9MC4wMDAwMDB4MC4wMDAwMDArMC4wMDAwMDArMC4wMDAwMDAKPiAgICAgICAgIHJvdGF0
aW9uPTEKPiAgICAgICAgIG5vcm1hbGl6ZWQtenBvcz0wCj4gICAgICAgICBjb2xvci1lbmNvZGlu
Zz1JVFUtUiBCVC42MDEgWUNiQ3IKPiAgICAgICAgIGNvbG9yLXJhbmdlPVlDYkNyIGxpbWl0ZWQg
cmFuZ2UKCkhlcmUgc2hvdWxkIGJlIHRoZSBHVUksIGJ1dCB0aGlzIHBsYW5lIGlzIG5vdCBhY3Rp
dmUuCgpXaXRoIHRoaXMgc3RhdGUgSSB3b3VsZCBleHBlY3QgdG8gc2VlIGEgZnVsbCBzY3JlZW4g
dmlkZW8gd2l0aG91dAphbnl0aGluZyBvbiBpdC4gSXMgdGhhdCB0aGUgY2FzZT8gSWYgeWVzLCB0
aGVuIGZpbmUuCgpDb3VsZCB5b3UgcG9zdCBhIHN0YXRlIHdoZXJlIHlvdSBleHBlY3Qgc29tZXRo
aW5nIGVsc2UgdGhhbiBpcyBhY3R1YWxseQpzZWVuPwoKU2FzY2hhCgotLSAKUGVuZ3V0cm9uaXgg
ZS5LLiAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHwKU3RldWVyd2FsZGVyIFN0ci4gMjEgICAgICAgICAgICAgICAgICAgICAgIHwgaHR0cDov
L3d3dy5wZW5ndXRyb25peC5kZS8gIHwKMzExMzcgSGlsZGVzaGVpbSwgR2VybWFueSAgICAgICAg
ICAgICAgICAgIHwgUGhvbmU6ICs0OS01MTIxLTIwNjkxNy0wICAgIHwKQW10c2dlcmljaHQgSGls
ZGVzaGVpbSwgSFJBIDI2ODYgICAgICAgICAgIHwgRmF4OiAgICs0OS01MTIxLTIwNjkxNy01NTU1
IHwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK

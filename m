Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1326C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Apr 2022 14:59:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HsDVuZalj20gzb4NoNTwif/dkjPESqIJ2lG/LLbiFPI=; b=t+rMTSbp/81kV6
	86Xaqr1vnqgDVFXOJjGQGl4XlviceirU2cMYmLXP8qlP9uorOsBOjodTg+E01Sj7fgYf1NmmyatjS
	3GjBZDgUMIWqQIq04eWmEtMCqVTGFcY77kmX6yZ1nQH/lkzBVflpSiFYkFDlszXkKZCjOvyZsztE5
	LgXrSUyXljemObqTmdHOc66HQtfIcoVKDFEXmd3IW2RjW9OFLGBZgjYAxSMg2Xkojh+iss+lJs9++
	y5z9V+WamQW9EOKMdZtCTHFOh7ooJGhwe5XMgr1ZWjK68BLWMhT6M6/GRg8+ahU1ASLHThyTJxjuh
	C+JVjzov7skQQfA1UaQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nc77x-006iFv-4a; Wed, 06 Apr 2022 14:59:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nc77T-006i1l-4W
 for linux-rockchip@lists.infradead.org; Wed, 06 Apr 2022 14:58:54 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nc77P-0001OW-VB; Wed, 06 Apr 2022 16:58:47 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nc77P-0006K0-CK; Wed, 06 Apr 2022 16:58:47 +0200
Date: Wed, 6 Apr 2022 16:58:47 +0200
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
Message-ID: <20220406145847.GX4012@pengutronix.de>
References: <20220328151116.2034635-1-s.hauer@pengutronix.de>
 <FB201567-AE5A-4242-82F1-7C55D8F111EA@gmail.com>
 <20220401125205.GL4012@pengutronix.de>
 <5420D26D-34FD-4637-B602-F6271E38BB8D@gmail.com>
 <BA4C591F-D115-43D2-BF59-A75B29889E50@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BA4C591F-D115-43D2-BF59-A75B29889E50@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 16:56:21 up 7 days, 3:26, 72 users, load average: 0.20, 0.15, 0.18
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220406_075851_223472_1A624AE8 
X-CRM114-Status: GOOD (  36.71  )
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

T24gV2VkLCBBcHIgMDYsIDIwMjIgYXQgMTE6NDc6MjJBTSArMDIwMCwgUGlvdHIgT25pc3pjenVr
IHdyb3RlOgo+IAo+IAo+ID4gV2lhZG9tb8WbxIcgbmFwaXNhbmEgcHJ6ZXogUGlvdHIgT25pc3pj
enVrIDxwaW90ci5vbmlzemN6dWtAZ21haWwuY29tPiB3IGRuaXUgMDEuMDQuMjAyMiwgbyBnb2R6
LiAxNTowNToKPiA+IAo+ID4gCj4gPiAKPiA+PiBXaWFkb21vxZvEhyBuYXBpc2FuYSBwcnpleiBT
YXNjaGEgSGF1ZXIgPHMuaGF1ZXJAcGVuZ3V0cm9uaXguZGU+IHcgZG5pdSAwMS4wNC4yMDIyLCBv
IGdvZHouIDE0OjUyOgo+ID4+IAo+ID4+IEJhc2VkIG9uIHRoZSBkaXNjdXNzaW9uIHdpdGggQW5k
eSBwbGVhc2UgdHJ5IHRoZSBmb2xsb3dpbmcgcGF0Y2gsIGl0Cj4gPj4gc2hvdWxkIGZpeCB5b3Vy
IGdyZWVuIHNjcmVlbiBpc3N1ZS4gTm90ZSB0aGF0IHdpdGggdGhpcyBwYXRjaCB0aGUKPiA+PiBD
UlRDIGFuZCBwbGFuZSBpZHMgd2lsbCBjaGFuZ2UsIHNvIHRoZSBtb2RldGVzdCBjb21tYW5kcyBu
ZWVkIHRvIGJlCj4gPj4gYWRqdXN0ZWQgYWNjb3JkaW5nbHkuCj4gPj4gCj4gPj4gU2FzY2hhCj4g
Pj4gCj4gPj4gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLTg8LS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tCj4gPj4gCj4gPj4gLS0gCj4gPj4gRnJvbSBjYmMwMzA3MzYyM2E3MTgwMjQzMzMxYWMy
NGMzYWZhZjlkZWM3NTIyIE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQo+ID4+IEZyb206IFNhc2No
YSBIYXVlciA8cy5oYXVlckBwZW5ndXRyb25peC5kZT4KPiA+PiBEYXRlOiBGcmksIDEgQXByIDIw
MjIgMTQ6NDg6NDkgKzAyMDAKPiA+PiBTdWJqZWN0OiBbUEFUQ0hdIGZpeHVwISBkcm06IHJvY2tj
aGlwOiBBZGQgVk9QMiBkcml2ZXIKPiA+PiAKPiA+PiAtLS0KPiA+PiBkcml2ZXJzL2dwdS9kcm0v
cm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcDIuYyB8IDE0ICsrKysrKysrKysrKysrCj4gPj4gMSBm
aWxlIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKykKPiA+PiAKPiA+PiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AyLmMgYi9kcml2ZXJzL2dwdS9k
cm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcDIuYwo+ID4+IGluZGV4IDdkYmE3YjliNjNkYzYu
LjE0MjFiZjJmMTMzZjEgMTAwNjQ0Cj4gPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlw
L3JvY2tjaGlwX2RybV92b3AyLmMKPiA+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAv
cm9ja2NoaXBfZHJtX3ZvcDIuYwo+ID4+IEBAIC0yMjg3LDYgKzIyODcsMjAgQEAgc3RhdGljIGlu
dCB2b3AyX2NyZWF0ZV9jcnRjKHN0cnVjdCB2b3AyICp2b3AyKQo+ID4+IAkJCX0KPiA+PiAJCX0K
PiA+PiAKPiA+PiArCQlpZiAodm9wMi0+ZGF0YS0+c29jX2lkID09IDM1NjYpIHsKPiA+PiArCQkJ
LyoKPiA+PiArCQkJICogT24gUkszNTY2IHRoZXNlIHdpbmRvd3MgZG9uJ3QgaGF2ZSBhbiBpbmRl
cGVuZGVudAo+ID4+ICsJCQkgKiBmcmFtZWJ1ZmZlci4gVGhleSBzaGFyZSB0aGUgZnJhbWVidWZm
ZXIgd2l0aCBzbWFydDAsCj4gPj4gKwkJCSAqIGVzbWFydDAgYW5kIGNsdXN0ZXIwIHJlc3BlY3Rp
dmVseS4KPiA+PiArCQkJICovCj4gPj4gKwkJCXN3aXRjaCAod2luLT5kYXRhLT5waHlzX2lkKSB7
Cj4gPj4gKwkJCWNhc2UgUk9DS0NISVBfVk9QMl9TTUFSVDE6Cj4gPj4gKwkJCWNhc2UgUk9DS0NI
SVBfVk9QMl9FU01BUlQxOgo+ID4+ICsJCQljYXNlIFJPQ0tDSElQX1ZPUDJfQ0xVU1RFUjE6Cj4g
Pj4gKwkJCQljb250aW51ZTsKPiA+PiArCQkJfQo+ID4+ICsJCX0KPiA+PiArCj4gPj4gCQlpZiAo
d2luLT50eXBlID09IERSTV9QTEFORV9UWVBFX09WRVJMQVkpCj4gPj4gCQkJcG9zc2libGVfY3J0
Y3MgPSAoMSA8PCBudnBzKSAtIDE7Cj4gPj4gCj4gPj4gLS0gCj4gPj4gMi4zMC4yCj4gPj4gCj4g
Pj4gUGVuZ3V0cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHwKPiA+PiBTdGV1ZXJ3YWxkZXIgU3RyLiAyMSAgICAgICAgICAg
ICAgICAgICAgICAgfCBodHRwOi8vd3d3LnBlbmd1dHJvbml4LmRlLyAgfAo+ID4+IDMxMTM3IEhp
bGRlc2hlaW0sIEdlcm1hbnkgICAgICAgICAgICAgICAgICB8IFBob25lOiArNDktNTEyMS0yMDY5
MTctMCAgICB8Cj4gPj4gQW10c2dlcmljaHQgSGlsZGVzaGVpbSwgSFJBIDI2ODYgICAgICAgICAg
IHwgRmF4OiAgICs0OS01MTIxLTIwNjkxNy01NTU1IHwKPiA+IAo+ID4gU2FzY2hhCj4gPiAKPiA+
IE5vdyB3b3JrcyBwZXJmZWN0bHkhCj4gPiAoaGQgcGxheWJhY2sgd2l0aCAzLjUuLi41LjUlIGNw
dSB3aGlsZSByZW5kZXJpbmcgdG8gZHJtIHBsYW5lKQo+ID4gCj4gPiBGYW50YXN0aWMgd29yayBv
ZiBZb3UhCj4gCj4gU2FzY2hhLAo+IAo+IEhhdmluZyB2b3AyIGZpbmFsbHkgd29ya2luZyB3aXRo
IGRybSBwbGFuZXMgcmVuZGVyaW5nIGkgZGlzY292ZXJlZCBhbm90aGVyIGlzc3VlOiBvdmVybGF5
IG9zZCBpcyBpbnZpc2libGUgYXQgcGxheWJhY2suIAo+IAo+IGNvbnRleHQ6IHBsYXllciBkcmF3
cyB2aWRlbyBvbiBwbGFuZSAjWCBhbmQgb3NkIG9uIG92ZXJsYXkgcGxhbmUgI1kKPiBXaGVuIHVz
ZXIgZG8gaS5lLiBzZWVrIGF0IHBsYXliYWNrIC0gYXBwIHVzZXMgb3ZlcmxheSBPU0QgcGxhbmUg
dG8gZGlzcGxheSBPU0QgdG8gdXNlci4gVGhpcyBhcHByb2FjaCBpcyB1c2VkIGJ5IG1ham9yaXR5
IG9mIHBsYXllcnMgKEtPREksIGV0Yy4pCj4gCj4gVGhpcyB3b3JrcyB3ZWxsIG9uIGFsbCBwbGF0
Zm9ybXMgaSBoYXZlICAtIGV4Y2VwdCByazM1NjYgCj4gCj4gRm9yIG1lIGl0IGxvb2tzIGxpa2Ug
ei1vcmRlciB2b3AyIGlzc3VlIG9yIGFscGhhIGJsZW5kaW5nIGlzc3VlLgo+IEFzIHRoaXMgaXMg
b25seSBvbiByazM1NjYgYW5kIG9ubHkgb24gZHJtLXBsYW5lcyBtb2RlIC0gaXNzdWUgaXMgdm9w
MiByZWxhdGVkIGltaG8uCgpEdXJpbmcgbXkgdGVzdGluZyBJIGhhdmVuJ3Qgc2VlbiBhbnkgei1v
cmRlciBpc3N1ZXMsIGJ1dCB0aGF0IGRvZXNuJ3QKbWVhbiBtdWNoLiBXaXRoIFdlc3RvbiBJIGNh
biBjdXJyZW50bHkgb25seSB1c2UgdGhlIEFGQkMgZW5hYmxlZCBjbHVzdGVyCndpbmRvd3MgYW5k
IHdpdGggbW9kZXRlc3QgSSBjYW4gb25seSB1c2UgdGhlIG5vbi1jbHVzdGVyIHdpbmRvd3MuIEFy
ZQp5b3UgYWJsZSB0byBmaW5kIG91dCB3aGljaCB3aW5kb3cgaXMgdXNlZCBmb3IgdGhlIE9TRD8K
ClNhc2NoYQoKLS0gClBlbmd1dHJvbml4IGUuSy4gICAgICAgICAgICAgICAgICAgICAgICAgICB8
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ClN0ZXVlcndhbGRlciBTdHIuIDIxICAgICAg
ICAgICAgICAgICAgICAgICB8IGh0dHA6Ly93d3cucGVuZ3V0cm9uaXguZGUvICB8CjMxMTM3IEhp
bGRlc2hlaW0sIEdlcm1hbnkgICAgICAgICAgICAgICAgICB8IFBob25lOiArNDktNTEyMS0yMDY5
MTctMCAgICB8CkFtdHNnZXJpY2h0IEhpbGRlc2hlaW0sIEhSQSAyNjg2ICAgICAgICAgICB8IEZh
eDogICArNDktNTEyMS0yMDY5MTctNTU1NSB8CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

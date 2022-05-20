Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7EB77C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 May 2022 10:12:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pf2+2abGt19s1DwkKzUIlgrfU5RcTF0MsC8Q/rR0nds=; b=jqaT+ozlCUTJFs
	kq7DDmklz40zso6mxmlSxhg7vHpqeHZ306znB27h1Av0rv3U0jfijrayZQYiRyNVeEARq9p662ReY
	s6Aa1M3jcKv+P3MA0xV5opJe46cLIQv9R2YSA8GkocCFUPAEsH3oGJlgNu7eE/vlyJrp15GSwXOuT
	GKcJwumh7pmg/WVkKm+oK7G+PS1rCGzXhNwh+UYPI0/io60szf2tqb3TckPRKUIs5YX6Mr2tHo5AP
	GYdAmL+RWlRf6x1QRbx9UyKed5a8QgKtIRTyP7LXHx6zjoesUfVRiO8NVz4tYyW39+7nZkvMu2+Ng
	DZkQJfbIcBGPawdoxhJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nrzcD-00Bnky-Ve; Fri, 20 May 2022 10:12:14 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nrzcC-00BnkL-KY
 for linux-rockchip@bombadil.infradead.org; Fri, 20 May 2022 10:12:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=Bunyvx9rSml4Dl1SICuTZqOAv6xSWtFJMQi+v4KNImY=; b=F8yWbi70ZUeztdqZ6ft4iwTZBd
 Rz0//ON8ADSj4uA8Fb6QxNtrUV5RbSWIz/tBOn+8+Z7X3QOAaaSbGkc6oEVRpcJgE2fbKYp2DYVLd
 ScN5X1cccNR3IZUDgoGvrqzjECzzMjHHqY3T5iBc7f3njApCFCbP87vXM5Au1QVAIEKXJThQ3zVE9
 yu+/0B86mqyYeE4fZ3NqxElsgAr1v9k6hZUIcv/5DA1lnqufEzCpToW+hRVMKbsZhsxqO2uVX6MEA
 i/mgsmtdAqTkP71qEJRzuzyRZ+OUOcf51kn2uJWiGYVgxHz1/PjraJ1kkWtQVC7uNTmhev8l6CMx+
 fBQPVxQg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nrzc7-002J8A-VY
 for linux-rockchip@lists.infradead.org; Fri, 20 May 2022 10:12:10 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nrzc4-0000H5-3g; Fri, 20 May 2022 12:12:04 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nrzc0-0002U7-J6; Fri, 20 May 2022 12:12:00 +0200
Date: Fri, 20 May 2022 12:12:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Maya Matuszczyk <maccraft123mc@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH v11 00/24] drm/rockchip: RK356x VOP2 support
Message-ID: <20220520101200.GI25578@pengutronix.de>
References: <20220422072841.2206452-1-s.hauer@pengutronix.de>
 <23894515.EfDdHjke4D@phil>
 <CAO_Mup+SCgeK9rBjYqnnOpJWUNXyJdXV9pjWXqi571sznS9-LA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAO_Mup+SCgeK9rBjYqnnOpJWUNXyJdXV9pjWXqi571sznS9-LA@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 12:08:21 up 50 days, 22:38, 54 users,  load average: 0.12, 0.18, 0.16
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220520_111208_377268_D9F6F863 
X-CRM114-Status: GOOD (  31.54  )
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

SGkgTWF5YSwKCk9uIEZyaSwgTWF5IDIwLCAyMDIyIGF0IDEyOjAyOjMzUE0gKzAyMDAsIE1heWEg
TWF0dXN6Y3p5ayB3cm90ZToKPiBIZWxsbywKPiAKPiB3dC4sIDE3IG1haiAyMDIyIG8gMjA6Mjgg
SGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4gbmFwaXNhxYIoYSk6Cj4gPgo+ID4gQW0g
RnJlaXRhZywgMjIuIEFwcmlsIDIwMjIsIDA5OjI4OjE3IENFU1Qgc2NocmllYiBTYXNjaGEgSGF1
ZXI6Cj4gPiA+IEl0J3MgdjExIHRpbWUuIFRoZXJlJ3Mgb25seSBvbmUgc21hbGwgY2hhbmdlIHRv
IHYxMC4gRGlzY3Vzc2lvbiBzZWVtcyB0bwo+ID4gPiBoYXZlIHNldHRsZWQgbm93LiBJcyB0aGVy
ZSBhbnl0aGluZyBsZWZ0IHRoYXQgcHJldmVudHMgdGhlIHNlcmllcyBmcm9tCj4gPiA+IGJlaW5n
IG1lcmdlZD8gSSdkIHJlYWxseSBsaWtlIHRvIGhhdmUgaXQgaW4gZHVyaW5nIHRoZSBuZXh0IG1l
cmdlCj4gPiA+IHdpbmRvdy4KPiA+ID4KPiA+ID4gVGhpcyBzZXJpZXMgc3RpbGwgZGVwZW5kcyBv
bjoKPiA+ID4gZHJtL3JvY2tjaGlwOiBSZWZhY3RvciBJT01NVSBpbml0aWFsaXNhdGlvbiAoaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvYXJjaGl2ZXMvZHJpLWRldmVsLzIwMjItQXByaWwv
MzQ5NTQ4Lmh0bWwpCj4gPiA+IGFybTY0OiBkdHM6IHJvY2tjaGlwOiBhZGQgYmFzaWMgZHRzIGZv
ciB0aGUgcmFkeGEgcm9jazMgbW9kZWwgYQo+ID4gPgo+ID4gPiBTYXNjaGEKPiA+Cj4gPiBJJ3Zl
IG5vdyBwaWNrZWQgdXAgZXZlcnl0aGluZyBleGNlcHQgdGhlIGhkbWktcmF0ZSBzdHVmZiBpbiBz
b21lIHdheS4KPiA+IFRoZSBkcml2ZXIgY2hhbmdlcyB3aWxsIGdvIGludG8gNS4xOSBhbmQgdGhl
IERULWNoYW5nZXMgaW50byA1LjIwLgo+ID4KPiA+IEknbGwgbm93IG1vdmUgdGhlIHNlcmllcyBv
dXQgb2YgbXkgZm9jdXMgYW5kIHdvdWxkIGV4cGVjdCBmdXJ0aGVyCj4gPiBoZG1pIHJhdGUgdm9v
ZG9vIHRvIHN0YXJ0IGEgbmV3IHNlcmllcyA6LSkgLgo+ID4KPiA+IFRoYW5rcyB0byBhbGwgaW52
b2x2ZWQgZm9yIHdvcmtpbmcgb24gdGhpcy4KPiA+IEhlaWtvCj4gCj4gV2hhdCBkbyBJIG5lZWQg
YmVzaWRlcyB0aGlzIHBhdGNoIHNlcmllcywgbWVudGlvbmVkIGJlZm9yZSBJT01NVSByZWZhY3Rv
ciwKPiBhbmQgRFRTIGNoYW5nZXMgZm9yIE1JUEktRFNJIHN1cHBvcnQgb24gUkszNTZ4Pwo+IEkn
bSB3b3JraW5nIG9uIG1haW5saW5lIGtlcm5lbCBzdXBwb3J0IGZvciBhIGEgUkszNTY2IGJvYXJk
IHdpdGgKPiBhIERTSSBkaXNwbGF5LgoKQXBhcnQgZnJvbSB0aGVzZSBwYXRjaGVzIHlvdSdsbCBu
ZWVkIHVwZGF0ZXMgZm9yIHRoZSBEU0kuIEkndmUgcHVzaGVkCnRoZXNlIG9uY2UgdG8KaHR0cHM6
Ly9naXQucGVuZ3V0cm9uaXguZGUvY2dpdC9zaGEvbGludXgvbG9nLz9oPXJvY2tjaGlwLXZvcDIt
bWlwaQpQYXJ0aWN1bGFybHkgSSB0aGluayB5b3UgbmVlZDoKCjM4M2ZmMjUwMzQ1ZjAgZHJtOiBy
b2NrY2hpcDogZHctbWlwaS1kc2k6IENhbGwgaG9zdCBhdHRhY2ggZnJvbSBwcm9iZQplNzlhMTZl
YWQ4MzNkIGR3LW1pcGktZHNpLXJvY2tjaGlwOiBpbmNyZWFzZSBiYW5kd2lkdGgKYWM0MDBiZGQ4
ZDBjYiBkcm06IHJvY2tjaGlwOiBkdy1taXBpLWRzaS1yb2NrY2hpcDogQWRkIHJrMzU2OCBzdXBw
b3J0CmI2YjdmYWJiYzlmZTIgZHJtOiBwYW5lbC1zaW1wbGU6IEFkZCBpbml0IHNlcXVlbmNlIHN1
cHBvcnQKM2MxM2EwMzBlOTJmMyBhcm02NDogZHRzOiByb2NrY2hpcDogcmszNTY4LWV2YjogQWRk
IERpc3BsYXkgc3VwcG9ydAozNDMzOTM1YTMxNjc1IGFybTY0OiBkdHM6IHJvY2tjaGlwOiByazM1
Nng6IEFkZCBkc2kgbm9kZXMKCkknbSBub3Qgc3VyZSBob3cgd2VsbCB0aGVzZSBmaXQgb250byB0
aGUgY3VycmVudCBzdGF0ZS4gSSdsbCBsaWtlbHkKdXBkYXRlIHRoZSBicmFuY2ggd2hlbiB0aGUg
Vk9QMiBoYXMgaGl0IG1haW5saW5lIGFmdGVyIHRoZSBuZXh0IG1lcmdlCndpbmRvdy4gSSBoYXZl
IG5vIHBsYW5zIGN1cnJlbnRseSB0byB1cHN0cmVhbSB0aGUgRFNJIGJpdHMgdGhvdWdoLgoKUmVn
YXJkcywKIFNhc2NoYQoKLS0gClBlbmd1dHJvbml4IGUuSy4gICAgICAgICAgICAgICAgICAgICAg
ICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ClN0ZXVlcndhbGRlciBTdHIuIDIx
ICAgICAgICAgICAgICAgICAgICAgICB8IGh0dHA6Ly93d3cucGVuZ3V0cm9uaXguZGUvICB8CjMx
MTM3IEhpbGRlc2hlaW0sIEdlcm1hbnkgICAgICAgICAgICAgICAgICB8IFBob25lOiArNDktNTEy
MS0yMDY5MTctMCAgICB8CkFtdHNnZXJpY2h0IEhpbGRlc2hlaW0sIEhSQSAyNjg2ICAgICAgICAg
ICB8IEZheDogICArNDktNTEyMS0yMDY5MTctNTU1NSB8CgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

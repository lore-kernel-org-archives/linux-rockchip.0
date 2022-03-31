Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25D8CC433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 31 Mar 2022 12:19:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P6sDl8n+Wh7AIRM4WjwLTktbnKBKBSdpg/2CUo4Tdjk=; b=JuLwaz3YXdsKIz
	WUAFO9n1Vj0vprj7vSLZs0y2iofOnM7y0Cicq8/vhEemHM/rn6GH0hFi2kFMt6elYAJ/26/7G+QET
	qpmBegqha3yh1zJne//SdwqiXdzjvbBqVy3mCcSwFCTlnd02Vwir+K33BNZoetqSKraMGVigi96Vf
	lDx/1cKBcwTO/IZhORMhQKTqqfSDrKdOKmVHkmgeQdL1L0u13WLgvIzB4CAj9a/1XatXkwOkYchQi
	GK1NRF7mm3SXEc6DsOjt1ANkKDPKxh7boG/x/3twkgqN6tLMZ+IfrHJQAZfOnOYqD5dELm7fExFdU
	wb9H6zZufNjmoremevGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZtll-002ByE-Oo; Thu, 31 Mar 2022 12:19:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZtli-002Bvl-8c
 for linux-rockchip@lists.infradead.org; Thu, 31 Mar 2022 12:19:15 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nZtlW-0000gs-Ff; Thu, 31 Mar 2022 14:19:02 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nZtlV-0008D1-0u; Thu, 31 Mar 2022 14:19:01 +0200
Date: Thu, 31 Mar 2022 14:19:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Andy Yan <andy.yan@rock-chips.com>
Cc: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Heiko =?iso-8859-15?Q?St=FCbner?= <heiko@sntech.de>,
 Sandy Huang <hjc@rock-chips.com>, dri-devel@lists.freedesktop.org,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Peter Geis <pgwipeout@gmail.com>, kernel@pengutronix.de,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v9 00/23] drm/rockchip: RK356x VOP2 support
Message-ID: <20220331121900.GG4012@pengutronix.de>
References: <20220328151116.2034635-1-s.hauer@pengutronix.de>
 <FB201567-AE5A-4242-82F1-7C55D8F111EA@gmail.com>
 <20220330072822.GX12181@pengutronix.de>
 <0D8F5951-5375-46B5-BFF0-7ED410371EB7@gmail.com>
 <20220330094556.GZ12181@pengutronix.de>
 <D3DA14F9-C9C6-4927-B015-5B7D25689DAA@gmail.com>
 <20220330102046.GA12181@pengutronix.de>
 <60601619-EF07-457B-91F2-64FEB598FEBE@gmail.com>
 <20220330192054.GA4012@pengutronix.de>
 <af8445e0-f4af-721b-709e-2eb7c488a8a4@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <af8445e0-f4af-721b-709e-2eb7c488a8a4@rock-chips.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 14:17:51 up 1 day, 47 min, 51 users, load average: 0.11, 0.15, 0.14
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220331_051914_376666_21412AEB 
X-CRM114-Status: GOOD (  29.29  )
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

T24gVGh1LCBNYXIgMzEsIDIwMjIgYXQgMDg6MTM6MDlQTSArMDgwMCwgQW5keSBZYW4gd3JvdGU6
Cj4gSGkgUGlvdHI6Cj4gCj4gT24gMy8zMS8yMiAwMzoyMCwgU2FzY2hhIEhhdWVyIHdyb3RlOgo+
ID4gT24gV2VkLCBNYXIgMzAsIDIwMjIgYXQgMDQ6NTI6MjJQTSArMDIwMCwgUGlvdHIgT25pc3pj
enVrIHdyb3RlOgo+ID4gPiAKPiA+ID4gPiBXaWFkb21vxZvEhyBuYXBpc2FuYSBwcnpleiBTYXNj
aGEgSGF1ZXIgPHMuaGF1ZXJAcGVuZ3V0cm9uaXguZGU+IHcgZG5pdSAzMC4wMy4yMDIyLCBvIGdv
ZHouIDEyOjIwOgo+ID4gPiA+IAo+ID4gPiA+IERvZXMgaXQgY2hhbmdlIGFueXRoaW5nIGlmIHlv
dSBkbyBhICJtb2RldGVzdCAtcyA2OUA2NzoxOTIweDEwODAiIGJlZm9yZQo+ID4gPiA+IHN0YXJ0
aW5nIHRoZSBhcHA/IE9yIGlmIHlvdSBydW4gIm1vZGV0ZXN0IC1QIDQzQDY3OjE5MjB4MTA4MEBO
VjEyIgo+ID4gPiA+IGJlZm9yZSBzdGFydGluZyB0aGUgYXBwPyBPciBvdGhlciBjb21iaW5hdGlv
bnMgdGhlcmVvZj8KPiA+ID4gU28gaSB0cmllZCBmb2xsb3dpbmcgY29tYmluYXRpb25zCj4gPiA+
IAo+ID4gPiAtYm9vdAo+ID4gPiAtbW9kZXRlc3QgLXMgNjlANjc6MTkyMHgxMDgwIC0+IG9rCj4g
PiA+IC1tb2RldGVzdCAtUCA0M0A2NzoxOTIweDEwODBATlYxMiAtPiBncmVlbiBzY3JlZW4KPiA+
IEkgaGF2ZSBubyBpZGVhIHdoYXQgaXMgZ29pbmcgb24gaGVyZS4gVGhlcmUgc2FtZSBjb21tYW5k
cyB3b3JrIGZvciBtZS4KPiA+IFlvdSBjb3VsZCBwcm92aWRlIG1lIHlvdXIga2VybmVsIGNvbmZp
ZyBhbmQgdXBzdHJlYW0gY29tbWl0aXNoIHlvdSBhcmUKPiA+IHdvcmtpbmcgb24sIG1heWJlIHRo
YXQgZ2V0cyBtZSBjbG9zZXIgdG8geW91ciBzZXR1cC4KPiAKPiAKPiBJdCdzIGEgbGl0dGxlIHN0
cmFuZ2UsIEkgY2FuJ3QgcmVwcm9kdWNlIHRoaXMgaXNzdWUgbmVpdGhlci4KPiAKPiBCdXQgSSBo
YXZlIHByb2JsZW0gd2l0aCB0aGlzIHR3byBzdGVwIGNvbW1hbmQgc2VxdWVuY2UuCj4gCj4gc3Rl
cCAxOsKgIG1vZGV0ZXN0IC1zIDY5QDY3OjE5MjB4MTA4MCAtPiBvawo+IAo+IHN0ZXAgMjrCoCBt
b2RldGVzdCAtUCA0M0A2NzoxOTIweDEwODBATlYxMiwKPiAKPiBJIGdvdCB0aGUgZmFpbGVkIG1l
c3NhZ2U6wqAgImZhaWxlZCB0byBlbmFibGUgcGxhbmU6IFBlcm1pc3Npb24gZGVuaWVkIgo+IAo+
IEJlY2F1c2UgdGhlIGRybSBjb3JlIHdpbGwgc3RvcCBzdGVwMiBieSBkcm1faW9jdHJsX3Blcm1p
dCBhcwo+IERSTV9JT0NUTF9TRVRQTEFORSBuZWVkIGEgbWFzdGVyLAo+IAo+IGJ1dCB0aGUgY3Vy
cmVudCBtYXN0ZXIgaXMgdGhlIG1vZGV0ZXN0IHJ1biBieSBzdGVwMS4KPgoKWy4uLl0KCj4gCj4g
U28gaG93IHlvdSB0d28gZ290IHN0ZXAgdHdvIHJ1biBzdWNjZXNzPwoKWW91IGhhdmUgdG8gc3Rv
cCB0aGUgZmlyc3QgbW9kZXRlc3QgYnkgaGl0dGluZyByZXR1cm4uIEFsdGVybmF0aXZlbHkgeW91
CmNvdWxkIHBhc3MgdGhlIC1kIG9wdGlvbiB0byB0aGUgZmlyc3QgbW9kZXRlc3QuCgpTYXNjaGEK
Ci0tIApQZW5ndXRyb25peCBlLksuICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgfApTdGV1ZXJ3YWxkZXIgU3RyLiAyMSAgICAgICAgICAgICAg
ICAgICAgICAgfCBodHRwOi8vd3d3LnBlbmd1dHJvbml4LmRlLyAgfAozMTEzNyBIaWxkZXNoZWlt
LCBHZXJtYW55ICAgICAgICAgICAgICAgICAgfCBQaG9uZTogKzQ5LTUxMjEtMjA2OTE3LTAgICAg
fApBbXRzZ2VyaWNodCBIaWxkZXNoZWltLCBIUkEgMjY4NiAgICAgICAgICAgfCBGYXg6ICAgKzQ5
LTUxMjEtMjA2OTE3LTU1NTUgfAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=

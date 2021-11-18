Return-Path: <SRS0=Tpqa=QF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7251AC433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Nov 2021 10:04:19 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 334E461B5F
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Nov 2021 10:04:19 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 334E461B5F
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WKXWg9E1meOActaM5wCBHHv33FSOD1kzfQ++VkwlHPE=; b=hBWVdYHz3uVHht
	zH3Mn7CpQ2EFn3JeQkhU8zS2f4hm0fZom2fZSUPY6daIgWPwr1BKI1Iiw5SAwFURBruAzFpPc6xb9
	VrX5P4o1ad1eSAVD3cRc9JCS99G25eZ2q0DLFMRv3eRuoTTjcN54KjmAXfMq/u7xC2pN7jkMfLzrs
	C733pN7BeXih5pLiAJuCsuStHrsGFVeLrdjowg2QhZYjE8YFj/x/YT7XGnOSCj8lk5LtKAkUnxtVY
	3tXU3uzG7dTjSM+Xhv2qiRIVUbKcBUqil/oEl85mVLRgQutKYo4bKI0C6T6uAOYgWpTqjBDluZuyX
	fn6xz38o9za5zwVAuWWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mneH9-007PJh-8c; Thu, 18 Nov 2021 10:04:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mneGw-007PF8-7m
 for linux-rockchip@lists.infradead.org; Thu, 18 Nov 2021 10:04:04 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mneGr-0005Hg-Fj; Thu, 18 Nov 2021 11:03:57 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mneGp-0003wj-3u; Thu, 18 Nov 2021 11:03:55 +0100
Date: Thu, 18 Nov 2021 11:03:55 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Heiko =?iso-8859-15?Q?St=FCbner?= <heiko@sntech.de>
Cc: dri-devel@lists.freedesktop.org, Kever Yang <kever.yang@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@pengutronix.de, Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>,
 =?utf-8?B?6Zer5a2d5Yab?= <andy.yan@rock-chips.com>
Subject: Re: [PATCH v1 00/12] drm/rockchip: RK356x VOP2 support
Message-ID: <20211118100355.GO6556@pengutronix.de>
References: <20211117143347.314294-1-s.hauer@pengutronix.de>
 <3bbf42f3-bd9c-ed66-e421-8d78fbeb22ad@rock-chips.com>
 <4310886.V3yF0ifEZO@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4310886.V3yF0ifEZO@diego>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:01:35 up 273 days, 13:25, 149 users,  load average: 0.68, 0.41,
 0.41
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211118_020402_294796_5868350C 
X-CRM114-Status: GOOD (  32.12  )
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

T24gVGh1LCBOb3YgMTgsIDIwMjEgYXQgMTA6MjY6MjlBTSArMDEwMCwgSGVpa28gU3TDvGJuZXIg
d3JvdGU6Cj4gSGkgS2V2ZXIsCj4gCj4gQW0gRG9ubmVyc3RhZywgMTguIE5vdmVtYmVyIDIwMjEs
IDAyOjI3OjEwIENFVCBzY2hyaWViIEtldmVyIFlhbmc6Cj4gPiBIaSBTYXNjaGEgSGF1ZXIsCj4g
PiAKPiA+IE9uIDIwMjEvMTEvMTcg5LiL5Y2IMTA6MzMsIFNhc2NoYSBIYXVlciB3cm90ZToKPiA+
ID4gVGhpcyBzZXJpZXMgYWRkcyBpbml0aWFsIGdyYXBoaWNzIHN1cHBvcnQgZm9yIHRoZSBSb2Nr
Y2hpcCBSSzM1Nls2OF0KPiA+ID4gU29Dcy4gIEdyYXBoaWNzIHN1cHBvcnQgaXMgYmFzZWQgYXJv
dW5kIHRoZSBWT1AyIGNvbnRyb2xsZXIgd2hpY2gKPiA+ID4gcmVwbGFjZXMgdGhlIFZPUCBjb250
cm9sbGVyIGZvdW5kIG9uIGVhcmxpZXIgUm9ja2NoaXAgU29Dcy4gVGhlIGRyaXZlcgo+ID4gPiBo
YXMgYmVlbiB0ZXN0ZWQgd2l0aCBIRE1JIHN1cHBvcnQgaW5jbHVkZWQgaW4gdGhpcyBzZXJpZXMg
YW5kIE1JUEktRFNJCj4gPiA+IHdoaWNoIGlzIG5vdCBpbmNsdWRlZCBiZWNhdXNlIGl0IG5lZWRz
IHNvbWUgbW9yZSB3b3JrLiBUaGUgZHJpdmVyIGlzCj4gPiA+IHRha2VuIGZyb20gdGhlIGRvd25z
dHJlYW0gUm9ja2NoaXAga2VybmVsCj4gPiAKPiA+IFllcywgeW91IGRvIGtub3cgdGhpcyBpcyBm
cm9tIFJvY2tjaGlwIGtlcm5lbC4KPiA+IAo+ID4gQ291bGQgeW91IHBvaW50IG1lIG91dCB3aGVy
ZSBpcyB0aGUgaW5mb3JtYXRpb24gYWJvdXQgb3JpZ2luYWwgYXV0aG9yICAKPiA+IGluIHlvdXIg
Y29tbWl0Pwo+IAo+IFRoZSBjb3B5cmlnaHRzIGZvciBhZGRlZCBmaWxlcyBzZWVtIHRvIGhhdmUg
c3RheWVkIGludGFjdC4KPiBGb3IgZXhhbXBsZSB0aGUgYWRkZWQgcm9ja2NoaXBfZHJtX3ZvcDIu
YyBmaWxlIGluIHBhdGNoMTIKPiBkb2VzIGNvbnRhaW4gdGhlIGNvcHlyaWdodCBhcwo+IAo+IAlD
b3B5cmlnaHQgKGMpIDIwMjAgUm9ja2NoaXAgRWxlY3Ryb25pY3MgQ28uLCBMdGQuCj4gCUF1dGhv
cjogQW5keSBZYW4gPGFuZHkueWFuQHJvY2stY2hpcHMuY29tPgo+IAo+IAo+IFdlIGNhbiBvZiBj
b3Vyc2UgZGViYXRlIGlmIHRoZSBjb21taXQtYXV0aG9yIHNob3VsZCBhbHNvIGJlIHNldCB0bwo+
IEFuZHkgb3IgYW5vdGhlciBSb2NrY2hpcCBlbmdpbmVlciwgd2l0aCBTYXNjaGEgYWRkaW5nIGEg
Cj4gIkNvLWRldmVsb3BlZC1ieSIgd2l0aCBoaXMgY3JlZGVudGlhbHMuCj4gCj4gVGhhdCdzIHBy
b2JhYmx5IGEgbmljZSBjb21wcm9taXNlLCBJIGd1ZXNzLgoKVGhlIGNvbW1pdCBhdXRob3Igd2Fz
IG1lcmVseSBsb3N0IHdoaWxlIGNvcHlpbmcgdGhlIGRyaXZlciBmaWxlIGludG8gbXkgZ2l0LgpD
aGFuZ2luZyBpdCBiYWNrIHRvIEFuZHkgaXMgZmluZSB3aXRoIG1lLCBJIGRpZG4ndCBtZWFuIHRv
IHN0ZWFsIGFueW9uZXMKY3JlZGl0cy4KClNhc2NoYQoKLS0gClBlbmd1dHJvbml4IGUuSy4gICAg
ICAgICAgICAgICAgICAgICAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ClN0
ZXVlcndhbGRlciBTdHIuIDIxICAgICAgICAgICAgICAgICAgICAgICB8IGh0dHA6Ly93d3cucGVu
Z3V0cm9uaXguZGUvICB8CjMxMTM3IEhpbGRlc2hlaW0sIEdlcm1hbnkgICAgICAgICAgICAgICAg
ICB8IFBob25lOiArNDktNTEyMS0yMDY5MTctMCAgICB8CkFtdHNnZXJpY2h0IEhpbGRlc2hlaW0s
IEhSQSAyNjg2ICAgICAgICAgICB8IEZheDogICArNDktNTEyMS0yMDY5MTctNTU1NSB8CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

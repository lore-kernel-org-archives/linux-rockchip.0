Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05706C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Apr 2022 12:35:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cpvzn5u5mLMBMHrhkT9Six4j+WimFSyLFZkvCs7a//Y=; b=EMSbho1beIHXqz
	77TN4M+jYYA2OXzjM2du+51oCHsWeCQSR9hJYgLkR+DGJECUvTF1EGifUFjjq0XHkWJYXQzF0zED9
	kuXNCSobyQTU2G9ZCwoqNpQngBiwiwRNtp+aLGdsVU6GG+is68YWCYFIbY2DPJ27OlRc7nCcr16dh
	v4oEJNsGxo2Bn3c1F1+aUUegUVpGEknou2v0JWUDRCosMYrxhUj8LzyuvdCxgxAmx7IFcDLBxeMVv
	Jaz0CPXWH1GsdvC8X8xjZZJMiCcLPrCUW1sEc8QIHw/ebGQf05xXn8yDkY7qXQfYRtgpadM44+7e7
	/WhakVWM32qUPf7RB/RQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ncnqB-00H2xb-6Z; Fri, 08 Apr 2022 12:35:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncnHv-00Gopj-LD
 for linux-rockchip@lists.infradead.org; Fri, 08 Apr 2022 12:00:29 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ncnHs-0001mb-Nz; Fri, 08 Apr 2022 14:00:24 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ncnHp-00075S-Ow; Fri, 08 Apr 2022 14:00:21 +0200
Date: Fri, 8 Apr 2022 14:00:21 +0200
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
Message-ID: <20220408120021.GO4012@pengutronix.de>
References: <20220328151116.2034635-1-s.hauer@pengutronix.de>
 <FB201567-AE5A-4242-82F1-7C55D8F111EA@gmail.com>
 <20220401125205.GL4012@pengutronix.de>
 <5420D26D-34FD-4637-B602-F6271E38BB8D@gmail.com>
 <BA4C591F-D115-43D2-BF59-A75B29889E50@gmail.com>
 <20220408080748.GA2387@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220408080748.GA2387@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 13:59:56 up 9 days, 29 min, 69 users,  load average: 0.11, 0.12, 0.10
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220408_050027_733664_AEEA5F94 
X-CRM114-Status: GOOD (  24.08  )
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

T24gRnJpLCBBcHIgMDgsIDIwMjIgYXQgMTA6MDc6NDhBTSArMDIwMCwgU2FzY2hhIEhhdWVyIHdy
b3RlOgo+IE9uIFdlZCwgQXByIDA2LCAyMDIyIGF0IDExOjQ3OjIyQU0gKzAyMDAsIFBpb3RyIE9u
aXN6Y3p1ayB3cm90ZToKPiA+IAo+ID4gCj4gPiA+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6
IFBpb3RyIE9uaXN6Y3p1ayA8cGlvdHIub25pc3pjenVrQGdtYWlsLmNvbT4gdyBkbml1IDAxLjA0
LjIwMjIsIG8gZ29kei4gMTU6MDU6Cj4gPiA+IFNhc2NoYQo+ID4gPiAKPiA+ID4gTm93IHdvcmtz
IHBlcmZlY3RseSEKPiA+ID4gKGhkIHBsYXliYWNrIHdpdGggMy41Li4uNS41JSBjcHUgd2hpbGUg
cmVuZGVyaW5nIHRvIGRybSBwbGFuZSkKPiA+ID4gCj4gPiA+IEZhbnRhc3RpYyB3b3JrIG9mIFlv
dSEKPiA+IAo+ID4gU2FzY2hhLAo+ID4gCj4gPiBIYXZpbmcgdm9wMiBmaW5hbGx5IHdvcmtpbmcg
d2l0aCBkcm0gcGxhbmVzIHJlbmRlcmluZyBpIGRpc2NvdmVyZWQgYW5vdGhlciBpc3N1ZTogb3Zl
cmxheSBvc2QgaXMgaW52aXNpYmxlIGF0IHBsYXliYWNrLiAKPiA+IAo+ID4gY29udGV4dDogcGxh
eWVyIGRyYXdzIHZpZGVvIG9uIHBsYW5lICNYIGFuZCBvc2Qgb24gb3ZlcmxheSBwbGFuZSAjWQo+
ID4gV2hlbiB1c2VyIGRvIGkuZS4gc2VlayBhdCBwbGF5YmFjayAtIGFwcCB1c2VzIG92ZXJsYXkg
T1NEIHBsYW5lIHRvIGRpc3BsYXkgT1NEIHRvIHVzZXIuIFRoaXMgYXBwcm9hY2ggaXMgdXNlZCBi
eSBtYWpvcml0eSBvZiBwbGF5ZXJzIChLT0RJLCBldGMuKQo+ID4gCj4gPiBUaGlzIHdvcmtzIHdl
bGwgb24gYWxsIHBsYXRmb3JtcyBpIGhhdmUgIC0gZXhjZXB0IHJrMzU2NiAKPiA+IAo+ID4gRm9y
IG1lIGl0IGxvb2tzIGxpa2Ugei1vcmRlciB2b3AyIGlzc3VlIG9yIGFscGhhIGJsZW5kaW5nIGlz
c3VlLgo+ID4gQXMgdGhpcyBpcyBvbmx5IG9uIHJrMzU2NiBhbmQgb25seSBvbiBkcm0tcGxhbmVz
IG1vZGUgLSBpc3N1ZSBpcyB2b3AyIHJlbGF0ZWQgaW1oby4KPiAKPiBUaGF0IHR1cm5lZCBvdXQg
dG8gYmUgc2ltcGxlciB0aGFuIEkgdGhvdWdodCBpdCB3b3VsZCBiZS4gVGhlIHpwb3MKPiB2YWx1
ZXMgd2VyZSBuZXZlciBhY3R1YWxseSB3cml0dGVuIHRvIHRoZSBoYXJkd2FyZS4gUGxlYXNlIHRy
eSB0aGUKPiBmb2xsb3dpbmcgZml4dXAsIGl0IHNob3VsZCBmaXggdGhpcyBpc3N1ZS4KCk9yIGJl
dHRlciB0cnkgdjEwIHdoaWNoIEkgaGF2ZSBqdXN0IHNlbnQuCgpTYXNjaGEKCi0tIApQZW5ndXRy
b25peCBlLksuICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgfApTdGV1ZXJ3YWxkZXIgU3RyLiAyMSAgICAgICAgICAgICAgICAgICAgICAgfCBo
dHRwOi8vd3d3LnBlbmd1dHJvbml4LmRlLyAgfAozMTEzNyBIaWxkZXNoZWltLCBHZXJtYW55ICAg
ICAgICAgICAgICAgICAgfCBQaG9uZTogKzQ5LTUxMjEtMjA2OTE3LTAgICAgfApBbXRzZ2VyaWNo
dCBIaWxkZXNoZWltLCBIUkEgMjY4NiAgICAgICAgICAgfCBGYXg6ICAgKzQ5LTUxMjEtMjA2OTE3
LTU1NTUgfAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=

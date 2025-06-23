Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD7B3C7115B
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Jun 2025 10:59:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JQW0GdccoMJpmuv6X4agXwz3s4oSqE+3JkY7cus5w6g=; b=ReNNYfgoDCwY3x
	hIe9rQgn1MvpOSzPkgEpMRlbaaKdEL9KRVjJ5MIJivSQPt3gq25czhQiLYHiH+uQ/waQe9Ow6ynxP
	obCH6YxImjeZlOHSw6Vg91/JeLMa8/BE+/8Y07Ch7tyaGIwpnGmf/7D7xQK26e0LqwNvVRr8F4RXy
	YbCAOv2pJQSTEgXSombyKgJiXeCvcCgKnNS13CCjJGY/rhXqEZGulz5mS8Rfqjm+xlYRJnVaDuVGE
	eRcvIklkbe5pFNvcC71Nm+23BO2KVkT6LSoTv0Gb3tjBQiZQjIcI0M9e1Txb2MWpLr89ojqDikR3j
	LIgijr1wL9XKYfM9hA0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTet5-00000002SuS-350L;
	Mon, 23 Jun 2025 10:58:55 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTe3N-00000002Hpo-2UZE;
	Mon, 23 Jun 2025 10:05:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=CwBZWncXMFHUNfKxRF00wCCVLbZJy1TDoDay/M48Z+I=; b=L86h1ro29XqjaL+eCgRkkXLern
	75+0ic4ZPZQA9jgsZHU+m6s6A2g1sjBn8ch86nVuI/mPsm+t10x6oPsYBhqLPIQIrNtzVhkQykPlD
	GS6K5lvxSgSfYFgxVCGxHbCyZJr9sJG8cHlMxOsXGWp3xZSWPA+YRD0J0ug3eUzpFk8RG8q4SVWqQ
	TOR2KrK1AeFq1O+2IjRT6Sxz8JfV9KsVPDxIse6QRLv8ohmlIyxP9kaPKQw4t3nnlQoZnyzyHIkQL
	h6O0JmWJF9FZOYiJ72bt6fz7XaHXYoqvT90EPSJ6+HRhkGFcR9xFgmumcVFR0doDchPrQUOcr2uVj
	k3uVs64Q==;
Received: from [185.15.108.45] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uTe3H-00084G-Br; Mon, 23 Jun 2025 12:05:23 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Olivier Benjamin <olivier.benjamin@bootlin.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
 Nicholas Roth <nicholas@rothemail.net>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, imx@lists.linux.dev,
 ~diederik/pine64-discuss@lists.sr.ht, Dragan Simic <dsimic@manjaro.org>,
 Ondrej Jirman <megi@xff.cz>
Subject: Re: [PATCH v4 0/4] Describe the cameras in the PinePhone Pro dts
Date: Mon, 23 Jun 2025 12:05:22 +0200
Message-ID: <13788127.uLZWGnKmhe@phil>
In-Reply-To: <aFj4kAXEhrR4Wbnz@kekkonen.localdomain>
References: <20250620-camera-v4-0-0201a8ed5fae@bootlin.com>
 <aFj4kAXEhrR4Wbnz@kekkonen.localdomain>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250623_030529_635615_CA0B1B99 
X-CRM114-Status: GOOD (  21.61  )
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

SGksCgpBbSBNb250YWcsIDIzLiBKdW5pIDIwMjUsIDA4OjQ3OjQ0IE1pdHRlbGV1cm9ww6Rpc2No
ZSBTb21tZXJ6ZWl0IHNjaHJpZWIgU2FrYXJpIEFpbHVzOgo+IEhpIE9saXZpZXIsCj4gCj4gT24g
RnJpLCBKdW4gMjAsIDIwMjUgYXQgMDU6MjE6MzFQTSArMDIwMCwgT2xpdmllciBCZW5qYW1pbiB3
cm90ZToKPiA+IFRoaXMgc2VyaWVzIGFkZHMgc3VwcG9ydCBmb3IgdGhlIFBpbmU2NCBQaW5lUGhv
bmUgUHJvJ3MgcmVhciBhbmQgZnJvbnQKPiA+IGNhbWVyYXMgaW4gRGV2aWNlIFRyZWUuCj4gPiBU
aGlzIGlzIGJhc2VkIG9uIHNvbWUgb2YgT25kcmVqIEppcm1hbidzIHBhdGNoZXMgaG9zdGVkIGlu
IGhpcyB0cmVlIGF0Cj4gPiBodHRwczovL2NvZGViZXJnLm9yZy9tZWdpL2xpbnV4LCBidXQgSSBo
YXZlIGFsc28gZnVsbHkgcmV2aWV3ZWQgYW5kCj4gPiByZS13cml0dGVuIHRoZSBjb2RlIGZyb20g
dGhlIFJLMzM5OSBkYXRhc2hlZXQsIHRoZSBQaW5lUGhvbmUgUHJvCj4gPiBzY2hlbWF0aWMsIGFu
ZCB0aGUgSU1YMjU4LTBBUUg1IHNvZnR3YXJlIHJlZmVyZW5jZSBtYW51YWwuCj4gPiAKPiA+IEkg
aGF2ZSB0ZXN0ZWQgdGhlc2UgY2hhbmdlcyBvbiBteSBQaW5lUGhvbmUgUHJvIGFuZCBhbSBhYmxl
IHRvIHRha2UKPiA+IHBob3RvcyBmcm9tIGJvdGggY2FtZXJhcyB1c2luZyBsaWJjYW1lcmEncyBj
YW0uCj4gPiAKPiA+IFRoaXMgc2VyaWVzIGhhcyByYWlzZWQgYSBxdWVzdGlvbiBhYm91dCB0aGUg
cHJvcGVyIGxhYmVsIG5hbWUgZm9yIHRoZQo+ID4gZnJvbnQvdXNlciBjYW1lcmEgYW5kIHJlYXIv
d29ybGQgY2FtZXJhIGZvciBwaG9uZXMuCj4gPiBUaGlzIHNlcmllcyBpcyB1c2luZyAidWNhbSIg
YW5kICJ3Y2FtIiwgd2hpY2ggaXMgdXNlZCBpbiBhIGZldyBvdGhlcgo+ID4gUm9ja3NoaXAgRFRC
czoKPiA+ICAtIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcHgzMC1ldmIuZHRzCj4gPiAg
LSByazMzOTktZ3J1LXNjYXJsZXQuZHRzaQo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBPbGl2aWVy
IEJlbmphbWluIDxvbGl2aWVyLmJlbmphbWluQGJvb3RsaW4uY29tPgo+IAo+IFRoYW5rcyBmb3Ig
dGhlIHBhdGNoZXMuCj4gCj4gSSd2ZSBwaWNrZWQgdGhlIGZpcnN0IHR3byBpbiB0aGUgc2V0LCBw
cmVzdW1hYmx5IHRoZSByZXN0IHdpbGwgYmUgbWVyZ2VkCj4gdmlhIGFub3RoZXIgdHJlZT8KCmNv
cnJlY3QsIGFuZCB3aXRoIHRoZSBmaXJzdCB0d28gYmVpbmcgYXBwbGllZCwgSSBjYW4gbm93IGFs
c28gc2FmZWx5IHBpY2sKdGhlIG90aGVyIHR3byA6LSkKClRoYW5rcyBhIGxvdApIZWlrbwoKCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

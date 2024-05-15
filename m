Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EADB5C25B78
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 May 2024 10:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uGi4PG1KUmPiB+1WsBCl/9jdjf4hodwZoGe6M3uIrNE=; b=xZorQq5TtRnKN4
	DDteGfdPOG9Y8NPC0U9dL/OfnC9O4+P7yrLem+hDrCQQL0U/IqjRb/C6RuoauaOZ6y6BLGzoIC5c5
	ixCvjXcFfkd+RC99ZsxT570+t4ni7OFnSZ5m4sQ9WGAKsHr9ro6H4pN1MijAYL2IeqsF41gY/M6JW
	IXoJ/rb9Z7ZkcoMxIcEJ/d+eK7TfCCxBEioaeD97VDw5SP5NBGX5sBBIOhuCIrax1t8b0Pw+ASQ9Z
	BRgcn7SzHB//krR9Kay46TXtwPJvc6SuEuRHulHTdBYfw8119bFANZkrjQIiFhXygSw/eLbXVYqSz
	ua03fXRYgikui2iIC+9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7BvP-00000001Ewp-3GSo;
	Wed, 15 May 2024 10:31:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7BvM-00000001Euo-32ZN
	for linux-rockchip@lists.infradead.org;
	Wed, 15 May 2024 10:31:54 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1s7Bus-0002Hu-Fl; Wed, 15 May 2024 12:31:22 +0200
Message-ID: <0642186160bb31ca603b754a67aba47da1af716c.camel@pengutronix.de>
Subject: Re: [PATCH 00/14] improve Analogix DP AUX channel handling
From: Lucas Stach <l.stach@pengutronix.de>
To: Robert Foss <rfoss@kernel.org>
Cc: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>, Andy Yan
 <andy.yan@rock-chips.com>, Sandy Huang <hjc@rock-chips.com>, Jingoo Han
 <jingoohan1@gmail.com>, Inki Dae <inki.dae@samsung.com>, Seung-Woo Kim
 <sw0312.kim@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong
 <neil.armstrong@linaro.org>, Laurent Pinchart
 <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 linux-arm-kernel@lists.infradead.org,  linux-samsung-soc@vger.kernel.org,
 linux-rockchip@lists.infradead.org,  dri-devel@lists.freedesktop.org,
 kernel@pengutronix.de,  patchwork-lst@pengutronix.de
Date: Wed, 15 May 2024 12:31:18 +0200
In-Reply-To: <CAN6tsi73ks50-Xg78Jpj6Me80hpaR0ww=RXOMKJoT2V6Zg8_Yg@mail.gmail.com>
References: <20240503151129.3901815-1-l.stach@pengutronix.de>
	 <CAN6tsi73ks50-Xg78Jpj6Me80hpaR0ww=RXOMKJoT2V6Zg8_Yg@mail.gmail.com>
User-Agent: Evolution 3.48.4 (3.48.4-1.fc38) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240515_033152_775078_248AB6CA 
X-CRM114-Status: GOOD (  25.63  )
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

SGkgUm9iZXJ0LAoKQW0gRGllbnN0YWcsIGRlbSAwNy4wNS4yMDI0IHVtIDE1OjEwICswMjAwIHNj
aHJpZWIgUm9iZXJ0IEZvc3M6Cj4gT24gRnJpLCBNYXkgMywgMjAyNCBhdCA1OjEy4oCvUE0gTHVj
YXMgU3RhY2ggPGwuc3RhY2hAcGVuZ3V0cm9uaXguZGU+IHdyb3RlOgo+ID4gCj4gPiBDdXJyZW50
bHkgdGhlIEFVWCBjaGFubmVsIHN1cHBvcnQgaW4gdGhlIEFuYWxvZ2l4IERQIGRyaXZlciBpcyBz
ZXZlcmVseQo+ID4gbGltaXRlZCBhcyB0aGUgQVVYIGJsb2NrIG9mIHRoZSBicmlkZ2UgaXMgb25s
eSBpbml0aWFsaXplZCB3aGVuIHRoZSB2aWRlbwo+ID4gbGluayBpcyB0byBiZSBlbmFibGVkLiBU
aGlzIGlzIG9rYXkgZm9yIHRoZSBwdXJwb3NlcyBvZiBsaW5rIHRyYWluaW5nLAo+ID4gYnV0IGRv
ZXMgbm90IGFsbG93IHRvIGRldGVjdCBkaXNwbGF5cyBieSBwcm9iaW5nIGZvciBFRElELiBUaGlz
IHNlcmllcwo+ID4gcmV3b3JrcyB0aGUgZHJpdmVyIHRvIGFsbG93IEFVWCB0cmFuc2FjdGlvbnMg
YmVmb3JlIHRoZSB2aWRlbyBsaW5rIGlzCj4gPiBhY3RpdmUuCj4gPiAKPiA+IEFzIHRoaXMgcmVx
dWlyZXMgdG8gcmV3b3JrIHNvbWUgb2YgdGhlIGNvbnRyb2xsZXIgaW5pdGlhbGl6YXRpb24gYW5k
Cj4gPiBhbHNvIGhhbmRsaW5nIG9mIGJvdGggaW50ZXJuYWwgYW5kIGV4dGVybmFsIGNsb2Nrcywg
dGhlIHNlcmllcyBpbmNsdWRlcwo+ID4gcXVpdGUgYSBmZXcgY2hhbmdlcyB0byBhZGQgYmV0dGVy
IHJ1bnRpbWUgUE0gaGFuZGxpbmcuCj4gPiAKPiA+IEx1Y2FzIFN0YWNoICgxNCk6Cj4gPiAgIGRy
bS9icmlkZ2U6IGFuYWxvZ2l4X2RwOiByZW1vdmUgdW51c2VkIHBsYXRmb3JtIHBvd2VyX29uX2Vu
ZCBjYWxsYmFjawo+ID4gICBkcm0vcm9ja2NoaXA6IGFuYWxvZ2l4X2RwOiBhZGQgcnVudGltZSBQ
TSBoYW5kbGluZwo+ID4gICBkcm0vYnJpZGdlOiBhbmFsb2dpeF9kcDogcmVnaXN0ZXIgQVVYIGJ1
cyBhZnRlciBlbmFibGluZyBydW50aW1lIFBNCj4gPiAgIGRybS9icmlkZ2U6IGFuYWxvZ2l4X2Rw
OiBoYW5kbGUgY2xvY2sgdmlhIHJ1bnRpbWUgUE0KPiA+ICAgZHJtL2JyaWRnZTogYW5hbG9naXhf
ZHA6IHJlbW92ZSB1bnVzZWQgYW5hbG9naXhfZHBfcmVtb3ZlCj4gPiAgIGRybS9icmlkZ2U6IGFu
YWxvZ2l4X2RwOiByZW1vdmUgY2xrIGhhbmRsaW5nIGZyb20KPiA+ICAgICBhbmFsb2dpeF9kcF9z
ZXRfYnJpZGdlCj4gPiAgIGRybS9icmlkZ2U6IGFuYWxvZ2l4X2RwOiBtb3ZlIHBsYXRmb3JtIGFu
ZCBQSFkgcG93ZXIgaGFuZGxpbmcgaW50bwo+ID4gICAgIHJ1bnRpbWUgUE0KPiA+ICAgZHJtL2Jy
aWRnZTogYW5hbG9naXhfZHA6IG1vdmUgYmFzaWMgY29udHJvbGxlciBpbml0IGludG8gcnVudGlt
ZSBQTQo+ID4gICBkcm0vYnJpZGdlOiBhbmFsb2dpeF9kcDogcmVtb3ZlIFBMTCBsb2NrIGNoZWNr
IGZyb20KPiA+ICAgICBhbmFsb2dpeF9kcF9jb25maWdfdmlkZW8KPiA+ICAgZHJtL2JyaWRnZTog
YW5hbG9naXhfZHA6IG1vdmUgbWFjcm8gcmVzZXQgYWZ0ZXIgbGluayBiYW5kd2lkdGggc2V0dGlu
Zwo+ID4gICBkcm0vYnJpZGdlOiBhbmFsb2dpeF9kcDogZG9uJ3Qgd2FpdCBmb3IgUExMIGxvY2sg
dG9vIGVhcmx5Cj4gPiAgIGRybS9icmlkZ2U6IGFuYWxvZ2l4X2RwOiBzaW1wbGlmeSBhbmQgY29y
cmVjdCBQTEwgbG9jayBjaGVja3MKPiA+ICAgZHJtL2JyaWRnZTogYW5hbG9naXhfZHA6IG9ubHkg
cmVhZCBBVVggc3RhdHVzIHdoZW4gYW4gZXJyb3Igb2NjdXJlZAo+ID4gICBkcm0vYnJpZGdlOiBh
bmFsb2dpeF9kcDogaGFuZGxlIEFVWCB0cmFuc2ZlciB0aW1lb3V0cwo+ID4gCj4gPiAgLi4uL2Ry
bS9icmlkZ2UvYW5hbG9naXgvYW5hbG9naXhfZHBfY29yZS5jICAgIHwgMTk2ICsrKysrKysrLS0t
LS0tLS0tLQo+ID4gIC4uLi9kcm0vYnJpZGdlL2FuYWxvZ2l4L2FuYWxvZ2l4X2RwX2NvcmUuaCAg
ICB8ICAgNyArLQo+ID4gIC4uLi9ncHUvZHJtL2JyaWRnZS9hbmFsb2dpeC9hbmFsb2dpeF9kcF9y
ZWcuYyB8ICAzOCArKy0tCj4gPiAgLi4uL2dwdS9kcm0vYnJpZGdlL2FuYWxvZ2l4L2FuYWxvZ2l4
X2RwX3JlZy5oIHwgICA5ICsKPiA+ICBkcml2ZXJzL2dwdS9kcm0vZXh5bm9zL2V4eW5vc19kcC5j
ICAgICAgICAgICAgfCAgIDUgKy0KPiA+ICAuLi4vZ3B1L2RybS9yb2NrY2hpcC9hbmFsb2dpeF9k
cC1yb2NrY2hpcC5jICAgfCAgMjYgKy0tCj4gPiAgaW5jbHVkZS9kcm0vYnJpZGdlL2FuYWxvZ2l4
X2RwLmggICAgICAgICAgICAgIHwgICA0ICstCj4gPiAgNyBmaWxlcyBjaGFuZ2VkLCAxMjAgaW5z
ZXJ0aW9ucygrKSwgMTY1IGRlbGV0aW9ucygtKQo+ID4gCj4gPiAtLQo+ID4gMi4zOS4yCj4gPiAK
PiAKPiBUaGVyZSBhcmUgc29tZSBjaGVja3BhdGNoIC0tc3RyaWN0IHdhcm5pbmdzLCBhbmQgdGhl
IHBhdGNoIDEwLzE0IGRvZXMKPiBub3QgYXBwbHkuIE90aGVyIHRoYW4gdGhhdCB0aGUgc2VyaWVz
IGxvb2tzIHZlcnkgZ29vZC4KPiAKPiBNYXliZSByZWJhc2Ugb24gZHJtLW1pc2MvZHJtLW1pc2Mt
bmV4dCwgZml4IHRoZSBhcHBsaWNhYmxlIGNoZWNrcGF0Y2gKPiAtLXN0cmljdCB3YXJuaW5ncyBh
bmQgc2VuZCBhIG5ldyB2ZXJzaW9uIG9mIHRoaXMgc2VyaWVzLiBUaGVuIHRoZSBsYXN0Cj4gcGF0
Y2hlcyBjYW4gYmUgcmV2aWV3ZWQuCgpUaGFua3MgZm9yIHRoZSByZXZpZXcgc28gZmFyLiBQYXRj
aCAxMC8xNCBwcm9iYWJseSBkb2Vzbid0IGFwcGx5LCBhcyBJCmJhc2VkIHRoZSBzZXJpZXMgb24g
c29tZSBwYXRjaGVzIEkgc2VudCBlYXJsaWVyIFsxXS4gTWF5YmUgeW91IGFyZSBhbHNvCndpbGxp
bmcgdG8gdGFrZSBhIGxvb2sgYXQgdGhvc2UsIHNvIEkgY291bGQgc3F1YXNoIHRoZW0gaW50byBh
IHNpbmdsZQpzZXJpZXMgZm9yIHRoZSByZXNlbmQ/CgpSZWdhcmRzLApMdWNhcwoKWzFdIGh0dHBz
Oi8vbG9yZS5rZXJuZWwub3JnL2RyaS1kZXZlbC8yMDI0MDMxODIwMzkyNS4yODM3Njg5LTEtbC5z
dGFjaEBwZW5ndXRyb25peC5kZS8KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK

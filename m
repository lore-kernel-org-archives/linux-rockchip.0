Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62289C55ABF
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Aug 2026 11:19:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qCbpLWcpsXf60WAfvyAQ5f6jdssbA0Rrt1MDtOx86Tk=; b=PoNVCI4kaUIN9s
	sxWH+eiHmXYsTHFl9HrXNDaZskYoRvNTd2EeUeI1Nl3zoN/4Le8crk7nJiH60qe7L5mkmt3+NZpsR
	PLV8a75JU/Y3KjV0uQiIzsoa/88i0lma33U08TEdUhqzfe4a0ahZ/JZiD3wPzsltnajuNPgl7vIbn
	MFEZWTw5lQt0zQyoSw69iVpAGcIAF69WqUGKGohCDyPC+iS/Y8r4JtwUqE/kFdyv9cPaf6LSo5Dke
	cSUEfTypwLbTaST3vLqeGfiUvPevcgHiLn+iH50i4cG6qV8DS+wivBoxwTwPhMw+0yJSVDoVCg6Qw
	AdSUxLWMQIT9796TyBrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrw8F-00000005d4K-34FW;
	Thu, 06 Aug 2026 11:19:27 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrw8C-00000005d3i-1lDR;
	Thu, 06 Aug 2026 11:19:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1786015158; bh=VZJLBZnRyPxnCLoEjoQyTL2E3KhxDtuYstjmKXmloU4=;
	h=Date:From:To:Cc:Subject:X-My-GPG-KeyId:References:From;
	b=t+gQlB1V0eTdunNlGu7Efvhp5s23euUhKrq6r0mCrUKAP+ZyJPCZcjD5rWEJV0a8G
	 +do9zHUtckn+wcm2J/HtiEghohNvu6748gAEhWdbxh6GdmWctUq/1GcJqgWQeAKKSH
	 Xk/5pR+QEFiuQthNPkjj66Ko3Zv2jBQJIpVixhp0=
Date: Thu, 6 Aug 2026 13:19:18 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
To: David Heidelberg <david@ixit.cz>
Cc: Sakari Ailus <sakari.ailus@linux.intel.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Olivier Benjamin <olivier.benjamin@bootlin.com>, 
	Manuel Traut <manut@mecka.net>, Alexander Warnecke <awarnecke002@hotmail.com>, 
	Frank Li <Frank.Li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	Shawn Guo <shawnguo@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
	linux-media@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, phone-devel@vger.kernel.org, 
	imx@lists.linux.dev, stable@vger.kernel.org
Subject: Re: [PATCH 2/4] arm64: dts: rockchip: rk3399-pinephone-pro: DW9714
 coil requires higher voltage
Message-ID: <galrq4ug3hhny2ivpylqwuztwv7vnqvm6sdhlu6pucxk6qy2mz@zxw4ckkxj2sh>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>, 
	David Heidelberg <david@ixit.cz>, Sakari Ailus <sakari.ailus@linux.intel.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Olivier Benjamin <olivier.benjamin@bootlin.com>, 
	Manuel Traut <manut@mecka.net>, Alexander Warnecke <awarnecke002@hotmail.com>, 
	Frank Li <Frank.Li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	Shawn Guo <shawnguo@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
	linux-media@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, phone-devel@vger.kernel.org, 
	imx@lists.linux.dev, stable@vger.kernel.org
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
References: <20260801-pp-pro-camera-v1-0-7b4d90788f9f@ixit.cz>
 <20260801-pp-pro-camera-v1-2-7b4d90788f9f@ixit.cz>
 <2j7ogeqj565sftp5wzqvtzi2id76fof623bifbmyu6ckhf6vm6@ya7h4tp5i4qf>
 <7d55eaba-967c-4de6-8021-6b2d17670b1f@ixit.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7d55eaba-967c-4de6-8021-6b2d17670b1f@ixit.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260806_041925_056659_4BF9BA6C 
X-CRM114-Status: GOOD (  27.18  )
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

SGksCgpPbiBUdWUsIEF1ZyAwNCwgMjAyNiBhdCAxMToxMjoyMUFNICswMjAwLCBEYXZpZCBIZWlk
ZWxiZXJnIHdyb3RlOgo+IE9uIDA0LzA4LzIwMjYgMDk6MzksIE9uZMWZZWogSmlybWFuIHdyb3Rl
Ogo+ID4gSGksCj4gPiAKPiA+IE9uIFNhdCwgQXVnIDAxLCAyMDI2IGF0IDAyOjM1OjIxQU0gKzAy
MDAsIERhdmlkIEhlaWRlbGJlcmcgdmlhIEI0IFJlbGF5IHdyb3RlOgo+ID4gPiBGcm9tOiBEYXZp
ZCBIZWlkZWxiZXJnIDxkYXZpZEBpeGl0LmN6Pgo+ID4gPiAKPiA+ID4gQnkgZGF0YXNoZWV0IHRo
ZSBWREQgKGluLWtlcm5lbCBuYW1lZCB2Y2MpIHJhbmdlIGlzIGJldHdlZW4gMi4zIHRvIDQuMyBW
Lgo+ID4gPiBVc3VhbGx5IGl0J3MgYXJvdW5kIDIuOCBWLiBIZXJlIGl0IG1hdGNoZXMgdGhlIGF2
ZGQydjhfZHZwLgo+ID4gPiAKPiA+ID4gRml4ZXM6IDkzMzZlYjgyOWExOCAoImFybTY0OiBkdHM6
IHJvY2tjaGlwOiBkZXNjcmliZSBJMmMgQnVzIDEgYW5kIElNWDI1OCB3b3JsZCBjYW1lcmEgb24g
UGluZVBob25lIFBybyIpCj4gPiA+IENjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnCj4gPiA+IFNp
Z25lZC1vZmYtYnk6IERhdmlkIEhlaWRlbGJlcmcgPGRhdmlkQGl4aXQuY3o+Cj4gPiA+IC0tLQo+
ID4gPiAgIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXBpbmVwaG9uZS1wcm8u
ZHRzIHwgMiArLQo+ID4gPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxl
dGlvbigtKQo+ID4gPiAKPiA+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszMzk5LXBpbmVwaG9uZS1wcm8uZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazMzOTktcGluZXBob25lLXByby5kdHMKPiA+ID4gaW5kZXggZDQ2Y2RmZTNmNzg0OS4u
YmRlMzVkOWIyMjYzZSAxMDA2NDQKPiA+ID4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazMzOTktcGluZXBob25lLXByby5kdHMKPiA+ID4gKysrIGIvYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9yazMzOTktcGluZXBob25lLXByby5kdHMKPiA+ID4gQEAgLTQ3MywxNyAr
NDczLDE3IEBAIHdjYW1fb3V0OiBlbmRwb2ludCB7Cj4gPiA+ICAgCQkJfTsKPiA+ID4gICAJCX07
Cj4gPiA+ICAgCX07Cj4gPiA+ICAgCXdjYW1fbGVuczogY2FtZXJhLWxlbnNAYyB7Cj4gPiA+ICAg
CQljb21wYXRpYmxlID0gImRvbmd3b29uLGR3OTcxNCI7Cj4gPiA+ICAgCQlyZWcgPSA8MHgwYz47
Cj4gPiA+ICAgCQkvKiBTYW1lIEkyYyBidXMgYXMgYm90aCBjYW1lcmFzLCBkZXBlbmRzIG9uIHZj
Y2ExdjhfY29kZWMgZm9yIHBvd2VyLiAqLwo+ID4gPiAtCQl2Y2Mtc3VwcGx5ID0gPCZ2Y2Mxdjhf
ZHZwPjsKPiA+ID4gKwkJdmNjLXN1cHBseSA9IDwmYXZkZDJ2OF9kdnA+Owo+ID4gCj4gPiBUaGlz
IGRvZXMgbm90IG1hdGNoIHJlYWxpdHksIHNjaGVtYXRpYyBzYXlzIGl0J3MgVkNDMlY4X0RWUDoK
PiA+IAo+ID4gCWh0dHBzOi8veGZmLmN6L2RsL3RtcC82MjUzYTA0NjUzMjlkZjQxLnBuZwo+IAo+
IEFob2osCj4gCj4gdGhhbmtzIGZvciBzcG90dGluZyB0aGlzLCBzaW5jZSBJIGtub3cgeW91IGhh
dmUgdGhlIGRldmljZSwgd291bGQgYmUgdG9vCj4gbXVjaCB0byBhc2sgeW91IHRvIHNlbmQgc3Rh
bmRhbG9uZSBmaXggZm9yIFBQIFBybz8KPiAKPiBJIHdvdWxkIGRyb3AgdGhlIGNoYW5nZSBmcm9t
IHRoZSBzZXJpZXMuCgpPay4gSnVzdCBmb3IgdGhlIHJlZmVyZW5jZSwgdmNjMXY4X2R2cCBoZXJl
IGZlZWRzIGFuIGVuYWJsZSBwaW4gZm9yIFZDQzJWOF9EVlAKTERPIHJlZ3VsYXRvciAod2hpY2gg
aXMgc3VwcGxpZWQgZnJvbSBWQ0MzVjNfU1lTIGFuZCBub3QgZGVzY3JpYmVkIGluIERULCB5ZXQp
LgpTbyBpbiBwcmFjdGljZSBlbmFibGluZyB2Y2MxdjhfZHZwIGVuYWJsZXMgYm90aCBWQ0MyVjhf
RFZQIGFuZCBBVkREMlY4X0RWUCBhbmQKd2hpbGUgRFQgZG9lcyBub3QgZGVzY3JpYmUgdGhlIEhX
IGluIGRldGFpbCwgaXQgZGVzY3JpYmVzIHRoZSBvbmx5IHJlZ3VsYXRvcgp0aGF0IGlzIGFjdHVh
bGx5IGNvbnRyb2xsYWJsZSBhbmQgZW5hYmxlcyBhbGwgbmVlZGVkIHBvd2VyIHJhaWxzIGZvciB0
aGUgY2FtZXJhCm1vZHVsZXMgYWxsIGJ5IGl0c2VsZiBpbiBwcm9wZXIgb3JkZXIvdGltaW5nLgoK
Tm90IHN1cmUgd2hhdCdzIHRoZSBEVCBtYWludGFpbmVycyBpZGVhIGhlcmUgYWJvdXQgd2hldGhl
ciBEVCBoYXMgdG8gZGVzY3JpYmUKZXZlcnkgZGV0YWlsIG9mIHBvd2VyIHJhaWxzIHJvdXRpbmcs
IG9yIGp1c3Qgd2hhdCdzIHByYWdtYXRpYy4KCkJlc3QgcmVnYXJkcywKCW8uai4KCj4gRGF2aWQK
PiAKPiBQLlMuIEkgbm90aWNlZCBJIGRpZG4ndCBtYXJrIHRoaXMgc2VyaWVzIFJGQy4gVG9vIGxh
dGUuCj4gCj4gPiAKPiA+IHJlZ2FyZHMsCj4gPiAJby4KPiA+IAo+ID4gPiAgIAl9Owo+ID4gPiAg
IAl1Y2FtOiBjYW1lcmFAMzYgewo+ID4gPiAgIAkJY29tcGF0aWJsZSA9ICJvdnRpLG92ODg1OCI7
Cj4gPiA+ICAgCQlyZWcgPSA8MHgzNj47Cj4gPiA+ICAgCQljbG9ja3MgPSA8JmNydSBTQ0xLX0NJ
Rl9PVVQ+OyAvKiBNSVBJX01DTEsxLCBkZXJpdmVkIGZyb20gQ0lGX0NMSzAgKi8KPiA+ID4gICAJ
CWNsb2NrLW5hbWVzID0gInh2Y2xrIjsKPiA+ID4gICAJCWRvdmRkLXN1cHBseSA9IDwmdmNjMXY4
X2R2cD47Cj4gPiA+IAo+ID4gPiAtLSAKPiA+ID4gMi41My4wCj4gPiA+IAo+ID4gPiAKPiAKPiAt
LSAKPiBEYXZpZCBIZWlkZWxiZXJnCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

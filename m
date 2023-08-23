Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8FB32EE49A5
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Aug 2023 03:02:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uSzLH++g6eut27pXwFOTQPEpYoRd1fSYLH03yiwPp/0=; b=HDWJcIjcwwgI79
	fwJfjV/PXGMrOK/Egufe9mMtmV/8LDf1mTe8umzuWin4SR6sVEnYX0nvhfirW1jAIGbnnffbiDBlz
	zeKuM9ioAv2X7uUFUR8aHT6P18N/NNfyOGyiOgo4rAJgJzVccu13DOzsN7PrDF1nQ9upiN4HfjSV7
	IV5jUsjohPV00mpluCzMVC9W6reR4m91nsQF37Te1Z1jCcTO4TpGoSE/961xkPp9FS6ZOWS+QQUvS
	QrKoPgi3HJoPLmeZvKNJ0eWZ1flvRjJtn7uLbaeu3AYT07uG1lOO84eqdNi7ztLSBYdABSQUwp4S4
	+TDcV667wVOALSRG94dQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qYe8c-00H7He-2G;
	Wed, 23 Aug 2023 03:02:30 +0000
Received: from 167-179-156-38.a7b39c.syd.nbn.aussiebb.net ([167.179.156.38])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYe8X-00H7GK-1Y;
	Wed, 23 Aug 2023 03:02:28 +0000
Received: from loth.rohan.me.apana.org.au ([192.168.167.2])
	by formenos.hmeau.com with smtp (Exim 4.94.2 #2 (Debian))
	id 1qYe6H-006o9O-CL; Wed, 23 Aug 2023 11:00:06 +0800
Received: by loth.rohan.me.apana.org.au (sSMTP sendmail emulation); Wed, 23 Aug 2023 11:00:06 +0800
Date: Wed, 23 Aug 2023 11:00:06 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Rob Herring <robh@kernel.org>
Cc: Corentin Labbe <clabbe.montjoie@gmail.com>,
	"David S. Miller" <davem@davemloft.net>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Neal Liu <neal_liu@aspeedtech.com>, Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@aj.id.au>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Claudiu Beznea <claudiu.beznea@microchip.com>,
	Tudor Ambarus <tudor.ambarus@linaro.org>,
	Horia =?utf-8?Q?Geant=C4=83?= <horia.geanta@nxp.com>,
	Pankaj Gupta <pankaj.gupta@nxp.com>,
	Gaurav Jain <gaurav.jain@nxp.com>,
	Gilad Ben-Yossef <gilad@benyossef.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Hans Ulli Kroll <ulli.kroll@googlemail.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Daniele Alessandrelli <daniele.alessandrelli@intel.com>,
	Declan Murphy <declan.murphy@intel.com>,
	Heiko Stuebner <heiko@sntech.de>, Vladimir Zapolskiy <vz@mleia.com>,
	Jia Jie Ho <jiajie.ho@starfivetech.com>,
	William Qiu <william.qiu@starfivetech.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Michal Simek <michal.simek@amd.com>, Harsha <harsha.harsha@amd.com>,
	devicetree@vger.kernel.org, linux-crypto@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org, linux-samsung-soc@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: Re: [PATCH] crypto: Explicitly include correct DT includes
Message-ID: <ZOV2Nn4o8Ldy9P1i@gondor.apana.org.au>
References: <20230714174421.4054194-1-robh@kernel.org>
 <CAL_JsqL_CvroupJEFwrjt8WOq=4WBxvE3sOTMnY8hEuBAMG=1g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_JsqL_CvroupJEFwrjt8WOq=4WBxvE3sOTMnY8hEuBAMG=1g@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230822_200225_525223_A9D818A6 
X-CRM114-Status: GOOD (  16.39  )
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

T24gVHVlLCBBdWcgMjIsIDIwMjMgYXQgMDU6NDA6NTdQTSAtMDUwMCwgUm9iIEhlcnJpbmcgd3Jv
dGU6Cj4gT24gRnJpLCBKdWwgMTQsIDIwMjMgYXQgMTI6NDTigK9QTSBSb2IgSGVycmluZyA8cm9i
aEBrZXJuZWwub3JnPiB3cm90ZToKPiA+Cj4gPiBUaGUgRFQgb2ZfZGV2aWNlLmggYW5kIG9mX3Bs
YXRmb3JtLmggZGF0ZSBiYWNrIHRvIHRoZSBzZXBhcmF0ZQo+ID4gb2ZfcGxhdGZvcm1fYnVzX3R5
cGUgYmVmb3JlIGl0IGFzIG1lcmdlZCBpbnRvIHRoZSByZWd1bGFyIHBsYXRmb3JtIGJ1cy4KPiA+
IEFzIHBhcnQgb2YgdGhhdCBtZXJnZSBwcmVwcGluZyBBcm0gRFQgc3VwcG9ydCAxMyB5ZWFycyBh
Z28sIHRoZXkKPiA+ICJ0ZW1wb3JhcmlseSIgaW5jbHVkZSBlYWNoIG90aGVyLiBUaGV5IGFsc28g
aW5jbHVkZSBwbGF0Zm9ybV9kZXZpY2UuaAo+ID4gYW5kIG9mLmguIEFzIGEgcmVzdWx0LCB0aGVy
ZSdzIGEgcHJldHR5IG11Y2ggcmFuZG9tIG1peCBvZiB0aG9zZSBpbmNsdWRlCj4gPiBmaWxlcyB1
c2VkIHRocm91Z2hvdXQgdGhlIHRyZWUuIEluIG9yZGVyIHRvIGRldGFuZ2xlIHRoZXNlIGhlYWRl
cnMgYW5kCj4gPiByZXBsYWNlIHRoZSBpbXBsaWNpdCBpbmNsdWRlcyB3aXRoIHN0cnVjdCBkZWNs
YXJhdGlvbnMsIHVzZXJzIG5lZWQgdG8KPiA+IGV4cGxpY2l0bHkgaW5jbHVkZSB0aGUgY29ycmVj
dCBpbmNsdWRlcy4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBSb2IgSGVycmluZyA8cm9iaEBrZXJu
ZWwub3JnPgo+ID4gLS0tCj4gPiAgZHJpdmVycy9jcnlwdG8vYWxsd2lubmVyL3N1bjRpLXNzL3N1
bjRpLXNzLWNvcmUuYyAgIHwgMSAtCj4gPiAgZHJpdmVycy9jcnlwdG8vYWxsd2lubmVyL3N1bjhp
LWNlL3N1bjhpLWNlLWNvcmUuYyAgIHwgMSAtCj4gPiAgZHJpdmVycy9jcnlwdG8vYWxsd2lubmVy
L3N1bjhpLXNzL3N1bjhpLXNzLWNvcmUuYyAgIHwgMSAtCj4gPiAgZHJpdmVycy9jcnlwdG8vYW1s
b2dpYy9hbWxvZ2ljLWd4bC1jb3JlLmMgICAgICAgICAgIHwgMSAtCj4gPiAgZHJpdmVycy9jcnlw
dG8vYXNwZWVkL2FzcGVlZC1hY3J5LmMgICAgICAgICAgICAgICAgIHwgMyAtLS0KPiA+ICBkcml2
ZXJzL2NyeXB0by9hdG1lbC1hZXMuYyAgICAgICAgICAgICAgICAgICAgICAgICAgfCA2ICsrLS0t
LQo+ID4gIGRyaXZlcnMvY3J5cHRvL2F0bWVsLWVjYy5jICAgICAgICAgICAgICAgICAgICAgICAg
ICB8IDIgKy0KPiA+ICBkcml2ZXJzL2NyeXB0by9hdG1lbC1zaGEuYyAgICAgICAgICAgICAgICAg
ICAgICAgICAgfCA2ICsrLS0tLQo+ID4gIGRyaXZlcnMvY3J5cHRvL2F0bWVsLXRkZXMuYyAgICAg
ICAgICAgICAgICAgICAgICAgICB8IDYgKystLS0tCj4gPiAgZHJpdmVycy9jcnlwdG8vYmNtL2Np
cGhlci5jICAgICAgICAgICAgICAgICAgICAgICAgIHwgMyArLS0KPiA+ICBkcml2ZXJzL2NyeXB0
by9jYWFtL2N0cmwuYyAgICAgICAgICAgICAgICAgICAgICAgICAgfCAxICsKPiA+ICBkcml2ZXJz
L2NyeXB0by9jYWFtL2pyLmMgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAxICsKPiA+ICBk
cml2ZXJzL2NyeXB0by9jYWFtL3FpLmMgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAxICsK
PiA+ICBkcml2ZXJzL2NyeXB0by9jY3JlZS9jY19kcml2ZXIuYyAgICAgICAgICAgICAgICAgICAg
fCAxIC0KPiA+ICBkcml2ZXJzL2NyeXB0by9leHlub3Mtcm5nLmMgICAgICAgICAgICAgICAgICAg
ICAgICAgfCAyICstCj4gPiAgZHJpdmVycy9jcnlwdG8vZ2VtaW5pL3NsMzUxNi1jZS1jb3JlLmMg
ICAgICAgICAgICAgIHwgMSAtCj4gPiAgZHJpdmVycy9jcnlwdG8vaW1nLWhhc2guYyAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHwgNCArKy0tCj4gPiAgZHJpdmVycy9jcnlwdG8vaW50ZWwva2Vl
bWJheS9rZWVtYmF5LW9jcy1oY3UtY29yZS5jIHwgMyArKy0KPiA+ICBkcml2ZXJzL2NyeXB0by9u
Ml9jb3JlLmMgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAyICstCj4gPiAgZHJpdmVycy9j
cnlwdG8vb21hcC1hZXMuYyAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgMSAtCj4gPiAgZHJp
dmVycy9jcnlwdG8vb21hcC1kZXMuYyAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgMiAtLQo+
ID4gIGRyaXZlcnMvY3J5cHRvL29tYXAtc2hhbS5jICAgICAgICAgICAgICAgICAgICAgICAgICB8
IDEgLQo+ID4gIGRyaXZlcnMvY3J5cHRvL3JvY2tjaGlwL3JrMzI4OF9jcnlwdG8uYyAgICAgICAg
ICAgICB8IDEgLQo+ID4gIGRyaXZlcnMvY3J5cHRvL3M1cC1zc3MuYyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICB8IDEgLQo+ID4gIGRyaXZlcnMvY3J5cHRvL3NhMnVsLmMgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICB8IDMgKystCj4gPiAgZHJpdmVycy9jcnlwdG8vc2FoYXJhLmMgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHwgMSAtCj4gPiAgZHJpdmVycy9jcnlwdG8vc3RhcmZp
dmUvamg3MTEwLWNyeXAuYyAgICAgICAgICAgICAgIHwgMiArLQo+ID4gIGRyaXZlcnMvY3J5cHRv
L3N0YXJmaXZlL2poNzExMC1oYXNoLmMgICAgICAgICAgICAgICB8IDEgLQo+ID4gIGRyaXZlcnMv
Y3J5cHRvL3N0bTMyL3N0bTMyLWNyeXAuYyAgICAgICAgICAgICAgICAgICB8IDIgKy0KPiA+ICBk
cml2ZXJzL2NyeXB0by9zdG0zMi9zdG0zMi1oYXNoLmMgICAgICAgICAgICAgICAgICAgfCAyICst
Cj4gPiAgZHJpdmVycy9jcnlwdG8vdGFsaXRvcy5jICAgICAgICAgICAgICAgICAgICAgICAgICAg
IHwgNCArKy0tCj4gPiAgZHJpdmVycy9jcnlwdG8veGlsaW54L3p5bnFtcC1hZXMtZ2NtLmMgICAg
ICAgICAgICAgIHwgMiArLQo+ID4gIGRyaXZlcnMvY3J5cHRvL3hpbGlueC96eW5xbXAtc2hhLmMg
ICAgICAgICAgICAgICAgICB8IDEgLQo+ID4gIDMzIGZpbGVzIGNoYW5nZWQsIDI1IGluc2VydGlv
bnMoKyksIDQ1IGRlbGV0aW9ucygtKQo+IAo+IFBpbmchCgpTb3JyeSwgSSBtaXNmaWxlZCB0aGlz
IG9uZS4gIEknbGwgZ2V0IG9udG8gaXQgbm93LgoKVGhhbmtzLAotLSAKRW1haWw6IEhlcmJlcnQg
WHUgPGhlcmJlcnRAZ29uZG9yLmFwYW5hLm9yZy5hdT4KSG9tZSBQYWdlOiBodHRwOi8vZ29uZG9y
LmFwYW5hLm9yZy5hdS9+aGVyYmVydC8KUEdQIEtleTogaHR0cDovL2dvbmRvci5hcGFuYS5vcmcu
YXUvfmhlcmJlcnQvcHVia2V5LnR4dAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=

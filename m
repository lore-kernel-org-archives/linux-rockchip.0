Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 830C6FA3741
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Oct 2022 13:56:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tNVzhpNbipyBbJ0+49JjdhpslUSONZ+jCsXPhiH2kQQ=; b=pwE29gnhhArULo
	42deGaTQBGxzokmoBmhSwaIFsn5tRNd1tkTCS3V2hhNq8lngsDUL8/jFbw3YTgoUdMuBynY8jmNwM
	mHFM9OXflDnNCUqlOJn3ffYpGNebRqWqr2zajct6SV3+I5MdGgGcWaFpVSZzhSxivD0Js8TmXvr+N
	1+fJXWX0h/CFzVDq9Qy4FwBrS3IRRen6XriOZzOgrQIA/Jd0YGxQW2wvvqNr/bNyS0Fp2nOmE8adT
	UKbHGnBTRT2/fsKV5CJHBnTRjYvxBDMh0+TlsiPRXMZpYGjNfarEQSgMM/3IyMUnmYZJOUl/LPQ1D
	iySAmH0iuRc88D8gYOEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opVHK-00CAFf-LT; Mon, 31 Oct 2022 13:56:38 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opVHH-00CAEP-R3
	for linux-rockchip@lists.infradead.org; Mon, 31 Oct 2022 13:56:37 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 711C0B816D9;
	Mon, 31 Oct 2022 13:56:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 89213C433D6;
	Mon, 31 Oct 2022 13:56:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667224593;
	bh=iOmwncQH3Y6yGSTU4hQSdlvIACqmymxsbpgLTMPTEXc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=o1HwHqpejoRdZazFe/wHCMougeuGQsGEvil2CCRBhvGFEYwLiNy/lMHZ5ruhOxgt7
	 gtxr4WUQGv9FdirbR1EqGLW/G3JU2zjWh5/N6qM268ISdVk2MwkUKf4qbWSwZ6n03Y
	 M1oG4mHPLYU+ESN2TvpLb456hu3OMrd32THrmbQqHT+OaBKE6oeQPWqR+lffMFqTHe
	 NknKuplIC2G/yb3yTmG2+LVFQK1x22o/QCYKiXz1OkOxZeZmkjnbn3hLoltZi7SfC/
	 zTx/LVo0xVKVgMvXtKIcxR1NMy9e5lTC9RwaEK6S5uUL734R79Q2+t357WNi5yyW6H
	 l+TAGisiuyi0Q==
Date: Mon, 31 Oct 2022 13:56:26 +0000
From: Lee Jones <lee@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Alessandro Zummo <a.zummo@towertech.it>,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCHv4 07/13] mfd: rk808: split into core and i2c
Message-ID: <Y1/UCkQQXOb38VW+@google.com>
References: <20221020204251.108565-1-sebastian.reichel@collabora.com>
 <20221020204251.108565-8-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221020204251.108565-8-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221031_065636_188382_360CB9A8 
X-CRM114-Status: GOOD (  22.77  )
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

T24gVGh1LCAyMCBPY3QgMjAyMiwgU2ViYXN0aWFuIFJlaWNoZWwgd3JvdGU6Cgo+IFNwbGl0IHJr
ODA4IGludG8gYSBjb3JlIGFuZCBhbiBpMmMgcGFydCBpbiBwcmVwZXJhdGlvbiBmb3IKPiBTUEkg
c3VwcG9ydC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFu
LnJlaWNoZWxAY29sbGFib3JhLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9jbGsvS2NvbmZpZyAgICAg
ICAgICAgICAgICAgICB8ICAgMiArLQo+ICBkcml2ZXJzL2lucHV0L21pc2MvS2NvbmZpZyAgICAg
ICAgICAgIHwgICAyICstCj4gIGRyaXZlcnMvbWZkL0tjb25maWcgICAgICAgICAgICAgICAgICAg
fCAgIDcgKy0KPiAgZHJpdmVycy9tZmQvTWFrZWZpbGUgICAgICAgICAgICAgICAgICB8ICAgMyAr
LQo+ICBkcml2ZXJzL21mZC97cms4MDguYyA9PiByazh4eC1jb3JlLmN9IHwgMjEwICsrKystLS0t
LS0tLS0tLS0tLS0tLS0tLS0tCj4gIGRyaXZlcnMvbWZkL3JrOHh4LWkyYy5jICAgICAgICAgICAg
ICAgfCAyMDkgKysrKysrKysrKysrKysrKysrKysrKysrKwo+ICBkcml2ZXJzL3BpbmN0cmwvS2Nv
bmZpZyAgICAgICAgICAgICAgIHwgICAyICstCj4gIGRyaXZlcnMvcG93ZXIvc3VwcGx5L0tjb25m
aWcgICAgICAgICAgfCAgIDIgKy0KPiAgZHJpdmVycy9yZWd1bGF0b3IvS2NvbmZpZyAgICAgICAg
ICAgICB8ICAgMiArLQo+ICBkcml2ZXJzL3J0Yy9LY29uZmlnICAgICAgICAgICAgICAgICAgIHwg
ICAyICstCj4gIGluY2x1ZGUvbGludXgvbWZkL3JrODA4LmggICAgICAgICAgICAgfCAgIDYgKwo+
ICBzb3VuZC9zb2MvY29kZWNzL0tjb25maWcgICAgICAgICAgICAgIHwgICAyICstCj4gIDEyIGZp
bGVzIGNoYW5nZWQsIDI2MyBpbnNlcnRpb25zKCspLCAxODYgZGVsZXRpb25zKC0pCj4gIHJlbmFt
ZSBkcml2ZXJzL21mZC97cms4MDguYyA9PiByazh4eC1jb3JlLmN9ICg3NSUpCj4gIGNyZWF0ZSBt
b2RlIDEwMDY0NCBkcml2ZXJzL21mZC9yazh4eC1pMmMuYwo+IAo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2Nsay9LY29uZmlnIGIvZHJpdmVycy9jbGsvS2NvbmZpZwo+IGluZGV4IGQ3OTkwNWYzZTE3
NC4uODQ0OGQ2MTZiOWFhIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvY2xrL0tjb25maWcKPiArKysg
Yi9kcml2ZXJzL2Nsay9LY29uZmlnCj4gQEAgLTgzLDcgKzgzLDcgQEAgY29uZmlnIENPTU1PTl9D
TEtfTUFYOTQ4NQo+ICAKPiAgY29uZmlnIENPTU1PTl9DTEtfUks4MDgKPiAgCXRyaXN0YXRlICJD
bG9jayBkcml2ZXIgZm9yIFJLODA1L1JLODA4L1JLODA5L1JLODE3L1JLODE4Igo+IC0JZGVwZW5k
cyBvbiBNRkRfUks4MDgKPiArCWRlcGVuZHMgb24gTUZEX1JLOFhYCj4gIAloZWxwCj4gIAkgIFRo
aXMgZHJpdmVyIHN1cHBvcnRzIFJLODA1LCBSSzgwOSBhbmQgUks4MTcsIFJLODA4IGFuZCBSSzgx
OCBjcnlzdGFsIG9zY2lsbGF0b3IgY2xvY2suCj4gIAkgIFRoZXNlIG11bHRpLWZ1bmN0aW9uIGRl
dmljZXMgaGF2ZSB0d28gZml4ZWQtcmF0ZSBvc2NpbGxhdG9ycywgY2xvY2tlZCBhdCAzMktIeiBl
YWNoLgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2lucHV0L21pc2MvS2NvbmZpZyBiL2RyaXZlcnMv
aW5wdXQvbWlzYy9LY29uZmlnCj4gaW5kZXggOWYwODg5MDBmODYzLi4xODk5YWZlYWVjNDcgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9pbnB1dC9taXNjL0tjb25maWcKPiArKysgYi9kcml2ZXJzL2lu
cHV0L21pc2MvS2NvbmZpZwo+IEBAIC01ODgsNyArNTg4LDcgQEAgY29uZmlnIElOUFVUX1BXTV9W
SUJSQQo+ICAKPiAgY29uZmlnIElOUFVUX1JLODA1X1BXUktFWQo+ICAJdHJpc3RhdGUgIlJvY2tj
aGlwIFJLODA1IFBNSUMgcG93ZXIga2V5IHN1cHBvcnQiCj4gLQlkZXBlbmRzIG9uIE1GRF9SSzgw
OAo+ICsJZGVwZW5kcyBvbiBNRkRfUks4WFgKPiAgCWhlbHAKPiAgCSAgU2VsZWN0IHRoaXMgb3B0
aW9uIHRvIGVuYWJsZSBwb3dlciBrZXkgZHJpdmVyIGZvciBSSzgwNS4KPiAgCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvbWZkL0tjb25maWcgYi9kcml2ZXJzL21mZC9LY29uZmlnCj4gaW5kZXggOGI5
Mzg1NmRlNDMyLi44ZTNkZTQ0M2NjM2QgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tZmQvS2NvbmZp
Zwo+ICsrKyBiL2RyaXZlcnMvbWZkL0tjb25maWcKPiBAQCAtMTIwMSwxMiArMTIwMSwxNyBAQCBj
b25maWcgTUZEX1JDNVQ1ODMKPiAgCSAgQWRkaXRpb25hbCBkcml2ZXJzIG11c3QgYmUgZW5hYmxl
ZCBpbiBvcmRlciB0byB1c2UgdGhlCj4gIAkgIGRpZmZlcmVudCBmdW5jdGlvbmFsaXR5IG9mIHRo
ZSBkZXZpY2UuCj4gIAo+IC1jb25maWcgTUZEX1JLODA4Cj4gK2NvbmZpZyBNRkRfUks4WFgKPiAr
CWJvb2wKPiArCXNlbGVjdCBNRkRfQ09SRQo+ICsKPiArY29uZmlnIE1GRF9SSzhYWF9JMkMKPiAg
CXRyaXN0YXRlICJSb2NrY2hpcCBSSzgwNS9SSzgwOC9SSzgwOS9SSzgxNy9SSzgxOCBQb3dlciBN
YW5hZ2VtZW50IENoaXAiCj4gIAlkZXBlbmRzIG9uIEkyQyAmJiBPRgo+ICAJc2VsZWN0IE1GRF9D
T1JFCj4gIAlzZWxlY3QgUkVHTUFQX0kyQwo+ICAJc2VsZWN0IFJFR01BUF9JUlEKPiArCXNlbGVj
dCBNRkRfUks4WFgKPiAgCWhlbHAKPiAgCSAgSWYgeW91IHNheSB5ZXMgaGVyZSB5b3UgZ2V0IHN1
cHBvcnQgZm9yIHRoZSBSSzgwNSwgUks4MDgsIFJLODA5LAo+ICAJICBSSzgxNyBhbmQgUks4MTgg
UG93ZXIgTWFuYWdlbWVudCBjaGlwcy4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZmQvTWFrZWZp
bGUgYi9kcml2ZXJzL21mZC9NYWtlZmlsZQo+IGluZGV4IDdlZDNlZjRhNjk4Yy4uZWRmODRlODcw
Zjk4IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbWZkL01ha2VmaWxlCj4gKysrIGIvZHJpdmVycy9t
ZmQvTWFrZWZpbGUKPiBAQCAtMjIzLDcgKzIyMyw4IEBAIG9iai0kKENPTkZJR19NRkRfUEFMTUFT
KQkrPSBwYWxtYXMubwo+ICBvYmotJChDT05GSUdfTUZEX1ZJUEVSQk9BUkQpICAgICs9IHZpcGVy
Ym9hcmQubwo+ICBvYmotJChDT05GSUdfTUZEX05UWEVDKQkJKz0gbnR4ZWMubwo+ICBvYmotJChD
T05GSUdfTUZEX1JDNVQ1ODMpCSs9IHJjNXQ1ODMubyByYzV0NTgzLWlycS5vCj4gLW9iai0kKENP
TkZJR19NRkRfUks4MDgpCQkrPSByazgwOC5vCj4gK29iai0kKENPTkZJR19NRkRfUks4WFgpCQkr
PSByazh4eC1jb3JlLm8KPiArb2JqLSQoQ09ORklHX01GRF9SSzhYWF9JMkMpCSs9IHJrOHh4LWky
Yy5vCj4gIG9iai0kKENPTkZJR19NRkRfUk41VDYxOCkJKz0gcm41dDYxOC5vCj4gIG9iai0kKENP
TkZJR19NRkRfU0VDX0NPUkUpCSs9IHNlYy1jb3JlLm8gc2VjLWlycS5vCj4gIG9iai0kKENPTkZJ
R19NRkRfU1lTQ09OKQkrPSBzeXNjb24ubwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21mZC9yazgw
OC5jIGIvZHJpdmVycy9tZmQvcms4eHgtY29yZS5jCj4gc2ltaWxhcml0eSBpbmRleCA3NSUKPiBy
ZW5hbWUgZnJvbSBkcml2ZXJzL21mZC9yazgwOC5jCj4gcmVuYW1lIHRvIGRyaXZlcnMvbWZkL3Jr
OHh4LWNvcmUuYwo+IGluZGV4IGIxNTRjYTk2ZDgxMi4uMDk4NTA2OTcyNzEwIDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvbWZkL3JrODA4LmMKPiArKysgYi9kcml2ZXJzL21mZC9yazh4eC1jb3JlLmMK
PiBAQCAtMywxNiArMyw5IEBACj4gICAqIE1GRCBjb3JlIGRyaXZlciBmb3IgUm9ja2NoaXAgUks4
MDgvUks4MTgKPiAgICoKPiAgICogQ29weXJpZ2h0IChjKSAyMDE0LCBGdXpob3UgUm9ja2NoaXAg
RWxlY3Ryb25pY3MgQ28uLCBMdGQKPiAtICoKPiAtICogQXV0aG9yOiBDaHJpcyBaaG9uZyA8enl3
QHJvY2stY2hpcHMuY29tPgo+IC0gKiBBdXRob3I6IFpoYW5nIFFpbmcgPHpoYW5ncWluZ0Byb2Nr
LWNoaXBzLmNvbT4KPiAtICoKPiAgICogQ29weXJpZ2h0IChDKSAyMDE2IFBIWVRFQyBNZXNzdGVj
aG5payBHbWJICj4gLSAqCj4gLSAqIEF1dGhvcjogV2FkaW0gRWdvcm92IDx3LmVnb3JvdkBwaHl0
ZWMuZGU+Cj4gICAqLwoKVGhlIHBhdGNoIGFuZCB0aGUgcHJlbWlzZSBiZWhpbmQgaXQgbG9vayBy
ZWFzb25hYmxlLgoKV2hhdCdzIHRoZSByZWFzb24gZm9yIHRha2luZyBvdXQgdGhlIEF1dGhvciB0
YWdzPwoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

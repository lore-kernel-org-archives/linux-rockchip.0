Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E034AC05027
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Jan 2023 17:13:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+5Xx+utmtcIJYh4BzyHfpjIyc9J8g9oXVYBJp4dFBBc=; b=oO/Y4lkCQsxaNZ
	76vSW5rCaXK69Xbm+PK3uTYP/DmkIeU/E+lirzloCCHgo5Y5M310UB/8HIpJSiLr6KWPNCQ4cyS4M
	i2+6ouU9xqQ/4bUHIC5zgXMxfvV8L5Wmr8WPQj4BZFftLzg7QfApNqmyD2SetkShbOojM8E2GDgDM
	egOyATrtFDQavyeGxhdq1Io85IEQ+Fis3PU4cVTdu1jqzcabzWlLnbTSjouClTrVPrmM6kIc53wHX
	wvcZ7EPOGmVT28ouP7OABZqNVZabwUdMujheuebpaBDWJ8GuEApjAQ1EL1joRyRhnfWSqC9GkcHcJ
	gCbc6m/Q4ClJ5fwemqjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIuxP-00BTUk-Fw; Fri, 20 Jan 2023 17:13:39 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIurW-00BQfe-6i
	for linux-rockchip@bombadil.infradead.org; Fri, 20 Jan 2023 17:07:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=dtrKyuyZzRJ+HPHUkHZ5acRQfgpE77zdSd6UlikKvhQ=; b=iCb9J2OZQ1p0YT6ItyCsUdHDN4
	4t8ZpXPQj8gq/vsPd5YyZBulvK8SgyDoLQFguUxg4Ik/t4QWDVg7aGl66MSHNoxv2O+q9XE7iTpOQ
	+aj9GJrTySZ7k4kcqGFkAIUPEXgBI7GSJ8Ng5O126tPIAKRs7HBAGgu2RS8OB5p+Cevy7by/ZAi3n
	76CuSSL9lnQL5Zg7ylLoF1gOxaJtuiHntdbF9K5vPdOeOJLnNaKFIS4xqCpEdH8hbEsTXH6asvDQ7
	CKHkBnGze1+lkJ4ZIs8lYnms5J813J10cCfc90dUHo7beoyN2yXfhxJn1zsCMYHxLWOsoivtbxJn5
	czDW2UoQ==;
Received: from ams.source.kernel.org ([145.40.68.75])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pIuF8-000jSv-2L
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Jan 2023 16:27:57 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id E25DDB82916;
	Fri, 20 Jan 2023 16:28:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A8FFC4339C;
	Fri, 20 Jan 2023 16:28:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674232096;
	bh=9/RPi6pw/xT0UDVDrxKzKczKe5NeWC2HStFjAAbJdwk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=a05c2Oiwc60gejDflrrUiHDnmFq+dGW+gEGrdZf46xm0VB3gv/xVALs2UKSsIpZw+
	 MB/YZ7eo4j1tOtfI17S4joyKCdFodVzc07PrRkDyUFZeb+HoGEvjHFQBISERlLKATj
	 eYF7hlDE6mpF0dbIP4N05E5vaNfapDfNtxSpRZAZ0/xeG5+1vcRgNJSyJr3tvprg67
	 wWeB/EhC97VCNLhwtqQOCaUT84dc6CS9vE76Ub4QxnoD7e3cJqDdWYDt2maSXUe+fI
	 Uc0dvRgO6jTvYixqvLCvu/OnNAUZqkSAkX0hwUWokq2aQ0UZgRBF9XBfsx1Jq482cP
	 qQPwdTDJavRPA==
Date: Fri, 20 Jan 2023 16:28:09 +0000
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
Subject: Re: [PATCHv5 05/10] mfd: rk808: split into core and i2c
Message-ID: <Y8rBGdddgjTfm/gU@google.com>
References: <20230109172723.60304-1-sebastian.reichel@collabora.com>
 <20230109172723.60304-6-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230109172723.60304-6-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230120_162755_230979_B512E29B 
X-CRM114-Status: GOOD (  26.62  )
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

T24gTW9uLCAwOSBKYW4gMjAyMywgU2ViYXN0aWFuIFJlaWNoZWwgd3JvdGU6Cgo+IFNwbGl0IHJr
ODA4IGludG8gYSBjb3JlIGFuZCBhbiBpMmMgcGFydCBpbiBwcmVwZXJhdGlvbiBmb3IKPiBTUEkg
c3VwcG9ydC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFu
LnJlaWNoZWxAY29sbGFib3JhLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9jbGsvS2NvbmZpZyAgICAg
ICAgICAgICAgICAgICB8ICAgMiArLQo+ICBkcml2ZXJzL2lucHV0L21pc2MvS2NvbmZpZyAgICAg
ICAgICAgIHwgICAyICstCj4gIGRyaXZlcnMvbWZkL0tjb25maWcgICAgICAgICAgICAgICAgICAg
fCAgIDcgKy0KPiAgZHJpdmVycy9tZmQvTWFrZWZpbGUgICAgICAgICAgICAgICAgICB8ICAgMyAr
LQo+ICBkcml2ZXJzL21mZC97cms4MDguYyA9PiByazh4eC1jb3JlLmN9IHwgMjA5ICsrKysrLS0t
LS0tLS0tLS0tLS0tLS0tLS0tCj4gIGRyaXZlcnMvbWZkL3JrOHh4LWkyYy5jICAgICAgICAgICAg
ICAgfCAyMDkgKysrKysrKysrKysrKysrKysrKysrKysrKysKPiAgZHJpdmVycy9waW5jdHJsL0tj
b25maWcgICAgICAgICAgICAgICB8ICAgMiArLQo+ICBkcml2ZXJzL3Bvd2VyL3N1cHBseS9LY29u
ZmlnICAgICAgICAgIHwgICAyICstCj4gIGRyaXZlcnMvcmVndWxhdG9yL0tjb25maWcgICAgICAg
ICAgICAgfCAgIDIgKy0KPiAgZHJpdmVycy9ydGMvS2NvbmZpZyAgICAgICAgICAgICAgICAgICB8
ICAgMiArLQo+ICBpbmNsdWRlL2xpbnV4L21mZC9yazgwOC5oICAgICAgICAgICAgIHwgICA2ICsK
PiAgc291bmQvc29jL2NvZGVjcy9LY29uZmlnICAgICAgICAgICAgICB8ICAgMiArLQo+ICAxMiBm
aWxlcyBjaGFuZ2VkLCAyNjUgaW5zZXJ0aW9ucygrKSwgMTgzIGRlbGV0aW9ucygtKQo+ICByZW5h
bWUgZHJpdmVycy9tZmQve3JrODA4LmMgPT4gcms4eHgtY29yZS5jfSAoNzYlKQo+ICBjcmVhdGUg
bW9kZSAxMDA2NDQgZHJpdmVycy9tZmQvcms4eHgtaTJjLmMKClsuLi5dCgo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL21mZC9yazh4eC1pMmMuYyBiL2RyaXZlcnMvbWZkL3JrOHh4LWkyYy5jCj4gbmV3
IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAuLjdiYWJiMGUxZTY0Ywo+IC0t
LSAvZGV2L251bGwKPiArKysgYi9kcml2ZXJzL21mZC9yazh4eC1pMmMuYwoKWy4uLl0KCj4gK3N0
YXRpYyBpbnQgcms4eHhfaTJjX2dldF92YXJpYW50KHN0cnVjdCBpMmNfY2xpZW50ICpjbGllbnQp
Cj4gK3sKPiArCXU4IHBtaWNfaWRfbXNiLCBwbWljX2lkX2xzYjsKPiArCWludCBtc2IsIGxzYjsK
PiArCj4gKwlpZiAob2ZfZGV2aWNlX2lzX2NvbXBhdGlibGUoY2xpZW50LT5kZXYub2Zfbm9kZSwg
InJvY2tjaGlwLHJrODE3IikgfHwKPiArCSAgICBvZl9kZXZpY2VfaXNfY29tcGF0aWJsZShjbGll
bnQtPmRldi5vZl9ub2RlLCAicm9ja2NoaXAscms4MDkiKSkgewo+ICsJCXBtaWNfaWRfbXNiID0g
Uks4MTdfSURfTVNCOwo+ICsJCXBtaWNfaWRfbHNiID0gUks4MTdfSURfTFNCOwo+ICsJfSBlbHNl
IHsKPiArCQlwbWljX2lkX21zYiA9IFJLODA4X0lEX01TQjsKPiArCQlwbWljX2lkX2xzYiA9IFJL
ODA4X0lEX0xTQjsKPiArCX0KCkFwcHJlY2lhdGUgdGhhdCB0aGlzIGlzIHByb2JhYmx5IG9sZCBj
b2RlLCBidXQgaXQgd291bGQgYmUgYmV0dGVyIGRvIHRvCmRldmljZSBtYXRjaGluZyB3aXRoIE9G
IG1hdGNoLgoKPiArCS8qIFJlYWQgY2hpcCB2YXJpYW50ICovCj4gKwltc2IgPSBpMmNfc21idXNf
cmVhZF9ieXRlX2RhdGEoY2xpZW50LCBwbWljX2lkX21zYik7Cj4gKwlpZiAobXNiIDwgMCkKPiAr
CQlyZXR1cm4gZGV2X2Vycl9wcm9iZSgmY2xpZW50LT5kZXYsIG1zYiwgImZhaWxlZCB0byByZWFk
IHRoZSBjaGlwIGlkIE1TQlxuIik7Cj4gKwo+ICsJbHNiID0gaTJjX3NtYnVzX3JlYWRfYnl0ZV9k
YXRhKGNsaWVudCwgcG1pY19pZF9sc2IpOwo+ICsJaWYgKGxzYiA8IDApCj4gKwkJcmV0dXJuIGRl
dl9lcnJfcHJvYmUoJmNsaWVudC0+ZGV2LCBsc2IsICJmYWlsZWQgdG8gcmVhZCB0aGUgY2hpcCBp
ZCBMU0JcbiIpOwo+ICsKPiArCXJldHVybiAoKG1zYiA8PCA4KSB8IGxzYikgJiBSSzhYWF9JRF9N
U0s7CgpTbyB0aGlzIGRldmljZSBwcm92aWRlcyB0aGUgYWJpbGl0eSB0byBkeW5hbWljYWxseSBy
ZWFkIHRoZSBjaGlwIElEcywKYnV0IGluIG9yZGVyIHRvIGRvIHNvLCB5b3UgbmVlZCB0byBrbm93
IHdoYXQgY2hpcCB5b3UncmUgb3BlcmF0aW5nIG9uPwpXaHkgd291bGRuJ3QgdGhleSBhbHdheXMg
cHV0IHRoZSBjaGlwIElEcyBpbiB0aGUgc2FtZSBwbGFjZSEgIEkKdW5kZXJzdGFuZCB0aGlzIGlz
IGp1c3QgdGhlIHZhcmlhbnQsIGJ1dCBzdGlsbCAuLi4KCj4gK3N0YXRpYyBpbnQgcms4eHhfaTJj
X3Byb2JlKHN0cnVjdCBpMmNfY2xpZW50ICpjbGllbnQpCj4gK3sKPiArCWNvbnN0IHN0cnVjdCBy
ZWdtYXBfY29uZmlnICpyZWdtYXBfY2ZnOwo+ICsJc3RydWN0IHJlZ21hcCAqcmVnbWFwOwo+ICsJ
aW50IHZhcmlhbnQ7Cj4gKwo+ICsJdmFyaWFudCA9IHJrOHh4X2kyY19nZXRfdmFyaWFudChjbGll
bnQpOwo+ICsJaWYgKHZhcmlhbnQgPCAwKQo+ICsJCXJldHVybiB2YXJpYW50Owo+ICsKPiArCXN3
aXRjaCAodmFyaWFudCkgewo+ICsJY2FzZSBSSzgwNV9JRDoKPiArCQlyZWdtYXBfY2ZnID0gJnJr
ODA1X3JlZ21hcF9jb25maWc7Cj4gKwkJYnJlYWs7Cj4gKwljYXNlIFJLODA4X0lEOgo+ICsJCXJl
Z21hcF9jZmcgPSAmcms4MDhfcmVnbWFwX2NvbmZpZzsKPiArCQlicmVhazsKPiArCWNhc2UgUks4
MThfSUQ6Cj4gKwkJcmVnbWFwX2NmZyA9ICZyazgxOF9yZWdtYXBfY29uZmlnOwo+ICsJCWJyZWFr
Owo+ICsJY2FzZSBSSzgwOV9JRDoKPiArCWNhc2UgUks4MTdfSUQ6Cj4gKwkJcmVnbWFwX2NmZyA9
ICZyazgxN19yZWdtYXBfY29uZmlnOwo+ICsJCWJyZWFrOwo+ICsJZGVmYXVsdDoKPiArCQlyZXR1
cm4gZGV2X2Vycl9wcm9iZSgmY2xpZW50LT5kZXYsIC1FSU5WQUwsICJVbnN1cHBvcnRlZCBSSzhY
WCBJRCAleFxuIiwgdmFyaWFudCk7Cj4gKwl9CgpBbGwgb2YgdGhpcyBzdHVmZiBjb3VsZCBiZSBw
YXNzZWQgdGhyb3VnaCB0aGUgT0YgbWF0Y2ggQVBJLgoKPiArCj4gKwlyZWdtYXAgPSBkZXZtX3Jl
Z21hcF9pbml0X2kyYyhjbGllbnQsIHJlZ21hcF9jZmcpOwo+ICsJaWYgKElTX0VSUihyZWdtYXAp
KQo+ICsJCXJldHVybiBkZXZfZXJyX3Byb2JlKCZjbGllbnQtPmRldiwgUFRSX0VSUihyZWdtYXAp
LAo+ICsJCQkJICAgICAicmVnbWFwIGluaXRpYWxpemF0aW9uIGZhaWxlZFxuIik7Cj4gKwo+ICsJ
cmV0dXJuIHJrOHh4X3Byb2JlKCZjbGllbnQtPmRldiwgdmFyaWFudCwgY2xpZW50LT5pcnEsIHJl
Z21hcCk7Cj4gK30KPiArCj4gK3N0YXRpYyB2b2lkIHJrOHh4X2kyY19zaHV0ZG93bihzdHJ1Y3Qg
aTJjX2NsaWVudCAqY2xpZW50KQo+ICt7Cj4gKwlyazh4eF9zaHV0ZG93bigmY2xpZW50LT5kZXYp
Owo+ICt9Cj4gKwo+ICtzdGF0aWMgaW50IF9fbWF5YmVfdW51c2VkIHJrOHh4X2kyY19zdXNwZW5k
KHN0cnVjdCBkZXZpY2UgKmRldikKPiArewo+ICsJcmV0dXJuIHJrOHh4X3N1c3BlbmQoZGV2KTsK
PiArfQo+ICsKPiArc3RhdGljIGludCBfX21heWJlX3VudXNlZCByazh4eF9pMmNfcmVzdW1lKHN0
cnVjdCBkZXZpY2UgKmRldikKPiArewo+ICsJcmV0dXJuIHJrOHh4X3Jlc3VtZShkZXYpOwo+ICt9
Cj4gK3N0YXRpYyBTSU1QTEVfREVWX1BNX09QUyhyazh4eF9pMmNfcG1fb3BzLCByazh4eF9pMmNf
c3VzcGVuZCwgcms4eHhfaTJjX3Jlc3VtZSk7CgpXaHkgbm90IHBsYWNlIHRoZSBleHBvcnRlZCBm
dW5jdGlvbnMgc3RyYWlnaHQgaW50byB0aGUgTUFDUk8/Cgo+ICtzdGF0aWMgY29uc3Qgc3RydWN0
IG9mX2RldmljZV9pZCByazh4eF9pMmNfb2ZfbWF0Y2hbXSA9IHsKPiArCXsgLmNvbXBhdGlibGUg
PSAicm9ja2NoaXAscms4MDUiIH0sCj4gKwl7IC5jb21wYXRpYmxlID0gInJvY2tjaGlwLHJrODA4
IiB9LAo+ICsJeyAuY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazgwOSIgfSwKPiArCXsgLmNvbXBh
dGlibGUgPSAicm9ja2NoaXAscms4MTciIH0sCj4gKwl7IC5jb21wYXRpYmxlID0gInJvY2tjaGlw
LHJrODE4IiB9LAo+ICsJeyB9LAo+ICt9Owo+ICtNT0RVTEVfREVWSUNFX1RBQkxFKG9mLCByazh4
eF9pMmNfb2ZfbWF0Y2gpOwo+ICsKPiArc3RhdGljIHN0cnVjdCBpMmNfZHJpdmVyIHJrOHh4X2ky
Y19kcml2ZXIgPSB7Cj4gKwkuZHJpdmVyID0gewo+ICsJCS5uYW1lID0gInJrOHh4LWkyYyIsCj4g
KwkJLm9mX21hdGNoX3RhYmxlID0gcms4eHhfaTJjX29mX21hdGNoLAo+ICsJCS5wbSA9ICZyazh4
eF9pMmNfcG1fb3BzLAo+ICsJfSwKPiArCS5wcm9iZV9uZXcgPSByazh4eF9pMmNfcHJvYmUsCj4g
Kwkuc2h1dGRvd24gID0gcms4eHhfaTJjX3NodXRkb3duLAo+ICt9Owo+ICttb2R1bGVfaTJjX2Ry
aXZlcihyazh4eF9pMmNfZHJpdmVyKTsKPiArCj4gK01PRFVMRV9MSUNFTlNFKCJHUEwiKTsKPiAr
TU9EVUxFX0FVVEhPUigiQ2hyaXMgWmhvbmcgPHp5d0Byb2NrLWNoaXBzLmNvbT4iKTsKPiArTU9E
VUxFX0FVVEhPUigiWmhhbmcgUWluZyA8emhhbmdxaW5nQHJvY2stY2hpcHMuY29tPiIpOwo+ICtN
T0RVTEVfQVVUSE9SKCJXYWRpbSBFZ29yb3YgPHcuZWdvcm92QHBoeXRlYy5kZT4iKTsKPiArTU9E
VUxFX0RFU0NSSVBUSU9OKCJSSzh4eCBJMkMgUE1JQyBkcml2ZXIiKTsKCi0tIApMZWUgSm9uZXMg
W+adjueQvOaWr10KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK

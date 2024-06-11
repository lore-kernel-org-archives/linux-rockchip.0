Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1DDE0C27C75
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Jun 2024 17:56:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uOgCs8MYKDItyxEsXu75F8WwJwtHLdRVFbr1SDZCDoM=; b=sHZSkGGbilwaOl
	+e2hIhxdzGa2xDg57G5TBQlHtkvmyTtapz8a4b7O7R4XjZuCBrkF+sMYBrmYFxZP0nJCSscr0ATbB
	c1QzDGwgNnAomzz3LtcEuiHyndeaurrfF1v9kajHPzgZMe0lWpNRF2ilaNw6ASWA7IOcrFvy9rFDw
	Djpf2BQsN/9d4Urgok8ERl9IQ8DiIMxpq31hYzRu1eQIHZyPnar3Z6NBgJu8N4hRrWTqwGA0/LMhM
	sM7QUYHOPrsi2jpRi1kG2BRuZQZrE+LlkC9w/4wag9q61AQYuvdeBgIiK17B5fiKFORC1Zew/+qvD
	xRKHm+8olS0Xmf8PGYKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sH5jW-00000009kIA-2zIB;
	Tue, 11 Jun 2024 17:56:34 +0000
Received: from smtp-27.smtpout.orange.fr ([80.12.242.27] helo=smtp.smtpout.orange.fr)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sH5jE-00000009kDG-2GJu;
	Tue, 11 Jun 2024 17:56:22 +0000
Received: from [192.168.1.37] ([86.243.222.230])
	by smtp.orange.fr with ESMTPA
	id H5j3s2zS3qyvbH5j3s7g8y; Tue, 11 Jun 2024 19:56:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wanadoo.fr;
	s=t20230301; t=1718128569;
	bh=sDXIAi2hNDOjYRm7+B25GTwEHeQQES9Jm3k/yIIxD4A=;
	h=Message-ID:Date:MIME-Version:Subject:To:From;
	b=Oa55rfjKoOk2jGUDVGAj5k36U9b7ZTh+42+oRIKJ/OVI2zf3WKcNTuNITbMX8Je3b
	 WNgoWgLt/cLU/AIMmpIt667NNkS+h5NJn3MMRFjnliyMEVrOHo0lLp5fzfV76muosn
	 4fqIkmfTv8GYicR6tK8JYfU7QrA+n6pdX08VYsKLB2U2TmMWCoH7tJ33AiPzYWKNcB
	 5EA3wrgZtW5oE3lQ6yAHtmVZggHv+9D913iG9iBGMCxFnVj2q6uyZPoDGPY0APgSrv
	 Jq7lrNzkwrFjJV5slDP6UM+FKgIi7SkAjNQOr1Vt6PbiiG/t92VI9QUh71yY74wQzV
	 4NymB7lVfIobA==
X-ME-Helo: [192.168.1.37]
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Tue, 11 Jun 2024 19:56:09 +0200
X-ME-IP: 86.243.222.230
Message-ID: <71609986-9b97-44ee-86a1-b8a8b9d2829b@wanadoo.fr>
Date: Tue, 11 Jun 2024 19:56:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/7] i2c: muxes: add support for mule i2c multiplexer
To: Farouk Bouabid <farouk.bouabid@cherry.de>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Peter Rosin <peda@axentia.se>, Andi Shyti <andi.shyti@kernel.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Quentin Schulz
 <quentin.schulz@cherry.de>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-i2c@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <20240611-dev-mule-i2c-mux-v3-0-08d26a28e001@cherry.de>
 <20240611-dev-mule-i2c-mux-v3-3-08d26a28e001@cherry.de>
Content-Language: en-MW
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
In-Reply-To: <20240611-dev-mule-i2c-mux-v3-3-08d26a28e001@cherry.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240611_105617_159394_FC7C1790 
X-CRM114-Status: GOOD (  19.95  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

TGUgMTEvMDYvMjAyNCDDoCAxMzo0MywgRmFyb3VrIEJvdWFiaWQgYSDDqWNyaXTCoDoKPiBNdWxl
IGlzIGFuIE1DVSB0aGF0IGVtdWxhdGVzIGEgc2V0IG9mIEkyQyBkZXZpY2VzIHdoaWNoIGFyZSBy
ZWFjaGFibGUKPiB0aHJvdWdoIGFuIEkyQy1tdXguCj4gCj4gVGhlIGVtdWxhdGVkIGRldmljZXMg
c2hhcmUgYSBzaW5nbGUgSTJDIGFkZHJlc3Mgd2l0aCB0aGUgbXV4IGl0c2VsZgo+IHdoZXJlIHRo
ZSByZXF1ZXN0ZWQgcmVnaXN0ZXIgaXMgd2hhdCBkZXRlcm1pbmVzIHdoaWNoIGxvZ2ljIGlzIGV4
ZWN1dGVkCj4gKG11eCBsb2dpYyBvciBkZXZpY2UgbG9naWMpOgo+IAo+IDEtIFRoZSBkZXZpY2Vz
IG9uIHRoZSBtdXggY2FuIGJlIHNlbGVjdGVkIChtdXggZnVuY3Rpb24pIGJ5IHdyaXRpbmcgdGhl
Cj4gYXBwcm9wcmlhdGUgZGV2aWNlIG51bWJlciB0byBhbiBJMkMgY29uZmlnIHJlZ2lzdGVyICgw
eGZmKSB0aGF0IGlzIG5vdAo+IHVzZWQgYnkgYW55IGRldmljZSBsb2dpYy4KPiAKPiAyLSBBbnkg
YWNjZXNzIHRvIGEgcmVnaXN0ZXIgb3RoZXIgdGhhbiB0aGUgY29uZmlnIHJlZ2lzdGVyIHdpbGwg
YmUKPiBoYW5kbGVkIGJ5IHRoZSBwcmV2aW91c2x5IHNlbGVjdGVkIGRldmljZS4KPiAKPiBTaWdu
ZWQtb2ZmLWJ5OiBGYXJvdWsgQm91YWJpZCA8ZmFyb3VrLmJvdWFiaWRAY2hlcnJ5LmRlPgo+IC0t
LQoKSGksCgouLi4KCj4gK3N0YXRpYyBpbnQgbXVsZV9pMmNfbXV4X3Byb2JlKHN0cnVjdCBpMmNf
Y2xpZW50ICpjbGllbnQpCj4gK3sKPiArCXN0cnVjdCBpMmNfYWRhcHRlciAqYWRhcCA9IGNsaWVu
dC0+YWRhcHRlcjsKPiArCXN0cnVjdCBtdWxlX2kyY19yZWdfbXV4ICpwcml2Owo+ICsJc3RydWN0
IGkyY19tdXhfY29yZSAqbXV4YzsKPiArCXN0cnVjdCBkZXZpY2Vfbm9kZSAqZGV2Owo+ICsJdW5z
aWduZWQgaW50IHJlYWRiYWNrOwo+ICsJaW50IG5kZXYsIHJldDsKPiArCWJvb2wgb2xkX2Z3Owo+
ICsKPiArCS8qIENvdW50IGRldmljZXMgb24gdGhlIG11eCAqLwo+ICsJbmRldiA9IG9mX2dldF9j
aGlsZF9jb3VudChjbGllbnQtPmRldi5vZl9ub2RlKTsKPiArCWRldl9kYmcoJmNsaWVudC0+ZGV2
LCAiJXUgZGV2aWNlcyBvbiB0aGUgbXV4XG4iLCBuZGV2KTsKClNob3VsZCB0aGlzIGJlICVkPwoK
PiArCj4gKwltdXhjID0gaTJjX211eF9hbGxvYyhhZGFwLCAmY2xpZW50LT5kZXYsCj4gKwkJCSAg
ICAgbmRldiwgc2l6ZW9mKCpwcml2KSwKPiArCQkJICAgICBJMkNfTVVYX0xPQ0tFRCwKPiArCQkJ
ICAgICBtdXhfc2VsZWN0LCBtdXhfZGVzZWxlY3QpOwoKTml0cGljazogdGhpcyBjb3VsZCBiZSB3
cml0dGVuIHdpdGggbGVzcyBsaW5lcy4KCj4gKwlpZiAoIW11eGMpCj4gKwkJcmV0dXJuIC1FTk9N
RU07Cj4gKwo+ICsJbXV4Yy0+c2hhcmVfYWRkcl93aXRoX2NoaWxkcmVuID0gMTsKPiArCXByaXYg
PSBpMmNfbXV4X3ByaXYobXV4Yyk7Cj4gKwo+ICsJcHJpdi0+cmVnbWFwID0gZGV2bV9yZWdtYXBf
aW5pdF9pMmMoY2xpZW50LCAmbXVsZV9yZWdtYXBfY29uZmlnKTsKPiArCWlmIChJU19FUlIocHJp
di0+cmVnbWFwKSkKPiArCQlyZXR1cm4gZGV2X2Vycl9wcm9iZSgmY2xpZW50LT5kZXYsIFBUUl9F
UlIocHJpdi0+cmVnbWFwKSwKPiArCQkJCSAgICAgIkZhaWxlZCB0byBhbGxvY2F0ZSBpMmMgcmVn
aXN0ZXIgbWFwXG4iKTsKPiArCj4gKwlpMmNfc2V0X2NsaWVudGRhdGEoY2xpZW50LCBtdXhjKTsK
PiArCj4gKwkvKgo+ICsJICogTXV4IDAgaXMgZ3VhcmFudGVlZCB0byBleGlzdCBvbiBhbGwgb2xk
IGFuZCBuZXcgbXVsZSBmdy4KPiArCSAqIG11bGUgZncgd2l0aG91dCBtdXggc3VwcG9ydCB3aWxs
IGFjY2VwdCB3cml0ZSBvcHMgdG8gdGhlCj4gKwkgKiBjb25maWcgcmVnaXN0ZXIsIGJ1dCByZWFk
YmFjayByZXR1cm5zIDB4ZmYgKHJlZ2lzdGVyIG5vdCB1cGRhdGVkKS4KPiArCSAqLwo+ICsJcmV0
ID0gbXV4X3NlbGVjdChtdXhjLCAwKTsKClNob3VsZCB0aGlzIDAgYmUgTVVYX0RFRkFVTFRfREVW
IChmb3IgY29uc2lzdGVuY3kpPwoKPiArCWlmIChyZXQpCj4gKwkJcmV0dXJuIHJldDsKPiArCj4g
KwlyZXQgPSByZWdtYXBfcmVhZChwcml2LT5yZWdtYXAsIE1VWF9DT05GSUdfUkVHLCAmcmVhZGJh
Y2spOwo+ICsJaWYgKHJldCkKPiArCQlyZXR1cm4gcmV0Owo+ICsKPiArCW9sZF9mdyA9IChyZWFk
YmFjayAhPSAwKTsKPiArCj4gKwlyZXQgPSBkZXZtX2FkZF9hY3Rpb25fb3JfcmVzZXQoJmNsaWVu
dC0+ZGV2LCBtdXhfcmVtb3ZlLCBtdXhjKTsKPiArCWlmIChyZXQpCj4gKwkJcmV0dXJuIHJldDsK
PiArCj4gKwkvKiBDcmVhdGUgZGV2aWNlIGFkYXB0ZXJzICovCj4gKwlmb3JfZWFjaF9jaGlsZF9v
Zl9ub2RlKGNsaWVudC0+ZGV2Lm9mX25vZGUsIGRldikgewo+ICsJCXUzMiByZWc7Cj4gKwo+ICsJ
CXJldCA9IG9mX3Byb3BlcnR5X3JlYWRfdTMyKGRldiwgInJlZyIsICZyZWcpOwo+ICsJCWlmIChy
ZXQpIHsKPiArCQkJZGV2X2VycigmY2xpZW50LT5kZXYsICJObyByZWcgcHJvcGVydHkgZm91bmQg
Zm9yICVzOiAlZFxuIiwKPiArCQkJCW9mX25vZGVfZnVsbF9uYW1lKGRldiksIHJldCk7CgpyZXR1
cm4gZGV2X2Vycl9wcm9iZSgpIGFzIGFib3ZlPwoKPiArCQkJcmV0dXJuIHJldDsKPiArCQl9Cj4g
Kwo+ICsJCWlmIChvbGRfZncgJiYgcmVnICE9IDApIHsKPiArCQkJZGV2X3dhcm4oJmNsaWVudC0+
ZGV2LAo+ICsJCQkJICJNdXggJWQgbm90IHN1cHBvcnRlZCwgcGxlYXNlIHVwZGF0ZSBNdWxlIEZX
XG4iLCByZWcpOwo+ICsJCQljb250aW51ZTsKPiArCQl9Cj4gKwo+ICsJCXJldCA9IG11eF9zZWxl
Y3QobXV4YywgcmVnKTsKPiArCQlpZiAocmV0KSB7Cj4gKwkJCWRldl93YXJuKCZjbGllbnQtPmRl
diwKPiArCQkJCSAiTXV4ICVkIG5vdCBzdXBwb3J0ZWQsIHBsZWFzZSB1cGRhdGUgTXVsZSBGV1xu
IiwgcmVnKTsKPiArCQkJY29udGludWU7Cj4gKwkJfQo+ICsKPiArCQlyZXQgPSBpMmNfbXV4X2Fk
ZF9hZGFwdGVyKG11eGMsIDAsIHJlZywgMCk7Cj4gKwkJaWYgKHJldCkgewo+ICsJCQlkZXZfZXJy
KCZjbGllbnQtPmRldiwgIkZhaWxlZCB0byBhZGQgaTJjIG11eCBhZGFwdGVyICVkOiAlZFxuIiwg
cmVnLCByZXQpOwoKcmV0dXJuIGRldl9lcnJfcHJvYmUoKSBhcyBhYm92ZT8KCj4gKwkJCXJldHVy
biByZXQ7Cj4gKwkJfQo+ICsJfQo+ICsKPiArCW11eF9kZXNlbGVjdChtdXhjLCBNVVhfREVGQVVM
VF9ERVYpOwo+ICsKPiArCXJldHVybiAwOwo+ICt9CgouLi4KCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

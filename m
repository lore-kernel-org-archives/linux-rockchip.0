Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A088FC83F09
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Jul 2025 08:46:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R768aJWrWnGNdDW4gVRJzOnwfaz8ZdRgXzsYX0v3XNw=; b=DZV6OihLUhjxaS
	yGC6hOTquIl5sjnVthluF/CRKbj3twi8LRrjqCdGm5zEfobVPvb2TJMjCa5VZj48dhXHGNaGvgaKL
	VUgLwm77ppslK3TkOzmAvdmTKy2XPvX0yuZqNb12XGNpeYddI+FvS83XqD4w48AgemBv0dGlo7a6W
	jW7LVUhqVh/SOhnX5FRowNQg9TY41XuDIYiPWcxNIGBB2HN3eDinj6qxKqGFPQUs9wrmis2lf2XuH
	Jd9JT7ClatYWYTXyD/SoZ90UZw5gQW0E3ynERKqE9by8JW9YsQn2KwEUvhAwyNahr6eGNZf1uY/gJ
	JFvbvGy9O+wK5hZzTu0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZQRU-000000080rZ-0Qgd;
	Wed, 09 Jul 2025 08:46:16 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZP95-00000007nr9-3F4J;
	Wed, 09 Jul 2025 07:23:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=BS97jhDzzUjHilWkR1sT96zjI2f6GoRHScLPeEPg0RU=; b=orQ8efhAs5v/QafXjseL9pXPI/
	CgaVQ97Na5+Upe7AffCWgKzKclIueLLeSr2poR4A3+cdqCc5Tkufd4htI5GsURYhYZW5mxkfhnpXr
	5ezQccvInW7nwm1p1x2TFO8fAwLZvKI2sgNWQjAz0GoCsWvZNaJMra6m81ANjGODJ7PXvaQCYKESJ
	0Gw3nLDwyfs/UPk9uulyn8UZn2BGbrLZNcX6UYjg6sP0Iz3tUvBvwWyV8RcrddWFU59MvqiHEHiIz
	w5ZCETu3nbXgEWuguQe87tnyoP0eTCScwST/H1L3E3qYohjbgctjSV+rW8AT+0KMgP8cGSrTCqfSb
	Eef0xYSQ==;
Received: from i53875a79.versanet.de ([83.135.90.121] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uZP8t-0001Yu-5E; Wed, 09 Jul 2025 09:22:59 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Uwe =?UTF-8?B?S2xlaW5lLUvDtm5pZw==?= <ukleinek@kernel.org>,
 William Breathitt Gray <wbg@kernel.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Kever Yang <kever.yang@rock-chips.com>, Yury Norov <yury.norov@gmail.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Subject: Re: [PATCH v2 4/7] soc: rockchip: add mfpwm driver
Date: Wed, 09 Jul 2025 09:22:57 +0200
Message-ID: <8203440.zQ0Gbyo6oJ@diego>
In-Reply-To: <20250602-rk3576-pwm-v2-4-a6434b0ce60c@collabora.com>
References: <20250602-rk3576-pwm-v2-0-a6434b0ce60c@collabora.com>
 <20250602-rk3576-pwm-v2-4-a6434b0ce60c@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250709_002311_837288_41E6879A 
X-CRM114-Status: GOOD (  31.23  )
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
Cc: devicetree@vger.kernel.org, Leon Romanovsky <leon@kernel.org>, linux-rockchip@lists.infradead.org, linux-iio@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Lee Jones <lee@kernel.org>, linux-kernel@vger.kernel.org, linux-pwm@vger.kernel.org, linux-gpio@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>, Detlev Casanova <detlev.casanova@collabora.com>, Dave Ertman <david.m.ertman@intel.com>, kernel@collabora.com, Ira Weiny <ira.weiny@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgTmljb2xhcywKCkFtIE1vbnRhZywgMi4gSnVuaSAyMDI1LCAxODoxOToxNSBNaXR0ZWxldXJv
cMOkaXNjaGUgU29tbWVyemVpdCBzY2hyaWViIE5pY29sYXMgRnJhdHRhcm9saToKPiBXaXRoIHRo
ZSBSb2NrY2hpcCBSSzM1NzYsIHRoZSBQV00gSVAgdXNlZCBieSBSb2NrY2hpcCBoYXMgY2hhbmdl
ZAo+IHN1YnN0YW50aWFsbHkuIExvb2tpbmcgYXQgYm90aCB0aGUgZG93bnN0cmVhbSBwd20tcm9j
a2NoaXAgZHJpdmVyIGFzCj4gd2VsbCBhcyB0aGUgbWFpbmxpbmUgcHdtLXJvY2tjaGlwIGRyaXZl
ciBtYWRlIGl0IGNsZWFyIHRoYXQgd2l0aCBhbGwgaXRzCj4gYWRkaXRpb25hbCBmZWF0dXJlcyBh
bmQgaXRzIGRpZmZlcmVuY2VzIGZyb20gcHJldmlvdXMgSVAgcmV2aXNpb25zLCBpdAo+IGlzIGJl
c3Qgc3VwcG9ydGVkIGluIGEgbmV3IGRyaXZlci4KPiAKPiBUaGlzIGJyaW5ncyB1cyB0byB0aGUg
cXVlc3Rpb24gYXMgdG8gd2hhdCBzdWNoIGEgbmV3IGRyaXZlciBzaG91bGQgYmUuCj4gVG8gbWUs
IGl0IHNvb24gYmVjYW1lIGNsZWFyIHRoYXQgaXQgc2hvdWxkIGFjdHVhbGx5IGJlIHNldmVyYWwg
bmV3Cj4gZHJpdmVycywgbW9zdCBwcm9taW5lbnRseSB3aGVuIFV3ZSBLbGVpbmUtS8O2bmlnIGxl
dCBtZSBrbm93IHRoYXQgSQo+IHNob3VsZCBub3QgaW1wbGVtZW50IHRoZSBwd20gc3Vic3lzdGVt
J3MgY2FwdHVyZSBjYWxsYmFjaywgYnV0IGluc3RlYWQKPiB3cml0ZSBhIGNvdW50ZXIgZHJpdmVy
IGZvciB0aGlzIGZ1bmN0aW9uYWxpdHkuCj4gCj4gQ29tYmluZWQgd2l0aCB0aGUgb3RoZXIgYXMt
b2YteWV0IHVuaW1wbGVtZW50ZWQgZnVuY3Rpb25hbGl0eSBvZiB0aGlzCj4gbmV3IElQLCBpdCBi
ZWNhbWUgYXBwYXJlbnQgdGhhdCBpdCBuZWVkcyB0byBiZSBzcHJlYWQgYWNyb3NzIHNldmVyYWwK
PiBzdWJzeXN0ZW1zLgo+IAo+IEZvciB0aGlzIHJlYXNvbiwgd2UgYWRkIGEgbmV3IHBsYXRmb3Jt
IGJ1cyBiYXNlZCBkcml2ZXIsIGNhbGxlZCBtZnB3bQo+IChzaG9ydCBmb3IgIk11bHRpLWZ1bmN0
aW9uIFBXTSIpLiBUaGlzICJwYXJlbnQiIGRyaXZlciBtYWtlcyBzdXJlIHRoYXQKPiBvbmx5IG9u
ZSBkZXZpY2UgZnVuY3Rpb24gZHJpdmVyIGlzIHVzaW5nIHRoZSBkZXZpY2UgYXQgYSB0aW1lLCBh
bmQgaXMgaW4KPiBjaGFyZ2Ugb2YgcmVnaXN0ZXJpbmcgdGhlIHBsYXRmb3JtIGJ1cyBkZXZpY2Vz
IGZvciB0aGUgaW5kaXZpZHVhbCBkZXZpY2UKPiBmdW5jdGlvbnMgb2ZmZXJlZCBieSB0aGUgZGV2
aWNlLgo+IAo+IEFuIGFjcXVpcmUvcmVsZWFzZSBwYXR0ZXJuIGlzIHVzZWQgdG8gZ3VhcmFudGVl
IHRoYXQgZGV2aWNlIGZ1bmN0aW9uCj4gZHJpdmVycyBkb24ndCBzdGVwIG9uIGVhY2ggb3RoZXIn
cyB0b2VzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IE5pY29sYXMgRnJhdHRhcm9saSA8bmljb2xhcy5m
cmF0dGFyb2xpQGNvbGxhYm9yYS5jb20+Cj4gLS0tCgo+ICsvKioKPiArICogbWZwd21fcmVnaXN0
ZXJfc3ViZGV2IC0gcmVnaXN0ZXIgYSBzaW5nbGUgbWZwd21fZnVuYwo+ICsgKiBAbWZwd206IHBv
aW50ZXIgdG8gdGhlIHBhcmVudCAmc3RydWN0IHJvY2tjaGlwX21mcHdtCj4gKyAqIEB0YXJnZXQ6
IHBvaW50ZXIgdG8gd2hlcmUgdGhlICZzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlIHBvaW50ZXIgc2hv
dWxkIGJlCj4gKyAqICAgICAgICAgIHN0b3JlZCwgdXN1YWxseSBhIG1lbWJlciBvZiBAbWZwd20K
PiArICogQG5hbWU6IHN1Yi1kZXZpY2UgbmFtZSBzdHJpbmcKPiArICoKPiArICogQWxsb2NhdGUg
YSBzaW5nbGUgJnN0cnVjdCBtZnB3bV9mdW5jLCBmaWxsIGl0cyBtZW1iZXJzIHdpdGggYXBwcm9w
cmlhdGUgZGF0YSwKPiArICogYW5kIHJlZ2lzdGVyIGEgbmV3IHBsYXRmb3JtIGRldmljZSwgc2F2
aW5nIGl0cyBwb2ludGVyIHRvIEB0YXJnZXQuIFRoZQo+ICsgKiBhbGxvY2F0aW9uIGlzIGRldnJl
cyB0cmFja2VkLCBzbyB3aWxsIGJlIGF1dG9tYXRpY2FsbHkgZnJlZWQgb24gbWZwd20gcmVtb3Zl
Lgo+ICsgKgo+ICsgKiBSZXR1cm5zOiAwIG9uIHN1Y2Nlc3MsIG5lZ2F0aXZlIGVycm5vIG9uIGVy
cm9yCj4gKyAqLwo+ICtzdGF0aWMgaW50IG1mcHdtX3JlZ2lzdGVyX3N1YmRldihzdHJ1Y3Qgcm9j
a2NoaXBfbWZwd20gKm1mcHdtLAo+ICsJCQkJIHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKip0YXJn
ZXQsCj4gKwkJCQkgY29uc3QgY2hhciAqbmFtZSkKPiArewo+ICsJc3RydWN0IHJvY2tjaGlwX21m
cHdtX2Z1bmMgKmZ1bmM7Cj4gKwlzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpjaGlsZDsKPiArCj4g
KwlmdW5jID0gZGV2bV9remFsbG9jKCZtZnB3bS0+cGRldi0+ZGV2LCBzaXplb2YoKmZ1bmMpLCBH
RlBfS0VSTkVMKTsKPiArCWlmIChJU19FUlIoZnVuYykpCj4gKwkJcmV0dXJuIFBUUl9FUlIoZnVu
Yyk7Cj4gKwlmdW5jLT5pcnEgPSBtZnB3bS0+aXJxOwo+ICsJZnVuYy0+cGFyZW50ID0gbWZwd207
Cj4gKwlmdW5jLT5pZCA9IGF0b21pY19pbmNfcmV0dXJuKCZzdWJkZXZfaWQpOwo+ICsJZnVuYy0+
YmFzZSA9IG1mcHdtLT5iYXNlOwo+ICsJZnVuYy0+Y29yZSA9IG1mcHdtLT5jaG9zZW5fY2xrOwo+
ICsJY2hpbGQgPSBwbGF0Zm9ybV9kZXZpY2VfcmVnaXN0ZXJfZGF0YSgmbWZwd20tPnBkZXYtPmRl
diwgbmFtZSwgZnVuYy0+aWQsCj4gKwkJCQkJICAgICAgZnVuYywgc2l6ZW9mKCpmdW5jKSk7Cj4g
Kwo+ICsJaWYgKElTX0VSUihjaGlsZCkpCj4gKwkJcmV0dXJuIFBUUl9FUlIoY2hpbGQpOwo+ICsK
PiArCSp0YXJnZXQgPSBjaGlsZDsKPiArCj4gKwlyZXR1cm4gMDsKPiArfQo+ICsKPiArc3RhdGlj
IGludCBtZnB3bV9yZWdpc3Rlcl9zdWJkZXZzKHN0cnVjdCByb2NrY2hpcF9tZnB3bSAqbWZwd20p
Cj4gK3sKPiArCWludCByZXQ7Cj4gKwo+ICsJcmV0ID0gbWZwd21fcmVnaXN0ZXJfc3ViZGV2KG1m
cHdtLCAmbWZwd20tPnB3bV9kZXYsICJwd20tcm9ja2NoaXAtdjQiKTsKPiArCWlmIChyZXQpCj4g
KwkJcmV0dXJuIHJldDsKPiArCj4gKwlyZXQgPSBtZnB3bV9yZWdpc3Rlcl9zdWJkZXYobWZwd20s
ICZtZnB3bS0+Y291bnRlcl9kZXYsCj4gKwkJCQkgICAgInJvY2tjaGlwLXB3bS1jYXB0dXJlIik7
Cj4gKwlpZiAocmV0KQo+ICsJCWdvdG8gZXJyX3VucmVnX3B3bV9kZXY7Cj4gKwo+ICsJcmV0dXJu
IDA7Cj4gKwo+ICtlcnJfdW5yZWdfcHdtX2RldjoKPiArCXBsYXRmb3JtX2RldmljZV91bnJlZ2lz
dGVyKG1mcHdtLT5wd21fZGV2KTsKPiArCj4gKwlyZXR1cm4gcmV0Owo+ICt9CgpJIHN0aWxsIGhh
ZCB0aGlzIGxpbmdlcmluZyBmZWVsaW5nIHRoYXQgdGhpcyBfaXNfIGEgTUZEIGp1c3Qgd2l0aCBh
ZGRlZApzcHJpbmtsZXMsIHNvIGFza2VkIExlZSBvbiBJUkMgYWJvdXQgaXQ6CgoJPGxhZz4gTG9v
a3MgbGlrZSBhbiBNRkQgdG8gbWUKCTxsYWc+IFllcywgeW91IGNhbiB1c2UgYW4gTUZEIGNvcmUg
ZHJpdmVyIHRvIGNvbnRyb2wgc3RhdGUgLyBtYW5hZ2Ugc2luZ2xlLXVzZSByZXNvdXJjZXMKClNv
LCBjaXRpbmcgSmVhbiBMdWMgUGljYXJkLCAiTWFrZSBpdCBzbyIgLi4uIHBsZWFzZSA6LSkKCkhl
aWtvCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK

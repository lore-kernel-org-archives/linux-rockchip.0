Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0DA49C19F32
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Mar 2025 10:53:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UvCXJjaq4E31CUXQOQnJ78pQXYNi8CMqVo21jz4f0O8=; b=Harn2tVHRsAHds
	XUB+GntZ1qJLpxu7um7OWguPurK1gzT/9YQWScJnYngwrrWOgHA8TlqRZ8Lg4yP/F0BZWqPdxNJnu
	ub9Ip4tjca6MP8YS440zy/sUNFwXRUj+/Z4JejNd7nRjnpM/iG2zz9oAqnrWsqrBkbUUIhh+D3wIs
	nML6z4IaG/HkPeWbS/JvQYpkhb4KCQrk/v8RNkExu9wxRgNApf5u3C9BcWipWWETp8pAsbLc7rkqb
	TjpQW9Eo6ygYZfVcXbbANA0OO1ehyGImNGaI9U1Y1Uf4udZm3CZd+L6l/ajsZb9BenQWM6pZMX83t
	Zxh5j5r4J7C9dAfz7bgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpmNi-00000007kqL-3cKd;
	Wed, 05 Mar 2025 10:53:42 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tplt1-00000007fBi-1hyh;
	Wed, 05 Mar 2025 10:22:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=n4fDAkyw/uhxe8G05E84yrw6xnoFmgWvI3tKZtq2rSs=; b=pJid1FHlhmvhTprAPkmVDlJvPu
	wlwKv9FuKC1W+fwINcrFCnwCZMlBklUf16MB23bCw4dYQnEdsgf2oK86Dq8q7hykrf/j7nWSZ9i1I
	7lUJRhifm328x9fW03maoX2vFjcUB1GFKXFHMWTlBwIPW8/mO+gCkBYOZi4nDfSQmAyUNj85WSWau
	GsnxrHVqkW0bxdWiiTlHMwIG9P8zcwpZyyITy6dzyBNjkAXLVAOUlR/RESFl0FAg8nIBLybMHPJHX
	uI+fOnea8woEelqoHcL/DO8aIyJrQYazfVQ6IHS2wnU1gHr6QMRbhMzInehBh40QDKBP60hyY6Wzo
	4ash0VHQ==;
Received: from i53875a38.versanet.de ([83.135.90.56] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tplsr-0001Y0-7Q; Wed, 05 Mar 2025 11:21:49 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Frank Wang <frank.wang@rock-chips.com>,
 Shresth Prasad <shresthprasad7@gmail.com>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Detlev Casanova <detlev.casanova@collabora.com>,
 Jonas Karlman <jonas@kwiboo.se>, Yao Zi <ziyao@disroot.org>
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 Yao Zi <ziyao@disroot.org>
Subject: Re: [PATCH 6/8] clk: rockchip: rk3528: Add SD/SDIO tuning clocks in GRF
 region
Date: Wed, 05 Mar 2025 11:21:48 +0100
Message-ID: <2583035.OBFZWjSADL@diego>
In-Reply-To: <20250301104724.36399-1-ziyao@disroot.org>
References: <20250301104250.36295-1-ziyao@disroot.org>
 <20250301104724.36399-1-ziyao@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250305_022159_462494_7D085B39 
X-CRM114-Status: GOOD (  16.55  )
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

SGksCgpBbSBTYW1zdGFnLCAxLiBNw6RyeiAyMDI1LCAxMTo0NzoyNCBNRVogc2NocmllYiBZYW8g
Wmk6Cj4gVGhlc2UgY2xvY2tzIGxvY2F0ZSBpbiBWTyBhbmQgVlBVIEdSRiwgc2VydmluZyBmb3Ig
U0QvU0RJTyBjb250cm9sbGVyCj4gdHVuaW5nIHB1cnBvc2UuIEFkZCB0aGVpciBkZWZpbml0aW9u
cyBhbmQgcmVnaXN0ZXIgdGhlbSBpbiBkcml2ZXIgaWYKPiBjb3JyZXNwb25kaW5nIEdSRiBpcyBh
dmFpbGFibGUuCgoobm8gY3JpdGlxdWUsIGp1c3QgYW4gb2JzZXJ2YXRpb24gOi0pICkKCnRoaXMg
cHV0cyBhIGNvbXBsZXRlbHkgbmV3IG1lYW5pbmcgb24gdGhlICJnZW5lcmFsIHJlZ2lzdGVyIGZp
bGVzIgphcyBkdW1waW5nIGdyb3VuZCA7LSkgLgoKV2hvZXZlciBnb3QgdGhlIGlkZWEgb2YgbWFr
aW5nIHNkbW0vc2RpbyB0dW5pbmcgY29udHJvbHMgcGFydApvZiBHUkZzIHRoYXQgYXJlIHN1cHBv
c2VkIGRpc3BsYXkgYW5kL29yIHZpZGVvIGVuY29kZXIgcGFydHMgOi1ECgoKPiBHUkZzIGFyZSBs
b29rZWQgdXAgYnkgY29tcGF0aWJsZSB0byBzaW1wbGlmeSBkZXZpY2V0cmVlIGJpbmRpbmcuCj4g
Cj4gU2lnbmVkLW9mZi1ieTogWWFvIFppIDx6aXlhb0BkaXNyb290Lm9yZz4KPiAtLS0KCj4gIHN0
YXRpYyBpbnQgX19pbml0IGNsa19yazM1MjhfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAq
cGRldikKPiAgewo+ICsJdW5zaWduZWQgbG9uZyBucl92cHVfYnJhbmNoZXMgPSBBUlJBWV9TSVpF
KHJrMzUyOF92cHVfY2xrX2JyYW5jaGVzKTsKPiArCXVuc2lnbmVkIGxvbmcgbnJfdm9fYnJhbmNo
ZXMgPSBBUlJBWV9TSVpFKHJrMzUyOF92b19jbGtfYnJhbmNoZXMpOwo+ICsJdW5zaWduZWQgbG9u
ZyBucl9icmFuY2hlcyA9IEFSUkFZX1NJWkUocmszNTI4X2Nsa19icmFuY2hlcyk7Cj4gIAlzdHJ1
Y3Qgcm9ja2NoaXBfY2xrX3Byb3ZpZGVyICpjdHg7Cj4gIAlzdHJ1Y3QgZGV2aWNlICpkZXYgPSAm
cGRldi0+ZGV2Owo+ICAJc3RydWN0IGRldmljZV9ub2RlICpucCA9IGRldi0+b2Zfbm9kZTsKPiAt
CXVuc2lnbmVkIGxvbmcgbnJfYnJhbmNoZXMgPSBBUlJBWV9TSVpFKHJrMzUyOF9jbGtfYnJhbmNo
ZXMpOwo+IC0JdW5zaWduZWQgbG9uZyBucl9jbGtzOwo+ICsJc3RydWN0IHJlZ21hcCAqdm9fZ3Jm
LCAqdnB1X2dyZjsKPiAgCXZvaWQgX19pb21lbSAqcmVnX2Jhc2U7Cj4gLQo+IC0JbnJfY2xrcyA9
IHJvY2tjaGlwX2Nsa19maW5kX21heF9jbGtfaWQocmszNTI4X2Nsa19icmFuY2hlcywKPiAtCQkJ
CQkgICAgICAgbnJfYnJhbmNoZXMpICsgMTsKPiArCXVuc2lnbmVkIGxvbmcgbnJfY2xrczsKPiAg
Cj4gIAlyZWdfYmFzZSA9IGRldm1fcGxhdGZvcm1faW9yZW1hcF9yZXNvdXJjZShwZGV2LCAwKTsK
PiAgCWlmIChJU19FUlIocmVnX2Jhc2UpKQo+ICAJCXJldHVybiBkZXZfZXJyX3Byb2JlKGRldiwg
UFRSX0VSUihyZWdfYmFzZSksCj4gIAkJCQkgICAgICJjb3VsZCBub3QgbWFwIGNydSByZWdpb24i
KTsKPiAgCj4gKwlucl9jbGtzID0gcm9ja2NoaXBfY2xrX2ZpbmRfbWF4X2Nsa19pZChyazM1Mjhf
Y2xrX2JyYW5jaGVzLAo+ICsJCQkJCSAgICAgICBucl9icmFuY2hlcykgKyAxOwo+ICsKPiArCXZv
X2dyZiA9IHN5c2Nvbl9yZWdtYXBfbG9va3VwX2J5X2NvbXBhdGlibGUoInJvY2tjaGlwLHJrMzUy
OC12by1ncmYiKTsKPiArCWlmICghSVNfRVJSKHZvX2dyZikpCgpmb3IgcmVhZGFiaWxpdHksIHBs
ZWFzZSBtYWtlIHRoaXMgaW50byBzb21ldGhpbmcgbGlrZQoJaWYgKCFJU19FUlIodm9fZ3JmKSkg
ewoJCW5yX3ZvX2Nsa3MgPSByb2NrY2hpcF9jbGtfZmluZF9tYXhfY2xrX2lkKHJrMzUyOF92b19j
bGtfYnJhbmNoZXMsCgkJCQkJCQkgICBucl92b19icmFuY2hlcykgKyAxOwoJCW5yX2Nsa3MgPSBt
YXgobnJfdm9fY2xrcywgbnJfY2xrcyk7Cgl9Cgo+ICsJZWxzZSBpZiAoUFRSX0VSUih2b19ncmYp
ICE9IEVOT0RFVikKPiArCQlyZXR1cm4gZGV2X2Vycl9wcm9iZShkZXYsIFBUUl9FUlIodm9fZ3Jm
KSwKPiArCQkJCSAgICAgImZhaWxlZCB0byBsb29rIHVwIFZPIEdSRlxuIik7Cj4gKwo+ICsJdnB1
X2dyZiA9IHN5c2Nvbl9yZWdtYXBfbG9va3VwX2J5X2NvbXBhdGlibGUoInJvY2tjaGlwLHJrMzUy
OC12cHUtZ3JmIik7Cj4gKwlpZiAoIUlTX0VSUih2cHVfZ3JmKSkKPiArCQlucl9jbGtzID0gTUFY
KHJvY2tjaGlwX2Nsa19maW5kX21heF9jbGtfaWQocmszNTI4X3ZwdV9jbGtfYnJhbmNoZXMsCj4g
KwkJCQkJCQkgICBucl92cHVfYnJhbmNoZXMpICsgMSwKPiArCQkJICAgICAgbnJfY2xrcyk7Cgpz
YW1lIGhlcmUgcGxlYXNlCgo+ICsJZWxzZSBpZiAoUFRSX0VSUih2cHVfZ3JmKSAhPSBFTk9ERVYp
Cj4gKwkJcmV0dXJuIGRldl9lcnJfcHJvYmUoZGV2LCBQVFJfRVJSKHZwdV9ncmYpLAo+ICsJCQkJ
ICAgICAiZmFpbGVkIHRvIGxvb2sgdXAgVlBVIEdSRlxuIik7Cj4gKwo+ICAJY3R4ID0gcm9ja2No
aXBfY2xrX2luaXQobnAsIHJlZ19iYXNlLCBucl9jbGtzKTsKPiAgCWlmIChJU19FUlIoY3R4KSkK
PiAgCQlyZXR1cm4gZGV2X2Vycl9wcm9iZShkZXYsIFBUUl9FUlIoY3R4KSwKClRoYW5rcwpIZWlr
bwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==

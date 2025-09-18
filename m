Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 103DCCAC59A
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Sep 2025 17:31:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BLzOT9UU/3vGqXxiBRMMJ6DtrqGqbIXML/udGRWOcFQ=; b=Sk7fxUwHutdSro
	2CZpAZww024fUbYkCcbqpw+e44RICDhkNLG+bEjiz9AMjRbhwo1sUbmYpky56+hFBVeIxP4UqmI7a
	c6vONAbovvyWNhSrrDh5oApQJO2j1hrOsWkV8n++jJbxgoeRYZ3QAjLepjc8c256fX089hfGXHPnB
	JM1Zi6hZNBB24vRsHhqnoH18enqQyzeVTdCVsegMYWVyWgTNba1BSWr14DETCJA6WEcPtGEs1XKhK
	HOaDnX+i8N4xxQ42a0we3wiQY5vUNfuzx5IYdvV0skbIP2rYMXzP69z8R55xCNfMkswm726FoCR+G
	ubI1ZJRvAH3sdtHU7qEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzITW-00000000lD9-1Hab;
	Thu, 18 Sep 2025 17:31:18 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzITT-00000000lC6-0YwX;
	Thu, 18 Sep 2025 17:31:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=yReL3BW5cNgeOoU+ct6Z0+QfxkhYi0zLxLWspzmRmBU=; b=eO6eaCxDj6t7fnCop9QAYLYJgH
	59X7aMuS9JsaTAGxG7jM2PogXRFDOxYTBU0EHDKvoxfG31wmQDx/aTI2pKuqulDdPEgJthfghaKeb
	oDk9ZUzmBfJYRnAZ2iuE9+OyJnJHuYDS+SpstpkdeDwvln/C++hD6c3udYOu9/aWsagBPM0eotUl/
	sTVL4naZ5rlJdwaRQEixAQe5kFO9OuK/NLeKJIlOaDAxs3XV6HpgalP3DAoHVuLQpVEAxG/howhYn
	QH8jxLp+Etb+s3/d8+ccO+yTWQ1aXZrxGFmwFBznxC8TWo4wQPQBmTbsIuYMomj7Dxirrmpn9tOCY
	HYolQ8hg==;
Received: from i53875b0a.versanet.de ([83.135.91.10] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uzITJ-0002Pr-Qb; Thu, 18 Sep 2025 19:31:05 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: Chukun Pan <amadeus@jmu.edu.cn>, FUKAUMI Naoki <naoki@radxa.com>,
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Rob Herring <robh@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
Subject: Re: [PATCH v3 1/3] arm64: dts: rockchip: disable display subsystem for Radxa
 E52C
Date: Thu, 18 Sep 2025 19:31:05 +0200
Message-ID: <10594621.0AQdONaE2F@diego>
In-Reply-To: <20250901100027.164594-2-amadeus@jmu.edu.cn>
References: <20250901100027.164594-1-amadeus@jmu.edu.cn>
 <20250901100027.164594-2-amadeus@jmu.edu.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250918_103115_196578_AA89FA6A 
X-CRM114-Status: GOOD (  16.53  )
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

QW0gTW9udGFnLCAxLiBTZXB0ZW1iZXIgMjAyNSwgMTI6MDA6MjUgTWl0dGVsZXVyb3DDpGlzY2hl
IFNvbW1lcnplaXQgc2NocmllYiBDaHVrdW4gUGFuOgo+IFRoZSBSYWR4YSBFNTJDIFNCQyBkbyBu
b3QgaGF2ZSBIRE1JIG91dHB1dCwgc28gZGlzYWJsZQo+IHRoZSBkaXNwbGF5IHN1YnN5c3RlbSB0
byBhdm9pZCB0aGUgZm9sbG93aW5nIGVycm9yIGxvZzoKPiAKPiAqRVJST1IqIE5vIGF2YWlsYWJs
ZSB2b3AgZm91bmQgZm9yIGRpc3BsYXktc3Vic3lzdGVtLgo+IAo+IEZpeGVzOiA5YmU0MTcxMjE5
YjYgKCJhcm02NDogZHRzOiByb2NrY2hpcDogQWRkIFJhZHhhIEU1MkMiKQo+IFNpZ25lZC1vZmYt
Ynk6IENodWt1biBQYW4gPGFtYWRldXNAam11LmVkdS5jbj4KCkknbSB0b3JuIG9uIHRoZSBhcHBy
b2FjaCB2cy4ganVzdCByZW1vdmluZyB0aGUgZXJyb3IgbGluZSBpbiB0aGUgZHJpdmVyLgoKUmV0
dXJuaW5nIC1FTk9ERVYgZnJvbSByb2NrY2hpcF9kcm1fcGxhdGZvcm1fb2ZfcHJvYmUoKSBpcyBj
b3JyZWN0LApidXQgdGhlIGVycm9yIGxvZyBjb3VsZCBqdXN0IGJlIGEgZGVidWcgb25lIGluc3Rl
YWQuCgpCZWNhdXNlIHJ1bm5pbmcgYSBzeXN0ZW0gd2l0aG91dCBhY3RpdmUgdm9wcyBpcyBvYnZp
b3VzbHkgZmluZS4KCgpIZWlrbwoKPiAtLS0KPiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazM1ODItcmFkeGEtZTUyYy5kdHMgfCA0ICsrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5z
ZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzU4Mi1yYWR4YS1lNTJjLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsz
NTgyLXJhZHhhLWU1MmMuZHRzCj4gaW5kZXggNDhkZGM0M2UyYWI1Li4xODgzYmQxODMzOTYgMTAw
NjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODItcmFkeGEtZTUy
Yy5kdHMKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4Mi1yYWR4YS1l
NTJjLmR0cwo+IEBAIC0yMDcsNiArMjA3LDEwIEBAICZjcHVfbDMgewo+ICAJY3B1LXN1cHBseSA9
IDwmdmRkX2NwdV9saXRfczA+Owo+ICB9Owo+ICAKPiArJmRpc3BsYXlfc3Vic3lzdGVtIHsKPiAr
CXN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4gK307Cj4gKwo+ICAmaTJjMCB7Cj4gIAlwaW5jdHJsLW5h
bWVzID0gImRlZmF1bHQiOwo+ICAJcGluY3RybC0wID0gPCZpMmMwbTJfeGZlcj47Cj4gCgoKCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

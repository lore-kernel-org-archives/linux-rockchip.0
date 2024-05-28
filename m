Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6292EC25B7C
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 May 2024 11:52:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XKSGmxmMyDMUHRAWv6PkTNByrC6rYRSX/krNVULhseM=; b=kCZ50xna17ZqQO
	yhLaOA4ZfiB2hu9apIo41kf8PNUhSvjrDQfA2bQHU3Nwto3Je7/CwKkQe/pYP+6He2mIvodf5qkOP
	OdZ8OQLj5I2qi+QP1IJaLCMA7DfRuBHkveQ5y3gIAahqZD2byWDD5mh1rZponNlfcCz11e1BZvvTL
	GjBzLViARDcQYa0BvgYqHDIK2B5AIsttyPoGj8qtBWj4XpKBvR1VL9ZaAcUvv6fKhZXIHsPENleEd
	dhbrnMoYxe9xSwJRlmcr4O7si4aSCNFiOmh3D83D7nr/17zOS8sZ258hxL22t/WqS5Rb5L+DRhfQX
	krbt1Ys0M34eyOc3ymuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBvNQ-00000000SUF-2UgO;
	Tue, 28 May 2024 11:52:24 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBvNN-00000000SSO-2DOA;
	Tue, 28 May 2024 11:52:22 +0000
Received: from i5e86193d.versanet.de ([94.134.25.61] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sBvNH-0003GJ-RU; Tue, 28 May 2024 13:52:15 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Dmitry Yashin <dmt.yashin@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Jianqun Xu <jay.xu@rock-chips.com>, devicetree@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] pinctrl: rockchip: update rk3308 iomux routes
Date: Tue, 28 May 2024 13:52:14 +0200
Message-ID: <1770701.X513TT2pbd@diego>
In-Reply-To: <CACRpkdYO_zr=OEZCv8LKtw+fNOwJ906ZVKyPhbbyA=9gP5XQgg@mail.gmail.com>
References: <20240515121634.23945-1-dmt.yashin@gmail.com>
 <20240515121634.23945-2-dmt.yashin@gmail.com>
 <CACRpkdYO_zr=OEZCv8LKtw+fNOwJ906ZVKyPhbbyA=9gP5XQgg@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_045221_587365_4FD4C7AF 
X-CRM114-Status: GOOD (  13.97  )
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

SGkgTGludXMsCgpBbSBEaWVuc3RhZywgMjguIE1haSAyMDI0LCAxMzoyOToxMiBDRVNUIHNjaHJp
ZWIgTGludXMgV2FsbGVpajoKPiBPbiBXZWQsIE1heSAxNSwgMjAyNCBhdCAyOjE34oCvUE0gRG1p
dHJ5IFlhc2hpbiA8ZG10Lnlhc2hpbkBnbWFpbC5jb20+IHdyb3RlOgo+IAo+ID4gU29tZSBvZiB0
aGUgcmszMzA4IGlvbXV4IHJvdXRlcyBpbiByazMzMDhfbXV4X3JvdXRlX2RhdGEgYmVsb25nIHRv
Cj4gPiB0aGUgcmszMzA4YiBTb0MuIFJlbW92ZSB0aGVtIGFuZCBjb3JyZWN0IGkyYzMgcm91dGVz
Lgo+ID4KPiA+IEZpeGVzOiA3ODI1YWViN2IyMDggKCJwaW5jdHJsOiByb2NrY2hpcDogYWRkIHJr
MzMwOCBTb0Mgc3VwcG9ydCIpCj4gPiBTaWduZWQtb2ZmLWJ5OiBEbWl0cnkgWWFzaGluIDxkbXQu
eWFzaGluQGdtYWlsLmNvbT4KPiAKPiBXaGlsZSB5b3UgZ3V5cyBhcmUgdGhpbmtpbmcgYWJvdXQg
dGhlIFJLMzMwOEIgc3VwcG9ydCwgaXMgdGhpcyBmaXgKPiBzb21ldGhpbmcgSSBjYW4ganVzdCBh
cHBseT8KCkknZCB0aGluayBzby4gSSd2ZSBkZXRhaWxlZCBzdHVmZiBpbiBteSBSZXZpZXcgbWFp
bCBJIGp1c3Qgc2VudC4KQm90aCB0aGUgc29jIGl0c2VsZiBhbmQgYWxzbyB0aGUgYWZmZWN0ZWQg
cGluIGZ1bmN0aW9ucyBhcmUgbmljaGUKZW5vdWdoIHRoYXQgdGhpcyBzaG91bGQgbm90IGNhdXNl
IGJyZWFrYWdlLgoKCkhlaWtvCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK

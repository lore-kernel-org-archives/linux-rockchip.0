Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B284CE6FE4B
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Sep 2024 23:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:To:Cc:From:Subject:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GPXjZ4uxyzSdoQRmIoJS3E1ks1xBKHmgq0FPEW6bbR4=; b=i9bnWggbIS5VW9
	mXYIknVLH2lWuVIaKy4nD/ufhJa6xJnUuW1CyyPBsSfAQCW9I/vubBkleTxKtfTlrycTSA9hvtOCB
	UMmanTUYe3luSLtVvsvI0/MQQg9bvZJDZOcvXZbAgKns8x5H/fPF+ierF/ftYknxp89DG+/IwRrNl
	fOh32USzWxzZf5T0yMQaEXva81MxaIrzxPI/aAw1NBUh/PC2idrpnYhqf852XnyJIlMLePRF+44a6
	BQP6UdEhZgp3LF7HdIf68oOmpU/+AsIJkRinunBqlEwqLGgZiDUKsnmr+5XG/aTUf1zDGTqFV7lDO
	Hd3fsXpHgL5uPWAaWc9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smhz1-0000000DpN7-0Q38;
	Fri, 06 Sep 2024 23:03:15 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smhy0-0000000DpDp-0aZG;
	Fri, 06 Sep 2024 23:02:13 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id D5000A410E7;
	Fri,  6 Sep 2024 23:02:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BF4F0C4CEC5;
	Fri,  6 Sep 2024 23:02:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725663730;
	bh=ldflI04Ts9BSmUuRhFXFjpTFI7d5OrKXMZDtQeiJu+k=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=oHUoICWtCtwGqLgYdGmyD7Ju3yflh55yITURS00j6N3pfj4WeVnawdt9gwXlExhRb
	 nQVWElBJa+7LSNjsiIAQD4ZefcamFbwjfAwhOWd9Jj8i87bsfTsOYqpen2scJEpV+x
	 it6MlCsWeQT6Fdq4SDovdESx8h7eHxHHcen8GNoMYES1fVfMFgU6zxbWD0t67j2/hk
	 vkPNaf75x/KQpJtrSvwO7mwaaVc+rxjqjVpB5d7TtmI3DHjq8DqlVJgXoduUptF9FJ
	 GNA8D5JDHOZVD0T4j6sJZAuCX8DqzuFLCShteQN2d7ouZcg4oHOYAvk79vgi8GHDkh
	 65bUcAV0YtX4A==
Message-ID: <91eca16a2453514123e8ffd5346297eb.sboyd@kernel.org>
MIME-Version: 1.0
In-Reply-To: <5168975.haC6HkEk0m@diego>
References: <20240828101503.1478491-1-heiko@sntech.de> <20240828101503.1478491-5-heiko@sntech.de> <9b92b5f03632e8793253ba75fc00f6e3.sboyd@kernel.org> <5168975.haC6HkEk0m@diego>
Subject: Re: [PATCH v3 4/5] clk: clk-gpio: add driver for gated-fixed-clocks
From: Stephen Boyd <sboyd@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
To: Heiko =?utf-8?q?St=C3=BCbner?= <heiko@sntech.de>, mturquette@baylibre.com
Date: Fri, 06 Sep 2024 16:02:08 -0700
User-Agent: alot/0.10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_160212_264273_3F00B3F4 
X-CRM114-Status: GOOD (  10.08  )
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

UXVvdGluZyBIZWlrbyBTdMO8Ym5lciAoMjAyNC0wOS0wNSAxNTo0ODozNSkKPiBBbSBNaXR0d29j
aCwgMjguIEF1Z3VzdCAyMDI0LCAyMDozMDo1MSBDRVNUIHNjaHJpZWIgU3RlcGhlbiBCb3lkOgo+
ID4gUXVvdGluZyBIZWlrbyBTdHVlYm5lciAoMjAyNC0wOC0yOCAwMzoxNTowMikKPiAKPiBbbGVh
dmluZyBvdXQgYWxsIHRoZSAid2lsbCBmaXgiIHBhcnRzIDotKSBdCj4gCj4gPiA+ICtzdGF0aWMg
c3RydWN0IHBsYXRmb3JtX2RyaXZlciBnYXRlZF9maXhlZF9jbGtfZHJpdmVyID0gewo+ID4gPiAr
ICAgICAgIC5wcm9iZSAgICAgICAgICA9IGNsa19nYXRlZF9maXhlZF9wcm9iZSwKPiA+ID4gKyAg
ICAgICAuZHJpdmVyICAgICAgICAgPSB7Cj4gPiA+ICsgICAgICAgICAgICAgICAubmFtZSAgID0g
ImdhdGVkLWZpeGVkLWNsayIsCj4gPiA+ICsgICAgICAgICAgICAgICAub2ZfbWF0Y2hfdGFibGUg
PSBnYXRlZF9maXhlZF9jbGtfbWF0Y2hfdGFibGUsCj4gPiA+ICsgICAgICAgfSwKPiA+ID4gK307
Cj4gPiA+ICtidWlsdGluX3BsYXRmb3JtX2RyaXZlcihnYXRlZF9maXhlZF9jbGtfZHJpdmVyKTsK
PiA+IAo+ID4gVGhlIGNvbW1lbnQgYWJvdmUgYnVpbHRpbl9wbGF0Zm9ybV9kcml2ZXIgc2F5cyAi
RWFjaCBkcml2ZXIgbWF5IG9ubHkgdXNlCj4gPiB0aGlzIG1hY3JvIG9uY2UiLiBTZWVtcyB0aGF0
IHdlIG5lZWQgdG8gZXhwYW5kIHRoZSBtYWNyby4KPiAKPiBlYWNoIF9kcml2ZXJfLCBub3QgZWFj
aCBmaWxlIGlzIHRoZSBpbXBvcnRhbnQgcG9pbnQgSSB0aGluay4KCk9rIQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

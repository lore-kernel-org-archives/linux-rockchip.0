Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35B13C636CC
	for <linux-rockchip@archiver.kernel.org>; Sat,  4 Feb 2023 14:02:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rvyng+oBfpQASefNeWLlKfQHY+gDl3tpEp/eo8ikoXM=; b=WTDbgWwF0tOCNK
	S0UjdcURHn6PtQ7JjzmgFFC3hkXNY2M+79RTVDKLS6zJcvoYJevidj0lK/TuiqOk78BLf51IFwUTl
	S//touqWi04N78O4p0AQ+zBb0Ted0WcO0h7srJC/mBxbOlfTGgyngWY7ue0DekzX5n2bh9K40gL6X
	h+SVjskhHGAcUy1VNtgTiWrKbW99+/i7qwTnMQ/7Fjk1C/f3Wvj7ojJk6vTv6VR0XT2Q7z5CwPG/6
	YPgyZ3oWJVgYycMC19C+s8+kFHTN2yp6z3EIm2X3zwLdiqq5FkXtkixVZspMjNGSWDZ69bIuIrOSX
	OLhp3b22Sl6umZ5ZQcpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pOJ7S-0059oS-GZ; Sat, 04 Feb 2023 14:02:18 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pOJ7P-0059nE-EU
	for linux-rockchip@lists.infradead.org; Sat, 04 Feb 2023 14:02:16 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id C8FE3B80AE1;
	Sat,  4 Feb 2023 14:02:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6317FC433EF;
	Sat,  4 Feb 2023 14:01:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675519332;
	bh=4tevTq0ZK3e0nDQwHERVCexCjZDk0MAnrNVo/rkAtsQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=joVtuQRYAVX0+8t9Tme5RiGcFra0dHmP91Fsusdtx8tAA3gVYL331+8inIDQe1R7K
	 g2oLr9taLiS+4od38oVeknqkd5+54Xk1nkd1RrfIre/74PbzP0WJXLIGk4nEy134Vs
	 89MKJMZaXJLqGzIcsmCXEcBQoK9wDUIeO0mHajMIJ+Sis5pA9+m+D4tiORXp41lmKn
	 HWnhw6Lnd7LuQaMWtmHrWMWNmNOneEEByt5BOX6bSJT/rictUO6IkR4NAozVaWFQiW
	 7i7t4c074Ct/i+ySIrDIwFSXgdKMRZBqInQ9ds+5YYqN0ebKjqIPh0YByC6fMy3So1
	 +GVt8Lm/LTb+w==
Date: Sat, 4 Feb 2023 14:01:46 +0000
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
Subject: Re: [PATCHv6 05/11] mfd: rk808: split into core and i2c
Message-ID: <Y95lSpUaOnbSAOIC@google.com>
References: <20230127181244.160887-1-sebastian.reichel@collabora.com>
 <20230127181244.160887-6-sebastian.reichel@collabora.com>
 <Y95jJYlqDayiaMP1@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y95jJYlqDayiaMP1@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230204_060215_671272_D7B3426A 
X-CRM114-Status: GOOD (  14.30  )
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

T24gU2F0LCAwNCBGZWIgMjAyMywgTGVlIEpvbmVzIHdyb3RlOgoKPiBPbiBGcmksIDI3IEphbiAy
MDIzLCBTZWJhc3RpYW4gUmVpY2hlbCB3cm90ZToKPiAKPiA+IFNwbGl0IHJrODA4IGludG8gYSBj
b3JlIGFuZCBhbiBpMmMgcGFydCBpbiBwcmVwZXJhdGlvbiBmb3IKPiA+IFNQSSBzdXBwb3J0Lgo+
ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJlaWNo
ZWxAY29sbGFib3JhLmNvbT4KPiA+IC0tLQo+ID4gIGRyaXZlcnMvY2xrL0tjb25maWcgICAgICAg
ICAgICAgICAgICAgfCAgIDIgKy0KPiA+ICBkcml2ZXJzL2lucHV0L21pc2MvS2NvbmZpZyAgICAg
ICAgICAgIHwgICAyICstCj4gPiAgZHJpdmVycy9tZmQvS2NvbmZpZyAgICAgICAgICAgICAgICAg
ICB8ICAgNyArLQo+ID4gIGRyaXZlcnMvbWZkL01ha2VmaWxlICAgICAgICAgICAgICAgICAgfCAg
IDMgKy0KPiA+ICBkcml2ZXJzL21mZC97cms4MDguYyA9PiByazh4eC1jb3JlLmN9IHwgMjA5ICsr
KysrLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gPiAgZHJpdmVycy9tZmQvcms4eHgtaTJjLmMgICAg
ICAgICAgICAgICB8IDIwMCArKysrKysrKysrKysrKysrKysrKysrKysKPiA+ICBkcml2ZXJzL3Bp
bmN0cmwvS2NvbmZpZyAgICAgICAgICAgICAgIHwgICAyICstCj4gPiAgZHJpdmVycy9wb3dlci9z
dXBwbHkvS2NvbmZpZyAgICAgICAgICB8ICAgMiArLQo+ID4gIGRyaXZlcnMvcmVndWxhdG9yL0tj
b25maWcgICAgICAgICAgICAgfCAgIDIgKy0KPiA+ICBkcml2ZXJzL3J0Yy9LY29uZmlnICAgICAg
ICAgICAgICAgICAgIHwgICAyICstCj4gPiAgaW5jbHVkZS9saW51eC9tZmQvcms4MDguaCAgICAg
ICAgICAgICB8ICAgNiArCj4gPiAgc291bmQvc29jL2NvZGVjcy9LY29uZmlnICAgICAgICAgICAg
ICB8ICAgMiArLQo+ID4gIDEyIGZpbGVzIGNoYW5nZWQsIDI1NiBpbnNlcnRpb25zKCspLCAxODMg
ZGVsZXRpb25zKC0pCj4gPiAgcmVuYW1lIGRyaXZlcnMvbWZkL3tyazgwOC5jID0+IHJrOHh4LWNv
cmUuY30gKDc2JSkKPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9tZmQvcms4eHgtaTJj
LmMKPiAKPiBMb29rcyBsaWtlIHlvdSBjb21wbGV0ZWx5IGlnbm9yZWQgKG5vIHJlc3BvbnNlIC8g
bm8gYWN0aW9uKSBteSByZXZpZXcgb2YKPiB2NC4gIFRoaXMgc3VibWlzc2lvbiBpcyB0aGVyZWZv
cmUgbm90IGdldHRpbmcgb25lISAgQWxsIGNvbW1lbnRzIGNhbiBiZQo+IHN1cGVyaW1wb3NlZCBm
cm9tIHY0LgoKcy92NC92NS8KCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

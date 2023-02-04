Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11839C636CC
	for <linux-rockchip@archiver.kernel.org>; Sat,  4 Feb 2023 13:53:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gg9eIARt+3AssJ8yAYfYJCkEXh7kXhNWfHw/Kbjx+ww=; b=IX1geCt7Uawg+1
	SbXiQMyIUFFax2SchnOlqgN0msEGEuISg9wue/kAnHySqooJvCxcQp/yyWcYeBxOpzSgD9MUOKWmN
	oL8rpNhzIlgmiZtzFU0OsS4tSTR2IczISS01x+wPm6GEU8p91d4qSm6Q7odNW9PFf4W7k1mes/iyp
	24zMP3Fz2wyoj/YauSAUfZiJ3w8iVMoKDfpWeOmlxYwSWadegFsAGgphVquYWSDTrEwRU2aTnWJP9
	7H+eXkPRla3rPLEk7IrdCDXPZU49czqMCtHWZ/0s0lA/augLK1ahaxKO/Dcl+QYr7/8GFeTdACkeo
	URJdWu/qQRZk/Y8V/iLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pOIyb-0059H3-I6; Sat, 04 Feb 2023 13:53:09 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pOIyY-0059GG-MH
	for linux-rockchip@lists.infradead.org; Sat, 04 Feb 2023 13:53:08 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 2CA35B80AB2;
	Sat,  4 Feb 2023 13:53:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D6D70C433EF;
	Sat,  4 Feb 2023 13:52:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675518779;
	bh=SBmLBfbPwmxMq1JunLKNGqJ1Bg0KuqBM2RCdrwTq2f0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=k1siZoUCWHvsI1gm4KBlpR5GVlfW0Lv/noX57QpCfnPyIVioS8qF3mvjMxZ13UDh3
	 IDTs66nEqbYrUbXDISefcBayDN+LKWn131pcTJ38A2d3hk/yc83kLLL61OgDvPjEdp
	 rQcJ0qv8nqYQJuEj8UW4rXBX5ezx/nxd2i5//MFVB6q0nP5bbqCfmuYwcOV6JHKZck
	 NHg66tGHP8n0Z4WQfMEzBrWRewrcbVIbtFc9Kq34wrCTVeSOSt8lY4dHfuSjOGPkyG
	 BRf78chuuAsNNsnZO9KY5VEdV6ijQ4cmJ9nFg+LE2IediO9ie0cv0MVZqhNLOlfn/A
	 bGn6XczXC6q8A==
Date: Sat, 4 Feb 2023 13:52:37 +0000
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
Message-ID: <Y95jJYlqDayiaMP1@google.com>
References: <20230127181244.160887-1-sebastian.reichel@collabora.com>
 <20230127181244.160887-6-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230127181244.160887-6-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230204_055306_919630_8B9304C6 
X-CRM114-Status: GOOD (  11.81  )
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

T24gRnJpLCAyNyBKYW4gMjAyMywgU2ViYXN0aWFuIFJlaWNoZWwgd3JvdGU6Cgo+IFNwbGl0IHJr
ODA4IGludG8gYSBjb3JlIGFuZCBhbiBpMmMgcGFydCBpbiBwcmVwZXJhdGlvbiBmb3IKPiBTUEkg
c3VwcG9ydC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFu
LnJlaWNoZWxAY29sbGFib3JhLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9jbGsvS2NvbmZpZyAgICAg
ICAgICAgICAgICAgICB8ICAgMiArLQo+ICBkcml2ZXJzL2lucHV0L21pc2MvS2NvbmZpZyAgICAg
ICAgICAgIHwgICAyICstCj4gIGRyaXZlcnMvbWZkL0tjb25maWcgICAgICAgICAgICAgICAgICAg
fCAgIDcgKy0KPiAgZHJpdmVycy9tZmQvTWFrZWZpbGUgICAgICAgICAgICAgICAgICB8ICAgMyAr
LQo+ICBkcml2ZXJzL21mZC97cms4MDguYyA9PiByazh4eC1jb3JlLmN9IHwgMjA5ICsrKysrLS0t
LS0tLS0tLS0tLS0tLS0tLS0tCj4gIGRyaXZlcnMvbWZkL3JrOHh4LWkyYy5jICAgICAgICAgICAg
ICAgfCAyMDAgKysrKysrKysrKysrKysrKysrKysrKysrCj4gIGRyaXZlcnMvcGluY3RybC9LY29u
ZmlnICAgICAgICAgICAgICAgfCAgIDIgKy0KPiAgZHJpdmVycy9wb3dlci9zdXBwbHkvS2NvbmZp
ZyAgICAgICAgICB8ICAgMiArLQo+ICBkcml2ZXJzL3JlZ3VsYXRvci9LY29uZmlnICAgICAgICAg
ICAgIHwgICAyICstCj4gIGRyaXZlcnMvcnRjL0tjb25maWcgICAgICAgICAgICAgICAgICAgfCAg
IDIgKy0KPiAgaW5jbHVkZS9saW51eC9tZmQvcms4MDguaCAgICAgICAgICAgICB8ICAgNiArCj4g
IHNvdW5kL3NvYy9jb2RlY3MvS2NvbmZpZyAgICAgICAgICAgICAgfCAgIDIgKy0KPiAgMTIgZmls
ZXMgY2hhbmdlZCwgMjU2IGluc2VydGlvbnMoKyksIDE4MyBkZWxldGlvbnMoLSkKPiAgcmVuYW1l
IGRyaXZlcnMvbWZkL3tyazgwOC5jID0+IHJrOHh4LWNvcmUuY30gKDc2JSkKPiAgY3JlYXRlIG1v
ZGUgMTAwNjQ0IGRyaXZlcnMvbWZkL3JrOHh4LWkyYy5jCgpMb29rcyBsaWtlIHlvdSBjb21wbGV0
ZWx5IGlnbm9yZWQgKG5vIHJlc3BvbnNlIC8gbm8gYWN0aW9uKSBteSByZXZpZXcgb2YKdjQuICBU
aGlzIHN1Ym1pc3Npb24gaXMgdGhlcmVmb3JlIG5vdCBnZXR0aW5nIG9uZSEgIEFsbCBjb21tZW50
cyBjYW4gYmUKc3VwZXJpbXBvc2VkIGZyb20gdjQuCgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9d
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==

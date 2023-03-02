Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53260C678D4
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Mar 2023 16:24:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c7bGV4ofJZym2GbPVKsPx4ws1YIot8RlV1KCebkvS9U=; b=QXTT8eWqMhbYM+
	0VHhmfsRT4sNQibvJD0GzgTX3cqx+bTpS9PCrLTX2rIrcJ4I7R7oaLm1wzO9x8KQ2pFZpGAzzSuyW
	VQf13F/utCMXd2engkBj/KBcnKMh14Ar1BmArH0QkR6T+S/XCnEThBvMRJLKJRz97RNqtVhONsu/n
	k2p/aoPUDZXSqBS+1oLBaTJdAa5kzZ3VArwud716UhZ8799nZx/hl5rGduFhKMlT9YO97gCbHK+FN
	h47J1eWvqphRnIjjJiG7tTG5Cf1cxQ0f4fmqEBfrIW/goxT82Op9ajUgzrY3j4jem5ZpvRtSSqX/+
	SCXAcHpRtTSNMf9gLvLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXljH-002oV2-Qb; Thu, 02 Mar 2023 16:24:27 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXljE-002oUD-RT
	for linux-rockchip@lists.infradead.org; Thu, 02 Mar 2023 16:24:26 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 608DD615E1;
	Thu,  2 Mar 2023 16:24:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4C705C4339B;
	Thu,  2 Mar 2023 16:24:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677774264;
	bh=01eFD8NRrrvAiM4AYxII8YQ6013KzfYsBOCDwIhd+ZY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lTZIlxe8deWSZQ5rEFJs29iUepulOlAAlxQR3Ne3AoDPeNHkhXE7o+ld+loowZ3Vn
	 l2cjIruF8pauinMBDuj3kwWtE9xg17l+sbV86eCXFpSVICOXpsCBeDI45Wim6A2Qqf
	 DEouxOderMvwB1mwhqFFoeZ74CANBSP56+i/NicdkCshAgLqUzuGk3ejhFg7Ac2taH
	 l7Hy/PtYSZAH/XmfJzWhZ1fEX6CSDxh0izCNZmeBXz8ovB6AYPqCiw/JQ7brAun/7x
	 9LIFeo2SEtCKsWsBaYHmYBrbtYIZFCgz96jiZGv3lBeml5+FwmsrgnTraWBdIr5MSh
	 WN1Mxf83/vVqw==
Date: Thu, 2 Mar 2023 16:24:18 +0000
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
Message-ID: <ZADNsoIYBEpPJH1F@google.com>
References: <20230127181244.160887-1-sebastian.reichel@collabora.com>
 <20230127181244.160887-6-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230127181244.160887-6-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230302_082424_972653_A35ED612 
X-CRM114-Status: GOOD (  11.91  )
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
ZGUgMTAwNjQ0IGRyaXZlcnMvbWZkL3JrOHh4LWkyYy5jCgpGb3IgbXkgb3duIHJlZmVyZW5jZSAo
YXBwbHkgdGhpcyBhcy1pcyB0byB5b3VyIHNpZ24tb2ZmIGJsb2NrKToKCkFja2VkLWZvci1NRkQt
Ynk6IExlZSBKb25lcyA8bGVlQGtlcm5lbC5vcmc+CgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9d
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F9CDC44501
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jul 2026 19:21:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VS6cTpSuJFg0VaBEmlY/Nk6+/lPaF8rLuN23hy8zRdE=; b=BCMhKFf2w6PvNL
	7HXqRZo6PGSPYT3GMZZu57M2YrcRePMwUmPizDCMXX5FBnw9V0YL6/5tVDNqDofi31CbpumfLySYr
	QlepWJnaEs8qzdNVISJ+y0XnB96M1MCfzL/rKjjYNQwRoO6H5l/UJTr8hz4lJd0ewnAo5r+WScEoI
	Ts9VaF1tNZT+RGNlO2T+Q1lVkKlh/z2pIb/QUDZVJxBnj8CTB3aUYUJW8Qw8Ca2l5WXO7UFI1uZxh
	sNS4jWHTuj6lq2Yrca1AkweAdS88PHig0W36IZSCKb0qTk7DBmZqN9p76MvEuZVvFiEYhSlQVmuvN
	NXAfrSHO7Vccfk2jYqNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wk5Ag-0000000FmKt-3A6t;
	Wed, 15 Jul 2026 19:21:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wk5Ae-0000000FmKP-2bto;
	Wed, 15 Jul 2026 19:21:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=GRvBsyOxjoM7JpMGphXVWqRw3nmtRnJk0afh/8PqTyE=; b=R3tAvy2Zn6mL2TjWKqMx87QUY8
	W3uAEocfkN9IncKeWxVb1X5xtGBhECmRmknAmm2aaXXnvzmICIDGQLo+FBtnB0sfWqkDIhCiTw2lk
	i19Ee3OnmHPgOreZkMCcgvB6Gfq0Bld7FniZ4W0adpUT0NFuPg0vk2SKEHvTvD+izXtVKJ4dpizU+
	f5pMu9pcOkgJq5h9hhrydpOhx/0Cl19MR1XL8yYNTbFkn00TX7DaTcnm8pDIMzah2XbTsRj8dr4rw
	lf6x4j8DaoPpOnlKmLqy/FdKiMr2RplpduZ8dJaty51uRIsBOcqbyXk11FZE/jJFUWtwOkf1/7Cx8
	B7NU7cmA==;
From: Heiko Stuebner <heiko@sntech.de>
To: Jonathan Cameron <jic23@kernel.org>, Simon Glass <sjg@chromium.org>
Cc: Andy Shevchenko <andy@kernel.org>, David Lechner <dlechner@baylibre.com>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>, linux-rockchip@lists.infradead.org,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Nuno =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>, Rob Herring <robh@kernel.org>,
 Simon Glass <sjg@chromium.org>, Jonas Karlman <jonas@kwiboo.se>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: iio: adc: rockchip-saradc: Add RV1106 compatible
Date: Wed, 15 Jul 2026 21:21:17 +0200
Message-ID: <5684233.Sb9uPGUboI@phil>
In-Reply-To: <20260714131631.v2.1.0b846080833e4b836793c43fc26d1c6d817cf9b4@changeid>
References: <20260714131631.v2.1.0b846080833e4b836793c43fc26d1c6d817cf9b4@changeid>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260715_122128_776939_82BB2F81 
X-CRM114-Status: UNSURE (   7.25  )
X-CRM114-Notice: Please train this message.
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

QW0gRGllbnN0YWcsIDE0LiBKdWxpIDIwMjYsIDIxOjE2OjMyIE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgU2ltb24gR2xhc3M6Cj4gQWRkIHRoZSBjb21wYXRpYmxlIGZvciB0
aGUgU0FSQURDIG9mIHRoZSBSb2NrY2hpcCBSVjExMDYsIHdoaWNoIGlzCj4gY29tcGF0aWJsZSB3
aXRoIHRoZSBSSzM1ODggdmFyaWFudC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBTaW1vbiBHbGFzcyA8
c2pnQGNocm9taXVtLm9yZz4KClJldmlld2VkLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250
ZWNoLmRlPgoKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK

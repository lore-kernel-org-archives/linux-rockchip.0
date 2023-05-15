Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A282BC77B7D
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 May 2023 15:19:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N0pdp7yLezC+OMkfNo62AYdut+H7tGFcbwIWujpXwlU=; b=NvCBO9qBsZ46Ms
	PT7s+2yDkDkiF43Q6baJ+JF2Un9tOIh1S9zUZnyN7xyGinXObW3PKRFXgFGhmckojIVet93J9//I0
	5oEBaVnXMC84BCM3EmiplAHPgN3wvMgkZ6mFJIzba/0sJi4OzC8xdPG5m1mtAnP8jj+MJWPjrIUJQ
	yRmol0o3ujQGGAIK+gyTU2W1/usbFwOd7EsMgw4a3BmuLY6TkYUThzJBIMBpGwCDvM2Z0YMKrEEPa
	Eqxeo3G2Ksja9bUtTR/aWAxE721bTjkugLvgLO1mY6LQYMbP04BoDjd34i+F4ncRkXibnPy31RfRh
	wh6pydiIHVFAMRkow6Aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pyZyv-002Y4B-2H;
	Mon, 15 May 2023 15:19:25 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pyZyt-002Y3M-1f
	for linux-rockchip@lists.infradead.org;
	Mon, 15 May 2023 15:19:24 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id C956361FC2;
	Mon, 15 May 2023 15:19:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 57EACC433D2;
	Mon, 15 May 2023 15:19:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684163962;
	bh=gSsz0TtD4VwTX5/SiNoopUYE4KqZEhjXfngLTmzZtnw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ouzHOk/POs9ihJcT5jFuJ6wSQyvQoWmvcGhchKiEzE3/u7VdNW5LhXOeMvXNtWLLT
	 qhAO0Zm/NfpDzvKxhkwJuxIB469P+0Js2+GVsYtInOEuD7lP+1NuOk0Xhe6+KaxAq5
	 oQjmRI8u8LP0jfSYjMz9FHNzdSqhV4e9v4LzQAWHXX4QNbNApPglidaC4l+Cmfsu05
	 A7IiznSHmy/BzxEfZX3skPaDdgNCSr8lGkl9RVaD1mntvZm5Gr9r612ek+m3B/33bz
	 nakja/e5O8nvBtgmi8Z5lQHYNAbW9gEjNdQSVAjrM3Ejn8AcM76uaOsOdH19G4bvXL
	 83OxEBEDZtT0Q==
Date: Mon, 15 May 2023 16:19:14 +0100
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
	linux-kernel@vger.kernel.org, kernel@collabora.com,
	Diederik de Haas <didi.debian@cknow.org>,
	Vincent Legoll <vincent.legoll@gmail.com>
Subject: Re: [PATCH v8 05/14] mfd: rk808: split into core and i2c
Message-ID: <20230515151914.GQ10825@google.com>
References: <20230504173618.142075-1-sebastian.reichel@collabora.com>
 <20230504173618.142075-6-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230504173618.142075-6-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230515_081923_591808_E64D0EA2 
X-CRM114-Status: GOOD (  12.23  )
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

T24gVGh1LCAwNCBNYXkgMjAyMywgU2ViYXN0aWFuIFJlaWNoZWwgd3JvdGU6Cgo+IFNwbGl0IHJr
ODA4IGludG8gYSBjb3JlIGFuZCBhbiBpMmMgcGFydCBpbiBwcmVwYXJhdGlvbiBmb3IKPiBTUEkg
c3VwcG9ydC4KPiAKPiBBY2tlZC1mb3ItTUZELWJ5OiBMZWUgSm9uZXMgPGxlZUBrZXJuZWwub3Jn
Pgo+IEFja2VkLWJ5OiBBbGV4YW5kcmUgQmVsbG9uaSA8YWxleGFuZHJlLmJlbGxvbmlAYm9vdGxp
bi5jb20+ICMgZm9yIFJUQwo+IFRlc3RlZC1ieTogRGllZGVyaWsgZGUgSGFhcyA8ZGlkaS5kZWJp
YW5AY2tub3cub3JnPiAjIFJvY2s2NCwgUXVhcnR6NjQgTW9kZWwgQSArIEIKPiBUZXN0ZWQtYnk6
IFZpbmNlbnQgTGVnb2xsIDx2aW5jZW50LmxlZ29sbEBnbWFpbC5jb20+ICMgUGluZTY0IFF1YXJ0
elBybzY0Cj4gU2lnbmVkLW9mZi1ieTogU2ViYXN0aWFuIFJlaWNoZWwgPHNlYmFzdGlhbi5yZWlj
aGVsQGNvbGxhYm9yYS5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvY2xrL0tjb25maWcgICAgICAgICAg
ICAgICAgICAgfCAgIDIgKy0KPiAgZHJpdmVycy9pbnB1dC9taXNjL0tjb25maWcgICAgICAgICAg
ICB8ICAgMiArLQo+ICBkcml2ZXJzL21mZC9LY29uZmlnICAgICAgICAgICAgICAgICAgIHwgICA3
ICstCj4gIGRyaXZlcnMvbWZkL01ha2VmaWxlICAgICAgICAgICAgICAgICAgfCAgIDMgKy0KPiAg
ZHJpdmVycy9tZmQve3JrODA4LmMgPT4gcms4eHgtY29yZS5jfSB8IDIwOSArKysrKy0tLS0tLS0t
LS0tLS0tLS0tLS0tLQo+ICBkcml2ZXJzL21mZC9yazh4eC1pMmMuYyAgICAgICAgICAgICAgIHwg
MjAwICsrKysrKysrKysrKysrKysrKysrKysrKwo+ICBkcml2ZXJzL3BpbmN0cmwvS2NvbmZpZyAg
ICAgICAgICAgICAgIHwgICAyICstCj4gIGRyaXZlcnMvcG93ZXIvc3VwcGx5L0tjb25maWcgICAg
ICAgICAgfCAgIDIgKy0KPiAgZHJpdmVycy9yZWd1bGF0b3IvS2NvbmZpZyAgICAgICAgICAgICB8
ICAgMiArLQo+ICBkcml2ZXJzL3J0Yy9LY29uZmlnICAgICAgICAgICAgICAgICAgIHwgICAyICst
Cj4gIGluY2x1ZGUvbGludXgvbWZkL3JrODA4LmggICAgICAgICAgICAgfCAgIDYgKwo+ICBzb3Vu
ZC9zb2MvY29kZWNzL0tjb25maWcgICAgICAgICAgICAgIHwgICAyICstCj4gIDEyIGZpbGVzIGNo
YW5nZWQsIDI1NiBpbnNlcnRpb25zKCspLCAxODMgZGVsZXRpb25zKC0pCj4gIHJlbmFtZSBkcml2
ZXJzL21mZC97cms4MDguYyA9PiByazh4eC1jb3JlLmN9ICg3NiUpCj4gIGNyZWF0ZSBtb2RlIDEw
MDY0NCBkcml2ZXJzL21mZC9yazh4eC1pMmMuYwoKQXBwbGllZCwgdGhhbmtzCgotLSAKTGVlIEpv
bmVzIFvmnY7nkLzmlq9dCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==

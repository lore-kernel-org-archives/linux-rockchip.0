Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F05EC43458
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Jul 2026 07:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LbIguaO70OTLEPX4fF5uM+fY4RgfI6NpR8H2Z1rKq8I=; b=kFgIF7h6IIlqHw
	G7Lj5AfwPOYA/L/QnY/SAy9IMeaZujDrj/4SqmHSGH5zTmmcif+sJ6DKxWjzhUPlhu3xjwpKx9hPu
	GCZtKrUc/YyADcUdPPfk1XMFgoEVEx6v/83CeqTpVflwqH6ETreCu5+eMj8cf9gTvTUgtsUhe4YVJ
	K5hyNoZAIc2RWILrX/KqG6p91Jf27Z+RkhjAWVruVSdIScKckfpw3aQnu8B0DjWyV2rgXx6Ib9Wuv
	ZOVL8LMNsvuA7S2kuP4OT9klRdulE59vq8OcKu2KZkiFfrluHPWo6LSOtVjnSG4XP80hPdSUxK2wI
	v1/tsGMGtoufrzJ0VHxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh0RL-0000000ELB4-1Qia;
	Tue, 07 Jul 2026 07:41:59 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh0RJ-0000000ELAZ-1E2c;
	Tue, 07 Jul 2026 07:41:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=pQwyXCyV2PJT4RikPbiEx3IVEGUY43jh3uk9m+jiWDM=; b=K8wqov0FLWnvSZCw8PWY3vST+K
	Yq8cHvYbn58/ct2vcJKmp1y9CkWhzw6rgoCqmDTWc+cqkFSGrX47X+ezJMe4xtZTUruJyIGS9W0q5
	i05RRBKHlKCWz+9vus3Fl2HdapYqLWXDC5kOJG0f9r2xoB1aHXcs4397brhlqMIPptd3Z59qLFkWB
	Vi4hVN7QnfA5xuhijDTGLLGScZNcuLDatSPa2GxITaJAEclHqxOVsr5Xg5xcH2n/aubDsRvfRErsd
	xWKkAKAvGs/IOSaPIuyXbqjVpuIOd43VNJOGZZnAcq7thzN7sNTtZ02SIv/ARQ/31karQroi7Wf5y
	AN3nsCfQ==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Simon Glass <sjg@chromium.org>, Fabio Estevam <festevam@nabladev.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Albert Aribaud <albert.u.boot@aribaud.net>,
 Andy Shevchenko <andy@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>,
 Brian Masney <bmasney@redhat.com>, Chukun Pan <amadeus@jmu.edu.cn>,
 Conor Dooley <conor+dt@kernel.org>, David Lechner <dlechner@baylibre.com>,
 FUKAUMI Naoki <naoki@radxa.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Guenter Roeck <linux@roeck-us.net>, Jamie Iles <jamie@jamieiles.com>,
 Jeffy Chen <jeffy.chen@rock-chips.com>, Jiri Slaby <jirislaby@kernel.org>,
 Jonas Karlman <jonas@kwiboo.se>, Jonathan Cameron <jic23@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Linus Walleij <linusw@kernel.org>,
 Michael Opdenacker <michael.opdenacker@rootcommit.com>,
 Michael Riesch <michael.riesch@collabora.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Nuno =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>, Rob Herring <robh@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Ulf Hansson <ulfh@kernel.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Yao Zi <ziyao@disroot.org>,
 huang lin <hl@rock-chips.com>, linux-clk@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-serial@vger.kernel.org, linux-watchdog@vger.kernel.org
Subject: Re: [PATCH 00/12] Add support for the Rockchip RV1106 and RV1103
Date: Tue, 07 Jul 2026 09:41:41 +0200
Message-ID: <7403763.aoefvbuG5b@diego>
In-Reply-To: <882555c4-e1a3-0a0a-6830-b824b93cf3ac@nabladev.com>
References: <20260706195818.3906949-1-sjg@chromium.org>
 <882555c4-e1a3-0a0a-6830-b824b93cf3ac@nabladev.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260707_004157_374282_E58DB7BD 
X-CRM114-Status: GOOD (  12.86  )
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

QW0gRGllbnN0YWcsIDcuIEp1bGkgMjAyNiwgMDA6NTQ6NDQgTWl0dGVsZXVyb3DDpGlzY2hlIFNv
bW1lcnplaXQgc2NocmllYiBGYWJpbyBFc3RldmFtOgo+IEhpIFNpbW9uLAo+IAo+IE9uIE1vbmRh
eSwgSnVseSAwNiwgMjAyNiAxNjo1NyAtMDMsIFNpbW9uIEdsYXNzIDxzamdAY2hyb21pdW0ub3Jn
PiB3cm90ZToKPiAKPiA+IFRoZSBzZXJpZXMgZm9sbG93cyB0aGUgc3RydWN0dXJlIG9mIHRoZSBy
ZWNlbnRseSBtZXJnZWQgUlYxMTAzQgo+ID4gc3VwcG9ydC4gVGhlIGNsb2NrIGRyaXZlciBpcyBw
b3J0ZWQgZnJvbSB0aGUgdmVuZG9yIGtlcm5lbCBhbmQgaXMgdGhlCj4gCj4gV2hlbiBJIHN1Ym1p
dHRlZCB0aGUgaW5pdGlhbCB2ZXJzaW9uIG9mIHRoZSBSVjExMDNCIHNlcmllcywgSSByZWNlaXZl
ZCBmZWVkYmFjayB0byBzcGxpdCBpdCBpbnRvIHN1YnN5c3RlbXMuIAo+IAo+IFlvdSBzaG91bGQg
ZG8gdGhlIHNhbWUgaGVyZSBhbmQgc3VibWl0IGl0IHBlciBzdWJzeXN0ZW06Cj4gQVJNLCBjbG9j
aywgcGluY3RybCwgc2VyaWFsLCBtbWMsIHdhdGNoZG9nLCBhbmQgaWlvLgoKY29ycmVjdCAuLi4g
QVJNICsgY2xvY2sgY2FuIHN0YXkgdG9nZXRoZXIsIGFzIHRoYXQgaXMgbXkgc3R1ZmYsIGJ1dCBm
b3IgYQpsb3Qgb2YgbWFpbnRhaW5lciBpdCBpcyBqdXN0IHdheSBlYXNpZXIgdG8gbm90IGhhdmUg
dG8gcGljayBhcGFydCBzZXJpZXMnIC4KKG9yIGV2ZW4gcmVhbGl6ZSB0aGV5IGFyZSBtZWFudCB0
byBkbyBzb21ldGhpbmcpCgoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=

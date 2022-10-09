Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F343EC433F5
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 Oct 2022 12:04:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SFGGLl6u6buPbvmHyUHpQ/E8cgttoK3LBhqud1VsA/g=; b=qLmslIJGdnk9E6
	XFLCkM2uUj6a/3SyX9tpB4/Cz73RedqS0ZMsMs4jwmwQVSMsZAhr5p3B7JZWk5O+pKHCJnbzzw9bH
	M1ThJ0rv9vAg+1/mbRoZzOREaOz3e72/QRzsvdaxbwsdtOLEHwkF+BOViZ14djGAOLsMILL3a+LZ2
	BmGKfZ/pmIwIce+XzMKpJm/o6yWmG7i+NDgX7sxQppwFlwrKRWr9UbT3SaPX3RyssQA8wVpFzNBxc
	dw4JeLECEfIGECebugpJeUEncCD8fdCj5or+a5WCw//KsS4Tsqqcp4X3/SWmAdT63BXncT5gXMVDF
	TetxZXNJmi6xamHPzgKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohV2B-00FU9U-It; Sun, 09 Oct 2022 12:03:55 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohV1z-00FU6G-IO; Sun, 09 Oct 2022 12:03:44 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id E9DBCB80B02;
	Sun,  9 Oct 2022 12:03:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 34F0CC433C1;
	Sun,  9 Oct 2022 12:03:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665317020;
	bh=88Rrz7WpjK2fu1HAcpETvoy2xqJPXiF5srquZwunYeI=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=Uq9ksDB2qZt2bV9yy5F48OZqiKPE2TbQRFycqSn2xVmB6y6zcD//xlKUxZijeOuT2
	 rRJdjQe6/J9yLCgtcPSC3yuY+Uz5OD86RCaTSEa6SmkjFjoz4jDBk2v8THP/e+h/b8
	 q/sNzbwgmQ5hWXGlzXqbABz46cP2vxVzPidhQ9AN4W5W4aqFRSIF5I5tE7hEsICYER
	 xLcBaZ9S0C6+02s1Y+7NgQZG+tRU6MrLxEb9xPN1SiOlfantpTCLs11g2qrFvGJQ11
	 zVxaZoC2/wxaL8ebV2U+F4MNIQiBNTXfjglc/6CPLk6Qo3dx9RZ+7tR8peKR2s5Vt4
	 25m/EP/1Wxfdg==
Date: Sun, 9 Oct 2022 13:03:56 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
Cc: linux-amlogic@lists.infradead.org, linux-imx@nxp.com,
 linux-iio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Nuno =?UTF-8?B?U8Oh?=
 <nuno.sa@analog.com>, Martin Blumenstingl
 <martin.blumenstingl@googlemail.com>, Neil Armstrong
 <narmstrong@baylibre.com>, Shawn Guo <shawnguo@kernel.org>, Lars-Peter
 Clausen <lars@metafoo.de>, Jyoti Bhayana <jbhayana@google.com>, Hans de
 Goede <hdegoede@redhat.com>, Andriy Tryshnivskyy
 <andriy.tryshnivskyy@opensynergy.com>, Pengutronix Kernel Team
 <kernel@pengutronix.de>, Miquel Raynal <miquel.raynal@bootlin.com>, Cixi
 Geng <cixi.geng1@unisoc.com>, Baolin Wang <baolin.wang@linux.alibaba.com>,
 Ciprian Regus <ciprian.regus@analog.com>, Fabio Estevam
 <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>, Alexandru
 Ardelean <aardelean@deviqon.com>, Florian Boor
 <florian.boor@kernelconcepts.de>, Michael Hennerich
 <Michael.Hennerich@analog.com>, Orson Zhai <orsonzhai@gmail.com>, Chen-Yu
 Tsai <wens@csie.org>, Chunyan Zhang <zhang.lyra@gmail.com>, Vladimir
 Zapolskiy <vz@mleia.com>, Andy Shevchenko <andy.shevchenko@gmail.com>,
 Jerome Brunet <jbrunet@baylibre.com>, Haibo Chen <haibo.chen@nxp.com>,
 Kevin Hilman <khilman@baylibre.com>
Subject: Re: [PATCH v2 07/16] iio: adc: rockchip_saradc: do not use internal
 iio_dev lock
Message-ID: <20221009130153.794f404a@jic23-huawei>
In-Reply-To: <1803833.atdPhlSkOF@diego>
References: <20221004134909.1692021-1-nuno.sa@analog.com>
	<20221004134909.1692021-8-nuno.sa@analog.com>
	<1803833.atdPhlSkOF@diego>
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.34; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221009_050343_766262_26288175 
X-CRM114-Status: UNSURE (   9.69  )
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

T24gV2VkLCAwNSBPY3QgMjAyMiAwOTo0NDozNyArMDIwMApIZWlrbyBTdMO8Ym5lciA8aGVpa29A
c250ZWNoLmRlPiB3cm90ZToKCj4gQW0gRGllbnN0YWcsIDQuIE9rdG9iZXIgMjAyMiwgMTU6NDk6
MDAgQ0VTVCBzY2hyaWViIE51bm8gU8OhOgo+ID4gVGhlIGlpb19kZXZpY2UgbG9jayBpcyBvbmx5
IG1lYW50IGZvciBpbnRlcm5hbCB1c2UuIEhlbmNlIGRlZmluZSBhCj4gPiBkZXZpY2UgbG9jYWwg
bG9jayB0byBwcm90ZWN0IGFnYWluc3QgY29uY3VycmVudCBhY2Nlc3Nlcy4KPiA+IAo+ID4gV2hp
bGUgYXQgaXQsIHByb3Blcmx5IGluY2x1ZGUgIm11dGV4LmgiIGZvciBtdXRleCByZWxhdGVkIEFQ
SXMuCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IE51bm8gU8OhIDxudW5vLnNhQGFuYWxvZy5jb20+
ICAKPiAKPiBBY2tlZC1ieTogSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KPiAKPiAK
QXBwbGllZCBhbmQgcHVzaGVkIG91dCBhcyB0ZXN0aW5nLiBOb3RlIEknbGwgYmUgcmViYXNpbmcg
b24gcmMxIG9uY2UgYXZhaWxhYmxlLgoKVGhhbmtzLAoKSm9uYXRoYW4KCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

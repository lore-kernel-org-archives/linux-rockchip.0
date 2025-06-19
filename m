Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A529C7115B
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Jun 2025 09:48:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/2jGXMJPhHi5EUl37DPoS039QDrWjsXcX3C8wmvu7uk=; b=Ws+6mpaemkM7zb
	ngi3f0m8rLslLzco5Ba3wuVY5sTk/RghYz74iFTMpDVkke3/HffqibO1IqMXHZmXRe6e8I7fEwCIw
	KgoRYR5NY1O/Ut5wLqWCr2E4DjTKSghBJny7jp49QwLT35cm/6YSLg6NdRRjUuBk88SoChlvrpAhw
	B4SlRU9fxtzuRu1+dzuo+hvG/WqDSIilU0vleQAApGu1PoFZfStdpu8lk1TDr+POqcPveEpPEODN+
	aTExkwKoCCEnj5fIa5EIzr/46814ujb4CEpfh4D9g3f3vzzKYMHK93QW14nN0IdL1DjJc7NFiS2me
	fMCUudg9nQMlrYjvonRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSBsL-0000000CfAD-44sZ;
	Thu, 19 Jun 2025 09:48:05 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSB1Y-0000000CVQc-2d3N;
	Thu, 19 Jun 2025 08:53:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=roh28ZHZlzmyIxiIaWM61lfqv9feWcpiDK1S0QOohw0=; b=NNdidGsjFAloDLykgzJ+rXflzt
	hHoxaZBRaIkmbi8B95jk6fpWNR+yl0/uAzdXOHZYbbyRV/zTzdgTDv3GIWeoYDIyvAiTj3iQpHXNN
	eKbxKsk/rD7qZvXpcJtLJT4CYQJje7c+bVGv3/P1H1i5udyq2S05tU7EUWviqmrdZU+517j0fNg70
	0phjPvUGZHy9ehi2Eph0/7tkIE7B7ep2Jz2xODTiEak1RHcdB61Eevyv/Petq0hnE2tOtfRp8U8rg
	LM2keIuyMlU4ONGcDTWCDRwDYj9JV9VTpwJ174txSoWCDjPHUGf8p5GyHo/+WfFWXndCjAnDqm6bz
	oYZcHTxA==;
Received: from 85-207-219-154.static.bluetone.cz ([85.207.219.154] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uSB1J-00078r-Q2; Thu, 19 Jun 2025 10:53:17 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>,
 Orson Zhai <orsonzhai@gmail.com>,
 Baolin Wang <baolin.wang@linux.alibaba.com>,
 Chunyan Zhang <zhang.lyra@gmail.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>, Bartosz Golaszewski <brgl@bgdev.pl>
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: Re: [PATCH v2 05/12] gpio: pmic-eic-sprd: drop unneeded .set() callback
Date: Thu, 19 Jun 2025 10:53:17 +0200
Message-ID: <2628868.NgBsaNRSFp@phil>
In-Reply-To: <CAMRc=MdkDF_HjRvCvUdKueRgNYDxe=aeGeWAw9bBgnAZ=kxZAA@mail.gmail.com>
References: <20250619-gpiochip-set-rv-gpio-v2-0-74abf689fbd8@linaro.org>
 <20250619-gpiochip-set-rv-gpio-v2-5-74abf689fbd8@linaro.org>
 <CAMRc=MdkDF_HjRvCvUdKueRgNYDxe=aeGeWAw9bBgnAZ=kxZAA@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250619_015332_678895_1F671DD5 
X-CRM114-Status: GOOD (  11.66  )
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

QW0gRG9ubmVyc3RhZywgMTkuIEp1bmkgMjAyNSwgMTA6MzY6MDYgTWl0dGVsZXVyb3DDpGlzY2hl
IFNvbW1lcnplaXQgc2NocmllYiBCYXJ0b3N6IEdvbGFzemV3c2tpOgo+IE9uIFRodSwgSnVuIDE5
LCAyMDI1IGF0IDEwOjMz4oCvQU0gQmFydG9zeiBHb2xhc3pld3NraSA8YnJnbEBiZ2Rldi5wbD4g
d3JvdGU6Cj4gPgo+ID4gRnJvbTogQmFydG9zeiBHb2xhc3pld3NraSA8YmFydG9zei5nb2xhc3pl
d3NraUBsaW5hcm8ub3JnPgo+ID4KPiA+IFRoZSBsaW5lcyBvbiB0aGlzIGNoaXAgYXJlIGlucHV0
LW9ubHkuIEdQSU8gY29yZSBjYW4gaGFuZGxlIHRoZSBtaXNzaW5nCj4gPiAuc2V0KCkgY2FsbGJh
Y2sgc28gdGhlcmUncyBubyBuZWVkIHRvIGltcGxlbWVudCBhIGR1bW15IGhlcmUuIERyb3AgaXQu
Cj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogQmFydG9zeiBHb2xhc3pld3NraSA8YmFydG9zei5nb2xh
c3pld3NraUBsaW5hcm8ub3JnPgo+ID4gLS0tCj4gCj4gQmFvbGluIFdhbmcgPGJhb2xpbi53YW5n
QGxpbnV4LmFsaWJhYmEuY29tPgoKSSB0aGluayByZS1hZGRpbmcgdGhhdCB0cmFpbGVyIGJyb2tl
IC0gbWlzc2luZyB0aGUgQWNrZWQvUmV2aWV3ZWQgcGFydC4KCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

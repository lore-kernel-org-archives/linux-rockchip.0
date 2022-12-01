Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 821D2C43217
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Dec 2022 14:17:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kmdSTS7IWBof/X7TfdlG3l9yy/ybXWaZqy8RT+PB+mc=; b=VbM28hLZcDrUgs
	VGH2rW6JMGP+HxJBd+61y5JRE8lnFyQ+b7zysUAS+Za+ajB1Gtd0NRMKglS8GZoN1dzwCTA7einr+
	gZ2bdgfC7Y2CpqksQFQL7KSpngRzCcXv6Tv7G3DbFVvhJamDaHhkV7DEG2opjSBAHPQ3NRICZi6m4
	X58eeuFFUAM2oMXDE61YArZm0E3tS3wBlp48A5ytuX1NiceWdQoO/LFukzfa2FA38BiYIySjnARRZ
	OFwz/yJ5VM486No3BSlY9/1/2KIBJg0r47jXvn5t2Gmdf4cl/nzwt4j6lgtyi3a/turDEyINMPRGl
	sf/xh5+knijkxsIyfqVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0kNR-007rzv-1I; Thu, 01 Dec 2022 14:17:25 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0kNK-007rxH-Eu; Thu, 01 Dec 2022 14:17:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1BED1D6E;
	Thu,  1 Dec 2022 06:17:23 -0800 (PST)
Received: from donnerap.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D0F8B3F73D;
	Thu,  1 Dec 2022 06:17:09 -0800 (PST)
Date: Thu, 1 Dec 2022 14:17:07 +0000
From: Andre Przywara <andre.przywara@arm.com>
To: Uwe =?UTF-8?B?S2xlaW5lLUvDtm5pZw==?= <u.kleine-koenig@pengutronix.de>
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>, Heiko Stuebner
 <heiko@sntech.de>, Linus Walleij <linus.walleij@linaro.org>, Alexandre
 Torgue <alexandre.torgue@foss.st.com>, dri-devel@lists.freedesktop.org,
 Douglas Anderson <dianders@chromium.org>, Conor Dooley
 <conor.dooley@microchip.com>, Thierry Reding <thierry.reding@gmail.com>,
 Satya Priya <quic_c_skakit@quicinc.com>, Pavel Machek <pavel@ucw.cz>,
 Guenter Roeck <groeck@chromium.org>, Nobuhiro Iwamatsu
 <nobuhiro1.iwamatsu@toshiba.co.jp>, Fabio Estevam <festevam@gmail.com>,
 linux-riscv@lists.infradead.org, linux-leds@vger.kernel.org, Jerome Brunet
 <jbrunet@baylibre.com>, chrome-platform@lists.linux.dev, Florian Fainelli
 <f.fainelli@gmail.com>, Samuel Holland <samuel@sholland.org>, Sean Anderson
 <sean.anderson@seco.com>, Kevin Hilman <khilman@baylibre.com>, Bartosz
 Golaszewski <brgl@bgdev.pl>, Michal Simek <michal.simek@xilinx.com>,
 linux-stm32@st-md-mailman.stormreply.com, Hammer Hsieh
 <hammerh0314@gmail.com>, linux-rockchip@lists.infradead.org, Chen-Yu Tsai
 <wens@csie.org>, Matthias Kaehlcke <mka@chromium.org>, Broadcom internal
 kernel review list <bcm-kernel-feedback-list@broadcom.com>, NXP Linux Team
 <linux-imx@nxp.com>, Orson Zhai <orsonzhai@gmail.com>,
 linux-sunxi@lists.linux.dev, linux-pwm@vger.kernel.org, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>, Martin Blumenstingl
 <martin.blumenstingl@googlemail.com>, Ray Jui <rjui@broadcom.com>, Sascha
 Hauer <s.hauer@pengutronix.de>, Stephen Boyd <swboyd@chromium.org>,
 linux-gpio@vger.kernel.org, Fabrice Gasnier <fabrice.gasnier@foss.st.com>,
 linux-mediatek@lists.infradead.org, linux-rpi-kernel@lists.infradead.org,
 Baolin Wang <baolin.wang@linux.alibaba.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-amlogic@lists.infradead.org, Benson Leung <bleung@chromium.org>,
 linux-arm-kernel@lists.infradead.org, Scott Branden
 <sbranden@broadcom.com>, Bjorn Andersson <andersson@kernel.org>, Nicolas
 Ferre <nicolas.ferre@microchip.com>, Michael Walle <michael@walle.cc>,
 Palmer Dabbelt <palmer@dabbelt.com>, Pengutronix Kernel Team
 <kernel@pengutronix.de>, Chunyan Zhang <zhang.lyra@gmail.com>, Shawn Guo
 <shawnguo@kernel.org>, Claudiu Beznea <claudiu.beznea@microchip.com>
Subject: Re: [PATCH v2 01/11] pwm: Make .get_state() callback return an
 error code
Message-ID: <20221201141707.28af0d1d@donnerap.cambridge.arm.com>
In-Reply-To: <20221201131604.beq4l22d42tjy6dm@pengutronix.de>
References: <20221130152148.2769768-1-u.kleine-koenig@pengutronix.de>
	<20221130152148.2769768-2-u.kleine-koenig@pengutronix.de>
	<20221201102252.52ace284@donnerap.cambridge.arm.com>
	<20221201131604.beq4l22d42tjy6dm@pengutronix.de>
Organization: ARM
X-Mailer: Claws Mail 3.18.0 (GTK+ 2.24.32; aarch64-unknown-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221201_061718_612865_8F54E3AB 
X-CRM114-Status: GOOD (  16.73  )
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

T24gVGh1LCAxIERlYyAyMDIyIDE0OjE2OjA0ICswMTAwClV3ZSBLbGVpbmUtS8O2bmlnIDx1Lmts
ZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+IHdyb3RlOgoKSGkgVXdlLAoKPiBIZWxsbyBBbmRy
ZSwKPiAKPiBPbiBUaHUsIERlYyAwMSwgMjAyMiBhdCAxMDoyMjo1MkFNICswMDAwLCBBbmRyZSBQ
cnp5d2FyYSB3cm90ZToKPiA+IEp1c3Qgb25lIGNvbW1lbnQ6IEkgZG9uJ3Qgc2VlIGEgc3VueGkg
c3BlY2lmaWMgcGF0Y2ggbGF0ZXIgaW4gdGhlIHNlcmllcywKPiA+IHRob3VnaCBpdCBzZWVtcyB3
ZSBoYXZlIGF0IGxlYXN0IG9uZSBlcnJvciBlcnJvciBleGl0IChzZWUgcHJlc2NhbGVyID09IDAK
PiA+IGFib3ZlKS4gUGx1cyBwb3RlbnRpYWxseSBhbm90aGVyIGV4aXQgaWYgY2xrX2dldF9yYXRl
KCkgKGF0IHRoZSB2ZXJ5Cj4gPiBiZWdpbm5pbmcpIGZhaWxzLgo+ID4gU2hhbGwgSSBzZW5kIGEg
cGF0Y2ggZm9yIHRoYXQ/ICAKPiAKPiBUaGF0IHdvdWxkIHdlIHZlcnkgd2VsY29tZS4gSSBtZW50
aW9uZWQgdGhhdCBzaG9ydGx5IGluIHRoZSBjb3Zlcgo+IGxldHRlciwgSSB3YXNuJ3QgZW50aXJl
bHkgc3VyZSBob3cgdG8gaGFuZGxlIHRoYXQgcHJlc2NhbGVyID0gMCBjYXNlLgoKQWggcmlnaHQs
IHNvcnJ5LCBJIG1pc3NlZCB0aGF0LgpTbyB0aGUgQWxsd2lubmVyIG1hbnVhbCBzb21laG93IG1h
cmtzIHRob3NlIHByZXNjYWxlciBlbmNvZGluZ3MgYXMgcmVzZXJ2ZWQKb3IgaW52YWxpZCAoaXQn
cyBqdXN0IGEgIi8iIGluIHRoZXJlKSwgYW5kIHdlIG5ldmVyIHNldCB0aG9zZSB2YWx1ZXMgaW4g
dGhlCmRyaXZlciAodGhlcmUgaXMgYW4gZXhwbGljaXQgY2hlY2spLiBTbyBpdCBjb3VsZCBvbmx5
IGJlIGEgbGVmdG92ZXIgZnJvbQpmaXJtd2FyZS9ib290bG9hZGVyLCBvciBzb21lb25lIHBva2lu
ZyBhdCB0aGlzIHJlZ2lzdGVyIGJlaGluZCBvdXIgYmFjay4KSSBhbSB0ZW1wdGVkIHRvIGp1c3Qg
cmV0dXJuIHNvbWUgLUVJTlZBTC4gQXMgdGhlIGN1cnJlbnQgY29kZSBzdGFuZHMsIHdlCmRvbid0
IG1hbmlwdWxhdGUgYW55IHN0YXRlIGZsYWdzIGJlZm9yZSB0aGF0IGNoZWNrLCBzbyBpdCBkb2Vz
bid0CnJlYWxseSBtYXR0ZXIsIGJ1dCB3b3VsZCBiZSBiZXN0IHByYWN0aXNlLCBhdCBsZWFzdC4K
CkNoZWVycywKQW5kcmUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK

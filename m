Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A51D9C433FE
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 Oct 2022 11:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dk9SV+DNjJepQtC2joeR+mBAwEzgaSGsDxQalGsvGcw=; b=mh4GWkFbsyDcoe
	pxRhIsFDtmIdICkFmf805Sec0/En/wXdfQnumP/Aw+g2LblI185+YlfIz+uZ+cji99I+6aOUZ+RGR
	YMKr8s4whteJiziY7KfQwd9aOS0YEpX+tv2R3gcwj2kZNXFXQ/rjFinbAG2M7xHZfTk1kll09k7XC
	5GxUHtLnHspP5agfn6ub4PEPTnC0l3Ub+UVPQr3EdajhdO8yMXx12N/KgTQ0feNlhyfH6eyk5ELCe
	04SyGWQlAYjnR+xVkaBXS3YrpL28cbjA2ClXpNc0EcpAapM71FrW1lLFGPVVN4y4JyRpscnHx/nVz
	2AeurHlmN+k7yU1UrvkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohUqr-00FR5M-Un; Sun, 09 Oct 2022 11:52:13 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohUqg-00FR1T-44; Sun, 09 Oct 2022 11:52:03 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id C5667B80C03;
	Sun,  9 Oct 2022 11:51:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0E14DC433C1;
	Sun,  9 Oct 2022 11:51:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665316318;
	bh=dbV8fl4e8RfgF35OuOILn9qLI5jumdgLtDq0/jL8jqg=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=qJZZ0O+Ox8ThRYC0eGOb0eeh/fsM5cmq+45tkQXUM6OBDIVd7f3xvEWqxgDeC+FdU
	 TQTqWoLXrl15Zchs28pICXXELElrogWImAiB6vi4OTHFlRf4WW1IHjh0Pi4IUuQtYZ
	 dLFePSJP5ePzD/k5kS4PysiQGhFmwAu5i/rYujH1e7sgYXBU/F4OzjwWgIc6mPdDnk
	 B/lng4UMNgs3xATKc+begkH3dMLdBFHCP+2jqyqN+/YdVp80E6LAKwetZXQ3FeSvym
	 BZrmmbr9QGLYyfSvHyVXsgwuqCgR3sN2We1MyMkVAuCXSplFAjZOA5L/E9p5r5yxHM
	 QG8BmSxOAEi/w==
Date: Sun, 9 Oct 2022 12:52:14 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: Nuno =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>,
 linux-amlogic@lists.infradead.org, linux-imx@nxp.com,
 linux-iio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, Neil Armstrong
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
 Zapolskiy <vz@mleia.com>, Jerome Brunet <jbrunet@baylibre.com>, Haibo Chen
 <haibo.chen@nxp.com>, Kevin Hilman <khilman@baylibre.com>
Subject: Re: [PATCH v2 16/16] iio: core: move 'mlock' to 'struct
 iio_dev_opaque'
Message-ID: <20221009125214.3da1dc89@jic23-huawei>
In-Reply-To: <CAHp75VfpcrTpH83XqAC9xFrwYApORwoDcqmnhLLTkEWbj6zYVg@mail.gmail.com>
References: <20221004134909.1692021-1-nuno.sa@analog.com>
	<20221004134909.1692021-17-nuno.sa@analog.com>
	<CAHp75VfpcrTpH83XqAC9xFrwYApORwoDcqmnhLLTkEWbj6zYVg@mail.gmail.com>
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.34; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221009_045202_331139_0FE39779 
X-CRM114-Status: GOOD (  14.45  )
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

T24gVHVlLCA0IE9jdCAyMDIyIDE3OjIxOjIwICswMzAwCkFuZHkgU2hldmNoZW5rbyA8YW5keS5z
aGV2Y2hlbmtvQGdtYWlsLmNvbT4gd3JvdGU6Cgo+IE9uIFR1ZSwgT2N0IDQsIDIwMjIgYXQgNDo0
OSBQTSBOdW5vIFPDoSA8bnVuby5zYUBhbmFsb2cuY29tPiB3cm90ZToKPiA+Cj4gPiBOb3cgdGhh
dCB0aGVyZSBhcmUgbm8gbW9yZSB1c2VycyBhY2Nlc3NpbmcgJ21sb2NrJyBkaXJlY3RseSwgd2Ug
Y2FuIG1vdmUKPiA+IGl0IHRvIHRoZSBpaW9fZGV2IHByaXZhdGUgc3RydWN0dXJlLiBIZW5jZSwg
aXQncyBub3cgZXhwbGljaXQgdGhhdCBuZXcKPiA+IGRyaXZlcidzIHNob3VsZCBub3QgZGlyZWN0
bHkgdGhpcyBsb2NrLiAgCj4gCj4gdXNlIHRoaXMKPiAKPiAKPiBJIGxpa2UgdGhlIGVuZCByZXN1
bHQhCj4gUmV2aWV3ZWQtYnk6IEFuZHkgU2hldmNoZW5rbyA8YW5keS5zaGV2Y2hlbmtvQGdtYWls
LmNvbT4KSGkgQW5keSwKCkp1c3QgdG8gY2hlY2ssIGp1c3QgdGhpcyBwYXRjaCwgb3Igc2VyaWVz
ICh3aGVyZSB5b3UgaGF2ZW4ndCBjb21tZW50ZWQ/KQoKSSdtIGdvaW5nIHRvIHF1ZXVlIHRoaXMg
c2VyaWVzIHVwIHBpZWNld2lzZSBqdXN0IGJlY2F1c2UgaXQncyBmYWlybHkKYmlnIGFuZCBtb3N0
IG9mIGl0IGlzIGNvbXBsZXRlbHkgbm9uIGNvbnRyb3ZlcnNpYWwhICBTbyBmb3Igbm93IEkndmUK
bm90IGFwcGxpZWQgeW91ciBSQiwgYnV0IGNhbiBkbyBzbyBiZWZvcmUgSSBwdXNoIG91dCBhcyBh
bnl0aGluZyBub24KcmViYXNpbmcgKHdoaWNoIEkgd29uJ3QgZG8gdW50aWwgYWZ0ZXIgdGhlIG1l
cmdlIHdpbmRvdykuCgpUaGFua3MsCgpKb25hdGhhbgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

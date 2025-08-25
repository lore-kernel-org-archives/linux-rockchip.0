Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CDEDFCA0FE9
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Aug 2025 09:03:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jTx6BjCp1jGdCXLL4QDYMhFIrNhmHRSUe21TIwSXqu0=; b=g/x6D3oMNBaeEs
	F6W+9kRY0hcjhKz8a39qiXrkjAS++mSVmab1JsX1ksKBMnpWlBakXpoER+wOV+X7PuSaJsbiGZ5Ot
	l5dTxUelWGx37Ep9ABFz1lsyACSatGX9SDBjHw008f7k9e6+KDwr3Wp1jtnEIpat/i1/i1R5HIXCi
	uiWq+iKp9xNedWqsPnGxj4WkGERs+9poE8yygD+GA07BODLa8DXuSmKdJl3wMci1fGzikk1OErRXl
	anZG2kKNMS68IuCMRHTroTgqvye6CnO+oYIBz9WcnBydyV6pi5jkHBBkQFT08s+sRdQurcsphRTQV
	JtPoWQFrDQRZp1tz3dZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqT7I-00000007R6b-0STs;
	Mon, 25 Aug 2025 09:03:52 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqSlt-00000007MNo-0dd5;
	Mon, 25 Aug 2025 08:41:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id B8C17404BD;
	Mon, 25 Aug 2025 08:41:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0E789C4CEED;
	Mon, 25 Aug 2025 08:41:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756111304;
	bh=K2j4Xg82+Ip2/lcscGXYAAN0FTOLzSOwafKLqgXQ6dA=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=ZBAHoObexxJACm0CyT3rWXmTuEE3szQxoY+ur1d3YdWHQaypq84Bs3bw170XTdiJs
	 Fbkj+dLEIluoQjMCiePR3+JYeu2vjM/kZ5FUo4gmjOAVjqhrIrxUIsYMfm0z55V5z/
	 fs4QYjZqJi7rxJ5VxWWchq/yTvwSj7xStzfihEv9Y/SsfJc5slYpJUGrOf93HPIvFL
	 a0e7q75do94CVIMGHOgJ/VpMIDC2D7nFQOtpeEnLr/Hwr8tUNlSMSo5UrwGktdFcu5
	 gPtDrlIV1iPA+gG1UmsY6pAtRTF1+7Jm+owKUNZpYQ3OlNR15vKbyaHqY2irS2NWEi
	 81EoJrJwx/hEw==
Date: Mon, 25 Aug 2025 09:41:28 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: Xichao Zhao <zhao.xichao@vivo.com>, David Lechner
 <dlechner@baylibre.com>, Nuno =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>, Andy
 Shevchenko <andy@kernel.org>, Andreas Klinger <ak@it-klinger.de>, Haibo
 Chen <haibo.chen@nxp.com>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer
 <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Marius Cristea
 <marius.cristea@microchip.com>, Neil Armstrong <neil.armstrong@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, Heiko Stuebner
 <heiko@sntech.de>, Francesco Dolcini <francesco@dolcini.it>,
 =?UTF-8?B?Sm/Do28=?= Paulo =?UTF-8?B?R29uw6dhbHZlcw==?=
 <jpaulo.silvagoncalves@gmail.com>, Hugo Villeneuve
 <hvilleneuve@dimonoff.com>, Gustavo Silva <gustavograzs@gmail.com>, Tomasz
 Duszynski <tomasz.duszynski@octakon.com>, Jagath Jog J
 <jagathjog1996@gmail.com>, Crt Mori <cmo@melexis.com>, Per-Daniel Olsson
 <perdaniel.olsson@axis.com>, Waqar Hameed <waqar.hameed@axis.com>, Yasin
 Lee <yasin.lee.x@gmail.com>, Julien Stephan <jstephan@baylibre.com>, "open
 list:IIO SUBSYSTEM AND DRIVERS" <linux-iio@vger.kernel.org>, open list
 <linux-kernel@vger.kernel.org>, "open list:NXP i.MX 7D/6SX/6UL/93 AND VF610
 ADC DRIVER" <imx@lists.linux.dev>, "moderated list:ARM/FREESCALE IMX / MXC
 ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>, "open
 list:ARM/Amlogic Meson SoC support" <linux-amlogic@lists.infradead.org>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH 0/7] iio: Remove dev_err_probe() if error is -ENOMEM
Message-ID: <20250825094128.7d2834fa@jic23-huawei>
In-Reply-To: <CAHp75VeDvK8cOr=rVGj_hVX5YzXM-UqrWRBgUrhiA1wzYn7C_w@mail.gmail.com>
References: <20250821080723.525379-1-zhao.xichao@vivo.com>
	<CAHp75VeDvK8cOr=rVGj_hVX5YzXM-UqrWRBgUrhiA1wzYn7C_w@mail.gmail.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.49; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250825_014145_207555_ED392CBC 
X-CRM114-Status: GOOD (  11.61  )
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

T24gVGh1LCAyMSBBdWcgMjAyNSAxMToxMzowMCArMDMwMApBbmR5IFNoZXZjaGVua28gPGFuZHku
c2hldmNoZW5rb0BnbWFpbC5jb20+IHdyb3RlOgoKPiBPbiBUaHUsIEF1ZyAyMSwgMjAyNSBhdCAx
MTowN+KAr0FNIFhpY2hhbyBaaGFvIDx6aGFvLnhpY2hhb0B2aXZvLmNvbT4gd3JvdGU6Cj4gPgo+
ID4gVGhlIGRldl9lcnJfcHJvYmUoKSBkb2Vzbid0IGRvIGFueXRoaW5nIHdoZW4gZXJyb3IgaXMg
Jy1FTk9NRU0nLiAgCj4gCj4gd2hlbiB0aGUgZXJyb3IKPiAKVHdlYWtlZCBhbmQgYXBwbGllZC4K
Cj4gPiBUaGVyZWZvcmUsIHJlbW92ZSB0aGUgdXNlbGVzcyBjYWxsIHRvIGRldl9lcnJfcHJvYmUo
KSwgYW5kIGp1c3QKPiA+IHJldHVybiB0aGUgdmFsdWUgaW5zdGVhZC4gIAo+IAo+IEluIGZhdm91
ciBvZiB0aGlzIHNlcmllcywKPiBSZXZpZXdlZC1ieTogQW5keSBTaGV2Y2hlbmtvIDxhbmR5QGtl
cm5lbC5vcmc+Cj4gKHllcywgSSBpbmRlZWQgbG9va2VkIGF0IGFsbCBwYXRjaGVzIGluIHRoaXMg
b25lIDotKQo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK

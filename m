Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B20C2C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 Oct 2022 11:57:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=42XgCK0FkP9NxzCY3emMTqtJHNnynUeWw8I8wdpy5fM=; b=SzXKFe24kYEhdE
	A76547rjUzEuJb9X+MY6RJVfu5R4YaTiqjkLATG+/OPOjBdTpDfDKlF2IJJJZouRRFpCoQIP+1mDj
	IOI7d2yMO24g9tYXQYr3eENxNAIdpNxKuhvWVxBHxEJN6KoSeLJ7NUzI31Fp+mqta49wgnU7SslDD
	oO+eVEatru+0N41lZNOE6rqU41TqM65cpkdh5yahjZ5m/Jg77fz5lCIn8oolUK7KvbB/vpABoT9Cu
	Xi5gZeXVxWRxtvnYjXSekNzjglFurjcw97rz73m41o6cAKKDJi895M+c4l2fiCn0YHWgfdIWSQF/l
	K/Becd67pr3AyVz0mqGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohUvS-00FSC6-4f; Sun, 09 Oct 2022 11:56:58 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohUvF-00FS8i-M0; Sun, 09 Oct 2022 11:56:47 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 35446B80D13;
	Sun,  9 Oct 2022 11:56:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4D55AC433C1;
	Sun,  9 Oct 2022 11:56:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665316602;
	bh=JuwAGyYUq+0tY/jXJqv6WkGInPS/MccBTwHv0B2XuPo=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=Jr7eFuNqvfRqmwaBri6OAi3LG/0ExX+msNdFrzzW6sJRFzZZQGSUy34t2cyJW8F++
	 0h5aJK4KAP16xCcUqsCO+qtmkBqzAxGRtlxEMb5gMm5vKLo84+wyibmn5/slZW5MvO
	 P0NHgX1exk3kb4ObHRGRaB6Rt9gZCvwaMPDdz5LZVDVYlsJh1ECzP2spUyDRdnkUxb
	 Wz+QDhVX3vCUkLpAuMqhKvmEuRSaiSUCAVpP8BGPkPqel4JAEBYwhEPPDV8E4Cd8th
	 8bd/LCcIRqF+6/LCKzp7BFNyF3SqVWnFm4BTBF8xdn6jP6/RA6MP5gTtgL8v1VCihC
	 Bf16hOHMV10wQ==
Date: Sun, 9 Oct 2022 12:56:58 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Bough Chen <haibo.chen@nxp.com>
Cc: Nuno =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>,
 "linux-amlogic@lists.infradead.org" <linux-amlogic@lists.infradead.org>,
 dl-linux-imx <linux-imx@nxp.com>, "linux-iio@vger.kernel.org"
 <linux-iio@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Heiko Stuebner <heiko@sntech.de>, Martin Blumenstingl
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
 Jerome Brunet <jbrunet@baylibre.com>, Kevin Hilman <khilman@baylibre.com>
Subject: Re: [PATCH v2 03/16] iio: adc: imx7d_adc: do not use internal
 iio_dev lock
Message-ID: <20221009125658.7ad8e57d@jic23-huawei>
In-Reply-To: <DB7PR04MB4010D3A27C8C6FAF87187F4690219@DB7PR04MB4010.eurprd04.prod.outlook.com>
References: <20221004134909.1692021-1-nuno.sa@analog.com>
	<20221004134909.1692021-4-nuno.sa@analog.com>
	<DB7PR04MB4010D3A27C8C6FAF87187F4690219@DB7PR04MB4010.eurprd04.prod.outlook.com>
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.34; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221009_045646_031787_84E1A759 
X-CRM114-Status: GOOD (  12.21  )
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

T24gU3VuLCA5IE9jdCAyMDIyIDAyOjAwOjIyICswMDAwCkJvdWdoIENoZW4gPGhhaWJvLmNoZW5A
bnhwLmNvbT4gd3JvdGU6Cgo+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPiA+IEZyb206
IE51bm8gU8OhIDxudW5vLnNhQGFuYWxvZy5jb20+Cj4gPiBTZW50OiAyMDIy5bm0MTDmnIg05pel
IDIxOjQ5Cj4gPiBUbzogbGludXgtYW1sb2dpY0BsaXN0cy5pbmZyYWRlYWQub3JnOyBkbC1saW51
eC1pbXggPGxpbnV4LWlteEBueHAuY29tPjsKPiA+IGxpbnV4LWlpb0B2Z2VyLmtlcm5lbC5vcmc7
IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZzsKPiA+IGxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKPiA+IENjOiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNo
LmRlPjsgTWFydGluIEJsdW1lbnN0aW5nbAo+ID4gPG1hcnRpbi5ibHVtZW5zdGluZ2xAZ29vZ2xl
bWFpbC5jb20+OyBOZWlsIEFybXN0cm9uZwo+ID4gPG5hcm1zdHJvbmdAYmF5bGlicmUuY29tPjsg
U2hhd24gR3VvIDxzaGF3bmd1b0BrZXJuZWwub3JnPjsgTGFycy1QZXRlcgo+ID4gQ2xhdXNlbiA8
bGFyc0BtZXRhZm9vLmRlPjsgSnlvdGkgQmhheWFuYSA8amJoYXlhbmFAZ29vZ2xlLmNvbT47IEhh
bnMgZGUKPiA+IEdvZWRlIDxoZGVnb2VkZUByZWRoYXQuY29tPjsgQW5kcml5IFRyeXNobml2c2t5
eQo+ID4gPGFuZHJpeS50cnlzaG5pdnNreXlAb3BlbnN5bmVyZ3kuY29tPjsgUGVuZ3V0cm9uaXgg
S2VybmVsIFRlYW0KPiA+IDxrZXJuZWxAcGVuZ3V0cm9uaXguZGU+OyBNaXF1ZWwgUmF5bmFsIDxt
aXF1ZWwucmF5bmFsQGJvb3RsaW4uY29tPjsgQ2l4aQo+ID4gR2VuZyA8Y2l4aS5nZW5nMUB1bmlz
b2MuY29tPjsgQmFvbGluIFdhbmcKPiA+IDxiYW9saW4ud2FuZ0BsaW51eC5hbGliYWJhLmNvbT47
IENpcHJpYW4gUmVndXMgPGNpcHJpYW4ucmVndXNAYW5hbG9nLmNvbT47Cj4gPiBGYWJpbyBFc3Rl
dmFtIDxmZXN0ZXZhbUBnbWFpbC5jb20+OyBOdW5vIFPDoSA8bnVuby5zYUBhbmFsb2cuY29tPjsK
PiA+IFNhc2NoYSBIYXVlciA8cy5oYXVlckBwZW5ndXRyb25peC5kZT47IEFsZXhhbmRydSBBcmRl
bGVhbgo+ID4gPGFhcmRlbGVhbkBkZXZpcW9uLmNvbT47IEZsb3JpYW4gQm9vciA8Zmxvcmlhbi5i
b29yQGtlcm5lbGNvbmNlcHRzLmRlPjsKPiA+IE1pY2hhZWwgSGVubmVyaWNoIDxNaWNoYWVsLkhl
bm5lcmljaEBhbmFsb2cuY29tPjsgT3Jzb24gWmhhaQo+ID4gPG9yc29uemhhaUBnbWFpbC5jb20+
OyBDaGVuLVl1IFRzYWkgPHdlbnNAY3NpZS5vcmc+OyBDaHVueWFuIFpoYW5nCj4gPiA8emhhbmcu
bHlyYUBnbWFpbC5jb20+OyBWbGFkaW1pciBaYXBvbHNraXkgPHZ6QG1sZWlhLmNvbT47IEFuZHkK
PiA+IFNoZXZjaGVua28gPGFuZHkuc2hldmNoZW5rb0BnbWFpbC5jb20+OyBKZXJvbWUgQnJ1bmV0
Cj4gPiA8amJydW5ldEBiYXlsaWJyZS5jb20+OyBCb3VnaCBDaGVuIDxoYWliby5jaGVuQG54cC5j
b20+OyBLZXZpbiBIaWxtYW4KPiA+IDxraGlsbWFuQGJheWxpYnJlLmNvbT47IEpvbmF0aGFuIENh
bWVyb24gPGppYzIzQGtlcm5lbC5vcmc+Cj4gPiBTdWJqZWN0OiBbUEFUQ0ggdjIgMDMvMTZdIGlp
bzogYWRjOiBpbXg3ZF9hZGM6IGRvIG5vdCB1c2UgaW50ZXJuYWwgaWlvX2RldiBsb2NrCj4gPiAK
PiA+IFRoZSBpaW9fZGV2aWNlIGxvY2sgaXMgb25seSBtZWFudCBmb3IgaW50ZXJuYWwgdXNlLiBI
ZW5jZSBkZWZpbmUgYSBkZXZpY2UgbG9jYWwKPiA+IGxvY2sgdG8gcHJvdGVjdCBhZ2FpbnN0IGNv
bmN1cnJlbnQgYWNjZXNzZXMuCj4gPiAKPiA+IFdoaWxlIGF0IGl0LCBwcm9wZXJseSBpbmNsdWRl
ICJtdXRleC5oIiBmb3IgbXV0ZXggcmVsYXRlZCBBUElzLgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5
OiBOdW5vIFPDoSA8bnVuby5zYUBhbmFsb2cuY29tPiAgCj4gCj4gUmV2aWV3ZWQtYnk6IEhhaWJv
IENoZW4gPGhhaWJvLmNoZW5AbnhwLmNvbT4KQXBwbGllZCB0byB0aGUgdG9ncmVnIGJyYW5jaCBv
ZiBpaW8uZ2l0IGFuZCBwdXNoZWQgb3V0IGFzIHRlc3RpbmcgZm9yIDAtZGF5CnRvIHRha2UgYSBs
b29rIGF0IGl0LgoKTm90ZSBJJ2xsIGJlIHJlYmFzaW5nIG9uIHJjMSBvbmNlIGF2YWlsYWJsZS4K
ClRoYW5rcywKCkpvbmF0aGFuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==

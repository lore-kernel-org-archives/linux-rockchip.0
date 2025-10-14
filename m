Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F27ECCD184
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Oct 2025 04:25:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=510TCAPMC67Sb4KZ94+mne3SdHynT3XaXrFrGB4hHrU=; b=YwRBwjrnh3NGNG
	KNe52L8VSwVdeUoEkXr/vrfzhwxUYKyMMM//Gaj1MDsVxxaew6Dq74v+wV/8oOHM7Td6PHPkrpQlG
	mF4kamEgQwhNIv5pqK1CVciJWyK/04JRlZ8dqcqFPGT+vIm4/0X8wYNjp1PsdEAn/Um8+NBtE7VN3
	wQeUNr8MPcvwF8eRoPiRSp683ZAt/S2DtUDMciXDGpaMsNgECkjKMHsgvaW2jdoau3/cMI3hmv1Np
	oqdwaBjypwBJy0PjPcz1fO9roB9Yu3iv0gz7jgSYj68ZSZtRPos0NwqYZp2U8xZNAZCTP9qnM7ZQj
	D8fMVx4b/idm1SN4o/sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8Wap-0000000F6a4-03IE;
	Tue, 14 Oct 2025 04:24:59 +0000
Received: from [195.187.100.5] (helo=ni.piap.pl)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8Waj-0000000F6Z7-2Si5;
	Tue, 14 Oct 2025 04:24:56 +0000
Received: from t19.piap.pl (OSB1819.piap.pl [10.0.9.19])
	by ni.piap.pl (Postfix) with ESMTPS id 13FA2C3EEAC9;
	Tue, 14 Oct 2025 06:24:44 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 ni.piap.pl 13FA2C3EEAC9
From: =?utf-8?Q?Krzysztof_Ha=C5=82asa?= <khalasa@piap.pl>
To: Ricardo Ribalda <ribalda@chromium.org>
Cc: Linus Walleij <linus.walleij@linaro.org>,  Dmitry Torokhov
 <dmitry.torokhov@gmail.com>,  Mauro Carvalho Chehab <mchehab@kernel.org>,
  Hans Verkuil <hverkuil@kernel.org>,  Sakari Ailus
 <sakari.ailus@linux.intel.com>,  Tomi Valkeinen
 <tomi.valkeinen@ideasonboard.com>,  Leon Luo <leonl@leopardimaging.com>,
  Kieran Bingham <kieran.bingham@ideasonboard.com>,  Jacopo Mondi
 <jacopo+renesas@jmondi.org>,  Kieran Bingham
 <kieran.bingham+renesas@ideasonboard.com>,  Laurent Pinchart
 <laurent.pinchart+renesas@ideasonboard.com>,  Niklas =?utf-8?Q?S=C3=B6der?=
 =?utf-8?Q?lund?=
 <niklas.soderlund+renesas@ragnatech.se>,  Julien Massot
 <julien.massot@collabora.com>,  Jacopo Mondi <jacopo@jmondi.org>,  Daniel
 Scally <djrscally@gmail.com>,  Dave Stevenson
 <dave.stevenson@raspberrypi.com>,  Benjamin Mugnier
 <benjamin.mugnier@foss.st.com>,  Sylvain Petinot
 <sylvain.petinot@foss.st.com>,  Yong Zhi <yong.zhi@intel.com>,  Bingbu Cao
 <bingbu.cao@intel.com>,  Tianshu Qiu <tian.shu.qiu@intel.com>,  Tiffany
 Lin <tiffany.lin@mediatek.com>,  Andrew-CT Chen
 <andrew-ct.chen@mediatek.com>,  Yunfei Dong <yunfei.dong@mediatek.com>,
  Matthias Brugger <matthias.bgg@gmail.com>,  AngeloGioacchino Del Regno
 <angelogioacchino.delregno@collabora.com>,  Rui Miguel Silva
 <rmfrfs@gmail.com>,  Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
  Martin Kepplinger <martink@posteo.de>,  Purism Kernel Team
 <kernel@puri.sm>,  Shawn Guo <shawnguo@kernel.org>,  Sascha Hauer
 <s.hauer@pengutronix.de>,  Pengutronix Kernel Team
 <kernel@pengutronix.de>,  Fabio Estevam <festevam@gmail.com>,  Dafna
 Hirschfeld <dafna@fastmail.com>,  Heiko Stuebner <heiko@sntech.de>,
  Sylwester Nawrocki <s.nawrocki@samsung.com>,  Krzysztof Kozlowski
 <krzk@kernel.org>,  Alim Akhtar <alim.akhtar@samsung.com>,  Yemike
 Abhilash Chandra <y-abhilashchandra@ti.com>,  Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>,  linux-input@vger.kernel.org,
  linux-kernel@vger.kernel.org,  linux-media@vger.kernel.org,
  linux-arm-kernel@lists.infradead.org,
  linux-mediatek@lists.infradead.org,  imx@lists.linux.dev,
  linux-renesas-soc@vger.kernel.org,  linux-rockchip@lists.infradead.org,
  linux-samsung-soc@vger.kernel.org,  linux-staging@lists.linux.dev
Subject: Re: [PATCH 05/32] media: ar0521: Use %pe format specifier
In-Reply-To: <20251013-ptr_err-v1-5-2c5efbd82952@chromium.org> (Ricardo
	Ribalda's message of "Mon, 13 Oct 2025 14:14:45 +0000")
References: <20251013-ptr_err-v1-0-2c5efbd82952@chromium.org>
	<20251013-ptr_err-v1-5-2c5efbd82952@chromium.org>
Date: Tue, 14 Oct 2025 06:24:43 +0200
Message-ID: <m3ldlertys.fsf@t19.piap.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251013_212453_810005_5BFC2BE4 
X-CRM114-Status: GOOD (  10.38  )
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

UmljYXJkbyBSaWJhbGRhIDxyaWJhbGRhQGNocm9taXVtLm9yZz4gd3JpdGVzOgoKPiBUaGUgJXBl
IGZvcm1hdCBzcGVjaWZpZXIgaXMgZGVzaWduZWQgdG8gcHJpbnQgZXJyb3IgcG9pbnRlcnMuIEl0
IHByaW50cwo+IGEgc3ltYm9saWMgZXJyb3IgbmFtZSAoZWcuIC1FSU5WQUwpIGFuZCBpdCBtYWtl
cyB0aGUgY29kZSBzaW1wbGVyIGJ5Cj4gb21pdHRpbmcgUFRSX0VSUigpCj4KPiBUaGlzIHBhdGNo
IGZpeGVzIHRoaXMgY29jY2kgcmVwb3J0Ogo+IC4vaTJjL2FyMDUyMS5jOjExMTM6MzEtMzg6IFdB
Uk5JTkc6IENvbnNpZGVyIHVzaW5nICVwZSB0byBwcmludCBQVFJfRVJSKCkKPgo+IFNpZ25lZC1v
ZmYtYnk6IFJpY2FyZG8gUmliYWxkYSA8cmliYWxkYUBjaHJvbWl1bS5vcmc+CgpUaGFua3MsCkFj
a2VkLWJ5OiBLcnp5c3p0b2YgSGHFgmFzYSA8a2hhbGFzYUBwaWFwLnBsPgoKPiAtLS0gYS9kcml2
ZXJzL21lZGlhL2kyYy9hcjA1MjEuYwo+ICsrKyBiL2RyaXZlcnMvbWVkaWEvaTJjL2FyMDUyMS5j
Cj4gQEAgLTExMDksOCArMTEwOSw4IEBAIHN0YXRpYyBpbnQgYXIwNTIxX3Byb2JlKHN0cnVjdCBp
MmNfY2xpZW50ICpjbGllbnQpCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgYXIwNTIxX3N1cHBseV9uYW1lc1tjbnRdKTsKPgo+ICAgICAgICAgICAgICAg
ICBpZiAoSVNfRVJSKHN1cHBseSkpIHsKPiAtICAgICAgICAgICAgICAgICAgICAgICBkZXZfaW5m
byhkZXYsICJubyAlcyByZWd1bGF0b3IgZm91bmQ6ICVsaVxuIiwKPiAtICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBhcjA1MjFfc3VwcGx5X25hbWVzW2NudF0sIFBUUl9FUlIoc3VwcGx5
KSk7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgZGV2X2luZm8oZGV2LCAibm8gJXMgcmVndWxh
dG9yIGZvdW5kOiAlcGVcbiIsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgYXIw
NTIxX3N1cHBseV9uYW1lc1tjbnRdLCBzdXBwbHkpOwo+ICAgICAgICAgICAgICAgICAgICAgICAg
IHJldHVybiBQVFJfRVJSKHN1cHBseSk7Cj4gICAgICAgICAgICAgICAgIH0KPiAgICAgICAgICAg
ICAgICAgc2Vuc29yLT5zdXBwbGllc1tjbnRdID0gc3VwcGx5OwoKLS0gCktyenlzenRvZiAiQ2hy
aXMiIEhhxYJhc2EKClNpZcSHIEJhZGF3Y3phIMWBdWthc2lld2ljegpQcnplbXlzxYJvd3kgSW5z
dHl0dXQgQXV0b21hdHlraSBpIFBvbWlhcsOzdyBQSUFQCkFsLiBKZXJvem9saW1za2llIDIwMiwg
MDItNDg2IFdhcnN6YXdhCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38A13CCD187
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Oct 2025 07:07:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ox5dWkBpDwlbJJ26djXwVxELBe8W+t/CgxZT0mwftzs=; b=2stey0bmbpOLHb
	BXSd01sdTryG/Mv5oy2OxC8P4QTF180NsM3RZGZqAj3Ds+yREKxHSW9fWT9k400Elb1MU8q+ZOllG
	fHOjWbjaiFubUrK7lASvPZMoq0I7SZrFEsSekdTaBfLdaJAmwWVmtdo5coh5YC2gBymF/AqHAoqt8
	Bt6LoBmbJFll7a+pJDMGD2cn/TRJDPB6S3bprUJAClEgRxtCGXundvBlCLZ9US8CTBEh7dTi7Il4+
	Z2fu3nfUU6cuqJScMk9KIr7/B47lWIikZvgvyck24nSu/VHb9TIMpz3auSJoiafcpOVC1TCighiJy
	q5MFiswtT6RQrW1CtMEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8Z7q-0000000FOzd-0pOe;
	Tue, 14 Oct 2025 07:07:14 +0000
Received: from mout01.posteo.de ([185.67.36.65])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8Z7o-0000000FOyj-0XKt
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Oct 2025 07:07:13 +0000
Received: from submission (posteo.de [185.67.36.169]) 
	by mout01.posteo.de (Postfix) with ESMTPS id 015BB240027
	for <linux-rockchip@lists.infradead.org>; Tue, 14 Oct 2025 09:07:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=posteo.de; s=2017;
	t=1760425628; bh=m2ao7yOlmXtTR+gAWOXEYdjwi7rdtHCkxzZCJ5XFR9E=;
	h=Message-ID:Subject:From:To:Cc:Date:Content-Type:
	 Content-Transfer-Encoding:MIME-Version:From;
	b=iGohrgTaUHe7PR+MwDgFxlKm8I4ZxkhKy/OBhk6ZDQCWh2Gq+zlxsMgB6o2QUEA/D
	 1ioE1BodqUpgNdKVrXwgNOs93gp2baHiGE0L16sW5bOw5lm2QID/oZz6PZD2jsKWeG
	 oHTNW6ycLVCJutGFVexQ6lQhRXmUbtV39VuDkyzMN/fKe/dHHiiIr7wCmi/jOjQ4BD
	 1r9SF7vdLrbW8T3JPizwKZrUV/HyfWbtbagly7DN+2HTsVuH8yXIjO3he2G4KF/MeQ
	 sW0RI/+mT5ZP+3m6bhuZuqR9x1XSbNpfFcvKg3QCFASKeCdtN0wQnRCvor5A9j6Xn7
	 HBDts5WcqeKjw==
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 4cm4yp6z2Tz9rxR;
	Tue, 14 Oct 2025 09:06:58 +0200 (CEST)
Message-ID: <f30b137685be9148e69f18065d811d011bfe3409.camel@posteo.de>
Subject: Re: [PATCH 25/32] media: imx8mq-mipi-csi2: Use %pe format specifier
From: Martin Kepplinger-Novakovic <martink@posteo.de>
To: Ricardo Ribalda <ribalda@chromium.org>, Linus Walleij	
 <linus.walleij@linaro.org>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
 Mauro Carvalho Chehab	 <mchehab@kernel.org>, Hans Verkuil
 <hverkuil@kernel.org>, Sakari Ailus	 <sakari.ailus@linux.intel.com>,
 Krzysztof =?UTF-8?Q?Ha=C5=82asa?=	 <khalasa@piap.pl>, Tomi Valkeinen
 <tomi.valkeinen@ideasonboard.com>, Leon Luo	 <leonl@leopardimaging.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>,  Jacopo Mondi
 <jacopo+renesas@jmondi.org>, Kieran Bingham
 <kieran.bingham+renesas@ideasonboard.com>,  Laurent Pinchart
 <laurent.pinchart+renesas@ideasonboard.com>, Niklas
 =?ISO-8859-1?Q?S=F6derlund?=	 <niklas.soderlund+renesas@ragnatech.se>,
 Julien Massot	 <julien.massot@collabora.com>, Jacopo Mondi
 <jacopo@jmondi.org>, Daniel Scally	 <djrscally@gmail.com>, Dave Stevenson
 <dave.stevenson@raspberrypi.com>,  Benjamin Mugnier
 <benjamin.mugnier@foss.st.com>, Sylvain Petinot
 <sylvain.petinot@foss.st.com>, Yong Zhi	 <yong.zhi@intel.com>, Bingbu Cao
 <bingbu.cao@intel.com>, Tianshu Qiu	 <tian.shu.qiu@intel.com>, Tiffany Lin
 <tiffany.lin@mediatek.com>, Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Yunfei Dong <yunfei.dong@mediatek.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno	
 <angelogioacchino.delregno@collabora.com>, Rui Miguel Silva
 <rmfrfs@gmail.com>,  Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Purism Kernel Team <kernel@puri.sm>, Shawn Guo	 <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team
 <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, Dafna
 Hirschfeld	 <dafna@fastmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Sylwester Nawrocki	 <s.nawrocki@samsung.com>, Krzysztof Kozlowski
 <krzk@kernel.org>, Alim Akhtar	 <alim.akhtar@samsung.com>, Yemike Abhilash
 Chandra <y-abhilashchandra@ti.com>,  Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>
Cc: linux-input@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, imx@lists.linux.dev, 
	linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-staging@lists.linux.dev
Date: Tue, 14 Oct 2025 07:07:05 +0000
In-Reply-To: <20251013-ptr_err-v1-25-2c5efbd82952@chromium.org>
References: <20251013-ptr_err-v1-0-2c5efbd82952@chromium.org>
	 <20251013-ptr_err-v1-25-2c5efbd82952@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251014_000712_484882_3FB1389B 
X-CRM114-Status: GOOD (  12.90  )
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

QW0gTW9udGFnLCBkZW0gMTMuMTAuMjAyNSB1bSAxNDoxNSArMDAwMCBzY2hyaWViIFJpY2FyZG8g
UmliYWxkYToKPiBUaGUgJXBlIGZvcm1hdCBzcGVjaWZpZXIgaXMgZGVzaWduZWQgdG8gcHJpbnQg
ZXJyb3IgcG9pbnRlcnMuIEl0Cj4gcHJpbnRzCj4gYSBzeW1ib2xpYyBlcnJvciBuYW1lIChlZy4g
LUVJTlZBTCkgYW5kIGl0IG1ha2VzIHRoZSBjb2RlIHNpbXBsZXIgYnkKPiBvbWl0dGluZyBQVFJf
RVJSKCkuCj4gCj4gVGhpcyBwYXRjaCBmaXhlcyB0aGlzIGNvY2NpIHJlcG9ydDoKPiAuL3BsYXRm
b3JtL254cC9pbXg4bXEtbWlwaS1jc2kyLmM6NDIyOjIzLTMwOiBXQVJOSU5HOiBDb25zaWRlciB1
c2luZwo+ICVwZSB0byBwcmludCBQVFJfRVJSKCkKPiAKPiBTaWduZWQtb2ZmLWJ5OiBSaWNhcmRv
IFJpYmFsZGEgPHJpYmFsZGFAY2hyb21pdW0ub3JnPgo+IC0tLQo+IMKgZHJpdmVycy9tZWRpYS9w
bGF0Zm9ybS9ueHAvaW14OG1xLW1pcGktY3NpMi5jIHwgNCArKy0tCj4gwqAxIGZpbGUgY2hhbmdl
ZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL21lZGlhL3BsYXRmb3JtL254cC9pbXg4bXEtbWlwaS1jc2kyLmMKPiBiL2RyaXZlcnMvbWVk
aWEvcGxhdGZvcm0vbnhwL2lteDhtcS1taXBpLWNzaTIuYwo+IGluZGV4Cj4gM2E0NjQ1ZjU5YTQ0
MDI4ZmRjYTgyYTRkODM5M2UxYTBhNmJhODhmMC4uZDMzM2ZmNDM1MzlmMDYxYjhiOWNmODhhZjJj
Cj4gZGE4YzQ0YjNlYzJhOSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL254
cC9pbXg4bXEtbWlwaS1jc2kyLmMKPiArKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL254cC9p
bXg4bXEtbWlwaS1jc2kyLmMKPiBAQCAtNDE4LDggKzQxOCw4IEBAIHN0YXRpYyBpbnQgaW14OG1x
X21pcGlfY3NpX2NhbGNfaHNfc2V0dGxlKHN0cnVjdAo+IGNzaV9zdGF0ZSAqc3RhdGUsCj4gwqAK
PiDCoAlzcmNfcGFkID0gbWVkaWFfZW50aXR5X3JlbW90ZV9zb3VyY2VfcGFkX3VuaXF1ZSgmc2Rf
c3RhdGUtCj4gPnNkLT5lbnRpdHkpOwo+IMKgCWlmIChJU19FUlIoc3JjX3BhZCkpIHsKPiAtCQlk
ZXZfZXJyKHN0YXRlLT5kZXYsICJjYW4ndCBnZXQgc291cmNlIHBhZCBvZiAlcwo+ICglbGQpXG4i
LAo+IC0JCQlzZF9zdGF0ZS0+c2QtPm5hbWUsIFBUUl9FUlIoc3JjX3BhZCkpOwo+ICsJCWRldl9l
cnIoc3RhdGUtPmRldiwgImNhbid0IGdldCBzb3VyY2UgcGFkIG9mICVzCj4gKCVwZSlcbiIsCj4g
KwkJCXNkX3N0YXRlLT5zZC0+bmFtZSwgc3JjX3BhZCk7Cj4gwqAJCXJldHVybiBQVFJfRVJSKHNy
Y19wYWQpOwo+IMKgCX0KPiDCoAoKUmV2aWV3ZWQtYnk6IE1hcnRpbiBLZXBwbGluZ2VyLU5vdmFr
b3ZpYyA8bWFydGlua0Bwb3N0ZW8uZGU+Cgp0aGFua3MgeW91LAoKICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBtYXJ0aW4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81E04CA1016
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Sep 2025 09:18:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gHEUE9mpp2co2OS3zkIFb34+s4bmVONKjSIN05AXAk8=; b=18smw/bLVU8AT0
	yXWlPJQZUmmztpWZrOqUNhYyxF/Q1D6v+57P0Q+deUlryO2jTm72w80RAXSJuJ9ae3s/OZ4o0nB0X
	UQdrqK9qjhAUZb+4KWy6ao3cwMhihIrxBaqYZiGM0hweUa59DePAsDRHfLKCaFf6C04LIDS7tCcdb
	yH2Vh4MNuGLy10EQYRcJgEcCONctP/dtGFCP8NfaXrPz+uYfjT+vvgMk7VY5kSeSEl4VcWHxdPQNf
	gaVAA52R5WHCA4g8sjR9Cg5Xl5gAV6x6MZdHBrJC7UUNVCuGmVsZySzWlyRm4WjSzHT0JLi4Lt2R5
	Rzm2xTS72kedDqdl1koA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuSZx-00000000gLK-2Gez;
	Fri, 05 Sep 2025 09:17:57 +0000
Received: from flow-a4-smtp.messagingengine.com ([103.168.172.139])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuRJD-00000000BHL-44IS;
	Fri, 05 Sep 2025 07:56:37 +0000
Received: from phl-compute-10.internal (phl-compute-10.internal [10.202.2.50])
	by mailflow.phl.internal (Postfix) with ESMTP id 820DD1380159;
	Fri,  5 Sep 2025 03:56:32 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
  by phl-compute-10.internal (MEProxy); Fri, 05 Sep 2025 03:56:32 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ragnatech.se; h=
	cc:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm3; t=1757058992;
	 x=1757066192; bh=KXUoaaH+PV1RudhFs2J2lVTbxM4uje+tSmH6gtbu+Nw=; b=
	QaTEQEmjGTJeSxeiah6pwWZmjZ/MZs5T6DwWq8Nmr7oHpYFT9j95C72yMyBcZ5nz
	u3cXjVlnWCc6V75Dwc83w5se6RUX0cgy2r6hhn8896BD1N9niWfNBDEsX5z3bbZh
	580Lxh1wJduGFt3iTeOOmO1kuUcf+UmbfmLmVrhi303staCq+82oOHT6v6FtLJ0q
	KUmIN0sVOTWfm9OO4IWePH36nTPtiHUbxCP6V5sCpCoy7ecX5fAcARL2bBp1+hYX
	meum9lsc6nxtc9bJfoYbWnrGaAyGJmjEbDgf28gHFpwuN2s7fsfyePI14fKiGSKO
	+KWH0qpxAXjQsFF5TvJk4Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1757058992; x=
	1757066192; bh=KXUoaaH+PV1RudhFs2J2lVTbxM4uje+tSmH6gtbu+Nw=; b=Y
	0cf+H8iNJvMgyddoNtlWXiFqcl4IGVll81T+/QLuu0VNzM2Tdl4Dututnx+WBVfY
	ZUAq036GCT8hJkBvo1Xuxdbdn01HtUdgUk4Ofv3efStIQ3nE14kAyA73FHfb4fjf
	KOwQB+75cW2V3GGZKDUuIfX594V3wr1n+Z2P2+qfVHB3QqrZG4ssbRrH1By1GbCD
	TRIW/OdNehrErechp8kPDk8rijxMDklBtf55Ic7ogPHsHFoI0ZeeNpUdQIUyNFBc
	8OZXytKiVrvaFoIX8swMPQV8EFgUKFbS92QjUo575ehIJo8Op3B6lZAJqKd3TDxm
	YaTlavtRtgFLUQVaVcOvQ==
X-ME-Sender: <xms:rJe6aPT4hEQwkAeohLnFC7wamjbvAr7niwm9b31Yo5zEex0vYFN_jg>
    <xme:rJe6aPCqpHI9uJ68XId1Qna7oWm5iyUGoAQPsu1kx2oN2qHjsCp2dNoZI4nTxFNl9
    MurlN6lVZ1a7ntIgiI>
X-ME-Received: <xmr:rJe6aO_r3H0kGSKS2fH0hEtRAmpG1wYDXGxPnza4nmiPk8yaDQHgreHxbUoYRRqeSVYYMKGdX0I7aNFWxHyOdN0DhlU70pWKyg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdekfeegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceurghi
    lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurh
    epfffhvfevuffkfhggtggugfgjsehtkeertddttdejnecuhfhrohhmpefpihhklhgrshcu
    ufpnuggvrhhluhhnugcuoehnihhklhgrshdrshhouggvrhhluhhnugesrhgrghhnrghtvg
    gthhdrshgvqeenucggtffrrghtthgvrhhnpeevteegtddvvdfhtdekgefhfeefheetheek
    keegfeejudeiudeuleegtdehkeekteenucevlhhushhtvghrufhiiigvpedtnecurfgrrh
    grmhepmhgrihhlfhhrohhmpehnihhklhgrshdrshhouggvrhhluhhnugesrhgrghhnrght
    vggthhdrshgvpdhnsggprhgtphhtthhopeeihedpmhhouggvpehsmhhtphhouhhtpdhrtg
    hpthhtohepiihhrghordigihgthhgrohesvhhivhhordgtohhmpdhrtghpthhtohepjhgu
    vghlvhgrrhgvsehsuhhsvgdrtghomhdprhgtphhtthhopehlihhnuhigsehrohgvtghkqd
    hushdrnhgvthdprhgtphhtthhopehjihgtvdefsehkvghrnhgvlhdrohhrghdprhgtphht
    thhopegulhgvtghhnhgvrhessggrhihlihgsrhgvrdgtohhmpdhrtghpthhtohepnhhunh
    hordhsrgesrghnrghlohhgrdgtohhmpdhrtghpthhtoheprghnugihsehkvghrnhgvlhdr
    ohhrghdprhgtphhtthhopeifvghnshestghsihgvrdhorhhgpdhrtghpthhtohepjhgvrh
    hnvghjrdhskhhrrggsvggtsehgmhgrihhlrdgtohhm
X-ME-Proxy: <xmx:rJe6aLaJP6Xj2rkulgEos-3PuobS8mQKjatGJJBMK7inm3Pq7Gp2Vg>
    <xmx:rJe6aNF7-pW6bVrecDyimGuFt4rFKlRaO80vk9U-M3x2Osc7wCA6DA>
    <xmx:rJe6aLeryKtg2eNLenz4G8c7nPW0XLHn41W-YUcd9nAafvGlUomGZw>
    <xmx:rJe6aID5jwH-KTo0RNYmn7aS7aHdvvvDvzZsp7Xrs_Dh-FuDrHloig>
    <xmx:sJe6aL5VH3NVRImO0zXqWNKt1X3K9WtPu7YT5fkHwr7N4ubXrLHaDEMN>
Feedback-ID: i80c9496c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 5 Sep 2025 03:56:27 -0400 (EDT)
Date: Fri, 5 Sep 2025 09:56:25 +0200
From: Niklas =?utf-8?Q?S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>
To: Xichao Zhao <zhao.xichao@vivo.com>
Cc: Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>,
	Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?utf-8?B?U8Oh?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Liam Girdwood <lgirdwood@gmail.com>,	Mark Brown <broonie@kernel.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
	Guillaume La Roque <glaroque@baylibre.com>,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>,	Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
	Markus Mayer <mmayer@broadcom.com>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	zhanghongchen <zhanghongchen@loongson.cn>,
	Yinbo Zhu <zhuyinbo@loongson.cn>, Amit Kucheria <amitk@kernel.org>,
	Thara Gopinath <thara.gopinath@gmail.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,	Heiko Stuebner <heiko@sntech.de>,
	Bartlomiej Zolnierkiewicz <bzolnier@gmail.com>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,	Orson Zhai <orsonzhai@gmail.com>,
	Baolin Wang <baolin.wang@linux.alibaba.com>,
	Chunyan Zhang <zhang.lyra@gmail.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,	Talel Shenhar <talel@amazon.com>,
	Eduardo Valentin <edubezval@gmail.com>, Keerthy <j-keerthy@ti.com>,
	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	"open list:HARDWARE MONITORING" <linux-hwmon@vger.kernel.org>,
	open list <linux-kernel@vger.kernel.org>,
	"open list:IIO SUBSYSTEM AND DRIVERS" <linux-iio@vger.kernel.org>,
	"moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>,
	"open list:ARM/Allwinner sunXi SoC support"
 <linux-sunxi@lists.linux.dev>,
	"open list:THERMAL" <linux-pm@vger.kernel.org>,
	"open list:THERMAL DRIVER FOR AMLOGIC SOCS"
 <linux-amlogic@lists.infradead.org>,
	"moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>,
	"open list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <imx@lists.linux.dev>,
	"open list:QUALCOMM TSENS THERMAL DRIVER"
 <linux-arm-msm@vger.kernel.org>,
	"open list:RENESAS R-CAR THERMAL DRIVERS"
 <linux-renesas-soc@vger.kernel.org>,
	"open list:ARM/Rockchip SoC support"
 <linux-rockchip@lists.infradead.org>,
	"open list:SAMSUNG THERMAL DRIVER" <linux-samsung-soc@vger.kernel.org>,
	"moderated list:ARM/STM32 ARCHITECTURE"
 <linux-stm32@st-md-mailman.stormreply.com>,
	"open list:TEGRA ARCHITECTURE SUPPORT" <linux-tegra@vger.kernel.org>,
	"open list:TI BANDGAP AND THERMAL DRIVER" <linux-omap@vger.kernel.org>
Subject: Re: [PATCH 01/12] thermal: of: Add error handling in
 devm_thermal_*_register()
Message-ID: <20250905075625.GA1852264@ragnatech.se>
References: <20250905072423.368123-1-zhao.xichao@vivo.com>
 <20250905072423.368123-2-zhao.xichao@vivo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250905072423.368123-2-zhao.xichao@vivo.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250905_005636_510647_B247E91E 
X-CRM114-Status: GOOD (  20.70  )
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

SGVsbG8gWGljaGFvLAoKVGhhbmtzIGZvciB5b3VyIHdvcmsuCgpPbiAyMDI1LTA5LTA1IDE1OjIz
OjUzICswODAwLCBYaWNoYW8gWmhhbyB3cm90ZToKPiBkZXZtX3RoZXJtYWxfb2Zfem9uZV9yZWdp
c3RlcigpIGRvZXMgbm90IHByaW50IGFueSBlcnJvciBtZXNzYWdlCj4gd2hlbiByZWdpc3Rlcmlu
ZyBhIHRoZXJtYWwgem9uZSB3aXRoIGEgZGV2aWNlIG5vZGUgc2Vuc29yIGZhaWxzCj4gYW5kIGFs
bG9jYXRpbmcgZGV2aWNlIHJlc291cmNlIGRhdGEgZmFpbHMuCj4gCj4gVGhpcyBmb3JjZXMgZWFj
aCBkcml2ZXIgdG8gaW1wbGVtZW50IHJlZHVuZGFudCBlcnJvciBsb2dnaW5nLgo+IEFkZGl0aW9u
YWxseSwgd2hlbiB1cHBlci1sYXllciBmdW5jdGlvbnMgcHJvcGFnYXRlIHRoZXNlIGVycm9ycwo+
IHdpdGhvdXQgbG9nZ2luZywgY3JpdGljYWwgZGVidWdnaW5nIGluZm9ybWF0aW9uIGlzIGxvc3Qu
Cj4gCj4gQWRkIGRldl9lcnJfcHJvYmUoKSBpbiBkZXZtX3RoZXJtYWxfb2Zfem9uZV9yZWdpc3Rl
cigpIHRvIHVuaWZ5Cj4gZXJyb3IgcmVwb3J0aW5nLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFhpY2hh
byBaaGFvIDx6aGFvLnhpY2hhb0B2aXZvLmNvbT4KPiAtLS0KPiAgZHJpdmVycy90aGVybWFsL3Ro
ZXJtYWxfb2YuYyB8IDYgKysrKystCj4gIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyks
IDEgZGVsZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy90aGVybWFsL3RoZXJtYWxf
b2YuYyBiL2RyaXZlcnMvdGhlcm1hbC90aGVybWFsX29mLmMKPiBpbmRleCAxYTUxYTRkMjQwZmYu
LjhmZTBhZDQwMjU3OSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3RoZXJtYWwvdGhlcm1hbF9vZi5j
Cj4gKysrIGIvZHJpdmVycy90aGVybWFsL3RoZXJtYWxfb2YuYwo+IEBAIC00NzUsMTEgKzQ3NSwx
NSBAQCBzdHJ1Y3QgdGhlcm1hbF96b25lX2RldmljZSAqZGV2bV90aGVybWFsX29mX3pvbmVfcmVn
aXN0ZXIoc3RydWN0IGRldmljZSAqZGV2LCBpbgo+ICAKPiAgCXB0ciA9IGRldnJlc19hbGxvYyhk
ZXZtX3RoZXJtYWxfb2Zfem9uZV9yZWxlYXNlLCBzaXplb2YoKnB0ciksCj4gIAkJCSAgIEdGUF9L
RVJORUwpOwo+IC0JaWYgKCFwdHIpCj4gKwlpZiAoIXB0cikgewo+ICsJCWRldl9lcnIoZGV2LCAi
RmFpbGVkIHRvIGFsbG9jYXRlIGRldmljZSByZXNvdXJjZSBkYXRhXG4iKTsKPiAgCQlyZXR1cm4g
RVJSX1BUUigtRU5PTUVNKTsKPiArCX0KPiAgCj4gIAl0emQgPSB0aGVybWFsX29mX3pvbmVfcmVn
aXN0ZXIoZGV2LT5vZl9ub2RlLCBzZW5zb3JfaWQsIGRhdGEsIG9wcyk7Cj4gIAlpZiAoSVNfRVJS
KHR6ZCkpIHsKPiArCQlkZXZfZXJyX3Byb2JlKGRldiwgUFRSX0VSUih0emQpLAo+ICsJCQkgICAg
ICAiRmFpbGVkIHRvIHJlZ2lzdGVyIHRoZXJtYWwgem9uZSBzZW5zb3JbJWRdXG4iLCBzZW5zb3Jf
aWQpOwoKRG9uJ3QgdGhlcm1hbF9vZl96b25lX3JlZ2lzdGVyKCkgYWxyZWFkeSBwcmludCBhbiBl
cnJvciBtZXNzYWdlIGZvciAKZmFpbHVyZSBjYXNlcz8gSWYgbm90IGNhbiB0aGlzIHByaW50IGJl
IG1vdmVkIHRoZXJlPyBUaGF0IHdvdWxkIGFsbG93IAp0aGUgY2hhbmdlIHlvdSBtYWtlIGluIFIt
Q2FyIGRyaXZlcnMgdG8gcmVtb3ZlIHRoZSBwcmF0aW5nIGNvbXBsZXRlbHksIApub3QganVzdCBm
b3IgdGhlIGRldm1fKiBjYXNlcy4KCj4gIAkJZGV2cmVzX2ZyZWUocHRyKTsKPiAgCQlyZXR1cm4g
dHpkOwo+ICAJfQo+IC0tIAo+IDIuMzQuMQo+IAoKLS0gCktpbmQgUmVnYXJkcywKTmlrbGFzIFPD
tmRlcmx1bmQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK

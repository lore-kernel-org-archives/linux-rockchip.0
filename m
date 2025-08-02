Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C1D5CCD193
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Oct 2025 11:59:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wYxAg3lJ19vwZ9KTe3JFW3qs9wg0tbT9G5WRmv5/0zU=; b=RavHx+knqzuo6i
	u+uHlGuDc6j5OO4VaOzBSNiLKbo9ON1xUYOMB9mWcfcbo/X91E3Cb4sEGHkbHdmPC9mCOemD90RD0
	TsQ2pPCOmrw/yMN6pBuxyH3g/yW+Mhh+zkK1UGPIgi6/KUMOaV7htkxYQv4xdV+L76z8x1KPjr5DJ
	m9LQd/xSWvvUO/9uaBzdTHB4v+h5sIPA6SZt4jwgYMc0w2uC+dlmFewQi3ZZIwgR7/zPI5xStWBU2
	aCGbxiwjskOvD4rejz3TaKfscDnT/A6+7xpK53pCrO6q1KQu+0QA34fNmC4AvXjF2lU8+fDVOukx6
	A2sQjE19OuP54FJBUtxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAoXP-0000000DBcG-2eeV;
	Mon, 20 Oct 2025 11:58:56 +0000
Received: from flow-a5-smtp.messagingengine.com ([103.168.172.140])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uiCGG-00000007e1R-21Yr;
	Sat, 02 Aug 2025 13:26:58 +0000
Received: from phl-compute-04.internal (phl-compute-04.phl.internal [10.202.2.44])
	by mailflow.phl.internal (Postfix) with ESMTP id A87BC1380608;
	Sat,  2 Aug 2025 09:26:52 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
  by phl-compute-04.internal (MEProxy); Sat, 02 Aug 2025 09:26:52 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ragnatech.se; h=
	cc:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm2; t=1754141212;
	 x=1754148412; bh=bmI1hYqjksR+DRa8JSQk6MVH64W5+sLipA6UwCtocJY=; b=
	qqNUWLHW5NkgMWC7l9Ppuzcw0TRZVKBalVrpuNL2tWkSX16V+CaL/WD3GPRevH/3
	cOaqYuZWVehBMlqwkuJTQ3+7ee7mvoCmm57l/9y3kSLOhYi/j9UZL0baYRp5JOQM
	j4yp2XwkBPHkkHrQr9G2kPmFqob1bo+ge9yICVt/dsRrLU+xuJA6h9g8SW4qJPa0
	AHQH8Vz64gEdgI7kQ+1DTmePAvNbJQJxnWkGkDSZF/paCkDAzfIwxTUg+JfaHIca
	2uCTiijQTVgzLiuE6qwTC/es2iaY0ak3Q1yInsTplxnRcKjgCrvxpj+WvGFL/Gkm
	HIx11r/lg4cei6lIenYP+g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1754141212; x=
	1754148412; bh=bmI1hYqjksR+DRa8JSQk6MVH64W5+sLipA6UwCtocJY=; b=C
	LzPCjtSlWjEpgC9nck7IIN+a6VWM2T9KzMBiWo4CFmbf/c8EsbwRuyBR6zo43jFD
	hvyIbMP0zgOcLL+h4kub0bXZEqehHtgFY6sV9cwlFjffv+lGsEsKcJttU2+8fn3b
	kRALXojkwbX6H2IOxV2soFJHVIcKk6LuRbHAbjPhMXvWGeT7KA2Mau0LJLy4HAji
	lfgiUMmK9spCDs/oe1YGLozfqCHtXvx0XyirO7dloL77Fyd05IG6lp0ZwH1pUgeh
	FNabC3mgBC+9qZ25Drxy58dz8xR3lKKGectSGWS0hTtARs2FRFJmAX2nfNB3fKxO
	c360wFl1nKo7iNibIdOnQ==
X-ME-Sender: <xms:FhKOaIqzIVCCzZqyPT8S-Kuyp75Ghz90bD-sNWC1Ynb1xWuDhB2fgA>
    <xme:FhKOaAAM51hB_nYlCo1hgXLgPrXfAQsJTzEzSK29ONCez_BVzRWEnZ7YYfmVPVSd4
    mYWvtLYdmS8g_-J1io>
X-ME-Received: <xmr:FhKOaKNy3dovqvqjcZlMlmNulu_odOhDUh_OuI4TialffSqjpk1dXSXjcgxfsuv77hx6_icSG8wxq9Qphv3aDtPfT18v805RrQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdefgddutdeiieelucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
    rghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujf
    gurhepfffhvfevuffkfhggtggugfgjsehtkeertddttdejnecuhfhrohhmpefpihhklhgr
    shcuufpnuggvrhhluhhnugcuoehnihhklhgrshdrshhouggvrhhluhhnugesrhgrghhnrg
    htvggthhdrshgvqeenucggtffrrghtthgvrhhnpeevteegtddvvdfhtdekgefhfeefheet
    heekkeegfeejudeiudeuleegtdehkeekteenucevlhhushhtvghrufhiiigvpedtnecurf
    grrhgrmhepmhgrihhlfhhrohhmpehnihhklhgrshdrshhouggvrhhluhhnugesrhgrghhn
    rghtvggthhdrshgvpdhnsggprhgtphhtthhopedutdehpdhmohguvgepshhmthhpohhuth
    dprhgtphhtthhopehjrggtohhpohdrmhhonhguihesihguvggrshhonhgsohgrrhgurdgt
    ohhmpdhrtghpthhtohepmhgthhgvhhgrsgeskhgvrhhnvghlrdhorhhgpdhrtghpthhtoh
    epuggvvhgrrhhshhhtsehtihdrtghomhdprhgtphhtthhopegsphgrrhhrohhtsehtihdr
    tghomhdprhgtphhtthhopehhvhgvrhhkuhhilheskhgvrhhnvghlrdhorhhgpdhrtghpth
    htohepihhsvghlhiesphhosghogidrtghomhdprhgtphhtthhopehlrghurhgvnhhtrdhp
    ihhntghhrghrthesihguvggrshhonhgsohgrrhgurdgtohhmpdhrtghpthhtohephhgrnh
    hsgheskhgvrhhnvghlrdhorhhgpdhrtghpthhtohepphgrrhhthhhisggrnhdrvhgvvghr
    rghsohhorhgrnhesmhhitghrohgthhhiphdrtghomh
X-ME-Proxy: <xmx:FhKOaHAoXiF7NV692VGvUlBtEKV8Ppc7HpktTEwZStXxvUIyFnrhjw>
    <xmx:FhKOaIXbJEGFB6MyMI6SEvkY_tAqtZmQdwpF1CyYAg0cU-whIhajXA>
    <xmx:FhKOaOXdPk75wbqe7BRIpcNiWjQWCtbKZe7Hw0Dw9yRuHK1wn0wJ9A>
    <xmx:FhKOaA4w1OKh4y5m73fZ4TocrIIXqTtdAsWzkrmS8EjZZidpBDEFUw>
    <xmx:HBKOaGfprgDP-C4pCZ_BqeXWMGw4oENfGJWvHSy-BbRaGSp473jMOr6M>
Feedback-ID: i80c9496c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 2 Aug 2025 09:26:45 -0400 (EDT)
Date: Sat, 2 Aug 2025 15:26:43 +0200
From: Niklas =?utf-8?Q?S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>
To: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Devarsh Thakkar <devarsht@ti.com>, Benoit Parrot <bparrot@ti.com>, Hans Verkuil <hverkuil@kernel.org>, Mike Isely <isely@pobox.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Hans de Goede <hansg@kernel.org>, Parthiban Veerasooran <parthiban.veerasooran@microchip.com>, Christian Gromm <christian.gromm@microchip.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Alex Shi <alexs@kernel.org>, Yanteng Si <si.yanteng@linux.dev>, Dongliang Mu <dzm91@hust.edu.cn>, Jonathan Corbet <corbet@lwn.net>, Tomasz Figa <tfiga@chromium.org>, Marek Szyprowski <m.szyprowski@samsung.com>, Andy Walls <awalls@md.metrocast.net>, Michael Tretter <m.tretter@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, Bin Liu <bin.liu@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Dmitry Osipenko <digetx@gmail.com>, Thierry Reding <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>, Mirela Rabulea <mirela.rabulea@nxp.com>,	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>, Michal Simek <michal.simek@amd.com>, Ming Qian <ming.qian@nxp.com>, Zhou Peng <eagle.zhou@nxp.com>, Xavier Roumegue <xavier.roumegue@oss.nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>, Vikash Garodia <quic_vgarodia@quicinc.com>, Dikshita Agarwal <quic_dikshita@quicinc.com>, Abhinav Kumar <abhinav.kumar@linux.dev>, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Sylwester Nawrocki <sylvester.nawrocki@gmail.com>, Jernej Skrabec <jernej.skrabec@gmail.com>,	Chen-Yu Tsai <wens@csie.org>, Samuel Holland <samuel@sholland.org>, Daniel Almeida <daniel.almeida@collabora.com>, Neil Armstrong <neil.armstrong@linaro.org>, Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, Martin Blumenstingl <martin.blumenstingl@googlemail.com>, Nas Chung <nas.chung@chipsnmedia.com>, Jackson Lee <jackson.lee@chipsnmedia.com>, Minghsiu Tsai <minghsiu.tsai@mediatek.com>, Houlong Wei <houlong.wei@mediatek.com>, Andrew-CT Chen <andrew-ct.chen@mediatek.com>, Tiffany Lin <tiffany.lin@mediatek.com>, Yunfei Dong <yunfei.dong@mediatek.com>, Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, Mikhail Ulyanov <mikhail.ulyanov@cogentembedded.com>, Jacob Chen <jacob-chen@iotwrt.com>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Heiko Stuebner <heiko@sntech.de>, Detlev Casanova <detlev.casanova@collabora.com>, Krzysztof Kozlowski <krzk@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, Sylwester Nawrocki <s.nawrocki@samsung.com>, =?utf-8?Q?=C5=81ukasz?= Stelmach <l.stelmach@samsung.com>, Andrzej Pietrasiewicz <andrzejtp2010@gmail.com>, Jacek Anaszewski <jacek.anaszewski@gmail.com>, Andrzej Hajda <andrzej.hajda@intel.com>, Fabien Dessenne <fabien.dessenne@foss.st.com>, Hugues Fruchet <hugues.fruchet@foss.st.com>, Jean-Christophe Trotin <jean-christophe.trotin@foss.st.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, Nicolas Dufresne <nicolas.dufresne@collabora.com>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Steve Longerbeam <slongerbeam@gmail.com>, Maxime Ripard <mripard@kernel.org>, Paul Kocialkowski <paulk@sys-base.io>,	Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>, Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, Corentin Labbe <clabbe@baylibre.com>, Sakari Ailus <sakari.ailus@linux.intel.com>, Bingbu Cao <bingbu.cao@intel.com>,	Tianshu Qiu <tian.shu.qiu@intel.com>, Stanislaw Gruszka <stanislaw.gruszka@linux.intel.com>, linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, linux-staging@lists.linux.dev, linux-doc@vger.kernel.org, linux-arm-kernel@lists.infradead.org,	linux-mediatek@lists.infradead.org, linux-tegra@vger.kernel.org,	imx@lists.linux.dev, linux-renesas-soc@vger.kernel.org,	linux-arm-msm@vger.kernel.org, linux-samsung-soc@vger.kernel.org,	linux-sunxi@lists.linux.dev,
 linux-usb@vger.kernel.org,	linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com, mjpeg-users@lists.sourceforge.net
Subject: Re: [PATCH 17/65] media: rcar-vin: Do not set file->private_data
Message-ID: <20250802132643.GA1848717@ragnatech.se>
References: <20250802-media-private-data-v1-0-eb140ddd6a9d@ideasonboard.com>
 <20250802-media-private-data-v1-17-eb140ddd6a9d@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250802-media-private-data-v1-17-eb140ddd6a9d@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250802_062657_016115_9F272AFA 
X-CRM114-Status: GOOD (  18.09  )
X-Mailman-Approved-At: Mon, 20 Oct 2025 04:56:58 -0700
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

SGkgSmFjb3BvLAoKVGhhbmtzIGZvciB5b3VyIGVmZm9ydCB0aWR5aW5nIHRoaW5ncyB1cCEKCk9u
IDIwMjUtMDgtMDIgMTE6MjI6MzkgKzAyMDAsIEphY29wbyBNb25kaSB3cm90ZToKPiBUaGUgUi1D
YXIgVklOIGRyaXZlciBzZXRzIGZpbGUtPnByaXZhdGVfZGF0YSB0byB0aGUgZHJpdmVyLXNwZWNp
ZmljCj4gc3RydWN0dXJlLCBidXQgdGhlIGZvbGxvd2luZyBjYWxsIHRvIHY0bDJfZmhfb3Blbigp
IG92ZXJ3cml0ZXMgaXQKPiB3aXRoIGEgcG9pbnRlciB0byB0aGUganVzdCBhbGxvY2F0ZWQgdjRs
Ml9maC4KPiAKPiBSZW1vdmUgdGhlIG1pcy1sZWFkaW5nIGFzc2lnbm1lbnQgaW4gdGhlIGRyaXZl
ci4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBKYWNvcG8gTW9uZGkgPGphY29wby5tb25kaUBpZGVhc29u
Ym9hcmQuY29tPgoKUmV2aWV3ZWQtYnk6IE5pa2xhcyBTw7ZkZXJsdW5kIDxuaWtsYXMuc29kZXJs
dW5kK3JlbmVzYXNAcmFnbmF0ZWNoLnNlPgoKPiAtLS0KPiAgZHJpdmVycy9tZWRpYS9wbGF0Zm9y
bS9yZW5lc2FzL3JjYXItdmluL3JjYXItdjRsMi5jIHwgMiAtLQo+ICAxIGZpbGUgY2hhbmdlZCwg
MiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9y
ZW5lc2FzL3JjYXItdmluL3JjYXItdjRsMi5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yZW5l
c2FzL3JjYXItdmluL3JjYXItdjRsMi5jCj4gaW5kZXggNjJlZGRmM2EzNWZjOTE0MzRjYjJlNTg0
YTAxODE5MzgwYTdhNmRkOC4uMDc5ZGJhZjAxNmMyNTEzOWUyYWM4MmJlNjNkOGZjZTBkMTFmZDIw
OCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JlbmVzYXMvcmNhci12aW4v
cmNhci12NGwyLmMKPiArKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JlbmVzYXMvcmNhci12
aW4vcmNhci12NGwyLmMKPiBAQCAtNTg4LDggKzU4OCw2IEBAIHN0YXRpYyBpbnQgcnZpbl9vcGVu
KHN0cnVjdCBmaWxlICpmaWxlKQo+ICAJaWYgKHJldCkKPiAgCQlnb3RvIGVycl9wbTsKPiAgCj4g
LQlmaWxlLT5wcml2YXRlX2RhdGEgPSB2aW47Cj4gLQo+ICAJcmV0ID0gdjRsMl9maF9vcGVuKGZp
bGUpOwo+ICAJaWYgKHJldCkKPiAgCQlnb3RvIGVycl91bmxvY2s7Cj4gCj4gLS0gCj4gMi40OS4w
Cj4gCgotLSAKS2luZCBSZWdhcmRzLApOaWtsYXMgU8O2ZGVybHVuZAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

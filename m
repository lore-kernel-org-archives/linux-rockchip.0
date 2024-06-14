Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB83DC27C6E
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Jun 2024 12:54:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4swldK+2/P+ejrv5gkMWJLjtAGy8NVmaqk23jV7A8sA=; b=iuPolEHjxx5mvU
	BhSBdaKOkJNCyf00XtKFZtaupEFkRzca6G/gtCfT1G+FmesWYx59WCS0SZtN2lc35vw5zhH/8vBOC
	e4N5aoxwxCOS8oFsvhS4AF3/5FjRqjBcZoXEOgx1KNJdpkMV4kdne+pNz95FF3vod1TlBLPQr1q4o
	8GQj4m7msKgsP61C3y5/UvO7+I5kv8oRH/zk21GtdyIqaVyW1z0QPlXd2GO3FZ45oKT+iv8hNJsUk
	9kSdGteXw08Ysn6HYhCHQZVEH3FVrVXhkwgBGRQen/skov8+/sCFU9XU1VcrvNf5alGusrL7CF9rA
	rxwjboxInAa98n01CPKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI6Rb-00000002oCH-2dmg;
	Fri, 14 Jun 2024 12:54:15 +0000
Received: from flow6-smtp.messagingengine.com ([103.168.172.141])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI6RW-00000002oBI-2jod;
	Fri, 14 Jun 2024 12:54:12 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
	by mailflow.nyi.internal (Postfix) with ESMTP id 448CD20036F;
	Fri, 14 Jun 2024 08:54:07 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Fri, 14 Jun 2024 08:54:07 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ragnatech.se; h=
	cc:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm3; t=1718369647;
	 x=1718376847; bh=kzkq65OIpuCs3ZdNQe9hETg6fCuxaq6pJOhxp3W4MzU=; b=
	e/sNUWPzt41ZDlEJ0rbaHgsDAM6/Psb18uSYQwdiX0fvKqE47ANccOOWPj1FonOQ
	N3piZ2RgrxAxEjJLHD/Tjg484eOsFcuuVq5Lcr70+sIdjPfPrUAW50u5y3sYMYwt
	Trz5xVZ4smlNoFkAnnSsSDyXF5f/w9sxJ/aBOlaFkAnTbivmMXznJTEcaPN5esst
	zyZ/mgTiM4RmKRGUwkRbrpD6HKOXu8Yttwi2uS/vWjJZ9+UfahWXIda2sjBXSeur
	U0rI/xNHRV/jZzvLlSDHtRPC5Gz7cllMYqgOp6vzbyaXA0palhobbG5bGWRylVxS
	oDrqU1xuVwRQ6gq/YrP6Sg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1718369647; x=
	1718376847; bh=kzkq65OIpuCs3ZdNQe9hETg6fCuxaq6pJOhxp3W4MzU=; b=f
	kAY6ikA50Nntgl2wgpRJZ9Ew6563PdZDxBLtifDJkORDnS00MMuwwyv9AsspdeUg
	/HTOJFa71y+TfuEXFBHZaBOJPq0OyU1UrM4fJxxdMVCWfGMPFaxLdgJ2+0SjQ2/q
	ZfO6pl1ptKLd43UMIp4LQA4sXKJv2FsHukJsNNgMErq1IwjgucZOmMiZE5f3QKHB
	ZTyXQEVhj+6eVMMLiVIoEMnKsg2LYlP5j8ffsbsSXJNToBxvOCxvch6Gr1PemQdD
	fL5hHJ2eGvyzxBLi5FrMgq0SawjdEbzWq+ultnPkAFTXQWqoJBF2gvN7ScwuaDKh
	IjX5kLwAzcFwByEYbetyQ==
X-ME-Sender: <xms:aj1sZm0YAf0zlUT593horrfn2ipIf6acHvfVQfKnkssTGEoa8Om9BA>
    <xme:aj1sZpFw2wf-iUC0IxtB5DWqqMMCnfD5VwYNAWttsFCic6kzrQpS8fxftg6pDABVX
    gMRKaPwKQJK1IO1REM>
X-ME-Received: <xmr:aj1sZu6LnfoPNVf1i1OoOxnLt75iGeJAKkFzz6DKNOFoFPlHciJ07OnW_Ab6ov50yRtvLYs0artd5qzgETjo3Il5sf7KbpI>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrfeduledgheeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevuffkfhggtggugfgjsehtkeertddttdejnecuhfhrohhmpefpihhk
    lhgrshcuufpnuggvrhhluhhnugcuoehnihhklhgrshdrshhouggvrhhluhhnugesrhgrgh
    hnrghtvggthhdrshgvqeenucggtffrrghtthgvrhhnpeevteegtddvvdfhtdekgefhfeef
    heetheekkeegfeejudeiudeuleegtdehkeekteenucevlhhushhtvghrufhiiigvpedtne
    curfgrrhgrmhepmhgrihhlfhhrohhmpehnihhklhgrshdrshhouggvrhhluhhnugesrhgr
    ghhnrghtvggthhdrshgv
X-ME-Proxy: <xmx:aj1sZn3UF-l6IfHHyHpli8od0E7EfKnMJHiNOP4rjDLANiOlZP9VuA>
    <xmx:aj1sZpGLjS1pUc8dzhTkicRu4rXw6-BHkx_QDjbMnwIN4RldTwsGMQ>
    <xmx:aj1sZg9PO3n30TtGNYeLy_c9dRoyMDheA8jU9Iue3Y71RDgWVAyCcg>
    <xmx:aj1sZum0uT3bn8S6g2d5fDuzN3HqD3y4vwBY3flT8LVQkY6RHWszlw>
    <xmx:bz1sZrA4KYFKicBY-9XPwZyWW4hVJJyQ9KBkWa4ddbDjdQZY1aBRj8Ry>
Feedback-ID: i80c9496c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 14 Jun 2024 08:54:01 -0400 (EDT)
Date: Fri, 14 Jun 2024 14:53:59 +0200
From: Niklas =?utf-8?Q?S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>,
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
	Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Guillaume La Roque <glaroque@baylibre.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Vasily Khoruzhick <anarsoul@gmail.com>,	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,	Anson Huang <Anson.Huang@nxp.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Amit Kucheria <amitk@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
	Biju Das <biju.das.jz@bp.renesas.com>,	Orson Zhai <orsonzhai@gmail.com>,
	Baolin Wang <baolin.wang@linux.alibaba.com>,
	Chunyan Zhang <zhang.lyra@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Pascal Paillet <p.paillet@foss.st.com>, Keerthy <j-keerthy@ti.com>,
	Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	zhanghongchen <zhanghongchen@loongson.cn>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,	linux-pm@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org,	devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,	linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org,	linux-sunxi@lists.linux.dev,
 imx@lists.linux.dev,	linux-tegra@vger.kernel.org,
 linux-arm-msm@vger.kernel.org,	linux-renesas-soc@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	Florian Fainelli <f.fainelli@gmail.com>,
	linux-rpi-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: Re: [PATCH 13/22] dt-bindings: thermal: rcar-gen3: reference
 thermal-sensor schema
Message-ID: <20240614125359.GH382677@ragnatech.se>
References: <20240614-dt-bindings-thermal-allof-v1-0-30b25a6ae24e@linaro.org>
 <20240614-dt-bindings-thermal-allof-v1-13-30b25a6ae24e@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240614-dt-bindings-thermal-allof-v1-13-30b25a6ae24e@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240614_055411_033158_5109A5B0 
X-CRM114-Status: GOOD (  15.03  )
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

SGkgS3J6eXN6dG9mLAoKVGhhbmtzIGZvciB5b3VyIHdvcmsuCgpPbiAyMDI0LTA2LTE0IDExOjQ2
OjEyICswMjAwLCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOgo+IERldmljZSBpcyBhIHRoZXJt
YWwgc2Vuc29yIGFuZCBpdCByZXF1aXJlcyAnI3RoZXJtYWwtc2Vuc29yLWNlbGxzJywgc28KPiBy
ZWZlcmVuY2UgdGhlIHRoZXJtYWwtc2Vuc29yLnlhbWwgdG8gc2ltcGxpZnkgaXQgYW5kIGJyaW5n
IHRoZQo+IGNvbW1vbiBkZWZpbml0aW9uIG9mICcjdGhlcm1hbC1zZW5zb3ItY2VsbHMnIHByb3Bl
cnR5Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGtyenlzenRvZi5r
b3psb3dza2lAbGluYXJvLm9yZz4KClJldmlld2VkLWJ5OiBOaWtsYXMgU8O2ZGVybHVuZCA8bmlr
bGFzLnNvZGVybHVuZCtyZW5lc2FzQHJhZ25hdGVjaC5zZT4KCj4gLS0tCj4gIERvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy90aGVybWFsL3JjYXItZ2VuMy10aGVybWFsLnlhbWwgfCA1
ICsrKy0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0p
Cj4gCj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy90aGVy
bWFsL3JjYXItZ2VuMy10aGVybWFsLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvdGhlcm1hbC9yY2FyLWdlbjMtdGhlcm1hbC55YW1sCj4gaW5kZXggNmE4MWNiNmUxMWJj
Li5kOTJlODgyYzllOGQgMTAwNjQ0Cj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL3RoZXJtYWwvcmNhci1nZW4zLXRoZXJtYWwueWFtbAo+ICsrKyBiL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy90aGVybWFsL3JjYXItZ2VuMy10aGVybWFsLnlhbWwKPiBA
QCAtMTUsNiArMTUsOCBAQCBkZXNjcmlwdGlvbjoKPiAgbWFpbnRhaW5lcnM6Cj4gICAgLSBOaWts
YXMgU8O2ZGVybHVuZCA8bmlrbGFzLnNvZGVybHVuZEByYWduYXRlY2guc2U+Cj4gIAo+ICskcmVm
OiB0aGVybWFsLXNlbnNvci55YW1sIwo+ICsKPiAgcHJvcGVydGllczoKPiAgICBjb21wYXRpYmxl
Ogo+ICAgICAgZW51bToKPiBAQCAtNTcsNyArNTksNiBAQCByZXF1aXJlZDoKPiAgICAtIGNsb2Nr
cwo+ICAgIC0gcG93ZXItZG9tYWlucwo+ICAgIC0gcmVzZXRzCj4gLSAgLSAiI3RoZXJtYWwtc2Vu
c29yLWNlbGxzIgo+ICAKPiAgaWY6Cj4gICAgcHJvcGVydGllczoKPiBAQCAtOTYsNyArOTcsNyBA
QCBlbHNlOgo+ICAgICAgcmVxdWlyZWQ6Cj4gICAgICAgIC0gaW50ZXJydXB0cwo+ICAKPiAtYWRk
aXRpb25hbFByb3BlcnRpZXM6IGZhbHNlCj4gK3VuZXZhbHVhdGVkUHJvcGVydGllczogZmFsc2UK
PiAgCj4gIGV4YW1wbGVzOgo+ICAgIC0gfAo+IAo+IC0tIAo+IDIuNDMuMAo+IAoKLS0gCktpbmQg
UmVnYXJkcywKTmlrbGFzIFPDtmRlcmx1bmQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

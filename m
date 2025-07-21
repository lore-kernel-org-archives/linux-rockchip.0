Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D404CCD1A5
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Oct 2025 12:17:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wT+l6g+m9Xx0KxmOlstRdRZk+Z7GaQqt9kDMHBvjtPQ=; b=xAAegY+clIAYO9
	mLIccKY1p0BJrF2H+Z4B/AD+lEI6EB5N8AIouQRnnOgZ8JxSUedS1P0gp9oAXLduLNmoXnSGMXARh
	Fg6kGZ3KLsdRQjEpOln2CKsiVhVLl8SjhshwIHxQSXHAWcAYEJcgpHXLMbN7vy23gZA+hXxxJzMpt
	eo+R+oK/q6aQvtQtHSdh00r/Fxf3ox4u17carTC4/0k+kTkzCi51+kGfQ4y66ffhVFpzaflpGVdRL
	K1zaTWU0JxbAxR2Dbh7toNHDsIHNqYIG0DRMn4Dn098x1uQAGtnNiYngZyWeDGnaGveMGG9AiIdFb
	9vVnkj/P6gvjIunbJ7qA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAoox-0000000DMdW-4Bsu;
	Mon, 20 Oct 2025 12:17:04 +0000
Received: from galois.linutronix.de ([193.142.43.55])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udsJo-000000003mB-49gQ;
	Mon, 21 Jul 2025 15:20:46 +0000
From: Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1753111241;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/9FzCqmcyJh+8Ydz6tHP0relc2+nn3FdzXGKT9u9tC0=;
	b=dSUpea09yTKvaap84BHTchrX/mvRMJUc48+kcHHkQxoYAlMq1o9H91n0rEyouWUQZds+Ls
	rJWeBKpdVh+r6TVg9PcQPcuj0sZz+kTaDMsLK4KCjaOjlWQYgv4f4R/F/uiKtEsxW6IPu8
	BZs7DYrF+ZLrdRacfIavNLPjVeum/qGXpUL0kBgehfj92Ae5GBzPEau0pmYMGKZYiMUTmA
	WBzzEbBwXCWSUfsni3ElVs+D8g26iSUsJ/++lpGRihfVxdZY1aFI35kcEgLVtGeA+2qJTV
	JIM9YCZ9KB6Tup50FIIXZa38Dsi7uKFBiXUKjNhkEMalmJWrVmGFGCj4lmFI7A==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1753111241;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/9FzCqmcyJh+8Ydz6tHP0relc2+nn3FdzXGKT9u9tC0=;
	b=Q0GGv108K0Wx0ZlG5G8V8V0Na3jr3eUG3hFHWm0zuYoWeHBjtZZPu1Oy3mIu6+M+ntdxcb
	YsPYlYqxSgIstBDQ==
To: panchuang <panchuang@vivo.com>, Miquel Raynal <miquel.raynal@bootlin.com>
Cc: =?utf-8?B?5p2O5oms6Z+s?= <frank.li@vivo.com>, Uwe =?utf-8?Q?Kleine-K?=
 =?utf-8?Q?=C3=B6nig?=
 <u.kleine-koenig@pengutronix.de>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui
 <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>, Markus Mayer
 <mmayer@broadcom.com>, Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>, Florian Fainelli
 <florian.fainelli@broadcom.com>, Shawn Guo <shawnguo@kernel.org>, Sascha
 Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team
 <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, zhanghongchen
 <zhanghongchen@loongson.cn>, Yinbo Zhu <zhuyinbo@loongson.cn>, Amit
 Kucheria <amitk@kernel.org>, Thara Gopinath <thara.gopinath@gmail.com>,
 Niklas =?utf-8?Q?S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>, Geert
 Uytterhoeven <geert+renesas@glider.be>, Magnus Damm
 <magnus.damm@gmail.com>, Heiko Stuebner <heiko@sntech.de>, Bartlomiej
 Zolnierkiewicz <bzolnier@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@foss.st.com>, Vasily Khoruzhick <anarsoul@gmail.com>,
 Yangtao Li <tiny.windzz@gmail.com>, Chen-Yu Tsai <wens@csie.org>, Jernej
 Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>,
 Thierry Reding <thierry.reding@gmail.com>, Jonathan Hunter
 <jonathanh@nvidia.com>, Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
 <angelogioacchino.delregno@collabora.com>, Srinivas Pandruvada
 <srinivas.pandruvada@linux.intel.com>, Greg KH
 <gregkh@linuxfoundation.org>, Peter Zijlstra <peterz@infradead.org>,
 =?utf-8?Q?N=C3=ADcolas_F=2E_R=2E_A=2E_Prado?= <nfraprado@collabora.com>,
 Conor Dooley
 <conor.dooley@microchip.com>, Julien Panis <jpanis@baylibre.com>, Arnd
 Bergmann <arnd@arndb.de>, Uwe =?utf-8?Q?Kleine-K=C3=B6nig?=
 <u.kleine-koenig@baylibre.com>,
 Colin Ian King <colin.i.king@gmail.com>, Raphael Gallais-Pou
 <rgallaispou@gmail.com>, Patrice Chotard <patrice.chotard@foss.st.com>,
 Jonathan Cameron <jonathan.cameron@huawei.com>, "Jiri Slaby (SUSE)"
 <jirislaby@kernel.org>, Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Andrew Morton <akpm@linux-foundation.org>, Costa Shulyupin
 <costa.shul@redhat.com>, Yury
 Norov <yury.norov@gmail.com>, Cheng-Yang Chou <yphbchou0911@gmail.com>,
 Caleb Sander Mateos <csander@purestorage.com>, "linux-pm@vger.kernel.org"
 <linux-pm@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "imx@lists.linux.dev"
 <imx@lists.linux.dev>, "linux-arm-msm@vger.kernel.org"
 <linux-arm-msm@vger.kernel.org>, "linux-renesas-soc@vger.kernel.org"
 <linux-renesas-soc@vger.kernel.org>, "linux-rockchip@lists.infradead.org"
 <linux-rockchip@lists.infradead.org>, "linux-samsung-soc@vger.kernel.org"
 <linux-samsung-soc@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>, "linux-sunxi@lists.linux.dev"
 <linux-sunxi@lists.linux.dev>, "linux-tegra@vger.kernel.org"
 <linux-tegra@vger.kernel.org>, "linux-mediatek@lists.infradead.org"
 <linux-mediatek@lists.infradead.org>
Subject: Re: =?utf-8?B?5Zue5aSNOg==?= [PATCH v6 01/24] genirq/devres: Add
 devm_request_threaded_irq_probe() and devm_request_irq_probe()
In-Reply-To: <draft-87ikjnvqfx.ffs@tglx>
References: <draft-87ikjnvqfx.ffs@tglx>
Date: Mon, 21 Jul 2025 17:20:39 +0200
Message-ID: <87qzy9tvso.ffs@tglx>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250721_082045_169405_EB13E51A 
X-CRM114-Status: GOOD (  14.08  )
X-Mailman-Approved-At: Mon, 20 Oct 2025 05:16:55 -0700
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

T24gU2F0LCBKdWwgMTkgMjAyNSBhdCAyMzowOCwgVGhvbWFzIEdsZWl4bmVyIHdyb3RlOgo+IE9u
IFdlZCwgSnVsIDA5IDIwMjUgYXQgMTc6MTMsIHBhbmNodWFuZ0B2aXZvLmNvbSB3cm90ZToKPj4g
SGkgdGdseCBhbmQgTWlxdcOobCwgSnVzdCBhIGdlbnRsZSBwaW5nIG9uIHRoaXMgcGF0Y2hzZXQu
IEkgdW5kZXJzdGFuZCAKPj4geW91J3JlIGxpa2VseSBidXN5IHdpdGggbWFueSBvdGhlciB0YXNr
cywgYnV0IGFueSBmZWVkYmFjayBvciBndWlkYW5jZSAKPj4gb24gaG93IHRvIHByb2NlZWQgd291
bGQgYmUgZ3JlYXRseSBhcHByZWNpYXRlZC4gQXMgZGlzY3Vzc2VkIGluIHRoZSAKPj4gcHJldmlv
dXMgdGhyZWFkLCB0aGVyZSB3YXMgc29tZSB1bmNlcnRhaW50eSBhYm91dCB3aGV0aGVyIHdlIHNo
b3VsZCAKPj4gZGlyZWN0bHkgaW50ZWdyYXRlIGRldl9lcnJfcHJvYmUoKSBpbnRvIGRldm1fcmVx
dWVzdF90aHJlYWRlZF9pcnEoKSwgb3IgCj4+IGlmIGl0J3MgYmV0dGVyIHRvIGNyZWF0ZSBhIHdy
YXBwZXIgZnVuY3Rpb24uIFRoYW5rcyBmb3IgeW91ciB0aW1lISAKPj4gVGhhbmtzLCBQYW5jaHVh
bmcKCkZvciBzaW1wbGljaXR5IHNha2UganVzdCByZW5hbWUgdGhlIGV4aXN0aW5nIGZ1bmN0aW9u
cwpkZXZtX3JlcXVlc3RfdGhyZWFkZWRfaXJxKCkgYW5kIGRldm1fcmVxdWVzdF9hbnlfY29udGV4
dF9pcnEoKSB0bwpfX2Rldm1fcmVxdWVzdF90aHJlYWRlZF9pcnEoKSBhbmQgX19kZXZtX3JlcXVl
c3RfYW55X2NvbnRleHRfaXJxKCkuCgpUaGVuIGNyZWF0ZSBuZXcgZnVuY3Rpb25zIGZvciB0aGUg
QVBJLCB3aGljaAoKICAgLSBpbnZva2UgdGhlIHVuZGVyc2NvcmUgdmFyaWFudHMKICAgLSBhbmQg
b24gZXJyb3IgaW52b2tlIGRldl9lcnJfcHJvYmUoKSBzaW1pbGFyIHRvIHdoYXQgSSBzdWdnZXN0
ZWQgaW4KICAgICBteSByZXBseSBpbiB0aGlzIHRocmVhZC4KCkluIHRoZSByYXJlIGNhc2Ugb2Yg
ZmFpbHVyZSwgdGhpcyB3aWxsIHByaW50IGVycm9yIG1lc3NhZ2VzIGZvciB0aGUKYWZmZWN0ZWQg
ZHJpdmVycyBib3RoIGluIHRoZSBjb3JlIGFuZCBhdCB0aGUgY2FsbHNpdGUsIGJ1dCB0aGF0J3Mg
bm90CnRoZSBlbmQgb2YgdGhlIHdvcmxkLgoKVGhlbiBnbyBhbmQgcmVtb3ZlIHRoZSByYW5kb20g
cHJpbnRrcyBmcm9tIHRoZSBkcml2ZXJzLCBvbmNlIHRoZSBjb3JlCmNoYW5nZSBoYXMgaGl0IHVw
c3RyZWFtLgoKVGhhbmtzLAoKICAgICAgICB0Z2x4CgoKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

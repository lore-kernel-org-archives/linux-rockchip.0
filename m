Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59CE0CCD193
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Oct 2025 11:57:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1ZRkMR7fWWlBDvH08qyDcqPVMBpjWHupX7j4mQqBR4c=; b=3YnyZ7ap3YdLzU
	YgaAnuBJ0qOe6dOqe98Oy2NB13h9udL5H3nuoe+I6NDQwwimD2sCMdHStdzWtMB53gZJUVV4am8/X
	LYnTH5aThxHroC57OrMO/ZvnNoV1mTYP/BVWvocaMQGAYQ+/gSlSoBovMWV/6wptgNl+8vJlIxRsL
	kiXfAoTh++tGrPmMPrFAEqytgv5p+/qeiF1JQhmwp5sOVzhlegXcWL6bgEJ39/dVRp3ZtvNCOsT9m
	lrWql9hYdicbdKL4+2niqmgJcqSPxkhcf0+BxjkgsQnvgntIPNZZiKHYsq3nRc5j6dAY/CC3jyf3r
	Jc7UjaSOK15vDP2TC6ZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAoVr-0000000D9LR-3fhL;
	Mon, 20 Oct 2025 11:57:19 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTis0-00000003BPb-3unj;
	Mon, 23 Jun 2025 15:14:06 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id EC94944288;
	Mon, 23 Jun 2025 15:13:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1750691640;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=45lmqAUYpUykmyRNsOjFpkel3OPLmML527QXdh0o9zU=;
	b=Dk4DRySeiEHJkC5ucZz7LZZ5UhTo8qfaM+NNpNfIAmI8eb71jZ1iyZigWxGJIVUh/eddQP
	8Xl1XY+V1ya18+kaQTE+VfNrEVges9y6YeLXaGu/C3rRQVwdpYLIzr+sV2HHzE/5UmgjzB
	/+xepzhCWX1cw6Sjteg1eK+SyfTf1nG848+wARLHC34oEtB0GGeHyHyWCzEjD96U8cz4ZV
	Q9lHqj9ZKe3ogELbhBMi//RQzmrzPpFKAf5qiAiUT/AZUHomVPjE09J5Bf3w9srIdSfWcY
	Yt4Oua24qVH3rU576TSTUWjL+lZ5mN7oW47CVCJAgdJIvxqw3/Z3LAIlRF5uqQ==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Pan Chuang <panchuang@vivo.com>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>,  Daniel Lezcano
 <daniel.lezcano@linaro.org>,  Zhang Rui <rui.zhang@intel.com>,  Lukasz
 Luba <lukasz.luba@arm.com>,  Markus Mayer <mmayer@broadcom.com>,  Broadcom
 internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
  Florian Fainelli <florian.fainelli@broadcom.com>,  Shawn Guo
 <shawnguo@kernel.org>,  Sascha Hauer <s.hauer@pengutronix.de>,
  Pengutronix Kernel Team <kernel@pengutronix.de>,  Fabio Estevam
 <festevam@gmail.com>,  zhanghongchen <zhanghongchen@loongson.cn>,  Yinbo
 Zhu <zhuyinbo@loongson.cn>,  Amit Kucheria <amitk@kernel.org>,  Thara
 Gopinath <thara.gopinath@gmail.com>,  Niklas =?utf-8?Q?S=C3=B6derlund?=
 <niklas.soderlund@ragnatech.se>,  Geert Uytterhoeven
 <geert+renesas@glider.be>,  Magnus Damm <magnus.damm@gmail.com>,  Heiko
 Stuebner <heiko@sntech.de>,  Bartlomiej Zolnierkiewicz
 <bzolnier@gmail.com>,  Krzysztof Kozlowski <krzk@kernel.org>,  Alim Akhtar
 <alim.akhtar@samsung.com>,  Maxime Coquelin <mcoquelin.stm32@gmail.com>,
  Alexandre Torgue <alexandre.torgue@foss.st.com>,  Vasily Khoruzhick
 <anarsoul@gmail.com>,  Yangtao Li <tiny.windzz@gmail.com>,  Chen-Yu Tsai
 <wens@csie.org>,  Jernej Skrabec <jernej.skrabec@gmail.com>,  Samuel
 Holland <samuel@sholland.org>,  Thierry Reding <thierry.reding@gmail.com>,
  Jonathan Hunter <jonathanh@nvidia.com>,  Kunihiko Hayashi
 <hayashi.kunihiko@socionext.com>,  Masami Hiramatsu <mhiramat@kernel.org>,
  Thomas Gleixner <tglx@linutronix.de>,  Matthias Brugger
 <matthias.bgg@gmail.com>,  AngeloGioacchino Del Regno
 <angelogioacchino.delregno@collabora.com>,  Srinivas Pandruvada
 <srinivas.pandruvada@linux.intel.com>,  Greg KH
 <gregkh@linuxfoundation.org>,  Peter Zijlstra <peterz@infradead.org>,
  =?utf-8?Q?N=C3=ADcolas?= F. R. A. Prado <nfraprado@collabora.com>,  Conor
 Dooley
 <conor.dooley@microchip.com>,  Julien Panis <jpanis@baylibre.com>,  Arnd
 Bergmann <arnd@arndb.de>,  Uwe =?utf-8?Q?Kleine-K=C3=B6nig?=
 <u.kleine-koenig@baylibre.com>,  Colin Ian King <colin.i.king@gmail.com>,
  Raphael Gallais-Pou <rgallaispou@gmail.com>,  Patrice Chotard
 <patrice.chotard@foss.st.com>,  Jonathan Cameron
 <Jonathan.Cameron@huawei.com>,  "Jiri Slaby (SUSE)"
 <jirislaby@kernel.org>,  Sebastian Andrzej Siewior
 <bigeasy@linutronix.de>,  Andrew Morton <akpm@linux-foundation.org>,
  Costa Shulyupin <costa.shul@redhat.com>,  Yury Norov
 <yury.norov@gmail.com>,  Cheng-Yang Chou <yphbchou0911@gmail.com>,  Caleb
 Sander Mateos <csander@purestorage.com>,  linux-pm@vger.kernel.org,
  linux-kernel@vger.kernel.org,  linux-arm-kernel@lists.infradead.org,
  imx@lists.linux.dev,  linux-arm-msm@vger.kernel.org,
  linux-renesas-soc@vger.kernel.org,  linux-rockchip@lists.infradead.org,
  linux-samsung-soc@vger.kernel.org,
  linux-stm32@st-md-mailman.stormreply.com,  linux-sunxi@lists.linux.dev,
  linux-tegra@vger.kernel.org,  linux-mediatek@lists.infradead.org,
  Yangtao Li <frank.li@vivo.com>,  Uwe =?utf-8?Q?Kleine-K=C3=B6nig?=
 <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH v6 01/24] genirq/devres: Add
 devm_request_threaded_irq_probe() and devm_request_irq_probe()
In-Reply-To: <20250623123054.472216-2-panchuang@vivo.com> (Pan Chuang's
	message of "Mon, 23 Jun 2025 20:30:34 +0800")
References: <20250623123054.472216-1-panchuang@vivo.com>
	<20250623123054.472216-2-panchuang@vivo.com>
User-Agent: mu4e 1.12.7; emacs 30.1
Date: Mon, 23 Jun 2025 17:13:54 +0200
Message-ID: <87a55ywkwd.fsf@bootlin.com>
MIME-Version: 1.0
X-GND-State: clean
X-GND-Score: -100
X-GND-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtddvgddujeefhecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfitefpfffkpdcuggftfghnshhusghstghrihgsvgenuceurghilhhouhhtmecufedtudenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhephffvvefujghffgffkfggtgfgsehtqhertddtreejnecuhfhrohhmpefoihhquhgvlhcutfgrhihnrghluceomhhiqhhuvghlrdhrrgihnhgrlhessghoohhtlhhinhdrtghomheqnecuggftrfgrthhtvghrnhepffeghfejtdefieeguddukedujeektdeihfelleeuieeuveehkedvleduheeivdefnecukfhppeeltddrkeelrdduieefrdduvdejnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepledtrdekledrudeifedruddvjedphhgvlhhopehlohgtrghlhhhoshhtpdhmrghilhhfrhhomhepmhhiqhhuvghlrdhrrgihnhgrlhessghoohhtlhhinhdrtghomhdpnhgspghrtghpthhtohepjedtpdhrtghpthhtohepphgrnhgthhhurghnghesvhhivhhordgtohhmpdhrtghpthhtoheprhgrfhgrvghlsehkvghrnhgvlhdrohhrghdprhgtphhtthhopegurghnihgvlhdrlhgviigtrghnoheslhhinhgrrhhordhorhhgpdhrtghpthhtoheprhhuihdriihhrghnghesihhnthgvlhdrtghomhdprhgtphhtthhopehluhhkrghsiidrlhhusggrsegrrhhmrdgtohhmpdhrtghpthhtohepmhhmrgihv
 ghrsegsrhhorggutghomhdrtghomhdprhgtphhtthhopegstghmqdhkvghrnhgvlhdqfhgvvggusggrtghkqdhlihhsthessghrohgruggtohhmrdgtohhmpdhrtghpthhtohepfhhlohhrihgrnhdrfhgrihhnvghllhhisegsrhhorggutghomhdrtghomh
X-GND-Sasl: miquel.raynal@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250623_081405_268350_0EA41A34 
X-CRM114-Status: GOOD (  15.32  )
X-Mailman-Approved-At: Mon, 20 Oct 2025 04:56:05 -0700
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

SGkgUGFuLAoKT24gMjMvMDYvMjAyNSBhdCAyMDozMDozNCArMDgsIFBhbiBDaHVhbmcgPHBhbmNo
dWFuZ0B2aXZvLmNvbT4gd3JvdGU6Cgo+IEZyb206IFlhbmd0YW8gTGkgPGZyYW5rLmxpQHZpdm8u
Y29tPgo+Cj4gVGhlcmUgYXJlIG1vcmUgdGhhbiA3MDAgY2FsbHMgdG8gZGV2bV9yZXF1ZXN0X3Ro
cmVhZGVkX2lycSBtZXRob2QgYW5kCj4gbW9yZSB0aGFuIDEwMDAgY2FsbHMgdG8gZGV2bV9yZXF1
ZXN0X2lycSBtZXRob2QuIE1vc3QgZHJpdmVycyBvbmx5Cj4gcmVxdWVzdCBvbmUgaW50ZXJydXB0
IHJlc291cmNlLCBhbmQgdGhlc2UgZXJyb3IgbWVzc2FnZXMgYXJlIGJhc2ljYWxseQo+IHRoZSBz
YW1lLiBJZiBlcnJvciBtZXNzYWdlcyBhcmUgcHJpbnRlZCBldmVyeXdoZXJlLCBtb3JlIHRoYW4g
MjAwMCBsaW5lcwo+IG9mIGNvZGUgY2FuIGJlIHNhdmVkIGJ5IHJlbW92aW5nIHRoZSBtc2cgaW4g
dGhlIGRyaXZlci4KClsuLi5dCgo+IFNvIGFkZCBkZXZtX3JlcXVlc3RfdGhyZWFkZWRfaXJxX3By
b2JlKCkgYW5kIGRldm1fcmVxdWVzdF9pcnFfcHJvYmUoKSwKPiB3aGljaCBlbnN1cmUgdGhhdCBh
bGwgZXJyb3IgaGFuZGxpbmcgYnJhbmNoZXMgcHJpbnQgZXJyb3IgaW5mb3JtYXRpb24uCj4gSW4g
dGhpcyB3YXksIHdoZW4gdGhpcyBmdW5jdGlvbiBmYWlscywgdGhlIHVwcGVyLWxheWVyIGZ1bmN0
aW9ucyBjYW4KPiBkaXJlY3RseSByZXR1cm4gYW4gZXJyb3IgY29kZSB3aXRob3V0IG1pc3Npbmcg
ZGVidWdnaW5nIGluZm9ybWF0aW9uLgo+IE90aGVyd2lzZSwgdGhlIGVycm9yIG1lc3NhZ2Ugd2ls
bCBiZSBwcmludGVkIHJlZHVuZGFudGx5IG9yIG1pc3NpbmcuCgpXaGlsZSBJIHVuZGVyc3RhbmQg
dGhlIGdvYWwgYW5kIGFkaGVyZSB0byBpdCwgbWF5IEkgY2hhbGxlbmdlIHRoZSB1c2Ugb2YKYSB5
ZXQgYW5vdGhlciBpbnRlcm1lZGlhdGUgZnVuY3Rpb24gdGhhdCA5OSUgb2YgdGhlIHVzZXJzIHdp
bGwgYW55d2F5CnVzZT8gV291bGRuJ3QgaXQgYmUgbW9yZSBzdHJhaWdodGZvcndhcmQgdG8ganVz
dCBhZGQgdGhlIGVycm9yIG1lc3NhZ2UKaW4gdGhlIGV4aXN0aW5nIGZ1bmN0aW9ucyBkaXJlY3Rs
eT8gSWYgd2UgcmVhbGx5IHdhbnQgYW4gYWx0ZXJuYXRpdmUsIGl0Cm1heSBiZSBjcmVhdGVkIGFu
ZCBjYWxsZWQgaW4gdGhlIGZldyBwbGFjZXMgd2hlcmUgYSBkZXZfZXJyX3Byb2JlKCkKbWlnaHQg
bm90IGJlIHJlbGV2YW50LgoKVGhhbmtzLApNaXF1w6hsCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

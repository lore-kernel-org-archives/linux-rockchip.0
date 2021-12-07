Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0017C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Dec 2021 08:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-reply-to:
	Date:Subject:Cc:To:From:References:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8tSerkUuOZAj6a5Y+Xm9mMMyUOF4rOyTmvTqSBZAM2o=; b=xYtvRZIIo1fqXv
	/IXgC8V3yi7R3wZNzSlr/Kpc/OFja6aFVHuTcWAAUAMW7nMT7cs4YbOwiotkyZFN6wl8k/zXg44gs
	Vkh4qL0nLTWzRxhZwJvrhAJmIvNN4676nUPbf8SxVly7rNeXiohA0lasVkXHzYer96RnEfVUrBTwl
	ZToNtHrotdCuNA8DXNYgQax4Y43JSciz/m6mgKIu+EJVxX+RFjctINrbw9NzxWq8V8ndF9HfxhB0x
	gJGNir8S5JhI0YrqmziWSq931OIgJ8ByTgZviPe7SXQWWhl6/DKbkWGzQt5jNKas1Wu9KZOVNto7B
	oRBs1YbNPaeCisVkka/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1muVUv-007NmX-LO; Tue, 07 Dec 2021 08:06:49 +0000
Received: from bzq-84-110-109-230.red.bezeqint.net ([84.110.109.230]
 helo=mx.tkos.co.il)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1muVUb-007Ngk-Pc; Tue, 07 Dec 2021 08:06:31 +0000
Received: from tarshish (unknown [10.0.8.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.tkos.co.il (Postfix) with ESMTPS id E1A8A440855;
 Tue,  7 Dec 2021 10:06:08 +0200 (IST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=tkos.co.il;
 s=default; t=1638864370;
 bh=esweGkmM1TaFxAsLsotS7LKsL2FjaGbpG3oTnnMt2EY=;
 h=References:From:To:Cc:Subject:Date:In-reply-to:From;
 b=GcPgxTp47EJex9304Cwrh1a93q3dHMKWiHIjz8ZTn4NegGPU69yqh7Su5vmg5fO+P
 Kh7nqdgkBIpI3Rf9UzzHq/x7N7cBaA/7R0ZE12PQaFHPd0XT3nfMmWwSoc6YNW6HJ/
 sY7u4RIykgN0trrfVUJdtS/HSKo97dqJciT8yZxSr0wjGT9g5g4otk+PHV0JYm9p9k
 P9YzQWW8WWhUeig+fPqnm1HPGtUlIZxk5urZr4h4aKbE+4xA9oZm9Je0d93bTim8GN
 1As0GD0fgMDT/yrRdfvnw9AkNJRlBW1Fj0uJad+Crzam3J4mee0elu9epTaexUTQ7t
 Pqt45gjbFAkpw==
References: <20211202210839.79140-1-andriy.shevchenko@linux.intel.com>
 <20211207080325.6hfokrrcs45iucx6@pengutronix.de>
User-agent: mu4e 1.6.10; emacs 27.1
From: Baruch Siach <baruch@tkos.co.il>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Marc Zyngier
 <maz@kernel.org>, Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
 Sergio Paracuellos <sergio.paracuellos@gmail.com>, Chunyan Zhang
 <chunyan.zhang@unisoc.com>, Bartosz Golaszewski <brgl@bgdev.pl>, Tony
 Lindgren <tony@atomide.com>, Nicolas Saenz Julienne <nsaenz@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, Jianqun Xu
 <jay.xu@rock-chips.com>, Alexandru Ardelean <aardelean@deviqon.com>,
 Thierry Reding <treding@nvidia.com>, linux-gpio@vger.kernel.org,
 linux-kernel@vger.kernel.org, patches@opensource.cirrus.com,
 bcm-kernel-feedback-list@broadcom.com, linux-power@fi.rohmeurope.com,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-pwm@vger.kernel.org, linux-omap@vger.kernel.org,
 linux-unisoc@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-tegra@vger.kernel.org, Ray
 Jui <rjui@broadcom.com>, Florian Fainelli <f.fainelli@gmail.com>, Scott
 Branden <sbranden@broadcom.com>, Gregory Fong <gregory.0xf0@gmail.com>,
 Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>, Keerthy
 <j-keerthy@ti.com>, Orson Zhai <orsonzhai@gmail.com>, Baolin Wang
 <baolin.wang7@gmail.com>, Chunyan Zhang <zhang.lyra@gmail.com>, Vladimir
 Zapolskiy <vz@mleia.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones
 <lee.jones@linaro.org>, Grygorii Strashko <grygorii.strashko@ti.com>,
 Santosh Shilimkar <ssantosh@kernel.org>, Kevin Hilman
 <khilman@kernel.org>, Robert Jarzmik <robert.jarzmik@free.fr>, Manivannan
 Sadhasivam <mani@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Ludovic
 Desroches <ludovic.desroches@microchip.com>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@foss.st.com>, Jonathan Hunter <jonathanh@nvidia.com>
Subject: Re: [PATCH v1 1/3] gpio: Get rid of duplicate of_node assignment in
 the drivers
Date: Tue, 07 Dec 2021 10:05:08 +0200
In-reply-to: <20211207080325.6hfokrrcs45iucx6@pengutronix.de>
Message-ID: <87ilw0on3z.fsf@tarshish>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211207_000630_052088_811CB3EA 
X-CRM114-Status: UNSURE (   8.95  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

SGkgVXdlLAoKT24gVHVlLCBEZWMgMDcgMjAyMSwgVXdlIEtsZWluZS1Lw7ZuaWcgd3JvdGU6Cj4g
SGVsbG8gQW5keSwKPgo+IHlvdSBDYzogbGludXgtcHdtIGFuZCB0aGUgcHdtIG1haW50YWluZXJz
IGluIHRoaXMgc2VyaWVzLiBJIGRvbid0IHNwb3QKPiBhbnl0aGluZyBwd20gc3BlY2lmaWMgaGVy
ZSAoYXBhcnQgZnJvbSB0b3VjaGluZyBncGlvLW12ZWJ1IHdoaWNoIGFsc28KPiBjb250YWlucyBh
IFBXTSBkcml2ZXIpLiBEbyBJIG1pc3Mgc29tZXRoaW5nPwoKVGhhdCdzIHByb2JhYmx5IGJlY2F1
c2Ugb2YgZHJpdmVycy9ncGlvL2dwaW8tbXZlYnUuYyB0aGF0IGFwcGVhcnMgaW4gdGhlCk1BSU5U
QUlORVJTIFBXTSBlbnRyeS4KCmJhcnVjaAoKLS0gCiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgfi4gLn4gICBUayBPcGVuIFN5c3RlbXMKPX0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS1vb08tLVUtLU9vby0t
LS0tLS0tLS0tLXs9CiAgIC0gYmFydWNoQHRrb3MuY28uaWwgLSB0ZWw6ICs5NzIuNTIuMzY4LjQ2
NTYsIGh0dHA6Ly93d3cudGtvcy5jby5pbCAtCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

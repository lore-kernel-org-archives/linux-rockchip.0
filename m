Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1BB21CA0EFF
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Aug 2025 08:11:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5NAlbO1+BO/zYD9lj/Hu2w0RBC7e/mmkdGq5KUl08tE=; b=P/Q5CkrhR3zr/U
	FAflvtgwvzuaFUQxMCrmXpi7a7qn1U7dt4wm+qVqC+8SGukm24mvDJ3AadMoQcM6oeuMPpzPWz9uW
	CEJLLRvYBIPe44wS4g+OhebSYg5ixm4aT1FQwTz7gODWz6Y5whl8vmcl3Z1gHpR+kFS8JRhPObLvE
	0qeXQC/crU83HO2cbKQT8w+I0PvjDoWTdGK1IJjQPrrez3WLfAMQ6TAzusxqPmg3mSh7yxdqliy2d
	/vQy6ym997VRp9hC1sBnrc3QAZHw9p87mMCHU95oOw2YoN6Z6iHiberUEuq8dXVPuycAg7C1WVdXP
	5vMOcH1/QM+x1m0+FuAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urBFC-0000000EbaU-0SMf;
	Wed, 27 Aug 2025 08:10:58 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urBBZ-0000000Ean3-2vEU;
	Wed, 27 Aug 2025 08:07:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=nHn0/2tcQ6NKxDIG6MXiOpQl/j8R5Yoanaeftq4zEbE=; b=T/uc1iuwREl3p2Up1EWM5+oe68
	nldl/mbYc0teD92fvAnzGyVy0JZJGVYFckKN5OqkNYQQLUJ+BtHx/dN7nmNbb9C7vpUY3xszmwVbc
	eKgrEezLHIgifMbwokBsFwQAV4c6H1UUvYPN5tftonTmZ6D8ove5+MGysHqXXu1akaK+9w9J+hPI/
	rheYlybVTeMEthDYVfNkaDHXSX2KEiHp2h5KJzOSWZWa5FDbi1GmwgAdZTATFFq0CbrUJPykaEL1F
	vpWgsSni8vZdMXnSXaAAnaWgBw6sHHLfxTYn5poDjv8v4rfAfOhlvkQaijXXCdtHNINY37qu6HA2O
	KkTpm+lQ==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urBBW-00000002Nwc-2Gin;
	Wed, 27 Aug 2025 08:07:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=nHn0/2tcQ6NKxDIG6MXiOpQl/j8R5Yoanaeftq4zEbE=; b=lpvZbN1vFE1catKAjtPmzOO25D
	zQe3EYADcLN+u+VAb4HEmMxBKY5SafJaDYo/N6TNMFuP2oZom+6QyC/AcQGjJZbELGVRCEqd3EteB
	Fb13EBgEXMvzyuuYrFYrMfeYHRByJKSbUcvu3E66udd77HpJJotr8ch5V7KlYoSDEMMaTt98Gcnvd
	Wa3nuIX7IzNZjVImMGkSlLN4d6L623lauFYlOX5VWScp13JJTS9jUan+msw/NJB5G0gmicI7Kd3F9
	PhjF5C7+pBOZ2eafUWP7tC5PQRvDdbAh3Cp2DSoY0CmCakj8e/QkSktaIWTntJgsOAU9qJ6LDboUR
	m1ZKL4hQ==;
Received: from [213.244.170.152] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1urBB2-0000Hv-Tf; Wed, 27 Aug 2025 10:06:40 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Yury Norov <yury.norov@gmail.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Jaehoon Chung <jh80.chung@samsung.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Shreeya Patel <shreeya.patel@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Sandy Huang <hjc@rock-chips.com>,
 Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Shawn Lin <shawn.lin@rock-chips.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Krzysztof =?UTF-8?B?V2lsY3p5xYRza2k=?= <kwilczynski@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Chanwoo Choi <cw00.choi@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Qin Jian <qinjian@cqplus1.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <nick.desaulniers+lkml@gmail.com>,
 Bill Wendling <morbo@google.com>, Justin Stitt <justinstitt@google.com>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Subject: Re: [PATCH v3 19/20] clk: sp7021: switch to FIELD_PREP_WM16 macro
Date: Wed, 27 Aug 2025 10:06:39 +0200
Message-ID: <5154190.bB369e8A3T@phil>
In-Reply-To: <20250825-byeword-update-v3-19-947b841cdb29@collabora.com>
References: <20250825-byeword-update-v3-0-947b841cdb29@collabora.com>
 <20250825-byeword-update-v3-19-947b841cdb29@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250827_090710_823130_E1FE9F1D 
X-CRM114-Status: GOOD (  12.47  )
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
Cc: linux-pm@vger.kernel.org, netdev@vger.kernel.org, llvm@lists.linux.dev, linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-sound@vger.kernel.org, linux-pci@vger.kernel.org, linux-phy@lists.infradead.org, kernel@collabora.com, linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

QW0gTW9udGFnLCAyNS4gQXVndXN0IDIwMjUsIDEwOjI4OjM5IE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgTmljb2xhcyBGcmF0dGFyb2xpOgo+IFRoZSBzcDcwMjEgY2xvY2sg
ZHJpdmVyIGhhcyBpdHMgb3duIHNoaWZ0ZWQgaGlnaCB3b3JkIG1hc2sgbWFjcm8sCj4gc2ltaWxh
ciB0byB0aGUgb25lcyBtYW55IFJvY2tjaGlwIGRyaXZlcnMgaGF2ZS4KPiAKPiBSZW1vdmUgaXQs
IGFuZCByZXBsYWNlIGluc3RhbmNlcyBvZiBpdCB3aXRoIGh3X2JpdGZpZWxkLmgncwo+IEZJRUxE
X1BSRVBfV00xNiBtYWNybywgd2hpY2ggZG9lcyB0aGUgc2FtZSB0aGluZyBleGNlcHQgaW4gYSBj
b21tb24KPiBtYWNybyB0aGF0IGFsc28gZG9lcyBjb21waWxlLXRpbWUgZXJyb3IgY2hlY2tpbmcu
Cj4gCj4gVGhpcyB3YXMgY29tcGlsZS10ZXN0ZWQgd2l0aCAzMi1iaXQgQVJNIHdpdGggQ2xhbmcs
IG5vIHJ1bnRpbWUgdGVzdHMKPiB3ZXJlIHBlcmZvcm1lZCBhcyBJIGxhY2sgdGhlIGhhcmR3YXJl
LiBIb3dldmVyLCBJIHZlcmlmaWVkIHRoYXQgZml4Cj4gY29tbWl0IDVjNjY3ZDVhNWEzZSAoImNs
azogc3A3MDIxOiBBZGp1c3Qgd2lkdGggb2YgX20gaW4gSFdNX0ZJRUxEX1BSRVAoKSIpCj4gaXMg
bm90IHJlZ3Jlc3NlZC4gTm8gd2FybmluZyBpcyBwcm9kdWNlZC4KPiAKPiBTaWduZWQtb2ZmLWJ5
OiBOaWNvbGFzIEZyYXR0YXJvbGkgPG5pY29sYXMuZnJhdHRhcm9saUBjb2xsYWJvcmEuY29tPgoK
V2hpbGUgSSBoYXZlIG5vIGNvbm5lY3Rpb24gd2l0aCB0aGF0IHNwZWNpZmljIHBpZWNlIG9mIGhh
cmR3YXJlLAp0aGUgY2hhbmdlIGl0c2VsZiBsb29rcyBjb3JyZWN0LCBzbwoKUmV2aWV3ZWQtYnk6
IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+CgoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

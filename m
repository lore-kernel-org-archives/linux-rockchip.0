Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23F48CA0EFF
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Aug 2025 07:25:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wjTn2ih4PiRUUvbFD58UWvXZUh7GjFM7MX/8pF9YGJY=; b=UrigczQwqeMKWR
	UsmX84g3vg22RQUrocbktH6jYbj5FCHcvaBaSS3cLHXISIxucMa3sFuJHqKGqROsyOB4AdNYxL6AD
	mI4fiDuV6uuRZuNmU2Kgv1Uy48rz7igluJVSXRrNz6rLmb1nOekAt1V9UC7cRp8uoP76Z28XKIfU9
	xq1DqKgK4dw6pTtIrl7PHyw53l8W3LAIxwzNMrzM6XnAjsWQgBJgdQRMOl6tUy7pc1lm+jIBtD6wA
	VHNACEksr2bZNMQtS5Z8/4a8lgIu2Wx1kCdPwpWsW8yo7QgGsQiWgk6hmHhVbNaOiQPco6yzxWPmO
	l+/Rm3hASClTcFpF/9gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urAXP-0000000EPfG-179X;
	Wed, 27 Aug 2025 07:25:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urAV2-0000000EPMX-0KbB;
	Wed, 27 Aug 2025 07:23:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=mstaFbCpP+w2tTbkPKin/uA9B0d8ueMbHU6EXqRNUC0=; b=Z0C0o94loTfdLOzgxwFMYT1dAG
	wKwLGPvrwms/4j1/SFX/l5DYVEUaq/TkrX23UywqWwR9an2wuZZ1YZ0WOfrN/HeS69wJoOJwyn94Z
	uDEbkvPyPAbtc2Bomlut8c4nMpHiYfnblh6Iefj7OCsIZmbMMrybNcO8/z/LdYdOe//SaeBBp4HLk
	Vlm41myafyjczlduzi1NwfMlZ3yIiM8JTv9Z//bqKxQDoWhg7T+O05TnxfLGoGbhd0KSlmOv7B07/
	qSwNbJ3Vp1sa/k5SVONiTiX18FqAuGu+8dsjHzT9j+L1A2Gl5TqGv0RsKfu6/dLz3x0fi3D8dIy3u
	1vMhRkgQ==;
Received: from [213.244.170.152] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1urAUa-0007YT-8m; Wed, 27 Aug 2025 09:22:48 +0200
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
Subject: Re: [PATCH v3 08/20] drm/rockchip: vop2: switch to FIELD_PREP_WM16 macro
Date: Wed, 27 Aug 2025 09:22:46 +0200
Message-ID: <5228954.Icojqenx9y@phil>
In-Reply-To: <20250825-byeword-update-v3-8-947b841cdb29@collabora.com>
References: <20250825-byeword-update-v3-0-947b841cdb29@collabora.com>
 <20250825-byeword-update-v3-8-947b841cdb29@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250827_002316_117958_23E7243F 
X-CRM114-Status: GOOD (  10.02  )
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

QW0gTW9udGFnLCAyNS4gQXVndXN0IDIwMjUsIDEwOjI4OjI4IE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgTmljb2xhcyBGcmF0dGFyb2xpOgo+IFRoZSBlcmEgb2YgaGFuZC1y
b2xsZWQgSElXT1JEX1VQREFURSBtYWNyb3MgaXMgb3ZlciwgYXQgbGVhc3QgZm9yIHRob3NlCj4g
ZHJpdmVycyB0aGF0IHVzZSBjb25zdGFudCBtYXNrcy4KPiAKPiBSZW1vdmUgVk9QMidzIEhJV09S
RF9VUERBVEUgbWFjcm8gZnJvbSB0aGUgdm9wMiBoZWFkZXIgZmlsZSwgYW5kIHJlcGxhY2UKPiBh
bGwgaW5zdGFuY2VzIGluIHJvY2tjaGlwX3ZvcDJfcmVnLmMgKHRoZSBvbmx5IHVzZXIgb2YgdGhp
cyBwYXJ0aWN1bGFyCj4gSElXT1JEX1VQREFURSBkZWZpbml0aW9uKSB3aXRoIGVxdWl2YWxlbnQg
RklFTERfUFJFUF9XTTE2IGluc3RhbmNlcy4gVGhpcwo+IGdpdmVzIHVzIGJldHRlciBlcnJvciBj
aGVja2luZy4KPiAKPiBSZXZpZXdlZC1ieTogQ3Jpc3RpYW4gQ2lvY2FsdGVhIDxjcmlzdGlhbi5j
aW9jYWx0ZWFAY29sbGFib3JhLmNvbT4KPiBUZXN0ZWQtYnk6IENyaXN0aWFuIENpb2NhbHRlYSA8
Y3Jpc3RpYW4uY2lvY2FsdGVhQGNvbGxhYm9yYS5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTmljb2xh
cyBGcmF0dGFyb2xpIDxuaWNvbGFzLmZyYXR0YXJvbGlAY29sbGFib3JhLmNvbT4KClJldmlld2Vk
LWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgoKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

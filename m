Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61EE1CA0FFE
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Aug 2025 07:45:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qtiwh8usiaRa4g25aj3sHfVg3WHZWkszv3NejpMxUVA=; b=O5PTC9rx6MGUe4
	DG224j5AUmT2LLNIOJJMdbOOZMiamRHs62ZnyMaijjJZsqdEptnzvi5Yck/Gib10I5SwugxnnMHqi
	PahRIc2ecYtaMkEzBxskuM3J9nJAIC339Q4jb9W+0xXKOrwFj0RO0P7ombx5zvnzAP6kxNboSLPKZ
	YGt9iXYgIKCHGv8wMtJoJxHI//O7tjyBKncQ4Gpyqmc8TEUftagMAB96gR6mdNLG7vjyIzRyuiAVe
	SN57e0dnvEqEWpcXrputFz8WJ9En0Thov9KYBs5Pag9zqmnlrgAEthOI3n/aw3qo2i100CXAYx3UU
	GCUtPOSR6jX/kfEVWX8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urAq6-0000000ETha-0OG6;
	Wed, 27 Aug 2025 07:45:02 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urAmD-0000000ESye-1x5J;
	Wed, 27 Aug 2025 07:41:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=bsC6LX5KLBpHBBCk3mbVzt+mSuWolXNYjnnfwoyQUZ8=; b=BKo+IKU0dPsTiBubmFprh0UGg/
	/Zdbbp3fErqhpmLe+0met3XRNyo1sl1vF2yL4dDJ3a1glCnhtvznl0CtxDHnat8ftqbSfAarT5udc
	XV85SDFUnj31lDM0OSCgBoIuRkn/ZISA8Tml57CHAFuACEbUoNqnrNdsfVlER0tAqxW2+NDidRDOz
	VUu57u8YwR+PWclTMBvsHi/ZKsrwNQcr4uumfo5a3uzRHdwNUEq9zL9j9V/TjVyXrRv50p2jbBypf
	pRw7GBjbRH4q4zlmAaIEueb75/j3DMIpQq+x+mh9uHzyo3uyzsetlGAMPw6G8qI73qXgHsszbZfmM
	np/gBLrQ==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urAmA-00000002NJj-1Mn4;
	Wed, 27 Aug 2025 07:41:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=bsC6LX5KLBpHBBCk3mbVzt+mSuWolXNYjnnfwoyQUZ8=; b=0MHuf6jQlqwSWrbC6GXaYnywCB
	f6Zup2bXNYDbFkL2YGWPczXsD5ZtqbJKKh0BhmRnw8SOJxnDAKiA2qCo1fg28YOdcUHEBB7kL08nU
	hVQWQlysQQNnGDJ8YZnYUSjiiMmSpgFVkdhrfk/3L/UtTyJM4X2QUkPkXVcvytuy+v234X44xG2Nn
	NFKzhD3MvS5KbiUhwEhHLQ6OKa9ZmQjAcZjGMpmGhqdE1HQqXl9pJWGUIuFIpPAnW4GpdQQCgG9u5
	6xUVgQBKXv4z5fmLBcNQPuTq4ya+FmLZZ9hDe4VRhOsQ4J8wNxkxWPXh8BmTybsapbu6MV4QTc04R
	IIJ4G3rA==;
Received: from [213.244.170.152] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1urAli-0001Gx-L4; Wed, 27 Aug 2025 09:40:30 +0200
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
Subject: Re: [PATCH v3 15/20] net: stmmac: dwmac-rk: switch to FIELD_PREP_WM16 macro
Date: Wed, 27 Aug 2025 09:40:28 +0200
Message-ID: <12530943.rMLUfLXkoz@phil>
In-Reply-To: <20250825-byeword-update-v3-15-947b841cdb29@collabora.com>
References: <20250825-byeword-update-v3-0-947b841cdb29@collabora.com>
 <20250825-byeword-update-v3-15-947b841cdb29@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250827_084058_765968_D5153B88 
X-CRM114-Status: GOOD (  13.59  )
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

QW0gTW9udGFnLCAyNS4gQXVndXN0IDIwMjUsIDEwOjI4OjM1IE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgTmljb2xhcyBGcmF0dGFyb2xpOgo+IFRoZSBlcmEgb2YgaGFuZC1y
b2xsZWQgSElXT1JEX1VQREFURSBtYWNyb3MgaXMgb3ZlciwgYXQgbGVhc3QgZm9yIHRob3NlCj4g
ZHJpdmVycyB0aGF0IHVzZSBjb25zdGFudCBtYXNrcy4KPiAKPiBMaWtlIG1hbnkgb3RoZXIgUm9j
a2NoaXAgZHJpdmVycywgZHdtYWMtcmsgaGFzIGl0cyBvd24gSElXT1JEX1VQREFURQo+IG1hY3Jv
LiBJdHMgc2VtYW50aWNzIGFsbG93IHVzIHRvIHJlZGVmaW5lIGl0IGFzIGEgd3JhcHBlciB0byB0
aGUgc2hhcmVkCj4gaHdfYml0ZmllbGQuaCBGSUVMRF9QUkVQX1dNMTYgbWFjcm9zIHRob3VnaC4K
PiAKPiBSZXBsYWNlIHRoZSBpbXBsZW1lbnRhdGlvbiBvZiB0aGlzIGRyaXZlcidzIHZlcnkgb3du
IEhJV09SRF9VUERBVEUgbWFjcm8KPiB3aXRoIGFuIGluc3RhbmNlIG9mIEZJRUxEX1BSRVBfV00x
NiBmcm9tIGh3X2JpdGZpZWxkLmguIFRoaXMga2VlcHMgdGhlCj4gZGlmZiBlYXNpbHkgcmV2aWV3
YWJsZSwgd2hpbGUgZ2l2aW5nIHVzIG1vcmUgY29tcGlsZS10aW1lIGVycm9yCj4gY2hlY2tpbmcu
Cj4gCj4gVGhlIHJlbGF0ZWQgR1JGX0JJVCBtYWNybyBpcyBsZWZ0IGFsb25lIGZvciBub3c7IGFu
eSBhdHRlbXB0IHRvIHJld29yawo+IHRoZSBjb2RlIHRvIG5vdCB1c2UgaXRzIG93biBzb2x1dGlv
biBoZXJlIHdvdWxkIGxpa2VseSBlbmQgdXAgaGFyZGVyIHRvCj4gcmV2aWV3IGFuZCBsZXNzIHBy
ZXR0eSBmb3IgdGhlIHRpbWUgYmVpbmcuCj4gCj4gU2lnbmVkLW9mZi1ieTogTmljb2xhcyBGcmF0
dGFyb2xpIDxuaWNvbGFzLmZyYXR0YXJvbGlAY29sbGFib3JhLmNvbT4KCkFja2VkLWJ5OiBIZWlr
byBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

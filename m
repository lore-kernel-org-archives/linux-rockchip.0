Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6EC4EE49AB
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Aug 2023 22:31:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OJsyFtx27G4PJzdscIVQ136CIvqBn4kEmXOf4FxtAU4=; b=k+uIudvhujpC7I
	JGx24uDeQcucgjC4kS7L4BCORng3MVvCSXDdbnjFapbEZBEnSFDHwFEWoVp0AmTt+4IxFEdrKx3yn
	Bpedrkl3ei7bHjTLKpul+HVfrCHkMTgLPS4f/zyx+W+J5VTUcMtRZpd2SXpf/kMrwpTMFjP9mLRb7
	ygVbe43iodkqaOlC7qjTpEEgYdW+TSYZugi656gNfS3bmNskbMOVOdp8ZRObw4TXf/9noRvLgSny3
	m0LxeDtn91PPYBYazHcb+eqvNVKCoBYq4mbv4xOrjWIMVxYoXEADBpaH+EDOrwO/ja/ZQywQlMSg0
	Hi8pkZWZjwrbjxQZyPqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qYZuU-00GsUx-2Z;
	Tue, 22 Aug 2023 22:31:38 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYZuO-00GsUB-2p;
	Tue, 22 Aug 2023 22:31:34 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 5591063D18;
	Tue, 22 Aug 2023 22:31:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B9D80C433CB;
	Tue, 22 Aug 2023 22:31:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692743491;
	bh=c+z7Y44NmFLsYnIuor2AQkl3u9PUP11lx1AoXxt7Aw0=;
	h=References:In-Reply-To:From:Date:Subject:To:List-Id:Cc:From;
	b=nS7aLPz6XlfCfDidZdEnCtvI4nk3gcO/5OpKzg5muURwot9sVMGoPMJUWOQd0T24Z
	 84JE7PTqbNKUXryr3fjjR4JRK6m8cHWmNi14o+EX+ZA3YttQLosTcTsEw8AR0Spc1m
	 uRSXN4Z7Lw1GPvwT/dvMc1UsX9MGYu1v12BoSShD7ht0x6+ir8JA4SrFW2/X213D55
	 qix4skVmgE8T3UBmzqiBQ8sYKpUjTdm7RKfcs0CiiXnmsCIyGzQ1goz+7Frseydur/
	 NNqhKzuT41T0ZCFBw7qAiP7H1SAsltJXGF4bKDZ9V11R6hCjhU0dUMp+gH+cmKosDN
	 GrlhOhdwuOI/A==
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-5007616b756so4888553e87.3;
        Tue, 22 Aug 2023 15:31:31 -0700 (PDT)
X-Gm-Message-State: AOJu0YyNt1q+lzfJeay26a2jCzu+yOkFgrqVHIpaUmTHmcjpp4t2AQ3o
	owosjaqN7SMrsuqO1Ul5jVrgv+2f6PXv6XAtBQ==
X-Google-Smtp-Source: AGHT+IFe521jhURKdbA7Y+o7DBBih8popF4ErXWCXScc9IMyiU+HU6o3tc/tpyLacfb62wdw0QFMTW5RLTmaYXsFchM=
X-Received: by 2002:a2e:380a:0:b0:2b6:d13a:8e34 with SMTP id
 f10-20020a2e380a000000b002b6d13a8e34mr7897705lja.46.1692743469060; Tue, 22
 Aug 2023 15:31:09 -0700 (PDT)
MIME-Version: 1.0
References: <20230803-dt-header-cleanups-for-soc-v2-0-d8de2cc88bff@kernel.org>
 <20230803-dt-header-cleanups-for-soc-v2-21-d8de2cc88bff@kernel.org> <5696647.DvuYhMxLoT@jernej-laptop>
In-Reply-To: <5696647.DvuYhMxLoT@jernej-laptop>
From: Rob Herring <robh@kernel.org>
Date: Tue, 22 Aug 2023 17:30:55 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+Ssha5KdBdJ+7c3cxuy+VqWRUjSa=YM78gKi5mZAwvgQ@mail.gmail.com>
Message-ID: <CAL_Jsq+Ssha5KdBdJ+7c3cxuy+VqWRUjSa=YM78gKi5mZAwvgQ@mail.gmail.com>
Subject: Re: [PATCH v2 21/23] soc: sunxi: Explicitly include correct DT includes
To: =?UTF-8?Q?Jernej_=C5=A0krabec?= <jernej.skrabec@gmail.com>
Cc: soc@kernel.org, Patrice Chotard <patrice.chotard@foss.st.com>, 
	Tsahee Zidenberg <tsahee@annapurnalabs.com>, Antoine Tenart <atenart@kernel.org>, 
	Jisheng Zhang <jszhang@kernel.org>, 
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Andrew Lunn <andrew@lunn.ch>, 
	Gregory Clement <gregory.clement@bootlin.com>, Jean-Marie Verdun <verdun@hpe.com>, 
	Nick Hawkins <nick.hawkins@hpe.com>, Lubomir Rintel <lkundrak@v3.sk>, 
	Linus Walleij <linus.walleij@linaro.org>, Avi Fishman <avifishman70@gmail.com>, 
	Tomer Maimon <tmaimon77@gmail.com>, Tali Perry <tali.perry1@gmail.com>, 
	Patrick Venture <venture@google.com>, Nancy Yuen <yuenn@google.com>, 
	Benjamin Fair <benjaminfair@google.com>, Daniel Mack <daniel@zonque.org>, 
	Haojian Zhuang <haojian.zhuang@gmail.com>, Robert Jarzmik <robert.jarzmik@free.fr>, 
	Heiko Stuebner <heiko@sntech.de>, Liviu Dudau <liviu.dudau@arm.com>, 
	Sudeep Holla <sudeep.holla@arm.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Viresh Kumar <vireshk@kernel.org>, Shiraz Has him <shiraz.linux.kernel@gmail.com>, 
	Stuart Yoder <stuyoder@gmail.com>, Laurentiu Tudor <laurentiu.tudor@nxp.com>, 
	Jay Fang <f.fangjian@huawei.com>, Chen-Yu Tsai <wens@csie.org>, 
	Samuel Holland <samuel@sholland.org>, Cristian Marussi <cristian.marussi@arm.com>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, Dinh Nguyen <dinguyen@kernel.org>, 
	Thierry Reding <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Michal Simek <michal.simek@amd.com>, Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>, 
	Ulf Hansson <ulf.hansson@linaro.org>, Li Yang <leoyang.li@nxp.com>, 
	Qiang Zhao <qiang.zhao@nxp.com>, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, openbmc@lists.ozlabs.org, 
	linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-mediatek@lists.infradead.org, linux-rpi-kernel@lists.infradead.org, 
	linux-tegra@vger.kernel.org, linux-aspeed@lists.ozlabs.org, 
	linux-pm@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230822_153133_020421_842FEE43 
X-CRM114-Status: GOOD (  14.80  )
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

T24gU3VuLCBBdWcgNiwgMjAyMyBhdCA2OjQy4oCvQU0gSmVybmVqIMWga3JhYmVjIDxqZXJuZWou
c2tyYWJlY0BnbWFpbC5jb20+IHdyb3RlOgo+Cj4gRG5lIHBldGVrLCAwNC4gYXZndXN0IDIwMjMg
b2IgMDA6NDM6MDEgQ0VTVCBqZSBSb2IgSGVycmluZyBuYXBpc2FsKGEpOgo+ID4gVGhlIERUIG9m
X2RldmljZS5oIGFuZCBvZl9wbGF0Zm9ybS5oIGRhdGUgYmFjayB0byB0aGUgc2VwYXJhdGUKPiA+
IG9mX3BsYXRmb3JtX2J1c190eXBlIGJlZm9yZSBpdCBhcyBtZXJnZWQgaW50byB0aGUgcmVndWxh
ciBwbGF0Zm9ybSBidXMuCj4gPiBBcyBwYXJ0IG9mIHRoYXQgbWVyZ2UgcHJlcHBpbmcgQXJtIERU
IHN1cHBvcnQgMTMgeWVhcnMgYWdvLCB0aGV5Cj4gPiAidGVtcG9yYXJpbHkiIGluY2x1ZGUgZWFj
aCBvdGhlci4gVGhleSBhbHNvIGluY2x1ZGUgcGxhdGZvcm1fZGV2aWNlLmgKPiA+IGFuZCBvZi5o
LiBBcyBhIHJlc3VsdCwgdGhlcmUncyBhIHByZXR0eSBtdWNoIHJhbmRvbSBtaXggb2YgdGhvc2Ug
aW5jbHVkZQo+ID4gZmlsZXMgdXNlZCB0aHJvdWdob3V0IHRoZSB0cmVlLiBJbiBvcmRlciB0byBk
ZXRhbmdsZSB0aGVzZSBoZWFkZXJzIGFuZAo+ID4gcmVwbGFjZSB0aGUgaW1wbGljaXQgaW5jbHVk
ZXMgd2l0aCBzdHJ1Y3QgZGVjbGFyYXRpb25zLCB1c2VycyBuZWVkIHRvCj4gPiBleHBsaWNpdGx5
IGluY2x1ZGUgdGhlIGNvcnJlY3QgaW5jbHVkZXMuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogUm9i
IEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4KPgo+IEFwcGxpZWQgdG8gc3VueGkgdHJlZSwgdGhh
bmtzIQoKRGlkIHlvdSByZWFsbHk/IERvZXNuJ3QgbG9vayBsaWtlIHRoaXMgaXMgaW4gbGludXgt
bmV4dC4KClJvYgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=

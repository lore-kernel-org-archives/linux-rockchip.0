Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7E84C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Feb 2022 08:00:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZziJMFLQxAPd4kar8UjAdGvP+/Iz5+nwhQO/NDCnQ/U=; b=OdzIi4mSRp6/D0
	FrkuH1YhuFwUytmoTP3c8gKXd5ZpNj1XpzO+CqNNwjSgTWDOpTxfGvympXJQBDmp7bi91ZUid2Vo4
	bGu/sL7O4bg8/QfDCkACSNKsOnC+/PGpyAs8YY9WFkhYHznesy5kLi3cFFwqMhVfdrMAm93akSNzv
	j6u/gR9lak3uyq1LA/4HiPkwhEdhsSIl6xJupX+iSin27ROjqK0YP1dF/OyqeBEHxY14VfnzQivD2
	7nNKamc3RHiS4boADdWp2kxH35xWOIwU+bSun6ZiDgwaWQ9NAE553cubiNDVV8g6IATeeLhG4WGI/
	RyFl2dRFCLXTqBBZ2SoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nJskz-001Rlu-8t; Tue, 15 Feb 2022 08:00:17 +0000
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJsku-001RhQ-OO
 for linux-rockchip@lists.infradead.org; Tue, 15 Feb 2022 08:00:14 +0000
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 1B1C13F33A
 for <linux-rockchip@lists.infradead.org>; Tue, 15 Feb 2022 08:00:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1644912004;
 bh=WKmF3ofcPXNkDjn7YKxiUvOekr6rsM7Z5lgS0lqXT8w=;
 h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
 To:Cc:Content-Type;
 b=ImtJcd9Y2EJZSTmmzMcLpF6yEhEB6ow/DW0+JbMdIUNHvJ8MguMcaySEAfvTj3fzp
 xLapMygUHhEfYchXZIThst6cwQXK8IWTNyPPe5ijKDpZ6LVwLd6my8Er0sC13gihUi
 1V+CVAWmjIcUOgPoZ0yfaNTwczo0WIop6hXNbjgiTXX0FgykvsvMzuu96qSV2AYdHK
 Dp5qmgWHiqQL77tPBNY1psn/N6EWfHYTE9ljby1J/79L+V2MqUKeLuyJP+HpsMYivf
 7u/Jy5OmzGDeCyHRFXvZjGGGZ1owDbtjIRGlX5aqVTsui/N67OdFU1M0WpUw73+g4n
 ohS2iRVjeqO5A==
Received: by mail-ej1-f72.google.com with SMTP id
 qf24-20020a1709077f1800b006ce8c140d3dso2026616ejc.18
 for <linux-rockchip@lists.infradead.org>; Tue, 15 Feb 2022 00:00:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=WKmF3ofcPXNkDjn7YKxiUvOekr6rsM7Z5lgS0lqXT8w=;
 b=A8uicMa9whSfQahBXxEMXepu8wdiuMQ3QdChYmb5ay5Dai0gOuRjJTohG2jqx9vyjp
 D9Vc9FywpxfDD3yV8m+caBZdnFhvOlpYaI/1bNjm76u+SROTE6ciRO6xIOKndrMPmFgj
 90IzdbXfIt2PVGpJSuE49ZvhKebqK+4gQarMaCGPE0Ds173ojgDUSyZlg0I5lnWwA+DH
 Y2s/xxqXehTE37G5AkTx8u/KHpCiQJngos85Hje8G49TyErdulpiYnwhA9jz1bXf7y+t
 kBb/nF5aMDEWP3Ozn6ObLJJSquubr7bssMqpi+8pLW3kd/ymbTimFunHVz32+RIcwYex
 hg3w==
X-Gm-Message-State: AOAM530dGX2O0DTPjldzosGxqGaobTjFa7WtJEOOkeMg+Oh11SePnuN8
 Hc9EHf+LAwbyfzJhc2zGSP9ayFsIbgL4+VzuBsOV207qGzhRhEqF+iqsVAASlHub1ImHFW4AtlV
 gvEj/mwrt90wNo3dPRqA8oYJmctCP/Sd0ZsPz3oeCe7VlYj4J7fq4kvTijLdcXYTF5w==
X-Received: by 2002:a17:907:1c01:: with SMTP id
 nc1mr2010476ejc.659.1644912003522; 
 Tue, 15 Feb 2022 00:00:03 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwuZ4VRaFsrBt53zgXGJrUAfN8tOgQwKpQDCWWN0b0yuET7r2Bc26aSK/euYsuMQ1hH/V9RfLx8GOJpFFdq8EM=
X-Received: by 2002:a17:907:1c01:: with SMTP id
 nc1mr2010457ejc.659.1644912003335; 
 Tue, 15 Feb 2022 00:00:03 -0800 (PST)
MIME-Version: 1.0
References: <20220214212154.8853-1-krzysztof.kozlowski@canonical.com>
 <20220215074030.3nugwproxjh3lwhl@pengutronix.de>
In-Reply-To: <20220215074030.3nugwproxjh3lwhl@pengutronix.de>
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Date: Tue, 15 Feb 2022 08:59:52 +0100
Message-ID: <CA+Eumj42Hojp1m4deuWnqMOaaNaupTSkzPaNbL_0eyBL-aDi_g@mail.gmail.com>
Subject: Re: [PATCH v2 00/15] pwm: dt-bindings: Include generic pwm schema
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Florian Fainelli <f.fainelli@gmail.com>, 
 bcm-kernel-feedback-list@broadcom.com, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Heiko Stuebner <heiko@sntech.de>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
 Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>,
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Vijayakannan Ayyathurai <vijayakannan.ayyathurai@intel.com>,
 Rahul Tanwar <rtanwar@maxlinear.com>, 
 Jeff LaBundy <jeff@labundy.com>, Sagar Kadam <sagar.kadam@sifive.com>,
 Vignesh R <vigneshr@ti.com>, 
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 linux-pwm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-riscv@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220215_000012_952412_58C411F8 
X-CRM114-Status: GOOD (  17.56  )
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

T24gVHVlLCAxNSBGZWIgMjAyMiBhdCAwODo0MCwgVXdlIEtsZWluZS1Lw7ZuaWcKPHUua2xlaW5l
LWtvZW5pZ0BwZW5ndXRyb25peC5kZT4gd3JvdGU6Cj4KPiBIZWxsbywKPgo+IFtkcm9wcGVkIEFu
c29uIEh1YW5nIGFuZCBZYXNoIFNoYWggZnJvbSBDYzogd2hpY2ggd2VyZSBub3QgcmVhY2hhYmxl
IGZvcgo+IG15IGxhc3QgbWFpbF0KPgo+IE9uIE1vbiwgRmViIDE0LCAyMDIyIGF0IDEwOjIxOjM5
UE0gKzAxMDAsIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4gPiBIaSwKPiA+Cj4gPiBDaGFu
Z2VzIHNpbmNlIHYxOgo+ID4gMS4gQWRkIHRhZ3MuCj4gPiAyLiBBZGp1c3Qgc3ViamVjdCAoVXdl
KS4KPgo+IEhvd2V2ZXIgeW91IG9ubHkgdG9vayBhIHBhcnQgb2YgbXkgc3VnZ2VzdGlvbiAuLi4K
Pgo+ID4gS3J6eXN6dG9mIEtvemxvd3NraSAoMTUpOgo+ID4gICBkdC1iaW5kaW5nczogcHdtOiBh
bGx3aW5uZXIsc3VuNGktYTEwOiBJbmNsdWRlIGdlbmVyaWMgcHdtIHNjaGVtYQo+ID4gICBkdC1i
aW5kaW5nczogcHdtOiBpbXg6IEluY2x1ZGUgZ2VuZXJpYyBwd20gc2NoZW1hCj4gPiAgIGR0LWJp
bmRpbmdzOiBwd206IGludGVsLGxnbTogSW5jbHVkZSBnZW5lcmljIHB3bSBzY2hlbWEKPiA+ICAg
ZHQtYmluZGluZ3M6IHB3bTogaXFzNjIwYTogSW5jbHVkZSBnZW5lcmljIHB3bSBzY2hlbWEKPiA+
ICAgZHQtYmluZGluZ3M6IHB3bTogbXhzOiBJbmNsdWRlIGdlbmVyaWMgcHdtIHNjaGVtYQo+ID4g
ICBkdC1iaW5kaW5nczogcHdtOiByb2NrY2hpcDogSW5jbHVkZSBnZW5lcmljIHB3bSBzY2hlbWEK
PiA+ICAgZHQtYmluZGluZ3M6IHB3bTogc2lmaXZlOiBJbmNsdWRlIGdlbmVyaWMgcHdtIHNjaGVt
YQo+ID4gICBkdC1iaW5kaW5nczogcHdtOiByZW5lc2FzLHB3bTogSW5jbHVkZSBnZW5lcmljIHB3
bSBzY2hlbWEKPiA+ICAgZHQtYmluZGluZ3M6IHB3bTogdG9zaGliYSx2aXNjb250aTogSW5jbHVk
ZSBnZW5lcmljIHB3bSBzY2hlbWEKPiA+ICAgZHQtYmluZGluZ3M6IHB3bTogYnJjbSxiY203MDM4
OiBEbyBub3QgcmVxdWlyZSBwd20tY2VsbHMgdHdpY2UKPiA+ICAgZHQtYmluZGluZ3M6IHB3bTog
aW50ZWwsa2VlbWJheTogRG8gbm90IHJlcXVpcmUgcHdtLWNlbGxzIHR3aWNlCj4KPiAuLi4gVGhl
IGFjdHVhbCBwYXRjaCBoYXMgYSBzcGFjZSBhZnRlciB0aGUgY29tbWEsIEkgbGlrZSB0aGlzIHZh
cmlhbnQKPiB3aXRob3V0IGNvbW1hIGJldHRlciBhcyB0aGlzIGlzIGEgY29tcGF0aWJsZSBzdHJp
bmcuCgpJIGFtIGNvbmZ1c2VkLiBNeSBwYXRjaCBkb2VzIG5vdCBoYXZlIGNvbW1hIGFmdGVyIHNw
YWNlLiBZb3VyIHJlcGx5CmhhZCBzdWNoIGluIHRoZSBzdWJqZWN0LCBidXQgbm90IGluIHRoZSBw
cm9wb3NlZCBuZXcgc3ViamVjdCB5b3Ugd3JvdGUKaW4gbXNnLCBzbyBJIGxlZnQgaXQgYXMgaXMu
IFdpdGhvdXQgY29tbWEuIElmIHlvdSBzdGlsbCBzZWUgY29tbWEsIGl0CmlzIHNvbWV0aGluZyB3
aXRoIHlvdXIgbWFpbCBjbGllbnQuCgpTZWU6Cmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4
LWRldmljZXRyZWUvMjAyMjAyMTQyMTIxNTQuODg1My0xMi1rcnp5c3p0b2Yua296bG93c2tpQGNh
bm9uaWNhbC5jb20vVC8jdQoKQWxzbyByZXBseSBmcm9tIFZpamF5YWthbm5hbiBkb2VzIG5vdCBo
YXZlIGNvbW1hOgpodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1kZXZpY2V0cmVlLzIwMjIw
MjE0MDgxNjA1LjE2MTM5NC0xMS1rcnp5c3p0b2Yua296bG93c2tpQGNhbm9uaWNhbC5jb20vVC8j
bTgwYWY2OTVmMmM3NTEzNDFiYzk3MTExNGFlZmEwMGNjYzkyOWEzZWMKCj4gQWxzbyBhICMgYmVm
b3JlCj4gcHdtLWNlbGxzIHdvdWxkIGJlIG5pY2UuCgpJIGNhbiBhZGQgdGhpcy4KCkJlc3QgcmVn
YXJkcywKS3J6eXN6dG9mCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==

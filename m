Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B77D2C77B78
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 May 2023 13:17:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zKx20YEFKKuxnGOhInsgBc6zlNO6xo/LO4aRO3pRvso=; b=KBI+Sn8ZhHNd8c
	YYj2pMN46RZw2/inPhh6AxS0QNaDvOIo7exju9gp9AJofxqoFSNq3rrIp3dMAxfv0fjdh+1LZFzBr
	5I6utpPAK09CiKoTmUDT8GsEGmdwMOZbeVkPc435yH7/xaKY4Z8ncT4hrJuuABMV8t0UtOPENRkpZ
	BCtG1/tiyfirLe3h/GSSYnRpn/JtaFbiA5zUcA9vsKzXF+9TXCOP7++JxrxfbQKk1Jg/jN31oc14f
	pil3ZfIfbmbwe+qXOBlm4K2bV87IRh7RxJBt5fPxK0+UcxHCkn/JF3lXAln7hTEj3LmCCb7JThef2
	aR7WHv1J+r6/gXaGb9DQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puCLz-004gX1-0L;
	Wed, 03 May 2023 13:17:07 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puCLu-004gV9-2w;
	Wed, 03 May 2023 13:17:04 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 67EA662D8C;
	Wed,  3 May 2023 13:17:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C1311C433A1;
	Wed,  3 May 2023 13:17:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683119821;
	bh=CA9HUUoFcRTgCBgzgu0IWVlQEyRERVDtXqxkChGQSj8=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=Ole+wwu+SdPiS2aUQcX3tEt0J62DoRGG/xDwP1Q2hBI3sfPftXI2W3kkH/F/59E4N
	 Rj2AmEaDcZT0BpGUnm84lYZ85cuHO/HgCWs2zlik5IUL41OlHfPOy59tbtDy7fBx5t
	 ZgCFMVN0XHQ4LSBsXc2sJOPg8GrUyA3vIDNzPLKgT+G9Ro3CYUUGu+kdRKJu/W/qY+
	 Pcq0qEWFbXc19qYZkj9ZXfSABwacLhUspZQ8xEAXDZ4dRCU4ngqd8rEoQ4x7LNLiYU
	 jPAiVOLzrxahB5/VVJTZBCBCdKtT7WYvy7hBlO4AI4UaDtDdPD5K3xc7KZXakiNinj
	 sK7EXobVb5Tog==
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2a8b082d6feso51420621fa.2;
        Wed, 03 May 2023 06:17:01 -0700 (PDT)
X-Gm-Message-State: AC+VfDxJRugMsjmaAdb6wil1pzxZHT6e/kvpAZSnh7u6+eHDgI/9cXGi
	g5/A4MmeGQnGYLpPJPiFTQSIzIipd4DAd5QYjA==
X-Google-Smtp-Source: ACHHUZ4XoUscEY44VabA5tNDJYMyOoaF7CDhHSN63Jv4Bd86fg89uBNzW43NBIrFuEuIivWhSP0hKhXIoN/CJGAf91U=
X-Received: by 2002:ac2:5198:0:b0:4ed:b842:3a99 with SMTP id
 u24-20020ac25198000000b004edb8423a99mr934135lfi.59.1683119819681; Wed, 03 May
 2023 06:16:59 -0700 (PDT)
MIME-Version: 1.0
References: <20220328000915.15041-1-ansuelsmth@gmail.com> <85eb14ec-f465-7447-ad77-a3dabc666f47@kernel.org>
 <YkKRYnN84D9VZhGj@Ansuel-xps.localdomain> <CAL_Jsq+RQQ-ADMxLPUFwk6S6kGmb6oNDy4k52fnU0EtbUvqmSA@mail.gmail.com>
 <CAMuHMdWNTE48MFy6fqxAsfMWz9b6E7dVNXtXtESP95sxk2PGwA@mail.gmail.com>
 <CAL_JsqJthKTm8bhRF2B=ae1tvtPeYYXx_Tm76qQtSwLtH5C6VA@mail.gmail.com>
 <720a2829-b6b5-411c-ac69-9a53e881f48d@app.fastmail.com> <CAL_JsqKCtmkwzKa01gyG65fH8ye6R3KhR41PJbJhOJ4X9j=znA@mail.gmail.com>
 <bce93654-fc36-3d12-282d-76fafb8f51ce@linaro.org> <CAL_JsqJXd_EpOQwwNEAn25mzFfkhEvqzur6ui5Ca+dbt2kA8-Q@mail.gmail.com>
 <5e318b02-8f33-4e2d-a956-5660e1c60619@app.fastmail.com> <CAA8EJpq8x5wQa3fMebaSP3hCdMiCsZRaF+B4Y3N3royW_CeXCA@mail.gmail.com>
 <4e1e70a9-9b28-410b-bd29-fb5f5805798f@app.fastmail.com>
In-Reply-To: <4e1e70a9-9b28-410b-bd29-fb5f5805798f@app.fastmail.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Wed, 3 May 2023 08:16:46 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJEdZBS231TvkmmipaXEqzvDjz+A32V6uJ4zfSMAJHn2w@mail.gmail.com>
Message-ID: <CAL_JsqJEdZBS231TvkmmipaXEqzvDjz+A32V6uJ4zfSMAJHn2w@mail.gmail.com>
Subject: Re: [RFC PATCH 0/1] Categorize ARM dts directory
To: Arnd Bergmann <arnd@arndb.de>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Geert Uytterhoeven <geert@linux-m68k.org>, 
	Olof Johansson <olof@lixom.net>, Christian Marangi <ansuelsmth@gmail.com>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-actions@lists.infradead.org, 
	linux-sunxi@lists.linux.dev, Linux-OMAP <linux-omap@vger.kernel.org>, 
	linux-amlogic@lists.infradead.org, linux-arm-kernel@axis.com, 
	linux-aspeed@lists.ozlabs.org, linux-rpi-kernel@lists.infradead.org, 
	chrome-platform@lists.linux.dev, 
	Linux-Renesas <linux-renesas-soc@vger.kernel.org>, linux-samsung-soc@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, kernel@dh-electronics.com, 
	linux-mediatek@lists.infradead.org, openbmc@lists.ozlabs.org, 
	linux-tegra@vger.kernel.org, "linux-oxnas@groups.io" <linux-oxnas@groups.io>, 
	linux-arm-msm@vger.kernel.org, linux-unisoc@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-realtek-soc@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230503_061703_024575_0592A913 
X-CRM114-Status: GOOD (  17.33  )
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

T24gV2VkLCBNYXkgMywgMjAyMyBhdCA3OjE54oCvQU0gQXJuZCBCZXJnbWFubiA8YXJuZEBhcm5k
Yi5kZT4gd3JvdGU6Cj4KPiBPbiBXZWQsIE1heSAzLCAyMDIzLCBhdCAxNDoxMywgRG1pdHJ5IEJh
cnlzaGtvdiB3cm90ZToKPiA+IE9uIFdlZCwgMyBNYXkgMjAyMyBhdCAxMzozOSwgQXJuZCBCZXJn
bWFubiA8YXJuZEBhcm5kYi5kZT4gd3JvdGU6Cj4KPiA+PiBTbyB3aXRoIHB4YTkzeCBvdXQgb2Yg
dGhlIHBpY3R1cmUsIHdlIGNhbiBzaW1wbGlmeSBpdCBhcyB1c2luZwo+ID4+ICdweGEnIGFzIHRo
ZSBuYW1lIGZvciBhbGwgdGhlIGFib3ZlIGNoaXBzIHdpdGggYW4gSW50ZWwgWFNjYWxlCj4gPj4g
Y29yZSwgYW5kICdtYXJ2ZWxsJyBmb3IgYWxsIHRoZSBvdGhlciBvbmVzIHRoYXQgaGF2ZSBhIE1h
cnZlbGwKPiA+PiBjb3JlIGFuZCBleGlzdCBpbiBtYWNoLW1tcC4KPiA+Cj4gPiBTaG91bGQgaXQg
YmUgJ2ludGVsJyBmb3IgcHhhWzIzXXh4IHRoZW4/Cj4KPiBQcm9iYWJseSB5ZXMsIHRoYXQgd291
bGQgcHV0IGl0IG5leHQgdG8gaXhwNHh4LCB3aGljaCBtYWtlcwo+IGEgbG90IG9mIHNlbnNlIChz
YW1lIHZpbnRhZ2UsIHNhbWUgY3B1IGNvcmUpLCB0aG91Z2ggaXQgaXMKPiBhIGJpdCBmdW5ueSB0
byBoYXZlIHRoZXNlIHRvZ2V0aGVyIHdpdGggbHNpIGF4eGlhIGFuZAo+IGFsdGVyYSBzb2NmcGdh
LCBib3RoIG9mIHdoaWNoIGFyZSBhbHNvIGluIHRoZSBpbnRlbAo+IGRpcmVjdG9yeS4gc29jZnBn
YSBpcyBvZiBjb3Vyc2UgdGhlIG9ubHkgb25lIHRoYXQgYW55Ym9keQo+IGF0IEludGVsIGNhcmVz
IGFib3V0IHRoZXNlIGRheXMuCgpXZSBjb3VsZCBkbyBhIHNlY29uZCBsZXZlbCBvZiBkaXJlY3Rv
cmllcyBoZXJlOgoKaW50ZWwvcHhhLwppbnRlbC9peHAvCmludGVsL3NvY2ZwZ2EvCgphcm02NCBi
cm9hZGNvbSBkdHMgZmlsZXMgYXJlIHN0cnVjdHVyZWQgdGhhdCB3YXkuCgpSb2IKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

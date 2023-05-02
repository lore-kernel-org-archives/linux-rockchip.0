Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CE9DC77B78
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 May 2023 21:28:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MkkEZ3zfL0P8sV9coqeowHE4CGpQTyVHWFQ2+zKKj4k=; b=h9DNpjPd1vivgR
	VOjnId/pJBQS+XdFQDZlvmQFidUkHBB4aSzZEJPHfFxhBjE7UuVnnPIWohbiU5wjfQZCiJHRMNNNF
	hGsH4yrkwFzk6psGTHCVYOtAn4mixDVjEQvqy6+CthjSyfCvpP+XvkYMV8v2x6r7URQylafqTn8fq
	iNoevsEXIQQUzm5iEsu1se1RMOUPDjQSnv+oz1z4OL2KRSfFyU2DWgTvYeV4d9M+0EyltWR0dVuUG
	6dTGu/7n3ppX0/0avVeUkiOirv5bw8yTNvUmZ4w/OyynlyML7VL8QpBxJwBF0EmzqGWZe/bxDvkDW
	OOzu/bnHTXCMIw54KWZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptxXU-002gt3-1S;
	Tue, 02 May 2023 21:28:00 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptxXP-002grV-1Z;
	Tue, 02 May 2023 21:27:56 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 09003628FE;
	Tue,  2 May 2023 21:27:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F132AC433A4;
	Tue,  2 May 2023 21:27:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683062874;
	bh=jCPU9c2wabBAGUXBx0w4fzzWZn23Up45NdgJcoiuHoA=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=QeycS2K3ewctYzTEloVu2+psY1yqWMXDLYjl/hvzEsuI/rCoQyIWWrcInlG2NU5Vt
	 ZhiIh1MtTKjd9pFeckk+tiJy1vVp29OFdMTgDcx/WJ8LIp4BhfJ3MXtCJQAtf7GADC
	 ZJdBo0RViTWUfEfA3DXuXjn1fFMM3XfEJZyZ5wmhns7RNVlUIWAnXy7ypOpLvEIpYJ
	 r4LQxZKMQxJG/FTUbYhGjyuF3Mv044AWIzcT07DI6ofTS/0sY0cUV9ehQof2sSRQE/
	 DSdSrQeAczbNO8taFydoCq3ou1kt6VgqPZ91Zx6Dw9OIFvc9BxWvsfCMDi0PxjaTpH
	 o/TXDp3yhtUmA==
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2a8ad872ea5so44374701fa.2;
        Tue, 02 May 2023 14:27:53 -0700 (PDT)
X-Gm-Message-State: AC+VfDygH02KREw5/0zqXPIGYzl6CBL3/hjeo2CQemjUs3lkcefyat9y
	KWabtqQizPQav43AZYj3r71b01Az8Ar4KbKwDw==
X-Google-Smtp-Source: ACHHUZ4VmzJ58Blp8vkFEMpnZTP3rUtg0aygjDIMYeTMpSWAwJvPoANOd1LtrOl749GRPWYY5WO4jHHB7hvvVyp4ngc=
X-Received: by 2002:a2e:860b:0:b0:2a8:bb99:250d with SMTP id
 a11-20020a2e860b000000b002a8bb99250dmr5156347lji.6.1683062871907; Tue, 02 May
 2023 14:27:51 -0700 (PDT)
MIME-Version: 1.0
References: <20220328000915.15041-1-ansuelsmth@gmail.com> <85eb14ec-f465-7447-ad77-a3dabc666f47@kernel.org>
 <YkKRYnN84D9VZhGj@Ansuel-xps.localdomain> <CAL_Jsq+RQQ-ADMxLPUFwk6S6kGmb6oNDy4k52fnU0EtbUvqmSA@mail.gmail.com>
 <CAMuHMdWNTE48MFy6fqxAsfMWz9b6E7dVNXtXtESP95sxk2PGwA@mail.gmail.com>
 <CAL_JsqJthKTm8bhRF2B=ae1tvtPeYYXx_Tm76qQtSwLtH5C6VA@mail.gmail.com>
 <720a2829-b6b5-411c-ac69-9a53e881f48d@app.fastmail.com> <CAL_JsqKCtmkwzKa01gyG65fH8ye6R3KhR41PJbJhOJ4X9j=znA@mail.gmail.com>
 <CACRpkdZx6vEVnxVt0tW4nYtnbv8g=Dc11sa_3myB3GW4jXk1oA@mail.gmail.com>
In-Reply-To: <CACRpkdZx6vEVnxVt0tW4nYtnbv8g=Dc11sa_3myB3GW4jXk1oA@mail.gmail.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 2 May 2023 16:27:39 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKzof_mYRw9Dd0YAVWr1AFoO8gwkVUR22AJX_RF2xv0aA@mail.gmail.com>
Message-ID: <CAL_JsqKzof_mYRw9Dd0YAVWr1AFoO8gwkVUR22AJX_RF2xv0aA@mail.gmail.com>
Subject: Re: [RFC PATCH 0/1] Categorize ARM dts directory
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Arnd Bergmann <arnd@arndb.de>, Geert Uytterhoeven <geert@linux-m68k.org>, Olof Johansson <olof@lixom.net>, 
	Christian Marangi <ansuelsmth@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-actions@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	Linux-OMAP <linux-omap@vger.kernel.org>, linux-amlogic@lists.infradead.org, 
	linux-arm-kernel@axis.com, linux-aspeed@lists.ozlabs.org, 
	linux-rpi-kernel@lists.infradead.org, chrome-platform@lists.linux.dev, 
	Linux-Renesas <linux-renesas-soc@vger.kernel.org>, linux-samsung-soc@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, kernel@dh-electronics.com, 
	linux-mediatek@lists.infradead.org, openbmc@lists.ozlabs.org, 
	linux-tegra@vger.kernel.org, "linux-oxnas@groups.io" <linux-oxnas@groups.io>, 
	linux-arm-msm@vger.kernel.org, linux-unisoc@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-realtek-soc@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_142755_621196_0316F293 
X-CRM114-Status: GOOD (  19.83  )
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

T24gVHVlLCBNYXkgMiwgMjAyMyBhdCA0OjE54oCvUE0gTGludXMgV2FsbGVpaiA8bGludXMud2Fs
bGVpakBsaW5hcm8ub3JnPiB3cm90ZToKPgo+IE9uIFR1ZSwgTWF5IDIsIDIwMjMgYXQgOTo0MOKA
r1BNIFJvYiBIZXJyaW5nIDxyb2JoK2R0QGtlcm5lbC5vcmc+IHdyb3RlOgo+Cj4gPiBJJ3ZlIGR1
c3RlZCBvZmYgbXkgc2NyaXB0IGFuZCBtYWRlIGEgYnJhbmNoWzFdIHdpdGggdGhlIHJlc3VsdC4K
PiA+IFRoZXJlJ3MganVzdCBhIGNvdXBsZSBvZiBmaXhlcyBuZWVkZWQgYWZ0ZXIgdGhlIHNjcmlw
dCBpcyBydW4gKHNlZSB0aGUKPiA+IHRvcCBjb21taXQpLiBUaGUgY3Jvc3MgYXJjaCBpbmNsdWRl
cyBhcmUgYWxsIGZpeGVkIHVwIGJ5IHRoZSBzY3JpcHQuCj4gPiBkdGJzX2luc3RhbGwgbWFpbnRh
aW5zIGEgZmxhdCBpbnN0YWxsLiBJIGNvbXBhcmVkIHRoZSBudW1iZXIgb2YgLmR0YnMKPiA+IGJl
Zm9yZSBhbmQgYWZ0ZXIgdG8gY2hlY2sgdGhlIHNjcmlwdC4KPiA+Cj4gPiBJIHRoaW5rIHRoZSBv
bmx5IGlzc3VlIHJlbWFpbmluZyBpcyBmaW5hbGl6aW5nIHRoZSBtYXBwaW5nIG9mCj4gPiBwbGF0
Zm9ybXMgdG8gc3ViZGlycy4gV2hhdCBJIGhhdmUgY3VycmVudGx5IGlzIGEgbWl4dHVyZSBvZiBT
b0MKPiA+IGZhbWlsaWVzIGFuZCB2ZW5kb3JzLiBUaGUgbW9zdCBub3RhYmxlIGFyZSBhbGwgdGhl
IEZyZWVzY2FsZS9OWFAKPiA+IHBsYXRmb3JtcywgcHhhLCBzb2NmcGdhLCBhbmQgc3RtMzIuIEl0
J3Mgbm90IGNvbnNpc3RlbnQgd2l0aCBhcm02NAo+ID4gZWl0aGVyLiBPbmNlIHRoYXQncyBmaW5h
bGl6ZWQsIEkgc3RpbGwgbmVlZCB0byBnbyB1cGRhdGUgTUFJTlRBSU5FUlMuCj4KPiBJIHNlZSBt
eSBuaXRzIHdlcmUgZml4ZWQgbGlrZSBJIHdhbnRlZCB0aGVtLCBhbmQgaXQncyBub3cgbW9zdGx5
IGEKPiBtaXggb2Ygc29jIGFuZCB2ZW5kb3IgbmFtZXMgdGhhdCBtYWtlIHNlbnNlIHNvIGZyb20g
bXkgcG9pbnQgb2YgdmlldzoKPiBBY2tlZC1ieTogTGludXMgV2FsbGVpaiA8bGludXMud2FsbGVp
akBsaW5hcm8ub3JnPgo+Cj4gTkI6Cj4gYXJjaC9hcm02NC9ib290L2R0cy9hcm0kCj4gdmV4cHJl
c3MtdjJtLXJzMS5kdHNpIC0+IC4uLy4uLy4uLy4uL2FybS9ib290L2R0cy92ZXhwcmVzcy12Mm0t
cnMxLmR0c2kKPgo+IFRoaXMgc3RpbGwgd29ya3MgYWZ0ZXIgdGhlIHNjcmlwdCwgeWVzPwoKWWVz
LCBiZWNhdXNlIGluIHRoZSBzY3JpcHQgSSBkbzoKCmdpdCBncmVwIC1sIC1GICJ2ZXhwcmVzcy12
Mm0tcnMxIiBhcmNoL2FybTY0L2Jvb3QvZHRzIHwgeGFyZ3MgcGVybCAtcAotaSAtZSAicy92ZXhw
cmVzcy12Mm0tcnMxL2FybVwvYXJtXC92ZXhwcmVzcy12Mm0tcnMxLyIKClJvYgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=

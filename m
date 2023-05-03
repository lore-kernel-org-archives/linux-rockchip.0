Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30C1EC77B75
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 May 2023 01:17:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=stu/RU21QlRvE7rdQZZbp/sUzBlQKOzeM4rrVaW/Gak=; b=ocHXbVJkEgiF9W
	bEOjyonFY6p+ug0vFffsmcjj8a8Fuuy3Ugo1m3o0zggQGfOl7XIfp8RwILApIeiCjDhJUECKPXNm1
	43LiAooVl7Ut693pYInhOzUidhdFEwKhG2ScM6L6RD2lP5htQcgoiUXlkwK8QOhBsm519mIWDRxJ8
	rtENyoGbKyj/zx5ce8i5EEkHiDxOBmHppHeM+z3Z4qFhu9nKjNGz3E0Ei0DojcthUyM44g71NFqQq
	lV2sqchhC+fmJnOfSLkXkDgidsSgNhYRJHv4ZE2JOYnozzzRB3XWIeI/JJCKF940xOk+urS4YpoYZ
	rQJA8ngOH5Ixw1vxQ+VA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pu17j-00327f-0b;
	Wed, 03 May 2023 01:17:39 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pu17d-003266-2q;
	Wed, 03 May 2023 01:17:35 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 36A89629F3;
	Wed,  3 May 2023 01:17:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0908AC4339E;
	Wed,  3 May 2023 01:17:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683076652;
	bh=hzNYaAPUaGLZ1v0sTCo4kr9f/IJ1faX5mnRj5TAeAKs=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=QMxxEJKiF/Xy/wpJ45M6Vv6cDRwnVgmz71oBe+yu+VPg0ZvwY64iyWw1oPr8JUNsE
	 0+NbSQmo02gKsS9daJssd0DmAziCO02D1v+rCR9/TCg9DRmRIzIHHDkEC5EBHq42cC
	 iZJESeEwfq5QYqjYTczZHNt4kDZ5i7w0VJs1GJao3IU+1auKFA2BykAAE5UNE3BtXQ
	 aC4MLEcHqVgH0EAnYnpuUjEij93YdOr8eL89gHougN+yaCFsiDwKF73MyP/ntMVVx7
	 Z0tyl6sVDb0DoXY+oCDA68mFlGLNWyOY++rZwaVyScUlpxomtUHulQA3qlYqFCh+jI
	 ZWyTVi+oNLAKA==
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-4f00c33c3d6so5800657e87.2;
        Tue, 02 May 2023 18:17:31 -0700 (PDT)
X-Gm-Message-State: AC+VfDwhLxwaKwBfpEpG1OakUsdXtk/xN7VmqPEWkzxCR7fWpMptm6eg
	d0GaY7qXdruEpDRs6OXBRQyCjxP+HWubyplk1A==
X-Google-Smtp-Source: ACHHUZ55e+9yQPQvr0rpIhj0RbrnT2KB6aoc0WjPIM2H1fvT2bLnAwsd1znjwXMKc8qD22lf5irJ3k12RJA0LJgPE6Y=
X-Received: by 2002:a05:6512:964:b0:4ea:c730:aabe with SMTP id
 v4-20020a056512096400b004eac730aabemr592385lft.20.1683076649996; Tue, 02 May
 2023 18:17:29 -0700 (PDT)
MIME-Version: 1.0
References: <20220328000915.15041-1-ansuelsmth@gmail.com> <85eb14ec-f465-7447-ad77-a3dabc666f47@kernel.org>
 <YkKRYnN84D9VZhGj@Ansuel-xps.localdomain> <CAL_Jsq+RQQ-ADMxLPUFwk6S6kGmb6oNDy4k52fnU0EtbUvqmSA@mail.gmail.com>
 <CAMuHMdWNTE48MFy6fqxAsfMWz9b6E7dVNXtXtESP95sxk2PGwA@mail.gmail.com>
 <CAL_JsqJthKTm8bhRF2B=ae1tvtPeYYXx_Tm76qQtSwLtH5C6VA@mail.gmail.com>
 <720a2829-b6b5-411c-ac69-9a53e881f48d@app.fastmail.com> <CAL_JsqKCtmkwzKa01gyG65fH8ye6R3KhR41PJbJhOJ4X9j=znA@mail.gmail.com>
 <bce93654-fc36-3d12-282d-76fafb8f51ce@linaro.org>
In-Reply-To: <bce93654-fc36-3d12-282d-76fafb8f51ce@linaro.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 2 May 2023 20:17:17 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJXd_EpOQwwNEAn25mzFfkhEvqzur6ui5Ca+dbt2kA8-Q@mail.gmail.com>
Message-ID: <CAL_JsqJXd_EpOQwwNEAn25mzFfkhEvqzur6ui5Ca+dbt2kA8-Q@mail.gmail.com>
Subject: Re: [RFC PATCH 0/1] Categorize ARM dts directory
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
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
X-CRM114-CacheID: sfid-20230502_181734_004115_7BDE411B 
X-CRM114-Status: GOOD (  32.22  )
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

T24gVHVlLCBNYXkgMiwgMjAyMyBhdCA1OjUy4oCvUE0gRG1pdHJ5IEJhcnlzaGtvdgo8ZG1pdHJ5
LmJhcnlzaGtvdkBsaW5hcm8ub3JnPiB3cm90ZToKPgo+IE9uIDAyLzA1LzIwMjMgMjI6NDAsIFJv
YiBIZXJyaW5nIHdyb3RlOgo+ID4gT24gVHVlLCBNYXkgMiwgMjAyMyBhdCAzOjE14oCvQU0gQXJu
ZCBCZXJnbWFubiA8YXJuZEBhcm5kYi5kZT4gd3JvdGU6Cj4gPj4KPiA+PiBPbiBUdWUsIEFwciAy
NSwgMjAyMywgYXQgMTc6NTcsIFJvYiBIZXJyaW5nIHdyb3RlOgo+ID4+PiBPbiBUdWUsIEFwciAy
NSwgMjAyMyBhdCAyOjI44oCvQU0gR2VlcnQgVXl0dGVyaG9ldmVuIDxnZWVydEBsaW51eC1tNjhr
Lm9yZz4gd3JvdGU6Cj4gPj4+Cj4gPj4+PiBEb2VzIHlvdXIgc2NyaXB0IGFsc28gY2F0ZXIgZm9y
IC5kdHMgZmlsZXMgbm90IG1hdGNoaW5nIGFueSBwYXR0ZXJuLAo+ID4+Pj4gYnV0IGluY2x1ZGlu
ZyBhIC5kdHNpIGZpbGUgdGhhdCBkb2VzIG1hdGNoIGEgcGF0dGVybj8KPiA+Pj4KPiA+Pj4gSSBh
c3N1bWUgSSBidWlsdCBldmVyeXRoaW5nIGFmdGVyIG1vdmluZywgYnV0IG1heWJlIG5vdC4uLgo+
ID4+Pgo+ID4+PiBUaGF0J3MgYWxsIGp1c3QgImRldGFpbHMiLiBGaXJzdCwgd2UgbmVlZCBhZ3Jl
ZW1lbnQgb24gYSkgbW92aW5nCj4gPj4+IHRoaW5ncyB0byBzdWJkaXJzIGFuZCBiKSBkb2luZyBp
dCAxLWJ5LTEgb3IgYWxsIGF0IG9uY2UuIFNvIGZhciB3ZSd2ZQo+ID4+PiBiZWVuIHN0dWNrIG9u
IGEpIGZvciBiZWluZyAndG9vIG11Y2ggY2h1cm4nLgo+ID4+Cj4gPj4gU29ycnkgZm9yIG1pc3Np
bmcgbW9zdCBvZiB0aGUgZGlzY3Vzc2lvbiBsYXN0IHdlZWsuIFRoZSBzY3JpcHQgc291bmRzCj4g
Pj4gZmluZSB0byBtZSwgdGhlIG9ubHkgcmVhc29uIEkgZGlkbid0IHdhbnQgdG8gZG8gdGhpcyBp
biB0aGUgcGFzdCBpcyB0aGF0Cj4gPj4gd2UgaGFkIHRoZSBwbGFuIHRvIG1vdmUgcGxhdGZvcm1z
IG91dCBvZiB0aGUga2VybmVsIHRyZWUgdG8gYW4gZXh0ZXJuYWwKPiA+PiByZXBvc2l0b3J5IGFu
ZCBJIHdhbnRlZCB0byBkbyB0aGlzIHBsYXRmb3JtIGF0IGEgdGltZSBhbmQgYWxzbyBvbmx5IG1v
dmUKPiA+PiBlYWNoIG9uZSBvbmNlLiBJIGRvbid0IHRoaW5rIHRoYXQgaXMgZ29pbmcgdG8gaGFw
cGVuIGFueXRpbWUgc29vbiBub3csCj4gPj4gc28gbGV0J3MganVzdCBkbyB5b3VyIHNjcmlwdC4K
PiA+Pgo+ID4+IENhbiB5b3Ugc2VuZCBtZSB0aGUgc2NyaXB0IGFuZC9vciBhIHB1bGwgcmVxdWVz
dCBvZiB0aGUgcmVzdWx0aW5nCj4gPj4gdHJlZSBiYXNlZCBvbiBteSBzb2MvZHQgYnJhbmNoPyBF
dmVyeXRoaW5nIGlzIG1lcmdlZCB1cHN0cmVhbSwKPiA+PiBhbmQgSSB0aGluayBnaXQtbWVyZ2Ug
d291bGQgaGFuZGxlIHRoZSByZW1haW5pbmcgbWVyZ2VzIHdpdGggYW55Cj4gPj4gb3RoZXIgY2hh
bmdlcyBpbiBtYWlubGluZS4KPiA+Cj4gPiBJJ3ZlIGR1c3RlZCBvZmYgbXkgc2NyaXB0IGFuZCBt
YWRlIGEgYnJhbmNoWzFdIHdpdGggdGhlIHJlc3VsdC4KPiA+IFRoZXJlJ3MganVzdCBhIGNvdXBs
ZSBvZiBmaXhlcyBuZWVkZWQgYWZ0ZXIgdGhlIHNjcmlwdCBpcyBydW4gKHNlZSB0aGUKPiA+IHRv
cCBjb21taXQpLiBUaGUgY3Jvc3MgYXJjaCBpbmNsdWRlcyBhcmUgYWxsIGZpeGVkIHVwIGJ5IHRo
ZSBzY3JpcHQuCj4gPiBkdGJzX2luc3RhbGwgbWFpbnRhaW5zIGEgZmxhdCBpbnN0YWxsLiBJIGNv
bXBhcmVkIHRoZSBudW1iZXIgb2YgLmR0YnMKPiA+IGJlZm9yZSBhbmQgYWZ0ZXIgdG8gY2hlY2sg
dGhlIHNjcmlwdC4KPiA+Cj4gPiBJIHRoaW5rIHRoZSBvbmx5IGlzc3VlIHJlbWFpbmluZyBpcyBm
aW5hbGl6aW5nIHRoZSBtYXBwaW5nIG9mCj4gPiBwbGF0Zm9ybXMgdG8gc3ViZGlycy4gV2hhdCBJ
IGhhdmUgY3VycmVudGx5IGlzIGEgbWl4dHVyZSBvZiBTb0MKPiA+IGZhbWlsaWVzIGFuZCB2ZW5k
b3JzLiBUaGUgbW9zdCBub3RhYmxlIGFyZSBhbGwgdGhlIEZyZWVzY2FsZS9OWFAKPiA+IHBsYXRm
b3JtcywgcHhhLCBzb2NmcGdhLCBhbmQgc3RtMzIuIEl0J3Mgbm90IGNvbnNpc3RlbnQgd2l0aCBh
cm02NAo+ID4gZWl0aGVyLiBPbmNlIHRoYXQncyBmaW5hbGl6ZWQsIEkgc3RpbGwgbmVlZCB0byBn
byB1cGRhdGUgTUFJTlRBSU5FUlMuCj4gPgo+ID4gSGVyZSdzIHRoZSBjdXJyZW50IG1hcHBpbmc6
Cj4gPgo+ID4gdmVuZG9yX21hcCA9IHsKPiA+ICAgICAgJ2FscGhhc2NhbGUnIDogJ2FscGhhc2Nh
bGUnLAo+ID4gICAgICAnYWxwaW5lJyA6ICdhbHBpbmUnLAo+ID4gICAgICAnYXJ0cGVjJyA6ICdh
eGlzJywKPiA+ICAgICAgJ2F4bScgOiAnbHNpJywKPiA+ICAgICAgJ2N4OScgOiAnY254dCcsCj4g
PiAgICAgICdlY3gnIDogJ2NhbHhlZGEnLAo+ID4gICAgICAnaGlnaGJhbmsnIDogJ2NhbHhlZGEn
LAo+ID4gICAgICAnZXA3JyA6ICdjaXJydXMnLAo+ID4gICAgICAnbXhzJzogJ214cycsCj4gPiAg
ICAgICdpbXgyMyc6ICdteHMnLAo+ID4gICAgICAnaW14MjgnOiAnbXhzJywKPiA+ICAgICAgJ3N1
bicgOiAnYWxsd2lubmVyJywKPiA+ICAgICAgJ2lteCc6ICdpbXgnLAo+ID4gICAgICAnZTYnIDog
J2lteCcsCj4gPiAgICAgICdlNycgOiAnaW14JywKPiA+ICAgICAgJ21iYTYnIDogJ2lteCcsCj4g
PiAgICAgICdscyc6ICdmc2wnLAo+ID4gICAgICAndmYnOiAnZnNsJywKPiA+ICAgICAgJ3Fjb20n
OiAncWNvbScsCj4gPiAgICAgICdhbTMnIDogJ3RpJywKPiA+ICAgICAgJ2FtNCcgOiAndGknLAo+
ID4gICAgICAnYW01JyA6ICd0aScsCj4gPiAgICAgICdkcmEnIDogJ3RpJywKPiA+ICAgICAgJ2tl
eXN0b25lJyA6ICd0aScsCj4gPiAgICAgICdvbWFwJyA6ICd0aScsCj4gPiAgICAgICdjb21wdWxh
YicgOiAndGknLAo+ID4gICAgICAnbG9naWNwZCcgOiAndGknLAo+ID4gICAgICAnZWxwaWRhJyA6
ICd0aScsCj4gPiAgICAgICdtb3Rvcm9sYScgOiAndGknLAo+ID4gICAgICAndHdsJyA6ICd0aScs
Cj4gPiAgICAgICdkYScgOiAndGknLAo+ID4gICAgICAnZG0nIDogJ3RpJywKPiA+ICAgICAgJ25z
cGlyZScgOiAnbnNwaXJlJywKPiA+ICAgICAgJ2FybWFkYScgOiAnbWFydmVsbCcsCj4gPiAgICAg
ICdkb3ZlJyA6ICdtYXJ2ZWxsJywKPiA+ICAgICAgJ2tpcmt3b29kJyA6ICdtYXJ2ZWxsJywKPiA+
ICAgICAgJ29yaW9uJyA6ICdtYXJ2ZWxsJywKPiA+ICAgICAgJ212ZWJ1JyA6ICdtYXJ2ZWxsJywK
PiA+ICAgICAgJ21tcCcgOiAnbWFydmVsbCcsCj4gPiAgICAgICdiZXJsaW4nIDogJ2Jlcmxpbics
Cj4gPiAgICAgICdweGEyJyA6ICdweGEnLAo+ID4gICAgICAncHhhMycgOiAncHhhJywKPiA+ICAg
ICAgJ3B4YScgOiAnbWFydmVsbCcsCj4KPiBJJ2QgcXVlc3Rpb24gaWYgaXQgbWFrZXMgc2Vuc2Ug
dG8gc3BsaXQgdGhlIHB4YSBsaW5lLiBZZXMsIGl0IHdhcyBzb2xkCj4gYnkgSW50ZWwgdG8gTWFy
dmVsbCwgYnV0IElJUkMgdGhlIGRldmljZXMgc3RpbGwgaGFkIHNvbWUgaW5oZXJpdGFuY2UuCj4g
U28sIGlmIHdlIGhhdmUgdGhlICdweGEnIHN1YmRpciwgSSdkIG1vdmUgTWFydmVsbCBQWEFzIHRv
IHRoYXQgZGlyIHRvby4KCkkgdGhpbmsgSSBwcm9iYWJseSBzcGxpdCBpdCBiZWNhdXNlIGl0IHdh
cyBkaWZmZXJlbnQgbWFpbnRhaW5lcnMuClRob3VnaCBpdCBkb2Vzbid0IGxvb2sgbGlrZSBweGEx
Njggb3IgcHhhOTEwIGhhdmUgYW55IG1haW50YWluZXIuIFRoZXkKYXJlIGEgbWl4dHVyZSBvZiBw
eGEgYW5kIG1tcCBJIHRoaW5rLgoKUm9iCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA24BC77B78
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 May 2023 13:09:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pF69oYSuNErYAa7Mf+r4v8GPNsO9+QQfjBH2ZM28LmU=; b=YUUHK/qoERAWiL
	hszGfaA3VZ4z5cYXx7oKJOtmmOta6KNs053PUWZjgzYiSxdLa/H6BHlR4SluL6Fim3N9I/HHNqN1f
	nGByzv5OvsL+6JKMd+5imak1RHY7DBr/sEfw6qpitnc0Id4Qn+syUGd0DI3e106OentbjK72IIkPx
	N/FpCkBOAU4R9gHj8nN10dJySNx/NYv83KsQOX1Am4wWCkJ5xfkwHd6ReW8sk2TfdNM5Q0vK1I0hP
	1+IjpdlnwVjuNSBROn0ZqgfXmOJ1C6RLmTRoRXRt7IsT23Rb+Phn2udT7W781nM0eE2Q5UcoL5nvR
	E2pb1fAHFfUOUIPQcORg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puCEI-004e7B-2w;
	Wed, 03 May 2023 13:09:10 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puCED-004e5O-2B;
	Wed, 03 May 2023 13:09:06 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 6E52A62D5F;
	Wed,  3 May 2023 13:09:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CBBA1C433A4;
	Wed,  3 May 2023 13:09:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683119343;
	bh=5Xok1b5Bon4dNBT/EG9uKl/6cvSusA5y9BN7upmEzC8=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=glYqs7G41Oe7Vr2QNmHMivzZ6SgZQ51erxLwa4NoyJylHIWGgJZiJbFOEF9eZRS9n
	 xWx6cluWIvaqTZt7zXRHgIkq6tJbMsx2DRAeJtYjsXE4g6fbmacJoLd1zt/7Kc+RNb
	 DVYTcfIMk4llzEHHC0AIYjcc1NqABxKW5it0P7I3y/6ACXPplEVw9mnPneYwqWJE1j
	 DXf0Ve1xZPIJYMX1EQqZ/49QrXBsnJubhquY8wuE6I2y8dSs6L+d1Z35PcqDp/q7zl
	 io5DshylXLfwwhBVdAWKtYrKz5bhQuXIbmxPDl7QiyFIMDTq/uAziVDre8vjyLHGtq
	 jmFJ8ehjTEdAg==
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2a8c30ac7e3so51391601fa.1;
        Wed, 03 May 2023 06:09:03 -0700 (PDT)
X-Gm-Message-State: AC+VfDyqfZW79pXltqUD2yCl8FsZ+0LgvjRQAPE1zzI+wn6kzOrVldl3
	WHZMi9JwlH32sTvFFbTxzsmWDZH0jYlCXkG2mg==
X-Google-Smtp-Source: ACHHUZ50B+ONgazRTst79ZMphnWydxujQ+xpsmD1oxBiJc6OIwSZRmXeOONoaPS4VdIBDlX9Htpoiog7d0wWQm74E6U=
X-Received: by 2002:a2e:80ca:0:b0:2a5:f82e:e2a6 with SMTP id
 r10-20020a2e80ca000000b002a5f82ee2a6mr239ljg.47.1683119341121; Wed, 03 May
 2023 06:09:01 -0700 (PDT)
MIME-Version: 1.0
References: <20220328000915.15041-1-ansuelsmth@gmail.com> <85eb14ec-f465-7447-ad77-a3dabc666f47@kernel.org>
 <YkKRYnN84D9VZhGj@Ansuel-xps.localdomain> <CAL_Jsq+RQQ-ADMxLPUFwk6S6kGmb6oNDy4k52fnU0EtbUvqmSA@mail.gmail.com>
 <CAMuHMdWNTE48MFy6fqxAsfMWz9b6E7dVNXtXtESP95sxk2PGwA@mail.gmail.com>
 <CAL_JsqJthKTm8bhRF2B=ae1tvtPeYYXx_Tm76qQtSwLtH5C6VA@mail.gmail.com>
 <720a2829-b6b5-411c-ac69-9a53e881f48d@app.fastmail.com> <CAL_JsqKCtmkwzKa01gyG65fH8ye6R3KhR41PJbJhOJ4X9j=znA@mail.gmail.com>
 <99b49e6b-e963-415a-a2c9-72505087833c@app.fastmail.com>
In-Reply-To: <99b49e6b-e963-415a-a2c9-72505087833c@app.fastmail.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Wed, 3 May 2023 08:08:48 -0500
X-Gmail-Original-Message-ID: <CAL_JsqL-WMNxHrgCzn=LfH6gpE_Yb3uRwo97ssHPoZenK3CEeQ@mail.gmail.com>
Message-ID: <CAL_JsqL-WMNxHrgCzn=LfH6gpE_Yb3uRwo97ssHPoZenK3CEeQ@mail.gmail.com>
Subject: Re: [RFC PATCH 0/1] Categorize ARM dts directory
To: Arnd Bergmann <arnd@arndb.de>
Cc: Geert Uytterhoeven <geert@linux-m68k.org>, Olof Johansson <olof@lixom.net>, 
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
X-CRM114-CacheID: sfid-20230503_060905_789652_EC75F56E 
X-CRM114-Status: GOOD (  22.11  )
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

T24gV2VkLCBNYXkgMywgMjAyMyBhdCA2OjAy4oCvQU0gQXJuZCBCZXJnbWFubiA8YXJuZEBhcm5k
Yi5kZT4gd3JvdGU6Cj4KPiBPbiBUdWUsIE1heSAyLCAyMDIzLCBhdCAyMTo0MCwgUm9iIEhlcnJp
bmcgd3JvdGU6Cj4gPiBPbiBUdWUsIE1heSAyLCAyMDIzIGF0IDM6MTXigK9BTSBBcm5kIEJlcmdt
YW5uIDxhcm5kQGFybmRiLmRlPiB3cm90ZToKPgo+ID4gdmVuZG9yX21hcCA9IHsKPiA+ICAgICAn
YWxwaGFzY2FsZScgOiAnYWxwaGFzY2FsZScsCj4gPiAgICAgJ2FscGluZScgOiAnYWxwaW5lJywK
Pgo+IEkgd291bGQgbWFrZSB0aGlzIG9uZSAnYW1hem9uJyBpZiB3ZSBnbyB3aXRoIGN1cnJlbnQg
bWFudWZhY3R1cmVycy4KPgo+ID4gICAgICduc3BpcmUnIDogJ25zcGlyZScsCj4KPiBuc3BpcmUg
aXMgdGhlIG5hbWUgb2YgdGhlIGVuZC11c2VyIHByb2R1Y3QsIHNvIHRoYXQgZG9lc24ndCBxdWl0
ZQo+IGZpdC4gVGhlIFNvQyB3YXMgYXBwYXJlbnRseSBhbiBMU0kgbG9naWMgWmV2aW8sIHdoaWNo
IGlzIG5vdyBvd25lZAo+IGJ5IEJyb2FkY29tLgoKSSdtIGluY2xpbmVkIHRvIGxlYXZlIGl0LiBJ
IHB1dCBpdCBpbiB0aGUgY2F0ZWdvcnkgb2YgYSBvbmUtb2ZmIHRoaW5nCnRoYXQncyBub3Qgc2hh
cmluZyBhbnl0aGluZwoKPiA+ICAgICAnbXZlYnUnIDogJ21hcnZlbGwnLAo+ID4gICAgICdtbXAn
IDogJ21hcnZlbGwnLAo+ID4gICAgICdiZXJsaW4nIDogJ2JlcmxpbicsCj4KPiBXaGlsZSBiZXJs
aW4gaXMgcmVsYXRlZCB0byBweGEvbW1wLCB0aGlzIG9uZSBpcyBub3cgb3duZWQKPiBieSBTeW5h
cHRpY3MsIGFuZCB0aGUgNjQtYml0IHZlcnNpb25zIGFyZSBhbHJlYWR5IGluIHRoZQo+IHN5bmFw
dGljcyBzdWJkaXIsIHNvIEknZCBnbyB3aXRoIHRlaCBzYW1lIGhlcmUuCj4KPiA+ICAgICAnb3Bl
bmJtYycgOiAnYXNwZWVkJywKPiA+ICAgICAnZW43JyA6ICdhaXJvaGEnLAo+Cj4gYWlyb2hhIGlz
IGEgc2VwYXJhdGUgY29tcGFueSBub3csIGJ1dCB0aGUgaGFyZHdhcmUgaXMgc3RpbGwKPiBzaGFy
ZWQgd2l0aCBtZWRpYXRlaywgc28gd2UgY291bGQgY29uc2lkZXIgbHVtcGluZyBpdCBpbnRvCj4g
dGhhdCBzdWJkaXIsIGJ1dCBhIHNlcGFyYXRlIG9uZSBtYXkgYmUgYmV0dGVyIGxvbmctdGVybS4K
Pgo+ID4gICAgICdnZW1pbmknIDogJ2dlbWluaScsCj4KPiBUaGlzIG9uZSBpcyBhbHNvIGEgcHJv
ZHVjdCBuYW1lLCBub3QgYSBjb21wYW55LiBBcHBhcmVudGx5LAo+IGdlbWluaSB3YXMgb3JpZ2lu
YWxseSBtYWRlIGJ5IFN0b3JtIFNlbWljb25kdWN0b3IsIGFuZCB0aGVuCj4gYnkgQ29ydGluYSwg
d2hpY2ggd2FzIHN1YnNlcXVlbnRseSBhY3F1aXJlZCBieSBJbnBoaSwgYW5kIHRoYXQgZW5kZWQK
PiB1cCBpbiBNYXJ2ZWxsIGFmdGVyIHRoZSBwcm9kdWN0IHdhcyBhbHJlYWR5IGRpc2NvbnRpbnVl
ZC4KPgo+IE91dCBvZiB0aGUgZm91ciwgSSdkIHByb2JhYmx5IGdvIHdpdGggJ2NvcnRpbmEnIGFz
IHRoZQo+IGRpcmVjdG9yeSBuYW1lLgoKSSBoYWQgJ2NvcnRpbmEnIHByZXZpb3VzbHkuIExpbnVz
IHdhbnRlZCBnZW1pbmkuLi4KClJvYgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=

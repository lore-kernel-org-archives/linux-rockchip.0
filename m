Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58DADCD612F
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Oct 2023 20:07:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eVsDCnJbtK8h6v2vdfSL/6jr0oZvx94ycpgngYOgWiI=; b=wBb2RwEd2Rnl2S
	cVnnaPcOETBOCeIM2M46VAvyK838pdNSf/aMU94qTGJ5EP6jeOGTUXZPh6OGxJXQOYl8YU1MfCEb5
	hU7EkDQGrbk/aJdGZi/2GEVjlmn/SvmNbSt6zJMBBboaPs42uCxRuxaXz8Z9FefCFEq982LsLgtza
	aUbfMR3Lps11PEKWpzyziUWDO8YqFIzEvQF/GqMEuZfRv9MhP2BYiivZKCrD2LUw3ILw2AfXrRGQh
	D7kdRbai+TWeh8tgalZDp7SIGUxUBk4V/WIZAREbCxQI6CXn/W29CtPHgRQvFdQxUdhW2ywMpqpdM
	Vx7DDiMpywfwuw8+DWOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qpwXM-00BXmK-2H;
	Mon, 09 Oct 2023 20:07:32 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qpwXK-00BXlj-07;
	Mon, 09 Oct 2023 20:07:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 475026136E;
	Mon,  9 Oct 2023 20:07:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EAEE6C433C8;
	Mon,  9 Oct 2023 20:07:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696882049;
	bh=y8nYBzb8SPqMzIHYyddRCAQEALLJLFzpyJS1VbgJt7c=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=gAgicaXsGMetOX+2cAzCr1ZDf9orx8u/GJQL3F4rcPLpHLvzOR/PGXNfn7SOQ9vQ9
	 JLTkHDdeu1L0cnPTR3rKed/bs7/Dgf5lT5zU6208jUc8St9qjZGxg+XJXQa76b+iLB
	 KNXgmG4mXqMVOkTmp3g4exxMpK5EDF6QdNhLjE2L4ZeAuDS5ZOUSJwxQEJB604w4dr
	 eaeeqBVWF9/1vhGnYWa3tbEKbsop3St/bOU1VQR91sa6loMesDbXpia5KJ/2XCz4Jv
	 Nf6jIoJfry+AuRb2HALqYX6Pr3kLLMRdO2JJbaWriDNUOtZvv6Vmg46cY9mxdS+dtf
	 AcewgnPLpx/gg==
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2c3c661f1a8so39633891fa.0;
        Mon, 09 Oct 2023 13:07:28 -0700 (PDT)
X-Gm-Message-State: AOJu0YxEkOPOJjt5qIiWMULwJ5ve89qooFpBAQU7raMy+nmCSS7U0aG8
	AoDx/xE2QUtBL6/E3QvXpLRD/CkcpkyxNAai8Q==
X-Google-Smtp-Source: AGHT+IHKjUyuFKZUV3KbEld3Xl4R229DZi+wcFRkw3EpsoO+IoRrvgDyFFIOJZHsBOVYGJmnkIhjkpG+JqQT70tktSQ=
X-Received: by 2002:a05:6512:e96:b0:500:b3fe:916e with SMTP id
 bi22-20020a0565120e9600b00500b3fe916emr18579107lfb.2.1696882047070; Mon, 09
 Oct 2023 13:07:27 -0700 (PDT)
MIME-Version: 1.0
References: <20231009172923.2457844-21-robh@kernel.org> <20231009193032.y7vn2bnluqhrfmmy@pengutronix.de>
In-Reply-To: <20231009193032.y7vn2bnluqhrfmmy@pengutronix.de>
From: Rob Herring <robh@kernel.org>
Date: Mon, 9 Oct 2023 15:07:14 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKi8PXVqHgVxqMN+mbX8U-ZGsCMUFqbxmjeFmj1xKTrjw@mail.gmail.com>
Message-ID: <CAL_JsqKi8PXVqHgVxqMN+mbX8U-ZGsCMUFqbxmjeFmj1xKTrjw@mail.gmail.com>
Subject: Re: [PATCH] pwm: Use device_get_match_data()
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Thierry Reding <thierry.reding@gmail.com>, Heiko Stuebner <heiko@sntech.de>, linux-pwm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231009_130730_162775_7C93D1B0 
X-CRM114-Status: GOOD (  21.69  )
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

T24gTW9uLCBPY3QgOSwgMjAyMyBhdCAyOjMw4oCvUE0gVXdlIEtsZWluZS1Lw7ZuaWcKPHUua2xl
aW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4gd3JvdGU6Cj4KPiBPbiBNb24sIE9jdCAwOSwgMjAy
MyBhdCAxMjoyOToxNlBNIC0wNTAwLCBSb2IgSGVycmluZyB3cm90ZToKPiA+IFVzZSBwcmVmZXJy
ZWQgZGV2aWNlX2dldF9tYXRjaF9kYXRhKCkgaW5zdGVhZCBvZiBvZl9tYXRjaF9kZXZpY2UoKSB0
bwo+ID4gZ2V0IHRoZSBkcml2ZXIgbWF0Y2ggZGF0YS4gV2l0aCB0aGlzLCBhZGp1c3QgdGhlIGlu
Y2x1ZGVzIHRvIGV4cGxpY2l0bHkKPiA+IGluY2x1ZGUgdGhlIGNvcnJlY3QgaGVhZGVycy4KPiA+
Cj4gPiBTaWduZWQtb2ZmLWJ5OiBSb2IgSGVycmluZyA8cm9iaEBrZXJuZWwub3JnPgo+ID4gLS0t
Cj4gPiAgZHJpdmVycy9wd20vcHdtLWltZy5jICAgICAgfCA4ICsrLS0tLS0tCj4gPiAgZHJpdmVy
cy9wd20vcHdtLXJvY2tjaGlwLmMgfCA5ICsrLS0tLS0tLQo+ID4gIDIgZmlsZXMgY2hhbmdlZCwg
NCBpbnNlcnRpb25zKCspLCAxMyBkZWxldGlvbnMoLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9wd20vcHdtLWltZy5jIGIvZHJpdmVycy9wd20vcHdtLWltZy5jCj4gPiBpbmRleCAzMjZh
Zjg1ODg4ZTcuLmUzMmI1ZThjMjAzZCAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvcHdtL3B3bS1p
bWcuYwo+ID4gKysrIGIvZHJpdmVycy9wd20vcHdtLWltZy5jCj4gPiBAQCAtMTMsOSArMTMsOSBA
QAo+ID4gICNpbmNsdWRlIDxsaW51eC9tZmQvc3lzY29uLmg+Cj4gPiAgI2luY2x1ZGUgPGxpbnV4
L21vZHVsZS5oPgo+ID4gICNpbmNsdWRlIDxsaW51eC9vZi5oPgo+ID4gLSNpbmNsdWRlIDxsaW51
eC9vZl9kZXZpY2UuaD4KPiA+ICAjaW5jbHVkZSA8bGludXgvcGxhdGZvcm1fZGV2aWNlLmg+Cj4g
PiAgI2luY2x1ZGUgPGxpbnV4L3BtX3J1bnRpbWUuaD4KPiA+ICsjaW5jbHVkZSA8bGludXgvcHJv
cGVydHkuaD4KPiA+ICAjaW5jbHVkZSA8bGludXgvcHdtLmg+Cj4gPiAgI2luY2x1ZGUgPGxpbnV4
L3JlZ21hcC5oPgo+ID4gICNpbmNsdWRlIDxsaW51eC9zbGFiLmg+Cj4gPiBAQCAtMjYxLDcgKzI2
MSw2IEBAIHN0YXRpYyBpbnQgaW1nX3B3bV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpw
ZGV2KQo+ID4gICAgICAgdTY0IHZhbDsKPiA+ICAgICAgIHVuc2lnbmVkIGxvbmcgY2xrX3JhdGU7
Cj4gPiAgICAgICBzdHJ1Y3QgaW1nX3B3bV9jaGlwICppbWdjaGlwOwo+ID4gLSAgICAgY29uc3Qg
c3RydWN0IG9mX2RldmljZV9pZCAqb2ZfZGV2X2lkOwo+ID4KPiA+ICAgICAgIGltZ2NoaXAgPSBk
ZXZtX2t6YWxsb2MoJnBkZXYtPmRldiwgc2l6ZW9mKCppbWdjaGlwKSwgR0ZQX0tFUk5FTCk7Cj4g
PiAgICAgICBpZiAoIWltZ2NoaXApCj4gPiBAQCAtMjczLDEwICsyNzIsNyBAQCBzdGF0aWMgaW50
IGltZ19wd21fcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiA+ICAgICAgIGlm
IChJU19FUlIoaW1nY2hpcC0+YmFzZSkpCj4gPiAgICAgICAgICAgICAgIHJldHVybiBQVFJfRVJS
KGltZ2NoaXAtPmJhc2UpOwo+ID4KPiA+IC0gICAgIG9mX2Rldl9pZCA9IG9mX21hdGNoX2Rldmlj
ZShpbWdfcHdtX29mX21hdGNoLCAmcGRldi0+ZGV2KTsKPiA+IC0gICAgIGlmICghb2ZfZGV2X2lk
KQo+ID4gLSAgICAgICAgICAgICByZXR1cm4gLUVOT0RFVjsKPiA+IC0gICAgIGltZ2NoaXAtPmRh
dGEgPSBvZl9kZXZfaWQtPmRhdGE7Cj4gPiArICAgICBpbWdjaGlwLT5kYXRhID0gZGV2aWNlX2dl
dF9tYXRjaF9kYXRhKCZwZGV2LT5kZXYpOwo+Cj4gSXMgdGhpcyBhIHNlbWFudGljYWwgY2hhbmdl
PyBJZiB0aGVyZSBpcyBhIG1hdGNoLCB0aGUgY29kZSBpcwo+IGVxdWl2YWxlbnQuIE90aGVyd2lz
ZSBpdCB3YXM6Cj4KPiAgICAgICAgIHJldHVybiAtRU5PREVWOwo+Cj4gYmVmb3JlIGFuZCBub3cg
aXQncwo+Cj4gICAgICAgICBpbWdjaGlwLT5kYXRhID0gTlVMTDsKPgo+IGlzbid0IGl0PwoKQXMg
dGhpcyBkcml2ZXIgb25seSBkb2VzIERUIG1hdGNoaW5nLCB0aGVuIG9mX21hdGNoX2RldmljZSB3
aWxsIG5ldmVyCnJldHVybiBOVUxMIGlmIHdlJ3ZlIGdvdHRlbiB0byBwcm9iZSgpLgoKV2lsbCB1
cGRhdGUgdGhlIGNvbW1pdCBsb2cuCgpSb2IKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK

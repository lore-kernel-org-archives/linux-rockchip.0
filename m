Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68605C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 May 2022 12:09:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q+9gr/WJDFiyZyGEfWXuCCHdyW0KjtlynFo/FIKfUvk=; b=igKwJus+io1H45
	w1RaGV404jjcuF0SFiRACV+jshoGs1YDW6Rzd2lRh7Rj4XiQLK4UYIqL/2T/FqU1ADeAskQrxEFpk
	2LLvmc3kmLTaBaCQD2c6bUyxfSSPGoYfxnKgDZ+BdDuSfxahm2kY7jlDJkXgH3oogxEOjqlqCghIV
	pGJPCFzzcB8vnV8CRIibJ5v/6DCUXBdwOKlVdGwI4+mc2x/g9GMzHMp2EDe6pO69GDkwCtssAY8dh
	1Z7Qbtx+I2x6UOcS0D6YIrn/QNaeLmVewbufTNJCx7gm5APw24QPMkhUEzBxHlKaBRAsievN6xau6
	6ukZNXWdV4APZjMfQmZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1noOg1-001ld3-Cm; Tue, 10 May 2022 12:09:17 +0000
Received: from mail-yw1-x1130.google.com ([2607:f8b0:4864:20::1130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1noOfp-001lVb-F8; Tue, 10 May 2022 12:09:06 +0000
Received: by mail-yw1-x1130.google.com with SMTP id
 00721157ae682-2ef5380669cso176815417b3.9; 
 Tue, 10 May 2022 05:08:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=j0oL9+kBsnLy6C0ogmrfSuIg/MzgC7W4K7D/KPBvz1A=;
 b=cWQC53+eDRuJuIWv4FF8BHQ+cdDHd6IiQAsbBqM657B9Zx9tNFCkWMYo4mMD/X9iVb
 POhpufVfVv5IpatIIDMTN5bnB1p2R9u5BvWkxlgaXKePLxFlJuehqC7k1N+JaE2d8957
 dJivn2IZxYXCm3Y4v9Ew/SmUt76aj7vFnpL8hCY04rb0XAFS4hYrmXk7k6H7poRkH61l
 +hTRAZLjpXC/0WTmDFC9swbSR2dOC9BTJdFJ6Eff5LQXfuaHzoK2XVu6izCwVlbCwday
 wM6kX1jFpGfAHwjNDMjKXXWWN77JsJ4cXhC/F8JePYd9FM5J8wzLiYpGirfcPjkb7Fx0
 h3Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=j0oL9+kBsnLy6C0ogmrfSuIg/MzgC7W4K7D/KPBvz1A=;
 b=XIumCIhcIMkfNvQ30lH0gIzEA9vljq/POkwtFBeHgcuUXPV8KmkSRcRYOG/7Tr2hZk
 +OupnzGH0s/kACC2vig/SEN9s7cElIledFumgeor3p+9A8ANfmegnMAHe6OvVhGejWeg
 EX2vs/Hq9b5Yv1r9HKI0pGVuaYvnTRjLq7cULDdtP1aBfShSASEtM+RsAAGBoCz8Owcf
 NdKPOsb+WrFZTyc9Lg2Bz4nrPG8jhM5dVDtP49nUG4oEFAp5nMbPeVsoElXZAcTtOgLI
 w8o1+98IFB+6hFWv+Yoc7daXKIrcDyStANOkoKqO5HPebUT/I27GrvYM8JvxnjbowXDF
 fxYg==
X-Gm-Message-State: AOAM533DAaXhBy3nHloWrJdT4cWCodFKUbiKDTFcvoYmDna6anD9quSy
 TF/O5WIGUR+B/nQB5w3ezJVV8UrJh66gkluBH3A=
X-Google-Smtp-Source: ABdhPJwRTg7zxeefA+5CviigWYq414sTputJite8EjfxYGbeZqI3BUj/2/O0TjezCb73L1ed25VP23S+1nthZLWKqDI=
X-Received: by 2002:a81:32c1:0:b0:2f7:cda8:50e1 with SMTP id
 y184-20020a8132c1000000b002f7cda850e1mr19252602ywy.519.1652184537294; Tue, 10
 May 2022 05:08:57 -0700 (PDT)
MIME-Version: 1.0
References: <20220422072841.2206452-1-s.hauer@pengutronix.de>
 <20220422072841.2206452-21-s.hauer@pengutronix.de>
 <A86359EC-5291-41BD-966E-EB7890644731@gmail.com>
 <CAMdYzYoFG3wCQaWXQNJd7mE20OMCj=ZeuewwZfaCJyoCBT-kQQ@mail.gmail.com>
 <0E6FE020-C95E-47CF-A9D6-AC3F2B2D334F@gmail.com>
 <CAMdYzYobfJ7WGN+UQ7t5e1Zy9knjfHLse8KzrGrHPfeMkkG0gw@mail.gmail.com>
 <9F2D8CFF-1EAE-4586-9EE9-82A9D67840BB@gmail.com>
 <CAMdYzYrz7DRj7F9hGaAPaTSiZkQ4eMNujAp8uPuE9geL6kAz4g@mail.gmail.com>
 <812AC0DB-A6D0-4DA3-BCDC-7743E8F61821@gmail.com>
 <CAMdYzYozewYUbM=Q+iJ2wdM5TrB6dGrjS6zh0qmVgWD4XPVR+Q@mail.gmail.com>
 <ABC61229-B851-4BB7-8B55-688F8A8D841A@gmail.com>
In-Reply-To: <ABC61229-B851-4BB7-8B55-688F8A8D841A@gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Tue, 10 May 2022 08:08:45 -0400
Message-ID: <CAMdYzYrsaNED+oMj+z2b4fK7pt32Qg=nXDk3SA0KFDDCJ2XY0g@mail.gmail.com>
Subject: Re: [PATCH v11 20/24] arm64: dts: rockchip: enable vop2 and hdmi tx
 on rock-3a
To: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Cc: Sascha Hauer <s.hauer@pengutronix.de>,
 Michael Riesch <michael.riesch@wolfvision.net>, 
 dri-devel@lists.freedesktop.org, 
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>, 
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Sandy Huang <hjc@rock-chips.com>, 
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 kernel test robot <lkp@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220510_050905_533752_2973F01C 
X-CRM114-Status: GOOD (  10.26  )
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

T24gVHVlLCBNYXkgMTAsIDIwMjIgYXQgMzoyOSBBTSBQaW90ciBPbmlzemN6dWsKPHBpb3RyLm9u
aXN6Y3p1a0BnbWFpbC5jb20+IHdyb3RlOgo+Cj4KPgo+ID4gV2lhZG9tb8WbxIcgbmFwaXNhbmEg
cHJ6ZXogUGV0ZXIgR2VpcyA8cGd3aXBlb3V0QGdtYWlsLmNvbT4gdyBkbml1IDEwLjA1LjIwMjIs
IG8gZ29kei4gMDM6MzU6Cj4gPgo+ID4gQ291bGQgeW91IGdyYWIgdGhlIGNsb2NrIHRyZWUgZnJv
bSAvc3lzL2tlcm5lbC9kZWJ1Zy9jbGsvY2xrX3N1bW1hcnkKPiA+IGZvciB0aGUgY2xrX2hkbWlf
Y2VjIHRyZWU/Cj4KPiBIZXJlIGl0IGlzOgo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgZW5hYmxlICBwcmVwYXJlICBwcm90ZWN0ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBkdXR5ICBoYXJkd2FyZQo+ICAgIGNsb2NrICAgICAgICAgICAgICAgICAgICAgICAgICBjb3Vu
dCAgICBjb3VudCAgICBjb3VudCAgICAgICAgcmF0ZSAgIGFjY3VyYWN5IHBoYXNlICBjeWNsZSAg
ICBlbmFibGUKPiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
Cj4gICAgY2xrX3J0YzMya19mcmFjICAgICAgICAgICAgICAgICAgIDEgICAgICAgIDEgICAgICAg
IDAgICAgICAgMzI3NjggICAgICAgICAgMCAgICAgMCAgNTAwMDAgICAgICAgICBZCj4gICAgICAg
IGNsa19ydGNfMzJrICAgICAgICAgICAgICAgICAgICAxICAgICAgICAxICAgICAgICAwICAgICAg
IDMyNzY4ICAgICAgICAgIDAgICAgIDAgIDUwMDAwICAgICAgICAgWQo+ICAgICAgICAgICBjbGtf
aGRtaV9jZWMgICAgICAgICAgICAgICAgMSAgICAgICAgMiAgICAgICAgMCAgICAgICAzMjc2OCAg
ICAgICAgICAwICAgICAwICA1MDAwMCAgICAgICAgIFkKCllvdSBhcmUgb24gdGhlIGNsa19ydGMz
MmtfZnJhYyB3aGljaCBpcyBhIGZyYWN0aW9uYWwgZGl2aWRlciB0aGF0IGlzCmZlZCBmcm9tIHRo
ZSAyNG0gY2xvY2suIFlvdXIgY2xvY2sgbGlrZWx5IGlzbid0IHRoZSBpc3N1ZSBoZXJlLiBJJ2QK
cmVjb21tZW5kIHNldHRpbmcgdXAgdGhlIGNlYy1ncGlvIG5vZGUgdG8gdmFsaWRhdGUgeW91ciBo
YXJkd2FyZQp3b3Jrcy4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK

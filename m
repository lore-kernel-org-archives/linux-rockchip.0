Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96C7CC531F9
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Jul 2026 22:14:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mg59ylCWybaVWccxuMzCaoVVlIi4GShWyvjWYFtit/A=; b=fXG70cuklCLqz/
	27i1gj+NsPd/R8Ma5FnH2ml2Iy0Wp0qxOGN1aLyHqc6o5eeIeZuK6tjnLQ8tWSm19vZ7o4uYcQCrR
	Cn+w5x0GStkLyBJQ7WWJTkv9UelrP0NEw64lIzU+ifEFbiXHJrGOzCP57fTCD2ffTHWibndFrQQ6Q
	nx3sFJ1ebhlLJIKSG8z7PbAujhqzXARHbeNo0emqoa8zVnVo7KvysmEDoX/p4EEdlvWqerCcQWCCq
	ED6gTbMG6sQV+3kgr3RGFmCxxyXPWV1Bzh4i/K2JmojtlhJUrdC9n6osFekS5AbgAOg+V7R1Vokry
	fjhkz4CHH0dxWDjJ1PpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnO9S-0000000HIG8-2KlE;
	Fri, 24 Jul 2026 22:13:54 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnO9R-0000000HIFg-16tO
	for linux-rockchip@lists.infradead.org;
	Fri, 24 Jul 2026 22:13:53 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 925E74370B
	for <linux-rockchip@lists.infradead.org>; Fri, 24 Jul 2026 22:13:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 772A01F00A3E
	for <linux-rockchip@lists.infradead.org>; Fri, 24 Jul 2026 22:13:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784931232;
	bh=aGH1/2toPHVIOQa+jK5UNhDmHBD0aRC5mQRDqAj3tYU=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc;
	b=FXgNPEcmyUE0kVHZ6djQa3bjOde7CyAnqB+vHKouxeko1ahVwngW3hfMx0OV/00uO
	 HTYf+nqinj93C3ZO4JmCihblplGsmzaB+1X09ObmzLe/jQAnsj5fmB7N2CXsQ4IDIp
	 oVBdD67TFc1L+Kzvxy80Kzz06UpCRGGeo55FJfDOPxX/fT91s1ciW6DdBjhpWxwtWB
	 4QYkwupmYgdeA3zTakFLJIqWH5qK/LX4dd2FDrFNMQ7hiM5YoSPTuIDU2C2IGTnu08
	 7rBLejOy04THX/qe59JSaPVVOIHTCzOsocUcOnIAUp3vOPi+f1p12IOeI9TOE9vcKh
	 E7SDad10HXS3A==
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-5aec201b582so930749e87.1
        for <linux-rockchip@lists.infradead.org>; Fri, 24 Jul 2026 15:13:52 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+RpylEMagAN8oTs6dC2LWHEdzPvqUoiVMPW5CXyPpUus6NiNLIdCj4GVlAMolvYTL19ke5F6pLZ52v9LdiolxQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzLbNwD4ZDJMkgayKI1Ho0BLQtYng35s3Z4k3xaequyD8bz3uak
	ozUFpTtNVbewHKIhs9Xo/ZSjTtcJAAGM2ruqBZphD73ekW8+di2cXy3v2aJs/OPvLn4eoS4lNvQ
	pCj2OfrvnSF2H1ns4AklOjY1JLrghJvI=
X-Received: by 2002:a05:6512:6699:10b0:5ae:bbd3:27e3 with SMTP id
 2adb3069b0e04-5b2b2e52e52mr1247043e87.5.1784931231294; Fri, 24 Jul 2026
 15:13:51 -0700 (PDT)
MIME-Version: 1.0
References: <20260717075918.1869879-1-hugo@ahdrone.com>
In-Reply-To: <20260717075918.1869879-1-hugo@ahdrone.com>
From: Linus Walleij <linusw@kernel.org>
Date: Sat, 25 Jul 2026 00:13:39 +0200
X-Gmail-Original-Message-ID: <CAD++jL=ASH7jx8YOL2Z5i4K8w4RQd4eWKEGtY1KRBwM-JDaw-g@mail.gmail.com>
X-Gm-Features: AUfX_mxV3lAJSNoJIi5Cr9GxwAU_Lyd6F8eQg8jRexuVpOK8BgTgzF15KgMIbjM
Message-ID: <CAD++jL=ASH7jx8YOL2Z5i4K8w4RQd4eWKEGtY1KRBwM-JDaw-g@mail.gmail.com>
Subject: Re: [PATCH 0/3] pinctrl: rockchip: add support for RK3308B SoC
To: hugo@ahdrone.com
Cc: Heiko Stuebner <heiko@sntech.de>, linux-gpio@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Dmitry Yashin <dmt.yashin@gmail.com>, 
	Luca Ceresoli <luca.ceresoli@bootlin.com>, Jonas Karlman <jonas@kwiboo.se>
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

T24gRnJpLCBKdWwgMTcsIDIwMjYgYXQgOTo1OeKAr0FNIEh1Z28gVkFMVElFUiA8aHVnb0BhaGRy
b25lLmNvbT4gd3JvdGU6Cgo+IFRoZSBSSzMzMDhCIGlzIGEgc2lsaWNvbiByZXZpc2lvbiBvZiB0
aGUgUkszMzA4IHdpdGggYSBkaWZmZXJlbnQgaW9tdXgKPiByZWdpc3RlciBsYXlvdXQ6IHNldmVy
YWwgcGlucyAoR1BJTzJfQTIsIEdQSU8yX0EzLCBHUElPMl9DMCwgR1BJTzNfQjIsCj4gR1BJTzNf
QjMpIGdhaW5lZCAzLWJpdCBtdXggZmllbGRzIGluIG5ldyBHUkYgcmVnaXN0ZXJzIHRoYXQgb3Zl
cnJpZGUKPiB0aGUgb3JpZ2luYWwgMi1iaXQgZmllbGRzLiBJIGJlbGlldmUgdGhlIGJvb3Rsb2Fk
ZXIgZW5hYmxlcyB0aGUgbmV3Cj4gcmVnaXN0ZXJzIHZpYSB0aGUgc2VsX3NyY19jdHJsIGJpdHMs
IGFmdGVyIHdoaWNoIHRoZSBrZXJuZWwncyB3cml0ZXMKPiB0byB0aGUgb2xkIGlvbXV4IHJlZ2lz
dGVycyBhcmUgc2lsZW50bHkgaWdub3JlZC4gV2hhdGV2ZXIgdGhlIGV4YWN0Cj4gbWVjaGFuaXNt
LCBvbiBSSzMzMDhCIGJvYXJkcyAoZS5nLiBjdXJyZW50IFJhZHhhIFJPQ0sgUGkgUyByZXZpc2lv
bnMpCj4gU1BJMSwgSTJDMyBhbmQgb3RoZXIgcGVyaXBoZXJhbHMgb24gdGhlIGFmZmVjdGVkIHBp
bnMgYXJlCj4gbm9uLWZ1bmN0aW9uYWwgd2l0aG91dCB0aGlzIHNlcmllcy4KPgo+IFRoaXMgaXMg
YSBjb250aW51YXRpb24gb2YgRG1pdHJ5IFlhc2hpbidzIHNlcmllcyBmcm9tIDIwMjQgWzFdLCB3
aGljaAo+IHdhcyBuZXZlciByZXN1Ym1pdHRlZCBhZnRlciByZXZpZXcgYW5kIGdvdCBkcm9wcGVk
LiBGb2xsb3dpbmcgdGhlCgpObyByZWFjdGlvbnMgZm9yIGEgd2VlayBzbyBwYXRjaGVzIGFwcGxp
ZWQuCgpBbnkgcmVtYWluaW5nIHNuYWdzIGNhbiBsaWtlbHkgYmUgZml4ZWQgd2l0aCBmb2xsb3ct
dXAgcGF0Y2hlcy4KCllvdXJzLApMaW51cyBXYWxsZWlqCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

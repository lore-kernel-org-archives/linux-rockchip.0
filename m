Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1058C43458
	for <linux-rockchip@archiver.kernel.org>; Sat, 11 Jul 2026 15:57:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MLkS0PxO1JYgiABVVNiPqqDb8txtRxTyUwN0lLGCXLs=; b=NODkrg7sehmC0s
	p0F031Eia7+xnw9xE+Iz6wpfn1c9LtGxca13GkySFWpea7c8Hem+Zlwhp0SqzdHdwNScVcToJGr9u
	/XKWg4OM2yZRYvng+APEJe7m+UZ8Hgiz+e80xTZKy7M6tmOqjrX+Gq2xDtsjAlZa/Dj1v2MCYvJxi
	2aFO1e6WnOqL65TEGCZohGajv4dIOENiWotrCpgsheYdN352VSUmuHaUUCMkNrSPhpDLRRJR5idfv
	KK5XPGK0FAVQ4T6uUKWv8sEl93fTj41OirTtSEv+Hh8B5vwXwVlQGWTCCs5Aywyoh0IqxJzrAM83B
	aIAj8S7DPfmhv4hMH0gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wia4Z-00000006fdS-0tCr;
	Sat, 11 Jul 2026 15:56:59 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wia4X-00000006fd6-2pwy
	for linux-rockchip@lists.infradead.org;
	Sat, 11 Jul 2026 15:56:57 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 488E6411AE
	for <linux-rockchip@lists.infradead.org>; Sat, 11 Jul 2026 15:56:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3076E1F00ADB
	for <linux-rockchip@lists.infradead.org>; Sat, 11 Jul 2026 15:56:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783785415;
	bh=SFRI5BFcprMUa3JpdsIZ3TCZEdjqCBcEU7UivobKvZw=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc;
	b=PT7ZXANLZgjpKXKIg+w6s4U3biKinVXPnA65xlugCzroQ2zl+gfQYZcwLCF/RJEr0
	 86v6i5vLCPgVwxHaRK0/UuNkt5p5Y65PJYBIDk9rdbt+McM5FKnbYfbRV3vrUka/kt
	 3RB9dhgeviXzC6jE6vfIYvrgUM3muozuVlzV2AyJZvr0iQVXUcluIflM8RkExzjNiz
	 WHiTz66PjYEADHf4nNSmKM8HNBgke0Wr3aVe/IrWzaq8nMsKtq6Aqe8kFePHXmCVya
	 i6gQBINklRllNkFOiJXCih45/B//ZWKcW7eiJwr3f6KBVqSqoJLlT2pUYREMdCnQ5Y
	 W3VCzVMFlhNTQ==
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-5b01cb18515so1640833e87.2
        for <linux-rockchip@lists.infradead.org>; Sat, 11 Jul 2026 08:56:55 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+Rp9cmt54AdG0HYpHNee4vfVt9eCmQIVoRBDXnVjEdBXCFBAiMoCKBTTzLlwb7g4s/bQdZUhVVjUhkIXEfeHLw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzi+S4yT3OoIA46Xt5ck9GoXKKBMF2K6eMVvPBUf53sx9gYfCia
	MIT0JFka1jqb/ofabN0okh3D8dJo9l1+7kDjK9pEr4rjLaRx0nsaZ+Etk27MLYM6C3hhtAx10DZ
	PrdAgxCs5eCzEm/g6J1VgQa8QxR7n7mA=
X-Received: by 2002:a05:6512:118d:b0:5ae:b36c:81c7 with SMTP id
 2adb3069b0e04-5b02369b29bmr708700e87.35.1783785413596; Sat, 11 Jul 2026
 08:56:53 -0700 (PDT)
MIME-Version: 1.0
References: <20260710211954.1373336-1-arnd@kernel.org>
In-Reply-To: <20260710211954.1373336-1-arnd@kernel.org>
From: Linus Walleij <linusw@kernel.org>
Date: Sat, 11 Jul 2026 17:56:40 +0200
X-Gmail-Original-Message-ID: <CAD++jLk7MWRccwuzXBLtdUk+k=Ykt_fJp-C6Sj0_2EMMEr3xxA@mail.gmail.com>
X-Gm-Features: AUfX_mwg6yb6TVVJdXhaZOS6qdtgZlShwnqqpOMB7tnZklRdo8JRbXGnpCKCf4s
Message-ID: <CAD++jLk7MWRccwuzXBLtdUk+k=Ykt_fJp-C6Sj0_2EMMEr3xxA@mail.gmail.com>
Subject: Re: [PATCH v2 00/10] treewide: replace linux/gpio.h
To: Arnd Bergmann <arnd@kernel.org>
Cc: linux-gpio@vger.kernel.org, Bartosz Golaszewski <brgl@kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>, Andrew Lunn <andrew@lunn.ch>, 
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, 
	Gregory Clement <gregory.clement@bootlin.com>, Frank Li <Frank.Li@nxp.com>, 
	Robert Jarzmik <robert.jarzmik@free.fr>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Greg Ungerer <gerg@linux-m68k.org>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>, 
	Hauke Mehrtens <hauke@hauke-m.de>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>, 
	Yoshinori Sato <ysato@users.sourceforge.jp>, 
	John Paul Adrian Glaubitz <glaubitz@physik.fu-berlin.de>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
	Dominik Brodowski <linux@dominikbrodowski.net>, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	patches@opensource.cirrus.com, linux-m68k@lists.linux-m68k.org, 
	linux-mips@vger.kernel.org, linux-sh@vger.kernel.org, 
	linux-input@vger.kernel.org, linux-sunxi@lists.linux.dev, 
	linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-sound@vger.kernel.org
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

T24gRnJpLCBKdWwgMTAsIDIwMjYgYXQgMTE6MjDigK9QTSBBcm5kIEJlcmdtYW5uIDxhcm5kQGtl
cm5lbC5vcmc+IHdyb3RlOgoKPiBGcm9tOiBBcm5kIEJlcmdtYW5uIDxhcm5kQGFybmRiLmRlPgo+
Cj4gVGhlIGxpbnV4L2dwaW8uaCBoZWFkZXIgdXNlZCB0byBiZSB0aGUgZ2xvYmFsIGRlZmluaXRp
b24gZm9yIHRoZSBncGlvCj4gaW50ZXJmYWNlcywgd2l0aCAxMTAwIHVzZXJzIGJhY2sgaW4gbGlu
dXgtMy4xNy4gSW4gbGludXgtNy4yLCBvbmx5IGFib3V0Cj4gMTMwIG9mIHRob3NlIHJlbWFpbiwg
c28gdGhpcyBzZXJpZXMgY2xlYW5zIG91dCB0aGUgcmVzdC4KClRoZSBzZXJpZXM6ClJldmlld2Vk
LWJ5OiBMaW51cyBXYWxsZWlqIDxsaW51c3dAa2VybmVsLm9yZz4KCllvdXJzLApMaW51cyBXYWxs
ZWlqCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==

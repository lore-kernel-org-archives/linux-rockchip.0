Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09D08C43458
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Jun 2026 21:40:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1O78PukbTHRC7XBcbRimwAEfh7GG1H5mQCPsZk7kDXw=; b=lw5/qLH+Rgmqc9
	EIyVLOAc7gZgja+Y/PxJVrcZW+Ybl+9UJcyXQP/5AYc7HBIh3gWiMsfuvXtx2lzkdvmoh5yKbuhHc
	Szl1J3gKuIwEO86jADtpNEfG3d3JkGsQRl5P2wCPQy7UDq94gBifirNQRrwn3bEuHkavhu9eBUH3Y
	MZErmzlQLlsXMMqkFvGw1QSPoG0neacFosFDoYKMi/WakjnK2C3Ey2Jdu0otzXDkReFMI5k3YFYik
	6a6lfQtmN04h5+sG3GHpvmGBqcrIIekHLtqUMJXyyLsgiSD7p9shvooVDU4Qajfa7zagdZhNmr2W1
	QEPVnpVV35alDze6mzJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wegBf-00000000GCo-03vp;
	Tue, 30 Jun 2026 21:40:11 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wegBb-00000000GCX-1CBk
	for linux-rockchip@lists.infradead.org;
	Tue, 30 Jun 2026 21:40:07 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id D30EC4400B
	for <linux-rockchip@lists.infradead.org>; Tue, 30 Jun 2026 21:40:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B21F01F01564
	for <linux-rockchip@lists.infradead.org>; Tue, 30 Jun 2026 21:40:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782855606;
	bh=La2xNvf/TCB9nBGYKaS8YDOIJOCNSEjb9+oJx13QQCM=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc;
	b=hvKTMsSLWpQ7iwnKPdGvgwo9HJsX1KaQ0ubrkEyF6jRtv6mdeKaQvRSrk8mJbQzxW
	 ig6k3MT8xKA+lTAcOlkAAOJcWdXKrFmGykfXLZNsJrC4ZUwxYU8idfhr4PDNNRiJQl
	 dL4jtvbz1PpTkasUpdlMtraBeP+0Obg7Sy1MnUWXzAfKz9u+WjtyjvDJMWkxSdE48F
	 JlrnDpUpZ2kdUZnpGkFx0rw7VpM4s3JAFfKvDSckb101eyILjgH9sF32uBzeJUlAqw
	 rc0o03G7Elsp6K6Z1gVl7D5Bnr8tmbDdWDEdfx3fznr2bRRsBeoZllbucPhSQwYNf0
	 zkw1ib+Apn52w==
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-5aebf9a509eso1174105e87.3
        for <linux-rockchip@lists.infradead.org>; Tue, 30 Jun 2026 14:40:06 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+RqkiLLRUzY/RzuZdrqb6Yek/+EWTPhBedRQiawe5BoUiGCG1LcoY55KHLiuMYf/P70sQGUOtfcG8YYZYusrxQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzd8SWWvfdq+NkdlARoKVvBBVxie96vfZdFMHi6soRz428xHlxZ
	EjQFg2ZB1UAh2UufHOeN40Qpfs4YMc94s0z7AQx6C7WHRw6KNUpF0aaQXHn+bj0gY6CKYXVeMtv
	xIhfKvOSMp1hibHIxRoTUYx6dhYpd+RI=
X-Received: by 2002:a05:6512:3d19:b0:5ae:b604:4c9 with SMTP id
 2adb3069b0e04-5aebdbc9489mr1240118e87.65.1782855605213; Tue, 30 Jun 2026
 14:40:05 -0700 (PDT)
MIME-Version: 1.0
References: <20260629132633.1300009-1-arnd@kernel.org>
In-Reply-To: <20260629132633.1300009-1-arnd@kernel.org>
From: Linus Walleij <linusw@kernel.org>
Date: Tue, 30 Jun 2026 23:39:50 +0200
X-Gmail-Original-Message-ID: <CAD++jLkpTa4hxNRscbiFFKZTM28ThuJMo1f3SX96LheC8L5BEQ@mail.gmail.com>
X-Gm-Features: AVVi8CfBoAND9VanduyO4lm3tElbURSYx2nmpdkO8PSRH7aiVql7RmWg2jM4Qb0
Message-ID: <CAD++jLkpTa4hxNRscbiFFKZTM28ThuJMo1f3SX96LheC8L5BEQ@mail.gmail.com>
Subject: Re: [PATCH 00/13] treewide: replace linux/gpio.h
To: Arnd Bergmann <arnd@kernel.org>
Cc: linux-gpio@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>, 
	Bartosz Golaszewski <brgl@kernel.org>, Andrew Lunn <andrew@lunn.ch>, 
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, 
	Gregory Clement <gregory.clement@bootlin.com>, Frank Li <Frank.Li@nxp.com>, 
	Robert Jarzmik <robert.jarzmik@free.fr>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Greg Ungerer <gerg@linux-m68k.org>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>, 
	Hauke Mehrtens <hauke@hauke-m.de>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>, 
	Yoshinori Sato <ysato@users.sourceforge.jp>, 
	John Paul Adrian Glaubitz <glaubitz@physik.fu-berlin.de>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Dominik Brodowski <linux@dominikbrodowski.net>, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	patches@opensource.cirrus.com, linux-m68k@lists.linux-m68k.org, 
	linux-mips@vger.kernel.org, linux-sh@vger.kernel.org, 
	linux-input@vger.kernel.org, linux-media@vger.kernel.org, 
	netdev@vger.kernel.org, linux-sunxi@lists.linux.dev, 
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

T24gTW9uLCBKdW4gMjksIDIwMjYgYXQgMzoyNuKAr1BNIEFybmQgQmVyZ21hbm4gPGFybmRAa2Vy
bmVsLm9yZz4gd3JvdGU6Cgo+IEZyb206IEFybmQgQmVyZ21hbm4gPGFybmRAYXJuZGIuZGU+Cj4K
PiBUaGUgbGludXgvZ3Bpby5oIGhlYWRlciB1c2VkIHRvIGJlIHRoZSBnbG9iYWwgZGVmaW5pdGlv
biBmb3IgdGhlIGdwaW8KPiBpbnRlcmZhY2VzLCB3aXRoIDExMDAgdXNlcnMgYmFjayBpbiBsaW51
eC0zLjE3LiBJbiBsaW51eC03LjIsIG9ubHkgYWJvdXQKPiAxMzAgb2YgdGhvc2UgcmVtYWluLCBz
byB0aGlzIHNlcmllcyBjbGVhbnMgb3V0IHRoZSByZXN0Lgo+Cj4gSW4gZWFjaCBzdWJzeXN0ZW0s
IHdlIGNhbiByZXBsYWNlIHRoZSBoZWFkZXIgZWl0aGVyIHdpdGgKPiBsaW51eC9ncGlvL2NvbnN1
bWVyLmggZm9yIHVzZXJzIG9mIHRoZSBtb2Rlcm4gZ3BpbyBkZXNjcmlwdG9yIGludGVyZmFjZSwK
PiBvciBsaW51eC9ncGlvL2xlZ2FjeS5oIGZvciB0aGUgZmV3IHJlbWFpbmluZyB1c2VycyBvZiB0
aGUgb2xkIG51bWJlcgo+IGJhc2VkIGludGVyZmFjZS4KPgo+IEFsbCBwYXRjaGVzIGluIHRoaXMg
c2VyaWVzIGNhbiBnZXQgYXBwbGllZCBpbmRlcGVuZGVudGx5LCBzbyBteQo+IHByZWZlcmVuY2Ug
d291bGQgYmUgZm9yIGVhY2ggc3Vic3lzdGVtIG1haW50YWluZXIgdG8gYXBwbHkgdGhlc2UKPiBk
aXJlY3RseSwgd2l0aCB0aGUgcmVzdCBnb2luZyBpbnRvIHRoZSBncGlvIHRyZWUgYXQgc29tZSBw
b2ludC4KPgo+IFRoZSBmaW5hbCBwYXRjaCBoZXJlIG9idmlvdXNseSBuZWVkcyB0byB3YWl0IGZv
ciBhbGwgdGhlIG90aGVycwo+IHRvIGdldCBtZXJnZWQgZmlyc3QuCgpUaGlzIGlzIGhlbHBmdWwu
ClRoZSBzZXJpZXM6ClJldmlld2VkLWJ5OiBMaW51cyBXYWxsZWlqIDxsaW51c3dAa2VybmVsLm9y
Zz4KCllvdXJzLApMaW51cyBXYWxsZWlqCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

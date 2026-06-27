Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 569E4C43458
	for <linux-rockchip@archiver.kernel.org>; Sat, 27 Jun 2026 16:07:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Subject:From:To:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6XaVDDgwTIaB51aQ9jUht9L09SHqUy8G/4Ev5JkhhEo=; b=sWJF4JJiUFJZwY
	F6810TipdQiee1FEHJjBkpnZIr1boAv3SfxOrw/TKkI9ADiNf5IUFTCvBPIeEQ0SPlvPFnIyFpHza
	NJ7NImO+B2O9I2c1r+yVOwmh1nNQO1gKzJ6XGdC6d0LZAhluSncCf/W9Tr5/HG/NFwSGYY8i9FT8x
	ecGdP+BcLZe05LJPWky40suI2cnibqk7q1aR4whqPZvpyRBwZ+NP/96hQ8eqOW1Q5GfVw3zqav4W0
	xVseGWQ4FrioxP3ZTz0QA0d2WWG/SnjZSfDZe/UTqajo7RCzG96NasmBssoocMnkYOGS/NeSMf/9p
	yXu1ZnP0/trFRQF7r7wA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdVZK-0000000Ccta-49cm;
	Sat, 27 Jun 2026 16:07:46 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdVZJ-0000000CctR-2dDI;
	Sat, 27 Jun 2026 16:07:45 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 7BC8D6001A;
	Sat, 27 Jun 2026 16:07:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 24B671F000E9;
	Sat, 27 Jun 2026 16:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782576463;
	bh=Eai9illNnwIVHHx82Y8oRRChAijNkCdc6Gtuf6pgPNA=;
	h=Date:Cc:To:From:Subject:References:In-Reply-To;
	b=Qw2Y59RmKIirc9QicmPqL66sTrj2a2pRKQ4q1v06L1xA9E/C/n8ujusPhFM+JyAMq
	 Sc7C+LA2hGDEhdfXPP6JFmdPW/lxQo9uwCywxV3gUUCsoaqp/p8gFp8rSRqgPX9Rot
	 aq3TQmnmHDhFsytBp0U3bmY62h9aCkV7OgVPCbZZlU8BaFdjaz9P3zEBUeuvx5tPmD
	 4Tx2RvxcWeTQ2au9N+Wnor838KKBkB0xRChuAMilaNqmNIuEwn8ueK3uR1GU+mDUy3
	 YyRV47jAv1zDKiToKjdTIwjPqIKhSumFkr9k6T4RB7BOfeDsDOS70P4Gje9HvpGVAd
	 5T1h6xlOziCJQ==
Mime-Version: 1.0
Date: Sat, 27 Jun 2026 18:07:32 +0200
Message-Id: <DJJYM56GLGXX.2L6RY669ZOJSC@kernel.org>
Cc: "Linus Torvalds" <torvalds@linux-foundation.org>, "Greg Kroah-Hartman"
 <gregkh@linuxfoundation.org>, "Mark Brown" <broonie@kernel.org>, "Nathan
 Chancellor" <nathan@kernel.org>, "Nick Desaulniers"
 <nick.desaulniers+lkml@gmail.com>, "Bill Wendling" <morbo@google.com>,
 "Justin Stitt" <justinstitt@google.com>, "Raag Jadav"
 <raag.jadav@intel.com>, "Sohil Mehta" <sohil.mehta@intel.com>, "Dave
 Hansen" <dave.hansen@linux.intel.com>, "Rob Herring" <robh@kernel.org>,
 "Saravana Kannan" <saravanak@kernel.org>, "Bjorn Helgaas"
 <bhelgaas@google.com>, "Rafael J. Wysocki" <rafael@kernel.org>, "Len Brown"
 <lenb@kernel.org>, "Andi Shyti" <andi.shyti@kernel.org>,
 <linux-kernel@vger.kernel.org>, "Yemike Abhilash Chandra"
 <y-abhilashchandra@ti.com>, "Mauro Carvalho Chehab" <mchehab@kernel.org>,
 <linux-media@vger.kernel.org>, "Nicolas Frattaroli"
 <nicolas.frattaroli@collabora.com>, "Liam Girdwood" <lgirdwood@gmail.com>,
 "Jaroslav Kysela" <perex@perex.cz>, "Takashi Iwai" <tiwai@suse.com>, "Heiko
 Stuebner" <heiko@sntech.de>, <linux-rockchip@lists.infradead.org>,
 <linux-sound@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <driver-core@lists.linux.dev>, "Jonathan Cameron" <jic23@kernel.org>,
 "Dmitry Torokhov" <dmitry.torokhov@gmail.com>, "Bartosz Golaszewski"
 <bartosz.golaszewski@oss.qualcomm.com>, "Pei Xiao" <xiaopei01@kylinos.cn>,
 "Shashank Balaji" <shashank.mahadasyam@sony.com>, "Ben Horgan"
 <ben.horgan@arm.com>, "Johan Hovold" <johan@kernel.org>,
 <linux-usb@vger.kernel.org>, "Nikita Kravets" <teackot@gmail.com>, "Hans de
 Goede" <hansg@kernel.org>, =?utf-8?q?Ilpo_J=C3=A4rvinen?=
 <ilpo.jarvinen@linux.intel.com>, <platform-driver-x86@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-i2c@vger.kernel.org>, "Daniel Scally"
 <dan.scally@ideasonboard.com>, "Sakari Ailus"
 <sakari.ailus@linux.intel.com>, "Minas Harutyunyan" <hminas@synopsys.com>,
 "Tianrui Zhao" <zhaotianrui@loongson.cn>, "Bibo Mao" <maobibo@loongson.cn>,
 "Huacai Chen" <chenhuacai@kernel.org>, "WANG Xuerui" <kernel@xen0n.name>,
 <kvm@vger.kernel.org>, <loongarch@lists.linux.dev>
To: =?utf-8?b?VXdlIEtsZWluZS1Lw7ZuaWcgKFRoZSBDYXBhYmxlIEh1Yik=?=
 <u.kleine-koenig@baylibre.com>
From: "Danilo Krummrich" <dakr@kernel.org>
Subject: Re: [PATCH v2 00/17] mod_devicetable.h: Split into per subsystem
 headers
References: <cover.1782490566.git.u.kleine-koenig@baylibre.com>
In-Reply-To: <cover.1782490566.git.u.kleine-koenig@baylibre.com>
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

T24gRnJpIEp1biAyNiwgMjAyNiBhdCA4OjAwIFBNIENFU1QsIFV3ZSBLbGVpbmUtS8O2bmlnIChU
aGUgQ2FwYWJsZSBIdWIpIHdyb3RlOgo+IFV3ZSBLbGVpbmUtS8O2bmlnIChUaGUgQ2FwYWJsZSBI
dWIpICgxNyk6Cj4gICBtb2RfZGV2aWNldGFibGUuaDogU3BsaXQgaW50byBwZXIgc3Vic3lzdGVt
IGhlYWRlcnMKPiAgIGRyaXZlcjogY29yZTogSW5jbHVkZSBoZWFkZXJzIGZvciBhY3BpX2Rldmlj
ZV9pZCBhbmQgb2ZfZGV2aWNlX2lkIGZvciBzdHJ1Y3QgZGV2aWNlX2RyaXZlcgo+ICAgZHJpdmVy
IGNvcmU6IHBsYXRmb3JtOiBJbmNsdWRlIGhlYWRlciBmb3Igc3RydWN0IHBsYXRmb3JtX2Rldmlj
ZV9pZAoKV2l0aCB0aGUgc3VnZ2VzdGVkIHJlbmFtZSwKCkFja2VkLWJ5OiBEYW5pbG8gS3J1bW1y
aWNoIDxkYWtyQGtlcm5lbC5vcmc+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==

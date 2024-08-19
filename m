Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37CD7C52D7C
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Aug 2024 21:28:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=usaI7xes9MssrHQOk0uZXb95pQ9/qkaqUrG3DJ9cGHw=; b=w8TW7Ce0Mxtk6E
	GK1sixwF5oCNSLj0yXFC8lVwfJwhwgn6yiGkBmYHKh80jHzCC2m+3KOS3hLoCfgio2XgGmV2ol6ig
	cdUtLfSLpSPXIefOgF4WDZ0jNvvom8duSU8CI+8qSxK1jP+0UKyISe0ar7epm9dafLPvkxmwyDl4G
	ICHRmhAI9aQXEHrlo49r0vr9b2RcraVdi9cXyaVmPnXOSUCAO04T8h7JsYERbNtX74MEd5VC5x9yL
	3cJbRKidRP072FC5+cS6EmyAWprA0ik5l8hHg9onOif3k97obmP76sqUM9+tgVKai6rgRwYCpQ2I1
	ClGJLjLoJfxMJHfntP0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sg9uw-00000002zig-14zH;
	Mon, 19 Aug 2024 21:27:58 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sg9uA-00000002zHg-0MOG;
	Mon, 19 Aug 2024 21:27:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=kT7Kuxp6fbaULbA/LwhMmUWF1CJosjyeQGtqZ9CJp+0=; b=EkXD3WqZvDMUpKhrjs50auUzgv
	LAqocSbnA8hImpeaAcyIs6fMNqZQk1v2s4bREoP0BmUKSGx8cajcnuBX+YpcvxsEYZyT2QJaIHhOO
	jemBN1SMUNIjuSo6uqdBSr3UXJ/od3PNi7THpzUwm9I5+W6spKHuRfwgpsbITMcF+AtR34NdYkDU2
	EbkSuyLwtfBQfEyeece2NXIYc1MYssnrG34oIUpHLVWmjcKUU5kT6EQRqDyCjN7TB+dZF9HMLS6tQ
	WgwQdShjGY2D/f2dEPFAmST9/56/wol62WV5odOo6JtHrGoswfRLjTsocYY3XySADlYHg/31ZZKkg
	0b2QfEVw==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sg9u2-00000009DJy-4AyB;
	Mon, 19 Aug 2024 21:27:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=kT7Kuxp6fbaULbA/LwhMmUWF1CJosjyeQGtqZ9CJp+0=; b=wNRJuV+uiReaCGv60DiKRMQhAm
	eOMs1pRGa6EHvcjoApT6Mt5LM3b5GpPAKD1+j2Tktv+nGAFu2xbK8PDX9tn25zqFUuGjAMinpkdcZ
	CJ7+c3rDsJQPC8ZMbyvyVtnQlX7NzhAiLWUHdx1PlvLugrngoXqLffbvyJvrO5IEBY863rGZ30Uvz
	ArvLeDZnfGgT8JEyzDAE77cHFtE+YnHPG7LtEbxE5OUcyeQl5cGttOfYdRMKOQUAUB1R7pQImU0NT
	A1V3ZHPCQILEOpmUYokl/tQVOF2JmWyZe3ID0d8PRRxULB7x7tFRETjiKYukjEnC9kC1wfvW2EYOL
	K37fH8RA==;
Received: from i53875a9f.versanet.de ([83.135.90.159] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sg9tR-0003Xv-3A; Mon, 19 Aug 2024 23:26:25 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-kernel@vger.kernel.org,
 Detlev Casanova <detlev.casanova@collabora.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
 Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>,
 Lee Jones <lee@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jirislaby@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Chris Morgan <macromorgan@hotmail.com>,
 Jonas Karlman <jonas@kwiboo.se>, Tim Lunn <tim@feathertop.org>,
 Muhammed Efe Cetin <efectn@protonmail.com>, Andy Yan <andyshrk@163.com>,
 Jagan Teki <jagan@edgeble.ai>, Dragan Simic <dsimic@manjaro.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Shresth Prasad <shresthprasad7@gmail.com>, Ondrej Jirman <megi@xff.cz>,
 Weizhao Ouyang <weizhao.ouyang@arm.com>, Alexey Charkov <alchark@gmail.com>,
 Jimmy Hon <honyuenkwun@gmail.com>, Finley Xiao <finley.xiao@rock-chips.com>,
 Yifeng Zhao <yifeng.zhao@rock-chips.com>,
 Elaine Zhang <zhangqing@rock-chips.com>, Liang Chen <cl@rock-chips.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-i2c@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-serial@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCH 09/10] arm64: dts: rockchip: Add rk3576 SoC base DT
Date: Mon, 19 Aug 2024 23:26:44 +0200
Message-ID: <2553026.Sgy9Pd6rRy@diego>
In-Reply-To: <23696360.6Emhk5qWAg@trenzalore>
References: <20240802214612.434179-1-detlev.casanova@collabora.com>
 <21547916.mFnZMskM5D@diego> <23696360.6Emhk5qWAg@trenzalore>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240819_222704_801488_A17C1A77 
X-CRM114-Status: GOOD (  18.37  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Montag, 19. August 2024, 19:59:45 CEST schrieb Detlev Casanova:
> On Wednesday, 14 August 2024 11:31:04 EDT Heiko St=FCbner wrote:
> > Hi Detlev,
> > =

> > Am Freitag, 2. August 2024, 23:45:36 CEST schrieb Detlev Casanova:
> > > This device tree contains all devices necessary for booting from netw=
ork
> > > or SD Card.
> > > =

> > > It supports CPU, CRU, PM domains, dma, interrupts, timers, UART and
> > > SDHCI (everything necessary to boot Linux on this system on chip) as
> > > well as Ethernet, I2C, SPI and OTP.
> > > =

> > > Also add the necessary DT bindings for the SoC.
> > > =

> > > Signed-off-by: Liang Chen <cl@rock-chips.com>
> > > Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
> > > Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
> > > Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> > > [rebase, squash and reword commit message]
> > > Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> > =

> > looks like (since 2019) there is a strong suggestion for having a soc n=
ode.
> > =

> > See Krzysztof's mail in
> >    =

> > https://lore.kernel.org/all/6320e4f3-e737-4787-8a72-7bd314ba883c@kernel=
.org
> > / that references
> >     Documentation/devicetree/bindings/writing-bindings.rst [0]
> > =

> > So I guess we should probably follow that - at least for new socs for n=
ow.
> =

> That make sense, but what is exactly covered by MMIO devices ? everything =

> except cpus, firmware, psci and timer ?

if your node has a foo@mmio-address naming then it goes in there I guess



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C169C52D73
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Aug 2024 17:18:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eP7bIF1Aj3I1Xi7luGzWobPJJOQGUILu5YFe0nlCjrs=; b=cOZ4+2TqpQcimy
	m+z+KnpBhadMoFF6By5odMIRcrT0Q0r21XtcYsMRFLCf2SVfH2yhW0Mb6B7B2dkmYCjFJGES5rJPy
	521aaFns9C4EUUW0Y0hJXR4BA42L68BOE0am2BHS2lDsHv3+ZQFBU89oEAS331mrSYsX4SUxwvqKT
	Pg7R60vDb8bq7ln4Bbd5zphcymFG4EPEedVXzINeX3vt5UGtda4pJazR+Vqh+aEkuzybHJ2mhClLY
	pwhXuRLNioj4CuijpBsyE1dY032ilDV+b0qam9V3zntiwxBsLeG/QMuz4DQaE8EFEUkvtsiJcfSSm
	lGzOADoqoWGJJbkIEiTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbkJG-00000005nlG-0DS4;
	Wed, 07 Aug 2024 17:18:50 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbkIg-00000005ngY-2657;
	Wed, 07 Aug 2024 17:18:16 +0000
Received: from i53875a9f.versanet.de ([83.135.90.159] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sbkII-0002MU-H9; Wed, 07 Aug 2024 19:17:50 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Florian Klink <flokli@flokli.de>, Dragan Simic <dsimic@manjaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Kever Yang <kever.yang@rock-chips.com>,
 Muhammed Efe Cetin <efectn@protonmail.com>, FUKAUMI Naoki <naoki@radxa.com>,
 =?utf-8?B?VGFtw6FzIFN6xbFjcw==?= <tszucs@protonmail.ch>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: add rfkill node for M.2 E wifi on
 orangepi-5-plus
Date: Wed, 07 Aug 2024 19:17:49 +0200
Message-ID: <4364452.rE2NhlSrgm@diego>
In-Reply-To: <c1cd51655f783d9ec2f6f068590c2a35@manjaro.org>
References: <20240807162001.1737829-1-flokli@flokli.de>
 <20240807170030.1747381-1-flokli@flokli.de>
 <c1cd51655f783d9ec2f6f068590c2a35@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240807_101814_622463_5594893B 
X-CRM114-Status: GOOD (  16.81  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Florian,

Am Mittwoch, 7. August 2024, 19:15:03 CEST schrieb Dragan Simic:
> On 2024-08-07 19:00, Florian Klink wrote:
> > This follows the same logic as 82d40b141a4c ("arm64: dts: rockchip: add
> > rfkill node for M.2 Key E WiFi on rock-5b").
> > 
> > On the orangepi-5-plus, there's also a GPIO pin connecting the WiFi
> > enable signal inside the M.2 Key E slot.
> > 
> > The exact GPIO PIN can be validated in the Armbian rk-5.10-rkr4 kernel
> > rk3588-orangepi-5-plus.dtsi file [1], which contains a `wifi_disable`
> > node referencing RK_PC4 on &gpio0.
> > 
> > Signed-off-by: Florian Klink <flokli@flokli.de>
> > Tested-by: Florian Klink <flokli@flokli.de>
> > Link:
> > https://github.com/armbian/linux-rockchip/blob/9fbe23c9da24f236c6009f42d3f02c1ffb84c169/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
> > [1]
> 
> Unfortunately, this isn't how the "Link: ..." tag is to be used, or how
> a reference is to be provided.  Please see the patch submission linked
> below for a correct example of providing links as references.
> 
> https://lore.kernel.org/linux-rockchip/4449f7d4eead787308300e2d1d37b88c9d1446b2.1717308862.git.dsimic@manjaro.org/T/#u

please also don't post v2 patches as replies to v1.
Instead start a new mail thread please.

A lot of tooling cannot really find the correct version in such
multiversion threads.

Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

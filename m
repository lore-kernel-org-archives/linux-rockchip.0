Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D32E2C47074
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Jan 2024 11:18:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0nCukBq8DgYA+VcxvxI1WR4TgitOMxYl6L+6BqTEt5s=; b=mBP4Pxh6Fbce20
	F1Ecn1Hgmvom7kPjwiUvWi6onatEMPC/RGOmDNBx90p2n+OYgZAHkKHStTvn4CrUbfFpjXVDD/B2O
	GUciZkP3kequhzJ+zzOMj4rNwmgNTfx6upIZqZW1WH07MDNl94t9cscenQme+tyaI+ODH89qfv7eH
	N6Q6uLvsAFNLtsibn1j3Lya54R4K449MBs4+EKBDOn9SzKduwbTrep98L1Jbgzn4jQNfluSQrKTgH
	TeU2Cm9Yc+LNzd57AkjsIVCCV4kuSZE9jt//xNLsue3/xgWsb1F/iBxi2chSo6pGnXhDimUZe3AQX
	dOIRg+rkTFp2coJ6KHqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNWbN-00BBpi-2F;
	Wed, 10 Jan 2024 11:18:29 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNWbH-00BBik-2d;
	Wed, 10 Jan 2024 11:18:26 +0000
Received: from i53875aaa.versanet.de ([83.135.90.170] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rNWbA-0002at-RJ; Wed, 10 Jan 2024 12:18:16 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Quentin Schulz <foss+kernel@0leil.net>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Quentin Schulz <quentin.schulz@theobroma-systems.com>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: remove duplicate SPI aliases for
 helios64
Date: Wed, 10 Jan 2024 12:18:15 +0100
Message-ID: <3493720.ktpJ11cQ8Q@diego>
In-Reply-To: <48f1b3cb-0a98-4b14-89f6-e1ca6b858512@linaro.org>
References: <20240109-rk3399-spi-aliases-v1-0-2009e44e734a@theobroma-systems.com>
 <2258938.QZUTf85G27@diego> <48f1b3cb-0a98-4b14-89f6-e1ca6b858512@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240110_031823_875711_79F7095F 
X-CRM114-Status: GOOD (  20.20  )
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

Hi Krzysztof,

[I'll limit myself to this thread, as we're essentially discussing the same=
 in both]

Am Dienstag, 9. Januar 2024, 20:14:38 CET schrieb Krzysztof Kozlowski:
> On 09/01/2024 16:23, Heiko St=FCbner wrote:
> > Am Dienstag, 9. Januar 2024, 16:16:15 CET schrieb Krzysztof Kozlowski:
> >> On 09/01/2024 14:35, Quentin Schulz wrote:
> >>> From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> >>>
> >>> An earlier commit defined an alias for all SPI controllers found on t=
he
> >>> RK3399, so there's no need to duplicate the aliases in helios64's dev=
ice
> >>> tree.
> >>
> >> That's not what we want. Boards should define aliases for what is
> >> available, according to the board labeling.
> > =

> > and the board labeling for spi2 has always been spi2-miso, spi2-miso et=
c.
> > In the last 10 years of doing Rockchip stuff, I haven't seen any schema=
tic
> > doing it differently.
> =

> OK, this could be a case... but then you add aliases for things which
> are not labeled on the board.

On the other hand, we did this dance last year for some other SoCs.
And having to repeat the same list of never-changing aliases for every
board was a sore spot for a lot of people it seemed.
Most boards follow the reference schematics quite closely afterall.

Like very shortly after the last discussion I got patches moving the
aliases to their then agreed upon position. (numeric busses in the
soc dtsi, everything else in board dts).

And back in november we ended with [0] - Krzysztof saying that
"it is just generic guideline, so up to Heiko what to do with it" ;-) .


I also made sure to send the changes upwards way before christmas
to give soc maintainers time to complain if needed and especially did
point out that change in my pull request text [1] ;-) .


Heiko

> Let's bring Arnd again:
> https://lore.kernel.org/linux-rockchip/CAK8P3a0ALgbhTVJ7t3XRXALs9vBM=3DXB=
vkGhNKXxB+QTepo-3AQ@mail.gmail.com/


[0] https://lore.kernel.org/linux-rockchip/7b8a830d-42d0-4220-b9fe-3f5fff43=
e74d@linaro.org/
[1] https://patchwork.kernel.org/project/linux-soc/patch/3535836.iIbC2pHGDl=
@phil/



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

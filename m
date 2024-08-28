Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5325C54FAA
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Aug 2024 13:44:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=03dyKYl6FyK0L6NOxA8ngTu3bgkWSpApYPOErZiePaQ=; b=cdGrjVv/2NSU4z
	z7JI7osjyCNBhHbalaAomfO6IEqSqSgJm+vXy/Nu1nse1j+sREJ1OVacPtmI1ozWDkHBlCseMbs9t
	0r0lZJ4OiYF/43ehTaaM6DrwTOHEYu9p1CmbDFQAG3W2QVSFxiL3uO1obU/RwcBjd+qh6Ls8liqLi
	C6cVGCMWAEpZshWc5vUCs/16BKRzojGPL6FG1CFuZsQdtjdmTsCjTfw72qnPehIqGXdj1RcM13iuX
	k/axxsCLuUo9n9n/v1qp8c+L/nZSEwAuh+5qRMPgCkBxf6FKiPzAnHCt186a/mpg4q0wzgcXs+oaC
	1AlxBcc0sO10MF1FjsIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjIyF-0000000FZbU-33YI;
	Wed, 28 Aug 2024 13:44:23 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjIvQ-0000000FZ5Z-3aPP;
	Wed, 28 Aug 2024 13:43:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=qUUiaCfBLXZWpJdappx4+njgqnXxefIpho9blRI4Pes=; b=h0mGQKeUHlQIzvXxOw2pBhnXnp
	1gkRnQcgSpBgLRM91xDWAdbouRh+oqwwTl0pRZMjtkidxWkkdlHbym4+zv0vanCYCyAeYpzZMezF/
	IWhrGWqZoOaoIA9mEFfl9dpfMNmjfBHfon0hmHYmuCBg40OjjA3WdeqJZBgYkjIPT8y/hkCUwCkIk
	xMi4a5KnL8Yg7h0GsAr+YWrY7/TqGF3wt9pz5376t0vKzCr5Od12SYu/B55lZEOa1BfdWoQkIHWxG
	2GOOVfMngUSpq1Im2QF2UhWxsQyC+8qArm++5HOahS2BxYwzrXFCB9263I6nvaLXsLoRX9YLwqqFo
	//iudiqg==;
Received: from i5e8616cd.versanet.de ([94.134.22.205] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sjIvL-0005dr-8m; Wed, 28 Aug 2024 15:41:23 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Jonathan Liu <net147@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, FUKAUMI Naoki <naoki@radxa.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: Enable RK809 audio codec for Radxa ROCK
 4C+
Date: Wed, 28 Aug 2024 15:42:35 +0200
Message-ID: <2576985.vzjCzTo3RI@diego>
In-Reply-To: <CANwerB0NUFyJ1egYNEAnhdqSyBTq41cSKKC0bAbKudZAPx8UfA@mail.gmail.com>
References: <20240828074755.1320692-1-net147@gmail.com> <2502361.uoxibFcf9D@diego>
 <CANwerB0NUFyJ1egYNEAnhdqSyBTq41cSKKC0bAbKudZAPx8UfA@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_064129_034884_B4A96610 
X-CRM114-Status: GOOD (  21.35  )
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

Hi Jonathan,

Am Mittwoch, 28. August 2024, 15:24:56 CEST schrieb Jonathan Liu:
> On Wed, 28 Aug 2024 at 22:59, Heiko St=FCbner <heiko@sntech.de> wrote:
> > Am Mittwoch, 28. August 2024, 09:47:53 CEST schrieb Jonathan Liu:
> > > This adds the necessary device tree changes to enable analog audio
> > > output for the 3.5 mm TRS headphone jack on the Radxa ROCK 4C+ with
> > > its RK809 audio codec.
> > >
> > > Signed-off-by: Jonathan Liu <net147@gmail.com>
> >
> > as it looks like you have one of those boards, could I possibly as you
> > to take a look at the vdd_cpu_b and vdd_gpu nodes?
> >
> > I see (and devicetree check reports it too) a pinctrl-0 for the vsel-gp=
io
> > without accompanying pinctrl-names.
> >
> > Could you check if things fail if you either add pinctrl-names or remove
> > the pinctrl-0 entry?
> =

> I tried both but neither resulted in any change to the warnings in dtbs_c=
heck.
> Reverting my change also results in the same warnings so I don't think
> it is related to my change.

I was more aiming at a functional test on the board :-) .

You are correct in that this is not related to your change, I was just
seeing someone with the hardware.

I.e. while running dtbs check here I saw those regulator nodes
and didn't want to change stuff without being able to test them.

Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

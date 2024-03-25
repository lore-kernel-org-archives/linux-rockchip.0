Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E880C54E64
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Mar 2024 21:53:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uHEIA7HYRM9qFdkpz1NHMWSSmp92UAaqkONz6XBI5qE=; b=zlhza7eTYk8hsG
	HZBgeX0HCgCa9ZHYWeFInvHVBFuhB+5DPz9WQu9boCrvSQL29GxXfYrr6SH+1FsQHYzZ6kKiVWqna
	6CnI+2h+/RPQArWq9YTkeFRv5Px4XOlZbGe/3WvUw3SMB1uooe8+jBAbwctIuzYWyVVBMGRlP6rhZ
	hSyxqo85c18S/yjdbB0g9JRyAOOVH4er5HqPriY4TbVb1lpc8JWcG65M5d7rT2Yv/lDRJLoDQkYK5
	q3RfGQw6t8PRQ3feAqyZwK5T1dYWGU6TmRkCl1NrdpcGnmDXhg8U+0hjdb0QLIxBqoqXxCQMSd2PG
	bcC6I+67ogqCE/bte4OA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rosFn-0000000260r-3VlN;
	Mon, 25 Mar 2024 21:53:15 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rosFk-000000025zd-0OB2
	for linux-rockchip@lists.infradead.org;
	Mon, 25 Mar 2024 21:53:14 +0000
Received: from i53875aaf.versanet.de ([83.135.90.175] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rosFb-0003lL-IN; Mon, 25 Mar 2024 22:53:03 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Chris Morgan <macroalpha82@gmail.com>, Dragan Simic <dsimic@manjaro.org>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, robh@kernel.org,
 Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 0/4] User Requested Fixes for Powkiddy RK3566 Devices
Date: Mon, 25 Mar 2024 22:53:02 +0100
Message-ID: <2854897.88bMQJbFj6@diego>
In-Reply-To: <5e2f0da3fc066cf1faddda71bb6ea2e7@manjaro.org>
References: <20240325175133.19393-1-macroalpha82@gmail.com>
 <5e2f0da3fc066cf1faddda71bb6ea2e7@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240325_145312_182188_8DDCF316 
X-CRM114-Status: GOOD (  20.04  )
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

Am Montag, 25. M=E4rz 2024, 18:57:06 CET schrieb Dragan Simic:
> Hello Chris,
> =

> On 2024-03-25 18:51, Chris Morgan wrote:
> > From: Chris Morgan <macromorgan@hotmail.com>
> > =

> > Users have requested fixes for Powkiddy devices to help with some
> > intermittent WiFi issues by adding additional properties to the
> > SDMMC2 node. They have also requested that the model name be
> > represented consistently with both the manufacturer name and model
> > name. Lastly, there exists a second configuration of the RGB30 with
> > a slightly different regulator layout we need to describe.
> > =

> > I have added the new/additional property of "chasis-type" as well.
> =

> Shouldn't this series be labeled as v2?

I think this is for Powkiddy handhelds, the other series was
for Anberic ones.

Somehow they design and build seemingly dozens of somewhat
similar handhelds around the rk3566 ;-)


> By the way, regarding renaming the mmcX aliases, maybe that would
> actually be doable, but only if you have full control over software
> that runs on these devices.
> =

> > Chris Morgan (4):
> >   dts: rockchip: Add chasis-type for Powkiddy rk3566 devices
> >   arm64: dts: rockchip: Update sdmmc node for wifi on powkiddy rk3566
> >   arm64: dts: rockchip: Correct model name for Powkiddy RK3566 Devices
> >   arm64: dts: rockchip: Describe Alternate Regulator Config on RGB30
> > =

> >  .../dts/rockchip/rk3566-powkiddy-rgb30.dts    | 30 ++++++++++++++++++-
> >  .../dts/rockchip/rk3566-powkiddy-rk2023.dts   |  6 +++-
> >  .../dts/rockchip/rk3566-powkiddy-rk2023.dtsi  |  4 +++
> >  .../boot/dts/rockchip/rk3566-powkiddy-x55.dts |  4 +++
> >  4 files changed, 42 insertions(+), 2 deletions(-)
> =






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

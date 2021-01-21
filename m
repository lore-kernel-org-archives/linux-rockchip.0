Return-Path: <SRS0=2Xhb=GY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 30964C433DB
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Jan 2021 05:22:29 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 88F9323888
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Jan 2021 05:22:27 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 88F9323888
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eJUCdV5aPuJMGWDKeu3y9hB+euZxcaTbXxV6VxTPQbk=; b=l1GW5b7NL0MSU7Veel5e4+omN
	4E+iD0sFz17HHpj8KvUSXCxB1WS7iK/Wx2m4cZb0Oz6sARHTL0/EcxyUeLDKuOaiKSY24pFqD7KUE
	addz4/EGv7ZYbb6mVbFcKUeLnU/7C/d/JYJYuT+v2BfehEU2T5CqTIin4BcNwYsxTecpAny3gDRZL
	igelQhRg/l8l6R2lgDV2DR/dLuzwDTjor7lhixOT6aw6NxUvIiPksIS28qSFWFpvh0zKTkTBm7loI
	HM0Tw+rGXVv+doy4ARjIAnqZ103cUEAnJc/RPuYaCigOaA88bULkRaoWzPrprWN1n/9G9OZBti6NA
	w/vgm3mzQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l2SQF-0003mW-3R; Thu, 21 Jan 2021 05:22:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l2SQ9-0003lW-Uu; Thu, 21 Jan 2021 05:22:14 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id B2CCB23888;
 Thu, 21 Jan 2021 05:22:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611206530;
 bh=aC0+sbL/GhS+fn6EHvQvuIRN4lfYeg9nJ+Sh8zc9yb0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=UvUCnE1ab4VdNvF3Bjy9DlEHzxIr0lfJmvE7Wzv1F44PC0AtntnTprv82Q/S+WusZ
 Ms8h54GyByf18xfsLQ2B6AcpTSCkz9SheDzx7WNVSJ00Ku4g83m+DtrVAnROMQP2N7
 yUPi6LHeFKaZI458XuN31adru+6xem0bqqx9YKwwu03xps6raOL0oz0XJ90dnZ/b+v
 qPKbAUdXz3Be1QIMVQmlOzWAqmcJUlEGBkUTh6OEqI+Mc7Aw32Y2QuwUH7Gnv9l6jn
 qm5zaFt+uUhJGlu2FEIP5sGlR6ElOtU4WrYQ5TysgBJak2Va8YnrHeO7RLqnV4dXjX
 SrZ+qmjOBnZcA==
Received: by mail-lj1-f181.google.com with SMTP id n8so1103341ljg.3;
 Wed, 20 Jan 2021 21:22:09 -0800 (PST)
X-Gm-Message-State: AOAM532FzwDWXUvAuES0CN7KI2+dtUIFuIona2BvKrMJD0R3x7Dm9UAk
 Y7r3ABJj2eGGYs1p/tRkBdduuOEoNppR8lJToyk=
X-Google-Smtp-Source: ABdhPJyPkIyy+lYaY2LiEjUZ8SUwWc3vNYgHv8oKn0SROOA78pvdfcxneFPHWHGaMR7f2HAnYSpWccmGKDDQjBLWnSA=
X-Received: by 2002:a2e:9890:: with SMTP id b16mr1427717ljj.488.1611206527942; 
 Wed, 20 Jan 2021 21:22:07 -0800 (PST)
MIME-Version: 1.0
References: <c4553dfad1ad6792c4f22454c135ff55de77e2d6.1611186099.git.robin.murphy@arm.com>
In-Reply-To: <c4553dfad1ad6792c4f22454c135ff55de77e2d6.1611186099.git.robin.murphy@arm.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Thu, 21 Jan 2021 13:21:56 +0800
X-Gmail-Original-Message-ID: <CAGb2v6630awuQy6hZAejDeUWFxV0q0t5Uhk5O2c0i8y8ThD-Mw@mail.gmail.com>
Message-ID: <CAGb2v6630awuQy6hZAejDeUWFxV0q0t5Uhk5O2c0i8y8ThD-Mw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Disable display for NanoPi R2S
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210121_002214_098996_54D27D2C 
X-CRM114-Status: GOOD (  22.77  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, Jan 21, 2021 at 7:42 AM Robin Murphy <robin.murphy@arm.com> wrote:
>
> NanoPi R2S is headless, so rightly does not enable any of the display
> interface hardware, which currently provokes an obnoxious error in the
> boot log from the fake DRM device failing to find anything to bind to.
> It probably isn't *too* hard to obviate the fake device shenanigans
> entirely with a bit of driver reshuffling, but for now let's just
> disable it here to shut up the spurious error.

Maybe we should just drop the error message from the driver?

I should probably send a similar patch for the ROCK Pi E. :/

> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
> index 2ee07d15a6e3..1eecad724f04 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
> @@ -114,6 +114,10 @@
>         cpu-supply = <&vdd_arm>;
>  };
>
> +&display_subsystem {
> +       status = "disabled";
> +};
> +
>  &gmac2io {
>         assigned-clocks = <&cru SCLK_MAC2IO>, <&cru SCLK_MAC2IO_EXT>;
>         assigned-clock-parents = <&gmac_clk>, <&gmac_clk>;
> --
> 2.17.1
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

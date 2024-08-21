Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59D0EC531DC
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Aug 2024 09:16:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=up1LXyduRJ2Kcrs+c6dVfuHlj0Mxlu+qjLrPRHjaqkw=; b=QAXzOMT1F+EEOF
	Fnw6nhEIiLyNkkl0YP9/xQMwXeOEwayaigl/x/ikrPICdGMZJhIG9uTVrTwPpX3/0tTDnsdi36Yta
	9y0G5HKDvVCSxm3SV0/5Z4QEs0SPJVryoYttS9dt0u904i7oyajz2mGdUe9wiSGFR7Qx5XQzCpbN2
	UsvyAnAi3X2VxcdtjTSyVNgVSe6PUvI7WNwnU44NY66qWgQDSKpiJqc2cdtp6etpMRWICDZKgwNvs
	dHp/XS9uexzNgzNwFMEKYAmvr+KvrqOz0YSs3GRQxqQMqj/kEOENlwtSGcUvCAzYBx1rx859O3Lgn
	0yCHGuZKHQxr7owWo8dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sghSO-00000008DN3-2BES;
	Wed, 21 Aug 2024 09:16:44 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sghSL-00000008DM1-1y2F;
	Wed, 21 Aug 2024 09:16:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=HL3tWjS5RaaualvJBFqnJpDTlfqrpp/1GZR+3fI0M9U=; b=jD8X+nIyZb3MnxdtSkrmU8IWXL
	42fNxxi2Z41Y8DmFJwIkkczGgwAxN8hZGDGpP6VtkerHwSmR5W86PRh5xZLz/hoaGwd+RtihnXvAS
	1B7PetzMatkA5tV0cDRhoeY8Z07TTUDgI8J7MsCIJroaMiojhJlKMeQv5/dqYxB+09TBX5reKTB8S
	eNeoj7Lt/OA6tD6x0dZMs/85ylli9/IKdo6uAXpFB3t1HKyQ4V1M7cySacHrAwSKYabgQIWn76THs
	623DZAV8VC0xuVLvjDrJm7SdIuGsBc8HKSjX30Had7nwNauk5ao9cdqdr4dlNKEp5YJsnvNZPyBIW
	0+gkjsgw==;
Received: from i53875aca.versanet.de ([83.135.90.202] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sghSJ-00058Q-48; Wed, 21 Aug 2024 11:16:39 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Dragan Simic <dsimic@manjaro.org>
Cc: linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org,
 vkoul@kernel.org, kishon@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/3] phy: phy-rockchip-inno-usb2: Improve error handling while
 probing
Date: Wed, 21 Aug 2024 11:17:06 +0200
Message-ID: <6073817.31tnzDBltd@diego>
In-Reply-To: <486bddb6aad14d05a3fb2d876d0d9d0d@manjaro.org>
References: <cover.1724225528.git.dsimic@manjaro.org> <12869965.VsHLxoZxqI@diego>
 <486bddb6aad14d05a3fb2d876d0d9d0d@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240821_021641_529655_D59DE48A 
X-CRM114-Status: GOOD (  24.54  )
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

Am Mittwoch, 21. August 2024, 11:09:03 CEST schrieb Dragan Simic:
> On 2024-08-21 10:44, Heiko St=FCbner wrote:
> > Am Mittwoch, 21. August 2024, 09:37:55 CEST schrieb Dragan Simic:
> >> Improve error handling in the probe path by using function =

> >> dev_err_probe()
> >> where appropriate, and by no longer using it rather pointlessly in one =

> >> place
> >> that actually produces a single, hardcoded error code.
> >> =

> >> Signed-off-by: Dragan Simic <dsimic@manjaro.org>
> > =

> >> @@ -1375,8 +1372,10 @@ static int rockchip_usb2phy_probe(struct =

> >> platform_device *pdev)
> >>  	rphy->irq =3D platform_get_irq_optional(pdev, 0);
> >>  	platform_set_drvdata(pdev, rphy);
> >> =

> >> -	if (!phy_cfgs)
> >> -		return dev_err_probe(dev, -EINVAL, "phy configs are not =

> >> assigned!\n");
> >> +	if (!phy_cfgs) {
> >> +		dev_err(dev, "phy configs are not assigned\n");
> >> +		return -EINVAL;
> >> +	}
> >> =

> >>  	ret =3D rockchip_usb2phy_extcon_register(rphy);
> >>  	if (ret)
> > =

> > I really don't understand the rationale here. Using dev_err_probe here
> > is just fine and with that change you just introduce more lines of code
> > for exactly the same functionality?
> =

> As we know, dev_err_probe() decides how to log the received error =

> message
> based on the error code it receives, but in this case the error code is
> hardcoded as -EINVAL.  Thus, in this case it isn't about keeping the LoC
> count a bit lower, but about using dev_err() where the resulting outcome
> of error logging is aleady known, and where logging the error code =

> actually
> isn't helpful, because it's hardcoded and the logged error message =

> already
> tells everything about the error condition.
> =

> In other words, it's about being as precise as possible when deciding =

> between
> dev_err() and dev_err_probe(), in both directions.  I hope it makes =

> sense.

I'd disagree a bit, using one format only creates a way nicer pattern in the
driver, by not mixing different styles.

dev_err_probe documentation seems to agree [0], by stating:

"Using this helper in your probe function is totally fine even if @err is
 known to never be -EPROBE_DEFER.
 The benefit compared to a normal dev_err() is the standardized format
 of the error code, it being emitted symbolically (i.e. you get "EAGAIN"
 instead of "-35") and the fact that the error code is returned which allows
 more compact error paths."



[0] https://elixir.bootlin.com/linux/v6.10.6/source/drivers/base/core.c#L50=
09




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

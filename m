Return-Path: <SRS0=z+fE=MF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2B3F5C11F69
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Jul 2021 22:57:35 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E0514613AF
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Jul 2021 22:57:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E0514613AF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1IYbNJWY906teAo+5bFlyHdRW+l2LvnuG7u2LJr48xs=; b=Lvc6Gb21huX8ks
	0ejTNnPLerbo1vcSVTkJRGCAWQENNJWw200xSStPnnXnNZs9Y7/idNQ3jFuRacYHC8ZyRYcRHPVqf
	cyw3gx8v2Bl4J/FDzBYZwH0MIGMblFWaJpQ5luOUAq0wET+puAmrMb/i5xPYoK59/cNrnpvzzlb01
	GFgRsoJ2dXc+c0hUvFpBDcLXY6WDI9pSA+h9btjTyrkuiFl1TtfnP+8va0XSh//NvSwOtn+DRomrV
	jiSZIhIsmyOFQj4kUfB+9x3iXbfjoElxW8qGnpQ1ptpqOQZu3Q+qMUOK8qFSWKUERzhOnyIe5ghXb
	wQP4ss7SgyvZ1ivwkwig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m3RLH-00BYTq-1R; Tue, 13 Jul 2021 22:57:31 +0000
Received: from mail-il1-f173.google.com ([209.85.166.173])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m3RL2-00BYQW-PP; Tue, 13 Jul 2021 22:57:18 +0000
Received: by mail-il1-f173.google.com with SMTP id e13so24904166ilc.1;
 Tue, 13 Jul 2021 15:57:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=pLqgmA3zxhNncLZSYPNiduirqdJowC5CS/FxB37q7a0=;
 b=q0qxcrZkb4PKRuAtdWuI1YWm8zv9Yr1HLu913nXWwFEJXOkP1o1a52nX+Zk/y+e5Bk
 iM7WsxNwiYLSUrDEl6eaCaAEDKaH6Q8KnYO975dxQLIpK8oF+G1J5wPynCxOyguaEnA3
 EBnEtzBUhTeiDcboP9l4hqmj9tJ3y5o3x36ABhujHRbpri/BUufpk1tf+WaI9afQPWzS
 PAwFa8LKRmQ7/KisFZCkZj4UHlhhabI1NN5wH+8muZ6gi2FzfNLZRu6SzpEelEdRd/Xj
 vMStr7rCD2lVoaebznTe7j/kTyz0AQUdeN5KRZB3A1wRKm3bGx6q//1X/z7WD7hzYin3
 Z2Ug==
X-Gm-Message-State: AOAM531kHxR0///eApLire0mJuaY8NNgNQbY5qTQvQMpykmDE7E5uP49
 ST1Ybp03WN0pR2XdvgfM+A==
X-Google-Smtp-Source: ABdhPJxDX1fh/0j6B2cCSd4v8x4aGdA/5rqK4c3fCxO5I50gLSJPtAzdjVMjSMFPK1gExOJTLlDC3g==
X-Received: by 2002:a05:6e02:218c:: with SMTP id
 j12mr4598261ila.32.1626217035898; 
 Tue, 13 Jul 2021 15:57:15 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
 by smtp.gmail.com with ESMTPSA id t16sm209462ilp.15.2021.07.13.15.57.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Jul 2021 15:57:15 -0700 (PDT)
Received: (nullmailer pid 1007696 invoked by uid 1000);
 Tue, 13 Jul 2021 22:57:09 -0000
Date: Tue, 13 Jul 2021 16:57:09 -0600
From: Rob Herring <robh@kernel.org>
To: Lee Jones <lee.jones@linaro.org>
Cc: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 cl@rock-chips.com, thierry.reding@gmail.com, heiko@sntech.de,
 jagan@amarulasolutions.com, wens@csie.org, uwe@kleine-koenig.org,
 mail@david-bauer.net, jbx6244@gmail.com, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 jensenhuang@friendlyarm.com, michael@amarulasolutions.com, cnsztl@gmail.com,
 devicetree@vger.kernel.org, ulf.hansson@linaro.org, linux-mmc@vger.kernel.org,
 gregkh@linuxfoundation.org, linux-serial@vger.kernel.org,
 linux-i2c@vger.kernel.org, jay.xu@rock-chips.com, shawn.lin@rock-chips.com,
 david.wu@rock-chips.com, zhangqing@rock-chips.com, huangtao@rock-chips.com,
 wim@linux-watchdog.org, linux@roeck-us.net, jamie@jamieiles.com,
 linux-watchdog@vger.kernel.org, maz@kernel.org, linux-pwm@vger.kernel.org
Subject: Re: [RESEND PATCH v5 1/4] dt-bindings: pwm: rockchip: add
 description for rk3568
Message-ID: <20210713225709.GA987961@robh.at.kernel.org>
References: <20210622020517.13100-1-cl@rock-chips.com>
 <20210623021303.28015-1-cl@rock-chips.com>
 <20210705064914.o2neaiwqndjfdyqd@pengutronix.de>
 <YOK1+pMy+N64eR75@dell>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YOK1+pMy+N64eR75@dell>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210713_155716_849374_C2326EE4 
X-CRM114-Status: GOOD (  16.00  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, Jul 05, 2021 at 08:34:18AM +0100, Lee Jones wrote:
> On Mon, 05 Jul 2021, Uwe Kleine-K=F6nig wrote:
> =

> > On Wed, Jun 23, 2021 at 10:13:03AM +0800, cl@rock-chips.com wrote:
> > > From: Liang Chen <cl@rock-chips.com>
> > > =

> > > add "rockchip,rk3568-pwm", "rockchip,rk3328-pwm" for pwm nodes on
> > > a rk3568 platform to pwm-rockchip.yaml.
> > =

> > Looks good to me
> > =

> > Acked-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> > =

> > Who is supposed to apply this patch? Does this need blessing by Rob?
> =

> There is no standard.  Rob will usually have some kind of arrangement
> with the associated maintainer(s).  If this is a big functional
> change, I would suggest letting Rob and his army of bots give it the
> once over before it is applied in any case.

The documented standard[1] is subsystem maintainers take bindings. Are =

there exceptions? Yes. Usually that's standalone patches (which netdev =

maintainers just ignore for example).

One line compatible string changes don't need to wait for me.

Rob

[1] https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git/tree/Doc=
umentation/devicetree/bindings/submitting-patches.rst#n67

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

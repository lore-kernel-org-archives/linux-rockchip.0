Return-Path: <SRS0=kcRh=JJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B22CC433B4
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Apr 2021 03:16:05 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 086C66103D
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Apr 2021 03:16:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 086C66103D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Js8abXIWFlzz7bdc4fadi60Hv7h/jjjFRbHOdgGgJg4=; b=L2mLNDLreLX6Dwdxp/8ZhBuel
	7qiMFRQzk7URhgnYQTHLsDGGNBR+vLGRPkG1J4yn9J2T11L8SZU4JzdrztQX8zu9r8/56WExRBNxJ
	iZ3RK2lekRjNyRIbk/Oa8VtEHTB2h9eIFDOGH52u4Z8twQ7jBv1BLvCRpva0PtwB9WzznZJ+so9+4
	mvhsl/nuEPuvLpN0kJmb1BX8D6NO5UrgnT/5XknWshLn5i/tbuhh6b7R817eLyWN4r7b5SKSbGnbK
	gKYgwmcbZHjBp+KxgBnND1I5bdlVE08kcMdd9SqMMpEPlfQeelDcxKd2p2vtd1njCATZs7uwCMOch
	VfTjps7Nw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVn3Q-005Zoc-5E; Mon, 12 Apr 2021 03:16:00 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVn3F-005ZnR-V0; Mon, 12 Apr 2021 03:15:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:Cc:To:Subject:Message-ID
 :Date:From:Reply-To:In-Reply-To:References:MIME-Version:Sender:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=MEBeMSZwCLiNgtETaZdBAHcB6oSiuhP7OTq68o+q6qU=; b=o9mjWVsgPcvwMeFTfenU+5h0q5
 TFhjHHGcok5FFqytzOcWNGx7e/W+g5I1R9Om2KZuofTi8HG08YhxEhHmyhpAxPCOgyoGUbD38jMA/
 ObYqWKMC4IzU2wmcBzx1Kiz8luWCDQlqpOfYp5vEE1KAPuG4dFQa2/Ng/FVOUUE+gid3GyPtewBWa
 qfBlG3dwNG8XuUbVTgl/5H3aKkvIogrAaNRNB54Fs8zBUR4kz1asZFV9TuG5hhP5M1tPOx8bMxRnM
 HFLXIaha8nh8OZ+qfnp9JobYYAYeZMHM0kCJkFCEbfgr4eRk36TuaVPUz0BZpmZDR6U1r2HuxXqTu
 YNYyl4Dw==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVn3D-005r47-Cc; Mon, 12 Apr 2021 03:15:48 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id E7A816120A;
 Mon, 12 Apr 2021 03:15:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1618197346;
 bh=MEBeMSZwCLiNgtETaZdBAHcB6oSiuhP7OTq68o+q6qU=;
 h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
 b=AsixbbEfcJQeCUBLhHHdSKb4PsstJcAjesgFqQSgsFfoutKECCR4Eaxp1XEQ9J4MA
 UpncmUnFRscfoXy9LObT8q5ZtMr00QUTYo5HqsA51O4xxcnUFgycv8ukBAJ5kFwvfW
 GCdyem1GHPp0ihDFB2JDxIlJo6h9TCeoEphym4XnjjKYbXr1+DB/tf3/nn4/FIgsrp
 5KZhWuPZBY5UzZ6L04IG4wzh7/FHm/HK7NcQFTzGO3VU/e5qqW2epzr/SWXh1M8eKr
 KEfd/QXi92cRRaJnwMRfay1AmRuKd8B6DLQjxLIW43EzBCca9X45Xck6pqrw9kaOHE
 l3+6JLRj3CCMg==
Received: by mail-lj1-f179.google.com with SMTP id m7so2747360ljp.10;
 Sun, 11 Apr 2021 20:15:45 -0700 (PDT)
X-Gm-Message-State: AOAM533PBG007JMGaZ4+dQTsLuJb0ltAUTUvVqr4vqrWgjV0m4fsnoL2
 6ET03/RfljPIykMZH/qXeiH2y1tRB3OqzAmogkQ=
X-Google-Smtp-Source: ABdhPJxY40eVzTueYOpnHIuI8SLf2FP95b6CadyqCzVZkmgU4iiNPf4qkbkYSduLZMay54CJOUuttMeYEXCIdAuFf4o=
X-Received: by 2002:a2e:2f03:: with SMTP id v3mr11027054ljv.463.1618197344265; 
 Sun, 11 Apr 2021 20:15:44 -0700 (PDT)
MIME-Version: 1.0
References: <20210411131007.21757-1-jbx6244@gmail.com>
 <20210411131007.21757-3-jbx6244@gmail.com>
In-Reply-To: <20210411131007.21757-3-jbx6244@gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 12 Apr 2021 11:15:35 +0800
X-Gmail-Original-Message-ID: <CAGb2v67s7a4GARfAnROKS40kaYQpdW_qWX=HX6GU09jV9wrbXw@mail.gmail.com>
Message-ID: <CAGb2v67s7a4GARfAnROKS40kaYQpdW_qWX=HX6GU09jV9wrbXw@mail.gmail.com>
Subject: Re: [PATCH v2 3/6] ARM: dts: rockchip: remove interrupts properties
 from pwm nodes rv1108.dtsi
To: Johan Jonker <jbx6244@gmail.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>, 
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, 
 Lee Jones <lee.jones@linaro.org>, linux-pwm@vger.kernel.org, 
 devicetree <devicetree@vger.kernel.org>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 linux-kernel <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210411_201547_486222_ADEA4C02 
X-CRM114-Status: GOOD (  11.13  )
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
Reply-To: wens@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Sun, Apr 11, 2021 at 9:11 PM Johan Jonker <jbx6244@gmail.com> wrote:
>
> A test with the command below gives this error:
>
> /arch/arm/boot/dts/rv1108-evb.dt.yaml:
> pwm@10280000: 'interrupts' does not match any of the regexes:
> 'pinctrl-[0-9]+'
>
> "interrupts" is an undocumented property, so remove them
> from pwm nodes in rv1108.dtsi.
>
> make ARCH=arm dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml
>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

Given that the interrupts were specified, meaning they are wired up in hardware,
shouldn't the solution be to add the interrupts property to the binding instead?

After all, the device tree describes the actual hardware, not just what the
implementations need.

ChenYu

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

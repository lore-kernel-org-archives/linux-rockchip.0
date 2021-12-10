Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16423C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Dec 2021 18:33:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D/EuJ/oTaqcC7uIMHdQFbjSvk97R8DoX9PbHQ0Qlg6U=; b=i8dOY+wqnS5/Nq
	UeIz2X/OvTKCQp7rWI3qoyRMhXvWB3njCirMAxWqUI1GgXEh64o5ONdEzj5e7AtUMpMW08kApN4EO
	rRskY33wSpwEVo/7KC32G4ynk17zSFNH5bMS4sxvyubAFmztPGSPt7Gb6RXRJEQ3eaWsCfV9xwFC5
	2Ln9ccqIPD/rUf5oT36eXCTTSW+PsL5p01OuPkmYxgEt7vSYQq2I6kcI6TI1Bq9Zq7iXIKtiEY0BH
	kAxhT3sxXqGcgZ1JnXfapm118jyNRFMJfGSP7RFMIM+pZBa/cLRHVT4UfBOocD4lmPyTHp1e27DAw
	UcncUbM5UYd6agscaE/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mvkhj-003DML-HJ; Fri, 10 Dec 2021 18:33:11 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mvkhg-003DKu-TL
 for linux-rockchip@lists.infradead.org; Fri, 10 Dec 2021 18:33:10 +0000
Received: by mail-ed1-x52e.google.com with SMTP id x15so33480969edv.1
 for <linux-rockchip@lists.infradead.org>; Fri, 10 Dec 2021 10:33:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=R+5wfzvY98r911pdlNHS5MRZhjqkHPF9SqDy5RQ+nGs=;
 b=0FrAeyHRpiQDLNRCH38LGYEW5OlercFk3DROOyI+5MF4Aiw8BvLF+GCTJpv3NKxJy8
 w6XzrFa0A4VvMMlEU5z/Z298tMnaEJKBq6VeGIjX+thf/iO5KbDMg1BG2s0ux0pQV0XL
 L0w0pukiLEDpC5eKc8vPyhFf4+3+6sceGamqAVhs5Kn+fhrwpRXew7EnfGZfjV1KOpOo
 GsbDXtupxwNXVLa7onRj0aOr7ByIMeeLVr8b9i5Ih2ez3BMkuu+Noz8qQcPqLFM956T3
 mU1cLd9j/5Aeb5XROTdKgsLG6YeZUnyInnb8MjJCX3TEKg+E78spgZbNmQA8jGbD++MV
 Xm+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=R+5wfzvY98r911pdlNHS5MRZhjqkHPF9SqDy5RQ+nGs=;
 b=N9Gv86ZD2ckqAILBuyuJNy9RJS+GSNpBjFy3hQ/Tv3y+lNVH+qYgdQOhCy7H6MclA7
 6ZlF/YBSsae6Wk0Qy0p5pn9RlRBvmkA6jPyZ+r/bGJIXw78K/E21gAbOBEO8EqJWKYGB
 uArcXYpqX9f9cUk0ZwtJJ+osxcKJILamYMQeQ5yPxfM07KyrcbnQCluMMpUVf4u47oYJ
 BGeybobBEEhwEZTBAfY/KaUQ8Yx8nb2F+RdOUAzr7fNoG0R8h+jQWqdqoSByB4XbeGCo
 SeCgA+odtRgyC4S4DATU9dHfzwcSTTAfjULtUDDCoUhuujQLH5mBsVKPJepQtI+83KLy
 lLnw==
X-Gm-Message-State: AOAM530H27JWNVB/mU9y22PlZRbTpp9yy9nuY8NIpQmNUm+5E355D+VQ
 ea8nfoy8gMG7flSMY/h4pKIlet0D6hVjbZsaNCAFtA==
X-Google-Smtp-Source: ABdhPJw2lS/O2yAfLVTw6WVq78ELyMdt5/AEs5anuvPRPowAgkoa3NmZtsHE2c0DEj0r6fuPtxiB7KX0gypvQotrn6Q=
X-Received: by 2002:aa7:c30e:: with SMTP id l14mr40506518edq.370.1639161186439; 
 Fri, 10 Dec 2021 10:33:06 -0800 (PST)
MIME-Version: 1.0
References: <20211208225030.2018923-1-aford173@gmail.com>
 <20211208225030.2018923-5-aford173@gmail.com>
 <YbHZvysazqYeZ8h3@eze-laptop>
 <CAHCN7xKrHSSsqS9DNL1tMH1Ctpz16FsSgcVbSHXzUWF98v738Q@mail.gmail.com>
 <YbNz94G3vwbHCMdB@robh.at.kernel.org>
 <c88b7a90f7a3bf94fc0cbb9a6f967ce769d5c03b.camel@pengutronix.de>
 <CAHCN7xLQrYy6H3U_yjCevu7F3AtEJJNbA7gdig=dn08hQfXCUA@mail.gmail.com>
In-Reply-To: <CAHCN7xLQrYy6H3U_yjCevu7F3AtEJJNbA7gdig=dn08hQfXCUA@mail.gmail.com>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Fri, 10 Dec 2021 15:32:54 -0300
Message-ID: <CAAEAJfAuH_cupFkEN=5M3fy-JJ401EB3f2-6yvXFt9zJ4rYW4A@mail.gmail.com>
Subject: Re: [PATCH 04/10] dt-bindings: media: nxp,imx8mq-vpu: Support split
 G1 and G2 nodes with vpu-blk-ctrl
To: Adam Ford <aford173@gmail.com>
Cc: Lucas Stach <l.stach@pengutronix.de>, Rob Herring <robh@kernel.org>, 
 linux-media <linux-media@vger.kernel.org>, 
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Chris Healy <cphealy@gmail.com>, Adam Ford-BE <aford@beaconembedded.com>,
 Nicolas Dufresne <nicolas@ndufresne.ca>, 
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 "open list:HANTRO VPU CODEC DRIVER" <linux-rockchip@lists.infradead.org>, 
 devicetree <devicetree@vger.kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
 "open list:STAGING SUBSYSTEM" <linux-staging@lists.linux.dev>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211210_103309_185402_06D01633 
X-CRM114-Status: GOOD (  19.97  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

> >
> > I'm in favor of dropping the old binding from the schema. New DTs
> > should clearly use the new binding and old DTs shouldn't change
> > anymore, so validation is less useful there.
>
> I wonder if it makes sense to have a more standardized hantro schema
> for all the users instead of one dedicated to each platform using a
> hantro driver.  The unified schema could have all the various
> compatible flags so the driver still knows which features are
> enabled/disabled and it's very clear who all the users are for it. I
> would think it could cover both the encoder and decoder variants as
> well.  We do something similar for 8250 serial ports.
>
> If so, can someone from the media group suggest the best one to
> follow?  Ezequiel suggested I look at the sama5d4-vdec to help reduce
> some clutter in the driver.  If that binding is good enough, should I
> just add the compatible flags to that and potentially rename it.
>

A unified schema might sound elegant and compelling, but I suspect
it can bite us down the road, due to differences in the platform integration.

Seems we are all on-board going forward with a patch similar to this one,
but also dropping the deprecated binding from the schema (while of course
still supporting old DTBs on new kernels).

Rob's suggestion about having a warning in the platform if the binding has
not been updated, sounds like very useful too.

Keep in mind v5.16-rc5 is near, which means we still have a few weeks to
discuss this patch, until the next linux-media merge season.

Thanks,
Ezequiel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

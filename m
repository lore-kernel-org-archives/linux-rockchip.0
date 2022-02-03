Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2443FC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Feb 2022 13:17:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NCUaELSeEauw3USefASWzws5hnApnnOt5Ok8d6M//3A=; b=vdck9hy1Q4bhoV
	a7elHyM4teJctyj1EJxuva8Mu2au9hymRy5k3xf5fnHkC2QYKluaYS/4fF3x3YfSDwAfaTvljawTi
	anNs9fY2TvaRn1wByooWT5d5x4Z9uE/FjNC1dnuSD2mcJKMjHOvmBmB1GKeSCcwxPsVcqJq6XDquX
	rpwXm1MUfmOw9DNLaTuXkoc7dHYXzmmKIlhi3pg01iDpfE70vcZY+BAAPt+30MfXX4uuW0HkvjlLJ
	LZPpuCfAxMXvuNaSPl2sjqxhRaAdy2hLrFEqb6cbqzy/Pojx4G1IdUFzS1dr8EpTn1pdzoHX+eeP9
	Wb0OC6nbiB/43kcKCUEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nFbyt-001OKF-15; Thu, 03 Feb 2022 13:16:59 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nFbyq-001OIt-J5; Thu, 03 Feb 2022 13:16:57 +0000
Received: by mail-ej1-x635.google.com with SMTP id ka4so8682714ejc.11;
 Thu, 03 Feb 2022 05:16:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Bdyf7D6NeIfikPS/uqe99QCdtkoBXMfRD7d4Vkt8KZ0=;
 b=fnO4Z9ikvpsMPCsKu6x6QsuM8vFnXR7m2mYfr5RDy4CHjqdkG4l8mUCcQ3/A/ZVq3N
 Tiw9v8aDR+6j+MTTtKmYvP1/T6tCYwgGtshXIsljrlWgPPwefokeevA26/GU4gJlJ73R
 v0dAV3zxaUspQD+1z4tJbSqZGpYqAUUrBgUa+a+D6zSSAVrMHHcbvxZV/40hWQSwQAq7
 gZw6dMjO/DSilkrdUsV9tG53PBkShl+rCqf7H55tqCNq1oH9Wz5gpzenx95pIk2CUHH1
 D6nvoKHkradIsoR9S6Ugx8D65IEEi7P2NlMyirZyNM8K87yMmopmd2hD1WODbzd5MuUD
 IIPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Bdyf7D6NeIfikPS/uqe99QCdtkoBXMfRD7d4Vkt8KZ0=;
 b=JDGBJRjDsZtUNsvUJnEKO+pz/XtslxHUBtFNey1gqMBl5+r9vuWtwtxvV5+NDTC1qW
 MuCzwB76kz67bS58zcgte/CWp8kviWhAf5BL/IM+vSSRlDGK9zAh2EFynHsU/JM0S2Wb
 lW8r5bETyfzIWR4D8C91AUIy3OFXigVHyvIQTa7eD3HljmyaSXEblZ25mDqNuDEaPRMQ
 AU+bRNZm4yzVbc9mVbmSi6zYZ/5GoZOZn1uRScJAYCwT00lZoEWUpZUAfkaFPId6EWQO
 m6E5Yvl3ODtzW7xt+ZZBqY7tlNqBk6tbLdYdNoPPDDjHZBfF1EyyWcvn+IXtYtG+LOkX
 sIcw==
X-Gm-Message-State: AOAM531pqVhGLfo55h9wzKS4RC1w+JRltg/97yrAcoikssHYnvhA+7Vq
 A4wnLalonczUYg/ySTEfmBKtjqvII4+USDhl/KTccSCX
X-Google-Smtp-Source: ABdhPJxk9m897IDjpBQJ4LNiGZxfQhz/ry40RQmM9zo6kAM1YbhCHKqydSjqdaAq8TwWy4Z9YFP8VO86vKIUQc2JKdU=
X-Received: by 2002:a17:906:4787:: with SMTP id
 cw7mr25116328ejc.504.1643894214217; 
 Thu, 03 Feb 2022 05:16:54 -0800 (PST)
MIME-Version: 1.0
References: <20220125171129.472775-1-aford173@gmail.com>
 <20220125171129.472775-3-aford173@gmail.com>
 <43e29322-fc4d-2c72-86b2-1f41fb05a2f9@xs4all.nl>
In-Reply-To: <43e29322-fc4d-2c72-86b2-1f41fb05a2f9@xs4all.nl>
From: Adam Ford <aford173@gmail.com>
Date: Thu, 3 Feb 2022 07:16:43 -0600
Message-ID: <CAHCN7xLRnCRUwOLLW=EF2XdFY+V4EHqcGG-tj2SymiBL5Cki0w@mail.gmail.com>
Subject: Re: [PATCH V4 02/11] dt-bindings: power: imx8mq: add defines for VPU
 blk-ctrl domains
To: Hans Verkuil <hverkuil@xs4all.nl>
Cc: Shawn Guo <shawnguo@kernel.org>, Adam Ford-BE <aford@beaconembedded.com>, 
 Chris Healy <cphealy@gmail.com>, Lucas Stach <l.stach@pengutronix.de>, 
 Rob Herring <robh@kernel.org>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 "open list:HANTRO VPU CODEC DRIVER" <linux-rockchip@lists.infradead.org>, 
 devicetree <devicetree@vger.kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
 "open list:STAGING SUBSYSTEM" <linux-staging@lists.linux.dev>,
 linux-media <linux-media@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220203_051656_652952_977D0D64 
X-CRM114-Status: GOOD (  17.46  )
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

On Thu, Jan 27, 2022 at 2:46 AM Hans Verkuil <hverkuil@xs4all.nl> wrote:
>
> Shawn,
>
> Can you take patches 2-4 of this series or shall I? In the latter case I
> need your Acked-by for these three patches.

If necessary, I can tweak the YAML file.  I just need to know if I
need to resubmit the whole series of just the one file.

adam
>
> Regards,
>
>         Hans
>
> On 25/01/2022 18:11, Adam Ford wrote:
> > From: Lucas Stach <l.stach@pengutronix.de>
> >
> > This adds the defines for the power domains provided by the VPU
> > blk-ctrl on the i.MX8MQ.
> >
> > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> > Acked-by: Rob Herring <robh@kernel.org>
> >
> > diff --git a/include/dt-bindings/power/imx8mq-power.h b/include/dt-bindings/power/imx8mq-power.h
> > index 8a513bd9166e..9f7d0f1e7c32 100644
> > --- a/include/dt-bindings/power/imx8mq-power.h
> > +++ b/include/dt-bindings/power/imx8mq-power.h
> > @@ -18,4 +18,7 @@
> >  #define IMX8M_POWER_DOMAIN_MIPI_CSI2 9
> >  #define IMX8M_POWER_DOMAIN_PCIE2     10
> >
> > +#define IMX8MQ_VPUBLK_PD_G1          0
> > +#define IMX8MQ_VPUBLK_PD_G2          1
> > +
> >  #endif
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

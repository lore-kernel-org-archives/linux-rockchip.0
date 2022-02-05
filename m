Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8D2B5C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat,  5 Feb 2022 14:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RiXow53dSNGKceU8q+FP5CKzmVBkBiOvTkmbRu1UixQ=; b=BGpgUI6s9V50JE
	/w+Ht5VXl1VNhTkmi3M6EQBuqqpLpErRxmMHapIhYpqP2G1nd393ok733xuX37Ap/csXJiOAePM1o
	bZY/ujMxeolpC4imgxaR0vovNSHAucrZPuZrTfqCtvO4qFCMV+uuZGmEREkFOaSYPSoGsrdG6ztdc
	dIF7NdooPQU9+LVl8qPivELUDSjCkNUmu/nFjarGw3ixhDjMwZvGQFz6JOWas7o75GsDIdrNM6MCA
	bV3pnhg/JHMTym70sJCaozL03ObW1PRIr63Da4R3s59rp+13PKmQmqm56n8fBug4liIBDAj5iotxb
	iGGB7YRLmbbip4fGDTyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nGLdH-006azz-Um; Sat, 05 Feb 2022 14:01:43 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nGLdE-006ayT-7m
 for linux-rockchip@lists.infradead.org; Sat, 05 Feb 2022 14:01:42 +0000
Received: by mail-ed1-x52e.google.com with SMTP id b13so19546933edn.0
 for <linux-rockchip@lists.infradead.org>; Sat, 05 Feb 2022 06:01:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/T0j4YmGJcgpIu421P1/dimIR0CxdCqo8uH7IcJ/4gQ=;
 b=ycgJvcnTlpqZNVhoA9CjXAOtRLtmOrllHT1AJKLyornTNPy09m2qelUk1JxtgQwfsh
 Emsd2HifHnckUBnGChCm10HiE0IGAta4CrWgFdqWXZTB0d/+t1dZw4cE8uESEFK/KosN
 bnscZp2nSU9kcgN5jFuravGijoeZsmlL4Rmxva3vPzZlmXfGdBzwtPTh5tkcYcKs0Koh
 648OpvPXCqky7qcStI1CCBKxOht54+wepTL893Z13+mx+caKvBtpIh8t3q5S1jZcrj/I
 6mHMOlPCdcHY24RFD7mDo+S1PDZm58w+2q5k9PldbILlFD8u9WGQYAvzqjmpAvBTctw1
 TYNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/T0j4YmGJcgpIu421P1/dimIR0CxdCqo8uH7IcJ/4gQ=;
 b=n+E9e9+Mn5hO3f59GxAVXD8uULcNH2d/Q6d+j50rr8jx94o4NhdiIQlOa4++BhNqeE
 3+AyE7J4dVqeMb0HKde+VXhyDjOLwE6lXyTvyA+PoBquRF/Laskf9PEwmUkI43AS3lGK
 QiJ8GEwPHFcVD1oHYDLksoH2Rsdk9l3ZCFa7/iXSkfgmUlz254E4D5pyP62GSzBG5ZjL
 hUNfXTyFzt09DMDDmuAwGWlxao8P1AkW/FB0180ihTXaaJBXDi0P0R6Ot/8Z4hBD5dp2
 40Qvca72rtXFmtO/tRS4sEhfcT7rSTmRoeSpYWPNaACJzHfUJ+IXNR4Aohh+9Spef2mZ
 pnlA==
X-Gm-Message-State: AOAM531jortkhRaLXYK0YIihzbbUJ+0+FfRnxD2uKmBI4IBz64fZ4Tdi
 XxGQXZEm+VlFDifqNxv3PFLrmUrO4ZPrRk184ehb4g==
X-Google-Smtp-Source: ABdhPJxjORbMvr+wAzN/c18pI3z16Av5bxvxOpm75K+cTPP+HabLnq/blEZ/OGup/Zv8zvg4hjtNH/oISTd1EXOz5/M=
X-Received: by 2002:a05:6402:34c2:: with SMTP id
 w2mr4442225edc.357.1644069696418; 
 Sat, 05 Feb 2022 06:01:36 -0800 (PST)
MIME-Version: 1.0
References: <20220125171129.472775-1-aford173@gmail.com>
 <20220125171129.472775-3-aford173@gmail.com>
 <43e29322-fc4d-2c72-86b2-1f41fb05a2f9@xs4all.nl>
In-Reply-To: <43e29322-fc4d-2c72-86b2-1f41fb05a2f9@xs4all.nl>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Sat, 5 Feb 2022 11:01:23 -0300
Message-ID: <CAAEAJfDfd83LWOZmcg-==JTs7QHveT3dQ=BdnFc21=zZXrTxuA@mail.gmail.com>
Subject: Re: [PATCH V4 02/11] dt-bindings: power: imx8mq: add defines for VPU
 blk-ctrl domains
To: Hans Verkuil <hverkuil@xs4all.nl>
Cc: Shawn Guo <shawnguo@kernel.org>, Adam Ford-BE <aford@beaconembedded.com>, 
 Chris Healy <cphealy@gmail.com>, Lucas Stach <l.stach@pengutronix.de>, 
 Rob Herring <robh@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 devicetree <devicetree@vger.kernel.org>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
 "open list:STAGING SUBSYSTEM" <linux-staging@lists.linux.dev>,
 linux-media <linux-media@vger.kernel.org>, Adam Ford <aford173@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220205_060140_730877_6800A998 
X-CRM114-Status: GOOD (  14.20  )
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

Hi Shawn, Hans,

On Thu, 27 Jan 2022 at 05:46, Hans Verkuil <hverkuil@xs4all.nl> wrote:
>
> Shawn,
>
> Can you take patches 2-4 of this series or shall I? In the latter case I
> need your Acked-by for these three patches.
>

Gentle reminder about these patches.

Thanks!
Ezequiel


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

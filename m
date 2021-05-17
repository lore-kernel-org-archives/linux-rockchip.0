Return-Path: <SRS0=F3mh=KM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 82785C433B4
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 May 2021 13:27:11 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F0C43610E9
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 May 2021 13:27:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org F0C43610E9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:Cc:To:From:
	Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MWRbOQse35WsUbkeBSINr3h0xPzjaCmX0B89Yc0+M5c=; b=PEigtA0V87ujzK6cjayu5Ektn
	Gf+9sjLp84SBFd31gzjeSYiI/HxJXvCR+ysfx3+RQhQ5U2L8rt5bUstHtOe1BjWf+SS3ALgXCOnsd
	i6IVmoB+GoQ9mUt2xOkDYNh6OkT1b7UOnBvHHnzPtT5KejVQGJquUeNRuH9AQqV9sKVxIXRgXDLd9
	LqugB7OxriT+tknHmJsyPCgsF/JjeE5RlueKUaORE8Tx75j5o8tOvmuyxnlqzeUMT6rgN2MyFO3J0
	HaXRiz2gAstmE1nv0eX5PpN1mtI5eTRPTmYK0FxVdgMdNLp4AFzBBygoQCB26vDoeYJERINgtk60B
	b1VaQYc5w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lidGq-00F4Xo-52; Mon, 17 May 2021 13:26:56 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lidDc-00F3aa-Bz; Mon, 17 May 2021 13:23:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:
 Message-ID:Sender:Reply-To:Content-ID:Content-Description;
 bh=KX63NNvUkXOlo/Rn0vRND7mko7pXrtT9tqGVFZkxNpQ=; b=2XvLRojcYrfNjHqkO3L34FF70s
 vhqw73FuL/U6GpSvLWnT1ILXDnBIPHopybdKN2Mk4scmuKOtoI6CVpV2oxwnuT63PO22597JcH4pC
 Gf1sVZ0HwHsIbGe0CWDudrVwzLtllya0Zal65M+iFK1OOy7km0im809Xf//e/OkD5rYs1rDXvDtet
 djdZniN4oiZ7up+g0kyvee2Tte9t2okVkijJ3Hoy79mq06D2rNo/5vLFTXof0fQM9NMkFeUWI9MkA
 NcNkrYyH/XFhPjOswGuyudO+9DzqGtJ4fxet1NVDxuXOxEh4q2PAUjOpFYPZ+eStJ5xgpiozpncnh
 +lYNuKWQ==;
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lidDW-00DnPu-8F; Mon, 17 May 2021 13:23:34 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 8FFC11F41DE7
Message-ID: <5aa5700b862234895a7a6eb251ca3c80fdc1a6d3.camel@collabora.com>
Subject: Re: [PATCH v9 03/13] media: hantro: Use syscon instead of 'ctrl'
 register
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Lucas Stach <l.stach@pengutronix.de>, Benjamin Gaignard
 <benjamin.gaignard@collabora.com>, p.zabel@pengutronix.de,
 mchehab@kernel.org,  robh+dt@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de,  festevam@gmail.com, lee.jones@linaro.org,
 gregkh@linuxfoundation.org,  mripard@kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org,  jernej.skrabec@siol.net,
 hverkuil-cisco@xs4all.nl, emil.l.velikov@gmail.com,  "Peng Fan (OSS)"
 <peng.fan@oss.nxp.com>, Jacky Bai <ping.bai@nxp.com>
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-imx@nxp.com, kernel@pengutronix.de, kernel@collabora.com,
 cphealy@gmail.com,  linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Date: Mon, 17 May 2021 10:23:14 -0300
In-Reply-To: <72fef3d9f79194876f2035e996bb83f9f8b12902.camel@pengutronix.de>
References: <20210407073534.376722-1-benjamin.gaignard@collabora.com>
 <20210407073534.376722-4-benjamin.gaignard@collabora.com>
 <7bcbb787d82f21d42563d8fb7e3c2e7d40123932.camel@pengutronix.de>
 <831a59b052df02e9860b9766e631a7ab6a37c46a.camel@collabora.com>
 <72fef3d9f79194876f2035e996bb83f9f8b12902.camel@pengutronix.de>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210517_062330_454349_E0E9E013 
X-CRM114-Status: GOOD (  33.43  )
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

On Mon, 2021-05-17 at 12:52 +0200, Lucas Stach wrote:
> Hi Ezequiel,
> 
> Am Sonntag, dem 16.05.2021 um 19:40 -0300 schrieb Ezequiel Garcia:
> > Hi Lucas,
> > 
> > On Fri, 2021-04-16 at 12:54 +0200, Lucas Stach wrote:
> > > Am Mittwoch, dem 07.04.2021 um 09:35 +0200 schrieb Benjamin Gaignard:
> > > > In order to be able to share the control hardware block between
> > > > VPUs use a syscon instead a ioremap it in the driver.
> > > > To keep the compatibility with older DT if 'nxp,imx8mq-vpu-ctrl'
> > > > phandle is not found look at 'ctrl' reg-name.
> > > > With the method it becomes useless to provide a list of register
> > > > names so remove it.
> > > 
> > > Sorry for putting a spoke in the wheel after many iterations of the
> > > series.
> > > 
> > > We just discussed a way forward on how to handle the clocks and resets
> > > provided by the blkctl block on i.MX8MM and later and it seems there is
> > > a consensus on trying to provide virtual power domains from a blkctl
> > > driver, controlling clocks and resets for the devices in the power
> > > domain. I would like to avoid introducing yet another way of handling
> > > the blkctl and thus would like to align the i.MX8MQ VPU blkctl with
> > > what we are planning to do on the later chip generations.
> > > 
> > > CC'ing Jacky Bai and Peng Fan from NXP, as they were going to give this
> > > virtual power domain thing a shot.
> > > 
> > 
> > It seems the i.MX8MM BLK-CTL series are moving forward:
> > 
> > https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=479175
> > 
> > ... but I'm unable to wrap my head around how this affects the
> > devicetree VPU modelling for i.MX8MQ (and also i.MX8MM, i.MX8MP, ...).
> > 
> > 
> For the i.MX8MQ we want to have the same virtual power-domains provided
> by a BLK-CTRL driver for the VPUs, as on i.MX8MM. This way we should be
> able to use the same DT bindings for the VPUs on i.MX8MQ and i.MX8MM,
> even though the SoC integration with the blk-ctrl is a little
> different.
> 

AFAICS, there's not support for i.MX8MP VPU power domains. I suppose
we should make sure we'll be able to cover those as well.

Will i.MX8MP need its own driver as well?

> > Can you clarify that?
> > 
> I'm planning on sending some patches adding i.MX8MQ VPU support to the
> BLK-CTRL driver in the next few days. I guess that should clarify
> things. :)
> 

Great.

Thanks a lot,
Ezequiel


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

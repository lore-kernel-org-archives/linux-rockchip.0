Return-Path: <SRS0=WkAD=KL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3095EC433ED
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 May 2021 22:41:16 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A7E4B61003
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 May 2021 22:41:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A7E4B61003
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:Cc:To:From:
	Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zc3ZH1G69bKtkHwglUiiRGLZfLIB25n24bR8QDe157Y=; b=Ep6wPVgRVDB9LcoPo2FhHYu1H
	yw/dzwRvQtzVF++VbyDv1kfl3dHuzJSDX3ULHD0ZLsRKy/IUocBgdgcSCjK7U++sRvV+MlTnuA+eA
	tct8LxPs7vFrnC+HhCnkMxTZzxPA0nEaIwQgIEi5eAS9Y2KVJT2Vxz0hRb+P8fLEq8PaZxg9uUSUe
	KTLuuQMyXFj/c1n/VY+KJZkM3e70yghRCPnTmUWtfqpx9+TD2ehs7vGgf1cInatrm3PCeXTf+eHA8
	preq7O08cQUzqfQUDIvqAxvCsrAvVjzeBdVbPle7dqgk0WEIRdkUyaPuBYWq5sgxZJjdMtSZ3cyUF
	GQdhWa40A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liPRc-00D5Be-94; Sun, 16 May 2021 22:41:08 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liPRP-00D59r-1x; Sun, 16 May 2021 22:40:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:
 Message-ID:Sender:Reply-To:Content-ID:Content-Description;
 bh=nZUfs1xi35jnmfQHrMTjP0TVaQ+RUSRxP+1+KcyZC+c=; b=Jp4ZAZZQ7WSYebmvoN9G/8FGOD
 0PPxP+UI+E6mkvskRyiuRcCZAfwzKuxfBRowxTDjBkNCbil6qpBSN2G/fj6h0dffNSJpDywV/n5Q7
 sFrGepCcYy75R98BR8ByjyUmshrxIjH3fpY3Vr78wDHcFydVj25L1OnPV6PxCBOxvABj1ElhALOp0
 gPr5xqkTDgKAWqe5MUuvx2qARqal/K4NHYOj6nU63yTRmQwhM2wVLyi2RQBwJICCx6ina5+e+OhRP
 LyCjRwbBqskfv/yDC6CIyLq6wLRJdRFpJPmWpJOFKEvgqRESt7II4gqO63ZcA0TKJDzcq/wUKAoQU
 XWdJ9rvQ==;
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liPRL-00DJao-RU; Sun, 16 May 2021 22:40:53 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 3BDE51F41CCA
Message-ID: <831a59b052df02e9860b9766e631a7ab6a37c46a.camel@collabora.com>
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
Date: Sun, 16 May 2021 19:40:29 -0300
In-Reply-To: <7bcbb787d82f21d42563d8fb7e3c2e7d40123932.camel@pengutronix.de>
References: <20210407073534.376722-1-benjamin.gaignard@collabora.com>
 <20210407073534.376722-4-benjamin.gaignard@collabora.com>
 <7bcbb787d82f21d42563d8fb7e3c2e7d40123932.camel@pengutronix.de>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210516_154052_029088_60DBDE5B 
X-CRM114-Status: GOOD (  19.50  )
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

Hi Lucas,

On Fri, 2021-04-16 at 12:54 +0200, Lucas Stach wrote:
> Am Mittwoch, dem 07.04.2021 um 09:35 +0200 schrieb Benjamin Gaignard:
> > In order to be able to share the control hardware block between
> > VPUs use a syscon instead a ioremap it in the driver.
> > To keep the compatibility with older DT if 'nxp,imx8mq-vpu-ctrl'
> > phandle is not found look at 'ctrl' reg-name.
> > With the method it becomes useless to provide a list of register
> > names so remove it.
> 
> Sorry for putting a spoke in the wheel after many iterations of the
> series.
> 
> We just discussed a way forward on how to handle the clocks and resets
> provided by the blkctl block on i.MX8MM and later and it seems there is
> a consensus on trying to provide virtual power domains from a blkctl
> driver, controlling clocks and resets for the devices in the power
> domain. I would like to avoid introducing yet another way of handling
> the blkctl and thus would like to align the i.MX8MQ VPU blkctl with
> what we are planning to do on the later chip generations.
> 
> CC'ing Jacky Bai and Peng Fan from NXP, as they were going to give this
> virtual power domain thing a shot.
> 

It seems the i.MX8MM BLK-CTL series are moving forward:

https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=479175

... but I'm unable to wrap my head around how this affects the
devicetree VPU modelling for i.MX8MQ (and also i.MX8MM, i.MX8MP, ...).

Can you clarify that?

Thanks,
Ezequiel


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

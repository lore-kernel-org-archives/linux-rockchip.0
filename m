Return-Path: <SRS0=qEJD=IB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 798AFC433DB
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Mar 2021 15:46:51 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AF6EE64EC4
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Mar 2021 15:46:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AF6EE64EC4
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:Cc:To:From:
	Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8SzxhXmGy3Dg8M8ujqGanapN4Vzr33Wwq92kPUZuX+M=; b=AzidBWzccLjyyP56U6wPZre2A
	6BsQRl7XACuGA9U/ZxeOw1ouc6WgeOi2XVjKBBbJ4/ZdRwHGQd3MU5bkNckiUkDik0fMA6FaWtVSR
	InftLsgslWDhazoDnLmOtmHmOgFcmuD0tQcAtNLalr5tVWt9rUDfpprRdSAvFBhUMJTg+DUq62PyG
	p5dWoZNgaQz0h9econ+JzYwC7qw7UxMBmju8vey2OmzgHQ0HkHMvjxQCm4Che8tzeKq6GUZve9z6I
	r+OuprqamWdeveC8sYdyXUQ/VfCqAQXpAbCUyEH5FbPec+L/o+8kf+xG4Y3d/X84xjp5EuxE52lrd
	YXhkyB3uQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lHThx-005RzF-1f; Wed, 03 Mar 2021 15:46:41 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHSgx-0059nt-R6
 for linux-rockchip@desiato.infradead.org; Wed, 03 Mar 2021 14:41:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=MIME-Version:Content-Transfer-Encoding:
 Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=5i7ncn8BOEcjBV7UJ48D74nP5h+VXWNwQ1/GbJ7nJHY=; b=J+ErWzGyGGQW7/I526hOJtkhbw
 Y6ViF4Xup3AZ3OkoEvs7RACMbd+iEm2g5SXizKXjSr4GcR9mMmHywnzsOeZ5YUCGRsrwp4Ikrw3cM
 hTdttQpGCWYifa11uKRP4Oot3PlV/AGfwmHZtvyo8qBPZJUGWWGN5gzMlfi8ad1ipGDZUlWEFOce9
 ugHCaZgURmzvBoxXUzSoaaQvCcnK92n0XKhUyF1YjjShk5WFZOnbGPfVK53M/M8GQLtL17H/ZxyaG
 6tTn5cgTYu+megYLwuSC9m+BdZe2oCGyLmxDR4ciengPV3984duMgRsUTXbdsDUZTBToQ5ev7QEgB
 k+8eEo1A==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHSKB-002vDY-Rk
 for linux-rockchip@lists.infradead.org; Wed, 03 Mar 2021 14:18:09 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1lHSK3-00014Z-9q; Wed, 03 Mar 2021 15:17:55 +0100
Received: from pza by lupine with local (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1lHSK2-00075d-0s; Wed, 03 Mar 2021 15:17:54 +0100
Message-ID: <e6f8537d2a1f34d0a424b68e056c0ae556c93efd.camel@pengutronix.de>
Subject: Re: [PATCH v3 0/5] Reset driver for IMX8MQ VPU hardware block
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, robh+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com, 
 ezequiel@collabora.com, mchehab@kernel.org, gregkh@linuxfoundation.org
Cc: kernel@pengutronix.de, linux-imx@nxp.com, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 devel@driverdev.osuosl.org, kernel@collabora.com
Date: Wed, 03 Mar 2021 15:17:53 +0100
In-Reply-To: <20210301151754.104749-1-benjamin.gaignard@collabora.com>
References: <20210301151754.104749-1-benjamin.gaignard@collabora.com>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210303_141809_186873_2E9279B3 
X-CRM114-Status: GOOD (  13.73  )
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

Hi Benjamin,

On Mon, 2021-03-01 at 16:17 +0100, Benjamin Gaignard wrote:
> The two VPUs inside IMX8MQ share the same control block which can be see
> as a reset hardware block.

This isn't a reset controller though. The control block also contains
clock gates of some sort and a filter register for the featureset fuses.
Those shouldn't be manipulated via the reset API.

> In order to be able to add the second VPU (for HECV decoding) it will be
> more handy if the both VPU drivers instance don't have to share the
> control block registers. This lead to implement it as an independ reset 
> driver and to change the VPU driver to use it.

Why not switch to a syscon regmap for the control block? That should
also allow to keep backwards compatibility with the old binding with
minimal effort.

> Please note that this series break the compatibility between the DTB and
> kernel. This break is limited to IMX8MQ SoC and is done when the driver
> is still in staging directory.

I know in this case we are pretty sure there are no users of this
binding except for a staging driver, but it would still be nice to keep
support for the deprecated binding, to avoid the requirement of updating
kernel and DT in lock-step.

regards
Philipp

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <SRS0=fRcm=IG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 86805C433DB
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Mar 2021 18:27:15 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 209826148E
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Mar 2021 18:27:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 209826148E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cfQIY33Oscgl80XGH+9HYraNE2mrOGODyeHgRHHnexI=; b=rJm7Mi89OuIK+cRfceX0GUs+i
	pl+tT05kTnkVVpeKo8IaJtnCdOJ6uT/UrA2Wp4qdEzT64zrVLFSi0KCEdAJylHFLNAmEDzt9U1S8y
	4zmI17PjGOr1YBpkdD+4CAPdr/0ZlA7xmNXuscvzDpyp8koleyHd3bkcawaxcZJZykjUh8UoqDbop
	oFoYnCh7IttrkSKVAqfLDVT9TF1jbL8DHVfB07KoPqtLjI+wYKXm3nzmU7fUKt8DpV4VXiq38OA5X
	wHvwwrVzdND4yw0crXkfzKuWHlTZfEdweJ7Uvg0Do1j7On4DDw5L+PZ9KUyqOW37Z6A9udCwzCgHL
	sngFqRgzg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJKaz-001iTm-Jb; Mon, 08 Mar 2021 18:27:09 +0000
Received: from mail-io1-f42.google.com ([209.85.166.42])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJKam-001iMx-Fx; Mon, 08 Mar 2021 18:26:58 +0000
Received: by mail-io1-f42.google.com with SMTP id n132so11035380iod.0;
 Mon, 08 Mar 2021 10:26:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=QuSkewPTpe0085TNG2W2Oa8CDkZlQPGzs8cqLJpUUBA=;
 b=joYLJnglmGsHFfszsXWXn/j9uG3ZWN4tVAZtpCMI7XGk43K18dbnVuayLagyHJOzCJ
 W+0ldSoaUN8ZXDxn8BROsjavGXN9FYEyyWMECPBWa0rNjMHuslG4HK0uW6k2/xDOIw+t
 AUa4w1lOZSGVhIMglkDk1JCaWG82nmpB566IUUqq8etAgwt6+MhFRvLE517UtXuZXMuQ
 6McO2H0czw0xVKnM2BElvZw9FAkonH20dZv48IIpl04QVcTB1LYfjW+RQ1rCop5Ah+CV
 qpN6fgoejpFFWXDRYvvr4mm05s1nvmxnxecXUTGYavmyzu9lDcsOtxa9xZkzqeirL/ni
 W/xg==
X-Gm-Message-State: AOAM532/tyYHKIbRULUai9V/neVuRQb5tS1GnWEGSIhFQuMRYuwEDIRy
 tWCxYjduRAEY/qNuxDeU5Q==
X-Google-Smtp-Source: ABdhPJzjTtDhSDB3XWXDb5ygvtpGkDlzRkFu6tzU5LP8yUrH3ZVysbAhFaWWZoDnzHDhQvS2pjs7Gw==
X-Received: by 2002:a02:cad9:: with SMTP id f25mr24409763jap.26.1615228015582; 
 Mon, 08 Mar 2021 10:26:55 -0800 (PST)
Received: from robh.at.kernel.org ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id h193sm6546637iof.9.2021.03.08.10.26.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Mar 2021 10:26:55 -0800 (PST)
Received: (nullmailer pid 2744943 invoked by uid 1000);
 Mon, 08 Mar 2021 18:26:51 -0000
Date: Mon, 8 Mar 2021 11:26:51 -0700
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: p.zabel@pengutronix.de, shawnguo@kernel.org, s.hauer@pengutronix.de,
 festevam@gmail.com, ezequiel@collabora.com, mchehab@kernel.org,
 gregkh@linuxfoundation.org, kernel@pengutronix.de, linux-imx@nxp.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devel@driverdev.osuosl.org,
 kernel@collabora.com
Subject: Re: [PATCH v3 0/5] Reset driver for IMX8MQ VPU hardware block
Message-ID: <20210308182651.GA2741282@robh.at.kernel.org>
References: <20210301151754.104749-1-benjamin.gaignard@collabora.com>
 <20210308182217.GA2735443@robh.at.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210308182217.GA2735443@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210308_182656_642086_4E4B9332 
X-CRM114-Status: GOOD (  25.01  )
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

On Mon, Mar 08, 2021 at 11:22:17AM -0700, Rob Herring wrote:
> On Mon, Mar 01, 2021 at 04:17:49PM +0100, Benjamin Gaignard wrote:
> > The two VPUs inside IMX8MQ share the same control block which can be see
> > as a reset hardware block.
> > In order to be able to add the second VPU (for HECV decoding) it will be
> > more handy if the both VPU drivers instance don't have to share the
> > control block registers. This lead to implement it as an independ reset 
> > driver and to change the VPU driver to use it.
> > 
> > Please note that this series break the compatibility between the DTB and
> > kernel. This break is limited to IMX8MQ SoC and is done when the driver
> > is still in staging directory.
> 
> As this information will be lost, please put in the binding and dts 
> patch.

Actually, the adding the VPU reset binding doesn't break compatibility, 
so just the dts file changes needs it.

> 
> > 
> > version 3:
> > - Fix error in VPU example node
> > 
> > version 2:
> > - Document the change in VPU bindings
> >  
> > Benjamin Gaignard (5):
> >   dt-bindings: reset: IMX8MQ VPU reset
> >   dt-bindings: media: IMX8MQ VPU: document reset usage
> >   reset: Add reset driver for IMX8MQ VPU block
> >   media: hantro: Use reset driver
> >   arm64: dts: imx8mq: Use reset driver for VPU hardware block
> > 
> >  .../bindings/media/nxp,imx8mq-vpu.yaml        |  14 +-
> >  .../bindings/reset/fsl,imx8mq-vpu-reset.yaml  |  54 ++++++
> >  arch/arm64/boot/dts/freescale/imx8mq.dtsi     |  31 +++-
> >  drivers/reset/Kconfig                         |   8 +
> >  drivers/reset/Makefile                        |   1 +
> >  drivers/reset/reset-imx8mq-vpu.c              | 169 ++++++++++++++++++
> >  drivers/staging/media/hantro/Kconfig          |   1 +
> >  drivers/staging/media/hantro/imx8m_vpu_hw.c   |  61 ++-----
> >  include/dt-bindings/reset/imx8mq-vpu-reset.h  |  16 ++
> >  9 files changed, 294 insertions(+), 61 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/reset/fsl,imx8mq-vpu-reset.yaml
> >  create mode 100644 drivers/reset/reset-imx8mq-vpu.c
> >  create mode 100644 include/dt-bindings/reset/imx8mq-vpu-reset.h
> > 
> > -- 
> > 2.25.1
> > 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

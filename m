Return-Path: <SRS0=qEJD=IB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4989CC433E0
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Mar 2021 15:45:56 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C730764EE8
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Mar 2021 15:45:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C730764EE8
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:Cc:To:From:
	Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MfNf8FiNAFEX0g8Z0uaXSCuc9+oQ9qqHZoyXOxXWfN0=; b=RNuOqbNn7PPSAhKx5pikdzjAT
	ZWcu0iuC+TyqgmmXbhZI5RdREahRljl7/aUY2Po1mRGGRSfdhLNEXDIMfHnFYx1x9qgZ7AetlaQE3
	F8UI/b5BGEhs+rcwlIBDIoMoxaC421+zWc4vuHLyXnukvUbwg7KnIXbhH1GIe+MVQmHV2iZXrDVa4
	buFaMSldSONMoRCRCpryUtZHVkRgW/atmXPQLx95GMMJaF0tU7dvZzCa/Y8WPMxaBf27epH1uPlhG
	/UrxuXhJE0WrYcqXDl8lCP10r16nF6doGbrk+iLjNvHxT2TBwC43PmC0cTWp9kl1mCeOkFkXrOWLg
	TlxqkVdrQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lHTh5-005RkA-37; Wed, 03 Mar 2021 15:45:47 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHSfM-005AX6-51
 for linux-rockchip@desiato.infradead.org; Wed, 03 Mar 2021 14:39:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=MIME-Version:Content-Transfer-Encoding:
 Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=8ug8r50hScokVnsDTNB770lZ0DsVrZhXOM469kuw2AM=; b=ludB55IshFzRmEU/+hEH9xFJlo
 72GXvehxfOH1GqJHkZOCjYAvLO6qK8PUCwPCue66lJdPGYJ4ShM8gzlA0/ump2BjhtXDBumerf7Iq
 wy2lzo+dELHjKxIcwJhT5hZ+rQgVCxGyptDlsdrQy7Ht025zK5+ZQ42ZS6nZjgwDz08QWEQnJ9EgH
 tnbESjJybKFAVk4t6yyh4RhMFlExdLaKdbLKDrJM53/RkKyLnuHcuuDjf1JJLUjzP5XMlHPyN4orA
 ksNLcCo27Vf6dDw9V1Ra4ak71UHZRqObLdTB9q/HirV1+P5diNGt3ALDScbXU2QxFLUVPsggL3s3N
 n22Uif0Q==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHSf7-002xuq-Ga
 for linux-rockchip@lists.infradead.org; Wed, 03 Mar 2021 14:39:43 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1lHSez-0003rD-RS; Wed, 03 Mar 2021 15:39:33 +0100
Received: from pza by lupine with local (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1lHSey-0000i4-TA; Wed, 03 Mar 2021 15:39:32 +0100
Message-ID: <29bf66f4b531ec701e85c23a411e40e3621b0ff8.camel@pengutronix.de>
Subject: Re: [PATCH v3 4/5] media: hantro: Use reset driver
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, robh+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com, 
 ezequiel@collabora.com, mchehab@kernel.org, gregkh@linuxfoundation.org
Cc: kernel@pengutronix.de, linux-imx@nxp.com, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 devel@driverdev.osuosl.org, kernel@collabora.com
Date: Wed, 03 Mar 2021 15:39:32 +0100
In-Reply-To: <20210301151754.104749-5-benjamin.gaignard@collabora.com>
References: <20210301151754.104749-1-benjamin.gaignard@collabora.com>
 <20210301151754.104749-5-benjamin.gaignard@collabora.com>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210303_143943_083578_EAE65C6E 
X-CRM114-Status: GOOD (  15.24  )
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

On Mon, 2021-03-01 at 16:17 +0100, Benjamin Gaignard wrote:
> Rather use a reset like feature inside the driver use the reset
> controller API to get the same result.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
>  drivers/staging/media/hantro/Kconfig        |  1 +
>  drivers/staging/media/hantro/imx8m_vpu_hw.c | 61 ++++-----------------
>  2 files changed, 12 insertions(+), 50 deletions(-)
> 
> diff --git a/drivers/staging/media/hantro/Kconfig b/drivers/staging/media/hantro/Kconfig
> index 5b6cf9f62b1a..dd1d4dde2658 100644
> --- a/drivers/staging/media/hantro/Kconfig
> +++ b/drivers/staging/media/hantro/Kconfig
> @@ -20,6 +20,7 @@ config VIDEO_HANTRO_IMX8M
>  	bool "Hantro VPU i.MX8M support"
>  	depends on VIDEO_HANTRO
>  	depends on ARCH_MXC || COMPILE_TEST
> +	select RESET_VPU_IMX8MQ
>  	default y
>  	help
>  	  Enable support for i.MX8M SoCs.
> diff --git a/drivers/staging/media/hantro/imx8m_vpu_hw.c b/drivers/staging/media/hantro/imx8m_vpu_hw.c
> index c222de075ef4..d5b4312b9391 100644
> --- a/drivers/staging/media/hantro/imx8m_vpu_hw.c
> +++ b/drivers/staging/media/hantro/imx8m_vpu_hw.c
> @@ -7,49 +7,12 @@
>  
>  #include <linux/clk.h>
>  #include <linux/delay.h>
> +#include <linux/reset.h>
>  
>  #include "hantro.h"
>  #include "hantro_jpeg.h"
>  #include "hantro_g1_regs.h"
>  
> -#define CTRL_SOFT_RESET		0x00
> -#define RESET_G1		BIT(1)
> -#define RESET_G2		BIT(0)
> -
> -#define CTRL_CLOCK_ENABLE	0x04
> -#define CLOCK_G1		BIT(1)
> -#define CLOCK_G2		BIT(0)
> -
> -#define CTRL_G1_DEC_FUSE	0x08
> -#define CTRL_G1_PP_FUSE		0x0c
> -#define CTRL_G2_DEC_FUSE	0x10
> -
> -static void imx8m_soft_reset(struct hantro_dev *vpu, u32 reset_bits)
> -{
> -	u32 val;
> -
> -	/* Assert */
> -	val = readl(vpu->ctrl_base + CTRL_SOFT_RESET);
> -	val &= ~reset_bits;
> -	writel(val, vpu->ctrl_base + CTRL_SOFT_RESET);
> -
> -	udelay(2);
> -
> -	/* Release */
> -	val = readl(vpu->ctrl_base + CTRL_SOFT_RESET);
> -	val |= reset_bits;
> -	writel(val, vpu->ctrl_base + CTRL_SOFT_RESET);
> -}
> -
> -static void imx8m_clk_enable(struct hantro_dev *vpu, u32 clock_bits)
> -{
> -	u32 val;
> -
> -	val = readl(vpu->ctrl_base + CTRL_CLOCK_ENABLE);
> -	val |= clock_bits;
> -	writel(val, vpu->ctrl_base + CTRL_CLOCK_ENABLE);

The way it is implemented in the reset driver, the clocks are now
ungated between assert and deassert instead of afterwards. Is this on
purpose?

regards
Philipp

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

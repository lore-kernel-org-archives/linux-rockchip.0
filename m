Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6660FE77184
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Dec 2024 00:23:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wz70GVIEgvSu86fEOwDxE3UX+QHc4lm1KvEVaXNXJJM=; b=GdPkwFs1X/lqYv
	gn1IZHNmgVHt41bx6HyWHON11oXknY9cKBedkxQV1O+6Wi6Wvf8VF+nSjGrThlCQTVaUUR3Rj/UCu
	hyVCpe4g6HpdSsXvIELsp3mYXI3uJ6kQxZBVvSTwNCjametLgHi/A5BeXYkc5cYXFz747Xxw76kFm
	1byHV366pM/xd1oiv3XtvmSS75cgCZ7CFHRir41WZSEm6d9M1DKMiwmz4GnEDHPDop2Sf2xySkyPY
	J1AP38VkAjCXlZekxdTZpU6R+9+2DpE8wPWlKW16RXuWTpH2U7wXLeit+3sftGQdHqydBq5SYfKSe
	7tqZZ/bPtjOhIIw7LjGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOQo3-00000003Slm-1dSt;
	Fri, 20 Dec 2024 00:23:51 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOQms-00000003SY3-2ZJ6
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Dec 2024 00:22:40 +0000
Received: by mail-lj1-x22a.google.com with SMTP id 38308e7fff4ca-303489e8775so14617781fa.3
        for <linux-rockchip@lists.infradead.org>; Thu, 19 Dec 2024 16:22:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734654157; x=1735258957; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=AAbh6kvzri8ctYwKqJBe83JxMpEXpUs+Ep0IfsaKnoM=;
        b=gcQ4DqUu2WZGGZjangUp2YLnClUMKWfg12z44Tia5lMTU5HiBZOWMrKqOt8QGtiLgq
         faNl9K8mAlg1okhM4RsOqPhviUAfdBczzXt3alJaQs9mhrs1G7yN3y+SQsnr6XZ11dMh
         nzfCo4vTlPPCoN4OJaEhgtzILOjBDHQ0RYhUlN2irp9aIaR5lqC9wjACMV4h9n7SeMIf
         t4/wJzyAIbVg32OGiV0hf2PHVHQdZCKFOJFpzzR/xjSb4RCzQwBQOOn5uMMTIg77dm1L
         jmj8FiZRg0fNIWcLXM+nr/DkCe4/VQxsKY73Qax96r5Sjw5LYXnYXbuNEhzzOHAJAqN8
         aVYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734654157; x=1735258957;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AAbh6kvzri8ctYwKqJBe83JxMpEXpUs+Ep0IfsaKnoM=;
        b=nAMpARiMWTapfQ2XN6BASN3ZBUijY4rRhZM7qULS1MUCzxU8KZNBceyUKJluWtJrUG
         4DlrsGc2LPyaQwJRzYdDbz8U6R1Z6TqdgmM4MA55wGkJ3jbO0oo8iyZcTpUgrp5TBl75
         WpcB4lHamPKwJ2mXjUPKhX/jZwON7QnZxOhf1m4shjTddXeHLy9sZPp6DGBuWMAnu0dJ
         M1At1LzHSIUvAG5xGsmgAD5yTHrtTiQYIEaNxxHyln5xQ748UMDz642T9H4GmxQaszCZ
         dRHlJTIL/4vVGyHZxFpRGtYHW2CY8ZM6Avx6mOuXExUBTwjpT2hZP/hLdWeO5XFRaJQi
         GAMQ==
X-Forwarded-Encrypted: i=1; AJvYcCUrMjHHvflILDS8k5LjL2Er7ogKJw4OeEOvlnThV54yEMNy2vD/tfx4opBKSGF2GW59qhw8itYCZYvwVCNsMg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzEe7oMhfFe+atiUnrF0ntuFxgmIuR4jEKzR9nhMg+tj9fW3PMG
	GbigAJ8jFalqR4oHXNPvyWwM9ps0wvPdWUn7lQt2zcLutgPbz4BRc/MYiNrRM7g=
X-Gm-Gg: ASbGncukU1fXS9azXcaZbxZ+3q2qeS/XOVA4Lunz9ho//EcqtQbhJ1By4VlNqJVjT3t
	2FSiALnfriIo3NsZJfM1Y1h/QHwwwWUhtaHiR15JL+JLLgdSWjBPiVqwIRq8J0Z/tuknWwRd5I1
	jFfOIsNA0w/UUcEWP+XvcktwoAWKZ6iBUQrYmIegRSb01JOl9Y+y63/DM6mOWvbZ/cvs+Ct8ha5
	YgAiaWyij8rES/+VrZZdQT5hqqjBFFPKmWn0rXTn3UKUl4Ls+7gxYg1+0Chv/52mWzPHuBufCvl
	TpJ/33QcGkmGtoURRxtqlX5ZxbF/ZzbYBkGg
X-Google-Smtp-Source: AGHT+IHBDB0DL2HFPmb1YTVLVej9ZBG0paM1gMbp8tkms3Vb7rT70j9ksKteZoAkcn4DVOlUEs7IFg==
X-Received: by 2002:a05:6512:3f25:b0:540:353a:5b1f with SMTP id 2adb3069b0e04-542294a1623mr189444e87.0.1734654156655;
        Thu, 19 Dec 2024 16:22:36 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54223832b6csm318735e87.273.2024.12.19.16.22.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Dec 2024 16:22:35 -0800 (PST)
Date: Fri, 20 Dec 2024 02:22:33 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Damon Ding <damon.ding@rock-chips.com>
Subject: Re: [PATCH v3 04/15] phy: phy-rockchip-samsung-hdptx: Rename some
 register names related to DP
Message-ID: <rkdp44csph6stq2e7emhgjziiwypcas7uqsvcdo7i6ypvg64uz@gnqikl5fzxqd>
References: <20241219080604.1423600-1-damon.ding@rock-chips.com>
 <20241219080604.1423600-5-damon.ding@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241219080604.1423600-5-damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241219_162238_646266_ACBE55CC 
X-CRM114-Status: GOOD (  17.25  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: robh@kernel.org, conor+dt@kernel.org, algea.cao@rock-chips.com, rfoss@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, sebastian.reichel@collabora.com, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org, vkoul@kernel.org, andy.yan@rock-chips.com, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, Dec 19, 2024 at 04:05:53PM +0800, Damon Ding wrote:
> The modifications of DP register names are as follows:
> - Add the '_MASK' suffix to some registers to ensure consistency.
> - Complete the names of some register to their full names.
> - Swap the definitions of LCPLL_REF and ROPLL_REF.

Three unrelated changes, ideally means three commits (I won't insist on
that though). Also please mention that LCPLL_REF and ROPLL_REF were not
used by the existing driver, so it's not a bug and there is no need to
backport it.

> 
> Fixes: 553be2830c5f ("phy: rockchip: Add Samsung HDMI/eDP Combo PHY driver")
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> ---
>  .../phy/rockchip/phy-rockchip-samsung-hdptx.c | 64 +++++++++----------
>  1 file changed, 32 insertions(+), 32 deletions(-)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
> index ceab9c71d3b5..c1b9c73f5f9f 100644
> --- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
> +++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
> @@ -69,41 +69,41 @@
>  #define ROPLL_PMS_IQDIV_RSTN		BIT(5)
>  /* CMN_REG(005e) */
>  #define ROPLL_SDM_EN_MASK		BIT(6)
> -#define ROPLL_SDM_FRAC_EN_RBR		BIT(3)
> -#define ROPLL_SDM_FRAC_EN_HBR		BIT(2)
> -#define ROPLL_SDM_FRAC_EN_HBR2		BIT(1)
> -#define ROPLL_SDM_FRAC_EN_HBR3		BIT(0)
> +#define ROPLL_SDC_FRAC_EN_RBR_MASK	BIT(3)
> +#define ROPLL_SDC_FRAC_EN_HBR_MASK	BIT(2)
> +#define ROPLL_SDC_FRAC_EN_HBR2_MASK	BIT(1)
> +#define ROPLL_SDM_FRAC_EN_HBR3_MASK	BIT(0)
>  /* CMN_REG(0064) */
>  #define ROPLL_SDM_NUM_SIGN_RBR_MASK	BIT(3)
>  /* CMN_REG(0069) */
>  #define ROPLL_SDC_N_RBR_MASK		GENMASK(2, 0)
>  /* CMN_REG(0074) */
> -#define ROPLL_SDC_NDIV_RSTN		BIT(2)
> -#define ROPLL_SSC_EN			BIT(0)
> +#define ROPLL_SDC_NDIV_RSTN_MASK	BIT(2)
> +#define ROPLL_SSC_EN_MASK		BIT(0)
>  /* CMN_REG(0081) */
> -#define OVRD_PLL_CD_CLK_EN		BIT(8)
> -#define PLL_CD_HSCLK_EAST_EN		BIT(0)
> +#define OVRD_PLL_CD_CLK_EN_MASK		BIT(8)
> +#define ANA_PLL_CD_HSCLK_EAST_EN_MASK	BIT(0)
>  /* CMN_REG(0086) */
>  #define PLL_PCG_POSTDIV_SEL_MASK	GENMASK(7, 4)
>  #define PLL_PCG_CLK_SEL_MASK		GENMASK(3, 1)
 >  #define PLL_PCG_CLK_EN			BIT(0)
>  /* CMN_REG(0087) */
> -#define PLL_FRL_MODE_EN			BIT(3)
> -#define PLL_TX_HS_CLK_EN		BIT(2)
> +#define ANA_PLL_FRL_MODE_EN_MASK	BIT(3)
> +#define ANA_PLL_TX_HS_CLK_EN_MASK	BIT(2)
>  /* CMN_REG(0089) */
>  #define LCPLL_ALONE_MODE		BIT(1)
>  /* CMN_REG(0097) */
> -#define DIG_CLK_SEL			BIT(1)
> -#define ROPLL_REF			BIT(1)
> -#define LCPLL_REF			0
> +#define DIG_CLK_SEL_MASK		BIT(1)
> +#define LCPLL_REF			BIT(1)
> +#define ROPLL_REF			0
>  /* CMN_REG(0099) */
>  #define CMN_ROPLL_ALONE_MODE		BIT(2)
>  #define ROPLL_ALONE_MODE		BIT(2)
>  /* CMN_REG(009a) */
> -#define HS_SPEED_SEL			BIT(0)
> +#define HS_SPEED_SEL_MASK		BIT(0)
>  #define DIV_10_CLOCK			BIT(0)
>  /* CMN_REG(009b) */
> -#define IS_SPEED_SEL			BIT(4)
> +#define LS_SPEED_SEL_MASK		BIT(4)
>  #define LINK_SYMBOL_CLOCK		BIT(4)
>  #define LINK_SYMBOL_CLOCK1_2		0
>  
> @@ -165,32 +165,32 @@
>  #define HDMI_MODE			BIT(2)
>  #define HDMI_TMDS_FRL_SEL		BIT(1)
>  /* LNTOP_REG(0206) */
> -#define DATA_BUS_SEL			BIT(0)
> +#define DATA_BUS_WIDTH_SEL_MASK		BIT(0)
>  #define DATA_BUS_36_40			BIT(0)
>  /* LNTOP_REG(0207) */
>  #define LANE_EN				0xf
>  #define ALL_LANE_EN			0xf
>  
>  /* LANE_REG(0312) */
> -#define LN0_TX_SER_RATE_SEL_RBR		BIT(5)
> -#define LN0_TX_SER_RATE_SEL_HBR		BIT(4)
> -#define LN0_TX_SER_RATE_SEL_HBR2	BIT(3)
> -#define LN0_TX_SER_RATE_SEL_HBR3	BIT(2)
> +#define LN0_TX_SER_RATE_SEL_RBR_MASK	BIT(5)
> +#define LN0_TX_SER_RATE_SEL_HBR_MASK	BIT(4)
> +#define LN0_TX_SER_RATE_SEL_HBR2_MASK	BIT(3)
> +#define LN0_TX_SER_RATE_SEL_HBR3_MASK	BIT(2)
>  /* LANE_REG(0412) */
> -#define LN1_TX_SER_RATE_SEL_RBR		BIT(5)
> -#define LN1_TX_SER_RATE_SEL_HBR		BIT(4)
> -#define LN1_TX_SER_RATE_SEL_HBR2	BIT(3)
> -#define LN1_TX_SER_RATE_SEL_HBR3	BIT(2)
> +#define LN1_TX_SER_RATE_SEL_RBR_MASK	BIT(5)
> +#define LN1_TX_SER_RATE_SEL_HBR_MASK	BIT(4)
> +#define LN1_TX_SER_RATE_SEL_HBR2_MASK	BIT(3)
> +#define LN1_TX_SER_RATE_SEL_HBR3_MASK	BIT(2)
>  /* LANE_REG(0512) */
> -#define LN2_TX_SER_RATE_SEL_RBR		BIT(5)
> -#define LN2_TX_SER_RATE_SEL_HBR		BIT(4)
> -#define LN2_TX_SER_RATE_SEL_HBR2	BIT(3)
> -#define LN2_TX_SER_RATE_SEL_HBR3	BIT(2)
> +#define LN2_TX_SER_RATE_SEL_RBR_MASK	BIT(5)
> +#define LN2_TX_SER_RATE_SEL_HBR_MASK	BIT(4)
> +#define LN2_TX_SER_RATE_SEL_HBR2_MASK	BIT(3)
> +#define LN2_TX_SER_RATE_SEL_HBR3_MASK	BIT(2)
>  /* LANE_REG(0612) */
> -#define LN3_TX_SER_RATE_SEL_RBR		BIT(5)
> -#define LN3_TX_SER_RATE_SEL_HBR		BIT(4)
> -#define LN3_TX_SER_RATE_SEL_HBR2	BIT(3)
> -#define LN3_TX_SER_RATE_SEL_HBR3	BIT(2)
> +#define LN3_TX_SER_RATE_SEL_RBR_MASK	BIT(5)
> +#define LN3_TX_SER_RATE_SEL_HBR_MASK	BIT(4)
> +#define LN3_TX_SER_RATE_SEL_HBR2_MASK	BIT(3)
> +#define LN3_TX_SER_RATE_SEL_HBR3_MASK	BIT(2)
>  
>  #define HDMI20_MAX_RATE			600000000
>  
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

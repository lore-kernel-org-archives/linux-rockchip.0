Return-Path: <SRS0=aL02=FN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6435AC433FE
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Dec 2020 17:48:55 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1370323444
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Dec 2020 17:48:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1370323444
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8gLpsfXyzQ0kWr3aNhut5Ahkobacgy1/aPozgLZV0so=; b=yUBkfAAMdjX1JRbguBrhELpeH
	LJX2gopW2TkmZ5xYOVAn3uHvTdk0y7hVUOqs1aaSh65OwPyrf/X4Pxv7VDtZ57ULcuhKXChtemgDL
	G9MWVeWF1eIPdx15TqslqR6o+iY0DHfud9+5v4V0zbk8VRoZJEmGzag7mMYip/gvnGnONuYBxDu94
	AcMgkf4SnQEELdTRmKyG3UAafmaqv7QE0Y2YfZRB6h+rM0euFtE2PI/SpbEqaHjdhesfTkAeJbo9/
	N0XMf7cA8LkhV1dekXI57KFAFhk5scwnqFAl3sv5uC1YosSO8WVvdug+6nvl1hx40JgeHrUUzxkFp
	TmiJPtYTQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kn3a7-00027i-6l; Wed, 09 Dec 2020 17:48:51 +0000
Received: from mail-ua1-x942.google.com ([2607:f8b0:4864:20::942])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kn3a4-00025W-Sp
 for linux-rockchip@lists.infradead.org; Wed, 09 Dec 2020 17:48:49 +0000
Received: by mail-ua1-x942.google.com with SMTP id g3so773215uae.7
 for <linux-rockchip@lists.infradead.org>; Wed, 09 Dec 2020 09:48:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DjObpwsQOixsfClK1GgVMLvQ0A3T3bBbvQfg+er+Umo=;
 b=dKYrNjElh2XhBB8xtEQ46H/YwUSv0U490Ae4dDyAL9H9xieG8SyD6a4duzxrP1ddpo
 nTdpn3gnbZScP+/8wIekuvzI8x601Grr7pjDvbRj8Ewf1Ic7EhjWGsuQSnRonPPNdPfq
 LLIV7a5EkySZDMfEYVZfzXFS1yxVjcm1BlHdU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DjObpwsQOixsfClK1GgVMLvQ0A3T3bBbvQfg+er+Umo=;
 b=bGYhkqfw/Q/tT891i0J5NNW5TDS4Fhvoh3Pe2bMuTgPRbgwgoXigqPPBUR+g6wFVAn
 qygk+p8DEQiteZl2mfDJH+JKRjm9tjaxHo+qFS6uA0og8OFW/FHOwbMnWtvTEfGzQpXT
 zjxIAhVZKq9Xz3EYnlBrNpwsijJg8JpF8n7WaVwRCkTXrTGIeiEml2ViceeL+ngQ05iB
 izdnzkFZJNrfPqdOOG7iTpAHx/56gvoXv0CCTSgV4vYJPJoNNQ3fQTWaYJ5J2nCJ/BDK
 1OrEFN3rNR/oe9AKZ71asXUWGQcQgQ0VNL8SvDvKkCqaEFLZMQlUng0f7scSH0ryCHXX
 pzoA==
X-Gm-Message-State: AOAM5337BRTmkVj419X3OPr63lPudZzIzI1P8BTIamBFjTnbYb+ZFYx5
 heX9Lt9YHADdyp8uXyziFxPY2ly/gSn3SQ==
X-Google-Smtp-Source: ABdhPJxgBd8Ep/36+ESaT4i5jk/ou8nSoedI1T0Fdy/hHqCReaOL3Yi44OjJgJ1506oFCNwez0NcFg==
X-Received: by 2002:ab0:2e9:: with SMTP id 96mr2964743uah.87.1607536122463;
 Wed, 09 Dec 2020 09:48:42 -0800 (PST)
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com.
 [209.85.217.47])
 by smtp.gmail.com with ESMTPSA id t201sm200126vke.10.2020.12.09.09.48.41
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 09 Dec 2020 09:48:41 -0800 (PST)
Received: by mail-vs1-f47.google.com with SMTP id u7so1346189vsg.11
 for <linux-rockchip@lists.infradead.org>; Wed, 09 Dec 2020 09:48:41 -0800 (PST)
X-Received: by 2002:a67:8c41:: with SMTP id o62mr3244996vsd.49.1607536121097; 
 Wed, 09 Dec 2020 09:48:41 -0800 (PST)
MIME-Version: 1.0
References: <20201209020757.5917-1-chris.ruehl@gtsys.com.hk>
In-Reply-To: <20201209020757.5917-1-chris.ruehl@gtsys.com.hk>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 9 Dec 2020 09:48:29 -0800
X-Gmail-Original-Message-ID: <CAD=FV=UESmNc5w6b3rXV9+1UteQYN7NBY7sqNzvjgcbbJBFusw@mail.gmail.com>
Message-ID: <CAD=FV=UESmNc5w6b3rXV9+1UteQYN7NBY7sqNzvjgcbbJBFusw@mail.gmail.com>
Subject: Re: [PATCH v2] phy: rockchip-emmc: emmc_phy_init() always return 0
To: Chris Ruehl <chris.ruehl@gtsys.com.hk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201209_124848_989071_B085BDA1 
X-CRM114-Status: GOOD (  21.62  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 LKML <linux-kernel@vger.kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Vinod Koul <vkoul@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

On Tue, Dec 8, 2020 at 6:08 PM Chris Ruehl <chris.ruehl@gtsys.com.hk> wrote:
>
> rockchip_emmc_phy_init() return variable is not set with the error value
> if clk_get() failed. 'emmcclk' is optional, thus use clk_get_optional()
> and if the return value != NULL make error processing and set the
> return code accordingly.
>
> Fixes: 52c0624a10cce phy: rockchip-emmc: Set phyctrl_frqsel based on card clock
>
> Signed-off-by: Chris Ruehl <chris.ruehl@gtsys.com.hk>
> ---
>  drivers/phy/rockchip/phy-rockchip-emmc.c | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/phy/rockchip/phy-rockchip-emmc.c b/drivers/phy/rockchip/phy-rockchip-emmc.c
> index 48e2d75b1004..a23034416481 100644
> --- a/drivers/phy/rockchip/phy-rockchip-emmc.c
> +++ b/drivers/phy/rockchip/phy-rockchip-emmc.c
> @@ -245,15 +245,17 @@ static int rockchip_emmc_phy_init(struct phy *phy)
>          * - SDHCI driver to get the PHY
>          * - SDHCI driver to init the PHY
>          *
> -        * The clock is optional, so upon any error we just set to NULL.
> +        * The clock is optional, using clk_get_optional() to get the clock
> +        * and do error processing if the return value != NULL
>          *
>          * NOTE: we don't do anything special for EPROBE_DEFER here.  Given the
>          * above expected use case, EPROBE_DEFER isn't sensible to expect, so
>          * it's just like any other error.
>          */
> -       rk_phy->emmcclk = clk_get(&phy->dev, "emmcclk");
> -       if (IS_ERR(rk_phy->emmcclk)) {
> -               dev_dbg(&phy->dev, "Error getting emmcclk: %d\n", ret);
> +       rk_phy->emmcclk = clk_get_optional(&phy->dev, "emmcclk");
> +       if (rk_phy->emmcclk && IS_ERR(rk_phy->emmcclk)) {

nit: no need to check for "rk_phy->emmcclk".  IS_ERR() will return
false for NULL.

Other than that, this looks fine to me.

Reviewed-by: Douglas Anderson <dianders@chromium.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

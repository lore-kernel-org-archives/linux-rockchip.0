Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C392C282D1
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 Mar 2025 09:20:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e8dP5vFYJeLCixxjW27WrQCFlLPNKEMd3w23t7BCNSQ=; b=qNxUn9zynQPsoq
	MUJv2DCOTv1huEfICSFBleyxtiCx84r8QhnfVUgBX2epi96CaD8C67zfCisBHe8vtflPPeWHPhWJK
	Fmvi4/RT/xpvoLSxRW1YB71dWX6VSWDjQUDwOrhYIrBGF+WCjdeUmxW8zTmBhPOpaSjeSKOvn0n/w
	x/emSOdd8Nn6I3m6HD/VU0kkdi2a2UGeD6dYH1oBAu+HDhbt/QHNrx3jjEJdYV/zp3osLnTNcHJh2
	m/efHapIZY6EghE1WwWpGJcG+fbmyywLxqrSWxAw8+ssJd1i1FfzZ1r/HL9RA8EuqDVcQeEO/HhLg
	7P4oo8fPfKFF/Fvst3bA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trCpB-00000000Ggw-30kA;
	Sun, 09 Mar 2025 09:19:57 +0000
Received: from mail-yw1-x112d.google.com ([2607:f8b0:4864:20::112d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trCnG-00000000GEV-0ADP
	for linux-rockchip@lists.infradead.org;
	Sun, 09 Mar 2025 09:17:59 +0000
Received: by mail-yw1-x112d.google.com with SMTP id 00721157ae682-6f74b78df93so30672027b3.0
        for <linux-rockchip@lists.infradead.org>; Sun, 09 Mar 2025 01:17:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741511877; x=1742116677; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ZIwW4mMqcjhikStJ4LuoRwMzffSHbBGrUJN18yF51J4=;
        b=ENKmOF5VPd+F21u8pbzG6uW7ohAM1Ut3NaVgid+jfz6skY/4jgFoz3b9AQtkr+wcdv
         nOABKE3ZzmNF6d2lVE88aT2/1GYQv8kb+VbmO8rHnVEBuFCqGqn5X5TNMu+fS49UNFml
         r0fvra1cd1bzSCDbvoNVLfFkotObU/BM/hYaWZzPcWpctRTf1wpgpb0RtsaDdUEZxTEu
         dHO9E4g5m6TrcIMfnRdYtsm1VPhArW1UYBMCSefr6nG5u4ZS1wvlLGCEbQo04gVA85Xg
         JgjhxKj8JoXMULLjygaHbW8pU4zPC8Xi673mfZTfLoqx3+8krPatmZ1VZ8EeisNzRAft
         mZJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741511877; x=1742116677;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZIwW4mMqcjhikStJ4LuoRwMzffSHbBGrUJN18yF51J4=;
        b=blmev34QoEIpH9mm5rSIwJqvIldh3/naX5RY2KLiqVHkBqcLOhAclQnwKjWpcdXX8Q
         E16yIa62G5t4kIZMVKCyyuSbTd3kEU8baZ4u7jVzlmcJ6VdPRrvw9hAG9gxF34HfC1rB
         o8X7hKTziAUsGkJnTXYxLKKg4DV5MorKIJ8DiUXJnLsxAsyx4AY8jIWMgoo918cbDvfa
         5OaeFiEEv7i/NHDV2eh/+0311kVbtzg1D5xdtH9BkD8xGE+vIA8+dSGHnGmgO2oDIwVq
         0PufoFQufrg8HrFzBai15Bd2XnuR8xIg04CLGJUlfGGr2vyc9TxScLJC4LZ/58zGCsbW
         mspw==
X-Forwarded-Encrypted: i=1; AJvYcCUjjwNXB2Z1zud+sJFbScmF7WssA1zJUX0vEqFLipAX5ZxatyFykejKaMzjZFpQOmtFxcjFFFkBP9LqZgUXEw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx64FzaoYWTNEJC6yzd2vbq7OsTIPdbXa+5i/GRPjq+VUro9ofe
	m8O4u9iV8PWMhwjeP06KYcXRHwXbLG2rl67lfECkXzl/98Ow+EQJI6lyVlg8gDPmUogTeJxcv2U
	Am7p6riISvYBU/6PTA2aYrEtAZCPlAvJuZ5OfSQ==
X-Gm-Gg: ASbGncvlm/w/7FMedVsgShbuSKxhTI+BOJjRRYho/O4JsXnOBHopnlYaASo3s26QMog
	2FfCFpT5zRARirsjoPZXVXPY8ZdIpEO5HKAHSuMlfGfHSNyddhz9RYGzRE77nzHkeDXuHdrVFhY
	14GHUk9xo9K4MHBGzwaJr1siXUap2WJPWZ+aBSVY7n
X-Google-Smtp-Source: AGHT+IF5EPBAwX/vFFn1MyOCNXGFDeVtGYDbOKvZ8oN+itZnMpk7nJvsL5ZhfsKbFo9VQ/c2bu3NL+W9hdt3Gt+ff7Q=
X-Received: by 2002:a05:690c:3612:b0:6fd:2192:cf3c with SMTP id
 00721157ae682-6febf3b7663mr133674427b3.34.1741511876931; Sun, 09 Mar 2025
 01:17:56 -0800 (PST)
MIME-Version: 1.0
References: <20250308-phy-sam-hdptx-bpc-v5-0-35087287f9d1@collabora.com> <20250308-phy-sam-hdptx-bpc-v5-3-35087287f9d1@collabora.com>
In-Reply-To: <20250308-phy-sam-hdptx-bpc-v5-3-35087287f9d1@collabora.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 9 Mar 2025 11:17:46 +0200
X-Gm-Features: AQ5f1Jo12FGGsHm8kzdQ4xf0NIPejEccC7plOVJMbEqHfZYKsXU52PdjyJ4Y43Q
Message-ID: <CAA8EJprBcGz0tZ5SDVC_WK2bzjXZAtOj+LfGnSxmwktvaQw=VQ@mail.gmail.com>
Subject: Re: [PATCH v5 03/12] phy: rockchip: samsung-hdptx: Fix clock ratio setup
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>, 
	Sandor Yu <Sandor.yu@nxp.com>, Maxime Ripard <mripard@kernel.org>, kernel@collabora.com, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250309_011758_080911_D7A6A9E6 
X-CRM114-Status: GOOD (  17.41  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Sat, 8 Mar 2025 at 14:21, Cristian Ciocaltea
<cristian.ciocaltea@collabora.com> wrote:
>
> The switch from 1/10 to 1/40 clock ratio must happen when exceeding the
> 340 MHz rate limit of HDMI 1.4, i.e. when entering the HDMI 2.0 domain,
> and not before.

Am I correct that the only functional change is a switch from
greater-or-equal to simple greater?

>
> While at it, introduce a define for this rate limit constant.
>
> Fixes: 553be2830c5f ("phy: rockchip: Add Samsung HDMI/eDP Combo PHY driver")
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
> index f88369864c50e4563834ccbb26f1f9f440e99271..cf2c3a46604cb9d8c26fe5ec8346904e0b62848f 100644
> --- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
> +++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
> @@ -320,6 +320,7 @@
>  #define LN3_TX_SER_RATE_SEL_HBR2_MASK  BIT(3)
>  #define LN3_TX_SER_RATE_SEL_HBR3_MASK  BIT(2)
>
> +#define HDMI14_MAX_RATE                        340000000
>  #define HDMI20_MAX_RATE                        600000000
>
>  enum dp_link_rate {
> @@ -1072,7 +1073,7 @@ static int rk_hdptx_ropll_tmds_mode_config(struct rk_hdptx_phy *hdptx,
>
>         regmap_write(hdptx->regmap, LNTOP_REG(0200), 0x06);
>
> -       if (rate >= 3400000) {
> +       if (rate > HDMI14_MAX_RATE / 100) {
>                 /* For 1/40 bitrate clk */
>                 rk_hdptx_multi_reg_write(hdptx, rk_hdtpx_tmds_lntop_highbr_seq);
>         } else {
>
> --
> 2.48.1
>


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

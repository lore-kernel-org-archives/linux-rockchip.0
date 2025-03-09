Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 609F7C28B28
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 Mar 2025 10:21:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=toUCq1coyphZ7DWjAL6h6UurAskhjK/QHYZMRktl2bY=; b=XDGgVwWmyhXjWg
	Nl2oohXTcApmjvJozlQnImtkYmCyUHwhgVhEZJfhOGN3J8A6W1pebzs8c3wW23w/+An3IArPIoEEr
	Jy+Q8GI95iYhdVXezlJzZ0bi3if474K8XSXt4f7hpX6uxlC+Orjwce2biI43Xj9688uG6qFWj1Ho1
	sw9VOR3L4WIYWlyXAinXLoX+jHcmlJPDDa58/abECAXJ60m3a0rV3/BS5aY56GRtReictiLCse66Q
	laiBITMqTw2x+dSLkgvFyOx7fq604JbQARyqracyC13OZv5ikFKtNNo7VlsNyfy4JsXTOfV4LwrxG
	JWoywJZWHQYMr+t7wPKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trDn5-00000000Lti-2JBO;
	Sun, 09 Mar 2025 10:21:51 +0000
Received: from mail-yb1-xb36.google.com ([2607:f8b0:4864:20::b36])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trDiu-00000000LI3-3IjM
	for linux-rockchip@lists.infradead.org;
	Sun, 09 Mar 2025 10:17:33 +0000
Received: by mail-yb1-xb36.google.com with SMTP id 3f1490d57ef6-e549b0f8d57so2639642276.3
        for <linux-rockchip@lists.infradead.org>; Sun, 09 Mar 2025 03:17:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741515452; x=1742120252; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8JaDvPEYA7TsBoq4Mvy5LHxwsmJqm2nsItn8pPo4zA4=;
        b=qzoLsnszAAWm1mTDZVzPvyCYBDp9REJuoR6CH9F4eqLpN6lp9rekP456XVddyQ9o3G
         8BDV+nyAJqw6EdM8GoSKgZUrj51A8S8CfWFKevBiU6I1H/LP52yz/Wb1stz6lOmCbAPo
         8kUEAqGo5i1gIzxG5ylYMcbCp3sIwAPYuXpR6Zs47DFDFlBgSvf3IdhSzBPqcYTU5g8W
         8ow5Y5eKy/L/qTybNEOVsaZRiTJDlHSoxWjHRZPPI8P0YH7VWJZE4EftNMxooPVXnjME
         KqOfpOPOLF4N9RV6soXxmFrY3ZMN/H+Yh6IY03rxZighYUXvpl5QvCMm/d6DIXPU2KYA
         CNiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741515452; x=1742120252;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8JaDvPEYA7TsBoq4Mvy5LHxwsmJqm2nsItn8pPo4zA4=;
        b=TSs08vbNTwThCCbs0Uwh0iqIZd3d0V/lKgRUiSvaxgk5chAo3WF9N+S6rnSy1GE3gA
         uZiRJDdC/v+/zAtaNnFJx45UO0OgaKuVdvoU7glt+eYWvw0JL61kKUyoRtUjXyhtPe/P
         4P5sEZI0LNpfN7UbCSbdRl3yURghyJew7OmebyM5ZXuZBVhtjFrriDWoAW4vj/MPy07p
         xBg18L3FL4EjxuyPVbPhRq5BKijbq1lpibvEIUFcQ0jQFR1Cl8nlRyVmoGWRpMRrpqxG
         Z3sgmiufYRXsKa905TQCYD0pR5lLk790x3iSDIIrNfgPb7xeBSq9PIcLgXV1M2iTwtGW
         rh9Q==
X-Forwarded-Encrypted: i=1; AJvYcCUvkSFhSzt+5Buq28CjI4KEPqF0QwsrpizwDQvWaERRvyWoYvOVp8d03+DGDbWwerqT1uQlXROGL+sKe27a6g==@lists.infradead.org
X-Gm-Message-State: AOJu0YxU+LGZjmc5uz6sRt9cwkZOaI3eD14EVjHoCyWE1869aDXDkwJv
	jswLu1A3rYALQ+h7r3wbA+/PX7+v6k1fXS+GiTi3Df5BpoKk0RE3EEuiQWA+t71wYZeO36ln8hQ
	FerKLfc5i6vCHfTK3ZCCINIKPUpb2N6wSIrHw2w==
X-Gm-Gg: ASbGncuNjclboAhRmsv/4M0mYZVY0qYosFmuUimEoKbGIOS2BnArm4EwXo3fwKfQBTp
	Q3T3OddRMeOI2U9QX7Ejn2CTyDJH7MNQXpfCYSBug8DjBBLa9IZKmsm+PTudpyJaYTFHtI7faUk
	egq+cG+t4GdGAAkqH376Cru0kVa3mYY71Nyic6L3te
X-Google-Smtp-Source: AGHT+IHe7by2CtDo/zYM/bVl9N1w6brZFhEu1GZHMwI4eVFbfmB5bsavCuak/ilh158w600F1u3l9qq49HjU7FT//ug=
X-Received: by 2002:a05:6902:3307:b0:e5a:e604:78df with SMTP id
 3f1490d57ef6-e635c163099mr10795936276.17.1741515451706; Sun, 09 Mar 2025
 03:17:31 -0700 (PDT)
MIME-Version: 1.0
References: <20250308-phy-sam-hdptx-bpc-v5-0-35087287f9d1@collabora.com> <20250308-phy-sam-hdptx-bpc-v5-11-35087287f9d1@collabora.com>
In-Reply-To: <20250308-phy-sam-hdptx-bpc-v5-11-35087287f9d1@collabora.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 9 Mar 2025 12:17:20 +0200
X-Gm-Features: AQ5f1JqGJhorT77dlo7Va-OtaHUZt5CEPT4HFc2cqRMt2nt7DncmKSCeyefi4a8
Message-ID: <CAA8EJpqzZaRoQ5mDeKUHpNhYsegC=V6c2SQpKaQn4FYhozQn1A@mail.gmail.com>
Subject: Re: [PATCH v5 11/12] phy: rockchip: samsung-hdptx: Optimize internal
 rate handling
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>, 
	Sandor Yu <Sandor.yu@nxp.com>, Maxime Ripard <mripard@kernel.org>, kernel@collabora.com, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250309_031732_832228_E3795133 
X-CRM114-Status: GOOD (  25.66  )
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
> Drop the rate parameter from a bunch of internal helpers and, instead,
> make better use of the newly introduced ->hdmi_cfg.tmds_char_rate driver
> data.
>
> Additionally, rename the rather ambiguous ->rate member of struct
> rk_hdptx_phy to ->hw_rate and ensure rk_hdptx_ropll_tmds_cmn_config()

Would it be better to name it tmds_char_rate?

> updates it only after all the other operations have been successful.

Please don't mix refactoring / renames and the actual code changes.

>
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c | 59 ++++++++++++-----------
>  1 file changed, 30 insertions(+), 29 deletions(-)
>
> diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
> index a62c634f5254e742088515c3b21c05f95acbaded..98f831c3704f5cd65dcf29a4f0a12862a4aa0482 100644
> --- a/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
> +++ b/drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c
> @@ -401,7 +401,7 @@ struct rk_hdptx_phy {
>
>         /* clk provider */
>         struct clk_hw hw;
> -       unsigned long rate;
> +       unsigned long hw_rate;
>         bool restrict_rate_change;
>
>         atomic_t usage_count;
> @@ -968,33 +968,34 @@ static bool rk_hdptx_phy_clk_pll_calc(unsigned long rate,
>         return true;
>  }
>
> -static int rk_hdptx_ropll_tmds_cmn_config(struct rk_hdptx_phy *hdptx,
> -                                         unsigned long rate)
> +static int rk_hdptx_ropll_tmds_cmn_config(struct rk_hdptx_phy *hdptx)
>  {
>         const struct ropll_config *cfg = NULL;
>         struct ropll_config rc = {0};
> -       int i;
> +       int ret, i;
>
> -       hdptx->rate = rate;
> +       if (!hdptx->hdmi_cfg.tmds_char_rate)
> +               return 0;
>
>         for (i = 0; i < ARRAY_SIZE(ropll_tmds_cfg); i++)
> -               if (rate == ropll_tmds_cfg[i].rate) {
> +               if (hdptx->hdmi_cfg.tmds_char_rate == ropll_tmds_cfg[i].rate) {
>                         cfg = &ropll_tmds_cfg[i];
>                         break;
>                 }
>
>         if (!cfg) {
> -               if (rk_hdptx_phy_clk_pll_calc(rate, &rc)) {
> -                       cfg = &rc;
> -               } else {
> -                       dev_err(hdptx->dev, "%s cannot find pll cfg\n", __func__);
> +               if (!rk_hdptx_phy_clk_pll_calc(hdptx->hdmi_cfg.tmds_char_rate, &rc)) {
> +                       dev_err(hdptx->dev, "%s cannot find pll cfg for rate=%llu\n",
> +                               __func__, hdptx->hdmi_cfg.tmds_char_rate);
>                         return -EINVAL;
>                 }
> +
> +               cfg = &rc;
>         }
>
> -       dev_dbg(hdptx->dev, "%s rate=%lu mdiv=%u sdiv=%u sdm_en=%u k_sign=%u k=%u lc=%u\n",
> -               __func__, rate, cfg->pms_mdiv, cfg->pms_sdiv + 1, cfg->sdm_en,
> -               cfg->sdm_num_sign, cfg->sdm_num, cfg->sdm_deno);
> +       dev_dbg(hdptx->dev, "%s rate=%llu mdiv=%u sdiv=%u sdm_en=%u k_sign=%u k=%u lc=%u\n",
> +               __func__, hdptx->hdmi_cfg.tmds_char_rate, cfg->pms_mdiv, cfg->pms_sdiv + 1,
> +               cfg->sdm_en, cfg->sdm_num_sign, cfg->sdm_num, cfg->sdm_deno);
>
>         rk_hdptx_pre_power_up(hdptx);
>
> @@ -1030,17 +1031,20 @@ static int rk_hdptx_ropll_tmds_cmn_config(struct rk_hdptx_phy *hdptx,
>         regmap_update_bits(hdptx->regmap, CMN_REG(0086), PLL_PCG_CLK_EN_MASK,
>                            FIELD_PREP(PLL_PCG_CLK_EN_MASK, 0x1));
>
> -       return rk_hdptx_post_enable_pll(hdptx);
> +       ret = rk_hdptx_post_enable_pll(hdptx);
> +       if (!ret)
> +               hdptx->hw_rate = hdptx->hdmi_cfg.tmds_char_rate;
> +
> +       return ret;
>  }
>
> -static int rk_hdptx_ropll_tmds_mode_config(struct rk_hdptx_phy *hdptx,
> -                                          unsigned long rate)
> +static int rk_hdptx_ropll_tmds_mode_config(struct rk_hdptx_phy *hdptx)
>  {
>         rk_hdptx_multi_reg_write(hdptx, rk_hdtpx_common_sb_init_seq);
>
>         regmap_write(hdptx->regmap, LNTOP_REG(0200), 0x06);
>
> -       if (rate > HDMI14_MAX_RATE) {
> +       if (hdptx->hdmi_cfg.tmds_char_rate > HDMI14_MAX_RATE) {
>                 /* For 1/40 bitrate clk */
>                 rk_hdptx_multi_reg_write(hdptx, rk_hdtpx_tmds_lntop_highbr_seq);
>         } else {
> @@ -1092,8 +1096,7 @@ static void rk_hdptx_dp_reset(struct rk_hdptx_phy *hdptx)
>                      HDPTX_I_BGR_EN << 16 | FIELD_PREP(HDPTX_I_BGR_EN, 0x0));
>  }
>
> -static int rk_hdptx_phy_consumer_get(struct rk_hdptx_phy *hdptx,
> -                                    unsigned long rate)
> +static int rk_hdptx_phy_consumer_get(struct rk_hdptx_phy *hdptx)
>  {
>         enum phy_mode mode = phy_get_mode(hdptx->phy);
>         u32 status;
> @@ -1112,11 +1115,9 @@ static int rk_hdptx_phy_consumer_get(struct rk_hdptx_phy *hdptx,
>         if (mode == PHY_MODE_DP) {
>                 rk_hdptx_dp_reset(hdptx);
>         } else {
> -               if (rate) {
> -                       ret = rk_hdptx_ropll_tmds_cmn_config(hdptx, rate);
> -                       if (ret)
> -                               goto dec_usage;
> -               }
> +               ret = rk_hdptx_ropll_tmds_cmn_config(hdptx);
> +               if (ret)
> +                       goto dec_usage;
>         }
>
>         return 0;
> @@ -1429,7 +1430,7 @@ static int rk_hdptx_phy_power_on(struct phy *phy)
>                 dev_dbg(hdptx->dev, "%s rate=%llu\n", __func__, hdptx->hdmi_cfg.tmds_char_rate);
>         }
>
> -       ret = rk_hdptx_phy_consumer_get(hdptx, hdptx->hdmi_cfg.tmds_char_rate);
> +       ret = rk_hdptx_phy_consumer_get(hdptx);
>         if (ret)
>                 return ret;
>
> @@ -1460,7 +1461,7 @@ static int rk_hdptx_phy_power_on(struct phy *phy)
>                 regmap_write(hdptx->grf, GRF_HDPTX_CON0,
>                              HDPTX_MODE_SEL << 16 | FIELD_PREP(HDPTX_MODE_SEL, 0x0));
>
> -               ret = rk_hdptx_ropll_tmds_mode_config(hdptx, hdptx->hdmi_cfg.tmds_char_rate);
> +               ret = rk_hdptx_ropll_tmds_mode_config(hdptx);
>                 if (ret)
>                         rk_hdptx_phy_consumer_put(hdptx, true);
>         }
> @@ -1828,7 +1829,7 @@ static int rk_hdptx_phy_clk_prepare(struct clk_hw *hw)
>  {
>         struct rk_hdptx_phy *hdptx = to_rk_hdptx_phy(hw);
>
> -       return rk_hdptx_phy_consumer_get(hdptx, hdptx->rate);
> +       return rk_hdptx_phy_consumer_get(hdptx);
>  }
>
>  static void rk_hdptx_phy_clk_unprepare(struct clk_hw *hw)
> @@ -1843,7 +1844,7 @@ static unsigned long rk_hdptx_phy_clk_recalc_rate(struct clk_hw *hw,
>  {
>         struct rk_hdptx_phy *hdptx = to_rk_hdptx_phy(hw);
>
> -       return hdptx->rate;
> +       return hdptx->hw_rate;
>  }
>
>  static long rk_hdptx_phy_clk_round_rate(struct clk_hw *hw, unsigned long rate,
> @@ -1895,7 +1896,7 @@ static int rk_hdptx_phy_clk_set_rate(struct clk_hw *hw, unsigned long rate,
>          * while the latter being executed only once, i.e. when clock remains
>          * in the prepared state during rate changes.
>          */
> -       return rk_hdptx_ropll_tmds_cmn_config(hdptx, rate);
> +       return rk_hdptx_ropll_tmds_cmn_config(hdptx);
>  }
>
>  static const struct clk_ops hdptx_phy_clk_ops = {
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

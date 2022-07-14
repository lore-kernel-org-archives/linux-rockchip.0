Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE5B0C43334
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Jul 2022 04:30:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pnZLmVlhm0U95jY8gcWDN4D8FKCKRf4jELPUH+mEe78=; b=0p218+ty/xJHdK
	irxiAW3Sj0Gl6jJqV0+yXdoWzHE7QO1Ur56PtQczlpvz86R+6VUEFrRYZWjlWRfVKQQlB36+MVSo9
	X8OwUJsnIR7zktz0QHXFFc+CWe9Wzw5VolMjmSsR49zddKnzqAQRoNeGS0icG5/3DKiX+roDZujtc
	kuXZJK/lIQkwCpTeQkkYYxdmit6vrtvbL4GzA7yD0WSaP5S5SjK7kRcj1pEqxZvVL9QLbl4WlVP2s
	2t35z3WpdBqYIRlKprPbWeT01LgtyQSCoLNSE9qUXiO7CDggKXg2xWapoKXXUl4TYwVwkYUgi/V6m
	SJjhSTeVzHp093fVqB5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBqUP-00Afkt-Bt; Thu, 14 Jul 2022 04:30:13 +0000
Received: from mail-yw1-x1129.google.com ([2607:f8b0:4864:20::1129])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBqTt-00AfO5-7n
	for linux-rockchip@lists.infradead.org; Thu, 14 Jul 2022 04:29:43 +0000
Received: by mail-yw1-x1129.google.com with SMTP id 00721157ae682-31d7db3e6e5so5410257b3.11
        for <linux-rockchip@lists.infradead.org>; Wed, 13 Jul 2022 21:29:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=epeSYSCNcMLzeQfUqiXHsNiWsfVFN9a2euQVxrIO7gg=;
        b=ceuMItnpKcJe/59u5p7ApNuo7hfpVr7dk7vbfXjo3ch+xUrpouYCpG/waodQHXxo+l
         eEMQ8+WCL00XSW7TbsszwSC6AKPe7zrJOb0XtEnNNlUhljEW8A1aE1RiTN3Qp+Jcnb6R
         xOVAyitj/h96lCV9GVOcci4rsl5FeolMv2eUY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=epeSYSCNcMLzeQfUqiXHsNiWsfVFN9a2euQVxrIO7gg=;
        b=ziQ3fZ8A27zfgrAmR5OFyMmWrtBwlHYFQcA0TjtbeeYv7NtVAcpxPlMuCi3uZ2cnk9
         cXiUK37/FMpqxvRFSIZ4AMI9bamxDBvoNhi5Pj66RF7YDPrkXB4pPZk8Tw5lnFZ0K6Ch
         sqGSzz2nwYKGnG4wHufiDlA4cYej2j9zwBxU9eTlrzFXdhbv7s5o2h8SzKvsgLBTrptW
         b5BcHGbMYV31L0c9Z0cJxHinPOqTXiVpGCx52qoLOjG/bB230O1ZMSbKFC6dTIH1d/lq
         yZMkWxgXwf1+tEymWCXWJpq50DR1x5jM/9MF5Jwdcf7SwHeFD8mCJ1AD0+pWJE7QnK9J
         W1UQ==
X-Gm-Message-State: AJIora8NhwO98hOcVTviwdQsQrwiIDZlTNcSPUPkZ4FuT+G+dVR18cHq
	YvSVztp+j4HBYkDQzj+z5i3LF9KtagnYtqLdMHWziQ==
X-Google-Smtp-Source: AGRyM1vXnUmc/e9Lix1jfJ4wCjptmxSolzG32Eo+ggKRfrrIrO52J9M++ho+O7wAp59INX2JJpOgfecne4OHzbTkDY4=
X-Received: by 2002:a81:112:0:b0:317:8cc9:ccde with SMTP id
 18-20020a810112000000b003178cc9ccdemr7676338ywb.273.1657772978014; Wed, 13
 Jul 2022 21:29:38 -0700 (PDT)
MIME-Version: 1.0
References: <20220714042429.281816-1-sashal@kernel.org> <20220714042429.281816-12-sashal@kernel.org>
In-Reply-To: <20220714042429.281816-12-sashal@kernel.org>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Thu, 14 Jul 2022 12:29:27 +0800
Message-ID: <CAGXv+5Fnj4-bHksi5ymy6LwOrmv_9yQ1aBSOpM4wGbGy2QGZUQ@mail.gmail.com>
Subject: Re: [PATCH AUTOSEL 5.15 12/28] ASoC: rockchip: i2s: switch BCLK to GPIO
To: Sasha Levin <sashal@kernel.org>
Cc: linux-kernel@vger.kernel.org, stable@vger.kernel.org, 
	Judy Hsiao <judyhsiao@chromium.org>, Mark Brown <broonie@kernel.org>, lgirdwood@gmail.com, 
	perex@perex.cz, tiwai@suse.com, heiko@sntech.de, alsa-devel@alsa-project.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220713_212941_324261_5E996F01 
X-CRM114-Status: GOOD (  32.05  )
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

Hi,

On Thu, Jul 14, 2022 at 12:25 PM Sasha Levin <sashal@kernel.org> wrote:
>
> From: Judy Hsiao <judyhsiao@chromium.org>
>
> [ Upstream commit a5450aba737dae3ee1a64b282e609d8375d6700c ]
>
> We discoverd that the state of BCLK on, LRCLK off and SD_MODE on
> may cause the speaker melting issue. Removing LRCLK while BCLK
> is present can cause unexpected output behavior including a large
> DC output voltage as described in the Max98357a datasheet.
>
> In order to:
>   1. prevent BCLK from turning on by other component.
>   2. keep BCLK and LRCLK being present at the same time
>
> This patch switches BCLK to GPIO func before LRCLK output, and
> configures BCLK func back during LRCLK is output.
>
> Without this fix, BCLK is turned on 11 ms earlier than LRCK by the
> da7219.
> With this fix, BCLK is turned on only 0.4 ms earlier than LRCK by
> the rockchip codec.
>
> Signed-off-by: Judy Hsiao <judyhsiao@chromium.org>
> Link: https://lore.kernel.org/r/20220615045643.3137287-1-judyhsiao@chromium.org
> Signed-off-by: Mark Brown <broonie@kernel.org>
> Signed-off-by: Sasha Levin <sashal@kernel.org>

Please drop this one from all stable branches. It caused more problems
than it fixed and will be reverted for 5.19 [1]. The same patch, along
with a proper follow-up fix, are queued up for 5.20.

Regards
ChenYu

[1] https://lore.kernel.org/alsa-devel/20220713130451.31481-1-broonie@kernel.org/

> ---
>  sound/soc/rockchip/rockchip_i2s.c | 160 ++++++++++++++++++++++++------
>  1 file changed, 129 insertions(+), 31 deletions(-)
>
> diff --git a/sound/soc/rockchip/rockchip_i2s.c b/sound/soc/rockchip/rockchip_i2s.c
> index 2880a0537646..bde0ceaf100d 100644
> --- a/sound/soc/rockchip/rockchip_i2s.c
> +++ b/sound/soc/rockchip/rockchip_i2s.c
> @@ -13,6 +13,7 @@
>  #include <linux/of_gpio.h>
>  #include <linux/of_device.h>
>  #include <linux/clk.h>
> +#include <linux/pinctrl/consumer.h>
>  #include <linux/pm_runtime.h>
>  #include <linux/regmap.h>
>  #include <linux/spinlock.h>
> @@ -55,8 +56,40 @@ struct rk_i2s_dev {
>         const struct rk_i2s_pins *pins;
>         unsigned int bclk_ratio;
>         spinlock_t lock; /* tx/rx lock */
> +       struct pinctrl *pinctrl;
> +       struct pinctrl_state *bclk_on;
> +       struct pinctrl_state *bclk_off;
>  };
>
> +static int i2s_pinctrl_select_bclk_on(struct rk_i2s_dev *i2s)
> +{
> +       int ret = 0;
> +
> +       if (!IS_ERR(i2s->pinctrl) && !IS_ERR_OR_NULL(i2s->bclk_on))
> +               ret = pinctrl_select_state(i2s->pinctrl,
> +                                    i2s->bclk_on);
> +
> +       if (ret)
> +               dev_err(i2s->dev, "bclk enable failed %d\n", ret);
> +
> +       return ret;
> +}
> +
> +static int i2s_pinctrl_select_bclk_off(struct rk_i2s_dev *i2s)
> +{
> +
> +       int ret = 0;
> +
> +       if (!IS_ERR(i2s->pinctrl) && !IS_ERR_OR_NULL(i2s->bclk_off))
> +               ret = pinctrl_select_state(i2s->pinctrl,
> +                                    i2s->bclk_off);
> +
> +       if (ret)
> +               dev_err(i2s->dev, "bclk disable failed %d\n", ret);
> +
> +       return ret;
> +}
> +
>  static int i2s_runtime_suspend(struct device *dev)
>  {
>         struct rk_i2s_dev *i2s = dev_get_drvdata(dev);
> @@ -93,38 +126,49 @@ static inline struct rk_i2s_dev *to_info(struct snd_soc_dai *dai)
>         return snd_soc_dai_get_drvdata(dai);
>  }
>
> -static void rockchip_snd_txctrl(struct rk_i2s_dev *i2s, int on)
> +static int rockchip_snd_txctrl(struct rk_i2s_dev *i2s, int on)
>  {
>         unsigned int val = 0;
>         int retry = 10;
> +       int ret = 0;
>
>         spin_lock(&i2s->lock);
>         if (on) {
> -               regmap_update_bits(i2s->regmap, I2S_DMACR,
> -                                  I2S_DMACR_TDE_ENABLE, I2S_DMACR_TDE_ENABLE);
> +               ret = regmap_update_bits(i2s->regmap, I2S_DMACR,
> +                               I2S_DMACR_TDE_ENABLE, I2S_DMACR_TDE_ENABLE);
> +               if (ret < 0)
> +                       goto end;
>
> -               regmap_update_bits(i2s->regmap, I2S_XFER,
> -                                  I2S_XFER_TXS_START | I2S_XFER_RXS_START,
> -                                  I2S_XFER_TXS_START | I2S_XFER_RXS_START);
> +               ret = regmap_update_bits(i2s->regmap, I2S_XFER,
> +                               I2S_XFER_TXS_START | I2S_XFER_RXS_START,
> +                               I2S_XFER_TXS_START | I2S_XFER_RXS_START);
> +               if (ret < 0)
> +                       goto end;
>
>                 i2s->tx_start = true;
>         } else {
>                 i2s->tx_start = false;
>
> -               regmap_update_bits(i2s->regmap, I2S_DMACR,
> -                                  I2S_DMACR_TDE_ENABLE, I2S_DMACR_TDE_DISABLE);
> +               ret = regmap_update_bits(i2s->regmap, I2S_DMACR,
> +                               I2S_DMACR_TDE_ENABLE, I2S_DMACR_TDE_DISABLE);
> +               if (ret < 0)
> +                       goto end;
>
>                 if (!i2s->rx_start) {
> -                       regmap_update_bits(i2s->regmap, I2S_XFER,
> -                                          I2S_XFER_TXS_START |
> -                                          I2S_XFER_RXS_START,
> -                                          I2S_XFER_TXS_STOP |
> -                                          I2S_XFER_RXS_STOP);
> +                       ret = regmap_update_bits(i2s->regmap, I2S_XFER,
> +                                       I2S_XFER_TXS_START |
> +                                       I2S_XFER_RXS_START,
> +                                       I2S_XFER_TXS_STOP |
> +                                       I2S_XFER_RXS_STOP);
> +                       if (ret < 0)
> +                               goto end;
>
>                         udelay(150);
> -                       regmap_update_bits(i2s->regmap, I2S_CLR,
> -                                          I2S_CLR_TXC | I2S_CLR_RXC,
> -                                          I2S_CLR_TXC | I2S_CLR_RXC);
> +                       ret = regmap_update_bits(i2s->regmap, I2S_CLR,
> +                                       I2S_CLR_TXC | I2S_CLR_RXC,
> +                                       I2S_CLR_TXC | I2S_CLR_RXC);
> +                       if (ret < 0)
> +                               goto end;
>
>                         regmap_read(i2s->regmap, I2S_CLR, &val);
>
> @@ -139,44 +183,57 @@ static void rockchip_snd_txctrl(struct rk_i2s_dev *i2s, int on)
>                         }
>                 }
>         }
> +end:
>         spin_unlock(&i2s->lock);
> +       if (ret < 0)
> +               dev_err(i2s->dev, "lrclk update failed\n");
> +
> +       return ret;
>  }
>
> -static void rockchip_snd_rxctrl(struct rk_i2s_dev *i2s, int on)
> +static int rockchip_snd_rxctrl(struct rk_i2s_dev *i2s, int on)
>  {
>         unsigned int val = 0;
>         int retry = 10;
> +       int ret = 0;
>
>         spin_lock(&i2s->lock);
>         if (on) {
> -               regmap_update_bits(i2s->regmap, I2S_DMACR,
> +               ret = regmap_update_bits(i2s->regmap, I2S_DMACR,
>                                    I2S_DMACR_RDE_ENABLE, I2S_DMACR_RDE_ENABLE);
> +               if (ret < 0)
> +                       goto end;
>
> -               regmap_update_bits(i2s->regmap, I2S_XFER,
> +               ret = regmap_update_bits(i2s->regmap, I2S_XFER,
>                                    I2S_XFER_TXS_START | I2S_XFER_RXS_START,
>                                    I2S_XFER_TXS_START | I2S_XFER_RXS_START);
> +               if (ret < 0)
> +                       goto end;
>
>                 i2s->rx_start = true;
>         } else {
>                 i2s->rx_start = false;
>
> -               regmap_update_bits(i2s->regmap, I2S_DMACR,
> +               ret = regmap_update_bits(i2s->regmap, I2S_DMACR,
>                                    I2S_DMACR_RDE_ENABLE, I2S_DMACR_RDE_DISABLE);
> +               if (ret < 0)
> +                       goto end;
>
>                 if (!i2s->tx_start) {
> -                       regmap_update_bits(i2s->regmap, I2S_XFER,
> +                       ret = regmap_update_bits(i2s->regmap, I2S_XFER,
>                                            I2S_XFER_TXS_START |
>                                            I2S_XFER_RXS_START,
>                                            I2S_XFER_TXS_STOP |
>                                            I2S_XFER_RXS_STOP);
> -
> +                       if (ret < 0)
> +                               goto end;
>                         udelay(150);
> -                       regmap_update_bits(i2s->regmap, I2S_CLR,
> +                       ret = regmap_update_bits(i2s->regmap, I2S_CLR,
>                                            I2S_CLR_TXC | I2S_CLR_RXC,
>                                            I2S_CLR_TXC | I2S_CLR_RXC);
> -
> +                       if (ret < 0)
> +                               goto end;
>                         regmap_read(i2s->regmap, I2S_CLR, &val);
> -
>                         /* Should wait for clear operation to finish */
>                         while (val) {
>                                 regmap_read(i2s->regmap, I2S_CLR, &val);
> @@ -188,7 +245,12 @@ static void rockchip_snd_rxctrl(struct rk_i2s_dev *i2s, int on)
>                         }
>                 }
>         }
> +end:
>         spin_unlock(&i2s->lock);
> +       if (ret < 0)
> +               dev_err(i2s->dev, "lrclk update failed\n");
> +
> +       return ret;
>  }
>
>  static int rockchip_i2s_set_fmt(struct snd_soc_dai *cpu_dai,
> @@ -426,17 +488,26 @@ static int rockchip_i2s_trigger(struct snd_pcm_substream *substream,
>         case SNDRV_PCM_TRIGGER_RESUME:
>         case SNDRV_PCM_TRIGGER_PAUSE_RELEASE:
>                 if (substream->stream == SNDRV_PCM_STREAM_CAPTURE)
> -                       rockchip_snd_rxctrl(i2s, 1);
> +                       ret = rockchip_snd_rxctrl(i2s, 1);
>                 else
> -                       rockchip_snd_txctrl(i2s, 1);
> +                       ret = rockchip_snd_txctrl(i2s, 1);
> +               /* Do not turn on bclk if lrclk open fails. */
> +               if (ret < 0)
> +                       return ret;
> +               i2s_pinctrl_select_bclk_on(i2s);
>                 break;
>         case SNDRV_PCM_TRIGGER_SUSPEND:
>         case SNDRV_PCM_TRIGGER_STOP:
>         case SNDRV_PCM_TRIGGER_PAUSE_PUSH:
> -               if (substream->stream == SNDRV_PCM_STREAM_CAPTURE)
> -                       rockchip_snd_rxctrl(i2s, 0);
> -               else
> -                       rockchip_snd_txctrl(i2s, 0);
> +               if (substream->stream == SNDRV_PCM_STREAM_CAPTURE) {
> +                       if (!i2s->tx_start)
> +                               i2s_pinctrl_select_bclk_off(i2s);
> +                       ret = rockchip_snd_rxctrl(i2s, 0);
> +               } else {
> +                       if (!i2s->rx_start)
> +                               i2s_pinctrl_select_bclk_off(i2s);
> +                       ret = rockchip_snd_txctrl(i2s, 0);
> +               }
>                 break;
>         default:
>                 ret = -EINVAL;
> @@ -737,6 +808,33 @@ static int rockchip_i2s_probe(struct platform_device *pdev)
>         }
>
>         i2s->bclk_ratio = 64;
> +       i2s->pinctrl = devm_pinctrl_get(&pdev->dev);
> +       if (IS_ERR(i2s->pinctrl))
> +               dev_err(&pdev->dev, "failed to find i2s pinctrl\n");
> +
> +       i2s->bclk_on = pinctrl_lookup_state(i2s->pinctrl,
> +                                  "bclk_on");
> +       if (IS_ERR_OR_NULL(i2s->bclk_on))
> +               dev_err(&pdev->dev, "failed to find i2s default state\n");
> +       else
> +               dev_dbg(&pdev->dev, "find i2s bclk state\n");
> +
> +       i2s->bclk_off = pinctrl_lookup_state(i2s->pinctrl,
> +                                 "bclk_off");
> +       if (IS_ERR_OR_NULL(i2s->bclk_off))
> +               dev_err(&pdev->dev, "failed to find i2s gpio state\n");
> +       else
> +               dev_dbg(&pdev->dev, "find i2s bclk_off state\n");
> +
> +       i2s_pinctrl_select_bclk_off(i2s);
> +
> +       i2s->playback_dma_data.addr = res->start + I2S_TXDR;
> +       i2s->playback_dma_data.addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;
> +       i2s->playback_dma_data.maxburst = 4;
> +
> +       i2s->capture_dma_data.addr = res->start + I2S_RXDR;
> +       i2s->capture_dma_data.addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;
> +       i2s->capture_dma_data.maxburst = 4;
>
>         dev_set_drvdata(&pdev->dev, i2s);
>
> --
> 2.35.1
>
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

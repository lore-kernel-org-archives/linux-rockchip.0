Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 639F5C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Jan 2022 09:02:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7LlPLMNAYzXpj9fdJ6uKtPnoYKK9ifgHdVsrkVqqT2A=; b=ndEZpL6NWMcfHi
	mR1bwk33rHJjyx6AdmZawPQgaifghyABpuMu6AL6HNzWxksXno6ecaKZGKe+/9M4K5s79V91oPIax
	ezIJuEXNQTD2VQBWE9AbiJOXx5E86RJ+m5xjixa02WIul+zt7DdKa0XVLnt2Os7MiCwRa6WLTihPl
	WndHZ9cymMX7jJ1/TBjZeZmxzCHFFpOJlyS/21zJe5uXPqlckFwM9lyI+Bc0Hg6b1ZwAj9fYIgj2f
	oR9hwUt9KCTpGB5cNZpYfS27HMQ6GP+StW6po7Qb4OFzqvo/6xDxnzsWkbIW/Jdgfa/Sj8cs89cCt
	OSvwO376fHXVeC7yZZXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9Ntw-00ECG8-8f; Mon, 17 Jan 2022 09:02:08 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9Ntt-00ECEm-85
 for linux-rockchip@lists.infradead.org; Mon, 17 Jan 2022 09:02:06 +0000
Received: by mail-lf1-x132.google.com with SMTP id m1so55014477lfq.4
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jan 2022 01:02:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5eWNHkxEDcvDnOVa58vimxj0RFzSnZVX78Y15KWp4XE=;
 b=F04iKpf55HWHZUfNd0MND3kcC57yHpdTxP2HADRAYHB8O1xd4GhvxL5ge//KS4A7TS
 gpejjKDT3cDnZAclFrysE8oNstHYfFzAc9Xxt1Z6B96UtuI7T3RYhU56mMNBQZGcPJ1S
 9NeSRFgzrZiCJ3BaQjQFBzJfWoY4POEB95y48=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5eWNHkxEDcvDnOVa58vimxj0RFzSnZVX78Y15KWp4XE=;
 b=CQBT9K+tp9wdQ3wQKH91kyWJqgstx6BXSrOg1DCNUcI2NSPHDwCnn3kr/JjnpznYeE
 21hfIJGjAvRnIU/Z/1JOiIz3ODNje7a/xeIInyC4R+pNUo/SmVrVRimJUyIZruw1ck0q
 +sYSNh4vyO3HLLfyQQsKHuwiKWimr+cFe7Pvl+KBl8dJTosMNKRYcA/ZBaNYSS+jFRwJ
 6RW9Uy6dDPizRSclCcwvTBq6buV6swgTTqsWT1EC2GJYQfOuDbJyYfrC6DK/82q0gyrr
 RADpU8aVfeCuIPPIQS+1W/KebI/wUiCQq5M4EDbPWws5j1BhIt3o8JZ6tOnaKUq10eFy
 xp6Q==
X-Gm-Message-State: AOAM532KGd/wJe+0Gbd/UifkHuo0tgJrNFHFch4Rf2VToCyvNbQ795Tl
 ebWjQNFTHZMdrKVaCcwaypXbWyZSfXCtFomIvfSiiA==
X-Google-Smtp-Source: ABdhPJwK4naYaBZ+8GM/Ab9/Ixhagfb6WfeIhngfxmIkwTvUXsUhPQGr5I/x32U0ZdswDbRkgjWjQoAnUK/H9/TpoSc=
X-Received: by 2002:a2e:b602:: with SMTP id r2mr3683300ljn.392.1642410123234; 
 Mon, 17 Jan 2022 01:02:03 -0800 (PST)
MIME-Version: 1.0
References: <20220114230209.4091727-1-briannorris@chromium.org>
 <20220114150129.v2.3.I3c79b1466c14b02980071221e5b99283cd26ec77@changeid>
In-Reply-To: <20220114150129.v2.3.I3c79b1466c14b02980071221e5b99283cd26ec77@changeid>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Mon, 17 Jan 2022 17:01:52 +0800
Message-ID: <CAGXv+5HC00YU6ARtGDahxWLqivvUCowh7wDq5H5OzoGO9htB+g@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] ASoC: rk3399_gru_sound: Wire up DP jack detection
To: Brian Norris <briannorris@chromium.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>, 
 Mark Brown <broonie@kernel.org>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, 
 linux-rockchip@lists.infradead.org, Lin Huang <hl@rock-chips.com>, 
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org, 
 Rob Herring <robh+dt@kernel.org>, Sandy Huang <hjc@rock-chips.com>,
 linux-kernel@vger.kernel.org, 
 alsa-devel@alsa-project.org, devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220117_010205_327734_F0877B0E 
X-CRM114-Status: GOOD (  21.81  )
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

Hi,

On Sat, Jan 15, 2022 at 7:03 AM Brian Norris <briannorris@chromium.org> wrote:
>
> Now that the cdn-dp driver supports plug-change callbacks, let's wire it
> up.
>
> Signed-off-by: Brian Norris <briannorris@chromium.org>
> ---
>
> (no changes since v1)
>
>  sound/soc/rockchip/rk3399_gru_sound.c | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
>
> diff --git a/sound/soc/rockchip/rk3399_gru_sound.c b/sound/soc/rockchip/rk3399_gru_sound.c
> index e2d52d8d0ff9..eeef3ed70037 100644
> --- a/sound/soc/rockchip/rk3399_gru_sound.c
> +++ b/sound/soc/rockchip/rk3399_gru_sound.c
> @@ -164,6 +164,25 @@ static int rockchip_sound_da7219_hw_params(struct snd_pcm_substream *substream,
>         return 0;
>  }
>
> +static struct snd_soc_jack cdn_dp_card_jack;
> +
> +static int rockchip_sound_cdndp_init(struct snd_soc_pcm_runtime *rtd)
> +{
> +       struct snd_soc_component *component = asoc_rtd_to_codec(rtd, 0)->component;

Using snd_soc_card_get_codec_dai() might be a better choice throughout this
driver. While it will work for the cdn_dp case, because it is the first DAI
in |rockchip_dais[]|, all the invocations for the other codecs are likely
returning the wrong DAI.

For this particular patch it works either way, so

Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>


> +       struct snd_soc_card *card = rtd->card;
> +       int ret;
> +
> +       /* Enable jack detection. */
> +       ret = snd_soc_card_jack_new(card, "DP Jack", SND_JACK_LINEOUT,
> +                                   &cdn_dp_card_jack, NULL, 0);
> +       if (ret) {
> +               dev_err(card->dev, "Can't create DP Jack %d\n", ret);
> +               return ret;
> +       }
> +
> +       return snd_soc_component_set_jack(component, &cdn_dp_card_jack, NULL);
> +}
> +
>  static int rockchip_sound_da7219_init(struct snd_soc_pcm_runtime *rtd)
>  {
>         struct snd_soc_component *component = asoc_rtd_to_codec(rtd, 0)->component;
> @@ -315,6 +334,7 @@ static const struct snd_soc_dai_link rockchip_dais[] = {
>         [DAILINK_CDNDP] = {
>                 .name = "DP",
>                 .stream_name = "DP PCM",
> +               .init = rockchip_sound_cdndp_init,
>                 .dai_fmt = SND_SOC_DAIFMT_I2S | SND_SOC_DAIFMT_NB_NF |
>                         SND_SOC_DAIFMT_CBS_CFS,
>                 SND_SOC_DAILINK_REG(cdndp),
> --
> 2.34.1.703.g22d0c6ccf7-goog
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

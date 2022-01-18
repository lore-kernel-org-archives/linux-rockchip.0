Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0813C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Jan 2022 20:18:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L/QrK2E1o8RjTN8/1SRXE9PYktnxiq5DcCgWAX9vV7s=; b=Qq/5o/2Gitw1ik
	fLsSrWWa4hnuy/+vpx+02M7H0wnkvbV9bQooReNCWQdxDZORct2vFHKKyBdtNLjzwoG3/MyEkO5Vc
	zwf5DJJszmmdD6cvfotBYQnJI/0MPWKRd35c2BEhyutSuyOwCRFn5YlOFiAzihGkZWqWgW17Ot2xA
	h3smlqIjqkBTpcy1cTInWGkaFKOBuLsie9GM8DALkHFKVtN7/OuGsAZElWIQkke0c+GI+5hnVePap
	C80DmiEos6QkMtX+zXbHpw3GvniANxNEEyFku6JJA33pmMPqpXak4ArqVEtA59TV/xlplO1oRm7X5
	O+CoInKnHfl+ZXb2VIiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9uve-002rh4-It; Tue, 18 Jan 2022 20:18:06 +0000
Received: from mail-pj1-x102e.google.com ([2607:f8b0:4864:20::102e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9uvZ-002ret-BP
 for linux-rockchip@lists.infradead.org; Tue, 18 Jan 2022 20:18:04 +0000
Received: by mail-pj1-x102e.google.com with SMTP id
 d15-20020a17090a110f00b001b4e7d27474so402102pja.2
 for <linux-rockchip@lists.infradead.org>; Tue, 18 Jan 2022 12:17:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=fTJy6r2petxIyCqlCeqcI3j0J1mr0+L2iTxm9kuz7Xs=;
 b=inhbbrVy+Fl/lXwKK3g5gU174TWO3UbXPm6+kPhfHgNNQVApLzBtbDcGk4Xgom17AB
 i3YZWJdLTgR31k1+RKgfidYdZUqNPiFDDZAGoFHkdyc4Ob67KE7sURHRukbTSubzASSf
 maDQWVxRz4iuaY3PO0xLJR+1EQcEZT+I8Q6AQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=fTJy6r2petxIyCqlCeqcI3j0J1mr0+L2iTxm9kuz7Xs=;
 b=55IatECAYUbG2c15a/Fn4POKoRMRFaOhRr1u2NNKAR/nRgnHczfFu+Xl7q6c5T2yM2
 AlmYTxL1NNHpuNPRK2/v+tvhU94RLITpkFoxJl76CHfntTO3jmkX3V/Y3YBm6wVRY7bE
 nHZWalKbdKgxue6bWeqNE2d8OY3pOQDs8yM4aL9iyTsV9DsTA+pNU9UJMJ5rgM/NKx82
 3tgrOOA4nVr+LAqVxUnYnYJ1ib3LXaTTeh2AO2/zY1QA07DQAdTExIEKiWS4xbuxZyO2
 nbOI47yL3WdJ7M+biW19g4Wk0+SE+uX/2FVQLGTKjWD+WPEF9if6bYlK+YRsDZHik5Lt
 nGzA==
X-Gm-Message-State: AOAM530nJdUXb3qOaq98Jgtz1yiDiejnIoh53HcyXeIgoFnV6xNwkBAq
 pD/C6gbBdkrnJKL6ao4EHyZZ+w==
X-Google-Smtp-Source: ABdhPJxiIurI5FHOTYvsCLYSQboCxGuQP/VrNeICLl1afrsd2ymXtXw5svEXZBZPdy/+GQJ6NoXhPA==
X-Received: by 2002:a17:90b:4b8a:: with SMTP id
 lr10mr278353pjb.58.1642537079558; 
 Tue, 18 Jan 2022 12:17:59 -0800 (PST)
Received: from google.com ([2620:15c:202:201:e4bb:67e6:f0b5:1b92])
 by smtp.gmail.com with ESMTPSA id ha11sm1170099pjb.3.2022.01.18.12.17.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Jan 2022 12:17:58 -0800 (PST)
Date: Tue, 18 Jan 2022 12:17:55 -0800
From: Brian Norris <briannorris@chromium.org>
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, linux-rockchip@lists.infradead.org,
 Lin Huang <hl@rock-chips.com>, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org, Rob Herring <robh+dt@kernel.org>,
 Sandy Huang <hjc@rock-chips.com>, linux-kernel@vger.kernel.org,
 alsa-devel@alsa-project.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 3/3] ASoC: rk3399_gru_sound: Wire up DP jack detection
Message-ID: <YecgcwXrQNzCesMN@google.com>
References: <20220114230209.4091727-1-briannorris@chromium.org>
 <20220114150129.v2.3.I3c79b1466c14b02980071221e5b99283cd26ec77@changeid>
 <CAGXv+5HC00YU6ARtGDahxWLqivvUCowh7wDq5H5OzoGO9htB+g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGXv+5HC00YU6ARtGDahxWLqivvUCowh7wDq5H5OzoGO9htB+g@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220118_121801_420822_F24E6D56 
X-CRM114-Status: GOOD (  22.79  )
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

Hi Chen-Yu,

On Mon, Jan 17, 2022 at 05:01:52PM +0800, Chen-Yu Tsai wrote:
> On Sat, Jan 15, 2022 at 7:03 AM Brian Norris <briannorris@chromium.org> wrote:
> >
> > Now that the cdn-dp driver supports plug-change callbacks, let's wire it
> > up.
> >
> > Signed-off-by: Brian Norris <briannorris@chromium.org>
> > ---
> >
> > (no changes since v1)
> >
> >  sound/soc/rockchip/rk3399_gru_sound.c | 20 ++++++++++++++++++++
> >  1 file changed, 20 insertions(+)
> >
> > diff --git a/sound/soc/rockchip/rk3399_gru_sound.c b/sound/soc/rockchip/rk3399_gru_sound.c
> > index e2d52d8d0ff9..eeef3ed70037 100644
> > --- a/sound/soc/rockchip/rk3399_gru_sound.c
> > +++ b/sound/soc/rockchip/rk3399_gru_sound.c
> > @@ -164,6 +164,25 @@ static int rockchip_sound_da7219_hw_params(struct snd_pcm_substream *substream,
> >         return 0;
> >  }
> >
> > +static struct snd_soc_jack cdn_dp_card_jack;
> > +
> > +static int rockchip_sound_cdndp_init(struct snd_soc_pcm_runtime *rtd)
> > +{
> > +       struct snd_soc_component *component = asoc_rtd_to_codec(rtd, 0)->component;
> 
> Using snd_soc_card_get_codec_dai() might be a better choice throughout this
> driver. While it will work for the cdn_dp case, because it is the first DAI
> in |rockchip_dais[]|, all the invocations for the other codecs are likely
> returning the wrong DAI.

I'll admit, I'm not very familiar with the ASoC object model, so you may
well be correct that there's something fishy in here. But I did trace
through the objects involved here, and we *are* getting the correct DAI
for both this case and the DA7219 case (preexisting code).

It looks like we actually have a new runtime for each of our static
dai_links:

devm_snd_soc_register_card()
  ...
  for_each_card_prelinks()
    snd_soc_add_pcm_runtime()

So I think this is valid to keep as-is.

> For this particular patch it works either way, so
> 
> Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>

Thanks for looking!

Brian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

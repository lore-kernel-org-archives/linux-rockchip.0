Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 948E2C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Jan 2022 05:59:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9kK0qjWrPFpAq+x56uk6nckJdCvQNWIx2op/sdJL5ZI=; b=0v1rhag2LLgQoK
	cM3HxLsYa64clqKyOozSOJcGgl5eunBGozSMvi83K/+QUuKzCo5wiGZ3dMWZguo9is/L2cmkHKS+a
	rBiZ6jATbbAlvcialDHZomuwf9TgZPVhz8i+YFYWhhynbJKWBONhWsVnd7MiY+Kke6OLnKngyw2Cr
	PqpyWmfnrFakiE6Ha7tXk9fwm3RFSt4sDXjDlsZoJlvc8TlDe8lwpMezHGrzeaTSciw5qnFKX7TF6
	aDKvF3jO8pLktc2ac+8PVUVLbFIHF3E+1IQ7Wv4aBFOjwV63BvO1C1XlQ02wiTgsyokzcjhvSGtL3
	6yfBcdLLN6urwF/y+IFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nA40X-003tk6-62; Wed, 19 Jan 2022 05:59:45 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nA40U-003tiN-GV
 for linux-rockchip@lists.infradead.org; Wed, 19 Jan 2022 05:59:43 +0000
Received: by mail-lf1-x129.google.com with SMTP id o12so4798563lfu.12
 for <linux-rockchip@lists.infradead.org>; Tue, 18 Jan 2022 21:59:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1tKYVg7wJMJMNFKIyw+d3Kv62PM5IDYj6Uiog3M1guQ=;
 b=O3rjR1xwJ5RJa/8Pr4j+o/xz2ODymM24FgRvDAyyXVz801NpNIj40tnMPXagEzzIdN
 YgApJ9Se2RtCuzQIBr9UoxOYieOUmAITh7Ff2mH+sSXNnt/MyPTQm0hxbsds1OhLg9Lx
 iGrVXc3V0OyRFdbBmsPvPpedratR1otyTGqBk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1tKYVg7wJMJMNFKIyw+d3Kv62PM5IDYj6Uiog3M1guQ=;
 b=7hvuZJTwyqoG2nquaUcSBcVnnQfi+meEPvQYXxVGS+2hNnFJe8pZl43RBsuJqTMNLS
 lmNh6dxElI6wpTy8HBsVLXPdwqBfQ7v96X2V8371wSua++uhPAK4QgoyF0hfJqMegkT+
 6uElS05Mk+9HR9iCV6A/8WckVkX9F2rXvUpl9ueSQYDL+jJYzFbDjkGbmC6YN04Tnors
 19f4gok21uTFrqEmGjgjdXLobI6/xj6xsOd7aOko6/ue//qT/Lmp5IqKsn95PVFJWFNU
 OZaG4m8XquOyQxZGFHK/cXCMDGxReIE0ZbkMm+f71pkqSOj1fOOiQ4LWtHHAbBL/347q
 gPBQ==
X-Gm-Message-State: AOAM531AiE13dAqYvfh96w8+WZM6YirEtwcluyMndRp91iwkIR/Wt+sX
 swycABYKR7vj2Y+SSpFviiPHyIgb6d6ZdHDVayj9Nw==
X-Google-Smtp-Source: ABdhPJxmDuwkFJziW4xvLsZmdp9HyrtsLl84OWqtBxpyS7OeNwc36CaaRT+rymCOgrfcQNTO0R57Np83PfJ/v382SjQ=
X-Received: by 2002:a05:6512:1320:: with SMTP id
 x32mr25449431lfu.597.1642571980606; 
 Tue, 18 Jan 2022 21:59:40 -0800 (PST)
MIME-Version: 1.0
References: <20220114230209.4091727-1-briannorris@chromium.org>
 <20220114150129.v2.3.I3c79b1466c14b02980071221e5b99283cd26ec77@changeid>
 <CAGXv+5HC00YU6ARtGDahxWLqivvUCowh7wDq5H5OzoGO9htB+g@mail.gmail.com>
 <YecgcwXrQNzCesMN@google.com>
In-Reply-To: <YecgcwXrQNzCesMN@google.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Wed, 19 Jan 2022 13:59:29 +0800
Message-ID: <CAGXv+5HANAorgJhSupH96V_n01VzvO5mY6LXf=bzzMi3ek089w@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20220118_215942_579465_B922DC76 
X-CRM114-Status: GOOD (  27.11  )
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

On Wed, Jan 19, 2022 at 4:18 AM Brian Norris <briannorris@chromium.org> wrote:
>
> Hi Chen-Yu,
>
> On Mon, Jan 17, 2022 at 05:01:52PM +0800, Chen-Yu Tsai wrote:
> > On Sat, Jan 15, 2022 at 7:03 AM Brian Norris <briannorris@chromium.org> wrote:
> > >
> > > Now that the cdn-dp driver supports plug-change callbacks, let's wire it
> > > up.
> > >
> > > Signed-off-by: Brian Norris <briannorris@chromium.org>
> > > ---
> > >
> > > (no changes since v1)
> > >
> > >  sound/soc/rockchip/rk3399_gru_sound.c | 20 ++++++++++++++++++++
> > >  1 file changed, 20 insertions(+)
> > >
> > > diff --git a/sound/soc/rockchip/rk3399_gru_sound.c b/sound/soc/rockchip/rk3399_gru_sound.c
> > > index e2d52d8d0ff9..eeef3ed70037 100644
> > > --- a/sound/soc/rockchip/rk3399_gru_sound.c
> > > +++ b/sound/soc/rockchip/rk3399_gru_sound.c
> > > @@ -164,6 +164,25 @@ static int rockchip_sound_da7219_hw_params(struct snd_pcm_substream *substream,
> > >         return 0;
> > >  }
> > >
> > > +static struct snd_soc_jack cdn_dp_card_jack;
> > > +
> > > +static int rockchip_sound_cdndp_init(struct snd_soc_pcm_runtime *rtd)
> > > +{
> > > +       struct snd_soc_component *component = asoc_rtd_to_codec(rtd, 0)->component;
> >
> > Using snd_soc_card_get_codec_dai() might be a better choice throughout this
> > driver. While it will work for the cdn_dp case, because it is the first DAI
> > in |rockchip_dais[]|, all the invocations for the other codecs are likely
> > returning the wrong DAI.
>
> I'll admit, I'm not very familiar with the ASoC object model, so you may
> well be correct that there's something fishy in here. But I did trace
> through the objects involved here, and we *are* getting the correct DAI
> for both this case and the DA7219 case (preexisting code).

Neither am I, so ...

> It looks like we actually have a new runtime for each of our static
> dai_links:
>
> devm_snd_soc_register_card()
>   ...
>   for_each_card_prelinks()
>     snd_soc_add_pcm_runtime()
>
> So I think this is valid to keep as-is.

I missed this bit. As you say, things are good.

> > For this particular patch it works either way, so
> >
> > Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
>
> Thanks for looking!

And thanks for double checking!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

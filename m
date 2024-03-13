Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2ED8BC54791
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Mar 2024 10:57:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ekmCY6YWazrb73pwdKIZL/vkpTpFeImBTX4wJOlRjPE=; b=VJ1xm5ALqX+bXd
	fkdPoNLEQOE6y95pWVstPd52UhrZlMSYsQy8J22FhRqBsly5fXyVOq6AkA4RwNAEx1TUzlJMdSlEv
	/w7CeAn1v+7UTLAZMj0nbXfo7qMOMA2b2XCH+cmvYMmdkX/xtgIgmCuMTKzIyewJ8z6A0CvEWGhn0
	A+7qVv2hvR+Fe6uWFPCCEgfWg5bNQ0Kqbo5F8+h3jn4wXRh5Z3bxuuMRqak6SSyz+GoujfLw7dHPB
	r4YOKHyrnmpaKLP+j27KzrATW3EYQAwWkU+N2sCgHcKyOCyYss2qX1XqKovAPz8IUAKSZT4P4aa3v
	+ItuXnWyObqm5zzB1KcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkMIg-00000009ktv-0V2Q;
	Wed, 13 Mar 2024 10:57:34 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkMIa-00000009kml-2vmw;
	Wed, 13 Mar 2024 10:57:30 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 363472000A;
	Wed, 13 Mar 2024 10:57:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1710327441;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=IVCt5ZDF2pdAG11xTk8+M6M3EmGjgQ46WBLQ4Swbfyg=;
	b=NxQoNp1fQN7hOOxjMYdzO+AyWmDka4FyvK6+2Yb+5YQgkb5gdrJK0/csvE25O7+HDpUmQO
	bzGdg7aMzH3Z5X+KGPIq3bO6kV6ZmANjmWVB+KoV3W7IejoOYx8HRKtENqjfDmjf9IuCeU
	B6VgwOErzF3Bn1AurRZ5fj+rMqOQy/yImdwETQK6mcOvqvoU496wzdGpFcqsVjRsjH/7b0
	pDk51UF17odLw+6KaKJGZ0KxpVqsMx5MhmwItJvI8vtRa+egfbS3iGCVT5SW755HlNxLMd
	mcwQ5+SlEcS+o44jlGRxyjUQOeetSDYquMLIfRrgMKZNZWazd1hGzrtYrPfKig==
Date: Wed, 13 Mar 2024 11:57:17 +0100
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
To: Pavel Hofman <pavel.hofman@ivitera.com>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, Liam Girdwood
 <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Jaroslav Kysela
 <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Heiko Stuebner
 <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>, Thomas Petazzoni
 <thomas.petazzoni@bootlin.com>, linux-rockchip@lists.infradead.org,
 linux-sound@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
Subject: Re: [PATCH v4 1/7] ASoC: rockchip: i2s-tdm: Fix inaccurate sampling
 rates
Message-ID: <20240313115717.76dcc97f@booty>
In-Reply-To: <865b94d6-e9b6-6db9-eae5-5c56d4802710@ivitera.com>
References: <20240305-rk3308-audio-codec-v4-0-312acdbe628f@bootlin.com>
	<20240305-rk3308-audio-codec-v4-1-312acdbe628f@bootlin.com>
	<865b94d6-e9b6-6db9-eae5-5c56d4802710@ivitera.com>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-GND-Sasl: luca.ceresoli@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240313_035729_414169_B5C50A3B 
X-CRM114-Status: GOOD (  56.66  )
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

Hello Pavel, DT maintainers,

[a question about DT bindings below]

On Wed, 6 Mar 2024 08:43:57 +0100
Pavel Hofman <pavel.hofman@ivitera.com> wrote:

> On 05. 03. 24 15:36, Luca Ceresoli wrote:
> > The sample rates set by the rockchip_i2s_tdm driver in master mode are
> > inaccurate up to 5% in several cases, due to the driver logic to configure
> > clocks and a nasty interaction with the Common Clock Framework.
> > 
> > To understand what happens, here is the relevant section of the clock tree
> > (slightly simplified), along with the names used in the driver:
> > 
> >         vpll0 _OR_ vpll1               "mclk_root"
> >            clk_i2s2_8ch_tx_src         "mclk_parent"
> >               clk_i2s2_8ch_tx_mux
> >                  clk_i2s2_8ch_tx       "mclk" or "mclk_tx"
> > 
> > This is what happens when playing back e.g. at 192 kHz using
> > audio-graph-card (when recording the same applies, only s/tx/rx/):
> > 
> >   0. at probe, rockchip_i2s_tdm_set_sysclk() stores the passed frequency in
> >      i2s_tdm->mclk_tx_freq (*) which is 50176000, and that is never modified
> >      afterwards
> > 
> >   1. when playback is started, rockchip_i2s_tdm_hw_params() is called and
> >      does the following two calls
> > 
> >   2. rockchip_i2s_tdm_calibrate_mclk():
> > 
> >      2a. selects mclk_root0 (vpll0) as a parent for mclk_parent
> >          (mclk_tx_src), which is OK because the vpll0 rate is a good for
> >          192000 (and sumbultiple) rates
> > 
> >      2b. sets the mclk_root frequency based on ppm calibration computations
> > 
> >      2c. sets mclk_tx_src to 49152000 (= 256 * 192000), which is also OK as
> >          it is a multiple of the required bit clock
> > 
> >   3. rockchip_i2s_tdm_set_mclk()
> > 
> >      3a. calls clk_set_rate() to set the rate of mclk_tx (clk_i2s2_8ch_tx)
> >          to the value of i2s_tdm->mclk_tx_freq (*), i.e. 50176000 which is
> >          not a multiple of the sampling frequency -- this is not OK
> > 
> >          3a1. clk_set_rate() reacts by reparenting clk_i2s2_8ch_tx_src to
> >               vpll1 -- this is not OK because the default vpll1 rate can be
> > 	     divided to get 44.1 kHz and related rates, not 192 kHz
> > 
> > The result is that the driver does a lot of ad-hoc decisions about clocks
> > and ends up in using the wrong parent at an unoptimal rate.
> > 
> > Step 0 is one part of the problem: unless the card driver calls set_sysclk
> > at each stream start, whatever rate is set in mclk_tx_freq during boot will
> > be taken and used until reboot. Moreover the driver does not care if its
> > value is not a multiple of any audio frequency.
> > 
> > Another part of the problem is that the whole reparenting and clock rate
> > setting logic is conflicting with the CCF algorithms to achieve largely the
> > same goal: selecting the best parent and setting the closest clock
> > rate. And it turns out that only calling once clk_set_rate() on
> > clk_i2s2_8ch_tx picks the correct vpll and sets the correct rate.
> > 
> > The fix is based on removing the custom logic in the driver to select the
> > parent and set the various clocks, and just let the Clock Framework do it
> > all. As a side effect, the set_sysclk() op becomes useless because we now
> > let the CCF compute the appropriate value for the sampling rate.  It also
> > implies that the whole calibration logic is now dead code and so it is
> > removed along with the "PCM Clock Compensation in PPM" kcontrol, which has
> > always been broken anyway. The handling of the 4 optional clocks also
> > becomes dead code and is removed.
> > 
> > The actual rates have been tested playing 30 seconds of audio at various
> > sampling rates before and after this change using sox:
> > 
> >      time play -r <sample_rate> -n synth 30 sine 950 gain -3
> > 
> > The time reported in the table below is the 'real' value reported by the
> > 'time' command in the above command line.
> > 
> >       rate        before     after
> >     ---------     ------     ------
> >       8000 Hz     30.60s     30.63s
> >      11025 Hz     30.45s     30.51s
> >      16000 Hz     30.47s     30.50s
> >      22050 Hz     30.78s     30.41s
> >      32000 Hz     31.02s     30.43s
> >      44100 Hz     30.78s     30.41s
> >      48000 Hz     29.81s     30.45s
> >      88200 Hz     30.78s     30.41s
> >      96000 Hz     29.79s     30.42s
> >     176400 Hz     27.40s     30.41s
> >     192000 Hz     29.79s     30.42s
> > 
> > While the tests are running the clock tree confirms that:
> > 
> >   * without the patch, vpll1 is always used and clk_i2s2_8ch_tx always
> >     produces 50176000 Hz, which cannot be divided for most audio rates
> >     except the slowest ones, generating inaccurate rates
> >   * with the patch:
> >     - for 192000 Hz vpll0 is used
> >     - for 176400 Hz vpll1 is used
> >     - clk_i2s2_8ch_tx always produces (256 * <rate>) Hz
> > 
> > Tested on the RK3308 using the internal audio codec.
> > 
> > Fixes: 081068fd6414 ("ASoC: rockchip: add support for i2s-tdm controller")
> > Signed-off-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
> >   
> 
> I tested this patch, it works OK on 8ch I2S0 of RK3308 Radxa Pi S, 
> frequencies checked in clock summary and clock pins with an 
> oscilloscope. It's basically identical issue with the same cause as I 
> reported in 
> https://lore.kernel.org/alsa-devel/20240304134329.392c75bf@booty/T/#m19d69461aa827f15a86d6d31ed1b1520e80a909e 
> 
> 
> Just a note - the patch changes mclk frequencies from fixed 256 x 
> 192000/176400  to variable 256 x fs. While 256 x fs is more standard 
> than the fixed mclk for all samplerates of the same family, it may cause 
> changes for existing users if using the mclk output pins. But the 
> existing code was broken and had to be hacked to work anyway. Perhaps 
> this may need some considering.

Thanks for clearly describing this difference.

This is something I considered and in the end I found no reason to use
256 x 192000/176400 as it would use higher clocks than needed (or
equal, at 192 and 176.4 kHz), deviating from the common practice and
probably consuming a little more power, all apparently without any
gains. And, last but not least, without a motivation in the docs I have
available.

Of course, should there be known reasons to keep the 256 x
192000/176400 frequencies, I'd be fine with changing my patch.

> Also I wonder if the DTS description rockchip,i2s-tdm.yaml file may be 
> updated too, as some clocks listed by it are removed by the patch:
> 
> -const: mclk_tx_src
> -const: mclk_rx_src
> -const: mclk_root0
> -const: mclk_root1
> 
> IMO it may be a bit confusing if the description lists parameters which 
> are not actually used by the driver anymore.

You have a good point. I just checked the git history and indeed these
four clocks have never been mentioned by any of the device trees in
mainline.

However removal of parts of bindings is normally never supposed to
happen for backward compatibility.

@DT maintainers: would removal of optional clocks from bindings allowed
in this specific case?
Quick facts:
* bindings introduced in 2021, with the 4 optional clocks from the
  beginning, no changes afterwards
* none of the optional clocks ever appeared in arch/.../*.dts
* the 4 optional clocks actually describe a part of the clock topology,
  so their presence in I2S bindings is debatable at least
* the I2S controller described by the bindings does not need the
  4 optional clocks to work properly if the clocks are used correctly,
  as this patch proves

If this looks like a good idea, I can send a patch to remove those
optional clocks. Otherwise I can send one to add a comment to
discourage people from using them.

Best regards,
Luca

-- 
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

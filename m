Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17A26C5478C
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Mar 2024 18:41:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S1rrIKnwJSglHNDI48MIhLM+nPlrwAcfXHv6X8kIfbs=; b=R/MsQUlXZ6cCCb
	igi3muZDxIexIxeAdwYscogFnjp13G9UaLBwZDLb3A+bPMyVo5/sY5acgts1C8jgpEJ3LFMmaHTt2
	qQ7B8FYjGsRd+7XM3qzO/UOlnbc+IK3ZLXiJ9QlkRJy4/tC6gtBugM3ak2hql4hCba9QdkCFG4IIt
	/yTjc6q1kn2LT/TMqKunqir8uP9aSYbywyLI1iQas9IlpF8YxtXxPlIj0Ma2SfAQNLzIOsdKjjC7r
	BuFhSvva3fiDSZT0wLjdl9uTE8c+0UesZHr4bLzbhTZ1DeyTE/4oXXX0O97ZGRG871c17RFrsiegA
	oAodDv9adssKA1U0opSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDFF-0000000AEFE-1MCY;
	Mon, 04 Mar 2024 18:41:01 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDFB-0000000AEE0-19BY;
	Mon, 04 Mar 2024 18:40:59 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-412e4426e32so8656545e9.2;
        Mon, 04 Mar 2024 10:40:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709577654; x=1710182454; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OOixF9Qxs6pxfRAaa7GK40PcUljg6mYkWOsLVdP8gg4=;
        b=XZ7iem76OCcgcGPYTJTWpUhzZ8eZ3r7RDvZtR9x3Ss2Z/XGbCf9luEHmN4k7FBFGUr
         NmF+zIkagRKc5/NANT8FQo/zhE4S9MXdh4nN6e7V94CrCmwOExuSUX0K2nuoi00ePXls
         n5tBtlMCXJSHe8cLPgMsKzWKLl/nUS8uyb7wPGgIozlIkq3AOCIV8V0gAoIBdY9HBXm0
         UPUM9T9605kcSffuirP0mjnQarQRmIbgaDPssxjMIZA0xukZ7QPcu8+CkQ7ZEeHf/tGw
         Fz3S/Id4iE42neyTzTOYr4EPDk0JQQGYcHIV/7Hr+DbZExCSPzda5Hcc2T6pG4HF3/fc
         ZIdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709577654; x=1710182454;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OOixF9Qxs6pxfRAaa7GK40PcUljg6mYkWOsLVdP8gg4=;
        b=TBgG/M6ICBHfX5f2IodFoluqAWIm1tT8rM+38i0ohDuFapNbiddLNolNz42TbifV2J
         bzqpurY/rPRbiwdTWwStTPVNXTT410GR6YsFsGIkLXXOeK8edP0b8VzNpwlGEl0u3Xb+
         gRaQLM4Ifhue5lwPRNxcbB7e+GxT/RfkaWhVf+XxNhKPG3g8ekjiEAKgb91RxOjG6Yx4
         V/249g2JvFOQKhdOcz8s4ODu05Pxv3LmrgOkWONqkGyjuVSax3ww2o9caQ1I7/QcUYXf
         RiHrCFDB0F3Ozl2jtdCc2zls1MwfG/IwXXsOZBPIQTwYz74k0byXMDaXFB7u1gwqGVDl
         KLFQ==
X-Forwarded-Encrypted: i=1; AJvYcCWarPtT3LaTbU31dRZz31U0YeaZCGHh6eSTv6c+kjrR+QLyBbgRNc83ALjGo5ooHZHOb/mHPnceMhFfyer8+czMWYw9MejK1R3Q7C+xHXjDrPS2LiGVoJr/aMPI1hiKF8hMvMdeH00oYMieKayplIUGyir2PIW4Wgw=
X-Gm-Message-State: AOJu0YxWALLHj+AphoOJazTAvFGMZgcGqmPVh0Cv04dAPtnkadp6mdB8
	7PFhagFXvWHNu3VBZyJoQOZhGNv0m/WCd/7kyn6kU8qUyF6Yl7/q
X-Google-Smtp-Source: AGHT+IHp+fPd0u9tR3oVnca0W3S2vjfm9vhip8fmj8clro5oK6GajwyKFIeNXhiPXVu/A5z0KmuEkw==
X-Received: by 2002:a05:600c:470a:b0:412:b8ce:fa1e with SMTP id v10-20020a05600c470a00b00412b8cefa1emr7893177wmo.29.1709577653933;
        Mon, 04 Mar 2024 10:40:53 -0800 (PST)
Received: from archbook.localnet (84-72-105-84.dclient.hispeed.ch. [84.72.105.84])
        by smtp.gmail.com with ESMTPSA id l21-20020a05600c4f1500b004101543e843sm18552858wmq.10.2024.03.04.10.40.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Mar 2024 10:40:53 -0800 (PST)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-rockchip@lists.infradead.org, linux-sound@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, Luca Ceresoli <luca.ceresoli@bootlin.com>
Subject: Re: [PATCH v3 1/7] ASoC: rockchip: i2s-tdm: Fix inaccurate sampling rates
Date: Mon, 04 Mar 2024 19:40:52 +0100
Message-ID: <2509388.gFrL1EYhQU@archbook>
In-Reply-To: <20240221-rk3308-audio-codec-v3-1-dfa34abfcef6@bootlin.com>
References: <20240221-rk3308-audio-codec-v3-0-dfa34abfcef6@bootlin.com>
 <20240221-rk3308-audio-codec-v3-1-dfa34abfcef6@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_104057_391160_EDD2DCF8 
X-CRM114-Status: GOOD (  57.79  )
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

On Mittwoch, 21. Februar 2024 11:22:45 CET Luca Ceresoli wrote:
> The sample rates set by the rockchip_i2s_tdm driver in master mode are
> inaccurate up to 5% in several cases, due to the driver logic to configure
> clocks and a nasty interaction with the Common Clock Framework.
> 
> To understand what happens, here is the relevant section of the clock tree
> (slightly simplified), along with the names used in the driver:
> 
>        vpll0 _OR_ vpll1               "mclk_root"
>           clk_i2s2_8ch_tx_src         "mclk_parent"
>              clk_i2s2_8ch_tx_mux
>                 clk_i2s2_8ch_tx       "mclk" or "mclk_tx"
> 
> This is what happens when playing back e.g. at 192 kHz using
> audio-graph-card (when recording the same applies, only s/tx/rx/):
> 
>  0. at probe, rockchip_i2s_tdm_set_sysclk() stores the passed frequency in
>     i2s_tdm->mclk_tx_freq (*) which is 50176000, and that is never modified
>     afterwards
> 
>  1. when playback is started, rockchip_i2s_tdm_hw_params() is called and
>     does the following two calls
> 
>  2. rockchip_i2s_tdm_calibrate_mclk():
> 
>     2a. selects mclk_root0 (vpll0) as a parent for mclk_parent
>         (mclk_tx_src), which is OK because the vpll0 rate is a good for
>         192000 (and sumbultiple) rates
> 
>     2b. sets the mclk_root frequency based on ppm calibration computations
> 
>     2c. sets mclk_tx_src to 49152000 (= 256 * 192000), which is also OK as
>         it is a multiple of the required bit clock
> 
>  3. rockchip_i2s_tdm_set_mclk()
> 
>     3a. calls clk_set_rate() to set the rate of mclk_tx (clk_i2s2_8ch_tx)
>         to the value of i2s_tdm->mclk_tx_freq (*), i.e. 50176000 which is
>         not a multiple of the sampling frequency -- this is not OK
> 
>         3a1. clk_set_rate() reacts by reparenting clk_i2s2_8ch_tx_src to
>              vpll1 -- this is not OK because the default vpll1 rate can be
> 	     divided to get 44.1 kHz and related rates, not 192 kHz
> 
> The result is that the driver does a lot of ad-hoc decisions about clocks
> and ends up in using the wrong parent at an unoptimal rate.
> 
> Step 0 is one part of the problem: unless the card driver calls set_sysclk
> at each stream start, whatever rate is set in mclk_tx_freq during boot will
> be taken and used until reboot. Moreover the driver does not care if its
> value is not a multiple of any audio frequency.
> 
> Another part of the problem is that the whole reparenting and clock rate
> setting logic is conflicting with the CCF algorithms to achieve largely the
> same goal: selecting the best parent and setting the closest clock
> rate. And it turns out that only calling once clk_set_rate() on
> clk_i2s2_8ch_tx picks the correct vpll and sets the correct rate.
> 
> The fix is based on removing the custom logic in the driver to select the
> parent and set the various clocks, and just let the Clock Framework do it
> all. As a side effect, the set_sysclk() op becomes useless because we now
> let the CCF compute the appropriate value for the sampling rate.  It also
> implies that the whole calibration logic is now dead code and so it is
> removed along with the "PCM Clock Compensation in PPM" kcontrol, which has
> always been broken anyway. The handling of the 4 optional clocks also
> becomes dead code and is removed.
> 
> The actual rates have been tested playing 30 seconds of audio at various
> sampling rates before and after this change using sox:
> 
>     time play -r <sample_rate> -n synth 30 sine 950 gain -3
> 
> The time reported in the table below is the 'real' value reported by the
> 'time' command in the above command line.
> 
>      rate        before     after
>    ---------     ------     ------
>      8000 Hz     30.60s     30.63s
>     11025 Hz     30.45s     30.51s
>     16000 Hz     30.47s     30.50s
>     22050 Hz     30.78s     30.41s
>     32000 Hz     31.02s     30.43s
>     44100 Hz     30.78s     30.41s
>     48000 Hz     29.81s     30.45s
>     88200 Hz     30.78s     30.41s
>     96000 Hz     29.79s     30.42s
>    176400 Hz     27.40s     30.41s
>    192000 Hz     29.79s     30.42s
> 
> While the tests are running the clock tree confirms that:
> 
>  * without the patch, vpll1 is always used and clk_i2s2_8ch_tx always
>    produces 50176000 Hz, which cannot be divided for most audio rates
>    except the slowest ones, generating inaccurate rates
>  * with the patch:
>    - for 192000 Hz vpll0 is used
>    - for 176400 Hz vpll1 is used
>    - clk_i2s2_8ch_tx always produces (256 * <rate>) Hz
> 
> Fixes: 081068fd6414 ("ASoC: rockchip: add support for i2s-tdm controller")
> Signed-off-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
> 
> ---
> 
> I don't know why such a complex yet incorrect logic is present, but it is
> possibly a remnant of the downstream 4.19 driver
> (https://github.com/rockchip-linux/kernel/blob/develop-4.19/sound/soc/rockchip/rockchip_i2s_tdm.c).
> It might be that the CCF was not yet capable of optimally reparenting back
> in 4.19, so it did make sense back then.
> 
> <snip>


Hello,

thank you for your patch series fixing this driver. Since I am the person
currently listed as the maintainer of it and was the person who originally
upstreamed it, I think I can provide some insight.

The mclk calculation and reparenting code indeed originates from the
downstream driver. As for why that driver did these calculations itself,
I do not know, but I do know why I did not remove them and rely on the
CCF to do the reparenting and such for me.

For starters, I did not know that the DAI and CCF code have functionality
to automatically reparent clocks based on the audio rate. The reason I did
not know this is because after looking at the official kernel documentation
at [1], I did not see any mention of this.

Similarly, the documentation for the CCF at [2] also makes no mention of
this feature. In general, guidance for how to properly write a DAI driver
in the kernel documentation is sparse, though I am extremely grateful to
broonie for his patience in answering some of my questions I had at the
time. The input of any of the reviewers at the time, including that of
Rockchip's engineer who wrote the downstream driver, made it a lot better
than it initially was.

Had somebody brought up the existence of this functionality during the
reviews of this driver's original submission, I would of course have
fixed this. I do not blame the reviewers or maintainers, as they have
enough on their plate as-is and don't owe me anything. But I am trying
to explain the circumstances here that lead to mclk being slightly broken
for this driver.

Naturally, now that I know that this functionality does exist, I can do
a web search (since in-tree documentation search was fruitless) for
"linux common clock framework reparenting", which as its second result
brings up a PDF of the slides of a talk by one of your co-workers.[3] The
slides do not contain the string "reparent", though they do tell me that
I am able to purchase Linux kernel development training from your
employer.

What I'm trying to say here is that I still don't know how the DAI
reparenting mclk through the CCF works, and I'd probably need to dig
into the implementation to even know that it does this. Furthermore,
your employer has an economic incentive to keep this information out
of the in-tree documentation.

I hope that clears up any confusion as to "why such a complex yet
incorrect logic is present", and what ultimately lead you to having
to write this patch.

As for the patch itself, I'll hopefully get around to testing it this
week on an RK3566 board, as your cover letter does not list the platforms
this was tested for regressions on, so I assume you're just using RK3308.

The RK356x has some linked clock things going on which mainline does not
yet model properly as far as I know (which is why some video related clocks
are marked as critical, and why things like [4] are needed for MIPI-DSI
output to work. So any changes that might fiddle with the parent clocks
I'd like to validate. If I don't get around to it in a timely manner
however, I'm fine with this patch as-is.

Regards,
Nicolas Frattaroli

[1]: https://docs.kernel.org/sound/index.html
[2]: https://docs.kernel.org/driver-api/clk.html
[3]: https://elinux.org/images/b/b8/Elc2013_Clement.pdf
[4]: https://github.com/CounterPillow/overlay-examples/blob/main/quartz64a/pine64-lcd-panel.dts#L56-L62



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

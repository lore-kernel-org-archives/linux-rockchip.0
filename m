Return-Path: <SRS0=BI/a=CU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7532C433E2
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Sep 2020 07:05:56 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 608D2221EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Sep 2020 07:05:56 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="RvTus4A/";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=google.com header.i=@google.com header.b="qe4hkqMB"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 608D2221EF
Authentication-Results: mail.kernel.org; dmarc=fail (p=reject dis=none) header.from=google.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8LJneF/B4bcR1bE4lPCHinI/27akDrHFsl3E6axPkAE=; b=RvTus4A/uZIe4I3mfgNY3ziV1
	g0Xc8p7+oXQLtHI603WTEH9EUxY6pwKYjFDyD1yQJljAUQK05FAmZ1j8tMTudBLcGr0F87U1zGc9J
	xIAcs/YCj8v/O8fCSntyWDg18GgNRyoUPhcALjYa61zNzBVvKZ75JMm309jTUXijrcWFiFL5gClrg
	FXQU+ztRb42ib6V17H0V3e1QCwjflQ6/MR8HPLJ71UbdAemX8TNRgIFPhIDS0x5hXVw7bvU+A1GZq
	8rAra2dhflJwp/5iSWS99p604iAJcBX31l8sbMb43fy2vs9Znx2MOr/iU/wSY/72+Hxs2kLC97U28
	Pjv6T7GzA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kGd81-0002NX-3t; Fri, 11 Sep 2020 07:05:49 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kGd7s-0002Iu-6W
 for linux-rockchip@lists.infradead.org; Fri, 11 Sep 2020 07:05:42 +0000
Received: by mail-io1-xd43.google.com with SMTP id h4so9981749ioe.5
 for <linux-rockchip@lists.infradead.org>; Fri, 11 Sep 2020 00:05:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=otF8H1RNd/1xFgPWM+UYeAZ5JGJnziYMUvZT/Xjw4hM=;
 b=qe4hkqMBNjrfKmSzuLVus6EU9eYDBsofp7qqtq8YlvMw/Wjw74o8vcRMGH9JvNfccZ
 RjXMT1koZlUphilobl4V1XvQAi+X2mDvt2q7b+muUVlyHxx94WmHNIl09v2Yoyt8sNa3
 WtWX6BM+X+zYBPZxkjFLsJipzKs6YD59tk5p8MMlvBc1MwGDuo0cC0/IuJwWpfHxvDfA
 Q3mU2POB/NRiZYsQ+sUnXy5Sz1krQd3Y+QZD0qaP3WLaSYzlQTFEr+WaCByAXoZTKuNq
 TNWTF2B+eRYvSopuAXve89apo0iWr2xpAlRQbuHzugZa9WocdsJLJQ2+A+dxQz4eW4ph
 jctA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=otF8H1RNd/1xFgPWM+UYeAZ5JGJnziYMUvZT/Xjw4hM=;
 b=O+ykmK75Qjg/sCTrUckVei7FujIJ9exWD03FJdd6XQeBH0aeWxnNS+4osLeKh03191
 OHKk+/L/EbrcqEdXfN2qbFvhedn68yOWPSZv5+ZyHENWBcWOUe/Tk222ict+we2LR83x
 UYi9iiePJD5dB2kRLet8Dr+2UKrCvSjqBMU/CAWVED89cx7nHOK5LP+hO0wNooNr/xEX
 cEJX4ugN5GFMd5e51dA8gfuvjNvzvgZ2qMzKvlgA0kcgCF6p3nHCBG4RUzgbDo2H56rj
 83xLqMPDYIIliZR9Vu0TjA0dSxvBg3o71smESwlmRoi98tH7xwplj1WA6rqyTK3XDjsz
 glYQ==
X-Gm-Message-State: AOAM533oxMdMh8TK4wHHso1Wrd9Vq44i2v+XppdYWshUVC5dQ/SC+TNm
 5BBP99ZWtEbe4I7G01qekIIkMhxRO6/mNZJubiK3Hw==
X-Google-Smtp-Source: ABdhPJwodniZiAtfvQUmjWFccNMw2WLlrmOeP9LT9dEB93y9plKXNJu5aLa8hLG3YBW74NGPxP1i41/CNLxqL0iHbp0=
X-Received: by 2002:a5e:9b04:: with SMTP id j4mr731216iok.59.1599807936340;
 Fri, 11 Sep 2020 00:05:36 -0700 (PDT)
MIME-Version: 1.0
References: <20200910052347.1790735-1-cychiang@chromium.org>
 <20200910052347.1790735-2-cychiang@chromium.org>
In-Reply-To: <20200910052347.1790735-2-cychiang@chromium.org>
From: Tzung-Bi Shih <tzungbi@google.com>
Date: Fri, 11 Sep 2020 15:05:25 +0800
Message-ID: <CA+Px+wUh_PDZCg15bx7=teUeS=0fr22fnCKq5u2WUoTOXdTrbg@mail.gmail.com>
Subject: Re: [PATCH v8 1/3] ASoC: hdmi-codec: Use set_jack ops to set jack
To: Cheng-Yi Chiang <cychiang@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200911_030540_302650_719FDCEB 
X-CRM114-Status: GOOD (  15.66  )
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
Cc: Taniya Das <tdas@codeaurora.org>,
 ALSA development <alsa-devel@alsa-project.org>,
 Banajit Goswami <bgoswami@codeaurora.org>, Heiko Stuebner <heiko@sntech.de>,
 Takashi Iwai <tiwai@suse.com>, Rohit kumar <rohitkr@codeaurora.org>,
 Patrick Lai <plai@codeaurora.org>, linux-rockchip@lists.infradead.org,
 Andy Gross <agross@kernel.org>, dgreid@chromium.org,
 Jaroslav Kysela <perex@perex.cz>, devicetree@vger.kernel.org,
 Tzung-Bi Shih <tzungbi@chromium.org>, Stephan Gerhold <stephan@gerhold.net>,
 linux-arm-msm@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-kernel@lists.infradead.org, Douglas Anderson <dianders@chromium.org>,
 Liam Girdwood <lgirdwood@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>,
 Srini Kandagatla <srinivas.kandagatla@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, Sep 10, 2020 at 1:24 PM Cheng-Yi Chiang <cychiang@chromium.org> wrote:
> diff --git a/sound/soc/codecs/hdmi-codec.c b/sound/soc/codecs/hdmi-codec.c
> index 8c6f540533ba..d1de5bcd5daa 100644
> --- a/sound/soc/codecs/hdmi-codec.c
> +++ b/sound/soc/codecs/hdmi-codec.c
> @@ -698,13 +698,9 @@ static void plugged_cb(struct device *dev, bool plugged)
>                 hdmi_codec_jack_report(hcp, 0);
>  }
>
> -/**
> - * hdmi_codec_set_jack_detect - register HDMI plugged callback
> - * @component: the hdmi-codec instance
> - * @jack: ASoC jack to report (dis)connection events on
> - */
> -int hdmi_codec_set_jack_detect(struct snd_soc_component *component,
> -                              struct snd_soc_jack *jack)
> +static int hdmi_codec_set_jack_detect(struct snd_soc_component *component,
> +                                     struct snd_soc_jack *jack,
> +                                     void *data)
To be neat, name it "hdmi_codec_set_jack".

>  static int hdmi_dai_spdif_probe(struct snd_soc_dai *dai)
>  {
> @@ -806,6 +801,7 @@ static const struct snd_soc_component_driver hdmi_driver = {
>         .use_pmdown_time        = 1,
>         .endianness             = 1,
>         .non_legacy_dai_naming  = 1,
> +       .set_jack               = hdmi_codec_set_jack_detect,
"hdmi_codec_set_jack" looks better to me.

If you would send a newer version, consider changing the name.

With that:
Reviewed-by: Tzung-Bi Shih <tzungbi@google.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

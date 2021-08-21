Return-Path: <SRS0=bXWU=NM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0185C4338F
	for <linux-rockchip@archiver.kernel.org>; Sat, 21 Aug 2021 20:46:10 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 839E5601FF
	for <linux-rockchip@archiver.kernel.org>; Sat, 21 Aug 2021 20:46:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 839E5601FF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ki2+80AU8+aloGj3U3kswFRIHSRDIq/nVBNFUhauWCM=; b=jZxAWsJMmFsQjG
	5/RreyM3i1f6tlfD1v3iBgZjOLdGYrZuTkbAC03PLxTizdKySZvFqciyICpxxVKrgKPF7yYUnVwVP
	P6E2qegLlQKhgi9FOS9SFNVyz90TF7Q3htP5I5fP26dfquly+OSEhrZQKtbDUP3NoSQhpJ5yB160A
	TxmVpgZRuX5rCamltw9GKbb+vUodmqXezMcV0ZyUfVQ9nDVisLR1qGZLMweTzFJnlbQ/xDLOeSWQl
	1YRnaOQOeQ14pjU2fmNOZbb1ANnAyOv+eMAZmMFLHp51ywxovUJo7QTHNY0AiPiRN+tf6DUIoPNPP
	XFALDYrSVwbYvJwpQgOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mHXsR-00DApV-TL; Sat, 21 Aug 2021 20:46:03 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mHXsO-00DAp6-IC; Sat, 21 Aug 2021 20:46:02 +0000
Received: by mail-ej1-x62f.google.com with SMTP id u14so2822778ejf.13;
 Sat, 21 Aug 2021 13:45:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jW6WgkkcgqeMv2g70HWibDwKNVYFyjoAOtV6/XbdB3I=;
 b=qqY8UxSxlX5wea3lPQ0OcfWiDDRe3k47+uUluXghkrYr5Iwu/+xTeJVZepCNhD9FDx
 hSnV7rQVGcsYDrNkKL4NK/Iiic0cOQnAVm3a+F85vu25NDyTQS5P+Q2v95e7/V4FpRhw
 AxArOzTMRYHNlwdO5xtWiLJ4EbNU2CYyyvwr1G8ylP2AHFggPe4hO0UDkHZVdJwtjhY/
 vdZH/BjCC8dlxI0p7w6p3CimbD9aEk/QACb27bGRGY64coKJtYtqXGSoGWtYS6UGEno2
 26A1SCtxhH/QTspbix9EuFOWfpliO8a8/0ijMxxyKxPtBwog7NwJUZLfbp7xi2PeQ84d
 1ziQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jW6WgkkcgqeMv2g70HWibDwKNVYFyjoAOtV6/XbdB3I=;
 b=maerz3gbSreySclIk4uaaWqy069B/awQngfRc/f8YkwmeFo7yow8atx+IqR+5HGlJP
 HfvpERC9OymMAYU1gjbqUh1oDaqOSvNOY2AqVXKOLelDlbK5xS/SYSlmSPb9cImY87uk
 vpa+3oZfzSQfZLJ3Nw5EhlYesunYAAwRSCp24phA+40lj/Fz0HCFQ9es22g8b0QriVvM
 UaQiJCSY/xL2OPKwdyJjAZJxBAr0LAFIprM6XZ94JjDoNKEV+k4yamdhtkfT40xwpDIr
 0CkyTldTl0caSDtLTkIw+TIj6E7p8WMbGzpHdH+WI/K228RQmqKKGMCOTDFKEPKO17hL
 4pew==
X-Gm-Message-State: AOAM530r/bIOIF+hDe0TRo7X1qXPYKuHK7LgTDshS71pKpbS1I6ppcT/
 KxHl0g8OS+3VBgq0SBc04QPcfrS8I1Ob0A==
X-Google-Smtp-Source: ABdhPJylGo+JqRqLQ/39m2bF0KZUWoYNkH79V+Bh47oCk6+evGfniowz7vDAvz9iwcOv5AjqB18Djg==
X-Received: by 2002:a17:906:5f93:: with SMTP id
 a19mr29018008eju.126.1629578758085; 
 Sat, 21 Aug 2021 13:45:58 -0700 (PDT)
Received: from archbook.localnet (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84])
 by smtp.gmail.com with ESMTPSA id o6sm229307eje.6.2021.08.21.13.45.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 21 Aug 2021 13:45:57 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>,
 Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
Cc: linux-rockchip@lists.infradead.org, alsa-devel@alsa-project.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 1/4] ASoC: rockchip: add support for i2s-tdm controller
Date: Sat, 21 Aug 2021 22:45:52 +0200
Message-ID: <3469189.PC3msRC2N5@archbook>
In-Reply-To: <66d6bd43-ee43-eff4-7a68-333fbb996787@linux.intel.com>
References: <20210820182731.29370-1-frattaroli.nicolas@gmail.com>
 <20210820182731.29370-2-frattaroli.nicolas@gmail.com>
 <66d6bd43-ee43-eff4-7a68-333fbb996787@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210821_134600_678023_B0A75A76 
X-CRM114-Status: GOOD (  31.33  )
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

On Freitag, 20. August 2021 21:02:16 CEST Pierre-Louis Bossart wrote:
> > +	regmap_read(i2s_tdm->regmap, I2S_CLR, &val);
> > +	/* Wait on the clear operation to finish */
> > +	while (val) {
> 
> delay needed here?
> 

The rockchip_i2s.c code doesn't have a delay here either, but I can
add one of 1 usec for good measure, it seems weird to retry the
read as fast as it can.

> > +static int rockchip_i2s_tdm_clk_set_rate(struct rk_i2s_tdm_dev *i2s_tdm,
> > +					 struct clk *clk, unsigned long rate,
> > +					 int ppm)
> > +{
> > +	unsigned long rate_target;
> > +	int delta, ret;
> > +
> > +	if (ppm == i2s_tdm->clk_ppm)
> > +		return 0;
> > +
> > +	delta = (ppm < 0) ? -1 : 1;
> > +	delta *= (int)div64_u64((u64)rate * (u64)abs(ppm) + 500000,
> > +				1000000);
> 
> formula looks odd? looks like you are implementing a round to nearest
> operation, but that shouldn't require this multiplication?
> 

I believe the multiplication is there to compensate for clock drift.
ppm is a value between -1000 and 1000 that specifies the clock drift
in presumably parts per million, going by the variable name.

> > +	pm_runtime_enable(&pdev->dev);
> > +	if (!pm_runtime_enabled(&pdev->dev)) {
> > +		ret = i2s_tdm_runtime_resume(&pdev->dev);
> 
> that looks like dead code? you've just enabled pm_runtime, why would
> this fail?
> 

I've had a look at the upstream rockchip_i2s.c code which does the
same thing, and I believe the idea here is that we need to manually
prepare and enable the master clocks (mclk_rx/mclk_tx) if pm_runtime
is not available. Otherwise, pm_runtime will presumably call our
resume callback at some point.

If runtime power management is disabled in the kernel config then 
pm_runtime_enabled is always going to return false.

> > +err_suspend:
> > +	if (!pm_runtime_status_suspended(&pdev->dev))
> > +		i2s_tdm_runtime_suspend(&pdev->dev);
> 
> why is this necessary?

I believe this is the same kind of situation as before, and the
other driver does this too: if pm_runtime is not available, we
need to stop our clocks manually on probe failure.
 
> > +err_pm_disable:
> > +	pm_runtime_disable(&pdev->dev);
> > +
> > +	return ret;
> > +}
> > +
> > +static int rockchip_i2s_tdm_remove(struct platform_device *pdev)
> > +{
> > +	struct rk_i2s_tdm_dev *i2s_tdm = dev_get_drvdata(&pdev->dev);
> > +
> > +	pm_runtime_disable(&pdev->dev);
> > +	if (!pm_runtime_status_suspended(&pdev->dev))
> > +		i2s_tdm_runtime_suspend(&pdev->dev);
> 
> this looks backwards, if you disable pm_runtime first what is the
> expectation for the rest.

I'm not well versed in the PM code but if my theory of this being
related to unavailable PM is correct, then my best guess is that
pm_runtime_disable does suspend the device, so if it's not
suspended then we don't have pm_runtime and therefore need to call
it manually.

> > +
> > +	if (!IS_ERR(i2s_tdm->mclk_tx))
> > +		clk_prepare_enable(i2s_tdm->mclk_tx);
> > +	if (!IS_ERR(i2s_tdm->mclk_rx))
> > +		clk_prepare_enable(i2s_tdm->mclk_rx);
> > +	if (!IS_ERR(i2s_tdm->hclk))
> > +		clk_disable_unprepare(i2s_tdm->hclk);
> > +
> > +	return 0;
> > +}
> > +
> > +#ifdef CONFIG_PM_SLEEP
> 
> use __maybe_unused

You mean instead of the ifdef stuff to just add this attribute to
the following functions like this?

static int rockchip_i2s_tdm_suspend(struct device *dev) __maybe_unused

> 
> > +static int rockchip_i2s_tdm_suspend(struct device *dev)
> > +{
> > +	struct rk_i2s_tdm_dev *i2s_tdm = dev_get_drvdata(dev);
> > +
> > +	regcache_mark_dirty(i2s_tdm->regmap);
> > +
> > +	return 0;
> > +}
> > +
> > +static int rockchip_i2s_tdm_resume(struct device *dev)
> > +{
> > +	struct rk_i2s_tdm_dev *i2s_tdm = dev_get_drvdata(dev);
> > +	int ret;
> > +
> > +	ret = pm_runtime_get_sync(dev);
> > +	if (ret < 0)
> > +		return ret;
> > +	ret = regcache_sync(i2s_tdm->regmap);
> > +	pm_runtime_put(dev);
> > +
> > +	return ret;
> > +}
> > +#endif

Thank you for your review!

Regards,
Nicolas Frattaroli




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

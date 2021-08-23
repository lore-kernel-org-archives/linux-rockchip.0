Return-Path: <SRS0=s7m+=NO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1 autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C049C4338F
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Aug 2021 15:02:54 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5D3F561242
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Aug 2021 15:02:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 5D3F561242
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linux.intel.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ry85BD8d4WsRd6ahvxfz0o18J3HQt1Qq253Aw8x+qwk=; b=xygAteoBv0DtYFMWS5OYezE6n8
	9TxqtAtpt8eyOo+2HCHZgVzJyMXTzm9XEVo1XLx7FhFrJtVLgG8lzGfHPPvdK3qjzFKyrWrBdXau6
	zaOHFbzfgCiHgq2GayE/wiBpmJYqZ/mCdmObaqv98z2vVywsTySVdwervQSGlgBxcH2M53/v2GyUI
	W4T8gA1962pb6AWCSMCtfbwzKVpjB5Hs/rRBToMuxxzV0mjT7SZ7D7xkvSnYLsYoLfGQa9fn45s71
	fRbRTd+Ie8Rx9LkqMPtHAKX7RIEY3mS4jEMm0N6NOPQIGrdV3e+6R3mmNV/1LXe4n0b4Sc3jxXkGW
	/VxTR9+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mIBTL-00HMGc-RG; Mon, 23 Aug 2021 15:02:47 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mIBT8-00HMAQ-FH; Mon, 23 Aug 2021 15:02:36 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10084"; a="204257357"
X-IronPort-AV: E=Sophos;i="5.84,344,1620716400"; d="scan'208";a="204257357"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2021 08:02:22 -0700
X-IronPort-AV: E=Sophos;i="5.84,344,1620716400"; d="scan'208";a="492732236"
Received: from ikuon-mobl.amr.corp.intel.com (HELO [10.212.74.116])
 ([10.212.74.116])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2021 08:02:21 -0700
Subject: Re: [PATCH v2 1/4] ASoC: rockchip: add support for i2s-tdm controller
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-rockchip@lists.infradead.org, alsa-devel@alsa-project.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20210820182731.29370-1-frattaroli.nicolas@gmail.com>
 <20210820182731.29370-2-frattaroli.nicolas@gmail.com>
 <66d6bd43-ee43-eff4-7a68-333fbb996787@linux.intel.com>
 <3469189.PC3msRC2N5@archbook>
From: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
Message-ID: <a2aa0525-326e-9364-1907-c1d53bca39cf@linux.intel.com>
Date: Mon, 23 Aug 2021 10:02:18 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <3469189.PC3msRC2N5@archbook>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210823_080234_611043_D158FB5C 
X-CRM114-Status: GOOD (  38.57  )
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



On 8/21/21 3:45 PM, Nicolas Frattaroli wrote:
> On Freitag, 20. August 2021 21:02:16 CEST Pierre-Louis Bossart wrote:
>>> +	regmap_read(i2s_tdm->regmap, I2S_CLR, &val);
>>> +	/* Wait on the clear operation to finish */
>>> +	while (val) {
>>
>> delay needed here?
>>
> 
> The rockchip_i2s.c code doesn't have a delay here either, but I can
> add one of 1 usec for good measure, it seems weird to retry the
> read as fast as it can.

yep.

>>> +static int rockchip_i2s_tdm_clk_set_rate(struct rk_i2s_tdm_dev *i2s_tdm,
>>> +					 struct clk *clk, unsigned long rate,
>>> +					 int ppm)
>>> +{
>>> +	unsigned long rate_target;
>>> +	int delta, ret;
>>> +
>>> +	if (ppm == i2s_tdm->clk_ppm)
>>> +		return 0;
>>> +
>>> +	delta = (ppm < 0) ? -1 : 1;
>>> +	delta *= (int)div64_u64((u64)rate * (u64)abs(ppm) + 500000,
>>> +				1000000);
>>
>> formula looks odd? looks like you are implementing a round to nearest
>> operation, but that shouldn't require this multiplication?
>>
> 
> I believe the multiplication is there to compensate for clock drift.
> ppm is a value between -1000 and 1000 that specifies the clock drift
> in presumably parts per million, going by the variable name.

I meant using a signed division with lsb round-to-nearest, something like:

delta = (int)div64_u64((u64)rate * (u64)(ppm) + 500000,
			1000000);

> 
>>> +	pm_runtime_enable(&pdev->dev);
>>> +	if (!pm_runtime_enabled(&pdev->dev)) {
>>> +		ret = i2s_tdm_runtime_resume(&pdev->dev);
>>
>> that looks like dead code? you've just enabled pm_runtime, why would
>> this fail?
>>
> 
> I've had a look at the upstream rockchip_i2s.c code which does the
> same thing, and I believe the idea here is that we need to manually
> prepare and enable the master clocks (mclk_rx/mclk_tx) if pm_runtime
> is not available. Otherwise, pm_runtime will presumably call our
> resume callback at some point.
> 
> If runtime power management is disabled in the kernel config then 
> pm_runtime_enabled is always going to return false.

that seems very odd. why not enable the clocks by default and let them
stop in suspend.

>>> +err_suspend:
>>> +	if (!pm_runtime_status_suspended(&pdev->dev))
>>> +		i2s_tdm_runtime_suspend(&pdev->dev);
>>
>> why is this necessary?
> 
> I believe this is the same kind of situation as before, and the
> other driver does this too: if pm_runtime is not available, we
> need to stop our clocks manually on probe failure.

then use pm_runtime_disable() and manually stop the clocks...

>>> +err_pm_disable:
>>> +	pm_runtime_disable(&pdev->dev);>>> +
>>> +	return ret;
>>> +}
>>> +
>>> +static int rockchip_i2s_tdm_remove(struct platform_device *pdev)
>>> +{
>>> +	struct rk_i2s_tdm_dev *i2s_tdm = dev_get_drvdata(&pdev->dev);
>>> +
>>> +	pm_runtime_disable(&pdev->dev);
>>> +	if (!pm_runtime_status_suspended(&pdev->dev))
>>> +		i2s_tdm_runtime_suspend(&pdev->dev);
>>
>> this looks backwards, if you disable pm_runtime first what is the
>> expectation for the rest.
> 
> I'm not well versed in the PM code but if my theory of this being
> related to unavailable PM is correct, then my best guess is that
> pm_runtime_disable does suspend the device, so if it's not
> suspended then we don't have pm_runtime and therefore need to call
> it manually.

I think this is really doing things backwards. You want to
unconditionally enable all resources on probe, and let them go to idle
when no one needs them - or if pm_runtime is disabled.

>>> +
>>> +	if (!IS_ERR(i2s_tdm->mclk_tx))
>>> +		clk_prepare_enable(i2s_tdm->mclk_tx);
>>> +	if (!IS_ERR(i2s_tdm->mclk_rx))
>>> +		clk_prepare_enable(i2s_tdm->mclk_rx);
>>> +	if (!IS_ERR(i2s_tdm->hclk))
>>> +		clk_disable_unprepare(i2s_tdm->hclk);
>>> +
>>> +	return 0;>>> +}
>>> +
>>> +#ifdef CONFIG_PM_SLEEP
>>
>> use __maybe_unused
> 
> You mean instead of the ifdef stuff to just add this attribute to
> the following functions like this?
> 
> static int rockchip_i2s_tdm_suspend(struct device *dev) __maybe_unused

yes

> 
>>
>>> +static int rockchip_i2s_tdm_suspend(struct device *dev)
>>> +{
>>> +	struct rk_i2s_tdm_dev *i2s_tdm = dev_get_drvdata(dev);
>>> +
>>> +	regcache_mark_dirty(i2s_tdm->regmap);
>>> +
>>> +	return 0;
>>> +}
>>> +
>>> +static int rockchip_i2s_tdm_resume(struct device *dev)
>>> +{
>>> +	struct rk_i2s_tdm_dev *i2s_tdm = dev_get_drvdata(dev);
>>> +	int ret;
>>> +
>>> +	ret = pm_runtime_get_sync(dev);
>>> +	if (ret < 0)
>>> +		return ret;
>>> +	ret = regcache_sync(i2s_tdm->regmap);
>>> +	pm_runtime_put(dev);
>>> +
>>> +	return ret;
>>> +}
>>> +#endif
> 
> Thank you for your review!
> 
> Regards,
> Nicolas Frattaroli
> 
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

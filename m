Return-Path: <SRS0=iF3C=NL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F627C4338F
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Aug 2021 19:02:58 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4DC83610FF
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Aug 2021 19:02:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 4DC83610FF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linux.intel.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jfSTbQyKPLbULnA2Ta7TiNYoW6P/MNAFB1pL5ViNgYw=; b=PawJcWQmVTwzlBzZUQ7CbVrqb1
	G64bQVtn2JupVi22wfZtxlZnHe9Re9GSQIURovus6+9C+tVLV6HFF3uKjq/RiLbZK99rgQafqDmT8
	qfMQuUyNPgCdY7YJ9QEGOokVt7P2FePAFL70mhqjdUzhQd+BhjNd9Jb4EHEDQ//bLmKbllHyyqRF8
	L3gjxlmtWbjxRZeF00dZIkNqTDE4bICXhipSLTfEkXykE63TzngcNlq4O/WqEAployxDJ5RrVVC4r
	wi75Fy69tAjYp8m1tE8kwpOW6ds0l8FG7wlaaLSwk16L9JCoS24jC+AQUuKyU/qSnd1TgWI3KCQQK
	Yi/xEfWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mH9n4-00BxW7-8c; Fri, 20 Aug 2021 19:02:54 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mH9mr-00BxUE-Bt; Fri, 20 Aug 2021 19:02:43 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10082"; a="216860949"
X-IronPort-AV: E=Sophos;i="5.84,338,1620716400"; d="scan'208";a="216860949"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2021 12:02:21 -0700
X-IronPort-AV: E=Sophos;i="5.84,338,1620716400"; d="scan'208";a="425117963"
Received: from mchombea-mobl.amr.corp.intel.com (HELO [10.212.9.172])
 ([10.212.9.172])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2021 12:02:19 -0700
Subject: Re: [PATCH v2 1/4] ASoC: rockchip: add support for i2s-tdm controller
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-rockchip@lists.infradead.org, alsa-devel@alsa-project.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20210820182731.29370-1-frattaroli.nicolas@gmail.com>
 <20210820182731.29370-2-frattaroli.nicolas@gmail.com>
From: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
Message-ID: <66d6bd43-ee43-eff4-7a68-333fbb996787@linux.intel.com>
Date: Fri, 20 Aug 2021 14:02:16 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210820182731.29370-2-frattaroli.nicolas@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210820_120241_660414_7CD7600B 
X-CRM114-Status: GOOD (  28.85  )
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


> diff --git a/sound/soc/rockchip/rockchip_i2s_tdm.c b/sound/soc/rockchip/rockchip_i2s_tdm.c
> new file mode 100644
> index 000000000000..c02b66f3c913
> --- /dev/null
> +++ b/sound/soc/rockchip/rockchip_i2s_tdm.c
> @@ -0,0 +1,1737 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * ALSA SoC Audio Layer - Rockchip I2S/TDM Controller driver
> + *
> + * Copyright (c) 2018 Rockchip Electronics Co. Ltd.
> + * Author: Sugar Zhang <sugar.zhang@rock-chips.com>
> + * Author: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
> + *
> + */
> +
> +#include <linux/module.h>
> +#include <linux/mfd/syscon.h>
> +#include <linux/delay.h>
> +#include <linux/of_gpio.h>
> +#include <linux/of_device.h>
> +#include <linux/of_address.h>
> +#include <linux/clk.h>
> +#include <linux/clk-provider.h>
> +#include <linux/pm_runtime.h>
> +#include <linux/regmap.h>
> +#include <linux/reset.h>
> +#include <linux/spinlock.h>
> +#include <sound/pcm_params.h>
> +#include <sound/dmaengine_pcm.h>

alphabetical order?

> +static void rockchip_snd_xfer_clear(struct rk_i2s_tdm_dev *i2s_tdm,
> +				    unsigned int clr)
> +{
> +	unsigned int xfer_mask;
> +	unsigned int xfer_val;
> +	unsigned int val;
> +	int retry = 10;
> +	bool tx = clr & I2S_CLR_TXC;
> +	bool rx = clr & I2S_CLR_RXC;
> +
> +	if (!(rx || tx))
> +		return;
> +
> +	xfer_mask = (tx ? I2S_XFER_TXS_START : 0) |
> +		    (rx ? I2S_XFER_RXS_START : 0);
> +	xfer_val = (tx ? I2S_XFER_TXS_STOP : 0) |
> +		   (rx ? I2S_XFER_RXS_STOP : 0);
> +
> +	regmap_update_bits(i2s_tdm->regmap, I2S_XFER, xfer_mask, xfer_val);
> +	udelay(150);
> +	regmap_update_bits(i2s_tdm->regmap, I2S_CLR, clr, clr);
> +
> +	regmap_read(i2s_tdm->regmap, I2S_CLR, &val);
> +	/* Wait on the clear operation to finish */
> +	while (val) {

delay needed here?

> +		regmap_read(i2s_tdm->regmap, I2S_CLR, &val);
> +		retry--;
> +		if (!retry) {
> +			dev_warn(i2s_tdm->dev, "clear failed, reset %s%s\n",
> +				 tx ? "tx" : "", rx ? "rx" : "");
> +			if (rx && tx)
> +				rockchip_snd_xfer_sync_reset(i2s_tdm);
> +			else if (tx)
> +				rockchip_snd_reset(i2s_tdm->tx_reset);
> +			else if (rx)
> +				rockchip_snd_reset(i2s_tdm->rx_reset);
> +			break;
> +		}
> +	}
> +}

> +static int rockchip_i2s_tdm_set_fmt(struct snd_soc_dai *cpu_dai,
> +				    unsigned int fmt)
> +{
> +	struct rk_i2s_tdm_dev *i2s_tdm = to_info(cpu_dai);
> +	unsigned int mask = 0, val = 0, tdm_val = 0, txcr_val = 0, rxcr_val = 0;

not all initializations are required. Run e.g. cppcheck.

> +	int ret = 0;
> +	bool is_tdm = i2s_tdm->tdm_mode;
> +
> +	pm_runtime_get_sync(cpu_dai->dev);

test if this worked?

Also if this fails you need to call pm_runtime_put_noidle()

this is what we use.

ret = pm_runtime_get_sync(dev);
if (ret < 0 && ret != -EACCES) {
      pm_runtime_put_noidle(dev);
      return ret;
}


> +	mask = I2S_CKR_MSS_MASK;
> +	switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
> +	case SND_SOC_DAIFMT_CBS_CFS:
> +		val = I2S_CKR_MSS_MASTER;
> +		i2s_tdm->is_master_mode = true;
> +		break;
> +	case SND_SOC_DAIFMT_CBM_CFM:
> +		val = I2S_CKR_MSS_SLAVE;
> +		i2s_tdm->is_master_mode = false;
> +		break;
> +	default:
> +		ret = -EINVAL;
> +		goto err_pm_put;
> +	}
> +
> +	regmap_update_bits(i2s_tdm->regmap, I2S_CKR, mask, val);
> +
> +	mask = I2S_CKR_CKP_MASK | I2S_CKR_TLP_MASK | I2S_CKR_RLP_MASK;
> +	switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
> +	case SND_SOC_DAIFMT_NB_NF:
> +		val = I2S_CKR_CKP_NORMAL |
> +		      I2S_CKR_TLP_NORMAL |
> +		      I2S_CKR_RLP_NORMAL;
> +		break;
> +	case SND_SOC_DAIFMT_NB_IF:
> +		val = I2S_CKR_CKP_NORMAL |
> +		      I2S_CKR_TLP_INVERTED |
> +		      I2S_CKR_RLP_INVERTED;
> +		break;
> +	case SND_SOC_DAIFMT_IB_NF:
> +		val = I2S_CKR_CKP_INVERTED |
> +		      I2S_CKR_TLP_NORMAL |
> +		      I2S_CKR_RLP_NORMAL;
> +		break;
> +	case SND_SOC_DAIFMT_IB_IF:
> +		val = I2S_CKR_CKP_INVERTED |
> +		      I2S_CKR_TLP_INVERTED |
> +		      I2S_CKR_RLP_INVERTED;
> +		break;
> +	default:
> +		ret = -EINVAL;
> +		goto err_pm_put;
> +	}
> +
> +	regmap_update_bits(i2s_tdm->regmap, I2S_CKR, mask, val);
> +
> +	switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
> +	case SND_SOC_DAIFMT_RIGHT_J:
> +		txcr_val = I2S_TXCR_IBM_RSJM;
> +		rxcr_val = I2S_RXCR_IBM_RSJM;
> +		break;
> +	case SND_SOC_DAIFMT_LEFT_J:
> +		txcr_val = I2S_TXCR_IBM_LSJM;
> +		rxcr_val = I2S_RXCR_IBM_LSJM;
> +		break;
> +	case SND_SOC_DAIFMT_I2S:
> +		txcr_val = I2S_TXCR_IBM_NORMAL;
> +		rxcr_val = I2S_RXCR_IBM_NORMAL;
> +		break;
> +	case SND_SOC_DAIFMT_DSP_A: /* PCM no delay mode */
> +		txcr_val = I2S_TXCR_TFS_PCM;
> +		rxcr_val = I2S_RXCR_TFS_PCM;
> +		break;
> +	case SND_SOC_DAIFMT_DSP_B: /* PCM delay 1 mode */
> +		txcr_val = I2S_TXCR_TFS_PCM | I2S_TXCR_PBM_MODE(1);
> +		rxcr_val = I2S_RXCR_TFS_PCM | I2S_RXCR_PBM_MODE(1);
> +		break;
> +	default:
> +		ret = -EINVAL;
> +		goto err_pm_put;
> +	}
> +
> +	mask = I2S_TXCR_IBM_MASK | I2S_TXCR_TFS_MASK | I2S_TXCR_PBM_MASK;
> +	regmap_update_bits(i2s_tdm->regmap, I2S_TXCR, mask, txcr_val);
> +
> +	mask = I2S_RXCR_IBM_MASK | I2S_RXCR_TFS_MASK | I2S_RXCR_PBM_MASK;
> +	regmap_update_bits(i2s_tdm->regmap, I2S_RXCR, mask, rxcr_val);
> +
> +	if (is_tdm) {
> +		switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
> +		case SND_SOC_DAIFMT_RIGHT_J:
> +			val = I2S_TXCR_TFS_TDM_I2S;
> +			tdm_val = TDM_SHIFT_CTRL(2);
> +			break;
> +		case SND_SOC_DAIFMT_LEFT_J:
> +			val = I2S_TXCR_TFS_TDM_I2S;
> +			tdm_val = TDM_SHIFT_CTRL(1);
> +			break;
> +		case SND_SOC_DAIFMT_I2S:
> +			val = I2S_TXCR_TFS_TDM_I2S;
> +			tdm_val = TDM_SHIFT_CTRL(0);
> +			break;
> +		case SND_SOC_DAIFMT_DSP_A:
> +			val = I2S_TXCR_TFS_TDM_PCM;
> +			tdm_val = TDM_SHIFT_CTRL(0);
> +			break;
> +		case SND_SOC_DAIFMT_DSP_B:
> +			val = I2S_TXCR_TFS_TDM_PCM;
> +			tdm_val = TDM_SHIFT_CTRL(2);
> +			break;
> +		default:
> +			ret = -EINVAL;
> +			goto err_pm_put;
> +		}
> +
> +		tdm_val |= TDM_FSYNC_WIDTH_SEL1(1);
> +		if (i2s_tdm->tdm_fsync_half_frame)
> +			tdm_val |= TDM_FSYNC_WIDTH_HALF_FRAME;
> +		else
> +			tdm_val |= TDM_FSYNC_WIDTH_ONE_FRAME;
> +
> +		mask = I2S_TXCR_TFS_MASK;
> +		regmap_update_bits(i2s_tdm->regmap, I2S_TXCR, mask, val);
> +		regmap_update_bits(i2s_tdm->regmap, I2S_RXCR, mask, val);
> +
> +		mask = TDM_FSYNC_WIDTH_SEL1_MSK | TDM_FSYNC_WIDTH_SEL0_MSK |
> +		       TDM_SHIFT_CTRL_MSK;
> +		regmap_update_bits(i2s_tdm->regmap, I2S_TDM_TXCR,
> +				   mask, tdm_val);
> +		regmap_update_bits(i2s_tdm->regmap, I2S_TDM_RXCR,
> +				   mask, tdm_val);
> +	}
> +
> +err_pm_put:
> +	pm_runtime_put(cpu_dai->dev);
> +
> +	return ret;
> +}
> +

> +static int rockchip_i2s_tdm_clk_set_rate(struct rk_i2s_tdm_dev *i2s_tdm,
> +					 struct clk *clk, unsigned long rate,
> +					 int ppm)
> +{
> +	unsigned long rate_target;
> +	int delta, ret;
> +
> +	if (ppm == i2s_tdm->clk_ppm)
> +		return 0;
> +
> +	delta = (ppm < 0) ? -1 : 1;
> +	delta *= (int)div64_u64((u64)rate * (u64)abs(ppm) + 500000,
> +				1000000);

formula looks odd? looks like you are implementing a round to nearest
operation, but that shouldn't require this multiplication?

> +
> +	rate_target = rate + delta;
> +
> +	if (!rate_target)
> +		return -EINVAL;
> +
> +	ret = clk_set_rate(clk, rate_target);
> +	if (ret)
> +		return ret;
> +
> +	i2s_tdm->clk_ppm = ppm;
> +
> +	return ret;
> +}
> +
> +static int rockchip_i2s_tdm_calibrate_mclk(struct rk_i2s_tdm_dev *i2s_tdm,
> +					   struct snd_pcm_substream *substream,
> +					   unsigned int lrck_freq)
> +{
> +	struct clk *mclk_root;
> +	struct clk *mclk_parent;
> +	unsigned int mclk_root_freq;
> +	unsigned int mclk_root_initial_freq;
> +	unsigned int mclk_parent_freq;
> +	unsigned int div, delta;
> +	u64 ppm;
> +	int ret;
> +
> +	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
> +		mclk_parent = i2s_tdm->mclk_tx_src;
> +	else
> +		mclk_parent = i2s_tdm->mclk_rx_src;
> +
> +	switch (lrck_freq) {
> +	case 8000:
> +	case 16000:
> +	case 24000:
> +	case 32000:
> +	case 48000:
> +	case 64000:
> +	case 96000:
> +	case 192000:
> +		mclk_root = i2s_tdm->mclk_root0;
> +		mclk_root_freq = i2s_tdm->mclk_root0_freq;
> +		mclk_root_initial_freq = i2s_tdm->mclk_root0_initial_freq;
> +		mclk_parent_freq = DEFAULT_MCLK_FS * 192000;
> +		break;
> +	case 11025:
> +	case 22050:
> +	case 44100:
> +	case 88200:
> +	case 176400:
> +		mclk_root = i2s_tdm->mclk_root1;
> +		mclk_root_freq = i2s_tdm->mclk_root1_freq;
> +		mclk_root_initial_freq = i2s_tdm->mclk_root1_initial_freq;
> +		mclk_parent_freq = DEFAULT_MCLK_FS * 176400;
> +		break;
> +	default:
> +		dev_err(i2s_tdm->dev, "Invalid LRCK freq: %u Hz\n",
> +			lrck_freq);
> +		return -EINVAL;
> +	}
> +
> +	ret = clk_set_parent(mclk_parent, mclk_root);
> +	if (ret)
> +		return ret;
> +
> +	ret = rockchip_i2s_tdm_clk_set_rate(i2s_tdm, mclk_root,
> +					    mclk_root_freq, 0);
> +	if (ret)
> +		return ret;
> +
> +	delta = abs(mclk_root_freq % mclk_parent_freq - mclk_parent_freq);
> +	ppm = div64_u64((uint64_t)delta * 1000000, (uint64_t)mclk_root_freq);
> +
> +	if (ppm) {
> +		div = DIV_ROUND_CLOSEST(mclk_root_initial_freq, mclk_parent_freq);
> +		if (!div)
> +			return -EINVAL;
> +
> +		mclk_root_freq = mclk_parent_freq * round_up(div, 2);
> +
> +		ret = clk_set_rate(mclk_root, mclk_root_freq);
> +		if (ret)
> +			return ret;
> +
> +		i2s_tdm->mclk_root0_freq = clk_get_rate(i2s_tdm->mclk_root0);
> +		i2s_tdm->mclk_root1_freq = clk_get_rate(i2s_tdm->mclk_root1);
> +	}
> +
> +	ret = clk_set_rate(mclk_parent, mclk_parent_freq);
> +
> +	return ret;

return clk_set_rate(mclk_parent, mclk_parent_freq); ?

> +}
> +
> +static int rockchip_i2s_tdm_set_mclk(struct rk_i2s_tdm_dev *i2s_tdm,
> +				     struct snd_pcm_substream *substream,
> +				     struct clk **mclk)
> +{
> +	unsigned int mclk_freq;
> +	int ret;
> +
> +	if (i2s_tdm->clk_trcm) {
> +		if (i2s_tdm->mclk_tx_freq != i2s_tdm->mclk_rx_freq) {
> +			dev_err(i2s_tdm->dev,
> +				"clk_trcm, tx: %d and rx: %d should be same\n",
> +				i2s_tdm->mclk_tx_freq,
> +				i2s_tdm->mclk_rx_freq);
> +			ret = -EINVAL;
> +			return ret;

return -EINVAL?

> +		}
> +
> +		ret = clk_set_rate(i2s_tdm->mclk_tx, i2s_tdm->mclk_tx_freq);
> +		if (ret)
> +			return ret;
> +
> +		ret = clk_set_rate(i2s_tdm->mclk_rx, i2s_tdm->mclk_rx_freq);
> +		if (ret)
> +			return ret;
> +
> +		/* mclk_rx is also ok. */
> +		*mclk = i2s_tdm->mclk_tx;
> +	} else {
> +		if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
> +			*mclk = i2s_tdm->mclk_tx;
> +			mclk_freq = i2s_tdm->mclk_tx_freq;
> +		} else {
> +			*mclk = i2s_tdm->mclk_rx;
> +			mclk_freq = i2s_tdm->mclk_rx_freq;
> +		}
> +
> +		ret = clk_set_rate(*mclk, mclk_freq);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	return 0;
> +}
> +

> +	pm_runtime_enable(&pdev->dev);
> +	if (!pm_runtime_enabled(&pdev->dev)) {
> +		ret = i2s_tdm_runtime_resume(&pdev->dev);

that looks like dead code? you've just enabled pm_runtime, why would
this fail?

> +		if (ret)
> +			goto err_pm_disable;
> +	}
> +
> +	regmap_update_bits(i2s_tdm->regmap, I2S_DMACR, I2S_DMACR_TDL_MASK,
> +			   I2S_DMACR_TDL(16));
> +	regmap_update_bits(i2s_tdm->regmap, I2S_DMACR, I2S_DMACR_RDL_MASK,
> +			   I2S_DMACR_RDL(16));
> +	regmap_update_bits(i2s_tdm->regmap, I2S_CKR, I2S_CKR_TRCM_MASK,
> +			   i2s_tdm->clk_trcm << I2S_CKR_TRCM_SHIFT);
> +
> +	if (i2s_tdm->soc_data && i2s_tdm->soc_data->init)
> +		i2s_tdm->soc_data->init(&pdev->dev, res->start);
> +
> +	ret = devm_snd_soc_register_component(&pdev->dev,
> +					      &rockchip_i2s_tdm_component,
> +					      &i2s_tdm_dai, 1);
> +
> +	if (ret) {
> +		dev_err(&pdev->dev, "Could not register DAI\n");
> +		goto err_suspend;
> +	}
> +
> +	ret = devm_snd_dmaengine_pcm_register(&pdev->dev, NULL, 0);
> +	if (ret) {
> +		dev_err(&pdev->dev, "Could not register PCM\n");
> +		return ret;
> +	}
> +
> +	return 0;
> +
> +err_suspend:
> +	if (!pm_runtime_status_suspended(&pdev->dev))
> +		i2s_tdm_runtime_suspend(&pdev->dev);

why is this necessary?

> +err_pm_disable:
> +	pm_runtime_disable(&pdev->dev);
> +
> +	return ret;
> +}
> +
> +static int rockchip_i2s_tdm_remove(struct platform_device *pdev)
> +{
> +	struct rk_i2s_tdm_dev *i2s_tdm = dev_get_drvdata(&pdev->dev);
> +
> +	pm_runtime_disable(&pdev->dev);
> +	if (!pm_runtime_status_suspended(&pdev->dev))
> +		i2s_tdm_runtime_suspend(&pdev->dev);

this looks backwards, if you disable pm_runtime first what is the
expectation for the rest.
> +
> +	if (!IS_ERR(i2s_tdm->mclk_tx))
> +		clk_prepare_enable(i2s_tdm->mclk_tx);
> +	if (!IS_ERR(i2s_tdm->mclk_rx))
> +		clk_prepare_enable(i2s_tdm->mclk_rx);
> +	if (!IS_ERR(i2s_tdm->hclk))
> +		clk_disable_unprepare(i2s_tdm->hclk);
> +
> +	return 0;
> +}
> +
> +#ifdef CONFIG_PM_SLEEP

use __maybe_unused

> +static int rockchip_i2s_tdm_suspend(struct device *dev)
> +{
> +	struct rk_i2s_tdm_dev *i2s_tdm = dev_get_drvdata(dev);
> +
> +	regcache_mark_dirty(i2s_tdm->regmap);
> +
> +	return 0;
> +}
> +
> +static int rockchip_i2s_tdm_resume(struct device *dev)
> +{
> +	struct rk_i2s_tdm_dev *i2s_tdm = dev_get_drvdata(dev);
> +	int ret;
> +
> +	ret = pm_runtime_get_sync(dev);
> +	if (ret < 0)
> +		return ret;
> +	ret = regcache_sync(i2s_tdm->regmap);
> +	pm_runtime_put(dev);
> +
> +	return ret;
> +}
> +#endif

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

Return-Path: <SRS0=s7m+=NO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D77BCC4338F
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Aug 2021 14:36:06 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 86F7A60F11
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Aug 2021 14:36:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 86F7A60F11
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KTnUQ6QlJC2efyCdUb6Ef80K2ytBwpUlrYSf2wuRtkQ=; b=TxeGjlZXZQbvxM
	lJFVAcssBA7HuRP3CFSV3b6U5UGD0hNDio1TcCMXbmq3BHoT10LfbLxeQd6CP6ND/+ZhXb3R7uKc8
	BdaScMPMySEdIxb7ZYAPTlGPkg0A3/fVvaqGbep530OFGLHsMEXTuLetWeELvOpP1XPKFLkEittaW
	hkpudCzszXXUlQVK3XNMT7Bimw0lNvhWnOr/0/STBlMZY+l9EtnUJPisFsWeoaBqfp7by1J3I9XDn
	EhHTkoHLk7FSHwyNqLHe51Kj/Z8ehJHCCGDioukRLc7JNPHbVyRJ1IDt03eZmsQij1D//5gCORveZ
	m/XW/C8lT007y/H346xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mIB3Q-00HG8L-5I; Mon, 23 Aug 2021 14:36:00 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mIB3C-00HG6F-FL; Mon, 23 Aug 2021 14:35:48 +0000
Received: by mail-ej1-x629.google.com with SMTP id lc21so5094819ejc.7;
 Mon, 23 Aug 2021 07:35:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=A/qpH7CHD7FrWhnDUzTDDpyv/YS2OHRtYJYQQQB8Bp0=;
 b=G2x4IudVbwj0h29Njt8qBea5uCly45QDU9MDGzl31TzJSEXii6ONJUQ6Nbt7C3ChxQ
 6pEaEHbsMI0pglxcjgqifB//U0wAdinpI54yIYl8juKBX6iP0nX643S6OS5ndcMd9NeC
 tpSyyWHm0j1dw+V1thewBfZpWS/ajS1+CpBwkrfdPPTn8NR4gjUe5DSgMWRRCAsVr0Mt
 lf5r5pqz0vfojJHVevUnO56cFrujMM06WZ0blKYYjTZqnwbg/K5JP3ehtaq8PwIyGFC+
 rS8l1qiaLn6YV5wVSb9wEHjUz+UzqJfoC9X/t3MBlFOP3XcN5wTOsd7NbnypoCrEgdT5
 USnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=A/qpH7CHD7FrWhnDUzTDDpyv/YS2OHRtYJYQQQB8Bp0=;
 b=ar9zzuFZZfc0WYyIfC4HOIZ+NJpTvwLWmahq4d2Dsj6HKrl8DQwJ5nX0kESPqFMumZ
 ZODzBn+0SPB9zMCMmPifXASqwYYWi22RkzqqVSec2sN/P3Nyxdzk5+98X7WEzOqPoDPY
 q3Dh+UEUb+hViAWbqFLH0fjoNsx/gFBxMvO8eWoObT+YM4PAlV50qVg5dUlG1yU+R+6K
 K2V73tmGfl9TqwVNqQCTQFGpXNqwW0xJBeqNi0u0KHpkzv+ujsCicEMCe806CsWvprEg
 hKrDOV14wc7NKsz7BXy46l/OK2EpqPGhFxreEAiNUL4GMxMut0ZTW8l4UbkQx8/+Mga9
 US9g==
X-Gm-Message-State: AOAM531hELzc1PJJVcTLfzFOvMzixdImXYVyujXGa1sEMMcRz1NzCktJ
 VwXHlIQsG/RS1DkjtIIuj+w=
X-Google-Smtp-Source: ABdhPJwdnaw/EdMkrg8xWrBajtpxxxxkkGbtYreheU70ZtNV+/K1xEPOqF5L5uIjDWko8VGQeXIr/g==
X-Received: by 2002:a17:906:444:: with SMTP id
 e4mr35265682eja.255.1629729344685; 
 Mon, 23 Aug 2021 07:35:44 -0700 (PDT)
Received: from archbook.localnet (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84])
 by smtp.gmail.com with ESMTPSA id d3sm4901155ejw.18.2021.08.23.07.35.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Aug 2021 07:35:44 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 1/4] ASoC: rockchip: add support for i2s-tdm controller
Date: Mon, 23 Aug 2021 16:35:42 +0200
Message-ID: <9368735.gdWEK3B62L@archbook>
In-Reply-To: <6bc6330215980f10853a2dac69f0bdfd9c8fb303.camel@pengutronix.de>
References: <20210820182731.29370-1-frattaroli.nicolas@gmail.com>
 <20210820182731.29370-2-frattaroli.nicolas@gmail.com>
 <6bc6330215980f10853a2dac69f0bdfd9c8fb303.camel@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210823_073546_583781_418D2405 
X-CRM114-Status: GOOD (  44.95  )
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

Hi Philipp,

On Montag, 23. August 2021 14:03:25 CEST Philipp Zabel wrote:
> Hi Nicolas,
> 
> On Fri, 2021-08-20 at 20:27 +0200, Nicolas Frattaroli wrote:
> [...]
> 
> > diff --git a/sound/soc/rockchip/rockchip_i2s_tdm.c
> > b/sound/soc/rockchip/rockchip_i2s_tdm.c new file mode 100644
> > index 000000000000..c02b66f3c913
> > --- /dev/null
> > +++ b/sound/soc/rockchip/rockchip_i2s_tdm.c
> > @@ -0,0 +1,1737 @@
> 
> [...]
> 
> > +static void rockchip_snd_xfer_reset_assert(struct rk_i2s_tdm_dev
> > *i2s_tdm,
> > +					   int tx_bank, int tx_offset,
> > +					   int rx_bank, int rx_offset)
> > +{
> > +	void __iomem *cru_reset;
> > +	unsigned long flags;
> > +
> > +	cru_reset = i2s_tdm->cru_base + i2s_tdm->soc_data->softrst_offset;
> > +
> > +	if (tx_bank == rx_bank) {
> > +		writel(BIT(tx_offset) | BIT(rx_offset) |
> > +		       (BIT(tx_offset) << 16) | (BIT(rx_offset) << 16),
> > +		       cru_reset + (tx_bank * 4));
> > +	} else {
> > +		local_irq_save(flags);
> > +		writel(BIT(tx_offset) | (BIT(tx_offset) << 16),
> > +		       cru_reset + (tx_bank * 4));
> > +		writel(BIT(rx_offset) | (BIT(rx_offset) << 16),
> > +		       cru_reset + (rx_bank * 4));
> > +		local_irq_restore(flags);
> > +	}
> > +}
> > +
> > +static void rockchip_snd_xfer_reset_deassert(struct rk_i2s_tdm_dev
> > *i2s_tdm, +					     int tx_bank, int 
tx_offset,
> > +					     int rx_bank, int rx_offset)
> > +{
> > +	void __iomem *cru_reset;
> > +	unsigned long flags;
> > +
> > +	cru_reset = i2s_tdm->cru_base + i2s_tdm->soc_data->softrst_offset;
> > +
> > +	if (tx_bank == rx_bank) {
> > +		writel((BIT(tx_offset) << 16) | (BIT(rx_offset) << 16),
> > +		       cru_reset + (tx_bank * 4));
> > +	} else {
> > +		local_irq_save(flags);
> > +		writel((BIT(tx_offset) << 16),
> > +		       cru_reset + (tx_bank * 4));
> > +		writel((BIT(rx_offset) << 16),
> > +		       cru_reset + (rx_bank * 4));
> > +		local_irq_restore(flags);
> > +	}
> > +}
> > +
> > +/*
> > + * Makes sure that both tx and rx are reset at the same time to sync lrck
> > + * when clk_trcm > 0.
> > + */
> > +static void rockchip_snd_xfer_sync_reset(struct rk_i2s_tdm_dev *i2s_tdm)
> > +{
> > +	int tx_id, rx_id;
> > +	int tx_bank, rx_bank, tx_offset, rx_offset;
> > +
> > +	if (!i2s_tdm->cru_base || !i2s_tdm->soc_data)
> > +		return;
> > +
> > +	tx_id = i2s_tdm->tx_reset_id;
> > +	rx_id = i2s_tdm->rx_reset_id;
> > +	if (tx_id < 0 || rx_id < 0)
> > +		return;
> > +
> > +	tx_bank = tx_id / 16;
> > +	tx_offset = tx_id % 16;
> > +	rx_bank = rx_id / 16;
> > +	rx_offset = rx_id % 16;
> > +	dev_dbg(i2s_tdm->dev,
> > +		"tx_bank: %d, rx_bank: %d, tx_offset: %d, rx_offset: %d\n",
> > +		tx_bank, rx_bank, tx_offset, rx_offset);
> > +
> > +	rockchip_snd_xfer_reset_assert(i2s_tdm, tx_bank, tx_offset,
> > +				       rx_bank, rx_offset);
> > +
> > +	udelay(150);
> > +
> > +	rockchip_snd_xfer_reset_deassert(i2s_tdm, tx_bank, tx_offset,
> > +					 rx_bank, rx_offset);
> > +}
> 
> I'm not too fond of reimplementing half a reset controller in here.
> The reset framework does not support synchronized (de)assertion of
> multiple reset controls, I wonder if this would be useful to add.
> Without having thought about this too hard, I could imagine this as an
> extension to the bulk API, or possibly a call to join multiple reset
> controls into a reset control array.

I agree, the code required for synchronised reset seems to be a good
candidate for a generalised solution elsewhere.
However, I'm not sure if I'm the right candidate to design this API
as my first kernel contribution when the board I'm currently testing
this with doesn't even utilise the synchronized reset.

If I come across an opportunity to test synchronised resets, I'll
definitely look into refactoring this. I'd also be happy to hear of
any other driver which is currently implementing its own synchronised
reset.

[...]
 
> > +
> > +	reset_control_assert(rc);
> > +	udelay(1);
> 
> What is the reason for the different delays in
> rockchip_snd_xfer_sync_reset() and rockchip_snd_reset()?
> 

Simply put: I have no idea. This is what downstream does, and it
appears to work for me. The git history of the downstream kernel
also doesn't tell me anything about why the sync reset is 150
and this one is 1.

I've got no device to test the sync reset with at the moment so
I'm wary of playing with the delay value.

> > +	reset_control_deassert(rc);
> > +}
> 
> [...]
> 
> > +static int rockchip_i2s_tdm_probe(struct platform_device *pdev)
> > +{
> > +	struct device_node *node = pdev->dev.of_node;
> > +	struct device_node *cru_node;
> > +	const struct of_device_id *of_id;
> > +	struct rk_i2s_tdm_dev *i2s_tdm;
> > +	struct resource *res;
> > +	void __iomem *regs;
> > +	int ret;
> > +	int val;
> > +
> > +	i2s_tdm = devm_kzalloc(&pdev->dev, sizeof(*i2s_tdm), GFP_KERNEL);
> > +	if (!i2s_tdm)
> > +		return -ENOMEM;
> > +
> > +	i2s_tdm->dev = &pdev->dev;
> > +
> > +	of_id = of_match_device(rockchip_i2s_tdm_match, &pdev->dev);
> > +	if (!of_id || !of_id->data)
> > +		return -EINVAL;
> > +
> > +	spin_lock_init(&i2s_tdm->lock);
> > +	i2s_tdm->soc_data = (struct rk_i2s_soc_data *)of_id->data;
> > +
> > +	i2s_tdm->frame_width = 64;
> > +	if (!of_property_read_u32(node, "rockchip,frame-width", &val)) {
> > +		if (val >= 32 && (val % 2 == 0) && val <= 512) {
> > +			i2s_tdm->frame_width = val;
> > +		} else {
> > +			dev_err(i2s_tdm->dev, "unsupported frame width: 
'%d'\n",
> > +				val);
> > +			return -EINVAL;
> > +		}
> > +	}
> > +
> > +	i2s_tdm->clk_trcm = TRCM_TXRX;
> > +	if (of_property_read_bool(node, "rockchip,trcm-sync-tx-only"))
> > +		i2s_tdm->clk_trcm = TRCM_TX;
> > +	if (of_property_read_bool(node, "rockchip,trcm-sync-rx-only")) {
> > +		if (i2s_tdm->clk_trcm) {
> > +			dev_err(i2s_tdm->dev, "invalid trcm-sync 
configuration\n");
> > +			return -EINVAL;
> > +		}
> > +		i2s_tdm->clk_trcm = TRCM_RX;
> > +	}
> > +	if (i2s_tdm->clk_trcm != TRCM_TXRX)
> > +		i2s_tdm_dai.symmetric_rate = 1;
> > +
> > +	i2s_tdm->tdm_fsync_half_frame =
> > +		of_property_read_bool(node, "rockchip,tdm-fsync-half-frame");
> > +
> > +	i2s_tdm->grf = syscon_regmap_lookup_by_phandle(node, "rockchip,grf");
> > +	if (IS_ERR(i2s_tdm->grf))
> > +		return dev_err_probe(i2s_tdm->dev, PTR_ERR(i2s_tdm->grf),
> > +				     "Error in rockchip,grf\n");
> > +
> > +	if (i2s_tdm->clk_trcm != TRCM_TXRX) {
> > +		cru_node = of_parse_phandle(node, "rockchip,cru", 0);
> > +		i2s_tdm->cru_base = of_iomap(cru_node, 0);
> 
> This is a bit ugly if there is another driver sitting on the
> rockchip,cru compatible node. Which reset controller driver is backing
> the reset controls below?

I'm not sure if I understand the question (I only just today learned that
reset controls have drivers) but I think the reset it is using in the
Quartz64 dts is backed by rk3568-cru. Let me know if I misunderstood you.

[...]

> > +static int rockchip_i2s_tdm_remove(struct platform_device *pdev)
> > +{
> > +	struct rk_i2s_tdm_dev *i2s_tdm = dev_get_drvdata(&pdev->dev);
> > +
> > +	pm_runtime_disable(&pdev->dev);
> > +	if (!pm_runtime_status_suspended(&pdev->dev))
> > +		i2s_tdm_runtime_suspend(&pdev->dev);
> > +
> > +	if (!IS_ERR(i2s_tdm->mclk_tx))
> > +		clk_prepare_enable(i2s_tdm->mclk_tx);
> > +	if (!IS_ERR(i2s_tdm->mclk_rx))
> > +		clk_prepare_enable(i2s_tdm->mclk_rx);
> 
> Why are we enabling these clocks now?
> 

I wondered that too while I was looking into the pm_runtime stuff,
and decided to just throw these two calls out. They don't seem to
make sense to me, and nothing I tested broke when I removed them.

If left in (and the code works as I hypothesise it works) then
this would simply re-enable clocks we have just disabled, which
would make the number of enable and disable calls unbalanced.
Highly sus, as the kids would say, and completely omits the other
mclk_tx_src etc. clocks. (Though those are forgotten elsewhere in
the code as well, which I have since fixed, along with any of the
review points I don't directly respond to.)

> > +	if (!IS_ERR(i2s_tdm->hclk))
> > +		clk_disable_unprepare(i2s_tdm->hclk);
> > +
> > +	return 0;
> > +}
> 
> regards
> Philipp

Regards,
Nicolas Frattaroli



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

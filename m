Return-Path: <SRS0=s7m+=NO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F34EC4338F
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Aug 2021 16:04:37 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A94A1613D0
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Aug 2021 16:04:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org A94A1613D0
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=exE9iIgc/3tl1GfpVpWGJe2qcnwBgbuuWOUgXZnSiuQ=; b=eKCPPBYBEiI/PY
	dUT84YGH+rfkoZKdjGyM63P3FYdpFG8Mg1hhfq24gYskJBEq0BpfuvNGN+EuA5m5gFXrszn0knGQH
	EvkIua8scQsqiJzD08YBPm8WG572rXN0TyI4TAKQlhAl+76Gz7+ji+H+F45AVW8d3cWKLt4YnWHe0
	dNGTKDftOiBs74Xlje48brZPSBkG4mFv0gad0jmkrRyVVzrY4vDlBf+mJ2CEnFamS9gkblfcMaZQp
	wP+kVILOwS+DBbfZiThuk/KZYcJevxV6bp5M12Vqh3JbfzzLZwOIF2nfjOMoZYN8rLVVd9+z+rsdp
	fgDZiJNS3S/+CQ1Hypqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mICR6-00HWSP-Sy; Mon, 23 Aug 2021 16:04:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mICQm-00HWOq-6j
 for linux-rockchip@lists.infradead.org; Mon, 23 Aug 2021 16:04:13 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1mICQ9-0007C2-Dr; Mon, 23 Aug 2021 18:03:33 +0200
Received: from pza by lupine with local (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1mICQ7-0002Gk-Rt; Mon, 23 Aug 2021 18:03:31 +0200
Message-ID: <b596373b280dfe23a7e932b84ce31a2dbb806912.camel@pengutronix.de>
Subject: Re: [PATCH v2 1/4] ASoC: rockchip: add support for i2s-tdm controller
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, Liam Girdwood
 <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Jaroslav Kysela
 <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Heiko Stuebner
 <heiko@sntech.de>
Cc: linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Date: Mon, 23 Aug 2021 18:03:31 +0200
In-Reply-To: <9368735.gdWEK3B62L@archbook>
References: <20210820182731.29370-1-frattaroli.nicolas@gmail.com>
 <20210820182731.29370-2-frattaroli.nicolas@gmail.com>
 <6bc6330215980f10853a2dac69f0bdfd9c8fb303.camel@pengutronix.de>
 <9368735.gdWEK3B62L@archbook>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210823_090412_290131_4925612D 
X-CRM114-Status: GOOD (  31.38  )
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

Hi Nicolas,

On Mon, 2021-08-23 at 16:35 +0200, Nicolas Frattaroli wrote:
[...]
> > I'm not too fond of reimplementing half a reset controller in here.
> > The reset framework does not support synchronized (de)assertion of
> > multiple reset controls, I wonder if this would be useful to add.
> > Without having thought about this too hard, I could imagine this as an
> > extension to the bulk API, or possibly a call to join multiple reset
> > controls into a reset control array.
> 
> I agree, the code required for synchronised reset seems to be a good
> candidate for a generalised solution elsewhere.
> However, I'm not sure if I'm the right candidate to design this API
> as my first kernel contribution when the board I'm currently testing
> this with doesn't even utilise the synchronized reset.
> 
> If I come across an opportunity to test synchronised resets, I'll
> definitely look into refactoring this. I'd also be happy to hear of
> any other driver which is currently implementing its own synchronised
> reset.
[...] 
> > What is the reason for the different delays in
> > rockchip_snd_xfer_sync_reset() and rockchip_snd_reset()?
> > 
> 
> Simply put: I have no idea. This is what downstream does, and it
> appears to work for me. The git history of the downstream kernel
> also doesn't tell me anything about why the sync reset is 150
> and this one is 1.
> 
> I've got no device to test the sync reset with at the moment so
> I'm wary of playing with the delay value.

Fair points. You could remove the untested synchronized reset support
for now; that would allow to get rid of the rockchip,cru device tree
property, which is only required to let this driver access the CRU
registers behind the clock/reset controller driver's back.

[...]
> > > +	if (i2s_tdm->clk_trcm != TRCM_TXRX) {
> > > +		cru_node = of_parse_phandle(node, "rockchip,cru", 0);
> > > +		i2s_tdm->cru_base = of_iomap(cru_node, 0);
> > 
> > This is a bit ugly if there is another driver sitting on the
> > rockchip,cru compatible node. Which reset controller driver is backing
> > the reset controls below?
> 
> I'm not sure if I understand the question (I only just today learned that
> reset controls have drivers) but I think the reset it is using in the
> Quartz64 dts is backed by rk3568-cru. Let me know if I misunderstood you.

That's the one, thanks.

The devm_reset_control_get() calls below follow the "reset-names"
and "resets" device tree properties. Those point (&cru) to a
clock-controller node with compatible = "rockchip,rk3568-cru".

The corresponding driver is drivers/clk/rockchip/clk-rk3568.c,
so the reset controller is provided by the reset_controller_register()
call in drivers/clk/rockchip/softrst.c.

regards
Philipp

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

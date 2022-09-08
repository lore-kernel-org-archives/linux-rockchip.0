Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 162B4C38145
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Sep 2022 15:44:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vx6jPYGKAq/rgJVFkzAuA124Q+qX5QtqjCZ2JH0TJUk=; b=VTMxy4vEeygpU/
	N3rl/EY8bOWutlMIhW9ltyOw3/JJ//B6TZ0Gw/BMd8m4rVEmkY8FUWtklSER1mIOVjHuwy7uxyXuE
	gHILbk8fI69EzsHwfUapqdsTJM34P5ALh02WOc/A7DyLP6RS0X7EARvhuS/FEEBRN0i2SRuV8Q+nt
	nSz0H1p5a6p51e1flv4l/82sk0g/t8Ihl1zoQxS97XB1uBghWngsU4I01L5Z5MCwNrjsxor0Uycnr
	IaoAAWxv9+oA0uFU038W7EzLkTvLoL2gkObMNPj959bcLMI2nt3e6AQbSiC7Jc8drQmtgz7Vn8A/V
	gblkQ0UKYni2xZUJXwVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWJgz-005Ltu-3v; Thu, 08 Sep 2022 15:43:49 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWJX3-005G0h-Hx; Thu, 08 Sep 2022 15:33:35 +0000
Received: from booty (unknown [77.244.183.192])
	(Authenticated sender: luca.ceresoli@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 0AE112000D;
	Thu,  8 Sep 2022 15:33:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1662651208;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=kdKcGQxR+2v+D+uRgeMyPmOl42z47nLjBaXhbBwGaX4=;
	b=LSkfEC257xBfJ7nk91EuX3eNbR1eWBKmOhi/2jbiRnJWsWWq0x9DNdejtL8mmjyo/JhfSD
	vIa4Onqili2PeIydC+IpO0plkswuunIq6xH5dfe9yWSD1ov7ivzekxg5jH6l18X1JH2bz1
	IrzgpSAEX+6FxT7Z79Mkq4htLlndiPiL7tSFoWCsXjuNFKEiEh3MOCsmHloxNiXI14/sbM
	woCoE1YHHxtyHDYVn43AEJLV0j0pkupNCzYbIi2eaMiIwEjpfptfCOzEyug57Cpnb3rlQy
	nf/vKZ+Gvg3UZDVIbQmLZTbVIIrrW8Oh7gB9iuWPJOaK5BYtDga0EHgV6G6IuA==
Date: Thu, 8 Sep 2022 17:33:23 +0200
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Cc: kbuild@lists.01.org, alsa-devel@alsa-project.org,
 linux-rockchip@lists.infradead.org, lkp@intel.com, kbuild-all@lists.01.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>, Mark
 Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof
 Kozlowski <krzk@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Jaroslav
 Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Nicolas Frattaroli
 <frattaroli.nicolas@gmail.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Johan Jonker <jbx6244@gmail.com>, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 7/8] ASoC: codecs: Add RK3308 internal audio codec
 driver
Message-ID: <20220908173323.3981a056@booty>
In-Reply-To: <202209082103.F4ICyyHT-lkp@intel.com>
References: <20220907142124.2532620-8-luca.ceresoli@bootlin.com>
	<202209082103.F4ICyyHT-lkp@intel.com>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220908_083333_914505_7CCC1799 
X-CRM114-Status: GOOD (  13.35  )
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

Hello Dan,

On Thu, 8 Sep 2022 16:35:19 +0300
Dan Carpenter <dan.carpenter@oracle.com> wrote:

> Hi,
> 
> https://git-scm.com/docs/git-format-patch#_base_tree_information]
> 
> url:    https://github.com/intel-lab-lkp/linux/commits/luca-ceresoli-bootlin-com/Add-support-for-the-internal-RK3308-audio-codec/20220907-222555
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next
> config: arc-randconfig-m031-20220908 (https://download.01.org/0day-ci/archive/20220908/202209082103.F4ICyyHT-lkp@intel.com/config)
> compiler: arceb-elf-gcc (GCC) 12.1.0
> 
> If you fix the issue, kindly add following tag where applicable
> Reported-by: kernel test robot <lkp@intel.com>
> Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> 
> smatch warnings:
> sound/soc/codecs/rk3308_codec.c:748 rk3308_set_dai_fmt() error: uninitialized symbol 'is_master'.
> sound/soc/codecs/rk3308_codec.c:998 rk3308_codec_digital_fadeout() warn: always true condition '(l_dgain >= (0 << 0)) => (0-u32max >= 0)'
> sound/soc/codecs/rk3308_codec.c:998 rk3308_codec_digital_fadeout() warn: always true condition '(l_dgain >= (0 << 0)) => (0-u32max >= 0)'
> 
> vim +/is_master +748 sound/soc/codecs/rk3308_codec.c
> 
> 786c160ad64ae5 Luca Ceresoli 2022-09-07  680  static int rk3308_set_dai_fmt(struct snd_soc_dai *codec_dai,
> 786c160ad64ae5 Luca Ceresoli 2022-09-07  681  			      unsigned int fmt)
> 786c160ad64ae5 Luca Ceresoli 2022-09-07  682  {
> 786c160ad64ae5 Luca Ceresoli 2022-09-07  683  	struct snd_soc_component *component = codec_dai->component;
> 786c160ad64ae5 Luca Ceresoli 2022-09-07  684  	struct rk3308_codec_priv *rk3308 = snd_soc_component_get_drvdata(component);
> 786c160ad64ae5 Luca Ceresoli 2022-09-07  685  	const unsigned int inv_bits = fmt & SND_SOC_DAIFMT_INV_MASK;
> 786c160ad64ae5 Luca Ceresoli 2022-09-07  686  	const bool inv_bitclk =
> 786c160ad64ae5 Luca Ceresoli 2022-09-07  687  		(inv_bits & SND_SOC_DAIFMT_IB_IF) ||
> 786c160ad64ae5 Luca Ceresoli 2022-09-07  688  		(inv_bits & SND_SOC_DAIFMT_IB_NF);
> 786c160ad64ae5 Luca Ceresoli 2022-09-07  689  	const bool inv_frmclk =
> 786c160ad64ae5 Luca Ceresoli 2022-09-07  690  		(inv_bits & SND_SOC_DAIFMT_IB_IF) ||
> 786c160ad64ae5 Luca Ceresoli 2022-09-07  691  		(inv_bits & SND_SOC_DAIFMT_NB_IF);
> 786c160ad64ae5 Luca Ceresoli 2022-09-07  692  
> 786c160ad64ae5 Luca Ceresoli 2022-09-07  693  	unsigned int adc_aif1 = 0, adc_aif2 = 0, dac_aif1 = 0, dac_aif2 = 0;
> 786c160ad64ae5 Luca Ceresoli 2022-09-07  694  	int grp, is_master;
> 
> is_master needs to be initialized to false.

Fixed both, and also made is_master a bool for clarity. Changes queued
for v2.

Thank you.
-- 
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
